<p align="center">
<img src="https://github.com/peznauts/octahe.swift/raw/master/assets/octahe_logo.png" alt="Octahe" title="Octahe" />
</p>

[![License](https://img.shields.io/badge/license-GPL-blue.svg)](https://github.com/peznauts/swift-octahe/blob/master/LICENSE)
[![Twitter](https://img.shields.io/twitter/follow/Peznaut.svg?style=social)](https://twitter.com/intent/follow?screen_name=peznaut)

# (O)ctahe Demo application

This simple repo shows how Octahe could be used to deploy a simple application to 4 targets.

### Overview

* `Targetfile` used to augment an application deployment.
* Targets are virtual machines running under KVM
* Application being deployed is a simple python web server.

### How to run this demo

* Create the VMs

``` shell
for i in {1..5}; do
  octahe deploy Targetfile.create.vm Targetfile.to.server -a NUM=${i}
done
```

* Deploy the application

``` shell
octahe deploy Containerfile Targetfile.to.vm
```

* Undeploy the application

``` shell
octahe undeploy Containerfile Targetfile.to.vm
```
