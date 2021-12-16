$templateFile = "deployservicebusqueue.json"
$today=Get-Date -Format "MMddyyyyHHmmss"
$deploymentName="servicebusqueue-"+"$today"

Set-AzDefault -ResourceGroupName rg-dotnet-learners-house
New-AzResourceGroupDeployment -Name $deploymentName -TemplateFile $templateFile
