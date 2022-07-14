module "dev_resource_grp" {
    source   =  "../module/resource_group/"
    resource_group_name = var.resource_group_name
    resource_group_location = var.resource_group_location   
}

output "dev_resource_group_name" {
    value = "module.dev_resource_grp.name"
}
output "dev_resource_group_location" {
     value = "module.dev_resource_grp.location"
}