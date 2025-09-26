#!/bin/bash
LOG_TAG="HOME_BACKUP"
BACKUP_SOURCE="/home/kirill"
BACKUP_DEST="/tmp/backup"

if [ ! -d "$BACKUP_DEST" ]; then
    mkdir -p "$BACKUP_DEST" || { logger -t "$LOG_TAG" "ERROR: Cannot create backup directory"; exit 1; }
fi

logger -t "$LOG_TAG" "Starting backup from $BACKUP_SOURCE to $BACKUP_DEST"
rsync -av --delete --checksum --exclude='.*' "$BACKUP_SOURCE/" "$BACKUP_DEST/" > /dev/null 2>&1

if [ $? -eq 0 ]; then
    logger -t "$LOG_TAG" "SUCCESS: Backup completed successfully"
else
    logger -t "$LOG_TAG" "ERROR: Backup failed with exit code $?"
fi
