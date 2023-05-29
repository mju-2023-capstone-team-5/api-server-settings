#!/bin/bash

backup_dir="/var/backups/mysql/"

echo delete backup directory after cretaed 7 days;
find ${backup_dir}/ -used 7 -exec rm -r {} \;
