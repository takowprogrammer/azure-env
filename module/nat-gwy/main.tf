resource "azurerm_public_ip" "nat_pub_ip" {
  name                = var.nat_pub_ip_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  allocation_method   = var.nat_alc_method
  sku                 = var.nat_sku
}

resource "azurerm_public_ip_prefix" "nat_pub_ip_prefix" {
  name                = var.nat_pub_ip_prefix_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  prefix_length       = var.nat_prefix_length
}

resource "azurerm_nat_gateway" "dev_nat-gtw" {
  name                    = var.nat_gtw_name
  location                = var.resource_group_location
  resource_group_name     = var.resource_group_name
  # public_ip_address_ids   = [azurerm_public_ip.nat_pub_ip.id]
  # public_ip_prefix_ids    = [azurerm_public_ip_prefix.nat_pub_ip_prefix.id]
  sku_name                = var.nat_sku
  idle_timeout_in_minutes = var.nat_timeout
}

resource "azurerm_nat_gateway_public_ip_association" "example" {
  nat_gateway_id       = azurerm_nat_gateway.dev_nat-gtw.id
  public_ip_address_id = azurerm_public_ip.nat_pub_ip.id
}
