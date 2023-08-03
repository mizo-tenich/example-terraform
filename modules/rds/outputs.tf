output "db_instance_id" {
  description = "The ID of the DB instance"
  value       = aws_db_instance.default.id
}

output "db_endpoint" {
  description = "The endpoint of the DB instance"
  value       = aws_db_instance.default.endpoint
}
