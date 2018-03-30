resource "azurerm_subnet" "sub-pri-fdbk-a" { name = "sub-pri-fdbk-a" virtual_network_name = "${azurerm_virtual_network.vnet-01.name}" resource_group_name  = "${azurerm_resource_group.rg-01.name}"  address_prefix       = "10.200.60.0/24" network_security_group_id = "${azurerm_network_security_group.sub-pri-fdbk-nsg.id}"  }
resource "azurerm_subnet" "sub-pri-fdbk-c" { name = "sub-pri-fdbk-c" virtual_network_name = "${azurerm_virtual_network.vnet-01.name}" resource_group_name  = "${azurerm_resource_group.rg-01.name}"  address_prefix       = "10.200.61.0/24" network_security_group_id = "${azurerm_network_security_group.sub-pri-fdbk-nsg.id}"  }
resource "azurerm_subnet" "sub-pri-frnt-a" { name = "sub-pri-frnt-a" virtual_network_name = "${azurerm_virtual_network.vnet-01.name}" resource_group_name  = "${azurerm_resource_group.rg-01.name}"  address_prefix       = "10.200.50.0/24" network_security_group_id = "${azurerm_network_security_group.sub-pri-frnt-nsg.id}"  }
resource "azurerm_subnet" "sub-pri-frnt-c" { name = "sub-pri-frnt-c" virtual_network_name = "${azurerm_virtual_network.vnet-01.name}" resource_group_name  = "${azurerm_resource_group.rg-01.name}"  address_prefix       = "10.200.51.0/24" network_security_group_id = "${azurerm_network_security_group.sub-pri-frnt-nsg.id}"  }
resource "azurerm_subnet" "sub-pri-iddb-a" { name = "sub-pri-iddb-a" virtual_network_name = "${azurerm_virtual_network.vnet-01.name}" resource_group_name  = "${azurerm_resource_group.rg-01.name}"  address_prefix       = "10.200.120.0/24" network_security_group_id = "${azurerm_network_security_group.sub-pri-iddb-nsg.id}"  }
resource "azurerm_subnet" "sub-pri-iddb-c" { name = "sub-pri-iddb-c" virtual_network_name = "${azurerm_virtual_network.vnet-01.name}" resource_group_name  = "${azurerm_resource_group.rg-01.name}"  address_prefix       = "10.200.121.0/24" network_security_group_id = "${azurerm_network_security_group.sub-pri-iddb-nsg.id}"  }
resource "azurerm_subnet" "sub-pri-idx-a" { name = "sub-pri-idx-a" virtual_network_name = "${azurerm_virtual_network.vnet-01.name}" resource_group_name  = "${azurerm_resource_group.rg-01.name}"  address_prefix       = "10.200.40.0/24" network_security_group_id = "${azurerm_network_security_group.sub-pri-idx-nsg.id}"  }
resource "azurerm_subnet" "sub-pri-idx-c" { name = "sub-pri-idx-c" virtual_network_name = "${azurerm_virtual_network.vnet-01.name}" resource_group_name  = "${azurerm_resource_group.rg-01.name}"  address_prefix       = "10.200.41.0/24" network_security_group_id = "${azurerm_network_security_group.sub-pri-idx-nsg.id}"  }
resource "azurerm_subnet" "sub-pri-konan-a" { name = "sub-pri-konan-a" virtual_network_name = "${azurerm_virtual_network.vnet-01.name}" resource_group_name  = "${azurerm_resource_group.rg-01.name}"  address_prefix       = "10.200.250.0/24" network_security_group_id = "${azurerm_network_security_group.sub-pri-konan-nsg.id}"  }
resource "azurerm_subnet" "sub-pri-konan-c" { name = "sub-pri-konan-c" virtual_network_name = "${azurerm_virtual_network.vnet-01.name}" resource_group_name  = "${azurerm_resource_group.rg-01.name}"  address_prefix       = "10.200.251.0/24" network_security_group_id = "${azurerm_network_security_group.sub-pri-konan-nsg.id}"  }
resource "azurerm_subnet" "sub-pri-papi-a" { name = "sub-pri-papi-a" virtual_network_name = "${azurerm_virtual_network.vnet-01.name}" resource_group_name  = "${azurerm_resource_group.rg-01.name}"  address_prefix       = "10.200.90.0/24" network_security_group_id = "${azurerm_network_security_group.sub-pri-papi-nsg.id}"  }
resource "azurerm_subnet" "sub-pri-papi-c" { name = "sub-pri-papi-c" virtual_network_name = "${azurerm_virtual_network.vnet-01.name}" resource_group_name  = "${azurerm_resource_group.rg-01.name}"  address_prefix       = "10.200.91.0/24" network_security_group_id = "${azurerm_network_security_group.sub-pri-papi-nsg.id}"  }
resource "azurerm_subnet" "sub-pri-stg-a" { name = "sub-pri-stg-a" virtual_network_name = "${azurerm_virtual_network.vnet-01.name}" resource_group_name  = "${azurerm_resource_group.rg-01.name}"  address_prefix       = "10.200.100.0/24" network_security_group_id = "${azurerm_network_security_group.sub-pri-stg-nsg.id}"  }
resource "azurerm_subnet" "sub-pub-a" { name = "sub-pub-a" virtual_network_name = "${azurerm_virtual_network.vnet-01.name}" resource_group_name  = "${azurerm_resource_group.rg-01.name}"  address_prefix       = "10.200.10.0/24" network_security_group_id = "${azurerm_network_security_group.sub-pub-nsg.id}"  }
resource "azurerm_subnet" "sub-pub-c" { name = "sub-pub-c" virtual_network_name = "${azurerm_virtual_network.vnet-01.name}" resource_group_name  = "${azurerm_resource_group.rg-01.name}"  address_prefix       = "10.200.30.0/24" network_security_group_id = "${azurerm_network_security_group.sub-pub-nsg.id}"  }
