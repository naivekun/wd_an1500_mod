#!/bin/bash

FW_TO_FLASH=$1

if [ "$1" == "" ]; then
    echo "Usage: $0 <firmware_to_flash>"
    exit 1
fi

chmod +x mvf/mvf_*
cd mvf && ./mvf_64 -wbf $FW_TO_FLASH -addr 0x00000000 -y && cd ..