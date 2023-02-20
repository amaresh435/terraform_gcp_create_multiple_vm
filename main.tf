resource "google_compute_network" "network" {
  name                    = "amar-my-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnetwork" {
  name          = "my-subnetwork"
  ip_cidr_range = "10.0.1.0/24"
  network       = google_compute_network.network.self_link
}

resource "google_compute_instance" "instance" {
  count        = 2
  name         = "amar-terraform-try-my-instance-${count.index}"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
    }
  }
   network_interface {
    network = google_compute_network.network.self_link
    subnetwork = google_compute_subnetwork.subnetwork.self_link
    access_config {
    }
  }
}
