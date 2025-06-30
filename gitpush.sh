#!/bin/bash
cd /home/rohit/serverhealthcheck || exit 1

whoami >> cron_user_debug.txt

echo "CPU Usage: $(top -b -n 1 | grep "Cpu(s)" | awk '{print $2 + $4}')" > servercpu.txt

git add .
git commit -m "chore: update memory usage"
git push origin main
