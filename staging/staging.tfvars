/** Main terraform vars files for staging  environment **/

#### Variables for staging  env resource group #####
resource_group_name        = "staging-rg"
resource_group_location    = "eastus"


###### variables for virtual network ##########
env                            =  "staging"
vnet_name                      =  "staging-vnet"
public_subnet_name             =  ["staging-public-subnet1", "staging-public-subnet2"]
private_subnet_name            =  ["staging-private-subnet-1", "staging-private-subnet-2", "staging-private-subnet-3", "staging-private-subnet-4"]
address_space                  =  ["10.0.0.0/16"]
public_address_prefix          =  ["10.0.36.0/24", "10.0.37.0/24"]
private_address_prefix         =  ["10.0.0.0/21", "10.0.2.0/21", "10.0.16.0/21", "10.0.24.0/21"]
dns_servers                    =  ["10.0.0.4"]

########### variables for nat gateway########################
nat_pub_ip_name                =  "staging-nat-public-ip"
nat_gtw_name                   =  "staging-nat-gtw1"
nat_pub_ip_prefix_name         =  "staging-nat-public-ip-prefix"
nat_alc_method                 =  "Static"
nat_sku                        =  "Standard"
#nat_zones                     =  ["1"]
nat_prefix_length              =  30
nat_timeout                    =  10


################### variable for Container Instance ##########
container_image_name           =  "stagingpresidio-container-Instance"
ip_address_type                =  "public"
dns_name_label                 =   "stagingpred-aci-label"
os_type                        =  "Linux"
container_name                 =  "staging-hello-world"
image_name                     =  "mcr.microsoft.com/azuredocs/aci-helloworld:latest"
cpu_val                        =  "1"
mem_val                        =  "2"
port_val                       =  80
sidecar_name                   =  "staging-sidecar"
sidecar_img                    =  "mcr.microsoft.com/azuredocs/aci-tutorial-sidecar"
sidecar_cpu                    =   "1"
sidecar_mem                    =  "2"


###############  Monitoring Variables declared Here ##############
monitor_name               =  "stagingpredmonitoring" 
account_tier               =  "Standard"
repl_type                  = "LRS"
mon_grp_name               =  "staging _monitoring_group"
short_name                 =  "stg _mon_grp"
alert_name                 =  "staging _mon-alert"
alert_description          = "staging -mon-alert related to staging  account"
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
storage_account_name = "predstagingstorageacc"
cdn_endpoint_name = "predstagingendpoint"
 

################# Variables for CosmoDB ###################
cosmodb_name = "stagingpredcosmodghb2232sz"
failover_location = "westus2"
cosmo_resource_group_location = "eastus"
cosmo_resource_group_name = "cosmodb-rg"

############### variables for NSG ###############
nsg_name       = "staging-rg-nsg"
nsg_subnet_id   = "10.0.0.0/21"


#### variables for application gateway  ######
agp_ip  = "stagingpresidioidentity_apgw_pubip_name"
apgw_name   =  "staging_test_appgw"
gwip_confname  =  "staging_appgw_confname"
gwip_sub_id   =  ["10.0.34.0/24"]






#### firewall vars ###
firewall_name = "azfirewall"


#### subscription vars ####
subscription_id = "928ab10d-b722-4dd5-b957-6a8fbea1b041"

