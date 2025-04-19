#!/bin/bash

# Comprobación de conexión
if ping -c 1 1.1.1.1 > /dev/null 2>&1; then
    echo "✅ Conexión OK"
else
    echo "❌ Sin conexión"
fi

# Obtener nombre de la red Wi-Fi
wifi_info=$(networksetup -getairportnetwork en0)
echo "🔌 Red Wi-Fi: $wifi_info"

# Obtener IP local
ip_local=$(ipconfig getifaddr en0)
echo "📍 IP local: $ip_local"

# Obtener IP pública
ip_publica=$(curl -s ifconfig.me)
echo "🌍 IP pública: $ip_publica"

# Obtener router (puerta de enlace)
router=$(netstat -nr | grep default | awk '{print $2}')
echo "🌐 Router: $router"
