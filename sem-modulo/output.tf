output "ip_publico" {
  value       = google_compute_instance.caffine_app.network_interface.0.access_config.0.nat_ip
  description = "IP público da VM"
}
