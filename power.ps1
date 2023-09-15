 # Here we are defining the application object properties
# Remember to change the AppId, AppSecret and TenantID values accordingly.


# Authenticate to Azure
Connect-AzAccount

if ($action -eq "start") {
    Start-AzWebApp -ResourceGroupName $node -Name $nodeapp23
    Write-Output "Azure App Service '$nodeapp23' started."
}
elseif ($action -eq "stop") {
    Stop-AzWebApp -ResourceGroupName $node -Name $nodeapp23
    Write-Output "Azure App Service '$nodeapp23' stopped."
}
else {
    Write-Output "Invalid action. Use 'start' or 'stop'."
}

 # Run the PowerShell script to start or stop the Azure App Service

  
