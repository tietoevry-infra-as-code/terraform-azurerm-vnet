module "vnet" {
  source                  = "github.com/tietoevry-infra-as-code/terraform-azurerm-vnet?ref=v1.0.0"
  create_resource_group   = false

# Using Custom names and VNet/subnet Address Prefix (Recommended)
  resource_group_name     = "rg-demo-westeurope-01"
  vnetwork_name           = "vnet-demo-westeurope-001"
  location                = "westeurope"
  vnet_address_space      = ["10.1.0.0/16"]
  private_subnets         = ["snet-app01","snet-app01"]
  subnet_address_prefix   = ["10.1.2.0/24","10.1.3.0/24"]

# Adding Network watcher, and custom DNS servers (Optional)
  create_ddos_plan        = false
  dns_servers             = []

# Adding TAG's to your Azure resources (Required)
  tags = {
    Terraform   = "true"
    Environment = "dev"
    Owner       = "test-user"
  }
}