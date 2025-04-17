variable "instance_type" {
  type = string
}

variable "project_id"{
  type = string
}

resource "google_compute_instance" "terraform" {
  project      = var.project_id
  name         = "terraform"
  machine_type = var.instance_type
  zone         = "us-central1-b"

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
