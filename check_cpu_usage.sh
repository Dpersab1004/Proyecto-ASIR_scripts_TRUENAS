#!/bin/bash

# Configuración de conexión
NAS_IP="192.168.1.142"
USER="root"

# Obtener uso de CPU por SSH
ssh -o StrictHostKeyChecking=no $USER@$NAS_IP "top -d1 | grep 'CPU:' | awk '{print \$2, \"% user CPU,\", \$4, \"% system CPU\"}'"
