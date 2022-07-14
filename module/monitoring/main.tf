resource "azurerm_storage_account" "devpred-monitor" {
  name                     = var.monitor_name
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = var.account_tier
  account_replication_type = var.repl_type
}

resource "azurerm_monitor_action_group" "dev_mon_grp" {
  name                = var.mon_grp_name
  resource_group_name = var.resource_group_name
  short_name          = var.short_name

}

resource "azurerm_monitor_metric_alert" "example" {
  name                = var.alert_name
  resource_group_name = var.resource_group_name
  scopes              = [azurerm_storage_account.devpred-monitor.id]
  description         = var.alert_description

  criteria {
    metric_namespace = var.namespcae_name
    metric_name      = var.metricname
    aggregation      = var.aggregation_type
    operator         = var.operator_type
    threshold        = var.alert_threshold

    dimension {
      name     = var.dimension_name
      operator = var.dimention_operator
      values   = [var.dimension_values]
    }
  }

  action {
    action_group_id = azurerm_monitor_action_group.dev_mon_grp.id
  }
}