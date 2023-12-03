#! /bin/bash

kind create cluster --config KinD.config.yaml && \
kind apply-image docker dolphm/network-tools && \
kind apply-image docker hello-world:latest && \
kubectl config current-context && \
kubectl cluster-info && \
kubectl run hello-world --restart=Never --image=hello-world:latest && \
sleep 10 && \
kubectl logs hello-world && \
kubectl apply -f cronjob.yaml