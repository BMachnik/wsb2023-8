param webAppName string = uniqueString(resourceGroup().id) 
var appServicePlanName = toLower('AppServicePlan-${webAppName}')
param sku string = 'F1' // The SKU of App Service Plan
var webSiteName = toLower('wapp-${webAppName}')
param location string = resourceGroup().location // Location for all resources

resource appServicePlan 'Microsoft.Web/serverfarms@2020-06-01' = {
  name: appServicePlanName
  location: location
  properties: {
    reserved: true
  }
  sku: {
    name: sku
  }
}

resource appService 'Microsoft.Web/sites@2020-06-01' = {
  name: webSiteName
  location: location
  properties: {
    serverFarmId: appServicePlan.id
  }
}
