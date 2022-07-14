 module "public_subnet" {
  source                        =  "../module/subnets/public"   
  count                         =  var.total_count
  public_subnet_name            =  var.public_subnet_name
  resource_group_name           = "${module.dev_resource_grp.dev_resource_group_name}"
  virtual_network_name          = "${module.dev_VN.dev_virtual_net_name}"

}

module "private_subnet" {
  source                        =  "../module/subnets/private"   
  total_count_pvt                      =  var.total_count_pvt
  private_subnet_name            =  var.private_subnet_name
  resource_group_name           = "${module.dev_resource_grp.dev_resource_group_name}"
  virtual_network_name          = "${module.dev_VN.dev_virtual_net_name}"

}