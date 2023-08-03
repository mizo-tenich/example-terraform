output "route53_zone_id" {
  description = "The ID of the Route53 zone"
  value       = aws_route53_zone.main.zone_id
}

output "route53_record_fqdn" {
  description = "The FQDN of the Route53 record"
  value       = aws_route53_record.www.fqdn
}
