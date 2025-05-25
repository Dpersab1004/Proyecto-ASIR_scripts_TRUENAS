#!/bin/bash
ssh -o StrictHostKeyChecking=no root@192.168.1.142 "swapinfo -h | grep '/dev/da1p1.eli' | awk '{print \$3, \"used out of\", \$2, \"swap\"}'"
