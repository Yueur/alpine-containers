#!/bin/bash

p_dst=$(cd $(dirname $0); pwd)
cd $p_dst


./init.sh
./backup.sh

sleep 1

rm dir1/file{1..3}.txt
./backup.sh

sleep 1

echo "Test" > dir1/file12.txt
./backup.sh

sleep 1

echo "Test 2" >> dir1/file12.txt
./backup.sh

sleep 1

rm dir1/file12.txt
./backup.sh



