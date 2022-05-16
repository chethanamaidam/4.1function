variable "asp_name"{
    description = "name of the app service plan "
    default = ""
}
variable "location" {
    description  = "location where the resources will be created "
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
    description ="resource group name"
    default = ""
}

