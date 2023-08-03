output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "subnet_id" {
  description = "ID of the subnet"
  value       = module.vpc.subnet_id
}

output "alb_dns_name" {
  description = "DNS name of the ALB"
  value       = module.alb.alb_dns_name
}

output "db_endpoint" {
  description = "Endpoint of the RDS instance"
  value       = module.rds.db_endpoint
}

output "route53_zone_id" {
  description = "ID of the Route53 zone"
  value       = module.route53.zone_id
}
