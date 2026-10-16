#!/usr/bin/env bash
# Genera un .zip por skill en dist/, listo para subir a Claude.
# Uso: ./scripts/empaquetar-skills.sh
set -euo pipefail

RAIZ="$(cd "$(dirname "$0")/.." && pwd)"
ORIGEN="$RAIZ/skills"
DESTINO="$RAIZ/dist"

command -v zip >/dev/null 2>&1 || { echo "Necesitas 'zip' instalado."; exit 1; }

rm -rf "$DESTINO"
mkdir -p "$DESTINO"

for dir in "$ORIGEN"/*/; do
  nombre="$(basename "$dir")"
  if [[ ! -f "$dir/SKILL.md" ]]; then
    echo "Aviso: $nombre no tiene SKILL.md, se omite."
    continue
  fi
  (cd "$ORIGEN" && zip -rq "$DESTINO/$nombre.zip" "$nombre")
  echo "OK  $nombre.zip"
done

echo
echo "Listo. Sube los .zip de $DESTINO desde la sección de skills de Claude."
