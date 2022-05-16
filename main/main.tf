provider "azurerm" {
    features {}
}
module "resource_group" {
  source = "../modules/rg"
  rg_name = var.rg_name
  location = var.location
  tags = var.tags
}

module "storage_account" {
  source             = "../modules/st"
  depends_on         = [module.resource_group]
  rg_name = var.rg_name
  storage_name=var.st_name
  location = var.location
  tags = var.tags
} 
module "app_service_plan"{
  source = "../modules/asp"
  depends_on = [module.resource_group]
  rg_name = var.rg_name
  location = var.location
  asp_name= var.asp_name

}

module "function_app" {
    source = "../modules/fun"
    depends_on = [module.storage_account,module.app_service_plan]
    rg_name = var.rg_name
    location = var.location
    fun_name=var.fun_name
    st_name= var.st_name
    app_service_plan_id        = module.app_service_plan.app_service_plan_id
    storage_account_access_key = module.storage_account.storage_account_access_key
    }

    

    