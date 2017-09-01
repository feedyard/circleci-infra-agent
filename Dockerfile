FROM alpine:3.6

MAINTAINER Nic Cheneweth <nic.cheneweth@thoughtworks.com>

RUN apk update && apk upgrade
# RUN apk add --no-cache git openssh tar gzip ca-certificates # packages required for use as a circleci primary container

# remove setuid and setgid permissions from executables
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true

HEALTHCHECK NONE