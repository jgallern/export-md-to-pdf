#!/bin/bash

# Vérifier si Pandoc est installé
if ! command -v pandoc &> /dev/null; then
    echo "Pandoc n'est pas installé. Veuillez l'installer avant d'exécuter ce script."
    exit 1
fi

# Vérifier si Zathura est installé
if ! command -v zathura &> /dev/null; then
    echo "Zathura n'est pas installé. Veuillez l'installer avant d'exécuter ce script."
    exit 1
fi

# Vérifier si un argument (fichier Markdown) a été fourni
if [ $# -ne 1 ]; then
    echo "Utilisation : $0 fichier.md"
    exit 1
fi

input_file="$1"
output_file="${input_file%.md}.pdf"

# Convertir le fichier Markdown en PDF avec Pandoc
pandoc "$input_file" -o "$output_file" && zathura "$output_file"

