#!/bin/bash
ssh -o StrictHostKeyChecking=no root@192.168.1.142 "iostat -dx da1 5 2 | awk '/da1/ {print \"Read:\", \$3, \"MB/s Write:\", \$4, \"MB/s\"}'"
