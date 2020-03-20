provider "google" {
  credentials = "${file("dev-001-project-955a035bd555.json")}"
  project     = "${var.project}"
  region      = "us-central1"
}

resource "google_container_cluster" "prod" {
  name        = "${var.name}"
  project     = "${var.project}"
  description = "Prod Cluster"
  location    = "${var.location}"

  remove_default_node_pool = true
  initial_node_count       = "${var.initial_node_count}"

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }
}

resource "google_container_node_pool" "prod" {
  name       = "${var.name}-node-pool"
  project    = "${var.project}"
  location   = "${var.location}"
  cluster    = "${google_container_cluster.prod.name}"
  node_count = 3

  depends_on = ["google_container_cluster.prod"]

  node_config {
    preemptible  = true
    machine_type = "${var.machine_type}"

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}

resource "google_container_cluster" "stage" {
  name        = "${var.name2}"
  project     = "${var.project2}"
  description = "Stage Cluster"
  location    = "${var.location2}"

  remove_default_node_pool = true
  initial_node_count       = "${var.initial_node_count2}"

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }
}

resource "google_container_node_pool" "stage" {
  name       = "${var.name2}-node-pool"
  project    = "${var.project2}"
  location   = "${var.location2}"
  cluster    = "stage"
  node_count = 1

  depends_on = ["google_container_cluster.stage"]

  node_config {
    preemptible  = true
    machine_type = "${var.machine_type2}"

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}

resource "google_dns_managed_zone" "kbaravoy-zone" {
  name       = "kbaravoy-zone"
  dns_name   = "kbaravoy.playpit.net."
  visibility = "public"
}
