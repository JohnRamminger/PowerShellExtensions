function Confirm-azureADGroup
{
	[CmdletBinding()]
	param
	(
		[Parameter(Mandatory = $true,
				   Position = 0)]
		[string]$GroupName,
		[Parameter(Mandatory = $false,
				   Position = 1)]
		[string]$Description
	)
	
	$grps = Get-AzureADGroup -SearchString $GroupName
	if ($grps.length -eq 0)
	{
		New-AzureADGroup -DisplayName $GroupName -MailEnabled $false -MailNickName $GroupName -SecurityEnabled $true -Description $Description
	}
}

