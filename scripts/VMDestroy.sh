#!/usr/bin/env bash

# Create 3 VMs using the i440fx machine type

set -euv

export SERVER_TARGET_FILE=${SERVER_TARGET_FILE:-to.servers.Targetfile}

octahe deploy solutions/kvm/vm.destroy.Targetfile ${SERVER_TARGET_FILE} \
                -a NAME="${NAME}"
