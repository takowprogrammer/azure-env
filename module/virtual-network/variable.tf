variable "resource_group_name_prefix" {
  default       = ""
  description   = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "resource_group_location" {
  default = "eastus"
  description   = "Location of the resource group."
}

variable "resource_group_name" {
  type = string
  description   = "Location of the resource group."
}

variable "vnet_name" {
    type = string
    default = ""
    description = "name of vnet"
}

variable "env" {
    type = string
    default = ""
    description = "environment name"
}

variable "dns_servers" {
    type = list(string)
    description = "address of dns servers"
}

variable "address_space" {
    type = list(string)
    default = []
    description = "address spaces"
}
