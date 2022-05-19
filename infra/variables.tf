#######################################################
# config variables
#######################################################

variable "aws_region" {
  type        = string
  description = "AWS default region (where to deploy your resources)"
}

#######################################################
# EC2 variables
#######################################################

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "ec2_tags" {
  description = "EC2 resource tags"
  type        = map(string)
}

variable "ami_id" {
  type        = string
  description = "EC2 AMI ID"
}

variable "subnet_id" {
  type        = string
  description = "Subnet to deploy your resources"
}

variable "public_ip" {
  type        = bool
  description = "Do you need public ip (true->yes,false->no)"
}

variable "key_pair_name" {
  type        = string
  description = "Key pair name"
}

variable "user_data" {
  type        = string
  description = "user data path"
}

##############################################
# Security group variables
##############################################

variable "sg_name" {
  type        = string
  description = "Security group name"
}

variable "sg_description" {
  type        = string
  description = "Security group description"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "sg_tags" {
  description = "SG resource tags"
  type        = map(string)
}

##############################################
# Elastic IP variables
##############################################

variable "eip_vpc" {
  type        = bool
  description = "Do you need VPC on Elastic IP creation (true->yes,false->no)"
}

variable "eip_tags" {
  type        = map(string)
  description = "Elastic IP resource tags"
}

##############################################
# RDS variables
##############################################

variable "rds_identifier" {
  type        = string
  default = "Name of the database instance"
}
variable "rds_engine" {
  type        = string
  description = "Database engine"
}
variable "rds_engine_version" {
  type        = string
  description = "Database engine version"
}     
variable "rds_instance_class" {
  type        = string
  description = "type of aws rds instance"
}
variable "rds_name"  {
  type        = string
  description = "name of aws rds instance"
}       
variable "rds_username" {
  type        = string
  description = "username to connect to aws rds instance"
}  
variable "rds_password" {
  type        = string
  description = "password to connect to aws rds instance"
}

variable "rds_port" {
  type        = string
  description = "port to connect to aws rds instance"
}
variable "rds_allocated_storage" {
    type        = string
    description = "allocated storage to aws rds instance"  
}

#######################################################
# config variables
#######################################################

variable "rds_skip_final_snapshot" {
  type = bool
  description = "Do you want to skip final snapshot (true->yes,false->no) "
}