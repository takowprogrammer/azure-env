variable "container_image_name" {
    type = string
    description = "container_image_name"
}

variable "ip_address_type" {
    type = string
    description = "ip_address_type"
}

variable "dns_name_label" {
    type = string
    description = "dns_name_label"
}
variable "resource_group_location" {
  type   =  string
  description   = "Location of the resource group."
}

variable "os_type" {
    type = string
    description = "os_type"
}

variable "container_name" {
    type = string
    description = "container_name"
}

variable "image_name" {
  type   =  string
  description   = "Location of the resource group."
}

variable "cpu_val" {
    type = string
    description = "cpu_val"
}

variable "mem_val" {
    type = string
    description = "mem_val"
}

variable "port_val" {
    type = number
    default = 443
    description = "port_val"
}

variable "sidecar_name" {
    type = string
    description = "sidecar_name"
}

variable "sidecar_img" {
    type = string
    description = "sidecar_img"
}
variable "sidecar_cpu" {
    type = string
    description = "sidecar_cpu"
}
variable "sidecar_mem" {
    type = string
    description = "sidecar_mem"
}

variable "env" {
    type = string
    description = "env"
}
variable "resource_group_name" {
    type = string
    description = "name of the resource group"
}

variable "app_service_sku" {
  type =  string 
#   default = "S1"
}