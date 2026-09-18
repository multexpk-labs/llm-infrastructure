#!/usr/bin/env bash
set -u

echo "=== LLM HOST CHECK ==="
echo "Hostname: $(hostname)"
echo "Kernel:   $(uname -r)"
echo
free -h 2>/dev/null || true
echo
df -h / 2>/dev/null || true
echo
if command -v nvidia-smi >/dev/null 2>&1; then
  nvidia-smi --query-gpu=name,memory.total,memory.used,memory.free,utilization.gpu --format=csv
else
  echo "nvidia-smi not available"
fi
echo
ss -lnt 2>/dev/null || true
