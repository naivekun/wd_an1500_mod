#!/bin/bash

FW_TO_FLASH=$1

if [ "$1" == "" ]; then
    echo "Usage: $0 <firmware_to_flash>"
    exit 1
fi

chmod +x mnv_cli/mnv_cli
./mnv_cli/mnv_cli flash -o hba -t raw -f $FW_TO_FLASH