#!/bin/bash

FLAGS=''

if [[ $XDG_SESSION_TYPE == "wayland" ]] && [ -c /dev/nvidia0 ]
then
    FLAGS="$FLAGS --disable-gpu-sandbox"
fi

export TMPDIR="$XDG_RUNTIME_DIR/app/${FLATPAK_ID:-im.riot.Riot}"

exec zypak-wrapper /app/Element/element-desktop $FLAGS "$@"
