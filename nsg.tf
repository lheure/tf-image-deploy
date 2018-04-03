resource "azurerm_network_security_group" "sub-pri-fdbk-nsg" { name = "sub-pri-fdbk-nsg" location = "${var.location}" resource_group_name = "${azurerm_resource_group.rg-01.name}" }
resource "azurerm_network_security_group" "sub-pri-frnt-nsg" { name = "sub-pri-frnt-nsg" location = "${var.location}" resource_group_name = "${azurerm_resource_group.rg-01.name}" }
resource "azurerm_network_security_group" "sub-pri-iddb-nsg" { name = "sub-pri-iddb-nsg" location = "${var.location}" resource_group_name = "${azurerm_resource_group.rg-01.name}" }
resource "azurerm_network_security_group" "sub-pri-idx-nsg" { name = "sub-pri-idx-nsg" location = "${var.location}" resource_group_name = "${azurerm_resource_group.rg-01.name}" }
resource "azurerm_network_security_group" "sub-pri-konan-nsg" { name = "sub-pri-konan-nsg" location = "${var.location}" resource_group_name = "${azurerm_resource_group.rg-01.name}" }
resource "azurerm_network_security_group" "sub-pri-papi-nsg" { name = "sub-pri-papi-nsg" location = "${var.location}" resource_group_name = "${azurerm_resource_group.rg-01.name}" }
resource "azurerm_network_security_group" "sub-pri-stg-nsg" { name = "sub-pri-stg-nsg" location = "${var.location}" resource_group_name = "${azurerm_resource_group.rg-01.name}" }
resource "azurerm_network_security_group" "sub-pub-nsg" { name = "sub-pub-nsg" location = "${var.location}" resource_group_name = "${azurerm_resource_group.rg-01.name}" }


resource "azurerm_network_security_rule" "sub-pri-fdbk-nsg-mgmt-to-subnet-4222" { name = "sub-pri-fdbk-nsg-mgmt-to-subnet-4222" priority = 3001 direction = "Inbound" access = "Allow" protocol = "Tcp" source_port_range = "*" destination_port_range = "4222" source_address_prefix = "10.0.1.0/24" destination_address_prefix = "10.200.0.0/16" resource_group_name = "${azurerm_resource_group.rg-01.name}" network_security_group_name = "${azurerm_network_security_group.sub-pri-fdbk-nsg.name}" }
resource "azurerm_network_security_rule" "sub-pri-frnt-nsg-mgmt-to-subnet-4222" { name = "sub-pri-frnt-nsg-mgmt-to-subnet-4222" priority = 3001 direction = "Inbound" access = "Allow" protocol = "Tcp" source_port_range = "*" destination_port_range = "4222" source_address_prefix = "10.0.1.0/24" destination_address_prefix = "10.200.0.0/16" resource_group_name = "${azurerm_resource_group.rg-01.name}" network_security_group_name = "${azurerm_network_security_group.sub-pri-frnt-nsg.name}" }
resource "azurerm_network_security_rule" "sub-pri-iddb-nsg-mgmt-to-subnet-4222" { name = "sub-pri-iddb-nsg-mgmt-to-subnet-4222" priority = 3001 direction = "Inbound" access = "Allow" protocol = "Tcp" source_port_range = "*" destination_port_range = "4222" source_address_prefix = "10.0.1.0/24" destination_address_prefix = "10.200.0.0/16" resource_group_name = "${azurerm_resource_group.rg-01.name}" network_security_group_name = "${azurerm_network_security_group.sub-pri-iddb-nsg.name}" }
resource "azurerm_network_security_rule" "sub-pri-idx-nsg-mgmt-to-subnet-4222" { name = "sub-pri-idx-nsg-mgmt-to-subnet-4222" priority = 3001 direction = "Inbound" access = "Allow" protocol = "Tcp" source_port_range = "*" destination_port_range = "4222" source_address_prefix = "10.0.1.0/24" destination_address_prefix = "10.200.0.0/16" resource_group_name = "${azurerm_resource_group.rg-01.name}" network_security_group_name = "${azurerm_network_security_group.sub-pri-idx-nsg.name}" }
resource "azurerm_network_security_rule" "sub-pri-konan-nsg-mgmt-to-subnet-4222" { name = "sub-pri-konan-nsg-mgmt-to-subnet-4222" priority = 3001 direction = "Inbound" access = "Allow" protocol = "Tcp" source_port_range = "*" destination_port_range = "4222" source_address_prefix = "10.0.1.0/24" destination_address_prefix = "10.200.0.0/16" resource_group_name = "${azurerm_resource_group.rg-01.name}" network_security_group_name = "${azurerm_network_security_group.sub-pri-konan-nsg.name}" }
resource "azurerm_network_security_rule" "sub-pri-papi-nsg-mgmt-to-subnet-4222" { name = "sub-pri-papi-nsg-mgmt-to-subnet-4222" priority = 3001 direction = "Inbound" access = "Allow" protocol = "Tcp" source_port_range = "*" destination_port_range = "4222" source_address_prefix = "10.0.1.0/24" destination_address_prefix = "10.200.0.0/16" resource_group_name = "${azurerm_resource_group.rg-01.name}" network_security_group_name = "${azurerm_network_security_group.sub-pri-papi-nsg.name}" }
resource "azurerm_network_security_rule" "sub-pri-stg-nsg-mgmt-to-subnet-4222" { name = "sub-pri-stg-nsg-mgmt-to-subnet-4222" priority = 3001 direction = "Inbound" access = "Allow" protocol = "Tcp" source_port_range = "*" destination_port_range = "4222" source_address_prefix = "10.0.1.0/24" destination_address_prefix = "10.200.0.0/16" resource_group_name = "${azurerm_resource_group.rg-01.name}" network_security_group_name = "${azurerm_network_security_group.sub-pri-stg-nsg.name}" }
resource "azurerm_network_security_rule" "sub-pub-nsg-mgmt-to-subnet-4222" { name = "sub-pub-nsg-mgmt-to-subnet-4222" priority = 3001 direction = "Inbound" access = "Allow" protocol = "Tcp" source_port_range = "*" destination_port_range = "4222" source_address_prefix = "10.0.1.0/24" destination_address_prefix = "10.200.0.0/16" resource_group_name = "${azurerm_resource_group.rg-01.name}" network_security_group_name = "${azurerm_network_security_group.sub-pub-nsg.name}" }
