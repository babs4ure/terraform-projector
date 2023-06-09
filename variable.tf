# Vpc variable
variable "vpc_cidr" {
  default       = "10.0.0.0/16"
  description   = "vpc cidr block"
  type          = string
  
}

variable "public_subnet_az1_cidr" {
  default       = "10.0.0.0/24"
  description   = "public subnet az1 cidr block"
  type          = string
  
}

variable "public_subnet_az2_cidr" {
  default       = "10.0.1.0/24"
  description   = "public subnet az2 cidr block"
  type          = string
  
}

variable "private_app_subnet_az1_cidr" {
  default       = "10.0.2.0/24"
  description   = "private app subnet az1 cidr block"
  type          = string
  
}

variable "private_app_subnet_az2_cidr" {
  default       = "10.0.3.0/24"
  description   = "private app subnet az2 cidr block"
  type          = string
  
}

variable "private_data_subnet_az1_cidr" {
  default       = "10.0.4.0/24"
  description   = "private data subnet az1 cidr block"
  type          = string
  
}

variable "private_data_subnet_az2_cidr" {
  default       = "10.0.5.0/24"
  description   = "private data subnet az2 cidr block"
  type          = string
  
}

#security group variable
variable "ssh_location" {
  default       = "0.0.0.0/0"
  description   = "the ip address that can ssh into ec2 instances"
  type          = string
  
}

#rds variables
variable "database_snapshot_identifiers" {
  default       = "arn:aws:rds:us-east-1:670313630723:snapshot:database-1-snapshot"
  description   = "the database snapshot arn"
  type          = string
  
}

variable "database_instance_class" {
  default       = "db.t2.micro"
  description   = "the database instance type"
  type          = string
  
}

variable "database_instance_identifier" {
  default       = "dev-rds-db"
  description   = "the database instance identifier"
  type          = string
  
}

variable "multi-az-deployment" {
  default       = "false"
  description   = "create a standby az instance"
  type          = bool
  
}

#application load balance
variable "ssl_certificate_arn" {
  default       = "arn:aws:acm:us-east-1:670313630723:certificate/853df864-863c-4dec-8d3e-11fa9890adce"
  description   = "ssl certificate arn"
  type          = string
  
}

#sns topic variable
variable "operator_email" {
  default       = "babs2kloud@gmail.com"
  description   = "a valid email"
  type          = string
  
}

#autoscaling group variable
variable "launch_template_name" {
  default       = "dev-launch-template"
  description   = "the dev launch temp"
  type          = string
  
}


variable "ec2_image_id" {
  default       = "ami-08a5a143e2c5ee1a8"
  description   = "id of ami"
  type          = string
  
}

variable "ec2_instance_type" {
  default       = "t2.micro"
  description   = "ec2 instance type"
  type          = string
  
}

variable "ec2_keypair_name" {
  default       = "LinuxEc2"
  description   = "the name of my keypair"
  type          = string
  
}

#route 53 variables
variable "domain_name" {
  default       = "babs2kloud.link"
  description   = "the recent domain name"
  type          = string
  
}

variable "record_name" {
  default       = "www"
  description   = "sub domain name"
  type          = string
  
}