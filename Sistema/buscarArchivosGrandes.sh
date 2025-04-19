#!/bin/bash

echo "Buscando archivos mayores a 500MB..."
find ~ -type f -size +500M -exec ls -lh {} \; | awk '{ print $9 ": " $5 }'