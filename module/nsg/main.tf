resource "azurerm_network_security_group" "dev_nsg" {
  name                = var.nsg_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
    security_rule {
    name                       = local.security_rule.name
    priority                   = local.security_rule.priority
    direction                  = local.security_rule.direction
    access                     = local.security_rule.access
    protocol                   = local.security_rule.protocol
    source_port_range          = local.security_rule.source_port_range
    destination_port_range     = local.security_rule.destination_port_range
    source_address_prefix      = local.security_rule.source_address_prefix
    destination_address_prefix = local.security_rule.destination_address_prefix
  }
  tags = {
    environment = var.env
  }
}


# resource "azurerm_subnet_network_security_group_association" "example" {
#   subnet_id                 = azurerm_network_security_g
#   network_security_group_id = azurerm_network_security_group.dev_nsg.id
# }
