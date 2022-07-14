variable "resource_group_location" {
  default = "eastus"
  description   = "Location of the resource group."
}

variable "resource_group_name" {
  default = "eastus"
  description   = "name of the resource group."
}

variable "failover_location" {
  type = string 
  description = "failover location"
}

variable "cosmodb_name" {
  type = string 
  description = "cosmodb_name"
}

variable "cosmo_resource_group_location" {
  type = string 
}

variable "cosmo_resource_group_name" {
  type  = string 
}
