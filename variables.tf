variable "create_resource_group" {
  description = "Whether to create resource group and use it for all networking resources"
  default     = true
}

variable "resource_group_name" {
  description = "A container that holds related resources for an Azure solution"
  default     = "rg-demo-westeurope-01"
}

variable "location" {
  description = "The location/region to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'"
  default     = "westeurope"
}

variable "project_name" {
  description = "The name of the project."
  default     = ""
}

variable "subscription_type" {
  description = "Summary description of the purpose of the subscription that contains the resource. Often broken down by deployment environment type or specific workloads"
  default     = ""
}

variable "environment" {
  description = "The stage of the development lifecycle for the workload that the resource supports"
  default     = ""
}

variable "vnetwork_name" {
  description = "Name of your Azure Virtual Network"
  default     = "vnet-azure-westeurope-001"
}

variable "vnet_address_space" {
  description = "The address space to be used for the Azure virtual network."
  default     = ["10.0.0.0/16"]
}

variable "create_ddos_plan" {
  description = "Create an ddos plan - Default is false"
  default     = false
}

variable "dns_servers" {
  description = "List of dns servers to use for virtual network"
  default     = []
}

variable "ddos_plan_name" {
  description = "The name of AzureNetwork DDoS Protection Plan"
  default     = "azureddosplan01"
}

variable "create_network_watcher" {
  description = "Controls if Network Watcher resources should be created for the Azure subscription"
  default     = true
}

variable "netwatcher_name" {
  description = "The name of the Network Watcher"
  default     = "demo-nwwatcher"
}

variable "subnets" {
  description = "For each subnet, create an object that contain fields"
  default     = {}
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}
