#$dc = 'token here'

$content = @"
message here
"@

$payload = [PSCustomObject]@{

    content = $content

}

Invoke-RestMethod -Uri $dc -Method Post -Body ($payload | ConvertTo-Json) -ContentType 'application/json'
