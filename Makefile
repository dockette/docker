DOCKER_IMAGE=dockette/docker

docker-build:
	docker buildx \
		build \
		--platform linux/amd64,linux/arm64 \
		--pull \
		-t ${DOCKER_IMAGE} \
		.
