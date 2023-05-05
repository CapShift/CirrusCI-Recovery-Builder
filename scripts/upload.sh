#!/bin/bash
source $CONFIG
cd /tmp/ci/out/target/product/$DEVICE
ls
curl --upload-file $OUTPUT https://free.keep.sh >> upload.txt
wget https://github.com/Sushrut1101/GoFile-Upload/raw/master/upload.sh /dev/null 2>&1
chmod +x upload.sh
sudo apt install jq -y /dev/null 2>&1
./upload.sh $OUTPUT
echo
cat upload.txt
