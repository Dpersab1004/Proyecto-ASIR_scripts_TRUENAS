#!/bin/bash
ssh -o StrictHostKeyChecking=no root@192.168.1.142 "netstat -an | wc -l | awk '{print \$1, \"total connections\"}'"
