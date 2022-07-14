variable "resource_group_name" {
  type = string
  description   = "name of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "resource_group_location" {
  type = string
  description   = "Location of the resource group."
}