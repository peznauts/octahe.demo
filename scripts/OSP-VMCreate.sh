#!/usr/bin/env bash

# Create VMs using the i440fx machine type to be used in OSP testing

set -euv

export PUBKEY="$(cat ~/.ssh/id_rsa.pub)"
export IMAGE="${IMAGE:-CentOS-8-x86_64-GenericCloud.qcow2}"

octahe deploy solutions/kvm/vm.create.i440fx.Targetfile \
                -a IMAGE="${IMAGE}"  \
                -a PUBKEY="${PUBKEY}" \
                -a DISKSIZE="64" \
                -a NAME="OSP-undercloud" \
                -a RAM=16384 \
                -a CPU=8 \
                --targets="--escalate='/usr/bin/sudo --preserve-env' ${USER}@${SERVER1}:22" $@

octahe deploy solutions/kvm/vm.create.i440fx.bootable.Targetfile \
                -a DISKSIZE="128" \
                -a NAME="OSP-controller" \
                -a RAM=32768 \
                -a CPU=8 \
                --targets="--escalate='/usr/bin/sudo --preserve-env' ${USER}@${SERVER1}:22" $@

octahe deploy solutions/kvm/vm.create.i440fx.bootable.Targetfile \
                -a DISKSIZE="768" \
                -a NAME="OSP-compute" \
                -a RAM=73728 \
                -a CPU=30 \
                --targets="--escalate='/usr/bin/sudo --preserve-env' ${USER}@${SERVER2}:22" $@
