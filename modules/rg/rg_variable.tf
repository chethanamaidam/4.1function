variable "rg_name" {
    description ="resource group name"
    type = string
    default = "demo-exercise-rg189"
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
