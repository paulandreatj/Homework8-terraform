##############################################
# RDS variables
##############################################

variable "identifier" {
  type        = string
  default = "Name of the database instance"
}
variable "engine" {
  type        = string
  description = "Database engine"
}
variable "engine_version" {
  type        = string
  description = "Database engine version"
}     
variable "instance_class" {
  type        = string
  description = "type of aws rds instance"
}
variable "name"  {
  type        = string
  description = "name of aws rds instance"
}       
variable "username" {
  type        = string
  description = "username to connect to aws rds instance"
}  
variable "password" {
  type        = string
  description = "password to connect to aws rds instance"
}

variable "port" {
  type        = string
  description = "port to connect to aws rds instance"
}
variable "allocated_storage" {
    type        = string
    description = "allocated storage to aws rds instance"  
}

#######################################################
# config variables
#######################################################

variable "aws_region" {
  type        = string
  description = "AWS default region (where to deploy your resources)"
}

variable "skip_final_snapshot" {
  type = bool
  description = "Do you want to skip final snapshot (true->yes,false->no) "
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

#variable "vpc_security_group_ids" {
 # type = map(string)
  #description = "VPC security group id"
#}