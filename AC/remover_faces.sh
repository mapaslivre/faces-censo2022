#!/bin/bash

# Percorrer todos os arquivos no diretório atual com padrão *_Faces-*.geojson
for FILE in *_Faces-*.geojson; do
  if [ -f "$FILE" ]; then
    # Novo nome sem o sufixo _Faces-XX
    NEW_NAME=$(echo "$FILE" | sed -E 's/_Faces-[A-Z]{2}\.geojson$/.geojson/')
    mv "$FILE" "$NEW_NAME"
    echo "Renomeado: $FILE → $NEW_NAME"
  fi
done

echo "Renomeação concluída."

