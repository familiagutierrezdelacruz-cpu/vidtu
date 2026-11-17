#!/usr/bin/env bash
# Ejecutar EN EL VPS (Ubuntu/Debian con nginx), desde la carpeta donde subiste los archivos.
# Antes: registro DNS A  vidtu.misaludhoy.tech -> IP del VPS, ya resolviendo.
set -euo pipefail
# Ejecutar desde la raíz del repositorio clonado
DOM=vidtu.misaludhoy.tech
sudo mkdir -p /var/www/vidtu
sudo cp index.html manifest.json sw.js icon-*.png /var/www/vidtu/
sudo cp deploy/$DOM.conf /etc/nginx/sites-available/$DOM.conf
sudo ln -sf /etc/nginx/sites-available/$DOM.conf /etc/nginx/sites-enabled/$DOM.conf
sudo nginx -t
sudo systemctl reload nginx
sudo certbot --nginx -d $DOM --non-interactive --agree-tos -m TU_CORREO@EJEMPLO.COM --redirect
echo "Listo: https://$DOM"
