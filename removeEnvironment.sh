#!/bin/bash

# find kubeconfig
kc=$(ls ../desptop_private_vpc/output/kubeconfig*)
echo "Using kubeconfig: $kc"
echo""

# Remove cluster-role for dashboard
kubectl delete -f assignRoleAdminUser.yaml --kubeconfig=$kc

# Remove admin user for dashboard
kubectl delete -f createAdminUser.yaml --kubeconfig=$kc
