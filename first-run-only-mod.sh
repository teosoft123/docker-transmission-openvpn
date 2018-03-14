#!/bin/bash
docker run --cap-add=NET_ADMIN --device=/dev/net/tun -d \
-v /home/oleg/projects/dto/data/:/data \
-v /etc/localtime:/etc/localtime:ro \
-e "OPENVPN_PROVIDER=VPNAREA" \
-e "OPENVPN_CONFIG=Bulgaria-2" \
-e "OPENVPN_USERNAME=kingch" \
-e "OPENVPN_PASSWORD=Nataxa123" \
-e "LOCAL_NETWORK=192.168.11.0/24" \
--log-driver json-file \
--log-opt max-size=10m \
-p 8181:9091 \
--dns 8.8.8.8 --dns 8.8.4.4
--name=xm-ovpn \
