#!/bin/bash
########################################################################################################################
# Defaults
########################################################################################################################

VLC_HOST_CONFIG_DIR=~/.docker-vlc/.config
VLC_HOST_CACHE_DIR=~/.docker-vlc/.cache
VLC_HOST_SNAPSHOTS_DIR=~/Pictures/VLC/Snapshots

[ -d $VLC_HOST_CONFIG_DIR ] ||  mkdir -p $VLC_HOST_CONFIG_DIR
[ -d $VLC_HOST_CACHE_DIR ] ||  mkdir -p $VLC_HOST_CACHE_DIR
[ -d $VLC_HOST_SNAPSHOTS_DIR ] ||  mkdir -p $VLC_HOST_SNAPSHOTS_DIR

########################################################################################################################
# Execution
########################################################################################################################
docker run --rm --detach --name vlc --volume $(pwd)/snapshots:/home/vlc/snapshots debian-vlc https://www.youtube.com/watch?v=ENsXQFcpjcw vlc://quit --no-qt-error-dialogs 
