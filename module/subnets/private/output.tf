output "dev_private_subnet_id" {
    value = ["${azurerm_subnet.private_subnet.*.id}"]
}