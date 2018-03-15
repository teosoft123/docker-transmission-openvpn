#!/bin/bash
WORKDIR=/home/oleg/projects/dto/
docker run --cap-add=NET_ADMIN --device=/dev/net/tun -d \
-v ${WORKDIR}/data/:/data \
-v /etc/localtime:/etc/localtime:ro \
--env-file ${WORKDIR}/docker-env-file.conf \
--log-driver json-file \
--log-opt max-size=10m \
-p 8181:9091 \
--dns 8.8.8.8 \
--dns 8.8.4.4 \
--name=xm-ovpn \
--restart unless-stopped \
teosoft/dto
