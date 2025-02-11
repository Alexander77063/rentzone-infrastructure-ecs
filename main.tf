locals {
  region       = var.region
  project_name = var.project_name
  environment  = var.environment
}

# create vpc module
module "vpc" {
  source                             = "git@github.com:Alexander77063/terraform-modules.git//vpc"
  region                             = local.region
  project_name                       = local.project_name
  environment                        = local.environment
  vpc_cidr_block                     = var.vpc_cidr_block
  public_subnet_az1_cidr_block       = var.public_subnet_az1_cidr_block
  public_subnet_az2_cidr_block       = var.public_subnet_az2_cidr_block
  private_app_subnet_az1_cidr_block  = var.private_app_subnet_az1_cidr_block
  private_app_subnet_az2_cidr_block  = var.private_app_subnet_az2_cidr_block
  private_data_subnet_az1_cidr_block = var.private_data_subnet_az1_cidr_block
  private_data_subnet_az2_cidr_block = var.private_data_subnet_az2_cidr_block
}

# create nat-gateway module
module "nat_gateway" {
  source                     = "git@github.com:Alexander77063/terraform-modules.git//nat-gateway"
  project_name               = local.project_name
  environment                = local.environment
  public_subnet_az1_id       = module.vpc.public_subnet_az1_id
  internet_gateway           = module.vpc.internet_gateway
  public_subnet_az2_id       = module.vpc.public_subnet_az2_id
  vpc_id                     = module.vpc.vpc_id
  private_app_subnet_az1_id  = module.vpc.private_app_subnet_az1_id
  private_data_subnet_az1_id = module.vpc.private_data_subnet_az1_id
  private_app_subnet_az2_id  = module.vpc.private_app_subnet_az2_id
  private_data_subnet_az2_id = module.vpc.private_data_subnet_az2_id
}
