resource "google_compute_network" "public" {
  name = var.vpc
}


resource "google_compute_firewall" "public" {
  name    = google_compute_network.public.name
  network = google_compute_network.public.name

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "443"]
  }
  
  source_ranges = ["0.0.0.0/0"]
  source_tags = ["http-server"]
}


resource "google_compute_instance" "GCEserver" {
  project      = var.project
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone
  
  allow_stopping_for_update = true 

  boot_disk {
    initialize_params {
      image = var.boot_image
    }
  }

  network_interface {
    network = google_compute_network.public.name
    access_config {
    
    }
  }
}

