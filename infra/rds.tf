resource "aws_db_subnet_group" "group5-subnet" {
  name = "group5-subnet_group"
  subnet_ids = ["subnet-04e972f3a706c00e8","subnet-0ee2351fb4338f1c7"]
}

resource "aws_db_instance" "group5-rds" {
  identifier = var.rds_identifier
  allocated_storage    = 10
  engine               = var.rds_engine
  engine_version       = var.rds_engine_version
  instance_class       = var.rds_instance_class
  name                 = var.rds_name
  username             = var.rds_username
  password             = var.rds_password
  port                 = 5432
  db_subnet_group_name = aws_db_subnet_group.group5-subnet.name
  skip_final_snapshot = var.rds_skip_final_snapshot
  vpc_security_group_ids = [ aws_security_group.ec2_public_security_group.id ]
}