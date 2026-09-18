#!/usr/bin/env python3
import json
import os
import platform
import shutil
import socket
import subprocess

def cmd(command):
    try:
        return subprocess.check_output(command, stderr=subprocess.DEVNULL, text=True).strip()
    except (FileNotFoundError, subprocess.CalledProcessError):
        return None

total, used, free = shutil.disk_usage('/')
report = {
    'hostname': socket.gethostname(),
    'platform': platform.platform(),
    'kernel': platform.release(),
    'cpu': os.cpu_count(),
    'root_disk_gb': {'total': round(total/1024**3, 2), 'used': round(used/1024**3, 2), 'free': round(free/1024**3, 2)},
    'gpu': cmd(['nvidia-smi','--query-gpu=name,memory.total,memory.used,memory.free','--format=csv,noheader'])
}
print(json.dumps(report, indent=2))
