/** Main terraform vars files for qa environment **/

#### Variables for qa env resource group #####
resource_group_name        = "qa-rg"
resource_group_location    = "eastus"


###### variables for virtual network ##########
env                            =  "qa"
vnet_name                      =  "vnet"
public_subnet_name             =  ["qa-public-subnet1", "qa-public-subnet2"]
private_subnet_name            =  ["qa-private-subnet-1", "qa-private-subnet-2", "qa-private-subnet-3", "qa-private-subnet-4"]
address_space                  =  ["10.0.0.0/16"]
public_address_prefix          =  ["10.0.36.0/24", "10.0.37.0/24"]
private_address_prefix         =  ["10.0.0.0/21", "10.0.2.0/21", "10.0.16.0/21", "10.0.24.0/21"]
dns_servers                    =  ["10.0.0.4"]

########### variables for nat gateway########################
nat_pub_ip_name                =  "qa-nat-public-ip"
nat_gtw_name                   =  "qa-nat-gtw1"
nat_pub_ip_prefix_name         =  "qa-nat-public-ip-prefix"
nat_alc_method                 =  "Static"
nat_sku                        =  "Standard"
#nat_zones                     =  ["1"]
nat_prefix_length              =  30
nat_timeout                    =  10


################### variable for Container Instance ##########
container_image_name           =  "qapresidio-container-Instance"
ip_address_type                =  "public"
dns_name_label                 =   "qapred-aci-label"
os_type                        =  "Linux"
container_name                 =  "qav-hello-world"
image_name                     =  "mcr.microsoft.com/azuredocs/aci-helloworld:latest"
cpu_val                        =  "1"
mem_val                        =  "2"
port_val                       =  80
sidecar_name                   =  "qav-sidecar"
sidecar_img                    =  "mcr.microsoft.com/azuredocs/aci-tutorial-sidecar"
sidecar_cpu                    =   "1"
sidecar_mem                    =  "2"
app_service_sku = "S1"

###############  Monitoring Variables declared Here ##############
monitor_name               =  "qapredmonitoring" 
account_tier               =  "Standard"
repl_type                  = "LRS"
mon_grp_name               =  "qa_monitoring_group"
short_name                 =  "qa_mongrp"
alert_name                 =  "qa_mon-alert"
alert_description          = "qa-mon-alert related to qa account"
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
storage_account_name = "qapredstorageacc"
cdn_endpoint_name = "qapredendpoint"
 

################# Variables for CosmoDB ###################
cosmodb_name = "qapredcosmodghb2232sz"
failover_location = "westus2"
cosmo_resource_group_location = "eastus"
cosmo_resource_group_name = "cosmodb-rg"

############### variables for NSG ###############
nsg_name       = "qa-rg-nsg"
nsg_subnet_id   = "10.0.0.0/21"


#### variables for application gateway  ######
agp_ip  = "qapresidioidentity_apgw_pubip_name"
apgw_name   =  "qa_test_appgw"
gwip_confname  =  "appgw_confname"
gwip_sub_id   =  ["10.0.34.0/24"]






#### firewall vars #####
firewall_name = "azfirewall"


######### subscription id #########
subscription_id = "66db772a-8620-499b-a4a7-0efa22611bed"