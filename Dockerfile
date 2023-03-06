FROM docker:20.10-cli

ENV DOCKER_BUILDKIT=1

RUN apk update && \
   apk upgrade && \
   # Install extra deps
   apk add --no-cache make git curl wget && \
   # Basic check it works
   docker -v && \
   docker-compose -v

CMD ["/bin/sh"]
