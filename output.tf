output "the_vpc_id"{
  description = "The network id of the instance"
  value = module.network.my_vpc_id
}

output "the_subnet_id"{
  description = "The subnetwork id of the instance"
  value = module.network.my_subnet_id
}


output "list_of_vMs_with_their_ip_addresses" {
  description = "The private IP addresses of the instances."
  value= zipmap(module.instance[*].vm_name , module.instance[*].internal_ip)
}


# output "vm_name" {
#   description = "VMs created"
#   value = module.instance.vm_name
#   #value = module.instance.internal_ip
# }

 
