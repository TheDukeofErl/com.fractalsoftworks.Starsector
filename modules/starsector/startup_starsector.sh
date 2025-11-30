#!/bin/bash
mkdir -p "${XDG_DATA_HOME}/saves" "${XDG_DATA_HOME}/mods" "${XDG_DATA_HOME}/screenshots" "${XDG_DATA_HOME}/logs" "${XDG_DATA_HOME}/java" "${XDG_DATA_HOME}/config"
ln -s "${XDG_DATA_HOME}/java" ~/.java
# if the settings file from the game is newer, we gotta clobber what we've got for what we don't got
cp -u /app/starsector/data/config/original_settings.json "${XDG_DATA_HOME}/config/settings.json"

cd /app/starsector
./starsector.sh
