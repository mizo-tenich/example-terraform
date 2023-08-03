provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "./modules/vpc"
  cidr_block = var.vpc_cidr_block
  subnet_cidr_block = var.subnet_cidr_block
}

module "alb" {
  source = "./modules/alb"
  subnet_id = module.vpc.subnet_id
  security_group = var.security_group
}

module "ecs" {
  source = "./modules/ecs"
}

module "rds" {
  source = "./modules/rds"
  db_username = var.db_username
  db_password = var.db_password
}

module "route53" {
  source = "./modules/route53"
  domain_name = var.domain_name
  alb_dns_name = module.alb.alb_dns_name
  alb_zone_id = module.alb.alb_arn
}
