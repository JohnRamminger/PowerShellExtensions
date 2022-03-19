<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2022 v5.8.202
	 Created on:   	3/18/2022 2:51 PM
	 Created by:   	johnr
	 Organization: 	
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>



<#
	.SYNOPSIS
		This function will create a content type if one does not exist
	
	.DESCRIPTION
		A detailed description of the Ensure-pnpContentType function.
	
	.PARAMETER ContentTypeName
		A description of the ContentTypeName parameter.
	
	.PARAMETER ParentContentType
		A description of the ParentContentType parameter.
	
	.PARAMETER Description
		A description of the Description parameter.
	
	.EXAMPLE
				PS C:\> Ensure-pnpContentType -ContentTypeName 'Value1' -ParentContentType 'Value2'
	
	.NOTES
		Additional information about the function.
#>
function Confirm-pnpContentType
{
	[CmdletBinding()]
	param
	(
		[Parameter(Mandatory = $true,
				   Position = 0)]
		[string]$ContentTypeName,
		[Parameter(Mandatory = $true,
				   Position = 1)]
		[string]$ParentContentType,
		[Parameter(Position = 2)]
		[string]$Description
	)
	
	#TODO: Place script here
}
