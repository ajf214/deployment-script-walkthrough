$apiKey = $someSecret

# do operation to get address prefix
$Cred = Get-Credential # not sure how this works
# can't use double quotes with inline script..
$Url = 'https://server.contoso.com:8089/new-ip-range' 
$Body = @{}

$result = Invoke-RestMethod -Method 'Post' -Uri $url -Credential $Cred -Body $body

$addressPrefix = $result.newAddressRange
$subnetPrefix = $result.newSubnetRange