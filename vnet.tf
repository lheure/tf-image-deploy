# Create virtual network
resource "azurerm_virtual_network" "vnet-01" {
    name                = "${var.prefix}-vnet-01"
    address_space       = ["10.200.0.0/16"]
    location            = "${var.location}"
    resource_group_name = "${azurerm_resource_group.rg-01.name}"

    tags {
        environment = "${var.tag}"
    }
}

data "azurerm_virtual_network" "rg-management-vnet" {
  name                 = "rg-management-vnet"
  resource_group_name  = "rg-management"
}

resource "azurerm_virtual_network_peering" "vnetpeer-visioniaas-to-mgmt" {
  name                      = "vnetpeer-visioniaas-to-mgmt"
  resource_group_name       = "rg-visioncloud-iaas-stg"
  virtual_network_name      = "${azurerm_virtual_network.vnet-01.name}"
  remote_virtual_network_id = "${azurerm_virtual_network.rg-management-vnet.id}"
}