Xvfb :99 -screen 0 1600x1200x24+32 & 
sh /snapshot.sh &
vlc --no-qt-privacy-ask --no-metadata-network-access  --snapshot-path=/home/vlc/snapshots "$@"
