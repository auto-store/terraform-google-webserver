output "public-ip" {
  value = google_compute_address.vm_public_ip.address 
}
