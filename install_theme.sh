#!/bin/bash

set -e

D=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

if [[ `id -u` -ne 0 ]] ; then
	echo "Please run with sudo $0"
	exit 1
fi 

THEME_DIR="/boot/grub/themes/steinsgrub"
mkdir -p "$THEME_DIR"

if ! cp "$D"/steinsgrub/theme.txt "$D"/steinsgrub/*.pf2 "$D"/steinsgrub/*.png "$THEME_DIR"/; then
    echo "Failed to copy theme files" >&2
    exit 1
fi

echo "Theme successfully installed to $THEME_DIR"
