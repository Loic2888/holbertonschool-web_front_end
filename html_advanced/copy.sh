#!/bin/bash
# Usage: ./copy.sh 1-index.html 2-index.html

SRC="$1"
DST="$2"

# Optionnel : petite vérif que les 2 arguments sont bien là
if [ -z "$SRC" ] || [ -z "$DST" ]; then
    echo "Usage: $0 source-file dest-file"
    exit 1
fi

# Copie forcée, sans confirmation
cp -f "$SRC" "$DST"
