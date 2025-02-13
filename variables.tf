# environment variables
variable "region" {}
variable "project_name" {}
variable "environment" {}

variable "vpc_cidr_block" {}

# Public Subnet variables
variable "public_subnet_az1_cidr_block" {}
variable "public_subnet_az2_cidr_block" {}

# Private Subnet variables
variable "private_app_subnet_az1_cidr_block" {}
variable "private_app_subnet_az2_cidr_block" {}
variable "private_data_subnet_az1_cidr_block" {}
variable "private_data_subnet_az2_cidr_block" {}

# security group variables
variable "ssh_ip" {}

# RDS variables
variable "database_snapshot_identifier" {}
variable "database_instance_class" {}
variable "database_instance_identifier" {}
variable "multi_az_deployment" {}

# acm variables
variable "domain_name" {}
variable "alternative_names" {}

# alb variables
variable "target_type" {}

# s3 variables
variable "env_file_bucket_name" {}
variable "env_file_name" {}

# ecs variables
variable "architecture" {}
variable "container_image" {}

# route53 variables
variable "record_name" {}
