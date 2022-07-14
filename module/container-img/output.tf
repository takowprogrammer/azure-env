output "container_ip" {
  value = azurerm_linux_web_app.azwadev.default_hostname
}

output "app_service_address_list" {
  value = azurerm_linux_web_app.azwadev.default_hostname
}