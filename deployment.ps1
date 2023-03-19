$resourceGroup="wsb-wawa"
$deploymentName="zadaniedeployment"
# New-AzResourceGroupDeployment -ResourceGroupName $resourceGroup -Name $deploymentName -TemplateFile "C:\Users\machn\OneDrive - Commitstorm\Dokumenty\Wsb\arm\storage.json" -TemplateParameterFile "C:\Users\machn\OneDrive - Commitstorm\Dokumenty\Wsb\arm\parameters.json" -Mode Complete
New-AzResourceGroupDeployment -ResourceGroupName $resourceGroup -Name $deploymentName -TemplateFile .\zadanie.json