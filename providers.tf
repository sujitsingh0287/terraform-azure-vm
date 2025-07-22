terraform { 
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.35.0"
    }
  }

   backend "azurerm" {
    resource_group_name   = "us-prd-demo001" #Jis RG me tera storage account hai
    storage_account_name  = "usprdstg001" #Storaget ka naam (lowercase only!)
    container_name        = "tfstate"               # Blob container ka naam
    key                   = "terraform.tfstate" # State file ka naam
}

}

provider "azurerm" {
  features {}
  subscription_id = "c316f505-7597-4175-b5db-d2949009d506"
}