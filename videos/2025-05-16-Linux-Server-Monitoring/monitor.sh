#!/bin/bash

# Get current timestamp
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
echo "==================== SYSTEM MONITOR REPORT ===================="
echo "Timestamp: $TIMESTAMP"
echo "==============================================================="
echo

# Uptime
echo ">>> UPTIME"
uptime
echo

# Memory Usage
echo ">>> MEMORY USAGE (in MB)"
free -m
echo

# Disk Usage (excluding tmpfs)
echo ">>> DISK USAGE"
df -h | grep -v tmpfs
echo

# Top Processes (Top 15)
echo ">>> TOP PROCESSES (CPU and Memory)"
top -b -n1 | head -15
echo

# Open Ports Listening (excluding localhost)
echo ">>> OPEN PORTS LISTENING (excluding 127.0.0.1)"
ss -tuln | grep LISTEN | grep -v 127.0.0.1
echo

# Last 10 lines of syslog
echo ">>> LAST 10 LINES OF SYSLOG"
tail -n 10 /var/log/syslog
echo

echo "==================== END OF REPORT ============================"