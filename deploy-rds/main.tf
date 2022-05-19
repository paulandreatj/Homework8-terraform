module "db_default" {
  source            = "../infra-rds"
  aws_region        = "us-east-1"
  identifier        = "group5-rds"
  allocated_storage = 10
  engine            = "postgres"
  engine_version    = "14.2"
  instance_class    = "db.t3.micro"
  name              = "mypostgres"
  username          = "group5"
  password          = "Praxis20221*"
  port              = 5432

  sg_name        = "group5-sg"
  sg_description = "Allow http over port 80 and ssh over port 22"
  vpc_id         = "vpc-031420f7c99b1a0bd"
  sg_tags        = { Name = "group5-sg" }

  skip_final_snapshot = true
  #vpc_security_group_ids = {id = "sg-061cef274bce558ac"}
}