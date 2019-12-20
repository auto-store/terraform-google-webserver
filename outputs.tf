output "public-ip" {
  value = google_compute_instance.webserver.address
}
