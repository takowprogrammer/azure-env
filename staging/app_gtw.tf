module  "dev_app_gtw" {
    source   =  "../module/app-gateway"
    agp_ip  = var.agp_ip
    vnet_name  = module.dev_VN.dev_virtual_net_name
    apgw_name   = var.apgw_name
    gwip_confname  =  var.gwip_confname
    #gwip_sub_id   =  element(["${module.public_subnet.dev_public_subnet_id}"], 0)
    gwip_sub_id   =   var.gwip_sub_id
    resource_group_name  = module.dev_resource_grp.dev_resource_group_name
    resource_group_location  = module.dev_resource_grp.dev_resource_group_location
    container_ip_address = [module.container_inst.app_service_address_lists]
    depends_on = [
      module.dev_VN,
      module.container_inst
    ]
}