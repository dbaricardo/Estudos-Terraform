module "rg" {
    source = "./modules/rg"  
    name = var.name
    location = var.location
}


module "storage_account" {
    source = "./modules/storage_account"
    depends_on = [
      module.rg
    ]
}

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