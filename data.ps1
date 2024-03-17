#$dc = 'token here'

$content = @"
Message here
"@

$payload = [PSCustomObject]@{

    content = $content

}

Invoke-RestMethod -Uri $dc -Method Post -Body ($payload | ConvertTo-Json) -ContentType 'application/json'
