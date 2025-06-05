#!/bin/bash
trap '' TERM

CFGDIR="$1"
source "$CFGDIR"/cfg.sh || exit 1

mkdir -p ./saves

if [ ! -f "./saves/$SAVEFILE.zip" ]; then
	factorio/bin/x64/factorio --create "./saves/$SAVEFILE.zip" \
		--config ./"$CFGDIR"/config.ini \
		--map-gen-settings ./"$CFGDIR"/mapgen-config.json \
		--map-settings ./"$CFGDIR"/map-config.json || exit 1
fi

factorio/bin/x64/factorio \
	--config ./"$CFGDIR"/config.ini \
	--start-server "./saves/$SAVEFILE.zip" \
	--server-settings "$CFGDIR"/server-config.json \
	--port "$PORT"
