module "dev_cdn"  {
resource_group_location    =  var.resource_group_location
resource_group_name        = var.resource_group_name
source       = "../module/cdn"
cdn_origin_name = var.cdn_origin_name
cdn_profile = var.cdn_profile
storage_account_name = var.storage_account_name
cdn_endpoint_name = var.cdn_endpoint_name
depends_on = [
    module.dev_resource_grp
  ]

}