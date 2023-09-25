output "internal_ip"{
     description = "the internal ip address of VM"
     value = google_compute_instance.vm.network_interface.0.network_ip
}

output "vm_name" {
    description = " name of vm"
    value = google_compute_instance.vm.name
  
}

# output "combined" {
#     description = "ip adrresses of the each vm"
#     value = zipmap(google_compute_instance.vm[*].name , google_compute_instance.vm[*].network_interface.0.network_ip )
# }
