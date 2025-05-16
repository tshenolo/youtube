#!/bin/bash

echo "=== Backup started at $(date) ==="

# Backup website files
echo "Backing up /var/www/..."
rsync -avz /var/www/ user@backupserver:/backups/www_$(date +%Y-%m-%d)

# Backup config files
echo "Backing up /etc/..."
rsync -avz /etc/ user@backupserver:/backups/etc_$(date +%Y-%m-%d)

# Dump MySQL database (you’ll be prompted for password)
echo "Dumping MySQL database..."
mysqldump -u root -p your_database > /tmp/db_backup.sql

# Transfer database dump
echo "Transferring database dump..."
rsync -avz /tmp/db_backup.sql user@backupserver:/backups/db_$(date +%Y-%m-%d).sql

# Remove local dump
rm -f /tmp/db_backup.sql

echo "=== Backup completed at $(date) ==="