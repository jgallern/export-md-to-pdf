#!/bin/bash

# Vérifie si Pandoc est installé
if ! command -v pandoc &> /dev/null; then
    echo "Pandoc is not installed yet. Please install it before running this script"
    exit 1
fi

# Vérifie si Zathura est installé
if ! command -v zathura &> /dev/null; then
    echo "Zathura is not installed yet. Please install it before running this script"
    exit 1
fi

# Vérifie si un argument (fichier Markdown) a été fourni
if [ $# -ne 1 ]; then
    echo "Utilisation : $0 fichier.md"
    exit 1
fi

input_file="$1"
output_file="${input_file%.md}.pdf"

# Convertit le fichier Markdown en PDF avec Pandoc et ouvre le pdf dans zathura
pandoc "$input_file" -o "$output_file" && zathura "$output_file"

