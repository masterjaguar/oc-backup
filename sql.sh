#!/bin/bash

source oc-backup.conf

#Ausgabe der Werte aus sql.pref
echo "DB_HOST=$DB_HOST"
echo "DB_NAME=$DB_NAME"
echo "DB_USER=$DB_USER"
echo "DB_PWD=$DB_PWD"
echo "BACKUP_DIR=$BACKUP_DIR"

mysqldump --lock-tables -h $DB_HOST -u $DB_USER -p$DB_PWD $DB_NAME > $BACKUP_DIR/backup$(date +%Y-%m-%d-%H.%M.%S).sql
