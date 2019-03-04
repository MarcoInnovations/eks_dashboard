# Add dashboard

# find kubeconfig
kc=$(ls ../desptop_private_vpc/output/kubeconfig*)
echo "Using kubeconfig: $kc"
echo""

# Then install deprecated HEAPSTER as 'METRICS' server is not yet supported
kubectl apply -f https://raw.githubusercontent.com/kubernetes/heapster/master/deploy/kube-config/influxdb/heapster.yaml --kubeconfig=$kc
#kubectl apply -f https://raw.githubusercontent.com/kubernetes/heapster/master/deploy/kube-config/influxdb/heapster.yaml --kubeconfig=../desktop_private_vpc/output/kubeconfig_mrt61

# Then install the dashboard
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v1.10.1/src/deploy/recommended/kubernetes-dashboard.yaml --kubeconfig=$kc
#kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v1.10.1/src/deploy/recommended/kubernetes-dashboard.yaml --kubeconfig=../desktop_private_vpc/output/kubeconfig_mrt61

## Check logs of dashboard:
#kubectl --kubeconfig=$kc log kubernetes-dashboard-669f9bbd46-slx2w --namespace=kube-system
#kubectl  log kubernetes-dashboard-669f9bbd46-slx2w --namespace=kube-system
