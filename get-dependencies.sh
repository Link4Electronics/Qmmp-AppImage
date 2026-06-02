#!/bin/sh

set -eu

ARCH=$(uname -m)

echo "Installing package dependencies..."
echo "---------------------------------------------------------------"
pacman -Syu --noconfirm \
    kvantum        \
    libfbclient    \
    libmpcdec      \
    libsidplayfp   \
    lxqt-qtplugin  \
    mariadb-libs   \
    pipewire-audio \
    pipewire-jack  \
    projectm       \
    qmmp           \
    qt6-tools      \
    qt6ct          \
    unixodbc       \
    wildmidi

echo "Installing debloated packages..."
echo "---------------------------------------------------------------"
get-debloated-pkgs --add-common --prefer-nano ffmpeg-mini

# Comment this out if you need an AUR package
#make-aur-package qmmp-plugin-pack

# If the application needs to be manually built that has to be done down here
