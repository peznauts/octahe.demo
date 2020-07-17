#!/usr/bin/env bash

set -euv

# Note(cloudnull): All files after the core application are inserted into the runtime.
#                  Because the contents of each file is inserted into the runtime the
#                  last file is actually the first dependency.
octahe deploy \
       --targets="--escalate='/usr/bin/sudo --preserve-env' centos@172.16.27.86:22" \
       Targetfile.deploy.ghost \
       Targetfile.deploy.mariadb \
       Targetfile.deploy.nginx \
       Targetfile.deploy.nodejs \
       Targetfile.deploy.base
