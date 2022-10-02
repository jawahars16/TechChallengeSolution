variable "project_id" {
  type        = string
  description = "The project ID to deploy to"
}

variable "region" {
  type        = string
  description = "The region to deploy to"
}

#=========GKE Variables================

variable "gke_machine_type" {
  type        = string
  description = "The machine type to use for the GKE nodes"
}

variable "gke_num_nodes" {
  type        = number
  description = "The number of nodes to use for the GKE cluster"
}

#=========DB Variables================

variable "db_user" {
  type        = string
  description = "The database user"
}

variable "db_password" {
  type        = string
  description = "The database password"
}
