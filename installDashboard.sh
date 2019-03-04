#!/bin/bash

# Add dashboard

# find kubeconfig
kc=$(ls ../desptop_private_vpc/output/kubeconfig*)
echo "Using kubeconfig: $kc"
echo""

# Then install deprecated HEAPSTER as 'METRICS' server is not yet supported
kubectl apply -f https://raw.githubusercontent.com/kubernetes/heapster/master/deploy/kube-config/influxdb/heapster.yaml --kubeconfig=$kc

# Then install the dashboard
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v1.10.1/src/deploy/recommended/kubernetes-dashboard.yaml --kubeconfig=$kc


## Check logs of dashboard:
#kubectl --kubeconfig=$kc log kubernetes-dashboard-xxxxxxxxxx-xxxxx --namespace=kube-system
#kubectl  log kubernetes-dashboard-xxxxxxxxxx-xxxxx --namespace=kube-system
