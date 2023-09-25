resource "google_compute_instance" "vm"{
  
  project =  var.project_id
  #name= "${var.purpose}-${var.prefix}-instance${count.index}"
  name = var.vm_name
  machine_type = "e2-medium"
  zone = random_shuffle.available_zones.result[0]

  boot_disk{
    initialize_params{
      image= "ubuntu-os-cloud/ubuntu-2204-lts"
      size= 10
  }
 }
  network_interface{
    network = var.vpc_id
    subnetwork = var.subnet_id
 }

  metadata_startup_script = <<-EOF
       #!/bin/bash
       sudo apt update
       sudo apt install nginx -y
       sudo systemctl start nginx
     EOF

  
}


data "google_compute_zones" "available" {
   project =  var.project_id
   region = var.region
}

resource "random_shuffle" "available_zones" {
  input = data.google_compute_zones.available.names
  result_count = 1
}

