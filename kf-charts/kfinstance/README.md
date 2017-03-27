# KFinstance Helm Chart

KFinstance server, worker and mongo chart for deployment with helm

## Chart details
This chart will do the following:
1) will add a KFServer deployment
    * with 2 replicas as default
    * will spawn a service for the deployment so it can be further used by traefik
2) will add a KFWorker deployment
    * with 2 replicas as default
    * will process jobs from the corresponding KFserver only and from KFTM (@todo)
3) will add a Mongo deployment and service configured to accept connections from KFWorker pods


## Installing the chart

To install the chart with the release name `my release`:

```bash
$ helm install --name my-release .
```