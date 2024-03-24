module "base_platform" {
  source      = "../../modules/base-platform"
  project     = var.project
  region      = var.region
  vpc_name    = var.vpc_name
  subnet_name = var.subnet_name
  cidr_range  = var.cidr_range
  environment = var.environment
}

module "apache_web_server" {
  source = "../../modules/apache-server"
  project = var.project
  machine_type = var.machine_type
  environment = var.environment
  apache_web_subnet_name = module.base_platform.subnet_name
}
