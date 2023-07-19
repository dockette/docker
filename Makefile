DOCKER_IMAGE=dockette/docker

docker-build:
	docker buildx \
		build \
		--platform linux/arm64 \
		--pull \
		--build-arg VERSION=24-cli \
		-t ${DOCKER_IMAGE} \
		.
