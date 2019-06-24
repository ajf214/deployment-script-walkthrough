$apiKey = $someSecret

# do operation to get address prefix
$Cred = Get-Credential # not sure how this works
$Url = 'https://server.contoso.com:8089/new-ip-range' # can't use double quotes with inline script..
$Body = @{}

$result = Invoke-RestMethod -Method 'Post' -Uri $url -Credential $Cred -Body $body

$addressPrefix = $result.newAddressRange
$subnetPrefix = $result.newSubnetRange

<# 
 these probably need a different name as they only pertain to deploymentScript
 adding these lines puts these outputs into a file that the deploymentScript resource can work with
#> 
Add-ScriptOutput('addressRange', $addressPrefix) # (outputName, outputValue)
Add-ScriptOutput('subnetRange', $subnetPrefix)