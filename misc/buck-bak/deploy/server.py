import hashlib
import random
import string
import socket
from socketserver import ThreadingTCPServer, StreamRequestHandler
from multiprocessing import TimeoutError
from multiprocessing.pool import ThreadPool
import threading
import subprocess
import os
import base64
from pathlib import Path
import shutil
from pow import get_challenge, verify_challenge, SOLVER_URL
import requests
import bbbuildserver

POW_DIFFICULTY = int(os.getenv("POW_DIFFICULTY", "0"))
NUM_SERVERS = int(os.getenv("CHALL_NUM_SERVERS", "5"))
DEBUG = int(os.getenv("DEBUG", "0")) == 1

class MyTCPServer(ThreadingTCPServer):
    def server_bind(self):
        self.socket.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        self.socket.setsockopt(socket.SOL_SOCKET, socket.SO_KEEPALIVE, 1)
        self.socket.setsockopt(socket.IPPROTO_TCP, socket.TCP_KEEPIDLE, 10)
        self.socket.setsockopt(socket.IPPROTO_TCP, socket.TCP_KEEPINTVL, 3)
        self.socket.setsockopt(socket.IPPROTO_TCP, socket.TCP_KEEPCNT, 5)
        self.socket.bind(self.server_address)


pool = None


class MyTCPHandler(StreamRequestHandler):
    def handle(self):
        try:
            if not send_pow(self):
                return

            res = pool.apply_async(worker, (self,))
            pos = pool._inqueue.qsize()  # type: ignore
            self.wfile.write(f"[*] Queued in position {pos}\n".encode())
            res.get(timeout=180)

        except (ConnectionError, TimeoutError) as e:
            print("connection err: %s" % (e))
            pass

def send_pow(req: MyTCPHandler):
    if POW_DIFFICULTY == 0:
        req.wfile.write(b"== proof-of-work: disabled ==\n")
        req.wfile.flush()
        return True

    challenge = get_challenge(POW_DIFFICULTY)

    req.wfile.write(b"== proof-of-work: enabled ==\n")
    req.wfile.write(b"please solve a pow first\n")
    req.wfile.write(b"You can run the solver with:\n")
    req.wfile.write("    python3 <(curl -sSL {}) solve {}\n".format(SOLVER_URL, challenge).encode())
    req.wfile.write(b"===================\n")
    req.wfile.write(b"\n")
    req.wfile.write(b"Solution? ")
    req.wfile.flush()
    solution = ''
    while not solution:
        solution = req.rfile.readline().decode("utf-8").strip()

    if verify_challenge(challenge, solution):
        req.wfile.write(b"Correct\n")
        req.wfile.flush()
        return True
    else:
        req.wfile.write(b"Proof-of-work fail")
        req.wfile.flush()
        return False

thread_to_port = {}
thread_port_lock = threading.Lock()

def is_socket_closed(sock) -> bool:
    try:
        # this will try to read bytes without blocking and also without removing them from buffer (peek only)
        data = sock.recv(16, socket.MSG_DONTWAIT | socket.MSG_PEEK)
        if len(data) == 0:
            return True
        return False
    except BlockingIOError:
        return False  # socket is open and reading from it would block
    except ConnectionResetError:
        return True  # socket was closed for some other reason
    except Exception as e:
        print("unexpected exception when checking if a socket is closed")
        return False
    return False

# Where connections connect (after pop from queue)
def worker(req: MyTCPHandler):
    req.wfile.write(b"[+] Handling your job now\n")

    # 5 minute timeout
    timeout = 60 * 5
    req.wfile.flush()

    # Path for git repo and building
    path_id = os.urandom(16).hex()
    path = Path("/tmp/bbbuilds") / path_id

    # Path for web server to serve binary
    pub_id = os.urandom(16).hex()
    pub_path = Path("/var/www/html") / pub_id

    proc = bbbuildserver.worker(req, path, pub_path, MY_IP)

    for x in range(timeout // 5):
        try:
            proc.wait(5)
            break
        except subprocess.TimeoutExpired:
            if is_socket_closed(req.request):
                break

    proc.terminate()
    try:
        proc.wait(1)
    except subprocess.TimeoutExpired:
        req.wfile.write(b"[*] Proc timedout")
        proc.kill()

    shutil.rmtree(path)
    shutil.rmtree(pub_path)

    req.wfile.write(b"[*] Done. Goodbye!\n")
    req.wfile.flush()

if __name__ == "__main__":
    port = int(os.environ['BBSERVER_PORT'])
    web_port = os.environ['BBWEB_PORT']
    MY_IP = requests.get("https://api.ipify.org?format=json").json()['ip'] + ":" + web_port
    with MyTCPServer(("0.0.0.0", port), MyTCPHandler) as server:
        try:
            pool = ThreadPool(processes=NUM_SERVERS)
            print(f"[*] Listening on port {port}")
            server.serve_forever()
        finally:
            pool.close()
