#!/bin/bash
ssh -o StrictHostKeyChecking=no root@192.168.1.142 "zpool list | grep 'TRUENAS'"
