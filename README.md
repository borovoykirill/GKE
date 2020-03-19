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

##### 1).
##### Create 2 clusters on GCP (Prod: 1 master, 3 workers, Stage: 1 master, 1 worker).
![alt text](https://github.com/borovoykirill/GKE/blob/master/img/kube_engine.png "GKE Clusters")


##### Nodes on prod cluster:
![alt text](https://github.com/borovoykirill/GKE/blob/master/img/prod_node_role.png "Prod cluster's nodes")

##### Nodes on stage cluster:
![alt text](https://github.com/borovoykirill/GKE/blob/master/img/prod_node_role.png "Stage cluster's nodes")

##### Сommand output - kubectl cluster-info:
![alt text](https://github.com/borovoykirill/GKE/blob/master/img/prod_cluster_info.png "Prod cluster-info")
![alt text](https://github.com/borovoykirill/GKE/blob/master/img/stage_cluster_info.png "Stage cluster-info")

N.B. The role the master performs micro service from google cloud.

##### 2).
##### To access, I used the command on the local machine:
For prod cluster: $ gcloud container clusters get-credentials prod --zone us-central1-c --project dev-001-project <br>
<br>
For stage cluster: $ gcloud container clusters get-credentials stage --zone us-central1-c --project dev-001-project<br>

##### 3).
![alt text](https://github.com/borovoykirill/GKE/blob/master/img/stage_cluster_info.png "Stage cluster-info")
<dt>Deploy "shop-sock":</dt><br>
<dd> 1. Download on my local machine deployment file - complete-demo.yaml </dd>
<dd> 2. Apply deploy: $ kubectl apply -f complete-demo.yaml </dd>
<dd> 3. Add FW rule: $ gcloud compute firewall-rules create node-port --allow tcp:30001 </dd>
<dd> 4. Describe front-end services. </dd>
<dd> 5. Connect to shop-sock via <ip-clsuter>:30001. </dd>
<br>
