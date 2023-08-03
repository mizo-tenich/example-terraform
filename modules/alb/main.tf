resource "aws_lb" "test" {
  name               = "test-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.security_group]
  subnets            = [var.subnet_id]
}

output "alb_arn" {
  value = aws_lb.test.arn
}

output "alb_dns_name" {
  value = aws_lb.test.dns_name
}
