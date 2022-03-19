<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2022 v5.8.202
	 Created on:   	3/18/2022 3:24 PM
	 Created by:   	johnr
	 Organization: 	
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>



<#
	.SYNOPSIS
		This item makes sure that a list is present
	
	.DESCRIPTION
		A detailed description of the Ensure-pnpList function.
	
	.PARAMETER InternalName
		A description of the InternalName parameter.
	
	.PARAMETER ListType
		A description of the ListType parameter.
	
	.PARAMETER DisplayName
		A description of the DisplayName parameter.
	
	.PARAMETER Description
		A description of the Description parameter.
	
	.PARAMETER IsHidden
		A description of the IsHidden parameter.
	
	.EXAMPLE
				PS C:\> Ensure-pnpList -InternalName 'Value1' -ListType 'Value2'
	
	.NOTES
		Additional information about the function.
#>
function Confirm-pnpList
{
	[CmdletBinding()]
	param
	(
		[Parameter(Mandatory = $true,
				   Position = 0)]
		[string]$InternalName,
		[Parameter(Mandatory = $true,
				   Position = 1)]
		[string]$ListType,
		[Parameter(Position = 2)]
		[string]$DisplayName,
		[Parameter(Position = 3)]
		[string]$Description,
		[Parameter(Position = 4)]
		[boolean]$IsHidden = $false
	)
	
	#TODO: Place script here
}
