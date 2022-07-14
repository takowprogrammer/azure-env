/** Main terraform vars files for dev environment **/

#### Variables for dev env resource group #####
resource_group_name     = "devv-rg"
resource_group_location = "eastus"


###### variables for virtual network ##########
env                    = "dev"
vnet_name              = "vnet"
public_subnet_name     = ["dev-public-subnet1", "dev-public-subnet2"]
private_subnet_name    = ["dev-private-subnet-1", "dev-private-subnet-2", "dev-private-subnet-3", "dev-private-subnet-4"]
address_space          = ["10.0.0.0/16"]
public_address_prefix  = ["10.0.36.0/24", "10.0.37.0/24"]
private_address_prefix = ["10.0.0.0/21", "10.0.2.0/21", "10.0.16.0/21", "10.0.24.0/21"]
dns_servers            = ["10.0.0.4"]

########### variables for nat gateway########################
nat_pub_ip_name        = "dev-nat-public-ip"
nat_gtw_name           = "dev-nat-gtw1"
nat_pub_ip_prefix_name = "dev-nat-public-ip-prefix"
nat_alc_method         = "Static"
nat_sku                = "Standard"
#nat_zones                     =  ["1"]
nat_prefix_length = 30
nat_timeout       = 10


################### variable for Container Instance ##########
container_image_name = "devpresidio-container-Instance"
ip_address_type      = "public"
dns_name_label       = "devpred-aci-label"
os_type              = "Linux"
container_name       = "devv-hello-world"
image_name           = "mcr.microsoft.com/azuredocs/aci-helloworld:latest"
cpu_val              = "1"
mem_val              = "2"
port_val             = 80
sidecar_name         = "devv-sidecar"
sidecar_img          = "mcr.microsoft.com/azuredocs/aci-tutorial-sidecar"
sidecar_cpu          = "1"
sidecar_mem          = "2"
app_service_sku      = "S1"

###############  Monitoring Variables declared Here ##############
monitor_name       = "devpredmonitoring"
account_tier       = "Standard"
repl_type          = "LRS"
mon_grp_name       = "dev_monitoring_group"
short_name         = "dev_mongrp"
alert_name         = "dev_mon-alert"
alert_description  = "dev-mon-alert related to dev account"
namespcae_name     = "Microsoft.Storage/storageAccounts"
metricname         = "Transactions"
aggregation_type   = "Total"
operator_type      = "GreaterThan"
alert_threshold    = 50
dimension_name     = "ApiName"
dimention_operator = "Include"
dimension_values   = "*"

################ Variables for CDN #####################
cdn_origin_name      = "gophtests"
cdn_profile          = "cdn-profile-testssskd"
storage_account_name = "presidiodevstorageacc"
cdn_endpoint_name    = "presidioidentityendpoint"


################# Variables for CosmoDB ###################
cosmodb_name                  = "devpredcosmodghb2232sz"
failover_location             = "westus2"
cosmo_resource_group_location = "eastus"
cosmo_resource_group_name     = "cosmodb-rg"

############### variables for NSG ###############
nsg_name      = "dev-rg-nsg"
nsg_subnet_id = "10.0.0.0/21"


#### variables for application gateway  ######
agp_ip        = "devpresidioidentity_apgw_pubip_name"
apgw_name     = "dev_test_appgw"
gwip_confname = "dev_appgw_confname"
gwip_sub_id   = ["10.0.34.0/24"]






#### firewall vars #####
firewall_name = "azfirewall"


#### subscription vars ####
subscription_id = "3c775571-88ab-48d7-8002-62804ce9b833"

