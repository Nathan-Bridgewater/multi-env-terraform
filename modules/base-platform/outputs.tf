output "vpc_name" {
  value = google_compute_network.base_vpc.name
}

output "subnet_name" {
  value = google_compute_subnetwork.base_subnet.name
}