$credential = New-Object System.Management.Automation.PSCredential("$pmeaccount",$pmepassword)
$domain = "poe.gbl.msidentity.com"
$ou = "OU=$OU,OU=Member Servers,DC=POE,DC=GBL,DC=MSIDENTITY,DC=COM"
Add-Computer -DomainName $domain -Credential $credential -OUPath $ou
