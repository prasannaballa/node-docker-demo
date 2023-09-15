 # Here we are defining the application object properties
# Remember to change the AppId, AppSecret and TenantID values accordingly.


# Authenticate to Azure

if ($action -eq "start") {
    Start-AzWebApp -ResourceGroupName $resourceGroupName -Name $webAppName
    Write-Output "Azure App Service '$webAppName' started."
}
elseif ($action -eq "stop") {
    Stop-AzWebApp -ResourceGroupName $resourceGroupName -Name $webAppName
    Write-Output "Azure App Service '$webAppName' stopped."
}
else {
    Write-Output "Invalid action. Use 'start' or 'stop'."
}

 # Run the PowerShell script to start or stop the Azure App Service

  
