resource "google_compute_network" "vpc" {
  name                    = "${var.project_id}-vpc"
  auto_create_subnetworks = "false"
}

resource "google_compute_subnetwork" "subnet" {
  name          = "${var.project_id}-subnet"
  region        = var.region
  network       = google_compute_network.vpc.name
  ip_cidr_range = "10.255.0.0/16"

  # Create VPC-Native GKE cluster, so that connections
  # to the cloud services can be remain private.
  secondary_ip_range {
    range_name    = "cluster-secondary-range"
    ip_cidr_range = "10.0.0.0/12"
  }

  secondary_ip_range {
    range_name    = "services-secondary-range"
    ip_cidr_range = "10.64.0.0/12"
  }
}
