#!/bin/bash

pdfreader=firefox

# Vérifie si Pandoc est installé
if ! command -v pandoc &> /dev/null; then
    echo "Pandoc is not installed yet. Please install it before running this script"
    exit 1
fi

# Vérifie si le pdfreader est installé
if ! command -v $pdfreader &> /dev/null; then
    echo "your pdf reader is not installed yet. Please install it before running this script"
    exit 1
fi

# Vérifie si un argument (fichier Markdown) a été fourni
if [ $# -ne 1 ]; then
    echo "Utilisation : $0 fichier.md"
    exit 1
fi

input_file="$1"
output_file="${input_file%.md}.pdf"

# Convertit le fichier Markdown en PDF avec Pandoc et ouvre le pdf dans $pdfreader
pandoc "$input_file" \
-o "$output_file" \
--toc -V lang=fr \
#-F mermaid-filter \
--template eisvogel \
--highlight-style tango \
--listings \
--number-sections \
--variable colorlinks=true \
&& $pdfreader "$output_file" &
