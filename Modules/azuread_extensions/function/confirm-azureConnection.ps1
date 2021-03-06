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
	
	.EXAMPLE
		PS C:\> Confirm-pnpConnection -Target 'Value1' -Url 'Value2'
	
	.NOTES
		Additional information about the function.
#>
function Confirm-azureadConnection
{
	[CmdletBinding()]
	param
	(
		[Parameter(Mandatory = $true,
				   Position = 0)]
		[string]$Target
	)
	
	$creds = Get-StoredCredential -Target $Target
	if ($creds)
	{
		Write-Host "Has Creds"
		Connect-AzureAD -Credential $creds
	}
	else
	{
		$authenticated = $false
		
		
		try
		{
			#$userName = Read-Host -Prompt "Enter UserName" 
			#$SecurePassword = Read-Host -Prompt "Enter password" -AsSecureString
			#$credential = New-Object System.Management.Automation.PSCredential ($username,$SecurePassword)
			$mycreds = Get-Credential
			Connect-AzureAD -Credential $mycreds
			Write-Output "Connection Established."
			$authenticated = $true
			New-StoredCredential -Target $Target -Credentials $mycreds
			Write-Host "`nredentials Saved"
			
		}
		catch
		{
			Write-Host -ForegroundColor Red -Object "Invalid Credentials`n" -Separator $Separator -BackgroundColor Black -NoNewline
		}
		
	}
}


