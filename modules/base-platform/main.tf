resource "google_compute_network" "base_vpc" {
  name = "${var.vpc_name}-${var.environment}"
  project = var.project
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "base_subnet" {
  name = "${var.subnet_name}-${var.environment}"
  network = google_compute_network.base_vpc.name
  project = var.project
  region = var.region
  ip_cidr_range = var.cidr_range
}