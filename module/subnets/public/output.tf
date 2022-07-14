output "dev_public_subnet_id" {
    value = ["${azurerm_subnet.public_subnet.*.id}"]
}