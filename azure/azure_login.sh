# Launch PowerShell
az --version

# Sign in to the Azure Account
# Replace <username> and <password> with your actual username and password
az login -u <username> -p <password>
# Or to sign in interactively
az login

# Create a service principal
# Replace the <ServicePrincipalName> with a name of your own choice
az ad sp create-for-rbac --name ServicePrincipalName

## Assign the 'Contributor' role
# Replace the APP_ID with the output appId of the create-for-rbac command. 
az role assignment create --assignee APP_ID --role Contributor

## Verify Role Assignment
# Replace the APP_ID with the output appId of the create-for-rbac command. 
az role assignment list --assignee APP_ID

# Create a resource
ansible localhost -m azure_rm_resourcegroup -a "name=ansible location=eastus"

## In case of error,
# Failed to import the required Python library (packaging)
pip3 install ansible[azure]

# re-run - Create a resource
ansible localhost -m azure_rm_resourcegroup -a "name=ansible location=eastus"
## End - Error

# Verify the creation
az group list
