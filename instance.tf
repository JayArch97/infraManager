resource "google_compute_instance" "terraform" {
  project      = "acostajulio-dev"
  name         = "terraform3"
  machine_type = var.instance_type
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}
