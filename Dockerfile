ARG VERSION=28-cli

FROM docker:$VERSION

ENV DOCKER_BUILDKIT=1

RUN apk update && \
   apk upgrade && \
   # Install extra deps
   apk add --no-cache make git curl wget direnv && \
   # Basic check it works
   docker -v && \
   docker-compose -v

CMD ["/bin/sh"]
