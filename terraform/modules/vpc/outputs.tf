output "vpc_name" {
  value = google_compute_network.vpc.name
}

output "subnet_name" {
  value = google_compute_subnetwork.subnet.name
}

output "vpc_id" {
  value = google_compute_network.vpc.id
}

output "service_range_name" {
  value = google_compute_subnetwork.subnet.secondary_ip_range.1.range_name
}

output "cluster_range_name" {
  value = google_compute_subnetwork.subnet.secondary_ip_range.0.range_name
}
