output "claimed_ips" {
  value = module.optimus_netbox.demo_secondary_ips
}

output "vpc_id" {
  value = module.optimus_network.vpc_id
}

output "subnet_id" {
  value = module.optimus_network.subnet_id
}

output "security_group_id" {
  value = module.optimus_network.sg_id
}

output "ipam_pool_id" {
  value = module.optimus_ipam.ipam_pool_id
}

output "ipam_cidr_block" {
  value = module.optimus_ipam.ipam_cidr_block
}

output "ipam_scope_id" {
  value = module.optimus_ipam.ipam_scope_id
}
