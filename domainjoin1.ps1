param
(
$domainjoinusername,
$domainjoinpassword,
$ou
)
$domainjoinpassword | ConvertTo-SecureString -asPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential("domainjoinusername",$pmepassword)
$domain = "poe.gbl.msidentity.com"
$ou = "OU=$ou,OU=Member Servers,DC=POE,DC=GBL,DC=MSIDENTITY,DC=COM"
Add-Computer -DomainName $domain -Credential $credential -OUPath $ou

