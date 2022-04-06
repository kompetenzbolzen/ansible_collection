#!/bin/bash
trap '' TERM

source cfg.sh || exit 1

mkdir -p ./saves

if [ ! -f "./saves/$SAVEFILE.zip" ]; then
	factorio/bin/x64/factorio --create "./saves/$SAVEFILE.zip" \
		--map-gen-settings ./mapgen-config.json \
		--map-settings ./map-config.json || exit 1
fi

factorio/bin/x64/factorio --start-server "./saves/$SAVEFILE.zip" --server-settings server-config.json
