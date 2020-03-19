# GKE
Cluster orchestration with GKE


### Kirill Baravoy

  <dt>Homework Requirements:</dt><br>
  <dd> 1. Using Terraform create 2 K8s clusters on CGP (Prod: 1 master, 3 workers, Stage: 1 master, 1 worker) </dd>
  <dd> 2. Configure client access from workstation</dd>
  <dd> 3. Deploy microservice application stack: https://microservices-demo.github.io/ </dd>
  <dd> 4. Create a report and send to siarhei_beliakou@epam.com </dd>
<br>

### Report

##### 1). Create GKE.
##### Create 2 clusters on GCP (Prod: 1 master, 3 workers, Stage: 1 master, 1 worker).
![alt text](https://github.com/borovoykirill/GKE/blob/master/img/kube_engine.png "GKE Clusters")


##### Nodes on prod cluster:
![alt text](https://github.com/borovoykirill/GKE/blob/master/img/prod_node_role.png "Prod cluster's nodes")

##### Nodes on stage cluster:
![alt text](https://github.com/borovoykirill/GKE/blob/master/img/prod_node_role.png "Stage cluster's nodes")

##### Сommand output - kubectl cluster-info:
![alt text](https://github.com/borovoykirill/GKE/blob/master/img/prod_cluster_info.png "Prod cluster-info")
![alt text](https://github.com/borovoykirill/GKE/blob/master/img/stage_cluster_info.png "Stage cluster-info")

>N.B. The role the master performs from google cloud.

##### 2). Access to cluster.
##### To access, I used the command on the local machine:
>For prod cluster:
*$ gcloud container clusters get-credentials prod --zone us-central1-c --project dev-001-project <br>
<br>*
For stage cluster:
*$ gcloud container clusters get-credentials stage --zone us-central1-c --project dev-001-project<br>*

##### 3). Deploy microservices: Shop-socks
![alt text](https://github.com/borovoykirill/GKE/blob/master/img/shop_socks.png "Shop-socks")
<dt>Deploy "shop-socks":</dt><br>
<dd> 1. Apply deploy: $ kubectl apply -f complete-demo.yaml </dd>
<dd> 2. Add FW rule: $ gcloud compute firewall-rules create node-port --allow tcp:30001 </dd>
<dd> 3. Use follow command to discover external IP for service: $ kubectl get -n sock-shop svc front-end </dd>
<dd> 5. Connect to shop-sock via external-ip. </dd>

>N.B. In complete-demo.yaml I change for svc front-end Type: NodePort to Type: LoadBalancer.

##### 3). Deploy microservices: Weave Scope
![alt text](https://github.com/borovoykirill/GKE/blob/master/img/weavescope.png "Weave Scope")
<dt>Deploy "Weave Scope":</dt><br>
<dd> 1. Grant permissions for the installation with: $ kubectl create clusterrolebinding "cluster-admin-$(whoami)" --clusterrole=cluster-admin --user="$(gcloud config get-value core/account)"</dd>
<dd> 2. To install Weave Scope on  Kubernetes cluster, run: $ kubectl apply -f "https://cloud.weave.works/k8s/scope.yaml?k8s-version=$(kubectl version | base64 | tr -d '\n')" </dd>
<dd> 3. Open Scope in browser: $ kubectl port-forward -n weave "$(kubectl get -n weave pod --selector=weave-scope-component=app -o jsonpath='{.items..metadata.name}')" 4040 </dd>
<dd> 4. Connect to http://localhost:4040. </dd>
<br>
