variable "env" {
  type = string
  default = "dev"
}

variable "storage_account_name" {
  type = string 
  default = ""
}
variable "resource_group_name" {
  type        = string
  description = "name of the resource group"
}

variable "resource_group_location" {
  type        = string
  description = "Location of the resource group."
}

variable "account_tier" {
  type = string
  default = "Standard" 
}

variable "cdn_origin_name" {
  type = string
  default = ""
}

variable "cdn_profile" {
  type = string
  default = ""
}

variable "cdn_endpoint_name" {
  type = string 
  default = ""
}