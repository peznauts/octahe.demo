#!/usr/bin/env bash

# Create VMs using the i440fx machine type to be used in OSP testing

set -euv

octahe deploy --targets='--escalate="/usr/bin/sudo --preserve-env" cloud-user@172.16.27.75' \
              solutions/openstack/deploy.osp.undercloud.Targetfile \
              solutions/openstack/deploy.osp.undercloud.rhosrelease.Targetfile \
              solutions/system/deploy.nmcli.router.Targetfile \
              solutions/system/deploy.swapfile.Targetfile \
              privateFiles/local.Targetfile
