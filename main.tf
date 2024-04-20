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

resource "aws_key_pair" "test_module_keypair" {
  key_name = "test-module.keypair"
  public_key = file(var.key_pair_path)
}

module "security" {
  source = "./modules/security"
  region = var.region
}

module "compute" {
  source = "./modules/compute"
  region = var.region
  ami = var.amis[var.region]
  instance_type = var.instance_type
  key_name = aws_key_pair.test_module_keypair.key_name
  security_group_ids = [module.security.public_security_group_id]
}
