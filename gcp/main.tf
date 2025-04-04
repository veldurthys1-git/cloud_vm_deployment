provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-vm"
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"

    access_config {
    }
  }

  tags = ["ssh"]

  metadata = {
    ssh-keys = "user:${file(var.ssh_public_key_path)}"
  }
}

resource "google_compute_firewall" "default" {
  name    = "allow-ssh"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["ssh"]
}
