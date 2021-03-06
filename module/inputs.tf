variable "aws_region" {}

variable "env" {
  default = ""
}

variable "paas_name" {
  default = ""
}

variable "aws_profile" {}

variable "ssm_role_policy" {
  default = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

variable "ecs_full_access_policy" {
  default = "arn:aws:iam::aws:policy/AmazonECS_FullAccess"
}

variable "s3_full_access_policy" {
  default = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

variable "vpc_id" {
  default = ""
}

variable "bucket" {
    default = ""
}

variable "public_subnet_id1" {
    default = ""
}

variable "public_subnet_id2" {
  default = ""
}

variable "private_subnet1" {
  default = ""
}

variable "private_subnet2" {
  default = ""
}

variable "kube_sg_id" {
    default = ""
}

variable "key_pair" {
    default = ""
}

variable "kube_master_instance_type" {
  default = "t2.medium"
}

variable "kube_master_ami" {
  default = "ami-0ac80df6eff0e70b5"
}

variable "master_desired_capacity" {
  default = 1
}

variable "kube_master_version" {
  default = "v0.0"
}