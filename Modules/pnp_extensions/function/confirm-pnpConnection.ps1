<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2022 v5.8.202
	 Created on:   	3/19/2022 2:39 PM
	 Created by:   	johnr
	 Organization: 	
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>

<#
	.SYNOPSIS
		Makes sure that you have a connection to the environment
	
	.DESCRIPTION
		A detailed description of the Confirm-pnpConnection function.
	
	.PARAMETER Target
		A description of the Target parameter.
	
	.PARAMETER Url
		A description of the Url parameter.
	
	.EXAMPLE
				PS C:\> Confirm-pnpConnection -Target 'Value1' -Url 'Value2'
	
	.NOTES
		Additional information about the function.
#>
function Confirm-pnpConnection
{
	[CmdletBinding()]
	param
	(
		[Parameter(Mandatory = $true,
				   Position = 0)]
		[string]$Target,
		[Parameter(Mandatory = $true,
				   Position = 1)]
		[string]$Url
	)
	
	$creds = Get-StoredCredential -Target $Target
	if ($creds)
	{
		Write-Host "Has Creds"
	}
	else
	{
		$authenticated = $false
		
		
			try
			{
				$newCreds = Get-Credential
				Connect-PnPOnline -Url $url -Credentials $newCreds 
				if (-not $Error)
				{
					$authenticated=$true
					New-StoredCredential -Target $Target -Credentials $newCreds
					Write-Host "Credentials Saved"
				}
			}
			catch
			{
				
				Write-Host -ForegroundColor Red -Object "Invalid Credentials" -Separator $Separator -BackgroundColor Black -NoNewline
			}
		
	}
}

