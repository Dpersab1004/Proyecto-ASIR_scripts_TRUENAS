#!/bin/bash
ssh -o StrictHostKeyChecking=no root@192.168.1.142 "netstat -ib | grep em0 | awk '{print \$9 / 1024 / 1024 \" MB received, \" \$12 / 1024 / 1024 \" MB sent\"}'"
