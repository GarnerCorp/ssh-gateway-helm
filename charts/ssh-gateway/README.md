# ssh-gateway

## SSH

SSH (Secure SHell) can be used to create tunnels between computers

## TL;DR

```console
$ helm repo add ssh-gateway https://garnercorp.github.io/ssh-gateway-helm/
$ helm install my-release ssh-gateway/ssh-gateway
```

## Introduction

This chart bootstraps an SSH deployment on a [Kubernetes](https://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Prerequisites

- Kubernetes 1.12+
- Helm 3.0-beta3+

## Installing the Chart

To install the chart with the release name `my-release`:

```console
$ helm repo add ssh-gateway https://garnercorp.github.io/ssh-gateway-helm/
$ helm install my-release ssh-gateway/ssh-gateway
```

These commands deploy an ssh pod on the Kubernetes cluster in the default configuration. The [Parameters](#parameters) section lists the parameters that can be configured during installation.

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![AppVersion: 0.0.1](https://img.shields.io/badge/AppVersion-0.0.1-informational?style=flat-square)

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionalLabels | object | `{}` | Extra labels for your something |
| app | string | `nil` | Name for your app |
| containerPort | string | `nil` | Port number for port forward |
| containerPortName | string | `nil` | Name for exposed port forward |
| deployment.annotations | string | `nil` | Deployment annotations |
| deployment.podAnnotations | string | `nil` | Pod annotations |
| destination | string | `nil` | Remote host to which ssh should connect |
| fullnameOverride | string | `nil` | Chart name override |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.pullSecrets | object | `{}` | Specify docker-registry secret names as an array |
| image.registry | string | `"docker.io"` | Image registry |
| image.repository | string | `"garner-ssh-gateway"` | Image name |
| image.tag | string | `"0.0.1"` | Image tag |
| nameOverride | string | `nil` | String to partially override common.names.fullname template with a string (will prepend the release name) |
| selectorLabels | object | `{}` | Extra selectors for your something |
| server.hostname | string | `"127.0.0.1"` | Hostname reachable from destination containing service to forward |
| server.port | string | `nil` | Port of service being forwarded |
| service.annotations | string | `nil` | Annotations service |
| serviceAccount.create | bool | `true` | Whether/or not to create a service account |
| sshConfig | string | `nil` | SSH config (.ssh/config) |
| sshKey | string | `nil` | SSH key (.ssh/id_rsa) |
| sshKnownHosts | string | `nil` | SSH known hosts (.ssh/known_hosts) |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.5.0](https://github.com/norwoodj/helm-docs/releases/v1.5.0)
