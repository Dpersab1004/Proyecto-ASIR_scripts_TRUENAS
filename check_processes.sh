#!/bin/bash
ssh -o StrictHostKeyChecking=no root@192.168.1.142 "ps aux | wc -l | awk '{print \$1, \"processes\"}'"
