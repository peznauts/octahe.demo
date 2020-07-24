#!/usr/bin/env bash

# Create 3 VMs using the i440fx machine type

set -euv

for item in {0..2}; do
    octahe deploy vm.destroy.Targetfile to.servers.Targetfile \
                  -a NAME="CentOS8-${item}"
done
