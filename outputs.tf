output "instance_ip_addr_public" {
  value = module.compute.instance_public_ip
}

output "instance_ip_addr_private" {
  value = module.compute.instance_private_ip
}