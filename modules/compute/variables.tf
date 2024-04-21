variable "region" {
  type = string
  default = "ap-southeast-1"
}

variable "ami" {
  type = string
  description = "The amazon machine image to use for server"
}

variable "instance_type" {
  type = string
  description = "The size of instance"
  default = "t2.micro"
}

variable "key_name" {
  type = string
  description = "The key pair to use for instance"
  nullable = false
}

variable "security_group_ids" {
  type = list(string)
  nullable = false
}

variable "subnet_id" {
  type = string
  description = "The subnet ID to launch in"
  nullable = false
}