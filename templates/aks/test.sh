az group create --location westeurope --resource-group testtemplatespecaks
az deployment group create \
  --name aks \
  --resource-group testtemplatespecaks \
  --template-file azuredeploy.json \
  --parameters @azuredeploy.test.json