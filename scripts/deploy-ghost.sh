#!/usr/bin/env bash

set -euv

# Note(cloudnull): All files after the core application are inserted into the runtime.
#                  Because the contents of each file is inserted into the runtime the
#                  last file is actually the first dependency.
octahe deploy \
       --targets="--escalate='/usr/bin/sudo --preserve-env' ${USER}@${SERVER}" \
       solutions/applications/deploy.ghost.Targetfile \
       solutions/services/deploy.mariadb.Targetfile \
       solutions/services/deploy.nginx.Targetfile \
       solutions/app-environment/deploy.nodejs.Targetfile \
       solutions/system/deploy.el-base.Targetfile
