#!/usr/bin/env bash

# Create 3 VMs using the i440fx machine type

set -euv

for item in {0..2}; do
    octahe deploy Targetfile.vm.destroy Targetfile.to.servers \
                  -a NAME="CentOS8-${item}"
done
