param(
[string]$name=$(throw "NAME ERROR")
)

$dcName="museum"
$dcComName="com"
$serverPCName="server"

Unlock-ADAccount -Identity $name