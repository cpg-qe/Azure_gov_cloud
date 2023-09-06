provider "azurerm" {
  skip_provider_registration = true
  subscription_id = "${var.subscriptionId}"
  client_id       = "${var.clientId}"
  client_secret   = "${var.clientSecret}"
  tenant_id       = "${var.tenantId}"
  environment     = "usgovernment"
  #version = "=1.44.0"
  features { 
    resource_group { 
      prevent_deletion_if_contains_resources = false 
    } 
  }
}
