variable "nat_pub_ip_name" {
    type = string
    default = "dev-nat-public-ip"
    description = "nat_pub_ip_name"
}

variable "nat_gtw_name" {
    type = string
    default = "dev-nat-gtw1"
    description = "nat_gtw_name"
}

variable "nat_pub_ip_prefix_name" {
    type = string
    default = "dev-nat-public-ip-prefix"
    description = "nat_pub_ip_prefix_name"
}

variable "nat_alc_method" {
    type = string
    default = "Static"
    description = "environment name"
}

variable "resource_group_name" {
    type = string
    description = "name of the resource group"
}

variable "resource_group_location" {
  default = "eastus"
  type   =  string
  description   = "Location of the resource group."
}

variable "nat_sku" {
    type = string
    default = "Standard"
    description = "nat_sku"
}

variable "nat_prefix_length" {
    type = number
    default = 30
    description = "nat_prefix_length"
}

variable "nat_timeout" {
    type = number
    default = 10
    description = "nat_prefix_length"
}

