terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }
   backend "azurerm" {
    resource_group_name = "Terraform_DevOps"  
    storage_account_name = "tfbackend202504"                              
    container_name       = "B-17_G20"                                 
    key                  = "Labs.terraform.tfstate"                   
  }
}


provider "azurerm" {
    features {   
    }
  subscription_id = "cfd26fdd-6d24-43b8-ae23-773b34f779a3"
}

