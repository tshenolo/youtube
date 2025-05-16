# 🗃️ Linux Server Monitoring

**Video**: [How to Monitor your Linux Server in Under a Minute](https://youtube.com/shorts/dBmdvtbH7yY)  
**Blog**: [Linux Server Monitoring for Beginners](https://medium.com/@tshenolomos/linux-server-monitoring-for-beginners-e84e6eefe3fa)


## 💡 What You’ll Learn
- How to monitor your Linux server
- Using `uptime` to check System Load
- Using `top` to monitor CPU and Memory Usage
- Using `df` to display available and used disk space
- Using `free` to show memory usage in megabytes
- Using `ss` to list listening ports and connections
- Automating it with bash and a cron job

## 💻 Commands
### 1. System Load
uptime

### 2. CPU and Memory  
top -n 1 | head -15

### 3. Disk Space  
df -h

### 4. Memory Snapshot 
free -m

### 5. Open Ports
ss -tuln

### 6. Log Snapshot 
tail -n 20 /var/log/syslog

## 📁 Resources
- [monitor.sh](monitor.sh) – Monitoring script

