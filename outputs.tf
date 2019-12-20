output "public-ip" {
  value = "${google_compute_instance.GCEserver.network_interface.0.access_config.0.nat_ip}"
}
