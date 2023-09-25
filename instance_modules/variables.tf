variable "project_id" {
    description = "The project id you are working in"
    type = string
}

variable "purpose" {
    description = "Write the purpose of the instance"
    type = string
}

variable "prefix" {
    description = "Write the prefix of the instance"
    type = string
}

variable "region" {
    description = "In what region you want to create your instance"
    type = string
} 

variable "vm_name" {
   description = "Name of your instance"
    type = string
}

variable "vpc_id" {
    description = "the VPC id"
    type = string
}

variable "subnet_id" {
    description = "the subnetwork id"
    type = string
}

