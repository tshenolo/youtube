#!/bin/bash
THRESHOLD=80
EMAIL="admin@example.com"

for partition in $(df -h --output=target | tail -n +2); do
  usage=$(df -h --output=pcent "$partition" | tail -1 | tr -d '% ')
  if [ "$usage" -ge "$THRESHOLD" ]; then
    echo "WARNING: $partition is ${usage}% full" | mail -s "Disk Space Alert" $EMAIL
  fi
done