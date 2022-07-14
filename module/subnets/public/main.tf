resource "azurerm_subnet" "public_subnet" {
  count                = var.total_count
  name                 = "${var.public_subnet_name[count.index]}"
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name
  address_prefixes     = [var.public_address_prefix[count.index]]
}