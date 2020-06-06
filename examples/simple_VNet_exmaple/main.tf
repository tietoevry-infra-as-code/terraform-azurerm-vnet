module "vnet" {
  source = "github.com/tietoevry-infra-as-code/terraform-azurerm-vnet?ref=v1.1.0"

  # Using Custom names and VNet/subnet Address Prefix (Recommended)
  resource_group_name = "rg-tieto-internal-shared-westeurope-001"
  location            = "westeurope"

  # Provide valid VNet Address space, Network Watcher, DDoS standard plan activation, and custom DNS servers.  
  vnet_address_space = ["10.1.0.0/16"]

  # (Required) Project_Name, Subscription_type and environment are must to create resource names.
  project_name      = "tieto-internal"
  subscription_type = "shared"
  environment       = "dev"

  # Multiple Subnets, Service delegation, Service Endpoints 
  subnets = {
    gw_subnet = {
      subnet_name           = "snet-gw01"
      subnet_address_prefix = ["10.1.1.0/24"]
    }

    app_subnet = {
      subnet_name           = "snet-app01"
      subnet_address_prefix = ["10.1.2.0/24"]
      service_endpoints     = ["Microsoft.Storage"]
    }
  }

  # Adding TAG's to your Azure resources (Required)
  # ProjectName and Env are already declared above, to use them here, create a varible. 
  tags = {
    ProjectName  = "tieto-internal"
    Env          = "dev"
    Owner        = "user@example.com"
    BusinessUnit = "CORP"
    ServiceClass = "Gold"
  }
}
