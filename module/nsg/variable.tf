variable "nsg_name" {
  type = string
  default = "dev-nsg-rg" 
}

variable "resource_group_location" {
  type = string
  default = "eastus" 
}

variable "resource_group_name" {
  type = string

}

variable "env" {
  type = string
  default = "dev" 
}


variable "nsg_subnet_id" {
  type = string
  default = "nsg_subnet_id" 
}
