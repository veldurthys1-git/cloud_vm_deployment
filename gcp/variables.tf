variable "project_id" {
  description = "GCP project ID"
}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-a"
}

variable "machine_type" {
  default = "e2-micro"
}

variable "image" {
  default = "debian-cloud/debian-11"
}

variable "ssh_public_key_path" {
  description = "Path to your public SSH key"
}
