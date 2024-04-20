variable "region" {
  type = string
  default = "ap-southeast-1"
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

