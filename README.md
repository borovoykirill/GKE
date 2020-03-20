### Kirill Baravoy
<br>
  <dt> Task #1: </dt><br>
  <dd> 1. Using Terrafrom create Manages Zone {{ StudentShortName }}.playpit.net, send details to Siarhei Beliakou </dd>
  <dd> 2. Deploy Nginx Ingress Controller into GCP K8S Service (Prod or Stage you created with Terraform)

      - https://github.com/kubernetes/ingress-nginx/blob/master/docs/deploy/index.md

  Create wildcard A record .{{ StudentShortName }}.playpit.net to Nginx Ingress Controller SVC LoadBalancer IP </dd>
  <dd> 3. Create Ingress for front-end sverce: socks-shop.{{ StudentShortName }}.playpit.net </dd>
  <dd> 4. Create a report and send to siarhei_beliakou@epam.com </dd>
<br>
<br>

**DNS records:** <br>
![alt text](https://github.com/borovoykirill/GKE/blob/final_day/img/GCP-DNS.png "DNS records")
<br>
<br>

**Connected to socks-shop use DNS:** <br>
![alt text](https://github.com/borovoykirill/GKE/blob/final_day/img/socks-shop_dns.png "Access shop via DNS name")
<br>
<br>
<dt> Task #2: </dt><br>
<dd> 1. Using GCP StorageClass, create PV/PVC for MySQL (mysql:8.0.18)

    - https://cloud.google.com/kubernetes-engine/docs/concepts/persistent-volumes

    - https://cloud.google.com/kubernetes-engine/docs/concepts/persistent-volumes#dynamic_provisioning </dd>
<br>

**Connected to MySQL** <br>
![alt text](https://github.com/borovoykirill/GKE/blob/final_day/img/db_2.png "MySQL")
<br>
<br>
<dt> Task #3: </dt><br>
<dd> 1. Spin Up 2 VMs in GCP </dd>
<dd> 2. Install Docker:

    - https://docs.docker.com/install/
<dd> 3. Using kubeadm install K8s cluster on these VMs:

    - https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/
    - https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/
    - https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/#join-nodes </dd>
<dd>4. Choose One of Pod Network Drivers (Flannel or Weave)\

    - https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/#pod-network</dd>
<br>

**K8s cluster** <br>
![alt text](https://github.com/borovoykirill/GKE/blob/final_day/img/kub_cluster.png "K8s")
