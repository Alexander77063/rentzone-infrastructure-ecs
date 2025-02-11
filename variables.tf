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