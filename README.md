<p align="center">
<img src="https://github.com/peznauts/octahe.swift/raw/master/assets/octahe_logo.png" alt="Octahe" title="Octahe" />
</p>

[![License](https://img.shields.io/badge/license-GPL-blue.svg)](https://github.com/peznauts/swift-octahe/blob/master/LICENSE)
[![Twitter](https://img.shields.io/twitter/follow/Peznauts.svg?style=social)](https://twitter.com/intent/follow?screen_name=peznaut)

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

## Example `scripts`

The files within the `scripts` directory show how specific applications can be deployed,
grouped and deployed across a diverse infrastructure.

## Solutions

The `solutions` directory contains prebuilt deployment solutions which are
organized based on their intended purpose.

Simple "Hello world" type demonstration used in the Octahe introduction [twitch
stream](https://www.youtube.com/watch?v=_h1029bW8xs) can be found here:
`demo.Targetfile`.

#### `app-environment`

The `app-environment` directory contains solution Targetfiles which deploy
specific application runtime environments like, swift, nodejs, python, etc.

#### `applications`

The `applications` directory contains solution Targetfiles which deploy
specific applications, like ghost, wordpress, etc.

#### `kvm`

The `kvm` directory contains solution Targetfiles which interact with KVM
hypervisors.

#### `openstack`

The `openstack` directory contains solution Targetfiles which deploy Red Hat
OpenStack.

#### `services`

The `services` directory contains solution Targetfiles which deploy specific
services like, MariaDB, Nginx, Apache, etc.

#### `system`

The `system` directory contains solution Targetfiles which sets-up system
related components like, base packages, swap files, etc.
