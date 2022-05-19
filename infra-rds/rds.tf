resource "aws_db_instance" "group5-rds" {
# Id 
  identifier = var.identifier
# Allocating the storage for database instance.
  allocated_storage    = 10
# Declaring the database engine and engine_version
  engine               = var.engine
  engine_version       = var.engine_version
# Declaring the instance class
  instance_class       = var.instance_class
  name                 = var.name
# User to connect the database instance 
  username             = var.username
# Password to connect the database instance 
  password             = var.password
# Port to connect the database instance
  port                 = 5432
# Subnet group to connect the database instance
  db_subnet_group_name = aws_db_subnet_group.group5-subnet.name
  
  skip_final_snapshot = var.skip_final_snapshot

  #vpc_security_group_ids = [ var.vpc_security_group_ids ]
}