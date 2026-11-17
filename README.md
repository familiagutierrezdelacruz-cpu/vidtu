# VidTú

App web instalable (PWA) para ver tus videos locales sin internet: importa videos del teléfono, ordénalos en carpetas y listas, y reprodúcelos con velocidad, saltos, imagen en imagen y "seguir viendo".

Todo se guarda en el propio teléfono (IndexedDB); no hay servidor ni cuentas.

## Archivos
- `index.html`: la app completa · `manifest.json` · `sw.js` (modo sin internet; sube la versión `vidtu-vN` en cada actualización) · íconos
- `deploy/`: configuración nginx y script para publicar en `vidtu.misaludhoy.tech`

## Publicar (VPS con nginx y certbot)
1. DNS: registro `A` `vidtu` → IP del VPS.
2. Clonar el repo en el VPS, poner tu correo en `deploy/desplegar.sh` y ejecutar `./deploy/desplegar.sh` desde la raíz.
3. En el teléfono abrir `https://vidtu.misaludhoy.tech` e instalar.

## Probar en local
`python3 -m http.server 8765` y abrir `http://localhost:8765`.
