# TFA Bot

The [Factoid Authority Bot](https://git.factoid.org/TFA/TFA-Bot) provides monitoring 
and alerting of [Factom®](https://www.factomprotocol.org/) nodes.

## TL;DR;

```console
$ helm install tfa-bot
```

## Introduction

This chart bootstraps a tfa-bot deployment on a [Kubernetes](https://kubernetes.io) 
cluster using the [Helm](https://helm.sh) package manager.

## Prequisites

- Google Kubernetes Engine 1.11.5-gke.5+

## Installing the Chart

To install the chart with the release name `my-tfa-bot`:

```console
$ helm install --name my-tfa-bot tfa-bot
```

The command deploys tfa-bot on the Kubernetes cluster with the default configuration. 
The [configuration](#configuration) section lists the parameters that can be configured 
during installation.

> **Tip**: List all releases using `helm list`

## Uninstalling the Chart

To uninstall/delete the `tfa-bot` deployment:

```console
$ helm delete --purge `tfa-bot`
```

The command removes all the Kubernetes components associated with the chart and deletes 
the release.

## Configuration

The following table lists the configurable parameters of the tfa-bot chart and 
their default values.

| Parameter                          | Description                              | Default                    |
| ---------------------------------- | ---------------------------------------- | -------------------------- |
| `botUrl`                           | URL to config document (see below)       | `{}`                       |
| `deployment.replicas`              | desired number of tfa-bot replicas       | `1`                        |
| `deployment.restartPolicy`         | pod restart policy                       | `Always`                   |
| `docker.image`                     | docker image repository                  | `bedrocksolutions/tfa-bot` |
| `docker.imageTag`                  | docker image tag                         | `latest`                   |
| `docker.pullPolicy`                | docker image pull policy                 | `Always`                   |
| `resources.cpuLimit`               | container cpu limit                      | `100m`                     |
| `resources.cpuRequested`           | container cpu requested                  | `50m`                      |
| `resources.memoryLimit`            | container memory limit                   | `256Mi`                    |
| `resources.memoryRequested`        | container memory requested               | `96Mi`                     |

### Bot URL

The only required configuration is a URL to the Google Sheet configuration document.

| Configuration | Description                                                                                                                                    |
| ------------- | ---------------------------------------------------------------------------------------------------------------------------------------------- |
| `botUrl`      | URL to a [Google Sheet Configuration](https://docs.google.com/spreadsheets/d/19SLbCQLFKpkSaZ88SAmN_Mg8L8M-TkiB67TJD67lNQA/edit#gid=1278680573) |

## Example

Create a values override file with the URL to the configuration document:

```yaml
tfa-bot:
  config:
    botUrl: https://url.to.google.sheets.conf
```
