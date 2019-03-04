# Remove dashboard
kubectl delete -f https://raw.githubusercontent.com/kubernetes/dashboard/v1.10.1/src/deploy/recommended/kubernetes-dashboard.yaml --kubeconfig=../ec2_node_private_vpc/output/kubeconfig_mrt-ec2-011

# Remove deprecated HEAPSTER as 'METRICS' server is not yet supported
kubectl delete -f https://raw.githubusercontent.com/kubernetes/heapster/master/deploy/kube-config/influxdb/heapster.yaml --kubeconfig=../ec2_node_private_vpc/output/kubeconfig_mrt-ec2-011



## Check logs of dashboard:
#kubectl --kubeconfig=../ec2_node_private_vpc/output/kubeconfig_mrt-ec2-011 log kubernetes-dashboard-669f9bbd46-slx2w --namespace=kube-system
