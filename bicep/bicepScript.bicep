param location string = resourceGroup().location

@minLength(3)
@maxLength(24)
param stgName string

var storagename = toLower(stgName)


resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storagename
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
  properties: {
    allowBlobPublicAccess: false
    allowSharedKeyAccess: false
  }
}
