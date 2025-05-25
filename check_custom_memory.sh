#!/bin/bash
# Script para obtener el % de RAM usada vía SSH en TrueNAS (FreeBSD)

HOST="192.168.1.142"
USER="root"

ssh -o StrictHostKeyChecking=no ${USER}@${HOST} '
  # Obtener la memoria física total (en bytes)
  total=$(sysctl -n hw.physmem)
  # Obtener el número de páginas libres
  free_pages=$(sysctl -n vm.stats.vm.v_free_count)
  # Obtener el tamaño de cada página (en bytes)
  page_size=$(sysctl -n hw.pagesize)
  # Calcular la memoria libre en bytes
  free=$(expr $free_pages \* $page_size)
  # Calcular la memoria usada
  used=$(expr $total - $free)
  # Calcular el porcentaje de memoria usada
  percent=$(echo "scale=2; 100 * $used / $total" | bc -l)
  echo "$percent % used"
'
