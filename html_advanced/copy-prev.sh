#!/bin/bash
echo "=== Copieur de tâches Holberton ==="
echo "1. Nom du fichier précédent (ex: 0-index.html) : "
read PREV_FILE
echo "2. Nom du nouveau fichier (ex: 1-index.html) : "
read NEW_FILE

if [ -f "$PREV_FILE" ]; then
    cp "$PREV_FILE" "$NEW_FILE"
    echo "✅ Copié : $PREV_FILE → $NEW_FILE"
    echo "✏️  Édite maintenant $NEW_FILE"
    nano "$NEW_FILE"  # ou vim/code selon ta préférence
else
    echo "❌ $PREV_FILE n'existe pas !"
fi
