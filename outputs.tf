output "endpoint_prod" {
  value = "${google_container_cluster.prod.endpoint}"
}

output "master_version_prod" {
  value = "${google_container_cluster.prod.master_version}"
}

output "endpoint_stage" {
  value = "${google_container_cluster.stage.endpoint}"
}

output "master_version_stage" {
  value = "${google_container_cluster.stage.master_version}"
}
