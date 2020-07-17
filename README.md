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
  octahe deploy Targetfile.vm.create.i440fx Targetfile.to.servers -a NUM=${i}
done
```

* Deploy the application

``` shell
octahe deploy Containerfile Targetfile.to.vms
```

* Undeploy the application

``` shell
octahe undeploy Containerfile Targetfile.to.vms
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

###### Targetfile.demo

Simple "Hello world" type demonstration used in the Octahe introduction
[twitch stream](https://www.youtube.com/watch?v=_h1029bW8xs).

###### Targetfile.deploy.swift

Deploy the swift programing language to a Ubuntu target.

###### Targetfile.deploy.base

Deploy a base platform.

###### Targetfile.deploy.ghost

Deploy the Ghost blogging platform.

###### Targetfile.deploy.mariadb

Deploy the MariaDB database server.

###### Targetfile.deploy.nginx

Deploy the NGINX web server.

###### Targetfile.deploy.nodejs

Deploy the NodeJS language binaries.

###### Targetfile.to.servers

List of KVM Hypervisor targets.

###### Targetfile.to.vms

List of target VMs to run work on.

###### Targetfile.vm.destroy

Destroy a given VM on a KVM hypervisor

###### Targetfile.vm.create.i440fx

Create a Virtual Machine on a KVM hypervisor

###### Targetfile.vm.create.q35

Create a Virtual Machine on a KVM hypervisor
