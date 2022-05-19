module "db_default" {
  source = "../infra-rds"
  aws_region = "us-east-1"
  identifier = "group5-rds"
  allocated_storage = 10
  engine = "postgres"
  engine_version = "14.2"
  instance_class = "db.t3.micro"
  name = "mypostgres"
  username = "group5"
  password = "Praxis20221*"
  port = 5432
}