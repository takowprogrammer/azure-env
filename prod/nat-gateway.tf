module "nat_gateway" {
    source                         = "../module/nat-gwy"
    nat_pub_ip_name                =  var.nat_pub_ip_name
    nat_gtw_name                   =  var.nat_gtw_name
    nat_pub_ip_prefix_name         =  var.nat_pub_ip_prefix_name
    nat_alc_method                 =  var.nat_alc_method
    nat_sku                        =  var.nat_sku
    nat_prefix_length              =  var.nat_prefix_length
    nat_timeout                    =  var.nat_timeout
    resource_group_name            =  var.resource_group_name
}







