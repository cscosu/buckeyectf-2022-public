#!/bin/bash
echo "[*] Starting..."
mkdir /sys/fs/cgroup/{cpu,memory,pids}/NSJAIL
chown ctf /sys/fs/cgroup/{cpu,memory,pids}/NSJAIL

exec nsjail --config /jail.cfg --verbose --bindmount $1:/built
