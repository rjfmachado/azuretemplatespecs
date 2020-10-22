$rg = Read-Host -Prompt 'Resource Group Name:'
New-AzResourceGroup -Name $rg -Location 'West Europe'
New-AzResourceGroupDeployment -Name virtualnetwork -ResourceGroupName $rg -TemplateFile azuredeploy.json -TemplateParameterFile azuredeploy.test.json