module "gke" {
  source             = "./modules/gke"
  project_id         = var.project_id
  region             = var.region
  gke_machine_type   = var.gke_machine_type
  gke_num_nodes      = var.gke_num_nodes
  vpc_name           = module.vpc.vpc_name
  subnet_name        = module.vpc.subnet_name
  cluster_range_name = module.vpc.cluster_range_name
  service_range_name = module.vpc.service_range_name
}

module "vpc" {
  source     = "./modules/vpc"
  project_id = var.project_id
  region     = var.region
}

module "db" {
  source      = "./modules/db"
  project_id  = var.project_id
  region      = var.region
  vpc_id      = module.vpc.vpc_id
  db_user     = var.db_user
  db_password = var.db_password
}
