terraform {
    required_providers {
        azurerm = {
        source  = "hashicorp/azurerm"
        version = "~> 3.74"
        }
    }
}
provider "azurerm" {
    features {}
    subscription_id = "3ba70bac-d8e7-4f2b-8e18-7fa19d2fb0f1"
  
}
# terraform {
#   backend "azurerm" {
#     resource_group_name   = "mat-delete-krna"
#     storage_account_name  = "kadirst25"
#     container_name        = "jenkins"
#     key                   = "terraform.tfstate"
#   }
# }
resource "azurerm_resource_group" "rg" {
    name     = "myTFResourceGroup"
    location = "East US"
  
}