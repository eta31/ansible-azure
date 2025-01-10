## Create Environment Variables
# Azure Subscription Id
subscriptionid=$(az account show --query id --output tsv)

# Azure Client Id
# Replace <appId> with the actual App Id
clientid=<appId>

# Azure Secret. 
# Replace <Password> with the auto-generated password for service principal.
secret=<password>

# Azure Tenant Id
# Replace <tenant> with the actual tenant Id
tenantid=<tenant>

# Environment Variables
export AZURE_SUBSCRIPTION_ID=$subscriptionid; 
export AZURE_CLIENT_ID=$clientid;
export AZURE_SECRET=$secret;
export AZURE_TENANT=$tenantid;

# echo variables and save them for later use.
echo $AZURE_SUBSCRIPTION_ID
echo $AZURE_CLIENT_ID
echo $AZURE_SECRET
echo $AZURE_TENANT

