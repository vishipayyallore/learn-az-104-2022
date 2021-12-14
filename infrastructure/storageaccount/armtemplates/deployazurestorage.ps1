$templateFile = "deployazurestorage.json"
$today=Get-Date -Format "MMddyyyyHHmmss"
$deploymentName="blanktemplate-"+"$today"

Set-AzDefault -ResourceGroupName rg-dotnet-learners-house
New-AzResourceGroupDeployment -Name $deploymentName -TemplateFile $templateFile
