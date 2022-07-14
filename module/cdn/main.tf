
resource "azurerm_storage_account" "cdn_storage1" {
  name                     = "${var.storage_account_name}"
  location                 = var.resource_group_location
  resource_group_name      = var.resource_group_name
  account_tier             = var.account_tier
  # Required 
  account_replication_type = "LRS"
  # Required 
  account_kind             = "StorageV2"

  static_website {
    index_document     = "index.html"
    error_404_document = "404.html"
  }
  tags = {
    environment = var.env
    Managed     = "terraform"
  }
}


resource "azurerm_cdn_profile" "cdn" {
  name                = "${var.env}-${var.cdn_profile}"
  location            = azurerm_storage_account.cdn_storage1.location
  resource_group_name = azurerm_storage_account.cdn_storage1.resource_group_name
  # Required  
  sku                 = "Standard_Microsoft"
  depends_on = [
    azurerm_storage_account.cdn_storage1
  ]
}

resource "azurerm_cdn_endpoint" "cdn_endpoint" {
  name                = var.cdn_endpoint_name
  profile_name        = azurerm_cdn_profile.cdn.name
  location            = azurerm_cdn_profile.cdn.location
  resource_group_name = azurerm_cdn_profile.cdn.resource_group_name
  origin_host_header  = azurerm_storage_account.cdn_storage1.primary_web_host

  origin {
    name      = var.cdn_origin_name
    host_name = azurerm_storage_account.cdn_storage1.primary_web_host
  }

  tags = {
    environment = var.env
    Managed   = "terraform"
  }

  delivery_rule {
    name  = "EnforceHTTPS"
    order = "1"

    request_scheme_condition {
      operator     = "Equal"
      match_values = ["HTTP"]
    }

    url_redirect_action {
      redirect_type = "Found"
      protocol      = "Https"
    }
  }
}