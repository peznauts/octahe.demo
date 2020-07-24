#!/usr/bin/env bash

# Create 3 VMs using the i440fx machine type

set -euv

export PUBKEY="$(cat ~/.ssh/id_rsa.pub)"

for item in {0..2}; do
    octahe deploy vm.create.i440fx.Targetfile to.servers.Targetfile \
                  -a IMAGE="CentOS-8-x86_64-GenericCloud.qcow2"  \
                  -a PUBKEY="${PUBKEY}" \
                  -a LABEL="${item}" \
                  -a DISKSIZE="64" \
                  -a NAME="CentOS8-${item}" \
                  -a RAM="8196" \
                  -a CPU=8
done
