DOCKER_IMAGE ?= dockette/docker
TAG ?= latest
VERSION ?= 29-cli

build: docker-build

test:
	docker run --rm ${DOCKER_IMAGE}:${TAG} docker --version
	docker run --rm ${DOCKER_IMAGE}:${TAG} docker compose version
	docker run --rm ${DOCKER_IMAGE}:${TAG} make --version

run:
	docker run --rm -it ${DOCKER_IMAGE}:${TAG}

docker-build:
	docker buildx \
		build \
		--platform linux/amd64 \
		--pull \
		--build-arg VERSION=${VERSION} \
		-t ${DOCKER_IMAGE}:${TAG} \
		--load \
		.
