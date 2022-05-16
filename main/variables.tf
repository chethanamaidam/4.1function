variable  "rg_name" {
    description= "the azure region where the resource group should exist "
    default= "demo-exercise-rg189"
}
variable  "location" {
    default= "uksouth"
}
variable "tags" {
    description = "Tags for the resources"
    type        = map(string)
    default = {
           "environment" = "dev"
           "source" = "terraform"
        
    }
}
variable "st_name" {
    default= "chedemostorage123"
}
variable "asp_name" {
    default = "chethanaasp"
}
variable "fun_name" {
    default = "demofunch173"
}
variable "storage_account_access_key" {
  default= "demofun"
}
variable "app_service_plan_id" { 
    default = "chethanaasp"
}