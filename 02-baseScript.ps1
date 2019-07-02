param(
    # this way, on my client when testing, I can not set the environment variable
    # should work in bash as well
    [Parameter]$apiKey = $env:SECRET_APIKEY 
)

# do operation to get address prefix
# can't use double quotes with inline script..
$Url = 'https://server.contoso.com:8089/new-ip-range' 
$Body = @{}

$result = Invoke-RestMethod -Method 'Post' -Uri $url -Credential $env:SECRET_APIKEY -Body $body

$addressPrefix = $result.newAddressRange
$subnetPrefix = $result.newSubnetRange