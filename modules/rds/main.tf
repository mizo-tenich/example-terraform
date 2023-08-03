resource "aws_db_instance" "default" {
  identifier        = "db-instance"
  engine            = "mysql"
  engine_version    = "5.7"
  instance_class    = "db.t2.micro"
  allocated_storage = 20
  name              = "mydb"
  username          = var.db_username
  password          = var.db_password
  publicly_accessible = true
  skip_final_snapshot = true
}

output "db_endpoint" {
  value = aws_db_instance.default.endpoint
}
