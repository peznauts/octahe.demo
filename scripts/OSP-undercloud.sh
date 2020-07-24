#!/usr/bin/env bash

# Create VMs using the i440fx machine type to be used in OSP testing

set -euv

octahe deploy --targets='--escalate="/usr/bin/sudo --preserve-env" cloud-user@172.16.27.75' \
              deploy.osp.undercloud.Targetfile \
              deploy.osp.undercloud.rhosrelease.Targetfile \
              deploy.nmcli.router.Targetfile \
              deploy.swapfile.Targetfile \
              privateFiles/local.Targetfile
