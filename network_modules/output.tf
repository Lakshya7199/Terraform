output "my_vpc_id" {
  value = google_compute_network.network.self_link
}

output "my_subnet_id" {
  value = google_compute_subnetwork.subnetwork.self_link
}