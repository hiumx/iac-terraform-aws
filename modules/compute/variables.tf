variable "region" {
  type = string
  default = "ap-southeast-1"
}

variable "ami" {
  type = string
  description = "The amazon machine image to use for server"
  default = "ami-06c4be2792f419b7b"
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