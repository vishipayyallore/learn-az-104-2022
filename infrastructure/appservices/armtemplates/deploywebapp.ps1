$templateFile = "deploywebapp.json"
$today=Get-Date -Format "MMddyyyyHHmmssfffff"
$deploymentName="azurewebapp-"+"$today"
$resourceGroupName = "rg-dotnet-learners-house"

Set-AzDefault -ResourceGroupName $resourceGroupName
New-AzResourceGroupDeployment -Name $deploymentName -TemplateFile $templateFile -storageName stnikank
