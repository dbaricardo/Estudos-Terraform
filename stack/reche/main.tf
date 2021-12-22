                                #Modulo Resource Group
module "rg" {
    source = "./modules/rg"  
    name = var.name
    location = var.location
}

                                #Modulo Storage Account
module "storage_account" {
    source = "./modules/storage_account"
    depends_on = [
      module.rg
    ]
}

                                #Modulo Application Service Plan
module "asp" {
  source = "./modules/asp"

  asp_name = "asp-ciano"
  asp_location = "brazilsouth"
  asp_kind = "Windows"
  asp_resource_group_name = "rg-ciano"
  depends_on = [
    module.rg
  ]
}


module "app_service" {
  source = "./modules/app_service"

  app_service_name = "admx"
  app_service_group = "rg-ciano"
  app_service_location = "brazilsouth"
  app_service_plan_id = azurerm_app_service_plan.asp.id
  app_settings = var.app_settings
  app_config = var.app_config
  app_conn_string = var.app_conn_string

  depends_on = [
    module.rg, module.asp
  ]
}