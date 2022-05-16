variable "account_replication_type" {
    default = "GRS"
}

variable "account_tier" {
    default = "Standard"
}


variable "location" {
    default      = ""
}

variable "tags" {
    description = "Tags for the resources"
    type        = map(string)
    default = {
           "environment" = "dev"
           "source" = "terraform"
        
    }
}   
 variable "rg_name" {
 default = ""
 }
variable "storage_name"{
    default = "demofun"
}
variable "app_servic_plan_id"{
    description =" where you can access the location"
    default= ""
}