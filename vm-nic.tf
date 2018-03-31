resource "azurerm_network_interface" "s1uw2-prx001-nic" { name = "s1uw2-prx001-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = false  ip_configuration { name = "s1uw2-prx001-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-frnt-a.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.50.197" } }
resource "azurerm_network_interface" "s1uw2-prx002-nic" { name = "s1uw2-prx002-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = false  ip_configuration { name = "s1uw2-prx002-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-frnt-c.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.51.149" } }
resource "azurerm_network_interface" "s1uw2-papi001-nic" { name = "s1uw2-papi001-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = false  ip_configuration { name = "s1uw2-papi001-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-a.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.90.196" } }
resource "azurerm_network_interface" "s1uw2-papi002-nic" { name = "s1uw2-papi002-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = false  ip_configuration { name = "s1uw2-papi002-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-c.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.91.19" } }
resource "azurerm_network_interface" "s1uw2-papi003-nic" { name = "s1uw2-papi003-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = false  ip_configuration { name = "s1uw2-papi003-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-a.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.90.176" } }
resource "azurerm_network_interface" "s1uw2-papi004-nic" { name = "s1uw2-papi004-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = false  ip_configuration { name = "s1uw2-papi004-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-c.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.91.224" } }
resource "azurerm_network_interface" "s1uw2-papi005-nic" { name = "s1uw2-papi005-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = false  ip_configuration { name = "s1uw2-papi005-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-a.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.90.27" } }
resource "azurerm_network_interface" "s1uw2-papi006-nic" { name = "s1uw2-papi006-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = false  ip_configuration { name = "s1uw2-papi006-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-c.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.91.211" } }
resource "azurerm_network_interface" "s1uw2-papi007-nic" { name = "s1uw2-papi007-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = false  ip_configuration { name = "s1uw2-papi007-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-a.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.90.65" } }
resource "azurerm_network_interface" "s1uw2-papi008-nic" { name = "s1uw2-papi008-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = false  ip_configuration { name = "s1uw2-papi008-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-c.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.91.173" } }
resource "azurerm_network_interface" "s1uw2-pdbq001-nic" { name = "s1uw2-pdbq001-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = false  ip_configuration { name = "s1uw2-pdbq001-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-a.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.90.202" } }
resource "azurerm_network_interface" "s1uw2-pdbq002-nic" { name = "s1uw2-pdbq002-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = false  ip_configuration { name = "s1uw2-pdbq002-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-c.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.91.162" } }
resource "azurerm_network_interface" "s1uw2-pext001-nic" { name = "s1uw2-pext001-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = true  ip_configuration { name = "s1uw2-pext001-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-a.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.90.93" } }
resource "azurerm_network_interface" "s1uw2-pext002-nic" { name = "s1uw2-pext002-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = true  ip_configuration { name = "s1uw2-pext002-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-c.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.91.229" } }
resource "azurerm_network_interface" "s1uw2-pmat001-nic" { name = "s1uw2-pmat001-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = true  ip_configuration { name = "s1uw2-pmat001-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-a.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.90.155" } }
resource "azurerm_network_interface" "s1uw2-pmat002-nic" { name = "s1uw2-pmat002-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = true  ip_configuration { name = "s1uw2-pmat002-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-papi-c.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.91.56" } }
resource "azurerm_network_interface" "s1uw2-pkbrk001-nic" { name = "s1uw2-pkbrk001-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = false  ip_configuration { name = "s1uw2-pkbrk001-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-konan-a.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.250.196" } }
resource "azurerm_network_interface" "s1uw2-pkbrk002-nic" { name = "s1uw2-pkbrk002-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = false  ip_configuration { name = "s1uw2-pkbrk002-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-konan-a.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.250.186" } }
resource "azurerm_network_interface" "s1uw2-pkidx001-nic" { name = "s1uw2-pkidx001-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = true  ip_configuration { name = "s1uw2-pkidx001-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-konan-a.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.250.35" } }
resource "azurerm_network_interface" "s1uw2-pksch101-nic" { name = "s1uw2-pksch101-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = true  ip_configuration { name = "s1uw2-pksch101-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-konan-a.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.250.161" } }
resource "azurerm_network_interface" "s1uw2-pksch102-nic" { name = "s1uw2-pksch102-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = true  ip_configuration { name = "s1uw2-pksch102-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-konan-c.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.251.182" } }
resource "azurerm_network_interface" "s1uw2-doco001-nic" { name = "s1uw2-doco001-nic" location = "${var.location}"  resource_group_name = "${azurerm_resource_group.rg-01.name}" enable_accelerated_networking = true  ip_configuration { name = "s1uw2-doco001-nic-iip" subnet_id = "${azurerm_subnet.sub-pri-idx-a.id}" private_ip_address_allocation = "Static" private_ip_address = "10.200.40.226" } }
