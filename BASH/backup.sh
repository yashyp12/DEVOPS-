#!/bin/bash

set -e 

SOURCE="$1"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_DIR="$HOME/backups"

mkdir -p "$BACKUP_DIR"

cp -r "$SOURCE" "$BACKUP_DIR/backup-$DATE"

echo "Backup completed successfully ."

echo "Backup location : $BACKUP_DIR/backup-$DATE"

