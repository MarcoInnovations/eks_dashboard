#!/bin/bash

# find kubeconfig
kc=$(ls ../desptop_private_vpc/output/kubeconfig*)
echo "Using kubeconfig: $kc"
echo""

# Remove dashboard
kubectl delete -f https://raw.githubusercontent.com/kubernetes/dashboard/v1.10.1/src/deploy/recommended/kubernetes-dashboard.yaml --kubeconfig=$kc

# Remove deprecated HEAPSTER as 'METRICS' server is not yet supported
kubectl delete -f https://raw.githubusercontent.com/kubernetes/heapster/master/deploy/kube-config/influxdb/heapster.yaml --kubeconfig=$kc



## Check logs of dashboard:
#kubectl --kubeconfig=$kc log kubernetes-dashboard-xxxxxxxxxx-xxxxx --namespace=kube-system
