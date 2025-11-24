DOCKER_IMAGE=dockette/docker

docker-build:
	docker buildx \
		build \
		--platform linux/arm64 \
		--pull \
		--build-arg VERSION=29-cli \
		-t ${DOCKER_IMAGE} \
		.
