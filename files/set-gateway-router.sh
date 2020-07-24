#!/usr/bin/env bash

set -euv

export GATEWAY_DEV=$(nmcli --fields UUID,DEVICE con show | awk "/$(ip -o r g 1 | awk '{print $5}')/ {print \$1}")
export CURRENT_ADDRESS="$(ip -o a l eth0 | grep -w inet | awk '{print $4}')"

nmcli con modify ${GATEWAY_DEV} ipv4.address ${CURRENT_ADDRESS}
nmcli con modify ${GATEWAY_DEV} ipv4.gateway ${GATEWAY_ADDRESS}
nmcli con modify ${GATEWAY_DEV} ipv4.dns ${GATEWAY_ADDRESS}
nmcli con modify ${GATEWAY_DEV} ipv4.method manual

nmcli con down ${GATEWAY_DEV}
nmcli con up ${GATEWAY_DEV}

touch /etc/router-configured
