# how do I get "someSecret"? What is the correct way to pass a secret?
$apiKey = $someSecret

# do operation to get address prefix
# can't use double quotes with inline script..
$Url = 'https://server.contoso.com:8089/new-ip-range' 
$Body = @{}

$result = Invoke-RestMethod -Method 'Post' -Uri $url -Credential $apiKey -Body $body

$addressPrefix = $result.newAddressRange
$subnetPrefix = $result.newSubnetRange