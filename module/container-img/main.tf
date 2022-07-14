resource "azurerm_service_plan" "asp" {
  name                = "${var.container_name}-appserviceplan"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  os_type             = "Linux"
  sku_name            = var.app_service_sku
}

resource "azurerm_linux_web_app" "azwadev" {
  name                = var.container_name
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  service_plan_id     = azurerm_service_plan.asp.id

  app_settings = {
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
  }

  site_config {
    application_stack {
      docker_image     = var.container_image_name
      docker_image_tag = "latest"
    }
  }
}





