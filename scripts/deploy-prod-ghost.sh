#!/usr/bin/env bash

set -euv

# Note(cloudnull): All files after the core application are inserted into the runtime.
#                  Because the contents of each file is inserted into the runtime the
#                  last file is actually the first dependency.
octahe deploy \
       --targets="--escalate='/usr/bin/sudo --preserve-env' --name=bastion1 ${USER}@${SERVER1}" \
       --targets="--escalate='/usr/bin/sudo --preserve-env' --via=bastion1 ${USER}@${SERVER2}" \
       --targets="--escalate='/usr/bin/sudo --preserve-env' --via=bastion1 ${USER}@${SERVER3}" \
       --connection-quota=3 \
       solutions/system/deploy.el-base.Targetfile

octahe deploy \
       --targets="--escalate='/usr/bin/sudo --preserve-env' --via=bastion1 ${USER}@${SERVER2}" \
       --args "root_maria_bind=${SERVER3}" \
       solutions/services/deploy.mariadb.Targetfile

octahe deploy \
       --targets="--escalate='/usr/bin/sudo --preserve-env' --via=bastion1 ${USER}@${SERVER3}" \
       --args "ghost_db_host=${SERVER2}" \
       --args "ghost_db_source=${SERVER3}" \
       solutions/applications/deploy.ghost.Targetfile \
       solutions/services/deploy.nginx.Targetfile \
       solutions/app-environment/deploy.nodejs.Targetfile
