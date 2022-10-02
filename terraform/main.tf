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
