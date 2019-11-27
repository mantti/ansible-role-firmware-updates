#!/bin/sh
#ibstat|awk -F ": " -v ORS="" '/Firmware version:/ {print $2}'
mstflint -d `lspci |grep -i mellanox |cut -d " " -f1` q|awk -F ":" -v ORS="" '/FW Version/{gsub (" ", "", $2); print $2}'
