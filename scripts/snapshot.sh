cd /home/vlc/snapshots/
HOSTNAME=$(cat /etc/hostname)
while [ 1 -eq 1 ]; do
	sleep 5
	IMAGE_NAME="$(echo $(date +%Y%m%d%H%M%S))_${HOSTNAME}.png"
	import -window root ${IMAGE_NAME}
done
