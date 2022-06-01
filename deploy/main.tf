module "deploy_ec2_and_rds" {
  source        = "../infra"
  aws_region    = "us-east-1"
  instance_type = "t2.medium"
  ec2_tags      = { Name = "group5-ec2" }
  ami_id        = "ami-005de95e8ff495156"
  key_pair_name = "grupo5"
  user_data     = file("../infra/user_data.sh")

  subnet_id = "subnet-04e972f3a706c00e8"
  public_ip = true

  sg_name        = "group5-sg"
  sg_description = "Allow http over port 80 and ssh over port 22"
  vpc_id         = "vpc-031420f7c99b1a0bd"
  sg_tags        = { Name = "group5-sg" }

  eip_vpc  = true
  eip_tags = { Name = "group5-eip" }

  rds_identifier          = "group5-rds"
  rds_allocated_storage   = 10
  rds_engine              = "postgres"
  rds_engine_version      = "14.2"
  rds_instance_class      = "db.t3.micro"
  rds_name                = "mypostgres"
  rds_username            = "group5"
  rds_password            = "Praxis20221*"
  rds_port                = 5432
  rds_skip_final_snapshot = true
}