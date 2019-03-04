# DASHBOARD for AWS-EKS
### part of Kentrikos 'terraform-aws-eks' repo

add this repo under the 'example' folder of above mentioned repo.  then follow easy steps to add a dashboard to your roll out:


## Install Dashboard
#### make sure that you point to the proper kubeconfig file.  
if installed as a sub of examples, you can get the kubeconfig file with this:
#### find kubeconfig
> kc=$(ls ../desptop_private_vpc/output/kubeconfig*)  

> echo "Using kubeconfig: $kc"  
 
> echo""  
 

1) create admin user for dashboard   
   
> kubectl apply -f createAdminUser.yaml --kubeconfig=$kc

2) create cluster-role for dashboard   
   
> kubectl apply -f assignRoleAdminUser.yaml --kubeconfig=$kc

3) Install deprecated HEAPSTER as 'METRICS' server is not yet supported   
   
> kubectl apply -f https://raw.githubusercontent.com/kubernetes/heapster/master/deploy/kube-config/influxdb/heapster.yaml --kubeconfig=$kc

4) Then install the dashboard   
   
> kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v1.10.1/src/deploy/recommended/kubernetes-dashboard.yaml --kubeconfig=$kc

## Run / Connect to dashboard:
5) run proxy local:  
   
> kubectl proxy --kubeconfig=$kc

6) URL for local browser:   
   
> http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/#!/overview?namespace=default

