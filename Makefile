clean:
	eval $$(find snapshots -type f -exec rm {} \;)
build:
	docker build . --tag debian-vlc
deploy:
	docker stack deploy -c stack.yaml tcc
undeploy:
	docker stack rm tcc
