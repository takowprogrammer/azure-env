resource "azurerm_subnet" "private_subnet" {
  count                = var.total_count_pvt
  name                 = "${var.private_subnet_name[count.index]}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = [var.private_address_prefix[count.index]]
}