/** Main terraform vars files for prod environment **/

#### Variables for prod env resource group #####
resource_group_name        = "prod-rg"
resource_group_location    = "eastus"


###### variables for virtual network ##########
env                            =  "prod"
vnet_name                      =  "vnet"
public_subnet_name             =  ["prod-public-subnet1", "prod-public-subnet2"]
private_subnet_name            =  ["prod-private-subnet-1", "prod-private-subnet-2", "prod-private-subnet-3", "prod-private-subnet-4"]
address_space                  =  ["10.0.0.0/16"]
public_address_prefix          =  ["10.0.36.0/24", "10.0.37.0/24"]
private_address_prefix         =  ["10.0.0.0/21", "10.0.2.0/21", "10.0.16.0/21", "10.0.24.0/21"]
dns_servers                    =  ["10.0.0.4"]

########### variables for nat gateway########################
nat_pub_ip_name                =  "prod-nat-public-ip"
nat_gtw_name                   =  "prod-nat-gtw1"
nat_pub_ip_prefix_name         =  "prod-nat-public-ip-prefix"
nat_alc_method                 =  "Static"
nat_sku                        =  "Standard"
#nat_zones                     =  ["1"]
nat_prefix_length              =  30
nat_timeout                    =  10


################### variable for Container Instance ##########
container_image_name           =  "prodpresidio-container-Instance"
ip_address_type                =  "public"
dns_name_label                 =   "prodvvw-aci-label"
os_type                        =  "Linux"
container_name                 =  "prodv-hello-world"
image_name                     =  "mcr.microsoft.com/azuredocs/aci-helloworld:latest"
cpu_val                        =  "1"
mem_val                        =  "2"
port_val                       =  80
sidecar_name                   =  "prodv-sidecar"
sidecar_img                    =  "mcr.microsoft.com/azuredocs/aci-tutorial-sidecar"
sidecar_cpu                    =   "1"
sidecar_mem                    =  "2"


###############  Monitoring Variables declared Here ##############
monitor_name               =  "prodpresidiomonitoringrg" 
account_tier               =  "Standard"
repl_type                  = "LRS"
mon_grp_name               =  "prod_monitoring_group"
short_name                 =  "prod_mongrp"
alert_name                 =  "prod_mon-alert"
alert_description          = "prod-mon-alert related to prod account"
namespcae_name             =  "Microsoft.Storage/storageAccounts"
metricname                 =  "Transactions"
aggregation_type           =   "Total"
operator_type              =  "GreaterThan"
alert_threshold            =  50
dimension_name             =  "ApiName"
dimention_operator         =  "Include"
dimension_values           =  "*"

################ Variables for CDN #####################
cdn_origin_name    = "gophtests"
cdn_profile   = "cdn-profile-testssskd"
storage_account_name = "prodsidiostorageacc"
cdn_endpoint_name = "prodsidioendpoint"
 

################# Variables for CosmoDB ###################
cosmodb_name = "prodpredcosmodghb2232sz"
failover_location = "westus2"
cosmo_resource_group_location = "eastus"
cosmo_resource_group_name = "cosmodb-rg"

############### variables for NSG ###############
nsg_name       = "prod-rg-nsg"
nsg_subnet_id   = "10.0.0.0/21"


#### variables for application gateway  ######
agp_ip  = "prodpresidioidentity_apgw_pubip_name"
apgw_name   =  "prod_test_appgw"
gwip_confname  =  "prod_appgw_confname"
gwip_sub_id   =  ["10.0.34.0/24"]






#### firewall vars #####
firewall_name = "azurefirewall"

subscription_id = "83d4dd5a-8e87-44ed-bc4e-2d78f4573128"


