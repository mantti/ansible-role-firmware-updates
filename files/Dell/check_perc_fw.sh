#!/bin/bash
/opt/MegaRAID/perccli/perccli64 /call show |awk '/FW Package Build/ {print $5}'
