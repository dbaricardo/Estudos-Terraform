module "rg" {
    source = "./modules/rg"  
    name = var.name
    location = var.location
}


module "storage_account" {
    source = "./modules/storage_account"
    depends_on = [module.rg]
}


module "vnet" {
    source = "./modules/vnet"
    depends_on = [module.vnet]   
}