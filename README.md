# SSH Gateway Helm
This repository contains a helm chart for running ssh for tunneling.

## Using the Chart
The chart can be added as a dependency to other charts by adding this to your `Chart.yaml`:

```
dependencies:
- name: ssh-gateway
  version: x.x.x
  repository: https://garnercorp.github.io/ssh-gateway-helm/
```

## Images

To build an image for this repository, you'll need to fork the repository and define at least:

* `secrets.CONTAINER_REGISTRY`, e.g. _region_-docker.pkg.dev
* `secrets.ARTIFACT_REPOSITORY_1`, e.g. _region_-docker.pkg.dev/_google-cloud-project_/_repository-name_
* `secrets.PROJECT_ID`, e.g. _google-cloud-project_/_another-repository-name_

## Updating the Chart
1. Make changes to the chart
1. Bump the version in Chart.yaml
1. Commit to main. The chart should be released to the [gh-pages branch][gh-pages-branch], in the [helm repository][helm-repo].

## Force a Release
:warning: Only those with direct write access to this repo will be able to force a release.

:warning: You will need to make sure you have updated the chart version to a new version that hasn't been released yet before running this. It will package your local changes, so make sure they are merged to main before running.

1. Install [chart-releaser](https://github.com/helm/chart-releaser#installation)
1. Get a GitHub Personal Access Token with repo scope
1. Run:
    ```
    ./scripts/release-chart.sh $GITHUB_PAT
    ```
1. The chart should be released to the [gh-pages branch][gh-pages-branch], in the [helm repository][helm-repo].

[gh-pages-branch]: https://github.com/GarnerCorp/ssh-gateway-helm/tree/gh-pages
[helm-repo]: https://garnercorp.github.io/ssh-gateway-helm/
