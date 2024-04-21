variable "region" {
  type = string
  default = "ap-southeast-1"
}

variable "cidr_block" {
  type = string
  default = "10.0.0.0/16"
}

variable "public_subnet_ips" {
  type = list(any)
}

variable "private_subnet_ips" {
  type = list(any)
}

variable "availability_zone_1" {
  type = string
  default = "ap-southeast-1a"
}

variable "availability_zone_2" {
  type = string
  default = "ap-southeast-1b"
}


variable "key_pair_path" {
  type = string
  default = "./keypair/test-key.pub"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "amis" {
  type = map(any)
  default = {
    "ap-southeast-1" = "ami-0dc44e17251b74325"
    "ap-northeast-1" = "ami-0c1de55b79f5aff9b"
  }
}
