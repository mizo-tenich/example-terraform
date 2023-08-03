output "alb_arn" {
  description = "The ARN of the ALB"
  value       = aws_lb.test.arn
}

output "alb_dns_name" {
  description = "The DNS name of the ALB"
  value       = aws_lb.test.dns_name
}
