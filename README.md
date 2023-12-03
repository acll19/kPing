# kPing

A simple Kubernetes cronjob that pings cURLs an endpoint periodically (every 30 seconds by default)

## Requirements

- Linux (tested on Ubuntu 22.04)
- [Kind](https://kind.sigs.k8s.io/docs/user/quick-start/) v0.20.0 go1.20.4 linux/amd64
- [Docker](https://www.docker.com/) version 24.0.7, build afdd53b

## Setup

Run the following script

```bash
./setup.sh
```

## Check the logs

Run the following commands. Keep in mind that the cronjob may have more than one cointainer in case it runs the command less than a minute.

```bash
# List cronjobs
kubectl get pods

# Show logs
kubectl logs <podname> -c ping-no-delay
kubectl logs <podname> -c ping-30-sec-delay
```

## Clean up

Run the following command

```bash
kind delete cluster --name kping-runtime
```