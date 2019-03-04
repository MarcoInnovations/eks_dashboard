#!/bin/bash

# find kubeconfig
kc=$(ls ../desptop_private_vpc/output/kubeconfig*)
echo "Using kubeconfig: $kc"
echo""

# create admin user for dashboard
kubectl apply -f createAdminUser.yaml --kubeconfig=$kc

# create cluster-role for dashboard
kubectl apply -f assignRoleAdminUser.yaml --kubeconfig=$kc

