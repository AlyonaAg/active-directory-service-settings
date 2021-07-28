param(
 [string]$ou = $(throw "OU ERROR")
)

$dcName="museum"
$dcComName="com"

$Users=Search-ADAccount -SearchBase "ou=$ou,dc=$dcName,dc=$dcComName" -UsersOnly -LockedOut
if ($Users)
{
    foreach ($user in $Users)
    {
        Unlock-ADAccount -Identity $($user)
    }
}