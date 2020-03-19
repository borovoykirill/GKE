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

##### 1.
##### Create 2 clusters on GCP (Prod: 1 master, 3 workers, Stage: 1 master, 1 worker).
![alt text](https://github.com/borovoykirill/GKE/blob/master/img/kube_engine.png "GKE Clusters")


##### Nodes on prod cluster.
![alt text](https://github.com/borovoykirill/GKE/blob/master/img/prod_node_role.png "Prod cluster's nodes")

##### Nodes on stage cluster.
![alt text](https://github.com/borovoykirill/GKE/blob/master/img/prod_node_role.png "Stage cluster's nodes")

##### Сommand output - kubectl cluster-info
![alt text](https://github.com/borovoykirill/GKE/blob/master/img/prod_cluster_info.png "Prod cluster-info")
![alt text](https://github.com/borovoykirill/GKE/blob/master/img/stage_cluster_info.png "Stage cluster-info")

##### 2.
##### To access, I used the command on the local machine:
For prod cluster: $ gcloud container clusters get-credentials prod --zone us-central1-c --project dev-001-project <br>
<br>
For stage cluster: $ gcloud container clusters get-credentials stage --zone us-central1-c --project dev-001-project<br>

##### Home task: Monitoring JAVA VM

###### Create 2 host for monitoring. Tomcat via JMX and JAVA via JMX:
![alt text](https://github.com/borovoykirill/DevOps-Lab/blob/Zabbix-day2/img/jmxtomcat.png "Tomcat and JAVA via JMX")

###### Tomcat latest data:
![alt text](https://github.com/borovoykirill/DevOps-Lab/blob/Zabbix-day2/img/data_tomcat.png "Tomcat latest data")

###### JAVA latest data:
![alt text](https://github.com/borovoykirill/DevOps-Lab/blob/Zabbix-day2/img/data_jmx.png "JAVA latest data")

##### Home task: Create host via Zabbix API

##### Access to the server by API on the bash:
![alt text](https://github.com/borovoykirill/DevOps-Lab/blob/Zabbix-day2/img/API.png "API")

##### Host has been created via API:
![alt text](https://github.com/borovoykirill/DevOps-Lab/blob/Zabbix-day2/img/hostcreated.png "Host has created")
