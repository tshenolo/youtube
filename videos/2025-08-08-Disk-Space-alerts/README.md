# ⏰ Real-Time Disk Space Alerts

**Video**: [How to Monitor Disk Usage and Set Alerts](#)  
**Blog**: [Set Up Real-Time Disk Space Alerts](#)

## 💡 What You’ll Learn

* Why real-time disk space alerts are important.
* How to check current disk usage.
* How to create a disk monitoring script.
* How to automate disk checks with cron.
* How to set up optional instant alerts with inotify.

## 🧠 Syntax/Concept Guide

```bash
# Check current disk usage
df -h

# Disk monitoring script
#!/bin/bash
THRESHOLD=80  # alert if usage is over 80%
EMAIL="admin@example.com"

for partition in $(df -h --output=target | tail -n +2); do
  usage=$(df -h --output=pcent "$partition" | tail -1 | tr -d '% ')
  if [ "$usage" -ge "$THRESHOLD" ]; then
    echo "WARNING: $partition is ${usage}% full" | mail -s "Disk Space Alert" $EMAIL
  fi
done

# Make script executable
chmod +x /usr/local/bin/disk_alert.sh
```

## 🔄 Examples

### 1. Install `mail` Command (Debian/Ubuntu)

```bash
sudo apt install mailutils
```

### 2. Schedule Script with Cron (every 5 minutes)

```bash
*/5 * * * * /usr/local/bin/disk_alert.sh
```

### 3. Instant Alerts with inotify

```bash
sudo apt install inotify-tools
inotifywait -m /path/to/watch
```

## 📁 Resources

* [Disk Monitoring Script](disk_alert.sh)
* [`df` command manual](https://man7.org/linux/man-pages/man1/df.1.html)
* [`mailutils` documentation](https://mailutils.org/)
* [`inotify-tools` GitHub repo](https://github.com/inotify-tools/inotify-tools)
