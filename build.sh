#!/bin/sh

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

sudo cp ./export.sh /usr/bin/export.sh
sudo chmod +x /usr/bin/export.sh
