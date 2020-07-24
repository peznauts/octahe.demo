<p align="center">
<img src="https://github.com/peznauts/octahe.swift/raw/master/assets/octahe_logo.png" alt="Octahe" title="Octahe" />
</p>

[![License](https://img.shields.io/badge/license-GPL-blue.svg)](https://github.com/peznauts/swift-octahe/blob/master/LICENSE)
[![Twitter](https://img.shields.io/twitter/follow/Peznaut.svg?style=social)](https://twitter.com/intent/follow?screen_name=peznaut)

# (O)ctahe Demo application

This simple repo shows how Octahe could be used to deploy a simple application to 4 targets.

## Overview

* `Targetfile` used to augment an application deployment.
* Targets are virtual machines running under KVM
* Application being deployed is a simple python web server.

### How to run this demo

* Create the VMs

``` shell
for i in {1..5}; do
  octahe deploy vm.create.i440fx to.servers -a NUM=${i}
done
```

* Deploy the application

``` shell
octahe deploy Containerfile to.vms
```

* Undeploy the application

``` shell
octahe undeploy Containerfile to.vms
```

## Demo File Overview

This repo contains a collection of files and scripts which can be used to
help understand how Octahe can be used. The following is a list of example
files which highlight some of Octahe's capabilities.

## Example scripts

The files within the scripts directory show how specific applications can be deployed, grouped and
deployed across a diverse infrastructure.

###### `deploy-ghost.sh`

Script used to deploy Ghost blogging platform, ensuring all of the dependencies are resolved.

###### `VMCreate.sh`

Script to create several Virtual Machines.

###### `VMDestroy.sh`

Script to destroy several Virtual Machines.

## Example Target files

These files are examples of how Octahe can be used to deploy specific applications, or perform actions.

###### demo.Targetfile

Simple "Hello world" type demonstration used in the Octahe introduction
[twitch stream](https://www.youtube.com/watch?v=_h1029bW8xs).

###### deploy.base.Targetfile

Deploy a base platform.

###### deploy.ghost.Targetfile

Deploy the Ghost blogging platform.

###### deploy.mariadb.Targetfile

Deploy the MariaDB database server.

###### deploy.nginx.Targetfile

Deploy the NGINX web server.

###### deploy.nmcli.router.Targetfile

Setup a target host to connect to a given router.

* In this case the "router" is the gateway and DNS service.

###### deploy.nodejs.Targetfile

Deploy the NodeJS language binaries.

###### deploy.osp.undercloud.Targetfile

Deploy the undercloud on a RHEL hosts for use within OSP. The default example is deploying OSP 16.x.

###### deploy.osp.undercloud.rhosrelease.Targetfile

Setup rhosrelease within an osp undercloud target. This is an example of
setting up a subscription on a RHEL host.

###### deploy.swapfile.Targetfile

Create a swap file on a remote host and ensure the swappiness is defined.

###### deploy.swift.Targetfile

Deploy the swift programing language to a Ubuntu target.

###### Targetfile

Example target file which follows the dockerfile spec explicitly.

###### to.compute1.Targetfile

A single KVM Hypervisor target.

###### to.compute2.Targetfile

A single KVM Hypervisor target.

###### to.servers.Targetfile

List of KVM Hypervisor targets.

###### to.vms.Targetfile

List of target VMs to run work on.

###### vm.create.i440fx.Targetfile

Create a Virtual Machine on a KVM hypervisor

###### vm.create.i440fx.bootable.Targetfile

Create a Virtual Machine on a KVM hypervisor that is bootable via VBMC

###### vm.create.q35.Targetfile

Create a Virtual Machine on a KVM hypervisor

###### vm.destroy.Targetfile

Destroy a given VM on a KVM hypervisor
