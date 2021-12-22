resource "azurerm_app_service" "appservice_adm" {
  name                = var.app_service_name
  location            = var.app_service_location
  resource_group_name = var.app_service_group
  app_service_plan_id = "${azurerm_app_service.appservice_adm.id}"

  site_config = var.app_config

  app_settings = var.app_settings
  connection_string = var.app_conn_string
    
}