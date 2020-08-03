#!/usr/bin/env bash

# Create 3 VMs using the i440fx machine type

set -euv

export PUBKEY="$(cat ~/.ssh/id_rsa.pub)"
export IMAGE="${IMAGE:-CentOS-8-x86_64-GenericCloud.qcow2}"
export SERVER_TARGET_FILE=${SERVER_TARGET_FILE:-to.servers.Targetfile}

for item in {0..2}; do
    octahe deploy vm.create.i440fx.Targetfile ${SERVER_TARGET_FILE} \
                  -a IMAGE="${IMAGE}"  \
                  -a PUBKEY="${PUBKEY}" \
                  -a DISKSIZE="64" \
                  -a NAME="${NAME}-${item}" \
                  -a RAM="2048" \
                  -a CPU=4 $@
done
