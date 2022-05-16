variable "fun_name"{
    default = ""
}
variable "st_name"{
    default = ""
}
variable "account_replication_type" {
    default = "GRS"
}

variable "account_tier" {
    default = "Standard"
}
variable "location" {
    description  = "location where the resources will be created "
    default      = ""
}
variable "asp_name"{
    default = ""
}    
variable "tags" {
    description = "Tags for the resources"
    type        = map(string)
    default = {
           "environment" = "dev"
           "source" = "terraform"
        
    }
}  
variable "storage_account_access_key"{
     default = ""
}
variable "rg_name" {
    description ="resourcegroupname"
    default = ""
}
variable "app_service_plan_id"{ 
    default = ""
}
