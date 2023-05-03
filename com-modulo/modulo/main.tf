resource "google_compute_instance" "caffine_app" {
  name         = var.app_name
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = var.network_type

    access_config {}
  }

  # Tags de rede a serem anexadas à instância
  tags = ["web"]
}

resource "google_compute_firewall" "caffine_app" {
  name        = var.app_name
  network     = var.network_type
  description = "Aplicativo web"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["web"]
}
