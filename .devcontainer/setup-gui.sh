#!/bin/bash
sudo apt-get update
sudo apt-get install -y wget libfribidi0 libfuse2 libgl1-mesa-dri soundfont-fluid

# Téléchargement et extraction de MuseScore 4
wget https://github.com/musescore/MuseScore/releases/download/v4.2.1/MuseScore-4.2.1.240230937-x86_64.AppImage -O /tmp/musescore.AppImage
chmod +x /tmp/musescore.AppImage

cd /tmp && ./musescore.AppImage --appimage-extract
sudo mv /tmp/squashfs-root /opt/musescore
sudo ln -s /opt/musescore/AppRun /usr/local/bin/musescore
