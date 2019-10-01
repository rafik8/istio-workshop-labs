#!/usr/bin/env bash

kubectl apply -f <(istioctl kube-inject -f $WORKSHOP_HOME/istio-workshop-labs/hispter-app.yaml)

kubectl apply -f $WORKSHOP_HOME/istio-workshop-labs/loadgenerator.yaml




kubectl apply -f <(istioctl kube-inject -f $WORKSHOP_HOME/istio-workshop-labs/kubernetes-manifests.yaml)


kubectl delete -f $WORKSHOP_HOME/istio-workshop-labs/loadgenerator.yaml


kubectl delete -f <(istioctl kube-inject -f $WORKSHOP_HOME/istio-workshop-labs/hispter-app.yaml)
