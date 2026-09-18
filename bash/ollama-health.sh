#!/usr/bin/env bash
set -u
URL="${1:-http://127.0.0.1:11434}"
echo "Checking Ollama endpoint: $URL"
if curl -fsS --max-time 10 "$URL/api/tags" >/dev/null; then
  echo "Ollama API: OK"
  exit 0
fi
echo "Ollama API: FAILED"
exit 1
