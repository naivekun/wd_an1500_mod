#!/bin/bash

SIZE_16MB=0x1000000
SAVE_TO_FILE=$1

if [ "$1" == "" ]; then
    echo "Usage: $0 <backup_filename>"
    exit 1
fi

chmod +x mvf/mvf_*
cd mvf && ./mvf_64 -rfb ../an1500_backup.bin -addr 0x00000000 -sz $SIZE_16MB && cd ..