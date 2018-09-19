#!/bin/bash

src_path=./dir1/
dst_path="./sync/"

rsync -azP --delete $src_path $dst_path


