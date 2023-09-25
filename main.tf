module "network" {
  source = "./network_modules"
  project_id = var.project_id
  purpose= var.purpose
  region = var.region
  cidr_range = var.cidr_range

}

module "instance" {
  source = "./instance_modules"
  project_id = var.project_id
  count = var.vm_count
  vm_name = "${var.purpose}-${var.prefix}-instance${count.index}"
  vpc_id = module.network.my_vpc_id
  subnet_id = module.network.my_subnet_id
  purpose = var.purpose
  prefix = var.prefix
  region = var.region

}



