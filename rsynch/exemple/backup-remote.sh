#!/bin/bash

# Incremental backup (file based)
# Warning => No 2 user must access at same time... so you have to disable password and only allow SSH keys

# This variable keeps the full path from file-root to target directory 
p_src=$(cd $(dirname $0); pwd)
src_path=$p_src/dir1/

# Relative path from user's home directory
remote="yueur@127.0.0.1"
p_dst=$p_src/backup

## Full path / Relative doesn't work
c_date=$(date +%F_%H-%M-%S)
#random_string=$(mktemp -u XXXXXXXXXXXXXXXX)
backup_path=$p_dst/backup/$c_date/
#backup_path="$p_dst/backup/${c_date}_${random_string}/"
dst_path=$p_dst/data/
backup_path_full="${dst_path}${backup_path}"

ssh $remote mkdir -p $dst_path
rsync -e ssh -azP --delete --backup --backup-dir=$backup_path $src_path "$remote:$dst_path"

