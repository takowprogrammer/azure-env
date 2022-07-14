module "dev_VN" {
    source   =  "../module/virtual-network/"    
    resource_group_location = "${module.dev_resource_grp.dev_resource_group_location}"
    resource_group_name =  "${module.dev_resource_grp.dev_resource_group_name}"
    vnet_name = var.vnet_name
    env     = var.env
    address_space = var.address_space
    dns_servers  = var.dns_servers

}