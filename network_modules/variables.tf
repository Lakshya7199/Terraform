variable "project_id" {
    description = "The project id you are working in"
    type = string
}

variable "purpose" {
    description = "Write the purpose "
    type = string
}

variable "region" {
    description = "In what region you want to create your instance"
    type = string
}

variable "cidr_range" {
    description = "ip cidr range "
    type = string
}
