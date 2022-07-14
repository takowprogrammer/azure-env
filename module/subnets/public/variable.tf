variable "total_count" {
  type        = number
  default     = 2
  description = "total count"
}

variable "public_subnet_name" {
  type        = list(string)
  default     = []
  description = "name of public subnets"
}

variable "resource_group_name" {
  type        = string
  default     = ""
  description = "name of the resource group"
}

variable "virtual_network_name" {
  type        = string
  default     = ""
  description = "name of vnet"
}

variable "public_address_prefix" {
  type        = list(string)
  default     = ["10.0.32.0/24", "10.0.33.0/24"]
  description = "public_subnet_cidr list"
}
