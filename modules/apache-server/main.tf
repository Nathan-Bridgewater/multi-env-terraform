data "google_compute_image" "debian_image" {
  project = var.project
  family = "debian"
}

resource "google_compute_address" "apache_server_ip" {
  name = "apache-web-ip-${var.environment}"
}

resource "google_compute_instance" "apache_server" {
  name = "apace-server-${var.environment}"
  machine_type = var.machine_type

  network_interface {
    subnetwork = var.apache_web_subnet_name
    access_config {
      nat_ip = google_compute_address.apache_server_ip.address
    }
  }

  boot_disk {
    initialize_params {
      image = data.google_compute_image.debian_image
    }
  }
}