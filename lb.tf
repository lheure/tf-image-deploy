resource "azurerm_lb" "s1uw2-ielb-pdbq-konan" {  name                = "s1uw2-ielb-pdbq-konan"  location            = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}"  frontend_ip_configuration { name = "s1uw2-ielb-pdbq-konan-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-a.id}" private_ip_address = "10.200.90.4"  private_ip_address_allocation  = "Static"  }  }

resource "azurerm_lb" "s1uw2-ielb-pext" {  name                = "s1uw2-ielb-pext"  location            = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}"  frontend_ip_configuration { name = "s1uw2-ielb-pext-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-a.id}" private_ip_address = "10.200.90.5"  private_ip_address_allocation  = "Static"  }  }

resource "azurerm_lb" "s1uw2-ielb-pkbrk-konan" {  name                = "s1uw2-ielb-pkbrk-konan"  location            = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}"  frontend_ip_configuration { name = "s1uw2-ielb-pkbrk-konan-iip" subnet_id = "${azurerm_subnet.sub-pri-konan-a.id}" private_ip_address = "10.200.250.4"  private_ip_address_allocation  = "Static"  }  }
resource "azurerm_lb" "s1uw2-ielb-pmat" {  name                = "s1uw2-ielb-pmat"  location            = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}"  frontend_ip_configuration { name = "s1uw2-ielb-pmat-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-a.id}" private_ip_address = "10.200.90.6"  private_ip_address_allocation  = "Static"  }  }



resource "azurerm_lb" "s1uw2-ielb-papi" {  name                = "s1uw2-ielb-papi"  location            = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}"  frontend_ip_configuration { name = "s1uw2-ielb-papi-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-a.id}" private_ip_address = "10.200.90.7"  private_ip_address_allocation  = "Static"  }  }
