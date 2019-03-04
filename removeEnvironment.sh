#!/bin/bash

# Remove cluster-role for dashboard
kubectl delete -f assignRoleAdminUser.yaml --kubeconfig=../ec2_node_private_vpc/output/kubeconfig_mrt-ec2-011

# Remove admin user for dashboard
kubectl delete -f createAdminUser.yaml --kubeconfig=../ec2_node_private_vpc/output/kubeconfig_mrt-ec2-011
