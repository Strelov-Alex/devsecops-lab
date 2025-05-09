#!/bin/bash
cd ~/devsecops-lab
echo "$(date '+%Y-%m-%d %H:%M') — auto snapshot" >> log/used_commands.log
history | tail -n 30 >> log/used_commands.log
git add .
git commit -m "Auto log: $(date '+%Y-%m-%d %H:%M')"
git push origin main
