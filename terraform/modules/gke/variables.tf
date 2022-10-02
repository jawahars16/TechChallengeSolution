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

#=========VPC Variables================

variable "vpc_name" {
  type        = string
  description = "The name of the VPC to use"
}

variable "subnet_name" {
  type        = string
  description = "The name of the subnet to use"
}

variable "service_range_name" {
  type        = string
  description = "The name of the service range to use"
}

variable "cluster_range_name" {
  type        = string
  description = "The name of the cluster range to use"
}
