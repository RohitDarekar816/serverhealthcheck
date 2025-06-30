#!/bin/bash

echo "Available Memory: $(free -h | awk '/Mem:/ {print $7}')" > servermemory.txt
"CPU Usage: $(top -b -n 1 | grep "Cpu(s)" | awk '{print $2 + $4}')" > servercpu.txt

git add .
git commit -m "chore: update memory usage"
git push origin main
