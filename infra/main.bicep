param location string = 'eastus'

resource appServicePlan 'Microsoft.Web/serverfarms@2022-03-01' = {
  name: 'sampleAppPlan'
  location: location
  sku: {
    name: 'B1'
    tier: 'Basic'
  }
}

resource webApp 'Microsoft.Web/sites@2022-03-01' = {
  name: 'sample-webapp-${uniqueString(resourceGroup().id)}'
  location: location
  properties: {
    serverFarmId: appServicePlan.id
  }
}
