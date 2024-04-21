variable "region" {
  type = string
  default = "ap-southeast-1"
}

variable "cidr_block" {
  type = string
}

variable "public_subnet_ips" {
  type = list(any)
}

variable "private_subnet_ips" {
  type = list(any)
}

variable "availability_zone_1" {
  type = string
}

variable "availability_zone_2" {
  type = string
}

