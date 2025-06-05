#!/bin/bash
trap '' TERM

CFGDIR="$1"
source "$CFGDIR"/cfg.sh || exit 1

mkdir -p ./saves

if [ ! -f "./saves/$SAVEFILE.zip" ]; then
	factorio/bin/x64/factorio --create "./saves/$SAVEFILE.zip" \
		--map-gen-settings ./"$CFGDIR"/mapgen-config.json \
		--map-settings ./"$CFGDIR"/map-config.json || exit 1
fi

factorio/bin/x64/factorio \
	--start-server "./saves/$SAVEFILE.zip" \
	--server-settings "$CFGDIR"/server-config.json
