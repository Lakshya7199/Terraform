variable "project_id" {
    description = "The project id you are working in"
    type = string
}

variable "purpose" {
    description = "Write the purpose"
    type = string
    
}

variable "prefix" {
    description = "Write the prefix of the instance"
    type = string
    
}

variable "vm_count" {
    description = "what's the count of your instance"
    type = number
}

variable "cidr_range" {
    description = "mention the ip cidr range"
    type = string
    
}

variable "region" {
    description = "In what region you want to create your instance"
    type = string
    
}

