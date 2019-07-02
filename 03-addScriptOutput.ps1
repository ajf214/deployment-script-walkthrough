param(
    # this way, on my client when testing, I can set the environment variable
    # should work in bash as well
    [Parameter]$apiKey = $env:SECRET_APIKEY 
)

# do operation to get address prefix
# can't use double quotes with inline script..
$Url = 'https://server.contoso.com:8089/new-ip-range' 
$Body = @{}

$result = Invoke-RestMethod -Method 'Post' -Uri $url -Credential $apiKey -Body $body

$addressPrefix = $result.newAddressRange
$subnetPrefix = $result.newSubnetRange


# OPEN ISSUE FOR HOW SCRIPT OUTPUTS SHOULD BE HANDLED

<# 
 these probably need a different name as they only pertain to deploymentScript
 adding these lines puts these outputs into a file that the deploymentScript resource can work with
#> 
Add-ScriptOutput('addressRange', $addressPrefix) # (outputName, outputValue)
Add-ScriptOutput('subnetRange', $subnetPrefix)


<#
requirements:
- run on client w/o having to reference a specific image
    * prefer not to have to install a separate module/script for local testing
- outputs need to be stored on disk as JSON in such a way that it can be read 
  by the deployment script resoruce 
    * should look like template outputs

# how AzDO does this...
# Write-Host "##vso[task.setvariable variable=resourceGroup.name]$resourceGroupName"

chat with powershell folks
 - who is pm over there...

#>