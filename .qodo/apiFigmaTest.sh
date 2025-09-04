$token = "figd_YOUR_NEW_TOKEN"
$fileKey = "oRdRh1LcRaaiXWwiSDqAVP"
$nodeId = "1:198" # use colon instead of dash

$apiUrl = "https://api.figma.com/v1/files/$fileKey/nodes?ids=$nodeId"
#figd_kte6e380bSoVnq4LHk0dZiv76JRD3L29vpGuKGwH
$response = Invoke-RestMethod -Uri $apiUrl -Headers @{ "X-Figma-Token" = $token }

$response | ConvertTo-Json -Depth 10 | Out-File "node.json"

https://www.figma.com/design/MSJJlacJtlaxJ3ChNRQ3e3/Alnassani_App?node-id=845-4585&m=dev