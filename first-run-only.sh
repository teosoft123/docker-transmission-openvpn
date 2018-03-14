#!/bin/bash
docker run --cap-add=NET_ADMIN --device=/dev/net/tun -d \
-v /Users/oleg/projects/docker-transmission-openvpn/data-delete-me/:/data \
-v /Users/oleg/projects/docker-transmission-openvpn/data-delete-me/localtime:/etc/localtime:ro \
-e "OPENVPN_PROVIDER=VPNAREA" \
-e "OPENVPN_CONFIG=Bulgaria-2" \
-e "OPENVPN_USERNAME=kingch" \
-e "OPENVPN_PASSWORD=Nataxa123" \
--log-driver json-file \
--log-opt max-size=10m \
-p 8181:9091 \
--name=xm-ovpn \
teosoft123/dto


