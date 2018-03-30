resource "azurerm_network_security_group" "sub-pri-fdbk-nsg" { name = "sub-pri-fdbk-nsg" location = "${var.location}" resource_group_name = "${azurerm_resource_group.rg-01.name}" }
resource "azurerm_network_security_group" "sub-pri-frnt-nsg" { name = "sub-pri-frnt-nsg" location = "${var.location}" resource_group_name = "${azurerm_resource_group.rg-01.name}" }
resource "azurerm_network_security_group" "sub-pri-iddb-nsg" { name = "sub-pri-iddb-nsg" location = "${var.location}" resource_group_name = "${azurerm_resource_group.rg-01.name}" }
resource "azurerm_network_security_group" "sub-pri-idx-nsg" { name = "sub-pri-idx-nsg" location = "${var.location}" resource_group_name = "${azurerm_resource_group.rg-01.name}" }
resource "azurerm_network_security_group" "sub-pri-konan-nsg" { name = "sub-pri-konan-nsg" location = "${var.location}" resource_group_name = "${azurerm_resource_group.rg-01.name}" }
resource "azurerm_network_security_group" "sub-pri-papi-nsg" { name = "sub-pri-papi-nsg" location = "${var.location}" resource_group_name = "${azurerm_resource_group.rg-01.name}" }
resource "azurerm_network_security_group" "sub-pri-stg-nsg" { name = "sub-pri-stg-nsg" location = "${var.location}" resource_group_name = "${azurerm_resource_group.rg-01.name}" }
resource "azurerm_network_security_group" "sub-pub-nsg" { name = "sub-pub-nsg" location = "${var.location}" resource_group_name = "${azurerm_resource_group.rg-01.name}" }




resource "azurerm_network_security_rule" "sub-pri-papi-nsgrule-4222" {
  name                        = "sub-pri-papi-nsgrule-4222"
  priority                    = 1000
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "4222"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = "${azurerm_resource_group.rg-01.name}"
  network_security_group_name = "${azurerm_network_security_group.sub-pri-papi-nsg.name}"
}
