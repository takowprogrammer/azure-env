resource "azurerm_resource_group" "cosmo_rg" {
  name      = var.cosmo_resource_group_name
  location  = var.cosmo_resource_group_location
}




resource "azurerm_cosmosdb_account" "db" {
  name                = var.cosmodb_name
  location                 = azurerm_resource_group.cosmo_rg.location
  resource_group_name      = azurerm_resource_group.cosmo_rg.name
  offer_type          = "Standard"
  kind                = "MongoDB"

  enable_automatic_failover = true

  capabilities {
    name = "EnableAggregationPipeline"
  }

  capabilities {
    name = "mongoEnableDocLevelTTL"
  }

  capabilities {
    name = "MongoDBv3.4"
  }

  capabilities {
    name = "EnableMongo"
  }

  consistency_policy {
    consistency_level       = "BoundedStaleness"
    max_interval_in_seconds = 300
    max_staleness_prefix    = 100000
  }

  geo_location {
    location          = var.failover_location
    failover_priority = 1
  }

  geo_location {
    location          = var.resource_group_location
    failover_priority = 0
  }
}