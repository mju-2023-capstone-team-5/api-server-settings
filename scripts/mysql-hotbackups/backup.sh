#!/bin/bash

timestamp=`date +%y-%m-%d-%H:%M:%S`
backup_dir="/var/backups/mysql/$timestamp.backup"

echo make current timestamp directory.

mkdir $backup_dir

echo hot-backup start.

mysqldump -u$DATABASE_BACKUP_USER -p$DATABASE_PASSWORD $DATABASE_NAME > $backup_dir/all.sql 2>$backup_dir/error.log

echo hot-backup ended.
echo archiving backups.

tar -zcvf $backup_dir/backup.tar.gz $backup_dir/*

