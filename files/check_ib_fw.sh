#!/bin/sh
ibstat|awk -F ": " -v ORS="" '/Firmware version:/ {print $2}'
