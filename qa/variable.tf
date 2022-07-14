variable "resource_group_location" {
  default = "eastus"
  description   = "Location of the resource group."
}

variable "vnet_name" {
    type = string
    description = "name of vnet"
}

variable "env" {
    type = string
    default = "dev"
    description = "environment name"
}

variable "dns_servers" {
    type = list(string)
    default = [""]
    description = "address of dns servers"
}

variable "address_space" {
    type = list(string)
    default = [""]
    description = "address spaces"
}

########################## public subnet vars ################

variable "total_count" {
    type = number
    default = 2
    description = "name of public subnets"
}
variable "public_subnet_name" {
    type = list(string)
    default = []
    description = "name of public subnets"
}

variable "public_address_prefix" {
     type = list(string)
       default = ["10.0.32.0/24", "10.0.33.0/24"]
    description = "public_subnet_cidr list"
}

########################## private subnet vars ################

variable "total_count_pvt" {
    type = number
    default = 4
    description = "name of private subnets"
}
variable "private_subnet_name" {
    type = list(string)
    default = []
    description = "name of private subnets"
}

variable "private_address_prefix" {
     type = list(string)
       default = ["10.0.25.0/24", "10.0.26.0/24"]
    description = "public_subnet_cidr list"
}

####################################### Nat gateway variable##########
variable "nat_pub_ip_name" {
    type = string
    default = ""
    description = "nat_pub_ip_name"
}

variable "nat_gtw_name" {
    type = string
    default = ""
    description = "nat_gtw_name"
}

variable "nat_pub_ip_prefix_name" {
    type = string
    default = ""
    description = "nat_pub_ip_prefix_name"
}

variable "nat_alc_method" {
    type = string
    default = ""
    description = "environment name"
}

variable "resource_group_name" {
    type = string
    default = ""
    description = "name of the resource group"
}

variable "nat_sku" {
    type = string
    default = ""
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

##===========================   container instance =================
variable "container_image_name" {
    type = string
    default = "dev-hello-world-inst"
    description = "container_image_name"
}

variable "ip_address_type" {
    type = string
    description = "ip_address_type"
}

variable "dns_name_label" {
    type = string
    default = "dev-dns_name_label"
    description = "dns_name_label"
}

variable "os_type" {
    type = string
    default = ""
    description = "os_type"
}

variable "container_name" {
    type = string
    default = ""
    description = "container_name"
}

variable "image_name" {
  type   =  string
  default = ""
  description   = "image_name"
}

variable "cpu_val" {
    type = string
    default = ""
    description = "cpu_val"
}

variable "mem_val" {
    type = string
    default = ""
    description = "mem_val"
}

variable "port_val" {
    type = number
    default = 443
    description = "port_val"
}

variable "sidecar_name" {
    type = string
    default = ""
    description = "sidecar_name"
}

variable "sidecar_img" {
    type = string
    default = ""
    description = "sidecar_img"
}
variable "sidecar_cpu" {
    type = string
    default = ""
    description = "sidecar_cpu"
}
variable "sidecar_mem" {
    type = string
    default = ""
    description = "sidecar_mem"
}

variable "app_service_sku" {
  type =  string 
  default = "S1"
}

############  Monitoring variables  ###############
variable "monitor_name" {
    type = string
    default = "dev-storage-mon"
    description = "monitor_name"
}

variable "account_tier" {
    type = string
    default = ""
    description = "account_tier"
}

variable "repl_type" {
    type = string
    default = ""
    description = "repl_type"
}

variable "mon_grp_name" {
  type   =  string
  description   = "mon_grp_name"
}

variable "short_name" {
    type = string
    default = ""
    description = "short_name"
}

variable "alert_name" {
    type = string
    default = ""
    description = "alert_name"
}

variable "alert_description" {
    type = string
    default = ""
    description = "alert_description"
}

variable "namespcae_name" {
    type = string
    default = ""
    description = "namespcae_name"
}

variable "metricname" {
    type = string
    default = ""
    description = "metricname"
}
variable "aggregation_type" {
    type = string
    default = ""
    description = "aggregation_type"
}
variable "operator_type" {
    type = string
    default = ""
    description = "operator_type"
}
variable "alert_threshold" {
    type = string
    default = ""
    description = "alert_threshold"
}

variable "dimension_name" {
    type = string
    description = "dimension_name"
}

variable "dimention_operator" {
    type = string
    description = "dimention_operator"
}

variable "dimension_values" {
    type = string
    description = "dimension_values"
}



###############  CDN variables #############

variable "storage_account_name" {
  type = string 
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
###################  cosmo db variable  ###########
variable "failover_location" {
  type = string 
  description = "failover location"
}
variable "cosmodb_name" {
  type = string 
  description = "cosmodb_name"
}

variable "cosmo_resource_group_location" {
  type =  string
  default = ""
}

variable "cosmo_resource_group_name" {
  type = string 
  default = ""
}


##############   variables for NSG Module ############
variable "nsg_name" {
  type = string
  default = "dev-nsg-rg" 
}

variable "nsg_subnet_id" {
  type = string
  default = "nsg_subnet_id" 
}


################  variables for app gateway  #############
variable "agp_ip" {
  type = string
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
  default = ["10.0.34.0/24"]
  description  = "gwip_sub_id"
}

################## firewall variables ############
variable "firewall_name" {
  type = string
}


###################### subcription variables #######
variable "subscription_id" {
  type =  string 
}