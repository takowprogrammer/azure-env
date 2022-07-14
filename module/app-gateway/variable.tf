variable "agp_ip" {
  type = string
}

variable "resource_group_name" {
  type = string 
  description = "resource_group_name"
}
variable "vnet_name" {
  type        = string
  description = "vnet_name"
}

variable "resource_group_location" {
  type        = string
  description = "Location of the resource group."
}

variable "apgw_name" {
  type = string
  description = "apgw_name"
}

variable "gwip_confname" {
  type = string
  description = "gwip_confname"
}

variable "gwip_sub_id" {
  type = list(string)
  default  = ["10.0.32.0/24"]
  description  = "gwip_sub_id"
}

variable "container_ip_address_list" {
  type = list(string)
}