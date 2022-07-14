variable "total_count_pvt" {
    type = number
    description = "total count pvt subnet"
}

variable "private_subnet_name" {
    type = list(string)
    description = "name of private subnets"
}

variable "resource_group_name" {
    type = string
    description = "name of the resource group"
}

variable "virtual_network_name" {
    type = string
    description = "name of vnet"
}

variable "private_address_prefix" {
     type = list(string)
     default = ["10.0.0.0/21", "10.0.8.0/21", "10.0.16.0/21", "10.0.24.0/21"]
    description = "private_subnet_cidr list"
}