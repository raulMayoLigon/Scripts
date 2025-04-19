#!/bin/sh

echo "Información del Sistema:"
echo "------------------------"
echo "	-User: $USER"
echo "	-Fecha y hora: $(date)"
echo "	-Versión macOS: $(sw-vers -productVersion)"
echo "	-Modelo del Mac: $(sysctl -n hw.model)"