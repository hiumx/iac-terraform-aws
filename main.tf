terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "networking" {
  source = "./modules/networking"
  region = var.region
  cidr_block = var.cidr_block
  public_subnet_ips = var.public_subnet_ips
  private_subnet_ips = var.private_subnet_ips
  availability_zone_1 = var.availability_zone_1
  availability_zone_2 = var.availability_zone_2
}

module "security" {
  source = "./modules/security"
  region = var.region
  vpc_id = module.networking.vpc_id
}

resource "aws_key_pair" "test_module_keypair" {
  key_name = "test-module.keypair"
  public_key = file(var.key_pair_path)
}

module "compute" {
  source = "./modules/compute"
  region = var.region
  ami = var.amis[var.region]
  instance_type = var.instance_type
  key_name = aws_key_pair.test_module_keypair.key_name
  security_group_ids = [module.security.public_security_group_id]
  subnet_id = module.networking.public_subnet_ids[0]
}