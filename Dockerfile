FROM debian

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
	apt-get install -y --no-install-recommends \
		ca-certificates \
		libgl1-mesa-dri \
		libgl1-mesa-glx \
		pulseaudio \
		alsa-utils \
		xvfb \
		imagemagick \
		dbus* \
		vlc && \
	apt-get -y -f install && \
	useradd -m vlc && \
	usermod -a -G audio,video vlc && \
	rm -rf /var/lib/apt/lists/* && \
	mkdir -p /home/vlc/snapshots
	 
USER vlc

WORKDIR /home/vlc/media

ENV DISPLAY :99 

COPY scripts/snapshot.sh /snapshot.sh
COPY scripts/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
