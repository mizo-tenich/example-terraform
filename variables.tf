variable "aws_region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  default     = "10.0.1.0/24"
}

variable "security_group" {
  description = "Security group for the ALB"
  default     = "sg-0abcd1234efgh5678"
}

variable "db_username" {
  description = "Username for the RDS instance"
}

variable "db_password" {
  description = "Password for the RDS instance"
}

variable "domain_name" {
  description = "Domain name for Route53"
  default     = "tigerconnect.com"
}
