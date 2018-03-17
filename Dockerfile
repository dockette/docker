FROM wernight/docker-compose:latest

MAINTAINER Milan Sulc <sulcmil@gmail.com>

ENV TERM xterm

ENV USER_UID 1000
ENV USER_NAME dfx
ENV USER_HOME /home/dfx

RUN apk update && \
    apk upgrade && \
    adduser -D -u $USER_UID $USER_NAME && \
    rm -rf /var/cache/apk/*

CMD ["docker"]
