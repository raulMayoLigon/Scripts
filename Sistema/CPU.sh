#!/bin/bash
echo "Uso del sistema:"

# Uso de la CPU
echo "Uso de la CPU:"
top -l 1 | grep "CPU usage"

# Uso de la memoria
echo "Uso de la memoria:"
top -l 1 | grep "PhysMem"

# Uso del disco
echo "Uso del disco:"
df -h

echo "¡Resumen completado!"