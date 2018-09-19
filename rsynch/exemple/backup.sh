#!/bin/bash

# Incremental backup (file based)

# This variable keeps the full path from file-root to target directory 
p_dst=$(cd $(dirname $0); pwd)


src_path=$p_dst/dir1/

## Full path / Relative doesn't work
c_date=$(date +%F_%H-%M-%S)
backup_path=$p_dst/backup/backup/$c_date/
dst_path=$p_dst/backup/data/

mkdir $backup_path -p
mkdir $dst_path -p

rsync -azP --delete --backup --backup-dir=$backup_path $src_path $dst_path

# If dir is empty delete

delete_dir_if_empty(){
	target=$1
	
	if [ -z "$(ls -A $target)" ]
	then
		rm $target -r
	fi
}

delete_dir_if_empty $backup_path

