#!/bin/bash

# Variables
SRC_DIR="/opt/app/data"
DEST_DIR="/backup/appdata"
LOG_FILE="/var/log/backup_errors.log"
DATE=$(date +%F)
BACKUP_FILE="appdata_backup_${DATE}.tar.gz"
EMAIL="chahatrajput5585@gmail.com"

# Check if today is Saturday (6) or Sunday (7)
DAY=$(date +%u)
if [[ $DAY -gt 5 ]]; then
    echo "Weekend detected. No backup performed on $DATE" >> $LOG_FILE
    exit 0
fi

# Perform backup
tar -czf "${DEST_DIR}/${BACKUP_FILE}" "$SRC_DIR" 2>> $LOG_FILE
if [[ $? -eq 0 ]]; then
    echo "Backup successful: ${BACKUP_FILE}" | mail -s "Backup Status for $DATE" $EMAIL
else
    echo "Backup failed: ${BACKUP_FILE}" | mail -s "Backup Status for $DATE" $EMAIL
fi

# Set permissions
chmod 600 "${DEST_DIR}/${BACKUP_FILE}"

