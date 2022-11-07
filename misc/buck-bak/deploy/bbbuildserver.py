import subprocess
from shutil import copytree


def req_branch(req):
    req.wfile.write(b'Type a branch name to build and run: ')
    return req.rfile.readline().decode("utf-8").strip()

def worker(req, path, pub_path, ip):
    copytree("/home/ctf/challenge/buck-bak", path)

    # Check to make sure input is a valid branch
    proc = subprocess.run([ "git", "for-each-ref", "--format", "%(refname)", "refs/remotes/origin"], cwd=path, capture_output=True)
    branches = proc.stdout.decode().split("\n")[:-1]
    branches = list(map(lambda b: b.split("/")[-1], branches))
    user_branch = req_branch(req)
    while user_branch not in branches:
        req.wfile.write(f'"{user_branch}" is not a valid branch.\n'.encode())
        user_branch = req_branch(req)

    subprocess.run(["git", "checkout", user_branch], cwd=path)
    subprocess.run(["make", "all"], cwd=path)

    subprocess.run(["chmod", "660", path /  "build" / "flag.txt"])

    # Copy build dir to web serve directory
    copytree(path / "build", pub_path)

    # Print link to downloadable binary
    req.wfile.write(f'Downloadable binary here: {ip + "/" + pub_path.parts[-1]}\n'.encode())

    # Nsjail
    return subprocess.Popen(["/nsjail.sh", path / "build"], stdout=req.wfile, stdin=req.rfile)

