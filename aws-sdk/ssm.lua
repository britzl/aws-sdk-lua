--- GENERATED CODE - DO NOT MODIFY
-- Amazon Simple Systems Manager (SSM) (ssm-2014-11-06)

local M = {}

M.metadata = {
	api_version = "2014-11-06",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "ssm",
	service_abbreviation = "Amazon SSM",
	service_full_name = "Amazon Simple Systems Manager (SSM)",
	signature_version = "v4",
	target_prefix = "AmazonSSM",
	timestamp_format = "",
	global_endpoint = "",
	uid = "ssm-2014-11-06",
}

local keys = {}
local asserts = {}

keys.InvocationDoesNotExist = { nil }

function asserts.AssertInvocationDoesNotExist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvocationDoesNotExist to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvocationDoesNotExist[k], "InvocationDoesNotExist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvocationDoesNotExist
-- <p>The command ID and instance ID you specified did not match any invocations. Verify the command ID adn the instance ID and try again. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvocationDoesNotExist structure as a key-value pair table
function M.InvocationDoesNotExist(args)
	assert(args, "You must provdide an argument table when creating InvocationDoesNotExist")
	local t = { 
	}
	asserts.AssertInvocationDoesNotExist(t)
	return t
end

keys.UpdateManagedInstanceRoleRequest = { ["InstanceId"] = true, ["IamRole"] = true, nil }

function asserts.AssertUpdateManagedInstanceRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateManagedInstanceRoleRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["IamRole"], "Expected key IamRole to exist in table")
	if struct["InstanceId"] then asserts.AssertManagedInstanceId(struct["InstanceId"]) end
	if struct["IamRole"] then asserts.AssertIamRole(struct["IamRole"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateManagedInstanceRoleRequest[k], "UpdateManagedInstanceRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateManagedInstanceRoleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [ManagedInstanceId] <p>The ID of the managed instance where you want to update the role.</p>
-- * IamRole [IamRole] <p>The IAM role you want to assign or change.</p>
-- Required key: InstanceId
-- Required key: IamRole
-- @return UpdateManagedInstanceRoleRequest structure as a key-value pair table
function M.UpdateManagedInstanceRoleRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateManagedInstanceRoleRequest")
	local t = { 
		["InstanceId"] = args["InstanceId"],
		["IamRole"] = args["IamRole"],
	}
	asserts.AssertUpdateManagedInstanceRoleRequest(t)
	return t
end

keys.ListTagsForResourceResult = { ["TagList"] = true, nil }

function asserts.AssertListTagsForResourceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceResult to be of type 'table'")
	if struct["TagList"] then asserts.AssertTagList(struct["TagList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceResult[k], "ListTagsForResourceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TagList [TagList] <p>A list of tags.</p>
-- @return ListTagsForResourceResult structure as a key-value pair table
function M.ListTagsForResourceResult(args)
	assert(args, "You must provdide an argument table when creating ListTagsForResourceResult")
	local t = { 
		["TagList"] = args["TagList"],
	}
	asserts.AssertListTagsForResourceResult(t)
	return t
end

keys.CreateDocumentResult = { ["DocumentDescription"] = true, nil }

function asserts.AssertCreateDocumentResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDocumentResult to be of type 'table'")
	if struct["DocumentDescription"] then asserts.AssertDocumentDescription(struct["DocumentDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDocumentResult[k], "CreateDocumentResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDocumentResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DocumentDescription [DocumentDescription] <p>Information about the Systems Manager document.</p>
-- @return CreateDocumentResult structure as a key-value pair table
function M.CreateDocumentResult(args)
	assert(args, "You must provdide an argument table when creating CreateDocumentResult")
	local t = { 
		["DocumentDescription"] = args["DocumentDescription"],
	}
	asserts.AssertCreateDocumentResult(t)
	return t
end

keys.MaintenanceWindowFilter = { ["Values"] = true, ["Key"] = true, nil }

function asserts.AssertMaintenanceWindowFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaintenanceWindowFilter to be of type 'table'")
	if struct["Values"] then asserts.AssertMaintenanceWindowFilterValues(struct["Values"]) end
	if struct["Key"] then asserts.AssertMaintenanceWindowFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.MaintenanceWindowFilter[k], "MaintenanceWindowFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaintenanceWindowFilter
-- <p>Filter used in the request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [MaintenanceWindowFilterValues] <p>The filter values.</p>
-- * Key [MaintenanceWindowFilterKey] <p>The name of the filter.</p>
-- @return MaintenanceWindowFilter structure as a key-value pair table
function M.MaintenanceWindowFilter(args)
	assert(args, "You must provdide an argument table when creating MaintenanceWindowFilter")
	local t = { 
		["Values"] = args["Values"],
		["Key"] = args["Key"],
	}
	asserts.AssertMaintenanceWindowFilter(t)
	return t
end

keys.StopAutomationExecutionRequest = { ["AutomationExecutionId"] = true, nil }

function asserts.AssertStopAutomationExecutionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopAutomationExecutionRequest to be of type 'table'")
	assert(struct["AutomationExecutionId"], "Expected key AutomationExecutionId to exist in table")
	if struct["AutomationExecutionId"] then asserts.AssertAutomationExecutionId(struct["AutomationExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopAutomationExecutionRequest[k], "StopAutomationExecutionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopAutomationExecutionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutomationExecutionId [AutomationExecutionId] <p>The execution ID of the Automation to stop.</p>
-- Required key: AutomationExecutionId
-- @return StopAutomationExecutionRequest structure as a key-value pair table
function M.StopAutomationExecutionRequest(args)
	assert(args, "You must provdide an argument table when creating StopAutomationExecutionRequest")
	local t = { 
		["AutomationExecutionId"] = args["AutomationExecutionId"],
	}
	asserts.AssertStopAutomationExecutionRequest(t)
	return t
end

keys.InvalidNotificationConfig = { ["Message"] = true, nil }

function asserts.AssertInvalidNotificationConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNotificationConfig to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidNotificationConfig[k], "InvalidNotificationConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNotificationConfig
-- <p>One or more configuration items is not valid. Verify that a valid Amazon Resource Name (ARN) was provided for an Amazon SNS topic.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidNotificationConfig structure as a key-value pair table
function M.InvalidNotificationConfig(args)
	assert(args, "You must provdide an argument table when creating InvalidNotificationConfig")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidNotificationConfig(t)
	return t
end

keys.DocumentIdentifier = { ["Name"] = true, ["PlatformTypes"] = true, ["DocumentVersion"] = true, ["DocumentType"] = true, ["Owner"] = true, ["SchemaVersion"] = true, nil }

function asserts.AssertDocumentIdentifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentIdentifier to be of type 'table'")
	if struct["Name"] then asserts.AssertDocumentARN(struct["Name"]) end
	if struct["PlatformTypes"] then asserts.AssertPlatformTypeList(struct["PlatformTypes"]) end
	if struct["DocumentVersion"] then asserts.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["DocumentType"] then asserts.AssertDocumentType(struct["DocumentType"]) end
	if struct["Owner"] then asserts.AssertDocumentOwner(struct["Owner"]) end
	if struct["SchemaVersion"] then asserts.AssertDocumentSchemaVersion(struct["SchemaVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentIdentifier[k], "DocumentIdentifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentIdentifier
-- <p>Describes the name of an SSM document.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [DocumentARN] <p>The name of the SSM document.</p>
-- * PlatformTypes [PlatformTypeList] <p>The operating system platform. </p>
-- * DocumentVersion [DocumentVersion] <p>The document version.</p>
-- * DocumentType [DocumentType] <p>The document type.</p>
-- * Owner [DocumentOwner] <p>The AWS user account of the person who created the document.</p>
-- * SchemaVersion [DocumentSchemaVersion] <p>The schema version.</p>
-- @return DocumentIdentifier structure as a key-value pair table
function M.DocumentIdentifier(args)
	assert(args, "You must provdide an argument table when creating DocumentIdentifier")
	local t = { 
		["Name"] = args["Name"],
		["PlatformTypes"] = args["PlatformTypes"],
		["DocumentVersion"] = args["DocumentVersion"],
		["DocumentType"] = args["DocumentType"],
		["Owner"] = args["Owner"],
		["SchemaVersion"] = args["SchemaVersion"],
	}
	asserts.AssertDocumentIdentifier(t)
	return t
end

keys.RegisterDefaultPatchBaselineResult = { ["BaselineId"] = true, nil }

function asserts.AssertRegisterDefaultPatchBaselineResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterDefaultPatchBaselineResult to be of type 'table'")
	if struct["BaselineId"] then asserts.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterDefaultPatchBaselineResult[k], "RegisterDefaultPatchBaselineResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterDefaultPatchBaselineResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BaselineId [BaselineId] <p>The ID of the default patch baseline.</p>
-- @return RegisterDefaultPatchBaselineResult structure as a key-value pair table
function M.RegisterDefaultPatchBaselineResult(args)
	assert(args, "You must provdide an argument table when creating RegisterDefaultPatchBaselineResult")
	local t = { 
		["BaselineId"] = args["BaselineId"],
	}
	asserts.AssertRegisterDefaultPatchBaselineResult(t)
	return t
end

keys.Patch = { ["ContentUrl"] = true, ["ProductFamily"] = true, ["Product"] = true, ["Vendor"] = true, ["Description"] = true, ["Classification"] = true, ["Title"] = true, ["ReleaseDate"] = true, ["Language"] = true, ["MsrcSeverity"] = true, ["KbNumber"] = true, ["MsrcNumber"] = true, ["Id"] = true, nil }

function asserts.AssertPatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Patch to be of type 'table'")
	if struct["ContentUrl"] then asserts.AssertPatchContentUrl(struct["ContentUrl"]) end
	if struct["ProductFamily"] then asserts.AssertPatchProductFamily(struct["ProductFamily"]) end
	if struct["Product"] then asserts.AssertPatchProduct(struct["Product"]) end
	if struct["Vendor"] then asserts.AssertPatchVendor(struct["Vendor"]) end
	if struct["Description"] then asserts.AssertPatchDescription(struct["Description"]) end
	if struct["Classification"] then asserts.AssertPatchClassification(struct["Classification"]) end
	if struct["Title"] then asserts.AssertPatchTitle(struct["Title"]) end
	if struct["ReleaseDate"] then asserts.AssertDateTime(struct["ReleaseDate"]) end
	if struct["Language"] then asserts.AssertPatchLanguage(struct["Language"]) end
	if struct["MsrcSeverity"] then asserts.AssertPatchMsrcSeverity(struct["MsrcSeverity"]) end
	if struct["KbNumber"] then asserts.AssertPatchKbNumber(struct["KbNumber"]) end
	if struct["MsrcNumber"] then asserts.AssertPatchMsrcNumber(struct["MsrcNumber"]) end
	if struct["Id"] then asserts.AssertPatchId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Patch[k], "Patch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Patch
-- <p>Represents metadata about a patch.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContentUrl [PatchContentUrl] <p>The URL where more information can be obtained about the patch.</p>
-- * ProductFamily [PatchProductFamily] <p>The product family the patch is applicable for (for example, Windows).</p>
-- * Product [PatchProduct] <p>The specific product the patch is applicable for (for example, WindowsServer2016).</p>
-- * Vendor [PatchVendor] <p>The name of the vendor providing the patch.</p>
-- * Description [PatchDescription] <p>The description of the patch.</p>
-- * Classification [PatchClassification] <p>The classification of the patch (for example, SecurityUpdates, Updates, CriticalUpdates).</p>
-- * Title [PatchTitle] <p>The title of the patch.</p>
-- * ReleaseDate [DateTime] <p>The date the patch was released.</p>
-- * Language [PatchLanguage] <p>The language of the patch if it's language-specific.</p>
-- * MsrcSeverity [PatchMsrcSeverity] <p>The severity of the patch (for example Critical, Important, Moderate).</p>
-- * KbNumber [PatchKbNumber] <p>The Microsoft Knowledge Base ID of the patch.</p>
-- * MsrcNumber [PatchMsrcNumber] <p>The ID of the MSRC bulletin the patch is related to.</p>
-- * Id [PatchId] <p>The ID of the patch (this is different than the Microsoft Knowledge Base ID).</p>
-- @return Patch structure as a key-value pair table
function M.Patch(args)
	assert(args, "You must provdide an argument table when creating Patch")
	local t = { 
		["ContentUrl"] = args["ContentUrl"],
		["ProductFamily"] = args["ProductFamily"],
		["Product"] = args["Product"],
		["Vendor"] = args["Vendor"],
		["Description"] = args["Description"],
		["Classification"] = args["Classification"],
		["Title"] = args["Title"],
		["ReleaseDate"] = args["ReleaseDate"],
		["Language"] = args["Language"],
		["MsrcSeverity"] = args["MsrcSeverity"],
		["KbNumber"] = args["KbNumber"],
		["MsrcNumber"] = args["MsrcNumber"],
		["Id"] = args["Id"],
	}
	asserts.AssertPatch(t)
	return t
end

keys.DeregisterTaskFromMaintenanceWindowResult = { ["WindowTaskId"] = true, ["WindowId"] = true, nil }

function asserts.AssertDeregisterTaskFromMaintenanceWindowResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterTaskFromMaintenanceWindowResult to be of type 'table'")
	if struct["WindowTaskId"] then asserts.AssertMaintenanceWindowTaskId(struct["WindowTaskId"]) end
	if struct["WindowId"] then asserts.AssertMaintenanceWindowId(struct["WindowId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterTaskFromMaintenanceWindowResult[k], "DeregisterTaskFromMaintenanceWindowResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterTaskFromMaintenanceWindowResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WindowTaskId [MaintenanceWindowTaskId] <p>The ID of the task removed from the Maintenance Window.</p>
-- * WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window the task was removed from.</p>
-- @return DeregisterTaskFromMaintenanceWindowResult structure as a key-value pair table
function M.DeregisterTaskFromMaintenanceWindowResult(args)
	assert(args, "You must provdide an argument table when creating DeregisterTaskFromMaintenanceWindowResult")
	local t = { 
		["WindowTaskId"] = args["WindowTaskId"],
		["WindowId"] = args["WindowId"],
	}
	asserts.AssertDeregisterTaskFromMaintenanceWindowResult(t)
	return t
end

keys.ParameterMetadata = { ["KeyId"] = true, ["Name"] = true, ["LastModifiedDate"] = true, ["AllowedPattern"] = true, ["LastModifiedUser"] = true, ["Type"] = true, ["Description"] = true, nil }

function asserts.AssertParameterMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterMetadata to be of type 'table'")
	if struct["KeyId"] then asserts.AssertParameterKeyId(struct["KeyId"]) end
	if struct["Name"] then asserts.AssertPSParameterName(struct["Name"]) end
	if struct["LastModifiedDate"] then asserts.AssertDateTime(struct["LastModifiedDate"]) end
	if struct["AllowedPattern"] then asserts.AssertAllowedPattern(struct["AllowedPattern"]) end
	if struct["LastModifiedUser"] then asserts.AssertString(struct["LastModifiedUser"]) end
	if struct["Type"] then asserts.AssertParameterType(struct["Type"]) end
	if struct["Description"] then asserts.AssertParameterDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParameterMetadata[k], "ParameterMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterMetadata
-- <p>Metada includes information like the ARN of the last user and the date/time the parameter was last used.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [ParameterKeyId] <p>The ID of the query key used for this parameter.</p>
-- * Name [PSParameterName] <p>The parameter name.</p>
-- * LastModifiedDate [DateTime] <p>Date the parameter was last changed or updated.</p>
-- * AllowedPattern [AllowedPattern] <p>A parameter name can include only the following letters and symbols.</p> <p>a-zA-Z0-9_.-</p>
-- * LastModifiedUser [String] <p>Amazon Resource Name (ARN) of the AWS user who last changed the parameter.</p>
-- * Type [ParameterType] <p>The type of parameter. Valid parameter types include the following: String, String list, Secure string.</p>
-- * Description [ParameterDescription] <p>Description of the parameter actions.</p>
-- @return ParameterMetadata structure as a key-value pair table
function M.ParameterMetadata(args)
	assert(args, "You must provdide an argument table when creating ParameterMetadata")
	local t = { 
		["KeyId"] = args["KeyId"],
		["Name"] = args["Name"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["AllowedPattern"] = args["AllowedPattern"],
		["LastModifiedUser"] = args["LastModifiedUser"],
		["Type"] = args["Type"],
		["Description"] = args["Description"],
	}
	asserts.AssertParameterMetadata(t)
	return t
end

keys.GetParametersRequest = { ["Names"] = true, ["WithDecryption"] = true, nil }

function asserts.AssertGetParametersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParametersRequest to be of type 'table'")
	assert(struct["Names"], "Expected key Names to exist in table")
	if struct["Names"] then asserts.AssertParameterNameList(struct["Names"]) end
	if struct["WithDecryption"] then asserts.AssertBoolean(struct["WithDecryption"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetParametersRequest[k], "GetParametersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParametersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Names [ParameterNameList] <p>Names of the parameters for which you want to query information.</p>
-- * WithDecryption [Boolean] <p>Return decrypted secure string value. Return decrypted values for secure string parameters. This flag is ignored for String and StringList parameter types.</p>
-- Required key: Names
-- @return GetParametersRequest structure as a key-value pair table
function M.GetParametersRequest(args)
	assert(args, "You must provdide an argument table when creating GetParametersRequest")
	local t = { 
		["Names"] = args["Names"],
		["WithDecryption"] = args["WithDecryption"],
	}
	asserts.AssertGetParametersRequest(t)
	return t
end

keys.GetParametersResult = { ["InvalidParameters"] = true, ["Parameters"] = true, nil }

function asserts.AssertGetParametersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParametersResult to be of type 'table'")
	if struct["InvalidParameters"] then asserts.AssertParameterNameList(struct["InvalidParameters"]) end
	if struct["Parameters"] then asserts.AssertParameterList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetParametersResult[k], "GetParametersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParametersResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InvalidParameters [ParameterNameList] <p>A list of parameters that are not formatted correctly or do not run when executed.</p>
-- * Parameters [ParameterList] <p>A list of details for a parameter.</p>
-- @return GetParametersResult structure as a key-value pair table
function M.GetParametersResult(args)
	assert(args, "You must provdide an argument table when creating GetParametersResult")
	local t = { 
		["InvalidParameters"] = args["InvalidParameters"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertGetParametersResult(t)
	return t
end

keys.PatchFilter = { ["Values"] = true, ["Key"] = true, nil }

function asserts.AssertPatchFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PatchFilter to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Values"] then asserts.AssertPatchFilterValueList(struct["Values"]) end
	if struct["Key"] then asserts.AssertPatchFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.PatchFilter[k], "PatchFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PatchFilter
-- <p>Defines a patch filter.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [PatchFilterValueList] <p>The value for the filter key.</p>
-- * Key [PatchFilterKey] <p>The key for the filter (PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID)</p>
-- Required key: Key
-- Required key: Values
-- @return PatchFilter structure as a key-value pair table
function M.PatchFilter(args)
	assert(args, "You must provdide an argument table when creating PatchFilter")
	local t = { 
		["Values"] = args["Values"],
		["Key"] = args["Key"],
	}
	asserts.AssertPatchFilter(t)
	return t
end

keys.ItemSizeLimitExceededException = { ["TypeName"] = true, ["Message"] = true, nil }

function asserts.AssertItemSizeLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ItemSizeLimitExceededException to be of type 'table'")
	if struct["TypeName"] then asserts.AssertInventoryItemTypeName(struct["TypeName"]) end
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ItemSizeLimitExceededException[k], "ItemSizeLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ItemSizeLimitExceededException
-- <p>The inventory item size has exceeded the size limit.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TypeName [InventoryItemTypeName] 
-- * Message [String] 
-- @return ItemSizeLimitExceededException structure as a key-value pair table
function M.ItemSizeLimitExceededException(args)
	assert(args, "You must provdide an argument table when creating ItemSizeLimitExceededException")
	local t = { 
		["TypeName"] = args["TypeName"],
		["Message"] = args["Message"],
	}
	asserts.AssertItemSizeLimitExceededException(t)
	return t
end

keys.DescribeMaintenanceWindowExecutionTaskInvocationsResult = { ["NextToken"] = true, ["WindowExecutionTaskInvocationIdentities"] = true, nil }

function asserts.AssertDescribeMaintenanceWindowExecutionTaskInvocationsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowExecutionTaskInvocationsResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["WindowExecutionTaskInvocationIdentities"] then asserts.AssertMaintenanceWindowExecutionTaskInvocationIdentityList(struct["WindowExecutionTaskInvocationIdentities"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMaintenanceWindowExecutionTaskInvocationsResult[k], "DescribeMaintenanceWindowExecutionTaskInvocationsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowExecutionTaskInvocationsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- * WindowExecutionTaskInvocationIdentities [MaintenanceWindowExecutionTaskInvocationIdentityList] <p>Information about the task invocation results per invocation.</p>
-- @return DescribeMaintenanceWindowExecutionTaskInvocationsResult structure as a key-value pair table
function M.DescribeMaintenanceWindowExecutionTaskInvocationsResult(args)
	assert(args, "You must provdide an argument table when creating DescribeMaintenanceWindowExecutionTaskInvocationsResult")
	local t = { 
		["NextToken"] = args["NextToken"],
		["WindowExecutionTaskInvocationIdentities"] = args["WindowExecutionTaskInvocationIdentities"],
	}
	asserts.AssertDescribeMaintenanceWindowExecutionTaskInvocationsResult(t)
	return t
end

keys.ResourceLimitExceededException = { ["Message"] = true, nil }

function asserts.AssertResourceLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceLimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceLimitExceededException[k], "ResourceLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceLimitExceededException
-- <p>Error returned when the caller has exceeded the default resource limits (e.g. too many Maintenance Windows have been created).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return ResourceLimitExceededException structure as a key-value pair table
function M.ResourceLimitExceededException(args)
	assert(args, "You must provdide an argument table when creating ResourceLimitExceededException")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertResourceLimitExceededException(t)
	return t
end

keys.AddTagsToResourceRequest = { ["ResourceType"] = true, ["ResourceId"] = true, ["Tags"] = true, nil }

function asserts.AssertAddTagsToResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceRequest to be of type 'table'")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceType"] then asserts.AssertResourceTypeForTagging(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertResourceId(struct["ResourceId"]) end
	if struct["Tags"] then asserts.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsToResourceRequest[k], "AddTagsToResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [ResourceTypeForTagging] <p>Specifies the type of resource you are tagging.</p>
-- * ResourceId [ResourceId] <p>The resource ID you want to tag.</p>
-- * Tags [TagList] <p> One or more tags. The value parameter is required, but if you don't want the tag to have a value, specify the parameter with no value, and we set the value to an empty string. </p>
-- Required key: ResourceType
-- Required key: ResourceId
-- Required key: Tags
-- @return AddTagsToResourceRequest structure as a key-value pair table
function M.AddTagsToResourceRequest(args)
	assert(args, "You must provdide an argument table when creating AddTagsToResourceRequest")
	local t = { 
		["ResourceType"] = args["ResourceType"],
		["ResourceId"] = args["ResourceId"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertAddTagsToResourceRequest(t)
	return t
end

keys.DocumentVersionInfo = { ["IsDefaultVersion"] = true, ["Name"] = true, ["DocumentVersion"] = true, ["CreatedDate"] = true, nil }

function asserts.AssertDocumentVersionInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentVersionInfo to be of type 'table'")
	if struct["IsDefaultVersion"] then asserts.AssertBoolean(struct["IsDefaultVersion"]) end
	if struct["Name"] then asserts.AssertDocumentName(struct["Name"]) end
	if struct["DocumentVersion"] then asserts.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["CreatedDate"] then asserts.AssertDateTime(struct["CreatedDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentVersionInfo[k], "DocumentVersionInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentVersionInfo
-- <p>Version information about the document.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IsDefaultVersion [Boolean] <p>An identifier for the default version of the document.</p>
-- * Name [DocumentName] <p>The document name.</p>
-- * DocumentVersion [DocumentVersion] <p>The document version.</p>
-- * CreatedDate [DateTime] <p>The date the document was created.</p>
-- @return DocumentVersionInfo structure as a key-value pair table
function M.DocumentVersionInfo(args)
	assert(args, "You must provdide an argument table when creating DocumentVersionInfo")
	local t = { 
		["IsDefaultVersion"] = args["IsDefaultVersion"],
		["Name"] = args["Name"],
		["DocumentVersion"] = args["DocumentVersion"],
		["CreatedDate"] = args["CreatedDate"],
	}
	asserts.AssertDocumentVersionInfo(t)
	return t
end

keys.DescribeInstancePatchStatesRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["InstanceIds"] = true, nil }

function asserts.AssertDescribeInstancePatchStatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancePatchStatesRequest to be of type 'table'")
	assert(struct["InstanceIds"], "Expected key InstanceIds to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPatchComplianceMaxResults(struct["MaxResults"]) end
	if struct["InstanceIds"] then asserts.AssertInstanceIdList(struct["InstanceIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInstancePatchStatesRequest[k], "DescribeInstancePatchStatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancePatchStatesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * MaxResults [PatchComplianceMaxResults] <p>The maximum number of instances to return (per page).</p>
-- * InstanceIds [InstanceIdList] <p>The ID of the instance whose patch state information should be retrieved.</p>
-- Required key: InstanceIds
-- @return DescribeInstancePatchStatesRequest structure as a key-value pair table
function M.DescribeInstancePatchStatesRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeInstancePatchStatesRequest")
	local t = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["InstanceIds"] = args["InstanceIds"],
	}
	asserts.AssertDescribeInstancePatchStatesRequest(t)
	return t
end

keys.GetDocumentResult = { ["Content"] = true, ["Name"] = true, ["DocumentVersion"] = true, ["DocumentType"] = true, nil }

function asserts.AssertGetDocumentResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentResult to be of type 'table'")
	if struct["Content"] then asserts.AssertDocumentContent(struct["Content"]) end
	if struct["Name"] then asserts.AssertDocumentARN(struct["Name"]) end
	if struct["DocumentVersion"] then asserts.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["DocumentType"] then asserts.AssertDocumentType(struct["DocumentType"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDocumentResult[k], "GetDocumentResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Content [DocumentContent] <p>The contents of the SSM document.</p>
-- * Name [DocumentARN] <p>The name of the SSM document.</p>
-- * DocumentVersion [DocumentVersion] <p>The document version.</p>
-- * DocumentType [DocumentType] <p>The document type.</p>
-- @return GetDocumentResult structure as a key-value pair table
function M.GetDocumentResult(args)
	assert(args, "You must provdide an argument table when creating GetDocumentResult")
	local t = { 
		["Content"] = args["Content"],
		["Name"] = args["Name"],
		["DocumentVersion"] = args["DocumentVersion"],
		["DocumentType"] = args["DocumentType"],
	}
	asserts.AssertGetDocumentResult(t)
	return t
end

keys.GetAutomationExecutionResult = { ["AutomationExecution"] = true, nil }

function asserts.AssertGetAutomationExecutionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAutomationExecutionResult to be of type 'table'")
	if struct["AutomationExecution"] then asserts.AssertAutomationExecution(struct["AutomationExecution"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAutomationExecutionResult[k], "GetAutomationExecutionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAutomationExecutionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutomationExecution [AutomationExecution] <p>Detailed information about the current state of an automation execution.</p>
-- @return GetAutomationExecutionResult structure as a key-value pair table
function M.GetAutomationExecutionResult(args)
	assert(args, "You must provdide an argument table when creating GetAutomationExecutionResult")
	local t = { 
		["AutomationExecution"] = args["AutomationExecution"],
	}
	asserts.AssertGetAutomationExecutionResult(t)
	return t
end

keys.InvalidFilterKey = { nil }

function asserts.AssertInvalidFilterKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidFilterKey to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidFilterKey[k], "InvalidFilterKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidFilterKey
-- <p>The specified key is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidFilterKey structure as a key-value pair table
function M.InvalidFilterKey(args)
	assert(args, "You must provdide an argument table when creating InvalidFilterKey")
	local t = { 
	}
	asserts.AssertInvalidFilterKey(t)
	return t
end

keys.InventoryItem = { ["ContentHash"] = true, ["TypeName"] = true, ["SchemaVersion"] = true, ["CaptureTime"] = true, ["Content"] = true, nil }

function asserts.AssertInventoryItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryItem to be of type 'table'")
	assert(struct["TypeName"], "Expected key TypeName to exist in table")
	assert(struct["SchemaVersion"], "Expected key SchemaVersion to exist in table")
	assert(struct["CaptureTime"], "Expected key CaptureTime to exist in table")
	if struct["ContentHash"] then asserts.AssertInventoryItemContentHash(struct["ContentHash"]) end
	if struct["TypeName"] then asserts.AssertInventoryItemTypeName(struct["TypeName"]) end
	if struct["SchemaVersion"] then asserts.AssertInventoryItemSchemaVersion(struct["SchemaVersion"]) end
	if struct["CaptureTime"] then asserts.AssertInventoryItemCaptureTime(struct["CaptureTime"]) end
	if struct["Content"] then asserts.AssertInventoryItemEntryList(struct["Content"]) end
	for k,_ in pairs(struct) do
		assert(keys.InventoryItem[k], "InventoryItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryItem
-- <p>Information collected from managed instances based on your inventory policy document</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContentHash [InventoryItemContentHash] <p>MD5 hash of the inventory item type contents. The content hash is used to determine whether to update inventory information. The PutInventory API does not update the inventory item type contents if the MD5 hash has not changed since last update. </p>
-- * TypeName [InventoryItemTypeName] <p>The name of the inventory type. Default inventory item type names start with AWS. Custom inventory type names will start with Custom. Default inventory item types include the following: AWS:AWSComponent, AWS:Application, AWS:InstanceInformation, AWS:Network, and AWS:WindowsUpdate.</p>
-- * SchemaVersion [InventoryItemSchemaVersion] <p>The schema version for the inventory item.</p>
-- * CaptureTime [InventoryItemCaptureTime] <p>The time the inventory information was collected.</p>
-- * Content [InventoryItemEntryList] <p>The inventory data of the inventory type.</p>
-- Required key: TypeName
-- Required key: SchemaVersion
-- Required key: CaptureTime
-- @return InventoryItem structure as a key-value pair table
function M.InventoryItem(args)
	assert(args, "You must provdide an argument table when creating InventoryItem")
	local t = { 
		["ContentHash"] = args["ContentHash"],
		["TypeName"] = args["TypeName"],
		["SchemaVersion"] = args["SchemaVersion"],
		["CaptureTime"] = args["CaptureTime"],
		["Content"] = args["Content"],
	}
	asserts.AssertInventoryItem(t)
	return t
end

keys.MaintenanceWindowTaskParameterValueExpression = { ["Values"] = true, nil }

function asserts.AssertMaintenanceWindowTaskParameterValueExpression(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaintenanceWindowTaskParameterValueExpression to be of type 'table'")
	if struct["Values"] then asserts.AssertMaintenanceWindowTaskParameterValueList(struct["Values"]) end
	for k,_ in pairs(struct) do
		assert(keys.MaintenanceWindowTaskParameterValueExpression[k], "MaintenanceWindowTaskParameterValueExpression contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaintenanceWindowTaskParameterValueExpression
-- <p>Defines the values for a task parameter.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [MaintenanceWindowTaskParameterValueList] <p>This field contains an array of 0 or more strings, each 1 to 255 characters in length.</p>
-- @return MaintenanceWindowTaskParameterValueExpression structure as a key-value pair table
function M.MaintenanceWindowTaskParameterValueExpression(args)
	assert(args, "You must provdide an argument table when creating MaintenanceWindowTaskParameterValueExpression")
	local t = { 
		["Values"] = args["Values"],
	}
	asserts.AssertMaintenanceWindowTaskParameterValueExpression(t)
	return t
end

keys.MaintenanceWindowIdentity = { ["Duration"] = true, ["Cutoff"] = true, ["WindowId"] = true, ["Enabled"] = true, ["Name"] = true, nil }

function asserts.AssertMaintenanceWindowIdentity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaintenanceWindowIdentity to be of type 'table'")
	if struct["Duration"] then asserts.AssertMaintenanceWindowDurationHours(struct["Duration"]) end
	if struct["Cutoff"] then asserts.AssertMaintenanceWindowCutoff(struct["Cutoff"]) end
	if struct["WindowId"] then asserts.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["Enabled"] then asserts.AssertMaintenanceWindowEnabled(struct["Enabled"]) end
	if struct["Name"] then asserts.AssertMaintenanceWindowName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.MaintenanceWindowIdentity[k], "MaintenanceWindowIdentity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaintenanceWindowIdentity
-- <p>Information about the Maintenance Window.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Duration [MaintenanceWindowDurationHours] <p>The duration of the Maintenance Window in hours.</p>
-- * Cutoff [MaintenanceWindowCutoff] <p>The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution.</p>
-- * WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window.</p>
-- * Enabled [MaintenanceWindowEnabled] <p>Whether the Maintenance Window is enabled.</p>
-- * Name [MaintenanceWindowName] <p>The name of the Maintenance Window.</p>
-- @return MaintenanceWindowIdentity structure as a key-value pair table
function M.MaintenanceWindowIdentity(args)
	assert(args, "You must provdide an argument table when creating MaintenanceWindowIdentity")
	local t = { 
		["Duration"] = args["Duration"],
		["Cutoff"] = args["Cutoff"],
		["WindowId"] = args["WindowId"],
		["Enabled"] = args["Enabled"],
		["Name"] = args["Name"],
	}
	asserts.AssertMaintenanceWindowIdentity(t)
	return t
end

keys.PatchStatus = { ["ApprovalDate"] = true, ["DeploymentStatus"] = true, nil }

function asserts.AssertPatchStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PatchStatus to be of type 'table'")
	if struct["ApprovalDate"] then asserts.AssertDateTime(struct["ApprovalDate"]) end
	if struct["DeploymentStatus"] then asserts.AssertPatchDeploymentStatus(struct["DeploymentStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.PatchStatus[k], "PatchStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PatchStatus
-- <p>Information about the approval status of a patch.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ApprovalDate [DateTime] <p>The date the patch was approved (or will be approved if the status is PENDING_APPROVAL).</p>
-- * DeploymentStatus [PatchDeploymentStatus] <p>The approval status of a patch (APPROVED, PENDING_APPROVAL, EXPLICIT_APPROVED, EXPLICIT_REJECTED).</p>
-- @return PatchStatus structure as a key-value pair table
function M.PatchStatus(args)
	assert(args, "You must provdide an argument table when creating PatchStatus")
	local t = { 
		["ApprovalDate"] = args["ApprovalDate"],
		["DeploymentStatus"] = args["DeploymentStatus"],
	}
	asserts.AssertPatchStatus(t)
	return t
end

keys.ListDocumentsResult = { ["DocumentIdentifiers"] = true, ["NextToken"] = true, nil }

function asserts.AssertListDocumentsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDocumentsResult to be of type 'table'")
	if struct["DocumentIdentifiers"] then asserts.AssertDocumentIdentifierList(struct["DocumentIdentifiers"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDocumentsResult[k], "ListDocumentsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDocumentsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DocumentIdentifiers [DocumentIdentifierList] <p>The names of the SSM documents.</p>
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @return ListDocumentsResult structure as a key-value pair table
function M.ListDocumentsResult(args)
	assert(args, "You must provdide an argument table when creating ListDocumentsResult")
	local t = { 
		["DocumentIdentifiers"] = args["DocumentIdentifiers"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListDocumentsResult(t)
	return t
end

keys.InvalidAutomationExecutionParametersException = { ["Message"] = true, nil }

function asserts.AssertInvalidAutomationExecutionParametersException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAutomationExecutionParametersException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidAutomationExecutionParametersException[k], "InvalidAutomationExecutionParametersException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAutomationExecutionParametersException
-- <p>The supplied parameters for invoking the specified Automation document are incorrect. For example, they may not match the set of parameters permitted for the specified Automation document.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidAutomationExecutionParametersException structure as a key-value pair table
function M.InvalidAutomationExecutionParametersException(args)
	assert(args, "You must provdide an argument table when creating InvalidAutomationExecutionParametersException")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidAutomationExecutionParametersException(t)
	return t
end

keys.ParameterAlreadyExists = { ["message"] = true, nil }

function asserts.AssertParameterAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterAlreadyExists to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParameterAlreadyExists[k], "ParameterAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterAlreadyExists
-- <p>The parameter already exists. You can't create duplicate parameters.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return ParameterAlreadyExists structure as a key-value pair table
function M.ParameterAlreadyExists(args)
	assert(args, "You must provdide an argument table when creating ParameterAlreadyExists")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertParameterAlreadyExists(t)
	return t
end

keys.CancelCommandRequest = { ["CommandId"] = true, ["InstanceIds"] = true, nil }

function asserts.AssertCancelCommandRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelCommandRequest to be of type 'table'")
	assert(struct["CommandId"], "Expected key CommandId to exist in table")
	if struct["CommandId"] then asserts.AssertCommandId(struct["CommandId"]) end
	if struct["InstanceIds"] then asserts.AssertInstanceIdList(struct["InstanceIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelCommandRequest[k], "CancelCommandRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelCommandRequest
-- <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CommandId [CommandId] <p>The ID of the command you want to cancel.</p>
-- * InstanceIds [InstanceIdList] <p>(Optional) A list of instance IDs on which you want to cancel the command. If not provided, the command is canceled on every instance on which it was requested.</p>
-- Required key: CommandId
-- @return CancelCommandRequest structure as a key-value pair table
function M.CancelCommandRequest(args)
	assert(args, "You must provdide an argument table when creating CancelCommandRequest")
	local t = { 
		["CommandId"] = args["CommandId"],
		["InstanceIds"] = args["InstanceIds"],
	}
	asserts.AssertCancelCommandRequest(t)
	return t
end

keys.DeregisterManagedInstanceRequest = { ["InstanceId"] = true, nil }

function asserts.AssertDeregisterManagedInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterManagedInstanceRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertManagedInstanceId(struct["InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterManagedInstanceRequest[k], "DeregisterManagedInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterManagedInstanceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [ManagedInstanceId] <p>The ID assigned to the managed instance when you registered it using the activation process. </p>
-- Required key: InstanceId
-- @return DeregisterManagedInstanceRequest structure as a key-value pair table
function M.DeregisterManagedInstanceRequest(args)
	assert(args, "You must provdide an argument table when creating DeregisterManagedInstanceRequest")
	local t = { 
		["InstanceId"] = args["InstanceId"],
	}
	asserts.AssertDeregisterManagedInstanceRequest(t)
	return t
end

keys.Command = { ["Comment"] = true, ["Status"] = true, ["MaxErrors"] = true, ["Parameters"] = true, ["ExpiresAfter"] = true, ["ServiceRole"] = true, ["DocumentName"] = true, ["TargetCount"] = true, ["OutputS3BucketName"] = true, ["NotificationConfig"] = true, ["CompletedCount"] = true, ["Targets"] = true, ["StatusDetails"] = true, ["ErrorCount"] = true, ["OutputS3KeyPrefix"] = true, ["RequestedDateTime"] = true, ["OutputS3Region"] = true, ["CommandId"] = true, ["InstanceIds"] = true, ["MaxConcurrency"] = true, nil }

function asserts.AssertCommand(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Command to be of type 'table'")
	if struct["Comment"] then asserts.AssertComment(struct["Comment"]) end
	if struct["Status"] then asserts.AssertCommandStatus(struct["Status"]) end
	if struct["MaxErrors"] then asserts.AssertMaxErrors(struct["MaxErrors"]) end
	if struct["Parameters"] then asserts.AssertParameters(struct["Parameters"]) end
	if struct["ExpiresAfter"] then asserts.AssertDateTime(struct["ExpiresAfter"]) end
	if struct["ServiceRole"] then asserts.AssertServiceRole(struct["ServiceRole"]) end
	if struct["DocumentName"] then asserts.AssertDocumentName(struct["DocumentName"]) end
	if struct["TargetCount"] then asserts.AssertTargetCount(struct["TargetCount"]) end
	if struct["OutputS3BucketName"] then asserts.AssertS3BucketName(struct["OutputS3BucketName"]) end
	if struct["NotificationConfig"] then asserts.AssertNotificationConfig(struct["NotificationConfig"]) end
	if struct["CompletedCount"] then asserts.AssertCompletedCount(struct["CompletedCount"]) end
	if struct["Targets"] then asserts.AssertTargets(struct["Targets"]) end
	if struct["StatusDetails"] then asserts.AssertStatusDetails(struct["StatusDetails"]) end
	if struct["ErrorCount"] then asserts.AssertErrorCount(struct["ErrorCount"]) end
	if struct["OutputS3KeyPrefix"] then asserts.AssertS3KeyPrefix(struct["OutputS3KeyPrefix"]) end
	if struct["RequestedDateTime"] then asserts.AssertDateTime(struct["RequestedDateTime"]) end
	if struct["OutputS3Region"] then asserts.AssertS3Region(struct["OutputS3Region"]) end
	if struct["CommandId"] then asserts.AssertCommandId(struct["CommandId"]) end
	if struct["InstanceIds"] then asserts.AssertInstanceIdList(struct["InstanceIds"]) end
	if struct["MaxConcurrency"] then asserts.AssertMaxConcurrency(struct["MaxConcurrency"]) end
	for k,_ in pairs(struct) do
		assert(keys.Command[k], "Command contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Command
-- <p>Describes a command request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Comment [Comment] <p>User-specified information about the command, such as a brief description of what the command should do.</p>
-- * Status [CommandStatus] <p>The status of the command.</p>
-- * MaxErrors [MaxErrors] <p>The maximum number of errors allowed before the system stops sending the command to additional targets. You can specify a number of errors, such as 10, or a percentage or errors, such as 10%. The default value is 50. For more information about how to use MaxErrors, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/run-command.html">Executing a Command Using Systems Manager Run Command</a>.</p>
-- * Parameters [Parameters] <p>The parameter values to be inserted in the document when executing the command.</p>
-- * ExpiresAfter [DateTime] <p>If this time is reached and the command has not already started executing, it will not execute. Calculated based on the ExpiresAfter user input provided as part of the SendCommand API.</p>
-- * ServiceRole [ServiceRole] <p>The IAM service role that Run Command uses to act on your behalf when sending notifications about command status changes. </p>
-- * DocumentName [DocumentName] <p>The name of the document requested for execution.</p>
-- * TargetCount [TargetCount] <p>The number of targets for the command.</p>
-- * OutputS3BucketName [S3BucketName] <p>The S3 bucket where the responses to the command executions should be stored. This was requested when issuing the command.</p>
-- * NotificationConfig [NotificationConfig] <p>Configurations for sending notifications about command status changes. </p>
-- * CompletedCount [CompletedCount] <p>The number of targets for which the command invocation reached a terminal state. Terminal states include the following: Success, Failed, Execution Timed Out, Delivery Timed Out, Canceled, Terminated, or Undeliverable.</p>
-- * Targets [Targets] <p>An array of search criteria that targets instances using a Key,Value combination that you specify. Targets is required if you don't provide one or more instance IDs in the call.</p>
-- * StatusDetails [StatusDetails] <p>A detailed status of the command execution. StatusDetails includes more information than Status because it includes states resulting from error and concurrency control parameters. StatusDetails can show different results than Status. For more information about these statuses, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-about-status.html">Run Command Status</a>. StatusDetails can be one of the following values:</p> <ul> <li> <p>Pending: The command has not been sent to any instances.</p> </li> <li> <p>In Progress: The command has been sent to at least one instance but has not reached a final state on all instances.</p> </li> <li> <p>Success: The command successfully executed on all invocations. This is a terminal state.</p> </li> <li> <p>Delivery Timed Out: The value of MaxErrors or more command invocations shows a status of Delivery Timed Out. This is a terminal state.</p> </li> <li> <p>Execution Timed Out: The value of MaxErrors or more command invocations shows a status of Execution Timed Out. This is a terminal state.</p> </li> <li> <p>Failed: The value of MaxErrors or more command invocations shows a status of Failed. This is a terminal state.</p> </li> <li> <p>Incomplete: The command was attempted on all instances and one or more invocations does not have a value of Success but not enough invocations failed for the status to be Failed. This is a terminal state.</p> </li> <li> <p>Canceled: The command was terminated before it was completed. This is a terminal state.</p> </li> <li> <p>Rate Exceeded: The number of instances targeted by the command exceeded the account limit for pending invocations. The system has canceled the command before executing it on any instance. This is a terminal state.</p> </li> </ul>
-- * ErrorCount [ErrorCount] <p>The number of targets for which the status is Failed or Execution Timed Out.</p>
-- * OutputS3KeyPrefix [S3KeyPrefix] <p>The S3 directory path inside the bucket where the responses to the command executions should be stored. This was requested when issuing the command.</p>
-- * RequestedDateTime [DateTime] <p>The date and time the command was requested.</p>
-- * OutputS3Region [S3Region] <p>(Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager automatically determines the Amazon S3 bucket region.</p>
-- * CommandId [CommandId] <p>A unique identifier for this command.</p>
-- * InstanceIds [InstanceIdList] <p>The instance IDs against which this command was requested.</p>
-- * MaxConcurrency [MaxConcurrency] <p>The maximum number of instances that are allowed to execute the command at the same time. You can specify a number of instances, such as 10, or a percentage of instances, such as 10%. The default value is 50. For more information about how to use MaxConcurrency, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/run-command.html">Executing a Command Using Systems Manager Run Command</a>.</p>
-- @return Command structure as a key-value pair table
function M.Command(args)
	assert(args, "You must provdide an argument table when creating Command")
	local t = { 
		["Comment"] = args["Comment"],
		["Status"] = args["Status"],
		["MaxErrors"] = args["MaxErrors"],
		["Parameters"] = args["Parameters"],
		["ExpiresAfter"] = args["ExpiresAfter"],
		["ServiceRole"] = args["ServiceRole"],
		["DocumentName"] = args["DocumentName"],
		["TargetCount"] = args["TargetCount"],
		["OutputS3BucketName"] = args["OutputS3BucketName"],
		["NotificationConfig"] = args["NotificationConfig"],
		["CompletedCount"] = args["CompletedCount"],
		["Targets"] = args["Targets"],
		["StatusDetails"] = args["StatusDetails"],
		["ErrorCount"] = args["ErrorCount"],
		["OutputS3KeyPrefix"] = args["OutputS3KeyPrefix"],
		["RequestedDateTime"] = args["RequestedDateTime"],
		["OutputS3Region"] = args["OutputS3Region"],
		["CommandId"] = args["CommandId"],
		["InstanceIds"] = args["InstanceIds"],
		["MaxConcurrency"] = args["MaxConcurrency"],
	}
	asserts.AssertCommand(t)
	return t
end

keys.PutParameterRequest = { ["KeyId"] = true, ["Name"] = true, ["Value"] = true, ["AllowedPattern"] = true, ["Type"] = true, ["Overwrite"] = true, ["Description"] = true, nil }

function asserts.AssertPutParameterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutParameterRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["KeyId"] then asserts.AssertParameterKeyId(struct["KeyId"]) end
	if struct["Name"] then asserts.AssertPSParameterName(struct["Name"]) end
	if struct["Value"] then asserts.AssertPSParameterValue(struct["Value"]) end
	if struct["AllowedPattern"] then asserts.AssertAllowedPattern(struct["AllowedPattern"]) end
	if struct["Type"] then asserts.AssertParameterType(struct["Type"]) end
	if struct["Overwrite"] then asserts.AssertBoolean(struct["Overwrite"]) end
	if struct["Description"] then asserts.AssertParameterDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutParameterRequest[k], "PutParameterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutParameterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [ParameterKeyId] <p>The KMS Key ID that you want to use to encrypt a parameter when you choose the SecureString data type. If you don't specify a key ID, the system uses the default key associated with your AWS account.</p>
-- * Name [PSParameterName] <p>The name of the parameter that you want to add to the system.</p>
-- * Value [PSParameterValue] <p>The parameter value that you want to add to the system.</p>
-- * AllowedPattern [AllowedPattern] <p>A regular expression used to validate the parameter value. For example, for String types with values restricted to numbers, you can specify the following: AllowedPattern=^\d+$ </p>
-- * Type [ParameterType] <p>The type of parameter that you want to add to the system.</p>
-- * Overwrite [Boolean] <p>Overwrite an existing parameter. If not specified, will default to "false".</p>
-- * Description [ParameterDescription] <p>Information about the parameter that you want to add to the system</p>
-- Required key: Name
-- Required key: Value
-- Required key: Type
-- @return PutParameterRequest structure as a key-value pair table
function M.PutParameterRequest(args)
	assert(args, "You must provdide an argument table when creating PutParameterRequest")
	local t = { 
		["KeyId"] = args["KeyId"],
		["Name"] = args["Name"],
		["Value"] = args["Value"],
		["AllowedPattern"] = args["AllowedPattern"],
		["Type"] = args["Type"],
		["Overwrite"] = args["Overwrite"],
		["Description"] = args["Description"],
	}
	asserts.AssertPutParameterRequest(t)
	return t
end

keys.RemoveTagsFromResourceRequest = { ["ResourceType"] = true, ["ResourceId"] = true, ["TagKeys"] = true, nil }

function asserts.AssertRemoveTagsFromResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceRequest to be of type 'table'")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceType"] then asserts.AssertResourceTypeForTagging(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertResourceId(struct["ResourceId"]) end
	if struct["TagKeys"] then asserts.AssertKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsFromResourceRequest[k], "RemoveTagsFromResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [ResourceTypeForTagging] <p>The type of resource of which you want to remove a tag.</p>
-- * ResourceId [ResourceId] <p>The resource ID for which you want to remove tags.</p>
-- * TagKeys [KeyList] <p>Tag keys that you want to remove from the specified resource.</p>
-- Required key: ResourceType
-- Required key: ResourceId
-- Required key: TagKeys
-- @return RemoveTagsFromResourceRequest structure as a key-value pair table
function M.RemoveTagsFromResourceRequest(args)
	assert(args, "You must provdide an argument table when creating RemoveTagsFromResourceRequest")
	local t = { 
		["ResourceType"] = args["ResourceType"],
		["ResourceId"] = args["ResourceId"],
		["TagKeys"] = args["TagKeys"],
	}
	asserts.AssertRemoveTagsFromResourceRequest(t)
	return t
end

keys.DocumentFilter = { ["value"] = true, ["key"] = true, nil }

function asserts.AssertDocumentFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentFilter to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	assert(struct["value"], "Expected key value to exist in table")
	if struct["value"] then asserts.AssertDocumentFilterValue(struct["value"]) end
	if struct["key"] then asserts.AssertDocumentFilterKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentFilter[k], "DocumentFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentFilter
-- <p>Describes a filter.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * value [DocumentFilterValue] <p>The value of the filter.</p>
-- * key [DocumentFilterKey] <p>The name of the filter.</p>
-- Required key: key
-- Required key: value
-- @return DocumentFilter structure as a key-value pair table
function M.DocumentFilter(args)
	assert(args, "You must provdide an argument table when creating DocumentFilter")
	local t = { 
		["value"] = args["value"],
		["key"] = args["key"],
	}
	asserts.AssertDocumentFilter(t)
	return t
end

keys.GetDeployablePatchSnapshotForInstanceRequest = { ["InstanceId"] = true, ["SnapshotId"] = true, nil }

function asserts.AssertGetDeployablePatchSnapshotForInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeployablePatchSnapshotForInstanceRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["SnapshotId"], "Expected key SnapshotId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["SnapshotId"] then asserts.AssertSnapshotId(struct["SnapshotId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeployablePatchSnapshotForInstanceRequest[k], "GetDeployablePatchSnapshotForInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeployablePatchSnapshotForInstanceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The ID of the instance for which the appropriate patch snapshot should be retrieved.</p>
-- * SnapshotId [SnapshotId] <p>The user-defined snapshot ID.</p>
-- Required key: InstanceId
-- Required key: SnapshotId
-- @return GetDeployablePatchSnapshotForInstanceRequest structure as a key-value pair table
function M.GetDeployablePatchSnapshotForInstanceRequest(args)
	assert(args, "You must provdide an argument table when creating GetDeployablePatchSnapshotForInstanceRequest")
	local t = { 
		["InstanceId"] = args["InstanceId"],
		["SnapshotId"] = args["SnapshotId"],
	}
	asserts.AssertGetDeployablePatchSnapshotForInstanceRequest(t)
	return t
end

keys.GetMaintenanceWindowExecutionResult = { ["Status"] = true, ["TaskIds"] = true, ["StartTime"] = true, ["EndTime"] = true, ["WindowExecutionId"] = true, ["StatusDetails"] = true, nil }

function asserts.AssertGetMaintenanceWindowExecutionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMaintenanceWindowExecutionResult to be of type 'table'")
	if struct["Status"] then asserts.AssertMaintenanceWindowExecutionStatus(struct["Status"]) end
	if struct["TaskIds"] then asserts.AssertMaintenanceWindowExecutionTaskIdList(struct["TaskIds"]) end
	if struct["StartTime"] then asserts.AssertDateTime(struct["StartTime"]) end
	if struct["EndTime"] then asserts.AssertDateTime(struct["EndTime"]) end
	if struct["WindowExecutionId"] then asserts.AssertMaintenanceWindowExecutionId(struct["WindowExecutionId"]) end
	if struct["StatusDetails"] then asserts.AssertMaintenanceWindowExecutionStatusDetails(struct["StatusDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMaintenanceWindowExecutionResult[k], "GetMaintenanceWindowExecutionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMaintenanceWindowExecutionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [MaintenanceWindowExecutionStatus] <p>The status of the Maintenance Window execution.</p>
-- * TaskIds [MaintenanceWindowExecutionTaskIdList] <p>The ID of the task executions from the Maintenance Window execution.</p>
-- * StartTime [DateTime] <p>The time the Maintenance Window started executing.</p>
-- * EndTime [DateTime] <p>The time the Maintenance Window finished executing.</p>
-- * WindowExecutionId [MaintenanceWindowExecutionId] <p>The ID of the Maintenance Window execution.</p>
-- * StatusDetails [MaintenanceWindowExecutionStatusDetails] <p>The details explaining the Status. Only available for certain status values.</p>
-- @return GetMaintenanceWindowExecutionResult structure as a key-value pair table
function M.GetMaintenanceWindowExecutionResult(args)
	assert(args, "You must provdide an argument table when creating GetMaintenanceWindowExecutionResult")
	local t = { 
		["Status"] = args["Status"],
		["TaskIds"] = args["TaskIds"],
		["StartTime"] = args["StartTime"],
		["EndTime"] = args["EndTime"],
		["WindowExecutionId"] = args["WindowExecutionId"],
		["StatusDetails"] = args["StatusDetails"],
	}
	asserts.AssertGetMaintenanceWindowExecutionResult(t)
	return t
end

keys.ListCommandsRequest = { ["InstanceId"] = true, ["Filters"] = true, ["NextToken"] = true, ["CommandId"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListCommandsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCommandsRequest to be of type 'table'")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["Filters"] then asserts.AssertCommandFilterList(struct["Filters"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["CommandId"] then asserts.AssertCommandId(struct["CommandId"]) end
	if struct["MaxResults"] then asserts.AssertCommandMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCommandsRequest[k], "ListCommandsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCommandsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>(Optional) Lists commands issued against this instance ID.</p>
-- * Filters [CommandFilterList] <p>(Optional) One or more filters. Use a filter to return a more specific list of results. </p>
-- * NextToken [NextToken] <p>(Optional) The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * CommandId [CommandId] <p>(Optional) If provided, lists only the specified command.</p>
-- * MaxResults [CommandMaxResults] <p>(Optional) The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- @return ListCommandsRequest structure as a key-value pair table
function M.ListCommandsRequest(args)
	assert(args, "You must provdide an argument table when creating ListCommandsRequest")
	local t = { 
		["InstanceId"] = args["InstanceId"],
		["Filters"] = args["Filters"],
		["NextToken"] = args["NextToken"],
		["CommandId"] = args["CommandId"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListCommandsRequest(t)
	return t
end

keys.GetDeployablePatchSnapshotForInstanceResult = { ["InstanceId"] = true, ["SnapshotId"] = true, ["SnapshotDownloadUrl"] = true, nil }

function asserts.AssertGetDeployablePatchSnapshotForInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeployablePatchSnapshotForInstanceResult to be of type 'table'")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["SnapshotId"] then asserts.AssertSnapshotId(struct["SnapshotId"]) end
	if struct["SnapshotDownloadUrl"] then asserts.AssertSnapshotDownloadUrl(struct["SnapshotDownloadUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDeployablePatchSnapshotForInstanceResult[k], "GetDeployablePatchSnapshotForInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeployablePatchSnapshotForInstanceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The ID of the instance.</p>
-- * SnapshotId [SnapshotId] <p>The user-defined snapshot ID.</p>
-- * SnapshotDownloadUrl [SnapshotDownloadUrl] <p>A pre-signed Amazon S3 URL that can be used to download the patch snapshot.</p>
-- @return GetDeployablePatchSnapshotForInstanceResult structure as a key-value pair table
function M.GetDeployablePatchSnapshotForInstanceResult(args)
	assert(args, "You must provdide an argument table when creating GetDeployablePatchSnapshotForInstanceResult")
	local t = { 
		["InstanceId"] = args["InstanceId"],
		["SnapshotId"] = args["SnapshotId"],
		["SnapshotDownloadUrl"] = args["SnapshotDownloadUrl"],
	}
	asserts.AssertGetDeployablePatchSnapshotForInstanceResult(t)
	return t
end

keys.ListInventoryEntriesRequest = { ["InstanceId"] = true, ["TypeName"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["Filters"] = true, nil }

function asserts.AssertListInventoryEntriesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInventoryEntriesRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["TypeName"], "Expected key TypeName to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["TypeName"] then asserts.AssertInventoryItemTypeName(struct["TypeName"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then asserts.AssertInventoryFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInventoryEntriesRequest[k], "ListInventoryEntriesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInventoryEntriesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The instance ID for which you want inventory information.</p>
-- * TypeName [InventoryItemTypeName] <p>The type of inventory item for which you want information.</p>
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * MaxResults [MaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- * Filters [InventoryFilterList] <p>One or more filters. Use a filter to return a more specific list of results.</p>
-- Required key: InstanceId
-- Required key: TypeName
-- @return ListInventoryEntriesRequest structure as a key-value pair table
function M.ListInventoryEntriesRequest(args)
	assert(args, "You must provdide an argument table when creating ListInventoryEntriesRequest")
	local t = { 
		["InstanceId"] = args["InstanceId"],
		["TypeName"] = args["TypeName"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertListInventoryEntriesRequest(t)
	return t
end

keys.DocumentVersionLimitExceeded = { ["Message"] = true, nil }

function asserts.AssertDocumentVersionLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentVersionLimitExceeded to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentVersionLimitExceeded[k], "DocumentVersionLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentVersionLimitExceeded
-- <p>The document has too many versions. Delete one or more document versions and try again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return DocumentVersionLimitExceeded structure as a key-value pair table
function M.DocumentVersionLimitExceeded(args)
	assert(args, "You must provdide an argument table when creating DocumentVersionLimitExceeded")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertDocumentVersionLimitExceeded(t)
	return t
end

keys.DeletePatchBaselineResult = { ["BaselineId"] = true, nil }

function asserts.AssertDeletePatchBaselineResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePatchBaselineResult to be of type 'table'")
	if struct["BaselineId"] then asserts.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePatchBaselineResult[k], "DeletePatchBaselineResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePatchBaselineResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BaselineId [BaselineId] <p>The ID of the deleted patch baseline.</p>
-- @return DeletePatchBaselineResult structure as a key-value pair table
function M.DeletePatchBaselineResult(args)
	assert(args, "You must provdide an argument table when creating DeletePatchBaselineResult")
	local t = { 
		["BaselineId"] = args["BaselineId"],
	}
	asserts.AssertDeletePatchBaselineResult(t)
	return t
end

keys.DescribeDocumentPermissionResponse = { ["AccountIds"] = true, nil }

function asserts.AssertDescribeDocumentPermissionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDocumentPermissionResponse to be of type 'table'")
	if struct["AccountIds"] then asserts.AssertAccountIdList(struct["AccountIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDocumentPermissionResponse[k], "DescribeDocumentPermissionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDocumentPermissionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountIds [AccountIdList] <p>The account IDs that have permission to use this document. The ID can be either an AWS account or <i>All</i>.</p>
-- @return DescribeDocumentPermissionResponse structure as a key-value pair table
function M.DescribeDocumentPermissionResponse(args)
	assert(args, "You must provdide an argument table when creating DescribeDocumentPermissionResponse")
	local t = { 
		["AccountIds"] = args["AccountIds"],
	}
	asserts.AssertDescribeDocumentPermissionResponse(t)
	return t
end

keys.RegisterTaskWithMaintenanceWindowRequest = { ["ServiceRoleArn"] = true, ["LoggingInfo"] = true, ["MaxErrors"] = true, ["TaskArn"] = true, ["MaxConcurrency"] = true, ["ClientToken"] = true, ["Targets"] = true, ["Priority"] = true, ["WindowId"] = true, ["TaskType"] = true, ["TaskParameters"] = true, nil }

function asserts.AssertRegisterTaskWithMaintenanceWindowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterTaskWithMaintenanceWindowRequest to be of type 'table'")
	assert(struct["WindowId"], "Expected key WindowId to exist in table")
	assert(struct["Targets"], "Expected key Targets to exist in table")
	assert(struct["TaskArn"], "Expected key TaskArn to exist in table")
	assert(struct["ServiceRoleArn"], "Expected key ServiceRoleArn to exist in table")
	assert(struct["TaskType"], "Expected key TaskType to exist in table")
	assert(struct["MaxConcurrency"], "Expected key MaxConcurrency to exist in table")
	assert(struct["MaxErrors"], "Expected key MaxErrors to exist in table")
	if struct["ServiceRoleArn"] then asserts.AssertServiceRole(struct["ServiceRoleArn"]) end
	if struct["LoggingInfo"] then asserts.AssertLoggingInfo(struct["LoggingInfo"]) end
	if struct["MaxErrors"] then asserts.AssertMaxErrors(struct["MaxErrors"]) end
	if struct["TaskArn"] then asserts.AssertMaintenanceWindowTaskArn(struct["TaskArn"]) end
	if struct["MaxConcurrency"] then asserts.AssertMaxConcurrency(struct["MaxConcurrency"]) end
	if struct["ClientToken"] then asserts.AssertClientToken(struct["ClientToken"]) end
	if struct["Targets"] then asserts.AssertTargets(struct["Targets"]) end
	if struct["Priority"] then asserts.AssertMaintenanceWindowTaskPriority(struct["Priority"]) end
	if struct["WindowId"] then asserts.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["TaskType"] then asserts.AssertMaintenanceWindowTaskType(struct["TaskType"]) end
	if struct["TaskParameters"] then asserts.AssertMaintenanceWindowTaskParameters(struct["TaskParameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterTaskWithMaintenanceWindowRequest[k], "RegisterTaskWithMaintenanceWindowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterTaskWithMaintenanceWindowRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceRoleArn [ServiceRole] <p>The role that should be assumed when executing the task.</p>
-- * LoggingInfo [LoggingInfo] <p>A structure containing information about an Amazon S3 bucket to write instance-level logs to. </p>
-- * MaxErrors [MaxErrors] <p>The maximum number of errors allowed before this task stops being scheduled.</p>
-- * TaskArn [MaintenanceWindowTaskArn] <p>The ARN of the task to execute </p>
-- * MaxConcurrency [MaxConcurrency] <p>The maximum number of targets this task can be run for in parallel.</p>
-- * ClientToken [ClientToken] <p>User-provided idempotency token.</p>
-- * Targets [Targets] <p>The targets (either instances or tags). Instances are specified using Key=instanceids,Values=&lt;instanceid1&gt;,&lt;instanceid2&gt;. Tags are specified using Key=&lt;tag name&gt;,Values=&lt;tag value&gt;.</p>
-- * Priority [MaintenanceWindowTaskPriority] <p>The priority of the task in the Maintenance Window, the lower the number the higher the priority. Tasks in a Maintenance Window are scheduled in priority order with tasks that have the same priority scheduled in parallel.</p>
-- * WindowId [MaintenanceWindowId] <p>The id of the Maintenance Window the task should be added to.</p>
-- * TaskType [MaintenanceWindowTaskType] <p>The type of task being registered.</p>
-- * TaskParameters [MaintenanceWindowTaskParameters] <p>The parameters that should be passed to the task when it is executed.</p>
-- Required key: WindowId
-- Required key: Targets
-- Required key: TaskArn
-- Required key: ServiceRoleArn
-- Required key: TaskType
-- Required key: MaxConcurrency
-- Required key: MaxErrors
-- @return RegisterTaskWithMaintenanceWindowRequest structure as a key-value pair table
function M.RegisterTaskWithMaintenanceWindowRequest(args)
	assert(args, "You must provdide an argument table when creating RegisterTaskWithMaintenanceWindowRequest")
	local t = { 
		["ServiceRoleArn"] = args["ServiceRoleArn"],
		["LoggingInfo"] = args["LoggingInfo"],
		["MaxErrors"] = args["MaxErrors"],
		["TaskArn"] = args["TaskArn"],
		["MaxConcurrency"] = args["MaxConcurrency"],
		["ClientToken"] = args["ClientToken"],
		["Targets"] = args["Targets"],
		["Priority"] = args["Priority"],
		["WindowId"] = args["WindowId"],
		["TaskType"] = args["TaskType"],
		["TaskParameters"] = args["TaskParameters"],
	}
	asserts.AssertRegisterTaskWithMaintenanceWindowRequest(t)
	return t
end

keys.CreateAssociationRequest = { ["ScheduleExpression"] = true, ["OutputLocation"] = true, ["Name"] = true, ["Parameters"] = true, ["InstanceId"] = true, ["DocumentVersion"] = true, ["Targets"] = true, nil }

function asserts.AssertCreateAssociationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAssociationRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["ScheduleExpression"] then asserts.AssertScheduleExpression(struct["ScheduleExpression"]) end
	if struct["OutputLocation"] then asserts.AssertInstanceAssociationOutputLocation(struct["OutputLocation"]) end
	if struct["Name"] then asserts.AssertDocumentName(struct["Name"]) end
	if struct["Parameters"] then asserts.AssertParameters(struct["Parameters"]) end
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["DocumentVersion"] then asserts.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["Targets"] then asserts.AssertTargets(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAssociationRequest[k], "CreateAssociationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAssociationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScheduleExpression [ScheduleExpression] <p>A cron expression when the association will be applied to the target(s).</p>
-- * OutputLocation [InstanceAssociationOutputLocation] <p>An Amazon S3 bucket where you want to store the output details of the request.</p>
-- * Name [DocumentName] <p>The name of the Systems Manager document.</p>
-- * Parameters [Parameters] <p>The parameters for the documents runtime configuration. </p>
-- * InstanceId [InstanceId] <p>The instance ID.</p>
-- * DocumentVersion [DocumentVersion] <p>The document version you want to associate with the target(s). Can be a specific version or the default version.</p>
-- * Targets [Targets] <p>The targets (either instances or tags) for the association.</p>
-- Required key: Name
-- @return CreateAssociationRequest structure as a key-value pair table
function M.CreateAssociationRequest(args)
	assert(args, "You must provdide an argument table when creating CreateAssociationRequest")
	local t = { 
		["ScheduleExpression"] = args["ScheduleExpression"],
		["OutputLocation"] = args["OutputLocation"],
		["Name"] = args["Name"],
		["Parameters"] = args["Parameters"],
		["InstanceId"] = args["InstanceId"],
		["DocumentVersion"] = args["DocumentVersion"],
		["Targets"] = args["Targets"],
	}
	asserts.AssertCreateAssociationRequest(t)
	return t
end

keys.DescribeMaintenanceWindowTargetsResult = { ["NextToken"] = true, ["Targets"] = true, nil }

function asserts.AssertDescribeMaintenanceWindowTargetsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowTargetsResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Targets"] then asserts.AssertMaintenanceWindowTargetList(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMaintenanceWindowTargetsResult[k], "DescribeMaintenanceWindowTargetsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowTargetsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- * Targets [MaintenanceWindowTargetList] <p>Information about the targets in the Maintenance Window.</p>
-- @return DescribeMaintenanceWindowTargetsResult structure as a key-value pair table
function M.DescribeMaintenanceWindowTargetsResult(args)
	assert(args, "You must provdide an argument table when creating DescribeMaintenanceWindowTargetsResult")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Targets"] = args["Targets"],
	}
	asserts.AssertDescribeMaintenanceWindowTargetsResult(t)
	return t
end

keys.DescribePatchGroupStateResult = { ["InstancesWithNotApplicablePatches"] = true, ["InstancesWithMissingPatches"] = true, ["InstancesWithFailedPatches"] = true, ["InstancesWithInstalledOtherPatches"] = true, ["Instances"] = true, ["InstancesWithInstalledPatches"] = true, nil }

function asserts.AssertDescribePatchGroupStateResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePatchGroupStateResult to be of type 'table'")
	if struct["InstancesWithNotApplicablePatches"] then asserts.AssertInteger(struct["InstancesWithNotApplicablePatches"]) end
	if struct["InstancesWithMissingPatches"] then asserts.AssertInteger(struct["InstancesWithMissingPatches"]) end
	if struct["InstancesWithFailedPatches"] then asserts.AssertInteger(struct["InstancesWithFailedPatches"]) end
	if struct["InstancesWithInstalledOtherPatches"] then asserts.AssertInteger(struct["InstancesWithInstalledOtherPatches"]) end
	if struct["Instances"] then asserts.AssertInteger(struct["Instances"]) end
	if struct["InstancesWithInstalledPatches"] then asserts.AssertInteger(struct["InstancesWithInstalledPatches"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePatchGroupStateResult[k], "DescribePatchGroupStateResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePatchGroupStateResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstancesWithNotApplicablePatches [Integer] <p>The number of instances with patches that aren't applicable.</p>
-- * InstancesWithMissingPatches [Integer] <p>The number of instances with missing patches from the patch baseline.</p>
-- * InstancesWithFailedPatches [Integer] <p>The number of instances with patches from the patch baseline that failed to install.</p>
-- * InstancesWithInstalledOtherPatches [Integer] <p>The number of instances with patches installed that aren't defined in the patch baseline.</p>
-- * Instances [Integer] <p>The number of instances in the patch group.</p>
-- * InstancesWithInstalledPatches [Integer] <p>The number of instances with installed patches.</p>
-- @return DescribePatchGroupStateResult structure as a key-value pair table
function M.DescribePatchGroupStateResult(args)
	assert(args, "You must provdide an argument table when creating DescribePatchGroupStateResult")
	local t = { 
		["InstancesWithNotApplicablePatches"] = args["InstancesWithNotApplicablePatches"],
		["InstancesWithMissingPatches"] = args["InstancesWithMissingPatches"],
		["InstancesWithFailedPatches"] = args["InstancesWithFailedPatches"],
		["InstancesWithInstalledOtherPatches"] = args["InstancesWithInstalledOtherPatches"],
		["Instances"] = args["Instances"],
		["InstancesWithInstalledPatches"] = args["InstancesWithInstalledPatches"],
	}
	asserts.AssertDescribePatchGroupStateResult(t)
	return t
end

keys.ItemContentMismatchException = { ["TypeName"] = true, ["Message"] = true, nil }

function asserts.AssertItemContentMismatchException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ItemContentMismatchException to be of type 'table'")
	if struct["TypeName"] then asserts.AssertInventoryItemTypeName(struct["TypeName"]) end
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ItemContentMismatchException[k], "ItemContentMismatchException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ItemContentMismatchException
-- <p>The inventory item has invalid content. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TypeName [InventoryItemTypeName] 
-- * Message [String] 
-- @return ItemContentMismatchException structure as a key-value pair table
function M.ItemContentMismatchException(args)
	assert(args, "You must provdide an argument table when creating ItemContentMismatchException")
	local t = { 
		["TypeName"] = args["TypeName"],
		["Message"] = args["Message"],
	}
	asserts.AssertItemContentMismatchException(t)
	return t
end

keys.DeleteParameterRequest = { ["Name"] = true, nil }

function asserts.AssertDeleteParameterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteParameterRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertPSParameterName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteParameterRequest[k], "DeleteParameterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteParameterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [PSParameterName] <p>The name of the parameter to delete.</p>
-- Required key: Name
-- @return DeleteParameterRequest structure as a key-value pair table
function M.DeleteParameterRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteParameterRequest")
	local t = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteParameterRequest(t)
	return t
end

keys.InvalidTarget = { ["Message"] = true, nil }

function asserts.AssertInvalidTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTarget to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidTarget[k], "InvalidTarget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTarget
-- <p>The target is not valid or does not exist. It might not be configured for EC2 Systems Manager or you might not have permission to perform the operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidTarget structure as a key-value pair table
function M.InvalidTarget(args)
	assert(args, "You must provdide an argument table when creating InvalidTarget")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidTarget(t)
	return t
end

keys.InstanceAssociation = { ["InstanceId"] = true, ["Content"] = true, ["AssociationId"] = true, nil }

function asserts.AssertInstanceAssociation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceAssociation to be of type 'table'")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["Content"] then asserts.AssertDocumentContent(struct["Content"]) end
	if struct["AssociationId"] then asserts.AssertAssociationId(struct["AssociationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceAssociation[k], "InstanceAssociation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceAssociation
-- <p>One or more association documents on the instance. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The instance ID.</p>
-- * Content [DocumentContent] <p>The content of the association document for the instance(s).</p>
-- * AssociationId [AssociationId] <p>The association ID.</p>
-- @return InstanceAssociation structure as a key-value pair table
function M.InstanceAssociation(args)
	assert(args, "You must provdide an argument table when creating InstanceAssociation")
	local t = { 
		["InstanceId"] = args["InstanceId"],
		["Content"] = args["Content"],
		["AssociationId"] = args["AssociationId"],
	}
	asserts.AssertInstanceAssociation(t)
	return t
end

keys.DescribeMaintenanceWindowExecutionTasksResult = { ["WindowExecutionTaskIdentities"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeMaintenanceWindowExecutionTasksResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowExecutionTasksResult to be of type 'table'")
	if struct["WindowExecutionTaskIdentities"] then asserts.AssertMaintenanceWindowExecutionTaskIdentityList(struct["WindowExecutionTaskIdentities"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMaintenanceWindowExecutionTasksResult[k], "DescribeMaintenanceWindowExecutionTasksResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowExecutionTasksResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WindowExecutionTaskIdentities [MaintenanceWindowExecutionTaskIdentityList] <p>Information about the task executions.</p>
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @return DescribeMaintenanceWindowExecutionTasksResult structure as a key-value pair table
function M.DescribeMaintenanceWindowExecutionTasksResult(args)
	assert(args, "You must provdide an argument table when creating DescribeMaintenanceWindowExecutionTasksResult")
	local t = { 
		["WindowExecutionTaskIdentities"] = args["WindowExecutionTaskIdentities"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeMaintenanceWindowExecutionTasksResult(t)
	return t
end

keys.DescribeAvailablePatchesResult = { ["NextToken"] = true, ["Patches"] = true, nil }

function asserts.AssertDescribeAvailablePatchesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAvailablePatchesResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Patches"] then asserts.AssertPatchList(struct["Patches"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAvailablePatchesResult[k], "DescribeAvailablePatchesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAvailablePatchesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- * Patches [PatchList] <p>An array of patches. Each entry in the array is a patch structure.</p>
-- @return DescribeAvailablePatchesResult structure as a key-value pair table
function M.DescribeAvailablePatchesResult(args)
	assert(args, "You must provdide an argument table when creating DescribeAvailablePatchesResult")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Patches"] = args["Patches"],
	}
	asserts.AssertDescribeAvailablePatchesResult(t)
	return t
end

keys.RegisterPatchBaselineForPatchGroupRequest = { ["PatchGroup"] = true, ["BaselineId"] = true, nil }

function asserts.AssertRegisterPatchBaselineForPatchGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterPatchBaselineForPatchGroupRequest to be of type 'table'")
	assert(struct["BaselineId"], "Expected key BaselineId to exist in table")
	assert(struct["PatchGroup"], "Expected key PatchGroup to exist in table")
	if struct["PatchGroup"] then asserts.AssertPatchGroup(struct["PatchGroup"]) end
	if struct["BaselineId"] then asserts.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterPatchBaselineForPatchGroupRequest[k], "RegisterPatchBaselineForPatchGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterPatchBaselineForPatchGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PatchGroup [PatchGroup] <p>The name of the patch group that should be registered with the patch baseline.</p>
-- * BaselineId [BaselineId] <p>The ID of the patch baseline to register the patch group with.</p>
-- Required key: BaselineId
-- Required key: PatchGroup
-- @return RegisterPatchBaselineForPatchGroupRequest structure as a key-value pair table
function M.RegisterPatchBaselineForPatchGroupRequest(args)
	assert(args, "You must provdide an argument table when creating RegisterPatchBaselineForPatchGroupRequest")
	local t = { 
		["PatchGroup"] = args["PatchGroup"],
		["BaselineId"] = args["BaselineId"],
	}
	asserts.AssertRegisterPatchBaselineForPatchGroupRequest(t)
	return t
end

keys.StepExecution = { ["Inputs"] = true, ["Outputs"] = true, ["StepName"] = true, ["FailureMessage"] = true, ["ExecutionEndTime"] = true, ["FailureDetails"] = true, ["ResponseCode"] = true, ["ExecutionStartTime"] = true, ["Action"] = true, ["Response"] = true, ["StepStatus"] = true, nil }

function asserts.AssertStepExecution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StepExecution to be of type 'table'")
	if struct["Inputs"] then asserts.AssertNormalStringMap(struct["Inputs"]) end
	if struct["Outputs"] then asserts.AssertAutomationParameterMap(struct["Outputs"]) end
	if struct["StepName"] then asserts.AssertString(struct["StepName"]) end
	if struct["FailureMessage"] then asserts.AssertString(struct["FailureMessage"]) end
	if struct["ExecutionEndTime"] then asserts.AssertDateTime(struct["ExecutionEndTime"]) end
	if struct["FailureDetails"] then asserts.AssertFailureDetails(struct["FailureDetails"]) end
	if struct["ResponseCode"] then asserts.AssertString(struct["ResponseCode"]) end
	if struct["ExecutionStartTime"] then asserts.AssertDateTime(struct["ExecutionStartTime"]) end
	if struct["Action"] then asserts.AssertAutomationActionName(struct["Action"]) end
	if struct["Response"] then asserts.AssertString(struct["Response"]) end
	if struct["StepStatus"] then asserts.AssertAutomationExecutionStatus(struct["StepStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.StepExecution[k], "StepExecution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StepExecution
-- <p>Detailed information about an the execution state of an Automation step.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Inputs [NormalStringMap] <p>Fully-resolved values passed into the step before execution.</p>
-- * Outputs [AutomationParameterMap] <p>Returned values from the execution of the step.</p>
-- * StepName [String] <p>The name of this execution step.</p>
-- * FailureMessage [String] <p>If a step failed, this message explains why the execution failed.</p>
-- * ExecutionEndTime [DateTime] <p>If a step has finished execution, this contains the time the execution ended. If the step has not yet concluded, this field is not populated.</p>
-- * FailureDetails [FailureDetails] <p>Information about the Automation failure.</p>
-- * ResponseCode [String] <p>The response code returned by the execution of the step.</p>
-- * ExecutionStartTime [DateTime] <p>If a step has begun execution, this contains the time the step started. If the step is in Pending status, this field is not populated.</p>
-- * Action [AutomationActionName] <p>The action this step performs. The action determines the behavior of the step.</p>
-- * Response [String] <p>A message associated with the response code for an execution.</p>
-- * StepStatus [AutomationExecutionStatus] <p>The execution status for this step. Valid values include: Pending, InProgress, Success, Cancelled, Failed, and TimedOut.</p>
-- @return StepExecution structure as a key-value pair table
function M.StepExecution(args)
	assert(args, "You must provdide an argument table when creating StepExecution")
	local t = { 
		["Inputs"] = args["Inputs"],
		["Outputs"] = args["Outputs"],
		["StepName"] = args["StepName"],
		["FailureMessage"] = args["FailureMessage"],
		["ExecutionEndTime"] = args["ExecutionEndTime"],
		["FailureDetails"] = args["FailureDetails"],
		["ResponseCode"] = args["ResponseCode"],
		["ExecutionStartTime"] = args["ExecutionStartTime"],
		["Action"] = args["Action"],
		["Response"] = args["Response"],
		["StepStatus"] = args["StepStatus"],
	}
	asserts.AssertStepExecution(t)
	return t
end

keys.InstancePatchStateFilter = { ["Type"] = true, ["Values"] = true, ["Key"] = true, nil }

function asserts.AssertInstancePatchStateFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstancePatchStateFilter to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Type"] then asserts.AssertInstancePatchStateOperatorType(struct["Type"]) end
	if struct["Values"] then asserts.AssertInstancePatchStateFilterValues(struct["Values"]) end
	if struct["Key"] then asserts.AssertInstancePatchStateFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstancePatchStateFilter[k], "InstancePatchStateFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstancePatchStateFilter
-- <p>Defines a filter used in DescribeInstancePatchStatesForPatchGroup used to scope down the information returned by the API.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [InstancePatchStateOperatorType] <p>The type of comparison that should be performed for the value: Equal, NotEqual, LessThan or GreaterThan.</p>
-- * Values [InstancePatchStateFilterValues] <p>The value for the filter, must be an integer greater than or equal to 0.</p>
-- * Key [InstancePatchStateFilterKey] <p>The key for the filter. Supported values are FailedCount, InstalledCount, InstalledOtherCount, MissingCount and NotApplicableCount.</p>
-- Required key: Key
-- Required key: Values
-- Required key: Type
-- @return InstancePatchStateFilter structure as a key-value pair table
function M.InstancePatchStateFilter(args)
	assert(args, "You must provdide an argument table when creating InstancePatchStateFilter")
	local t = { 
		["Type"] = args["Type"],
		["Values"] = args["Values"],
		["Key"] = args["Key"],
	}
	asserts.AssertInstancePatchStateFilter(t)
	return t
end

keys.DescribePatchBaselinesRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribePatchBaselinesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePatchBaselinesRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPatchBaselineMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then asserts.AssertPatchOrchestratorFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePatchBaselinesRequest[k], "DescribePatchBaselinesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePatchBaselinesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * MaxResults [PatchBaselineMaxResults] <p>The maximum number of patch baselines to return (per page).</p>
-- * Filters [PatchOrchestratorFilterList] <p>Each element in the array is a structure containing: </p> <p>Key: (string, "NAME_PREFIX" or "OWNER")</p> <p>Value: (array of strings, exactly 1 entry, between 1 and 255 characters)</p>
-- @return DescribePatchBaselinesRequest structure as a key-value pair table
function M.DescribePatchBaselinesRequest(args)
	assert(args, "You must provdide an argument table when creating DescribePatchBaselinesRequest")
	local t = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribePatchBaselinesRequest(t)
	return t
end

keys.AutomationDefinitionVersionNotFoundException = { ["Message"] = true, nil }

function asserts.AssertAutomationDefinitionVersionNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutomationDefinitionVersionNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutomationDefinitionVersionNotFoundException[k], "AutomationDefinitionVersionNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutomationDefinitionVersionNotFoundException
-- <p>An Automation document with the specified name and version could not be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return AutomationDefinitionVersionNotFoundException structure as a key-value pair table
function M.AutomationDefinitionVersionNotFoundException(args)
	assert(args, "You must provdide an argument table when creating AutomationDefinitionVersionNotFoundException")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertAutomationDefinitionVersionNotFoundException(t)
	return t
end

keys.DescribeActivationsResult = { ["NextToken"] = true, ["ActivationList"] = true, nil }

function asserts.AssertDescribeActivationsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeActivationsResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ActivationList"] then asserts.AssertActivationList(struct["ActivationList"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeActivationsResult[k], "DescribeActivationsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeActivationsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token for the next set of items to return. Use this token to get the next set of results. </p>
-- * ActivationList [ActivationList] <p>A list of activations for your AWS account.</p>
-- @return DescribeActivationsResult structure as a key-value pair table
function M.DescribeActivationsResult(args)
	assert(args, "You must provdide an argument table when creating DescribeActivationsResult")
	local t = { 
		["NextToken"] = args["NextToken"],
		["ActivationList"] = args["ActivationList"],
	}
	asserts.AssertDescribeActivationsResult(t)
	return t
end

keys.StartAutomationExecutionResult = { ["AutomationExecutionId"] = true, nil }

function asserts.AssertStartAutomationExecutionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartAutomationExecutionResult to be of type 'table'")
	if struct["AutomationExecutionId"] then asserts.AssertAutomationExecutionId(struct["AutomationExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartAutomationExecutionResult[k], "StartAutomationExecutionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartAutomationExecutionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutomationExecutionId [AutomationExecutionId] <p>The unique ID of a newly scheduled automation execution.</p>
-- @return StartAutomationExecutionResult structure as a key-value pair table
function M.StartAutomationExecutionResult(args)
	assert(args, "You must provdide an argument table when creating StartAutomationExecutionResult")
	local t = { 
		["AutomationExecutionId"] = args["AutomationExecutionId"],
	}
	asserts.AssertStartAutomationExecutionResult(t)
	return t
end

keys.ListDocumentVersionsResult = { ["DocumentVersions"] = true, ["NextToken"] = true, nil }

function asserts.AssertListDocumentVersionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDocumentVersionsResult to be of type 'table'")
	if struct["DocumentVersions"] then asserts.AssertDocumentVersionList(struct["DocumentVersions"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDocumentVersionsResult[k], "ListDocumentVersionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDocumentVersionsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DocumentVersions [DocumentVersionList] <p>The document versions.</p>
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @return ListDocumentVersionsResult structure as a key-value pair table
function M.ListDocumentVersionsResult(args)
	assert(args, "You must provdide an argument table when creating ListDocumentVersionsResult")
	local t = { 
		["DocumentVersions"] = args["DocumentVersions"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListDocumentVersionsResult(t)
	return t
end

keys.DescribeEffectivePatchesForPatchBaselineRequest = { ["NextToken"] = true, ["BaselineId"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeEffectivePatchesForPatchBaselineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEffectivePatchesForPatchBaselineRequest to be of type 'table'")
	assert(struct["BaselineId"], "Expected key BaselineId to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["BaselineId"] then asserts.AssertBaselineId(struct["BaselineId"]) end
	if struct["MaxResults"] then asserts.AssertPatchBaselineMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEffectivePatchesForPatchBaselineRequest[k], "DescribeEffectivePatchesForPatchBaselineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEffectivePatchesForPatchBaselineRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * BaselineId [BaselineId] <p>The ID of the patch baseline to retrieve the effective patches for.</p>
-- * MaxResults [PatchBaselineMaxResults] <p>The maximum number of patches to return (per page).</p>
-- Required key: BaselineId
-- @return DescribeEffectivePatchesForPatchBaselineRequest structure as a key-value pair table
function M.DescribeEffectivePatchesForPatchBaselineRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeEffectivePatchesForPatchBaselineRequest")
	local t = { 
		["NextToken"] = args["NextToken"],
		["BaselineId"] = args["BaselineId"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeEffectivePatchesForPatchBaselineRequest(t)
	return t
end

keys.Activation = { ["IamRole"] = true, ["RegistrationLimit"] = true, ["Description"] = true, ["ActivationId"] = true, ["RegistrationsCount"] = true, ["CreatedDate"] = true, ["DefaultInstanceName"] = true, ["Expired"] = true, ["ExpirationDate"] = true, nil }

function asserts.AssertActivation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Activation to be of type 'table'")
	if struct["IamRole"] then asserts.AssertIamRole(struct["IamRole"]) end
	if struct["RegistrationLimit"] then asserts.AssertRegistrationLimit(struct["RegistrationLimit"]) end
	if struct["Description"] then asserts.AssertActivationDescription(struct["Description"]) end
	if struct["ActivationId"] then asserts.AssertActivationId(struct["ActivationId"]) end
	if struct["RegistrationsCount"] then asserts.AssertRegistrationsCount(struct["RegistrationsCount"]) end
	if struct["CreatedDate"] then asserts.AssertCreatedDate(struct["CreatedDate"]) end
	if struct["DefaultInstanceName"] then asserts.AssertDefaultInstanceName(struct["DefaultInstanceName"]) end
	if struct["Expired"] then asserts.AssertBoolean(struct["Expired"]) end
	if struct["ExpirationDate"] then asserts.AssertExpirationDate(struct["ExpirationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.Activation[k], "Activation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Activation
-- <p>An activation registers one or more on-premises servers or virtual machines (VMs) with AWS so that you can configure those servers or VMs using Run Command. A server or VM that has been registered with AWS is called a managed instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IamRole [IamRole] <p>The Amazon Identity and Access Management (IAM) role to assign to the managed instance.</p>
-- * RegistrationLimit [RegistrationLimit] <p>The maximum number of managed instances that can be registered using this activation.</p>
-- * Description [ActivationDescription] <p>A user defined description of the activation.</p>
-- * ActivationId [ActivationId] <p>The ID created by Systems Manager when you submitted the activation.</p>
-- * RegistrationsCount [RegistrationsCount] <p>The number of managed instances already registered with this activation.</p>
-- * CreatedDate [CreatedDate] <p>The date the activation was created.</p>
-- * DefaultInstanceName [DefaultInstanceName] <p>A name for the managed instance when it is created.</p>
-- * Expired [Boolean] <p>Whether or not the activation is expired.</p>
-- * ExpirationDate [ExpirationDate] <p>The date when this activation can no longer be used to register managed instances.</p>
-- @return Activation structure as a key-value pair table
function M.Activation(args)
	assert(args, "You must provdide an argument table when creating Activation")
	local t = { 
		["IamRole"] = args["IamRole"],
		["RegistrationLimit"] = args["RegistrationLimit"],
		["Description"] = args["Description"],
		["ActivationId"] = args["ActivationId"],
		["RegistrationsCount"] = args["RegistrationsCount"],
		["CreatedDate"] = args["CreatedDate"],
		["DefaultInstanceName"] = args["DefaultInstanceName"],
		["Expired"] = args["Expired"],
		["ExpirationDate"] = args["ExpirationDate"],
	}
	asserts.AssertActivation(t)
	return t
end

keys.SendCommandResult = { ["Command"] = true, nil }

function asserts.AssertSendCommandResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendCommandResult to be of type 'table'")
	if struct["Command"] then asserts.AssertCommand(struct["Command"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendCommandResult[k], "SendCommandResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendCommandResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Command [Command] <p>The request as it was received by Systems Manager. Also provides the command ID which can be used future references to this request.</p>
-- @return SendCommandResult structure as a key-value pair table
function M.SendCommandResult(args)
	assert(args, "You must provdide an argument table when creating SendCommandResult")
	local t = { 
		["Command"] = args["Command"],
	}
	asserts.AssertSendCommandResult(t)
	return t
end

keys.GetInventoryRequest = { ["ResultAttributes"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["Filters"] = true, nil }

function asserts.AssertGetInventoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInventoryRequest to be of type 'table'")
	if struct["ResultAttributes"] then asserts.AssertResultAttributeList(struct["ResultAttributes"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then asserts.AssertInventoryFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInventoryRequest[k], "GetInventoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInventoryRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResultAttributes [ResultAttributeList] <p>The list of inventory item types to return.</p>
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * MaxResults [MaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- * Filters [InventoryFilterList] <p>One or more filters. Use a filter to return a more specific list of results.</p>
-- @return GetInventoryRequest structure as a key-value pair table
function M.GetInventoryRequest(args)
	assert(args, "You must provdide an argument table when creating GetInventoryRequest")
	local t = { 
		["ResultAttributes"] = args["ResultAttributes"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertGetInventoryRequest(t)
	return t
end

keys.CreateAssociationResult = { ["AssociationDescription"] = true, nil }

function asserts.AssertCreateAssociationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAssociationResult to be of type 'table'")
	if struct["AssociationDescription"] then asserts.AssertAssociationDescription(struct["AssociationDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAssociationResult[k], "CreateAssociationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAssociationResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AssociationDescription [AssociationDescription] <p>Information about the association.</p>
-- @return CreateAssociationResult structure as a key-value pair table
function M.CreateAssociationResult(args)
	assert(args, "You must provdide an argument table when creating CreateAssociationResult")
	local t = { 
		["AssociationDescription"] = args["AssociationDescription"],
	}
	asserts.AssertCreateAssociationResult(t)
	return t
end

keys.InvalidDocument = { ["Message"] = true, nil }

function asserts.AssertInvalidDocument(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDocument to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidDocument[k], "InvalidDocument contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDocument
-- <p>The specified document does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] <p>The document does not exist or the document is not available to the user. This exception can be issued by CreateAssociation, CreateAssociationBatch, DeleteAssociation, DeleteDocument, DescribeAssociation, DescribeDocument, GetDocument, SendCommand, or UpdateAssociationStatus. </p>
-- @return InvalidDocument structure as a key-value pair table
function M.InvalidDocument(args)
	assert(args, "You must provdide an argument table when creating InvalidDocument")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidDocument(t)
	return t
end

keys.DeleteAssociationResult = { nil }

function asserts.AssertDeleteAssociationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAssociationResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteAssociationResult[k], "DeleteAssociationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAssociationResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteAssociationResult structure as a key-value pair table
function M.DeleteAssociationResult(args)
	assert(args, "You must provdide an argument table when creating DeleteAssociationResult")
	local t = { 
	}
	asserts.AssertDeleteAssociationResult(t)
	return t
end

keys.MaxDocumentSizeExceeded = { ["Message"] = true, nil }

function asserts.AssertMaxDocumentSizeExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaxDocumentSizeExceeded to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MaxDocumentSizeExceeded[k], "MaxDocumentSizeExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaxDocumentSizeExceeded
-- <p>The size limit of a document is 64 KB.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return MaxDocumentSizeExceeded structure as a key-value pair table
function M.MaxDocumentSizeExceeded(args)
	assert(args, "You must provdide an argument table when creating MaxDocumentSizeExceeded")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertMaxDocumentSizeExceeded(t)
	return t
end

keys.DescribePatchBaselinesResult = { ["NextToken"] = true, ["BaselineIdentities"] = true, nil }

function asserts.AssertDescribePatchBaselinesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePatchBaselinesResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["BaselineIdentities"] then asserts.AssertPatchBaselineIdentityList(struct["BaselineIdentities"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePatchBaselinesResult[k], "DescribePatchBaselinesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePatchBaselinesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- * BaselineIdentities [PatchBaselineIdentityList] <p>An array of PatchBaselineIdentity elements.</p>
-- @return DescribePatchBaselinesResult structure as a key-value pair table
function M.DescribePatchBaselinesResult(args)
	assert(args, "You must provdide an argument table when creating DescribePatchBaselinesResult")
	local t = { 
		["NextToken"] = args["NextToken"],
		["BaselineIdentities"] = args["BaselineIdentities"],
	}
	asserts.AssertDescribePatchBaselinesResult(t)
	return t
end

keys.DescribeMaintenanceWindowExecutionsResult = { ["WindowExecutions"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeMaintenanceWindowExecutionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowExecutionsResult to be of type 'table'")
	if struct["WindowExecutions"] then asserts.AssertMaintenanceWindowExecutionList(struct["WindowExecutions"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMaintenanceWindowExecutionsResult[k], "DescribeMaintenanceWindowExecutionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowExecutionsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WindowExecutions [MaintenanceWindowExecutionList] <p>Information about the Maintenance Windows execution.</p>
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @return DescribeMaintenanceWindowExecutionsResult structure as a key-value pair table
function M.DescribeMaintenanceWindowExecutionsResult(args)
	assert(args, "You must provdide an argument table when creating DescribeMaintenanceWindowExecutionsResult")
	local t = { 
		["WindowExecutions"] = args["WindowExecutions"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeMaintenanceWindowExecutionsResult(t)
	return t
end

keys.CreatePatchBaselineResult = { ["BaselineId"] = true, nil }

function asserts.AssertCreatePatchBaselineResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePatchBaselineResult to be of type 'table'")
	if struct["BaselineId"] then asserts.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePatchBaselineResult[k], "CreatePatchBaselineResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePatchBaselineResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BaselineId [BaselineId] <p>The ID of the created patch baseline.</p>
-- @return CreatePatchBaselineResult structure as a key-value pair table
function M.CreatePatchBaselineResult(args)
	assert(args, "You must provdide an argument table when creating CreatePatchBaselineResult")
	local t = { 
		["BaselineId"] = args["BaselineId"],
	}
	asserts.AssertCreatePatchBaselineResult(t)
	return t
end

keys.PatchGroupPatchBaselineMapping = { ["PatchGroup"] = true, ["BaselineIdentity"] = true, nil }

function asserts.AssertPatchGroupPatchBaselineMapping(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PatchGroupPatchBaselineMapping to be of type 'table'")
	if struct["PatchGroup"] then asserts.AssertPatchGroup(struct["PatchGroup"]) end
	if struct["BaselineIdentity"] then asserts.AssertPatchBaselineIdentity(struct["BaselineIdentity"]) end
	for k,_ in pairs(struct) do
		assert(keys.PatchGroupPatchBaselineMapping[k], "PatchGroupPatchBaselineMapping contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PatchGroupPatchBaselineMapping
-- <p>The mapping between a patch group and the patch baseline the patch group is registered with.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PatchGroup [PatchGroup] <p>The name of the patch group registered with the patch baseline.</p>
-- * BaselineIdentity [PatchBaselineIdentity] <p>The patch baseline the patch group is registered with.</p>
-- @return PatchGroupPatchBaselineMapping structure as a key-value pair table
function M.PatchGroupPatchBaselineMapping(args)
	assert(args, "You must provdide an argument table when creating PatchGroupPatchBaselineMapping")
	local t = { 
		["PatchGroup"] = args["PatchGroup"],
		["BaselineIdentity"] = args["BaselineIdentity"],
	}
	asserts.AssertPatchGroupPatchBaselineMapping(t)
	return t
end

keys.InvalidInstanceInformationFilterValue = { ["message"] = true, nil }

function asserts.AssertInvalidInstanceInformationFilterValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInstanceInformationFilterValue to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidInstanceInformationFilterValue[k], "InvalidInstanceInformationFilterValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInstanceInformationFilterValue
-- <p>The specified filter value is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return InvalidInstanceInformationFilterValue structure as a key-value pair table
function M.InvalidInstanceInformationFilterValue(args)
	assert(args, "You must provdide an argument table when creating InvalidInstanceInformationFilterValue")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidInstanceInformationFilterValue(t)
	return t
end

keys.StopAutomationExecutionResult = { nil }

function asserts.AssertStopAutomationExecutionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopAutomationExecutionResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StopAutomationExecutionResult[k], "StopAutomationExecutionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopAutomationExecutionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StopAutomationExecutionResult structure as a key-value pair table
function M.StopAutomationExecutionResult(args)
	assert(args, "You must provdide an argument table when creating StopAutomationExecutionResult")
	local t = { 
	}
	asserts.AssertStopAutomationExecutionResult(t)
	return t
end

keys.GetPatchBaselineForPatchGroupResult = { ["PatchGroup"] = true, ["BaselineId"] = true, nil }

function asserts.AssertGetPatchBaselineForPatchGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPatchBaselineForPatchGroupResult to be of type 'table'")
	if struct["PatchGroup"] then asserts.AssertPatchGroup(struct["PatchGroup"]) end
	if struct["BaselineId"] then asserts.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPatchBaselineForPatchGroupResult[k], "GetPatchBaselineForPatchGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPatchBaselineForPatchGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PatchGroup [PatchGroup] <p>The name of the patch group.</p>
-- * BaselineId [BaselineId] <p>The ID of the patch baseline that should be used for the patch group.</p>
-- @return GetPatchBaselineForPatchGroupResult structure as a key-value pair table
function M.GetPatchBaselineForPatchGroupResult(args)
	assert(args, "You must provdide an argument table when creating GetPatchBaselineForPatchGroupResult")
	local t = { 
		["PatchGroup"] = args["PatchGroup"],
		["BaselineId"] = args["BaselineId"],
	}
	asserts.AssertGetPatchBaselineForPatchGroupResult(t)
	return t
end

keys.ParameterHistory = { ["KeyId"] = true, ["Name"] = true, ["LastModifiedDate"] = true, ["Value"] = true, ["AllowedPattern"] = true, ["LastModifiedUser"] = true, ["Type"] = true, ["Description"] = true, nil }

function asserts.AssertParameterHistory(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterHistory to be of type 'table'")
	if struct["KeyId"] then asserts.AssertParameterKeyId(struct["KeyId"]) end
	if struct["Name"] then asserts.AssertPSParameterName(struct["Name"]) end
	if struct["LastModifiedDate"] then asserts.AssertDateTime(struct["LastModifiedDate"]) end
	if struct["Value"] then asserts.AssertPSParameterValue(struct["Value"]) end
	if struct["AllowedPattern"] then asserts.AssertAllowedPattern(struct["AllowedPattern"]) end
	if struct["LastModifiedUser"] then asserts.AssertString(struct["LastModifiedUser"]) end
	if struct["Type"] then asserts.AssertParameterType(struct["Type"]) end
	if struct["Description"] then asserts.AssertParameterDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParameterHistory[k], "ParameterHistory contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterHistory
-- <p>Information about parameter usage.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KeyId [ParameterKeyId] <p>The ID of the query key used for this parameter.</p>
-- * Name [PSParameterName] <p>The name of the parameter.</p>
-- * LastModifiedDate [DateTime] <p>Date the parameter was last changed or updated.</p>
-- * Value [PSParameterValue] <p>The parameter value.</p>
-- * AllowedPattern [AllowedPattern] <p>Parameter names can include the following letters and symbols.</p> <p>a-zA-Z0-9_.-</p>
-- * LastModifiedUser [String] <p>Amazon Resource Name (ARN) of the AWS user who last changed the parameter.</p>
-- * Type [ParameterType] <p>The type of parameter used.</p>
-- * Description [ParameterDescription] <p>Information about the parameter.</p>
-- @return ParameterHistory structure as a key-value pair table
function M.ParameterHistory(args)
	assert(args, "You must provdide an argument table when creating ParameterHistory")
	local t = { 
		["KeyId"] = args["KeyId"],
		["Name"] = args["Name"],
		["LastModifiedDate"] = args["LastModifiedDate"],
		["Value"] = args["Value"],
		["AllowedPattern"] = args["AllowedPattern"],
		["LastModifiedUser"] = args["LastModifiedUser"],
		["Type"] = args["Type"],
		["Description"] = args["Description"],
	}
	asserts.AssertParameterHistory(t)
	return t
end

keys.AutomationDefinitionNotFoundException = { ["Message"] = true, nil }

function asserts.AssertAutomationDefinitionNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutomationDefinitionNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutomationDefinitionNotFoundException[k], "AutomationDefinitionNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutomationDefinitionNotFoundException
-- <p>An Automation document with the specified name could not be found.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return AutomationDefinitionNotFoundException structure as a key-value pair table
function M.AutomationDefinitionNotFoundException(args)
	assert(args, "You must provdide an argument table when creating AutomationDefinitionNotFoundException")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertAutomationDefinitionNotFoundException(t)
	return t
end

keys.CommandPlugin = { ["Status"] = true, ["ResponseStartDateTime"] = true, ["StandardErrorUrl"] = true, ["OutputS3BucketName"] = true, ["OutputS3Region"] = true, ["OutputS3KeyPrefix"] = true, ["ResponseCode"] = true, ["Output"] = true, ["ResponseFinishDateTime"] = true, ["StatusDetails"] = true, ["StandardOutputUrl"] = true, ["Name"] = true, nil }

function asserts.AssertCommandPlugin(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CommandPlugin to be of type 'table'")
	if struct["Status"] then asserts.AssertCommandPluginStatus(struct["Status"]) end
	if struct["ResponseStartDateTime"] then asserts.AssertDateTime(struct["ResponseStartDateTime"]) end
	if struct["StandardErrorUrl"] then asserts.AssertUrl(struct["StandardErrorUrl"]) end
	if struct["OutputS3BucketName"] then asserts.AssertS3BucketName(struct["OutputS3BucketName"]) end
	if struct["OutputS3Region"] then asserts.AssertS3Region(struct["OutputS3Region"]) end
	if struct["OutputS3KeyPrefix"] then asserts.AssertS3KeyPrefix(struct["OutputS3KeyPrefix"]) end
	if struct["ResponseCode"] then asserts.AssertResponseCode(struct["ResponseCode"]) end
	if struct["Output"] then asserts.AssertCommandPluginOutput(struct["Output"]) end
	if struct["ResponseFinishDateTime"] then asserts.AssertDateTime(struct["ResponseFinishDateTime"]) end
	if struct["StatusDetails"] then asserts.AssertStatusDetails(struct["StatusDetails"]) end
	if struct["StandardOutputUrl"] then asserts.AssertUrl(struct["StandardOutputUrl"]) end
	if struct["Name"] then asserts.AssertCommandPluginName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CommandPlugin[k], "CommandPlugin contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CommandPlugin
-- <p>Describes plugin details.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [CommandPluginStatus] <p>The status of this plugin. You can execute a document with multiple plugins.</p>
-- * ResponseStartDateTime [DateTime] <p>The time the plugin started executing. </p>
-- * StandardErrorUrl [Url] <p>The URL for the complete text written by the plugin to stderr. If execution is not yet complete, then this string is empty.</p>
-- * OutputS3BucketName [S3BucketName] <p>The S3 bucket where the responses to the command executions should be stored. This was requested when issuing the command. For example, in the following response:</p> <p> test_folder/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix/i-1234567876543/awsrunShellScript </p> <p>test_folder is the name of the Amazon S3 bucket;</p> <p> ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix is the name of the S3 prefix;</p> <p>i-1234567876543 is the instance ID;</p> <p>awsrunShellScript is the name of the plugin.</p>
-- * OutputS3Region [S3Region] <p>(Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager automatically determines the Amazon S3 bucket region.</p>
-- * OutputS3KeyPrefix [S3KeyPrefix] <p>The S3 directory path inside the bucket where the responses to the command executions should be stored. This was requested when issuing the command. For example, in the following response:</p> <p> test_folder/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix/i-1234567876543/awsrunShellScript </p> <p>test_folder is the name of the Amazon S3 bucket;</p> <p> ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix is the name of the S3 prefix;</p> <p>i-1234567876543 is the instance ID;</p> <p>awsrunShellScript is the name of the plugin.</p>
-- * ResponseCode [ResponseCode] <p>A numeric response code generated after executing the plugin. </p>
-- * Output [CommandPluginOutput] <p>Output of the plugin execution.</p>
-- * ResponseFinishDateTime [DateTime] <p>The time the plugin stopped executing. Could stop prematurely if, for example, a cancel command was sent. </p>
-- * StatusDetails [StatusDetails] <p>A detailed status of the plugin execution. StatusDetails includes more information than Status because it includes states resulting from error and concurrency control parameters. StatusDetails can show different results than Status. For more information about these statuses, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-about-status.html">Run Command Status</a>. StatusDetails can be one of the following values:</p> <ul> <li> <p>Pending: The command has not been sent to the instance.</p> </li> <li> <p>In Progress: The command has been sent to the instance but has not reached a terminal state.</p> </li> <li> <p>Success: The execution of the command or plugin was successfully completed. This is a terminal state.</p> </li> <li> <p>Delivery Timed Out: The command was not delivered to the instance before the delivery timeout expired. Delivery timeouts do not count against the parent command's MaxErrors limit, but they do contribute to whether the parent command status is Success or Incomplete. This is a terminal state.</p> </li> <li> <p>Execution Timed Out: Command execution started on the instance, but the execution was not complete before the execution timeout expired. Execution timeouts count against the MaxErrors limit of the parent command. This is a terminal state.</p> </li> <li> <p>Failed: The command was not successful on the instance. For a plugin, this indicates that the result code was not zero. For a command invocation, this indicates that the result code for one or more plugins was not zero. Invocation failures count against the MaxErrors limit of the parent command. This is a terminal state.</p> </li> <li> <p>Canceled: The command was terminated before it was completed. This is a terminal state.</p> </li> <li> <p>Undeliverable: The command can't be delivered to the instance. The instance might not exist, or it might not be responding. Undeliverable invocations don't count against the parent command's MaxErrors limit, and they don't contribute to whether the parent command status is Success or Incomplete. This is a terminal state.</p> </li> <li> <p>Terminated: The parent command exceeded its MaxErrors limit and subsequent command invocations were canceled by the system. This is a terminal state.</p> </li> </ul>
-- * StandardOutputUrl [Url] <p>The URL for the complete text written by the plugin to stdout in Amazon S3. If the Amazon S3 bucket for the command was not specified, then this string is empty.</p>
-- * Name [CommandPluginName] <p>The name of the plugin. Must be one of the following: aws:updateAgent, aws:domainjoin, aws:applications, aws:runPowerShellScript, aws:psmodule, aws:cloudWatch, aws:runShellScript, or aws:updateSSMAgent. </p>
-- @return CommandPlugin structure as a key-value pair table
function M.CommandPlugin(args)
	assert(args, "You must provdide an argument table when creating CommandPlugin")
	local t = { 
		["Status"] = args["Status"],
		["ResponseStartDateTime"] = args["ResponseStartDateTime"],
		["StandardErrorUrl"] = args["StandardErrorUrl"],
		["OutputS3BucketName"] = args["OutputS3BucketName"],
		["OutputS3Region"] = args["OutputS3Region"],
		["OutputS3KeyPrefix"] = args["OutputS3KeyPrefix"],
		["ResponseCode"] = args["ResponseCode"],
		["Output"] = args["Output"],
		["ResponseFinishDateTime"] = args["ResponseFinishDateTime"],
		["StatusDetails"] = args["StatusDetails"],
		["StandardOutputUrl"] = args["StandardOutputUrl"],
		["Name"] = args["Name"],
	}
	asserts.AssertCommandPlugin(t)
	return t
end

keys.DocumentLimitExceeded = { ["Message"] = true, nil }

function asserts.AssertDocumentLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentLimitExceeded to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentLimitExceeded[k], "DocumentLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentLimitExceeded
-- <p>You can have at most 200 active SSM documents.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return DocumentLimitExceeded structure as a key-value pair table
function M.DocumentLimitExceeded(args)
	assert(args, "You must provdide an argument table when creating DocumentLimitExceeded")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertDocumentLimitExceeded(t)
	return t
end

keys.DescribeEffectiveInstanceAssociationsResult = { ["Associations"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeEffectiveInstanceAssociationsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEffectiveInstanceAssociationsResult to be of type 'table'")
	if struct["Associations"] then asserts.AssertInstanceAssociationList(struct["Associations"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEffectiveInstanceAssociationsResult[k], "DescribeEffectiveInstanceAssociationsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEffectiveInstanceAssociationsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Associations [InstanceAssociationList] <p>The associations for the requested instance.</p>
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @return DescribeEffectiveInstanceAssociationsResult structure as a key-value pair table
function M.DescribeEffectiveInstanceAssociationsResult(args)
	assert(args, "You must provdide an argument table when creating DescribeEffectiveInstanceAssociationsResult")
	local t = { 
		["Associations"] = args["Associations"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeEffectiveInstanceAssociationsResult(t)
	return t
end

keys.MaintenanceWindowExecutionTaskInvocationIdentity = { ["Status"] = true, ["Parameters"] = true, ["OwnerInformation"] = true, ["WindowTargetId"] = true, ["ExecutionId"] = true, ["InvocationId"] = true, ["StartTime"] = true, ["EndTime"] = true, ["WindowExecutionId"] = true, ["StatusDetails"] = true, ["TaskExecutionId"] = true, nil }

function asserts.AssertMaintenanceWindowExecutionTaskInvocationIdentity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaintenanceWindowExecutionTaskInvocationIdentity to be of type 'table'")
	if struct["Status"] then asserts.AssertMaintenanceWindowExecutionStatus(struct["Status"]) end
	if struct["Parameters"] then asserts.AssertMaintenanceWindowExecutionTaskInvocationParameters(struct["Parameters"]) end
	if struct["OwnerInformation"] then asserts.AssertOwnerInformation(struct["OwnerInformation"]) end
	if struct["WindowTargetId"] then asserts.AssertMaintenanceWindowTaskTargetId(struct["WindowTargetId"]) end
	if struct["ExecutionId"] then asserts.AssertMaintenanceWindowExecutionTaskExecutionId(struct["ExecutionId"]) end
	if struct["InvocationId"] then asserts.AssertMaintenanceWindowExecutionTaskInvocationId(struct["InvocationId"]) end
	if struct["StartTime"] then asserts.AssertDateTime(struct["StartTime"]) end
	if struct["EndTime"] then asserts.AssertDateTime(struct["EndTime"]) end
	if struct["WindowExecutionId"] then asserts.AssertMaintenanceWindowExecutionId(struct["WindowExecutionId"]) end
	if struct["StatusDetails"] then asserts.AssertMaintenanceWindowExecutionStatusDetails(struct["StatusDetails"]) end
	if struct["TaskExecutionId"] then asserts.AssertMaintenanceWindowExecutionTaskId(struct["TaskExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.MaintenanceWindowExecutionTaskInvocationIdentity[k], "MaintenanceWindowExecutionTaskInvocationIdentity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaintenanceWindowExecutionTaskInvocationIdentity
-- <p>Describes the information about a task invocation for a particular target as part of a task execution performed as part of a Maintenance Window execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [MaintenanceWindowExecutionStatus] <p>The status of the task invocation.</p>
-- * Parameters [MaintenanceWindowExecutionTaskInvocationParameters] <p>The parameters that were provided for the invocation when it was executed.</p>
-- * OwnerInformation [OwnerInformation] <p>User-provided value that was specified when the target was registered with the Maintenance Window. This was also included in any CloudWatch events raised during the task invocation.</p>
-- * WindowTargetId [MaintenanceWindowTaskTargetId] <p>The ID of the target definition in this Maintenance Window the invocation was performed for.</p>
-- * ExecutionId [MaintenanceWindowExecutionTaskExecutionId] <p>The ID of the action performed in the service that actually handled the task invocation. If the task type is RUN_COMMAND, this value is the command ID.</p>
-- * InvocationId [MaintenanceWindowExecutionTaskInvocationId] <p>The ID of the task invocation.</p>
-- * StartTime [DateTime] <p>The time the invocation started.</p>
-- * EndTime [DateTime] <p>The time the invocation finished.</p>
-- * WindowExecutionId [MaintenanceWindowExecutionId] <p>The ID of the Maintenance Window execution that ran the task.</p>
-- * StatusDetails [MaintenanceWindowExecutionStatusDetails] <p>The details explaining the status of the task invocation. Only available for certain Status values. </p>
-- * TaskExecutionId [MaintenanceWindowExecutionTaskId] <p>The ID of the specific task execution in the Maintenance Window execution.</p>
-- @return MaintenanceWindowExecutionTaskInvocationIdentity structure as a key-value pair table
function M.MaintenanceWindowExecutionTaskInvocationIdentity(args)
	assert(args, "You must provdide an argument table when creating MaintenanceWindowExecutionTaskInvocationIdentity")
	local t = { 
		["Status"] = args["Status"],
		["Parameters"] = args["Parameters"],
		["OwnerInformation"] = args["OwnerInformation"],
		["WindowTargetId"] = args["WindowTargetId"],
		["ExecutionId"] = args["ExecutionId"],
		["InvocationId"] = args["InvocationId"],
		["StartTime"] = args["StartTime"],
		["EndTime"] = args["EndTime"],
		["WindowExecutionId"] = args["WindowExecutionId"],
		["StatusDetails"] = args["StatusDetails"],
		["TaskExecutionId"] = args["TaskExecutionId"],
	}
	asserts.AssertMaintenanceWindowExecutionTaskInvocationIdentity(t)
	return t
end

keys.UpdateAssociationStatusRequest = { ["InstanceId"] = true, ["AssociationStatus"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateAssociationStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAssociationStatusRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["AssociationStatus"], "Expected key AssociationStatus to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["AssociationStatus"] then asserts.AssertAssociationStatus(struct["AssociationStatus"]) end
	if struct["Name"] then asserts.AssertDocumentName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAssociationStatusRequest[k], "UpdateAssociationStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAssociationStatusRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The ID of the instance.</p>
-- * AssociationStatus [AssociationStatus] <p>The association status.</p>
-- * Name [DocumentName] <p>The name of the SSM document.</p>
-- Required key: Name
-- Required key: InstanceId
-- Required key: AssociationStatus
-- @return UpdateAssociationStatusRequest structure as a key-value pair table
function M.UpdateAssociationStatusRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateAssociationStatusRequest")
	local t = { 
		["InstanceId"] = args["InstanceId"],
		["AssociationStatus"] = args["AssociationStatus"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateAssociationStatusRequest(t)
	return t
end

keys.UpdatePatchBaselineResult = { ["BaselineId"] = true, ["Name"] = true, ["RejectedPatches"] = true, ["GlobalFilters"] = true, ["ApprovalRules"] = true, ["ModifiedDate"] = true, ["CreatedDate"] = true, ["ApprovedPatches"] = true, ["Description"] = true, nil }

function asserts.AssertUpdatePatchBaselineResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePatchBaselineResult to be of type 'table'")
	if struct["BaselineId"] then asserts.AssertBaselineId(struct["BaselineId"]) end
	if struct["Name"] then asserts.AssertBaselineName(struct["Name"]) end
	if struct["RejectedPatches"] then asserts.AssertPatchIdList(struct["RejectedPatches"]) end
	if struct["GlobalFilters"] then asserts.AssertPatchFilterGroup(struct["GlobalFilters"]) end
	if struct["ApprovalRules"] then asserts.AssertPatchRuleGroup(struct["ApprovalRules"]) end
	if struct["ModifiedDate"] then asserts.AssertDateTime(struct["ModifiedDate"]) end
	if struct["CreatedDate"] then asserts.AssertDateTime(struct["CreatedDate"]) end
	if struct["ApprovedPatches"] then asserts.AssertPatchIdList(struct["ApprovedPatches"]) end
	if struct["Description"] then asserts.AssertBaselineDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePatchBaselineResult[k], "UpdatePatchBaselineResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePatchBaselineResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BaselineId [BaselineId] <p>The ID of the deleted patch baseline.</p>
-- * Name [BaselineName] <p>The name of the patch baseline.</p>
-- * RejectedPatches [PatchIdList] <p>A list of explicitly rejected patches for the baseline.</p>
-- * GlobalFilters [PatchFilterGroup] <p>A set of global filters used to exclude patches from the baseline.</p>
-- * ApprovalRules [PatchRuleGroup] <p>A set of rules used to include patches in the baseline.</p>
-- * ModifiedDate [DateTime] <p>The date when the patch baseline was last modified.</p>
-- * CreatedDate [DateTime] <p>The date when the patch baseline was created.</p>
-- * ApprovedPatches [PatchIdList] <p>A list of explicitly approved patches for the baseline.</p>
-- * Description [BaselineDescription] <p>A description of the Patch Baseline.</p>
-- @return UpdatePatchBaselineResult structure as a key-value pair table
function M.UpdatePatchBaselineResult(args)
	assert(args, "You must provdide an argument table when creating UpdatePatchBaselineResult")
	local t = { 
		["BaselineId"] = args["BaselineId"],
		["Name"] = args["Name"],
		["RejectedPatches"] = args["RejectedPatches"],
		["GlobalFilters"] = args["GlobalFilters"],
		["ApprovalRules"] = args["ApprovalRules"],
		["ModifiedDate"] = args["ModifiedDate"],
		["CreatedDate"] = args["CreatedDate"],
		["ApprovedPatches"] = args["ApprovedPatches"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdatePatchBaselineResult(t)
	return t
end

keys.DescribeEffectivePatchesForPatchBaselineResult = { ["NextToken"] = true, ["EffectivePatches"] = true, nil }

function asserts.AssertDescribeEffectivePatchesForPatchBaselineResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEffectivePatchesForPatchBaselineResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["EffectivePatches"] then asserts.AssertEffectivePatchList(struct["EffectivePatches"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEffectivePatchesForPatchBaselineResult[k], "DescribeEffectivePatchesForPatchBaselineResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEffectivePatchesForPatchBaselineResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- * EffectivePatches [EffectivePatchList] <p>An array of patches and patch status.</p>
-- @return DescribeEffectivePatchesForPatchBaselineResult structure as a key-value pair table
function M.DescribeEffectivePatchesForPatchBaselineResult(args)
	assert(args, "You must provdide an argument table when creating DescribeEffectivePatchesForPatchBaselineResult")
	local t = { 
		["NextToken"] = args["NextToken"],
		["EffectivePatches"] = args["EffectivePatches"],
	}
	asserts.AssertDescribeEffectivePatchesForPatchBaselineResult(t)
	return t
end

keys.DocumentAlreadyExists = { ["Message"] = true, nil }

function asserts.AssertDocumentAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentAlreadyExists to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentAlreadyExists[k], "DocumentAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentAlreadyExists
-- <p>The specified document already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return DocumentAlreadyExists structure as a key-value pair table
function M.DocumentAlreadyExists(args)
	assert(args, "You must provdide an argument table when creating DocumentAlreadyExists")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertDocumentAlreadyExists(t)
	return t
end

keys.DeleteMaintenanceWindowRequest = { ["WindowId"] = true, nil }

function asserts.AssertDeleteMaintenanceWindowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMaintenanceWindowRequest to be of type 'table'")
	assert(struct["WindowId"], "Expected key WindowId to exist in table")
	if struct["WindowId"] then asserts.AssertMaintenanceWindowId(struct["WindowId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMaintenanceWindowRequest[k], "DeleteMaintenanceWindowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMaintenanceWindowRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window to delete.</p>
-- Required key: WindowId
-- @return DeleteMaintenanceWindowRequest structure as a key-value pair table
function M.DeleteMaintenanceWindowRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteMaintenanceWindowRequest")
	local t = { 
		["WindowId"] = args["WindowId"],
	}
	asserts.AssertDeleteMaintenanceWindowRequest(t)
	return t
end

keys.ListAssociationsRequest = { ["AssociationFilterList"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListAssociationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssociationsRequest to be of type 'table'")
	if struct["AssociationFilterList"] then asserts.AssertAssociationFilterList(struct["AssociationFilterList"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAssociationsRequest[k], "ListAssociationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssociationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AssociationFilterList [AssociationFilterList] <p>One or more filters. Use a filter to return a more specific list of results.</p>
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * MaxResults [MaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- @return ListAssociationsRequest structure as a key-value pair table
function M.ListAssociationsRequest(args)
	assert(args, "You must provdide an argument table when creating ListAssociationsRequest")
	local t = { 
		["AssociationFilterList"] = args["AssociationFilterList"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListAssociationsRequest(t)
	return t
end

keys.DescribeParametersRequest = { ["ParameterFilters"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeParametersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeParametersRequest to be of type 'table'")
	if struct["ParameterFilters"] then asserts.AssertParameterStringFilterList(struct["ParameterFilters"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then asserts.AssertParametersFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeParametersRequest[k], "DescribeParametersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeParametersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterFilters [ParameterStringFilterList] <p>Filters to limit the request results.</p>
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * MaxResults [MaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- * Filters [ParametersFilterList] <p>One or more filters. Use a filter to return a more specific list of results.</p>
-- @return DescribeParametersRequest structure as a key-value pair table
function M.DescribeParametersRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeParametersRequest")
	local t = { 
		["ParameterFilters"] = args["ParameterFilters"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeParametersRequest(t)
	return t
end

keys.DeleteParametersResult = { ["InvalidParameters"] = true, ["DeletedParameters"] = true, nil }

function asserts.AssertDeleteParametersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteParametersResult to be of type 'table'")
	if struct["InvalidParameters"] then asserts.AssertParameterNameList(struct["InvalidParameters"]) end
	if struct["DeletedParameters"] then asserts.AssertParameterNameList(struct["DeletedParameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteParametersResult[k], "DeleteParametersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteParametersResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InvalidParameters [ParameterNameList] <p>The names of parameters that weren't deleted because the parameters are not valid.</p>
-- * DeletedParameters [ParameterNameList] <p>The names of the deleted parameters.</p>
-- @return DeleteParametersResult structure as a key-value pair table
function M.DeleteParametersResult(args)
	assert(args, "You must provdide an argument table when creating DeleteParametersResult")
	local t = { 
		["InvalidParameters"] = args["InvalidParameters"],
		["DeletedParameters"] = args["DeletedParameters"],
	}
	asserts.AssertDeleteParametersResult(t)
	return t
end

keys.AssociationStatus = { ["Date"] = true, ["AdditionalInfo"] = true, ["Message"] = true, ["Name"] = true, nil }

function asserts.AssertAssociationStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociationStatus to be of type 'table'")
	assert(struct["Date"], "Expected key Date to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Message"], "Expected key Message to exist in table")
	if struct["Date"] then asserts.AssertDateTime(struct["Date"]) end
	if struct["AdditionalInfo"] then asserts.AssertStatusAdditionalInfo(struct["AdditionalInfo"]) end
	if struct["Message"] then asserts.AssertStatusMessage(struct["Message"]) end
	if struct["Name"] then asserts.AssertAssociationStatusName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociationStatus[k], "AssociationStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociationStatus
-- <p>Describes an association status.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Date [DateTime] <p>The date when the status changed.</p>
-- * AdditionalInfo [StatusAdditionalInfo] <p>A user-defined string.</p>
-- * Message [StatusMessage] <p>The reason for the status.</p>
-- * Name [AssociationStatusName] <p>The status.</p>
-- Required key: Date
-- Required key: Name
-- Required key: Message
-- @return AssociationStatus structure as a key-value pair table
function M.AssociationStatus(args)
	assert(args, "You must provdide an argument table when creating AssociationStatus")
	local t = { 
		["Date"] = args["Date"],
		["AdditionalInfo"] = args["AdditionalInfo"],
		["Message"] = args["Message"],
		["Name"] = args["Name"],
	}
	asserts.AssertAssociationStatus(t)
	return t
end

keys.InstanceInformationFilter = { ["valueSet"] = true, ["key"] = true, nil }

function asserts.AssertInstanceInformationFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceInformationFilter to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	assert(struct["valueSet"], "Expected key valueSet to exist in table")
	if struct["valueSet"] then asserts.AssertInstanceInformationFilterValueSet(struct["valueSet"]) end
	if struct["key"] then asserts.AssertInstanceInformationFilterKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceInformationFilter[k], "InstanceInformationFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceInformationFilter
-- <p>Describes a filter for a specific list of instances. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * valueSet [InstanceInformationFilterValueSet] <p>The filter values.</p>
-- * key [InstanceInformationFilterKey] <p>The name of the filter. </p>
-- Required key: key
-- Required key: valueSet
-- @return InstanceInformationFilter structure as a key-value pair table
function M.InstanceInformationFilter(args)
	assert(args, "You must provdide an argument table when creating InstanceInformationFilter")
	local t = { 
		["valueSet"] = args["valueSet"],
		["key"] = args["key"],
	}
	asserts.AssertInstanceInformationFilter(t)
	return t
end

keys.DescribeMaintenanceWindowTargetsRequest = { ["WindowId"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeMaintenanceWindowTargetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowTargetsRequest to be of type 'table'")
	assert(struct["WindowId"], "Expected key WindowId to exist in table")
	if struct["WindowId"] then asserts.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaintenanceWindowMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then asserts.AssertMaintenanceWindowFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMaintenanceWindowTargetsRequest[k], "DescribeMaintenanceWindowTargetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowTargetsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window whose targets should be retrieved.</p>
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * MaxResults [MaintenanceWindowMaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- * Filters [MaintenanceWindowFilterList] <p>Optional filters that can be used to narrow down the scope of the returned window targets. The supported filter keys are Type, WindowTargetId and OwnerInformation.</p>
-- Required key: WindowId
-- @return DescribeMaintenanceWindowTargetsRequest structure as a key-value pair table
function M.DescribeMaintenanceWindowTargetsRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeMaintenanceWindowTargetsRequest")
	local t = { 
		["WindowId"] = args["WindowId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeMaintenanceWindowTargetsRequest(t)
	return t
end

keys.CreateAssociationBatchRequestEntry = { ["ScheduleExpression"] = true, ["OutputLocation"] = true, ["Name"] = true, ["Parameters"] = true, ["InstanceId"] = true, ["DocumentVersion"] = true, ["Targets"] = true, nil }

function asserts.AssertCreateAssociationBatchRequestEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAssociationBatchRequestEntry to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["ScheduleExpression"] then asserts.AssertScheduleExpression(struct["ScheduleExpression"]) end
	if struct["OutputLocation"] then asserts.AssertInstanceAssociationOutputLocation(struct["OutputLocation"]) end
	if struct["Name"] then asserts.AssertDocumentName(struct["Name"]) end
	if struct["Parameters"] then asserts.AssertParameters(struct["Parameters"]) end
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["DocumentVersion"] then asserts.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["Targets"] then asserts.AssertTargets(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAssociationBatchRequestEntry[k], "CreateAssociationBatchRequestEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAssociationBatchRequestEntry
-- <p>Describes the association of a Systems Manager document and an instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScheduleExpression [ScheduleExpression] <p>A cron expression that specifies a schedule when the association runs.</p>
-- * OutputLocation [InstanceAssociationOutputLocation] <p>An Amazon S3 bucket where you want to store the results of this request.</p>
-- * Name [DocumentName] <p>The name of the configuration document. </p>
-- * Parameters [Parameters] <p>A description of the parameters for a document. </p>
-- * InstanceId [InstanceId] <p>The ID of the instance. </p>
-- * DocumentVersion [DocumentVersion] <p>The document version.</p>
-- * Targets [Targets] <p>The instances targeted by the request.</p>
-- Required key: Name
-- @return CreateAssociationBatchRequestEntry structure as a key-value pair table
function M.CreateAssociationBatchRequestEntry(args)
	assert(args, "You must provdide an argument table when creating CreateAssociationBatchRequestEntry")
	local t = { 
		["ScheduleExpression"] = args["ScheduleExpression"],
		["OutputLocation"] = args["OutputLocation"],
		["Name"] = args["Name"],
		["Parameters"] = args["Parameters"],
		["InstanceId"] = args["InstanceId"],
		["DocumentVersion"] = args["DocumentVersion"],
		["Targets"] = args["Targets"],
	}
	asserts.AssertCreateAssociationBatchRequestEntry(t)
	return t
end

keys.ListTagsForResourceRequest = { ["ResourceType"] = true, ["ResourceId"] = true, nil }

function asserts.AssertListTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceRequest to be of type 'table'")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["ResourceType"] then asserts.AssertResourceTypeForTagging(struct["ResourceType"]) end
	if struct["ResourceId"] then asserts.AssertResourceId(struct["ResourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceRequest[k], "ListTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [ResourceTypeForTagging] <p>Returns a list of tags for a specific resource type.</p>
-- * ResourceId [ResourceId] <p>The resource ID for which you want to see a list of tags.</p>
-- Required key: ResourceType
-- Required key: ResourceId
-- @return ListTagsForResourceRequest structure as a key-value pair table
function M.ListTagsForResourceRequest(args)
	assert(args, "You must provdide an argument table when creating ListTagsForResourceRequest")
	local t = { 
		["ResourceType"] = args["ResourceType"],
		["ResourceId"] = args["ResourceId"],
	}
	asserts.AssertListTagsForResourceRequest(t)
	return t
end

keys.Parameter = { ["Type"] = true, ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Parameter to be of type 'table'")
	if struct["Type"] then asserts.AssertParameterType(struct["Type"]) end
	if struct["Name"] then asserts.AssertPSParameterName(struct["Name"]) end
	if struct["Value"] then asserts.AssertPSParameterValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.Parameter[k], "Parameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Parameter
-- <p>An Amazon EC2 Systems Manager parameter in Parameter Store.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [ParameterType] <p>The type of parameter. Valid values include the following: String, String list, Secure string.</p>
-- * Name [PSParameterName] <p>The name of the parameter.</p>
-- * Value [PSParameterValue] <p>The parameter value.</p>
-- @return Parameter structure as a key-value pair table
function M.Parameter(args)
	assert(args, "You must provdide an argument table when creating Parameter")
	local t = { 
		["Type"] = args["Type"],
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertParameter(t)
	return t
end

keys.InvalidPluginName = { nil }

function asserts.AssertInvalidPluginName(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidPluginName to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidPluginName[k], "InvalidPluginName contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidPluginName
-- <p>The plugin name is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidPluginName structure as a key-value pair table
function M.InvalidPluginName(args)
	assert(args, "You must provdide an argument table when creating InvalidPluginName")
	local t = { 
	}
	asserts.AssertInvalidPluginName(t)
	return t
end

keys.GetParametersByPathResult = { ["NextToken"] = true, ["Parameters"] = true, nil }

function asserts.AssertGetParametersByPathResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParametersByPathResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Parameters"] then asserts.AssertParameterList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetParametersByPathResult[k], "GetParametersByPathResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParametersByPathResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token for the next set of items to return. Use this token to get the next set of results.</p>
-- * Parameters [ParameterList] <p>A list of parameters found in the specified hierarchy.</p>
-- @return GetParametersByPathResult structure as a key-value pair table
function M.GetParametersByPathResult(args)
	assert(args, "You must provdide an argument table when creating GetParametersByPathResult")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertGetParametersByPathResult(t)
	return t
end

keys.UpdateDocumentDefaultVersionResult = { ["Description"] = true, nil }

function asserts.AssertUpdateDocumentDefaultVersionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDocumentDefaultVersionResult to be of type 'table'")
	if struct["Description"] then asserts.AssertDocumentDefaultVersionDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDocumentDefaultVersionResult[k], "UpdateDocumentDefaultVersionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDocumentDefaultVersionResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [DocumentDefaultVersionDescription] <p>The description of a custom document that you want to set as the default version.</p>
-- @return UpdateDocumentDefaultVersionResult structure as a key-value pair table
function M.UpdateDocumentDefaultVersionResult(args)
	assert(args, "You must provdide an argument table when creating UpdateDocumentDefaultVersionResult")
	local t = { 
		["Description"] = args["Description"],
	}
	asserts.AssertUpdateDocumentDefaultVersionResult(t)
	return t
end

keys.GetParametersByPathRequest = { ["Recursive"] = true, ["ParameterFilters"] = true, ["WithDecryption"] = true, ["MaxResults"] = true, ["Path"] = true, ["NextToken"] = true, nil }

function asserts.AssertGetParametersByPathRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParametersByPathRequest to be of type 'table'")
	assert(struct["Path"], "Expected key Path to exist in table")
	if struct["Recursive"] then asserts.AssertBoolean(struct["Recursive"]) end
	if struct["ParameterFilters"] then asserts.AssertParameterStringFilterList(struct["ParameterFilters"]) end
	if struct["WithDecryption"] then asserts.AssertBoolean(struct["WithDecryption"]) end
	if struct["MaxResults"] then asserts.AssertGetParametersByPathMaxResults(struct["MaxResults"]) end
	if struct["Path"] then asserts.AssertPSParameterName(struct["Path"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetParametersByPathRequest[k], "GetParametersByPathRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParametersByPathRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Recursive [Boolean] <p>Retrieve all parameters within a hierarchy.</p>
-- * ParameterFilters [ParameterStringFilterList] <p>Filters to limit the request results.</p>
-- * WithDecryption [Boolean] <p>Retrieve all parameters in a hierarchy with their value decrypted.</p>
-- * MaxResults [GetParametersByPathMaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- * Path [PSParameterName] <p>The hierarchy for the parameter. Hierarchies start with a forward slash (/) and end with the parameter name. A hierarchy can have a maximum of five levels. Examples: /Environment/Test/DBString003</p> <p>/Finance/Prod/IAD/OS/WinServ2016/license15</p>
-- * NextToken [NextToken] <p>A token to start the list. Use this token to get the next set of results. </p>
-- Required key: Path
-- @return GetParametersByPathRequest structure as a key-value pair table
function M.GetParametersByPathRequest(args)
	assert(args, "You must provdide an argument table when creating GetParametersByPathRequest")
	local t = { 
		["Recursive"] = args["Recursive"],
		["ParameterFilters"] = args["ParameterFilters"],
		["WithDecryption"] = args["WithDecryption"],
		["MaxResults"] = args["MaxResults"],
		["Path"] = args["Path"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertGetParametersByPathRequest(t)
	return t
end

keys.UpdatePatchBaselineRequest = { ["BaselineId"] = true, ["Name"] = true, ["RejectedPatches"] = true, ["GlobalFilters"] = true, ["ApprovalRules"] = true, ["ApprovedPatches"] = true, ["Description"] = true, nil }

function asserts.AssertUpdatePatchBaselineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePatchBaselineRequest to be of type 'table'")
	assert(struct["BaselineId"], "Expected key BaselineId to exist in table")
	if struct["BaselineId"] then asserts.AssertBaselineId(struct["BaselineId"]) end
	if struct["Name"] then asserts.AssertBaselineName(struct["Name"]) end
	if struct["RejectedPatches"] then asserts.AssertPatchIdList(struct["RejectedPatches"]) end
	if struct["GlobalFilters"] then asserts.AssertPatchFilterGroup(struct["GlobalFilters"]) end
	if struct["ApprovalRules"] then asserts.AssertPatchRuleGroup(struct["ApprovalRules"]) end
	if struct["ApprovedPatches"] then asserts.AssertPatchIdList(struct["ApprovedPatches"]) end
	if struct["Description"] then asserts.AssertBaselineDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePatchBaselineRequest[k], "UpdatePatchBaselineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePatchBaselineRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BaselineId [BaselineId] <p>The ID of the patch baseline to update.</p>
-- * Name [BaselineName] <p>The name of the patch baseline.</p>
-- * RejectedPatches [PatchIdList] <p>A list of explicitly rejected patches for the baseline.</p>
-- * GlobalFilters [PatchFilterGroup] <p>A set of global filters used to exclude patches from the baseline.</p>
-- * ApprovalRules [PatchRuleGroup] <p>A set of rules used to include patches in the baseline.</p>
-- * ApprovedPatches [PatchIdList] <p>A list of explicitly approved patches for the baseline.</p>
-- * Description [BaselineDescription] <p>A description of the patch baseline.</p>
-- Required key: BaselineId
-- @return UpdatePatchBaselineRequest structure as a key-value pair table
function M.UpdatePatchBaselineRequest(args)
	assert(args, "You must provdide an argument table when creating UpdatePatchBaselineRequest")
	local t = { 
		["BaselineId"] = args["BaselineId"],
		["Name"] = args["Name"],
		["RejectedPatches"] = args["RejectedPatches"],
		["GlobalFilters"] = args["GlobalFilters"],
		["ApprovalRules"] = args["ApprovalRules"],
		["ApprovedPatches"] = args["ApprovedPatches"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdatePatchBaselineRequest(t)
	return t
end

keys.Tag = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Metadata that you assign to your managed instances. Tags enable you to categorize your managed instances in different ways, for example, by purpose, owner, or environment.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p>The value of the tag.</p>
-- * Key [TagKey] <p>The name of the tag.</p>
-- Required key: Key
-- Required key: Value
-- @return Tag structure as a key-value pair table
function M.Tag(args)
	assert(args, "You must provdide an argument table when creating Tag")
	local t = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertTag(t)
	return t
end

keys.PatchRuleGroup = { ["PatchRules"] = true, nil }

function asserts.AssertPatchRuleGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PatchRuleGroup to be of type 'table'")
	assert(struct["PatchRules"], "Expected key PatchRules to exist in table")
	if struct["PatchRules"] then asserts.AssertPatchRuleList(struct["PatchRules"]) end
	for k,_ in pairs(struct) do
		assert(keys.PatchRuleGroup[k], "PatchRuleGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PatchRuleGroup
-- <p>A set of rules defining the approval rules for a patch baseline.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PatchRules [PatchRuleList] <p>The rules that make up the rule group.</p>
-- Required key: PatchRules
-- @return PatchRuleGroup structure as a key-value pair table
function M.PatchRuleGroup(args)
	assert(args, "You must provdide an argument table when creating PatchRuleGroup")
	local t = { 
		["PatchRules"] = args["PatchRules"],
	}
	asserts.AssertPatchRuleGroup(t)
	return t
end

keys.FailureDetails = { ["FailureStage"] = true, ["FailureType"] = true, ["Details"] = true, nil }

function asserts.AssertFailureDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailureDetails to be of type 'table'")
	if struct["FailureStage"] then asserts.AssertString(struct["FailureStage"]) end
	if struct["FailureType"] then asserts.AssertString(struct["FailureType"]) end
	if struct["Details"] then asserts.AssertAutomationParameterMap(struct["Details"]) end
	for k,_ in pairs(struct) do
		assert(keys.FailureDetails[k], "FailureDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailureDetails
-- <p>Information about an Automation failure.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailureStage [String] <p>The stage of the Automation execution when the failure occurred. The stages include the following: InputValidation, PreVerification, Invocation, PostVerification.</p>
-- * FailureType [String] <p>The type of Automation failure. Failure types include the following: Action, Permission, Throttling, Verification, Internal.</p>
-- * Details [AutomationParameterMap] <p>Detailed information about the Automation step failure.</p>
-- @return FailureDetails structure as a key-value pair table
function M.FailureDetails(args)
	assert(args, "You must provdide an argument table when creating FailureDetails")
	local t = { 
		["FailureStage"] = args["FailureStage"],
		["FailureType"] = args["FailureType"],
		["Details"] = args["Details"],
	}
	asserts.AssertFailureDetails(t)
	return t
end

keys.UnsupportedParameterType = { ["message"] = true, nil }

function asserts.AssertUnsupportedParameterType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedParameterType to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedParameterType[k], "UnsupportedParameterType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedParameterType
-- <p>The parameter type is not supported.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return UnsupportedParameterType structure as a key-value pair table
function M.UnsupportedParameterType(args)
	assert(args, "You must provdide an argument table when creating UnsupportedParameterType")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertUnsupportedParameterType(t)
	return t
end

keys.ListCommandInvocationsResult = { ["NextToken"] = true, ["CommandInvocations"] = true, nil }

function asserts.AssertListCommandInvocationsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCommandInvocationsResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["CommandInvocations"] then asserts.AssertCommandInvocationList(struct["CommandInvocations"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCommandInvocationsResult[k], "ListCommandInvocationsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCommandInvocationsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>(Optional) The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * CommandInvocations [CommandInvocationList] <p>(Optional) A list of all invocations. </p>
-- @return ListCommandInvocationsResult structure as a key-value pair table
function M.ListCommandInvocationsResult(args)
	assert(args, "You must provdide an argument table when creating ListCommandInvocationsResult")
	local t = { 
		["NextToken"] = args["NextToken"],
		["CommandInvocations"] = args["CommandInvocations"],
	}
	asserts.AssertListCommandInvocationsResult(t)
	return t
end

keys.DescribeInstancePatchesResult = { ["NextToken"] = true, ["Patches"] = true, nil }

function asserts.AssertDescribeInstancePatchesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancePatchesResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Patches"] then asserts.AssertPatchComplianceDataList(struct["Patches"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInstancePatchesResult[k], "DescribeInstancePatchesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancePatchesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- * Patches [PatchComplianceDataList] <p>Each entry in the array is a structure containing:</p> <p>Title (string)</p> <p>KBId (string)</p> <p>Classification (string)</p> <p>Severity (string)</p> <p>State (string: "INSTALLED", "INSTALLED OTHER", "MISSING", "NOT APPLICABLE", "FAILED")</p> <p>InstalledTime (DateTime)</p> <p>InstalledBy (string)</p>
-- @return DescribeInstancePatchesResult structure as a key-value pair table
function M.DescribeInstancePatchesResult(args)
	assert(args, "You must provdide an argument table when creating DescribeInstancePatchesResult")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Patches"] = args["Patches"],
	}
	asserts.AssertDescribeInstancePatchesResult(t)
	return t
end

keys.GetPatchBaselineForPatchGroupRequest = { ["PatchGroup"] = true, nil }

function asserts.AssertGetPatchBaselineForPatchGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPatchBaselineForPatchGroupRequest to be of type 'table'")
	assert(struct["PatchGroup"], "Expected key PatchGroup to exist in table")
	if struct["PatchGroup"] then asserts.AssertPatchGroup(struct["PatchGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPatchBaselineForPatchGroupRequest[k], "GetPatchBaselineForPatchGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPatchBaselineForPatchGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PatchGroup [PatchGroup] <p>The name of the patch group whose patch baseline should be retrieved.</p>
-- Required key: PatchGroup
-- @return GetPatchBaselineForPatchGroupRequest structure as a key-value pair table
function M.GetPatchBaselineForPatchGroupRequest(args)
	assert(args, "You must provdide an argument table when creating GetPatchBaselineForPatchGroupRequest")
	local t = { 
		["PatchGroup"] = args["PatchGroup"],
	}
	asserts.AssertGetPatchBaselineForPatchGroupRequest(t)
	return t
end

keys.ResourceInUseException = { ["Message"] = true, nil }

function asserts.AssertResourceInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUseException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceInUseException[k], "ResourceInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUseException
-- <p>Error returned if an attempt is made to delete a patch baseline that is registered for a patch group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return ResourceInUseException structure as a key-value pair table
function M.ResourceInUseException(args)
	assert(args, "You must provdide an argument table when creating ResourceInUseException")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertResourceInUseException(t)
	return t
end

keys.DescribeMaintenanceWindowsResult = { ["WindowIdentities"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeMaintenanceWindowsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowsResult to be of type 'table'")
	if struct["WindowIdentities"] then asserts.AssertMaintenanceWindowIdentityList(struct["WindowIdentities"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMaintenanceWindowsResult[k], "DescribeMaintenanceWindowsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WindowIdentities [MaintenanceWindowIdentityList] <p>Information about the Maintenance Windows.</p>
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @return DescribeMaintenanceWindowsResult structure as a key-value pair table
function M.DescribeMaintenanceWindowsResult(args)
	assert(args, "You must provdide an argument table when creating DescribeMaintenanceWindowsResult")
	local t = { 
		["WindowIdentities"] = args["WindowIdentities"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeMaintenanceWindowsResult(t)
	return t
end

keys.DeletePatchBaselineRequest = { ["BaselineId"] = true, nil }

function asserts.AssertDeletePatchBaselineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePatchBaselineRequest to be of type 'table'")
	assert(struct["BaselineId"], "Expected key BaselineId to exist in table")
	if struct["BaselineId"] then asserts.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePatchBaselineRequest[k], "DeletePatchBaselineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePatchBaselineRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BaselineId [BaselineId] <p>The ID of the patch baseline to delete.</p>
-- Required key: BaselineId
-- @return DeletePatchBaselineRequest structure as a key-value pair table
function M.DeletePatchBaselineRequest(args)
	assert(args, "You must provdide an argument table when creating DeletePatchBaselineRequest")
	local t = { 
		["BaselineId"] = args["BaselineId"],
	}
	asserts.AssertDeletePatchBaselineRequest(t)
	return t
end

keys.CreateAssociationBatchRequest = { ["Entries"] = true, nil }

function asserts.AssertCreateAssociationBatchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAssociationBatchRequest to be of type 'table'")
	assert(struct["Entries"], "Expected key Entries to exist in table")
	if struct["Entries"] then asserts.AssertCreateAssociationBatchRequestEntries(struct["Entries"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAssociationBatchRequest[k], "CreateAssociationBatchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAssociationBatchRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Entries [CreateAssociationBatchRequestEntries] <p>One or more associations.</p>
-- Required key: Entries
-- @return CreateAssociationBatchRequest structure as a key-value pair table
function M.CreateAssociationBatchRequest(args)
	assert(args, "You must provdide an argument table when creating CreateAssociationBatchRequest")
	local t = { 
		["Entries"] = args["Entries"],
	}
	asserts.AssertCreateAssociationBatchRequest(t)
	return t
end

keys.DescribeMaintenanceWindowExecutionTasksRequest = { ["NextToken"] = true, ["WindowExecutionId"] = true, ["MaxResults"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeMaintenanceWindowExecutionTasksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowExecutionTasksRequest to be of type 'table'")
	assert(struct["WindowExecutionId"], "Expected key WindowExecutionId to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["WindowExecutionId"] then asserts.AssertMaintenanceWindowExecutionId(struct["WindowExecutionId"]) end
	if struct["MaxResults"] then asserts.AssertMaintenanceWindowMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then asserts.AssertMaintenanceWindowFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMaintenanceWindowExecutionTasksRequest[k], "DescribeMaintenanceWindowExecutionTasksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowExecutionTasksRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * WindowExecutionId [MaintenanceWindowExecutionId] <p>The ID of the Maintenance Window execution whose task executions should be retrieved.</p>
-- * MaxResults [MaintenanceWindowMaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- * Filters [MaintenanceWindowFilterList] <p>Optional filters used to scope down the returned tasks. The supported filter key is STATUS with the corresponding values PENDING, IN_PROGRESS, SUCCESS, FAILED, TIMED_OUT, CANCELLING, and CANCELLED. </p>
-- Required key: WindowExecutionId
-- @return DescribeMaintenanceWindowExecutionTasksRequest structure as a key-value pair table
function M.DescribeMaintenanceWindowExecutionTasksRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeMaintenanceWindowExecutionTasksRequest")
	local t = { 
		["NextToken"] = args["NextToken"],
		["WindowExecutionId"] = args["WindowExecutionId"],
		["MaxResults"] = args["MaxResults"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeMaintenanceWindowExecutionTasksRequest(t)
	return t
end

keys.AutomationExecution = { ["AutomationExecutionStatus"] = true, ["Parameters"] = true, ["Outputs"] = true, ["DocumentName"] = true, ["AutomationExecutionId"] = true, ["FailureMessage"] = true, ["ExecutionEndTime"] = true, ["DocumentVersion"] = true, ["ExecutionStartTime"] = true, ["StepExecutions"] = true, nil }

function asserts.AssertAutomationExecution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutomationExecution to be of type 'table'")
	if struct["AutomationExecutionStatus"] then asserts.AssertAutomationExecutionStatus(struct["AutomationExecutionStatus"]) end
	if struct["Parameters"] then asserts.AssertAutomationParameterMap(struct["Parameters"]) end
	if struct["Outputs"] then asserts.AssertAutomationParameterMap(struct["Outputs"]) end
	if struct["DocumentName"] then asserts.AssertDocumentName(struct["DocumentName"]) end
	if struct["AutomationExecutionId"] then asserts.AssertAutomationExecutionId(struct["AutomationExecutionId"]) end
	if struct["FailureMessage"] then asserts.AssertString(struct["FailureMessage"]) end
	if struct["ExecutionEndTime"] then asserts.AssertDateTime(struct["ExecutionEndTime"]) end
	if struct["DocumentVersion"] then asserts.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["ExecutionStartTime"] then asserts.AssertDateTime(struct["ExecutionStartTime"]) end
	if struct["StepExecutions"] then asserts.AssertStepExecutionList(struct["StepExecutions"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutomationExecution[k], "AutomationExecution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutomationExecution
-- <p>Detailed information about the current state of an individual Automation execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutomationExecutionStatus [AutomationExecutionStatus] <p>The execution status of the Automation.</p>
-- * Parameters [AutomationParameterMap] <p>The key-value map of execution parameters, which were supplied when calling StartAutomationExecution.</p>
-- * Outputs [AutomationParameterMap] <p>The list of execution outputs as defined in the automation document.</p>
-- * DocumentName [DocumentName] <p>The name of the Automation document used during the execution.</p>
-- * AutomationExecutionId [AutomationExecutionId] <p>The execution ID.</p>
-- * FailureMessage [String] <p>A message describing why an execution has failed, if the status is set to Failed.</p>
-- * ExecutionEndTime [DateTime] <p>The time the execution finished.</p>
-- * DocumentVersion [DocumentVersion] <p>The version of the document to use during execution.</p>
-- * ExecutionStartTime [DateTime] <p>The time the execution started.</p>
-- * StepExecutions [StepExecutionList] <p>A list of details about the current state of all steps that comprise an execution. An Automation document contains a list of steps that are executed in order.</p>
-- @return AutomationExecution structure as a key-value pair table
function M.AutomationExecution(args)
	assert(args, "You must provdide an argument table when creating AutomationExecution")
	local t = { 
		["AutomationExecutionStatus"] = args["AutomationExecutionStatus"],
		["Parameters"] = args["Parameters"],
		["Outputs"] = args["Outputs"],
		["DocumentName"] = args["DocumentName"],
		["AutomationExecutionId"] = args["AutomationExecutionId"],
		["FailureMessage"] = args["FailureMessage"],
		["ExecutionEndTime"] = args["ExecutionEndTime"],
		["DocumentVersion"] = args["DocumentVersion"],
		["ExecutionStartTime"] = args["ExecutionStartTime"],
		["StepExecutions"] = args["StepExecutions"],
	}
	asserts.AssertAutomationExecution(t)
	return t
end

keys.DescribePatchGroupsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribePatchGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePatchGroupsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPatchBaselineMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePatchGroupsRequest[k], "DescribePatchGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePatchGroupsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * MaxResults [PatchBaselineMaxResults] <p>The maximum number of patch groups to return (per page).</p>
-- @return DescribePatchGroupsRequest structure as a key-value pair table
function M.DescribePatchGroupsRequest(args)
	assert(args, "You must provdide an argument table when creating DescribePatchGroupsRequest")
	local t = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribePatchGroupsRequest(t)
	return t
end

keys.HierarchyLevelLimitExceededException = { ["message"] = true, nil }

function asserts.AssertHierarchyLevelLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HierarchyLevelLimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.HierarchyLevelLimitExceededException[k], "HierarchyLevelLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HierarchyLevelLimitExceededException
-- <p>A hierarchy can have a maximum of five levels. For example:</p> <p>/Finance/Prod/IAD/OS/WinServ2016/license15</p> <p>For more information, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-working-path.html">Develop a Parameter Hierarchy</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>A hierarchy can have a maximum of five levels. For example:</p> <p>/Finance/Prod/IAD/OS/WinServ2016/license15</p> <p>For more information, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-working-path.html">Develop a Parameter Hierarchy</a>. </p>
-- @return HierarchyLevelLimitExceededException structure as a key-value pair table
function M.HierarchyLevelLimitExceededException(args)
	assert(args, "You must provdide an argument table when creating HierarchyLevelLimitExceededException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertHierarchyLevelLimitExceededException(t)
	return t
end

keys.AlreadyExistsException = { ["Message"] = true, nil }

function asserts.AssertAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlreadyExistsException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AlreadyExistsException[k], "AlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlreadyExistsException
-- <p>Error returned if an attempt is made to register a patch group with a patch baseline that is already registered with a different patch baseline.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return AlreadyExistsException structure as a key-value pair table
function M.AlreadyExistsException(args)
	assert(args, "You must provdide an argument table when creating AlreadyExistsException")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertAlreadyExistsException(t)
	return t
end

keys.InvalidSchedule = { ["Message"] = true, nil }

function asserts.AssertInvalidSchedule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSchedule to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidSchedule[k], "InvalidSchedule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSchedule
-- <p>The schedule is invalid. Verify your cron or rate expression and try again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidSchedule structure as a key-value pair table
function M.InvalidSchedule(args)
	assert(args, "You must provdide an argument table when creating InvalidSchedule")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidSchedule(t)
	return t
end

keys.InvalidActivation = { ["Message"] = true, nil }

function asserts.AssertInvalidActivation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidActivation to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidActivation[k], "InvalidActivation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidActivation
-- <p>The activation is not valid. The activation might have been deleted, or the ActivationId and the ActivationCode do not match.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidActivation structure as a key-value pair table
function M.InvalidActivation(args)
	assert(args, "You must provdide an argument table when creating InvalidActivation")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidActivation(t)
	return t
end

keys.DescribeMaintenanceWindowExecutionsRequest = { ["WindowId"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeMaintenanceWindowExecutionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowExecutionsRequest to be of type 'table'")
	assert(struct["WindowId"], "Expected key WindowId to exist in table")
	if struct["WindowId"] then asserts.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaintenanceWindowMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then asserts.AssertMaintenanceWindowFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMaintenanceWindowExecutionsRequest[k], "DescribeMaintenanceWindowExecutionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowExecutionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window whose executions should be retrieved.</p>
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * MaxResults [MaintenanceWindowMaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- * Filters [MaintenanceWindowFilterList] <p>Each entry in the array is a structure containing:</p> <p>Key (string, between 1 and 128 characters)</p> <p>Values (array of strings, each string is between 1 and 256 characters)</p> <p>The supported Keys are ExecutedBefore and ExecutedAfter with the value being a date/time string such as 2016-11-04T05:00:00Z.</p>
-- Required key: WindowId
-- @return DescribeMaintenanceWindowExecutionsRequest structure as a key-value pair table
function M.DescribeMaintenanceWindowExecutionsRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeMaintenanceWindowExecutionsRequest")
	local t = { 
		["WindowId"] = args["WindowId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeMaintenanceWindowExecutionsRequest(t)
	return t
end

keys.AutomationExecutionMetadata = { ["AutomationExecutionStatus"] = true, ["Outputs"] = true, ["DocumentName"] = true, ["AutomationExecutionId"] = true, ["ExecutionEndTime"] = true, ["DocumentVersion"] = true, ["ExecutionStartTime"] = true, ["ExecutedBy"] = true, ["LogFile"] = true, nil }

function asserts.AssertAutomationExecutionMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutomationExecutionMetadata to be of type 'table'")
	if struct["AutomationExecutionStatus"] then asserts.AssertAutomationExecutionStatus(struct["AutomationExecutionStatus"]) end
	if struct["Outputs"] then asserts.AssertAutomationParameterMap(struct["Outputs"]) end
	if struct["DocumentName"] then asserts.AssertDocumentName(struct["DocumentName"]) end
	if struct["AutomationExecutionId"] then asserts.AssertAutomationExecutionId(struct["AutomationExecutionId"]) end
	if struct["ExecutionEndTime"] then asserts.AssertDateTime(struct["ExecutionEndTime"]) end
	if struct["DocumentVersion"] then asserts.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["ExecutionStartTime"] then asserts.AssertDateTime(struct["ExecutionStartTime"]) end
	if struct["ExecutedBy"] then asserts.AssertString(struct["ExecutedBy"]) end
	if struct["LogFile"] then asserts.AssertString(struct["LogFile"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutomationExecutionMetadata[k], "AutomationExecutionMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutomationExecutionMetadata
-- <p>Details about a specific Automation execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutomationExecutionStatus [AutomationExecutionStatus] <p>The status of the execution. Valid values include: Running, Succeeded, Failed, Timed out, or Cancelled.</p>
-- * Outputs [AutomationParameterMap] <p>The list of execution outputs as defined in the Automation document.</p>
-- * DocumentName [DocumentName] <p>The name of the Automation document used during execution.</p>
-- * AutomationExecutionId [AutomationExecutionId] <p>The execution ID.</p>
-- * ExecutionEndTime [DateTime] <p>The time the execution finished. This is not populated if the execution is still in progress.</p>
-- * DocumentVersion [DocumentVersion] <p>The document version used during the execution.</p>
-- * ExecutionStartTime [DateTime] <p>The time the execution started.&gt;</p>
-- * ExecutedBy [String] <p>The IAM role ARN of the user who executed the Automation.</p>
-- * LogFile [String] <p>An Amazon S3 bucket where execution information is stored.</p>
-- @return AutomationExecutionMetadata structure as a key-value pair table
function M.AutomationExecutionMetadata(args)
	assert(args, "You must provdide an argument table when creating AutomationExecutionMetadata")
	local t = { 
		["AutomationExecutionStatus"] = args["AutomationExecutionStatus"],
		["Outputs"] = args["Outputs"],
		["DocumentName"] = args["DocumentName"],
		["AutomationExecutionId"] = args["AutomationExecutionId"],
		["ExecutionEndTime"] = args["ExecutionEndTime"],
		["DocumentVersion"] = args["DocumentVersion"],
		["ExecutionStartTime"] = args["ExecutionStartTime"],
		["ExecutedBy"] = args["ExecutedBy"],
		["LogFile"] = args["LogFile"],
	}
	asserts.AssertAutomationExecutionMetadata(t)
	return t
end

keys.InstanceInformation = { ["IsLatestVersion"] = true, ["IamRole"] = true, ["ComputerName"] = true, ["AssociationOverview"] = true, ["PingStatus"] = true, ["Name"] = true, ["LastSuccessfulAssociationExecutionDate"] = true, ["InstanceId"] = true, ["IPAddress"] = true, ["AssociationStatus"] = true, ["LastAssociationExecutionDate"] = true, ["ResourceType"] = true, ["ActivationId"] = true, ["AgentVersion"] = true, ["PlatformVersion"] = true, ["RegistrationDate"] = true, ["PlatformName"] = true, ["PlatformType"] = true, ["LastPingDateTime"] = true, nil }

function asserts.AssertInstanceInformation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceInformation to be of type 'table'")
	if struct["IsLatestVersion"] then asserts.AssertBoolean(struct["IsLatestVersion"]) end
	if struct["IamRole"] then asserts.AssertIamRole(struct["IamRole"]) end
	if struct["ComputerName"] then asserts.AssertComputerName(struct["ComputerName"]) end
	if struct["AssociationOverview"] then asserts.AssertInstanceAggregatedAssociationOverview(struct["AssociationOverview"]) end
	if struct["PingStatus"] then asserts.AssertPingStatus(struct["PingStatus"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["LastSuccessfulAssociationExecutionDate"] then asserts.AssertDateTime(struct["LastSuccessfulAssociationExecutionDate"]) end
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["IPAddress"] then asserts.AssertIPAddress(struct["IPAddress"]) end
	if struct["AssociationStatus"] then asserts.AssertStatusName(struct["AssociationStatus"]) end
	if struct["LastAssociationExecutionDate"] then asserts.AssertDateTime(struct["LastAssociationExecutionDate"]) end
	if struct["ResourceType"] then asserts.AssertResourceType(struct["ResourceType"]) end
	if struct["ActivationId"] then asserts.AssertActivationId(struct["ActivationId"]) end
	if struct["AgentVersion"] then asserts.AssertVersion(struct["AgentVersion"]) end
	if struct["PlatformVersion"] then asserts.AssertString(struct["PlatformVersion"]) end
	if struct["RegistrationDate"] then asserts.AssertDateTime(struct["RegistrationDate"]) end
	if struct["PlatformName"] then asserts.AssertString(struct["PlatformName"]) end
	if struct["PlatformType"] then asserts.AssertPlatformType(struct["PlatformType"]) end
	if struct["LastPingDateTime"] then asserts.AssertDateTime(struct["LastPingDateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceInformation[k], "InstanceInformation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceInformation
-- <p>Describes a filter for a specific list of instances. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IsLatestVersion [Boolean] <p>Indicates whether latest version of the SSM Agent is running on your instance. </p>
-- * IamRole [IamRole] <p>The Amazon Identity and Access Management (IAM) role assigned to EC2 instances or managed instances. </p>
-- * ComputerName [ComputerName] <p>The fully qualified host name of the managed instance.</p>
-- * AssociationOverview [InstanceAggregatedAssociationOverview] <p>Information about the association.</p>
-- * PingStatus [PingStatus] <p>Connection status of the SSM Agent. </p>
-- * Name [String] <p>The name of the managed instance.</p>
-- * LastSuccessfulAssociationExecutionDate [DateTime] <p>The last date the association was successfully run.</p>
-- * InstanceId [InstanceId] <p>The instance ID. </p>
-- * IPAddress [IPAddress] <p>The IP address of the managed instance.</p>
-- * AssociationStatus [StatusName] <p>The status of the association.</p>
-- * LastAssociationExecutionDate [DateTime] <p>The date the association was last executed.</p>
-- * ResourceType [ResourceType] <p>The type of instance. Instances are either EC2 instances or managed instances. </p>
-- * ActivationId [ActivationId] <p>The activation ID created by Systems Manager when the server or VM was registered.</p>
-- * AgentVersion [Version] <p>The version of the SSM Agent running on your Linux instance. </p>
-- * PlatformVersion [String] <p>The version of the OS platform running on your instance. </p>
-- * RegistrationDate [DateTime] <p>The date the server or VM was registered with AWS as a managed instance.</p>
-- * PlatformName [String] <p>The name of the operating system platform running on your instance. </p>
-- * PlatformType [PlatformType] <p>The operating system platform type. </p>
-- * LastPingDateTime [DateTime] <p>The date and time when agent last pinged Systems Manager service. </p>
-- @return InstanceInformation structure as a key-value pair table
function M.InstanceInformation(args)
	assert(args, "You must provdide an argument table when creating InstanceInformation")
	local t = { 
		["IsLatestVersion"] = args["IsLatestVersion"],
		["IamRole"] = args["IamRole"],
		["ComputerName"] = args["ComputerName"],
		["AssociationOverview"] = args["AssociationOverview"],
		["PingStatus"] = args["PingStatus"],
		["Name"] = args["Name"],
		["LastSuccessfulAssociationExecutionDate"] = args["LastSuccessfulAssociationExecutionDate"],
		["InstanceId"] = args["InstanceId"],
		["IPAddress"] = args["IPAddress"],
		["AssociationStatus"] = args["AssociationStatus"],
		["LastAssociationExecutionDate"] = args["LastAssociationExecutionDate"],
		["ResourceType"] = args["ResourceType"],
		["ActivationId"] = args["ActivationId"],
		["AgentVersion"] = args["AgentVersion"],
		["PlatformVersion"] = args["PlatformVersion"],
		["RegistrationDate"] = args["RegistrationDate"],
		["PlatformName"] = args["PlatformName"],
		["PlatformType"] = args["PlatformType"],
		["LastPingDateTime"] = args["LastPingDateTime"],
	}
	asserts.AssertInstanceInformation(t)
	return t
end

keys.InvalidRole = { ["Message"] = true, nil }

function asserts.AssertInvalidRole(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRole to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidRole[k], "InvalidRole contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRole
-- <p>The role name can't contain invalid characters. Also verify that you specified an IAM role for notifications that includes the required trust policy. For information about configuring the IAM role for Run Command notifications, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/rc-sns-notifications.html">Configuring Amazon SNS Notifications for Run Command</a> in the <i>Amazon EC2 Systems Manager User Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidRole structure as a key-value pair table
function M.InvalidRole(args)
	assert(args, "You must provdide an argument table when creating InvalidRole")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidRole(t)
	return t
end

keys.DeleteActivationRequest = { ["ActivationId"] = true, nil }

function asserts.AssertDeleteActivationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteActivationRequest to be of type 'table'")
	assert(struct["ActivationId"], "Expected key ActivationId to exist in table")
	if struct["ActivationId"] then asserts.AssertActivationId(struct["ActivationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteActivationRequest[k], "DeleteActivationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteActivationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ActivationId [ActivationId] <p>The ID of the activation that you want to delete.</p>
-- Required key: ActivationId
-- @return DeleteActivationRequest structure as a key-value pair table
function M.DeleteActivationRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteActivationRequest")
	local t = { 
		["ActivationId"] = args["ActivationId"],
	}
	asserts.AssertDeleteActivationRequest(t)
	return t
end

keys.InvalidInstanceId = { ["Message"] = true, nil }

function asserts.AssertInvalidInstanceId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInstanceId to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidInstanceId[k], "InvalidInstanceId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInstanceId
-- <p>The following problems can cause this exception:</p> <p>You do not have permission to access the instance.</p> <p>The SSM Agent is not running. On managed instances and Linux instances, verify that the SSM Agent is running. On EC2 Windows instances, verify that the EC2Config service is running.</p> <p>The SSM Agent or EC2Config service is not registered to the SSM endpoint. Try reinstalling the SSM Agent or EC2Config service.</p> <p>The instance is not in valid state. Valid states are: Running, Pending, Stopped, Stopping. Invalid states are: Shutting-down and Terminated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidInstanceId structure as a key-value pair table
function M.InvalidInstanceId(args)
	assert(args, "You must provdide an argument table when creating InvalidInstanceId")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidInstanceId(t)
	return t
end

keys.InventoryItemSchema = { ["TypeName"] = true, ["Version"] = true, ["Attributes"] = true, nil }

function asserts.AssertInventoryItemSchema(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryItemSchema to be of type 'table'")
	assert(struct["TypeName"], "Expected key TypeName to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["TypeName"] then asserts.AssertInventoryItemTypeName(struct["TypeName"]) end
	if struct["Version"] then asserts.AssertInventoryItemSchemaVersion(struct["Version"]) end
	if struct["Attributes"] then asserts.AssertInventoryItemAttributeList(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.InventoryItemSchema[k], "InventoryItemSchema contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryItemSchema
-- <p>The inventory item schema definition. Users can use this to compose inventory query filters.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TypeName [InventoryItemTypeName] <p>The name of the inventory type. Default inventory item type names start with AWS. Custom inventory type names will start with Custom. Default inventory item types include the following: AWS:AWSComponent, AWS:Application, AWS:InstanceInformation, AWS:Network, and AWS:WindowsUpdate.</p>
-- * Version [InventoryItemSchemaVersion] <p>The schema version for the inventory item.</p>
-- * Attributes [InventoryItemAttributeList] <p>The schema attributes for inventory. This contains data type and attribute name.</p>
-- Required key: TypeName
-- Required key: Attributes
-- @return InventoryItemSchema structure as a key-value pair table
function M.InventoryItemSchema(args)
	assert(args, "You must provdide an argument table when creating InventoryItemSchema")
	local t = { 
		["TypeName"] = args["TypeName"],
		["Version"] = args["Version"],
		["Attributes"] = args["Attributes"],
	}
	asserts.AssertInventoryItemSchema(t)
	return t
end

keys.DeleteMaintenanceWindowResult = { ["WindowId"] = true, nil }

function asserts.AssertDeleteMaintenanceWindowResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMaintenanceWindowResult to be of type 'table'")
	if struct["WindowId"] then asserts.AssertMaintenanceWindowId(struct["WindowId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMaintenanceWindowResult[k], "DeleteMaintenanceWindowResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMaintenanceWindowResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WindowId [MaintenanceWindowId] <p>The ID of the deleted Maintenance Window.</p>
-- @return DeleteMaintenanceWindowResult structure as a key-value pair table
function M.DeleteMaintenanceWindowResult(args)
	assert(args, "You must provdide an argument table when creating DeleteMaintenanceWindowResult")
	local t = { 
		["WindowId"] = args["WindowId"],
	}
	asserts.AssertDeleteMaintenanceWindowResult(t)
	return t
end

keys.DescribeInstancePatchStatesResult = { ["InstancePatchStates"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeInstancePatchStatesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancePatchStatesResult to be of type 'table'")
	if struct["InstancePatchStates"] then asserts.AssertInstancePatchStateList(struct["InstancePatchStates"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInstancePatchStatesResult[k], "DescribeInstancePatchStatesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancePatchStatesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstancePatchStates [InstancePatchStateList] <p>The high-level patch state for the requested instances.</p>
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @return DescribeInstancePatchStatesResult structure as a key-value pair table
function M.DescribeInstancePatchStatesResult(args)
	assert(args, "You must provdide an argument table when creating DescribeInstancePatchStatesResult")
	local t = { 
		["InstancePatchStates"] = args["InstancePatchStates"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeInstancePatchStatesResult(t)
	return t
end

keys.Association = { ["ScheduleExpression"] = true, ["Name"] = true, ["LastExecutionDate"] = true, ["InstanceId"] = true, ["Overview"] = true, ["AssociationId"] = true, ["DocumentVersion"] = true, ["Targets"] = true, nil }

function asserts.AssertAssociation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Association to be of type 'table'")
	if struct["ScheduleExpression"] then asserts.AssertScheduleExpression(struct["ScheduleExpression"]) end
	if struct["Name"] then asserts.AssertDocumentName(struct["Name"]) end
	if struct["LastExecutionDate"] then asserts.AssertDateTime(struct["LastExecutionDate"]) end
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["Overview"] then asserts.AssertAssociationOverview(struct["Overview"]) end
	if struct["AssociationId"] then asserts.AssertAssociationId(struct["AssociationId"]) end
	if struct["DocumentVersion"] then asserts.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["Targets"] then asserts.AssertTargets(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(keys.Association[k], "Association contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Association
-- <p>Describes an association of a Systems Manager document and an instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScheduleExpression [ScheduleExpression] <p>A cron expression that specifies a schedule when the association runs.</p>
-- * Name [DocumentName] <p>The name of the SSM document.</p>
-- * LastExecutionDate [DateTime] <p>The date on which the association was last run.</p>
-- * InstanceId [InstanceId] <p>The ID of the instance.</p>
-- * Overview [AssociationOverview] <p>Information about the association.</p>
-- * AssociationId [AssociationId] <p>The ID created by the system when you create an association. An association is a binding between a document and a set of targets with a schedule.</p>
-- * DocumentVersion [DocumentVersion] <p>The version of the document used in the association.</p>
-- * Targets [Targets] <p>The instances targeted by the request to create an association. </p>
-- @return Association structure as a key-value pair table
function M.Association(args)
	assert(args, "You must provdide an argument table when creating Association")
	local t = { 
		["ScheduleExpression"] = args["ScheduleExpression"],
		["Name"] = args["Name"],
		["LastExecutionDate"] = args["LastExecutionDate"],
		["InstanceId"] = args["InstanceId"],
		["Overview"] = args["Overview"],
		["AssociationId"] = args["AssociationId"],
		["DocumentVersion"] = args["DocumentVersion"],
		["Targets"] = args["Targets"],
	}
	asserts.AssertAssociation(t)
	return t
end

keys.DescribeEffectiveInstanceAssociationsRequest = { ["InstanceId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeEffectiveInstanceAssociationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEffectiveInstanceAssociationsRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertEffectiveInstanceAssociationMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEffectiveInstanceAssociationsRequest[k], "DescribeEffectiveInstanceAssociationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEffectiveInstanceAssociationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The instance ID for which you want to view all associations.</p>
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * MaxResults [EffectiveInstanceAssociationMaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- Required key: InstanceId
-- @return DescribeEffectiveInstanceAssociationsRequest structure as a key-value pair table
function M.DescribeEffectiveInstanceAssociationsRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeEffectiveInstanceAssociationsRequest")
	local t = { 
		["InstanceId"] = args["InstanceId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeEffectiveInstanceAssociationsRequest(t)
	return t
end

keys.GetParameterHistoryResult = { ["NextToken"] = true, ["Parameters"] = true, nil }

function asserts.AssertGetParameterHistoryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParameterHistoryResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Parameters"] then asserts.AssertParameterHistoryList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetParameterHistoryResult[k], "GetParameterHistoryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParameterHistoryResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- * Parameters [ParameterHistoryList] <p>A list of parameters returned by the request.</p>
-- @return GetParameterHistoryResult structure as a key-value pair table
function M.GetParameterHistoryResult(args)
	assert(args, "You must provdide an argument table when creating GetParameterHistoryResult")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertGetParameterHistoryResult(t)
	return t
end

keys.LoggingInfo = { ["S3KeyPrefix"] = true, ["S3BucketName"] = true, ["S3Region"] = true, nil }

function asserts.AssertLoggingInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoggingInfo to be of type 'table'")
	assert(struct["S3BucketName"], "Expected key S3BucketName to exist in table")
	assert(struct["S3Region"], "Expected key S3Region to exist in table")
	if struct["S3KeyPrefix"] then asserts.AssertS3KeyPrefix(struct["S3KeyPrefix"]) end
	if struct["S3BucketName"] then asserts.AssertS3BucketName(struct["S3BucketName"]) end
	if struct["S3Region"] then asserts.AssertS3Region(struct["S3Region"]) end
	for k,_ in pairs(struct) do
		assert(keys.LoggingInfo[k], "LoggingInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoggingInfo
-- <p>Information about an Amazon S3 bucket to write instance-level logs to.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3KeyPrefix [S3KeyPrefix] <p>(Optional) The Amazon S3 bucket subfolder. </p>
-- * S3BucketName [S3BucketName] <p>The name of an Amazon S3 bucket where execution logs are stored .</p>
-- * S3Region [S3Region] <p>The region where the Amazon S3 bucket is located.</p>
-- Required key: S3BucketName
-- Required key: S3Region
-- @return LoggingInfo structure as a key-value pair table
function M.LoggingInfo(args)
	assert(args, "You must provdide an argument table when creating LoggingInfo")
	local t = { 
		["S3KeyPrefix"] = args["S3KeyPrefix"],
		["S3BucketName"] = args["S3BucketName"],
		["S3Region"] = args["S3Region"],
	}
	asserts.AssertLoggingInfo(t)
	return t
end

keys.ListInventoryEntriesResult = { ["InstanceId"] = true, ["TypeName"] = true, ["Entries"] = true, ["SchemaVersion"] = true, ["NextToken"] = true, ["CaptureTime"] = true, nil }

function asserts.AssertListInventoryEntriesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInventoryEntriesResult to be of type 'table'")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["TypeName"] then asserts.AssertInventoryItemTypeName(struct["TypeName"]) end
	if struct["Entries"] then asserts.AssertInventoryItemEntryList(struct["Entries"]) end
	if struct["SchemaVersion"] then asserts.AssertInventoryItemSchemaVersion(struct["SchemaVersion"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["CaptureTime"] then asserts.AssertInventoryItemCaptureTime(struct["CaptureTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListInventoryEntriesResult[k], "ListInventoryEntriesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInventoryEntriesResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The instance ID targeted by the request to query inventory information.</p>
-- * TypeName [InventoryItemTypeName] <p>The type of inventory item returned by the request.</p>
-- * Entries [InventoryItemEntryList] <p>A list of inventory items on the instance(s).</p>
-- * SchemaVersion [InventoryItemSchemaVersion] <p>The inventory schema version used by the instance(s).</p>
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- * CaptureTime [InventoryItemCaptureTime] <p>The time that inventory information was collected for the instance(s).</p>
-- @return ListInventoryEntriesResult structure as a key-value pair table
function M.ListInventoryEntriesResult(args)
	assert(args, "You must provdide an argument table when creating ListInventoryEntriesResult")
	local t = { 
		["InstanceId"] = args["InstanceId"],
		["TypeName"] = args["TypeName"],
		["Entries"] = args["Entries"],
		["SchemaVersion"] = args["SchemaVersion"],
		["NextToken"] = args["NextToken"],
		["CaptureTime"] = args["CaptureTime"],
	}
	asserts.AssertListInventoryEntriesResult(t)
	return t
end

keys.DeregisterManagedInstanceResult = { nil }

function asserts.AssertDeregisterManagedInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterManagedInstanceResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeregisterManagedInstanceResult[k], "DeregisterManagedInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterManagedInstanceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeregisterManagedInstanceResult structure as a key-value pair table
function M.DeregisterManagedInstanceResult(args)
	assert(args, "You must provdide an argument table when creating DeregisterManagedInstanceResult")
	local t = { 
	}
	asserts.AssertDeregisterManagedInstanceResult(t)
	return t
end

keys.DescribeAutomationExecutionsResult = { ["NextToken"] = true, ["AutomationExecutionMetadataList"] = true, nil }

function asserts.AssertDescribeAutomationExecutionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAutomationExecutionsResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["AutomationExecutionMetadataList"] then asserts.AssertAutomationExecutionMetadataList(struct["AutomationExecutionMetadataList"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAutomationExecutionsResult[k], "DescribeAutomationExecutionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAutomationExecutionsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- * AutomationExecutionMetadataList [AutomationExecutionMetadataList] <p>The list of details about each automation execution which has occurred which matches the filter specification, if any.</p>
-- @return DescribeAutomationExecutionsResult structure as a key-value pair table
function M.DescribeAutomationExecutionsResult(args)
	assert(args, "You must provdide an argument table when creating DescribeAutomationExecutionsResult")
	local t = { 
		["NextToken"] = args["NextToken"],
		["AutomationExecutionMetadataList"] = args["AutomationExecutionMetadataList"],
	}
	asserts.AssertDescribeAutomationExecutionsResult(t)
	return t
end

keys.DeregisterTaskFromMaintenanceWindowRequest = { ["WindowTaskId"] = true, ["WindowId"] = true, nil }

function asserts.AssertDeregisterTaskFromMaintenanceWindowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterTaskFromMaintenanceWindowRequest to be of type 'table'")
	assert(struct["WindowId"], "Expected key WindowId to exist in table")
	assert(struct["WindowTaskId"], "Expected key WindowTaskId to exist in table")
	if struct["WindowTaskId"] then asserts.AssertMaintenanceWindowTaskId(struct["WindowTaskId"]) end
	if struct["WindowId"] then asserts.AssertMaintenanceWindowId(struct["WindowId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterTaskFromMaintenanceWindowRequest[k], "DeregisterTaskFromMaintenanceWindowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterTaskFromMaintenanceWindowRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WindowTaskId [MaintenanceWindowTaskId] <p>The ID of the task to remove from the Maintenance Window.</p>
-- * WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window the task should be removed from.</p>
-- Required key: WindowId
-- Required key: WindowTaskId
-- @return DeregisterTaskFromMaintenanceWindowRequest structure as a key-value pair table
function M.DeregisterTaskFromMaintenanceWindowRequest(args)
	assert(args, "You must provdide an argument table when creating DeregisterTaskFromMaintenanceWindowRequest")
	local t = { 
		["WindowTaskId"] = args["WindowTaskId"],
		["WindowId"] = args["WindowId"],
	}
	asserts.AssertDeregisterTaskFromMaintenanceWindowRequest(t)
	return t
end

keys.InvalidPermissionType = { ["Message"] = true, nil }

function asserts.AssertInvalidPermissionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidPermissionType to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidPermissionType[k], "InvalidPermissionType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidPermissionType
-- <p>The permission type is not supported. <i>Share</i> is the only supported permission type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidPermissionType structure as a key-value pair table
function M.InvalidPermissionType(args)
	assert(args, "You must provdide an argument table when creating InvalidPermissionType")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidPermissionType(t)
	return t
end

keys.CancelCommandResult = { nil }

function asserts.AssertCancelCommandResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelCommandResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CancelCommandResult[k], "CancelCommandResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelCommandResult
-- <p>Whether or not the command was successfully canceled. There is no guarantee that a request can be canceled.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CancelCommandResult structure as a key-value pair table
function M.CancelCommandResult(args)
	assert(args, "You must provdide an argument table when creating CancelCommandResult")
	local t = { 
	}
	asserts.AssertCancelCommandResult(t)
	return t
end

keys.GetAutomationExecutionRequest = { ["AutomationExecutionId"] = true, nil }

function asserts.AssertGetAutomationExecutionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAutomationExecutionRequest to be of type 'table'")
	assert(struct["AutomationExecutionId"], "Expected key AutomationExecutionId to exist in table")
	if struct["AutomationExecutionId"] then asserts.AssertAutomationExecutionId(struct["AutomationExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAutomationExecutionRequest[k], "GetAutomationExecutionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAutomationExecutionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AutomationExecutionId [AutomationExecutionId] <p>The unique identifier for an existing automation execution to examine. The execution ID is returned by StartAutomationExecution when the execution of an Automation document is initiated.</p>
-- Required key: AutomationExecutionId
-- @return GetAutomationExecutionRequest structure as a key-value pair table
function M.GetAutomationExecutionRequest(args)
	assert(args, "You must provdide an argument table when creating GetAutomationExecutionRequest")
	local t = { 
		["AutomationExecutionId"] = args["AutomationExecutionId"],
	}
	asserts.AssertGetAutomationExecutionRequest(t)
	return t
end

keys.RegisterTaskWithMaintenanceWindowResult = { ["WindowTaskId"] = true, nil }

function asserts.AssertRegisterTaskWithMaintenanceWindowResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterTaskWithMaintenanceWindowResult to be of type 'table'")
	if struct["WindowTaskId"] then asserts.AssertMaintenanceWindowTaskId(struct["WindowTaskId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterTaskWithMaintenanceWindowResult[k], "RegisterTaskWithMaintenanceWindowResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterTaskWithMaintenanceWindowResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WindowTaskId [MaintenanceWindowTaskId] <p>The id of the task in the Maintenance Window.</p>
-- @return RegisterTaskWithMaintenanceWindowResult structure as a key-value pair table
function M.RegisterTaskWithMaintenanceWindowResult(args)
	assert(args, "You must provdide an argument table when creating RegisterTaskWithMaintenanceWindowResult")
	local t = { 
		["WindowTaskId"] = args["WindowTaskId"],
	}
	asserts.AssertRegisterTaskWithMaintenanceWindowResult(t)
	return t
end

keys.AssociatedInstances = { nil }

function asserts.AssertAssociatedInstances(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociatedInstances to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociatedInstances[k], "AssociatedInstances contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociatedInstances
-- <p>You must disassociate a document from all instances before you can delete it.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociatedInstances structure as a key-value pair table
function M.AssociatedInstances(args)
	assert(args, "You must provdide an argument table when creating AssociatedInstances")
	local t = { 
	}
	asserts.AssertAssociatedInstances(t)
	return t
end

keys.GetMaintenanceWindowExecutionRequest = { ["WindowExecutionId"] = true, nil }

function asserts.AssertGetMaintenanceWindowExecutionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMaintenanceWindowExecutionRequest to be of type 'table'")
	assert(struct["WindowExecutionId"], "Expected key WindowExecutionId to exist in table")
	if struct["WindowExecutionId"] then asserts.AssertMaintenanceWindowExecutionId(struct["WindowExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMaintenanceWindowExecutionRequest[k], "GetMaintenanceWindowExecutionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMaintenanceWindowExecutionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WindowExecutionId [MaintenanceWindowExecutionId] <p>The ID of the Maintenance Window execution that includes the task.</p>
-- Required key: WindowExecutionId
-- @return GetMaintenanceWindowExecutionRequest structure as a key-value pair table
function M.GetMaintenanceWindowExecutionRequest(args)
	assert(args, "You must provdide an argument table when creating GetMaintenanceWindowExecutionRequest")
	local t = { 
		["WindowExecutionId"] = args["WindowExecutionId"],
	}
	asserts.AssertGetMaintenanceWindowExecutionRequest(t)
	return t
end

keys.DescribeMaintenanceWindowExecutionTaskInvocationsRequest = { ["MaxResults"] = true, ["NextToken"] = true, ["WindowExecutionId"] = true, ["Filters"] = true, ["TaskId"] = true, nil }

function asserts.AssertDescribeMaintenanceWindowExecutionTaskInvocationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowExecutionTaskInvocationsRequest to be of type 'table'")
	assert(struct["WindowExecutionId"], "Expected key WindowExecutionId to exist in table")
	assert(struct["TaskId"], "Expected key TaskId to exist in table")
	if struct["MaxResults"] then asserts.AssertMaintenanceWindowMaxResults(struct["MaxResults"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["WindowExecutionId"] then asserts.AssertMaintenanceWindowExecutionId(struct["WindowExecutionId"]) end
	if struct["Filters"] then asserts.AssertMaintenanceWindowFilterList(struct["Filters"]) end
	if struct["TaskId"] then asserts.AssertMaintenanceWindowExecutionTaskId(struct["TaskId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMaintenanceWindowExecutionTaskInvocationsRequest[k], "DescribeMaintenanceWindowExecutionTaskInvocationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowExecutionTaskInvocationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxResults [MaintenanceWindowMaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * WindowExecutionId [MaintenanceWindowExecutionId] <p>The ID of the Maintenance Window execution the task is part of.</p>
-- * Filters [MaintenanceWindowFilterList] <p>Optional filters used to scope down the returned task invocations. The supported filter key is STATUS with the corresponding values PENDING, IN_PROGRESS, SUCCESS, FAILED, TIMED_OUT, CANCELLING, and CANCELLED.</p>
-- * TaskId [MaintenanceWindowExecutionTaskId] <p>The ID of the specific task in the Maintenance Window task that should be retrieved.</p>
-- Required key: WindowExecutionId
-- Required key: TaskId
-- @return DescribeMaintenanceWindowExecutionTaskInvocationsRequest structure as a key-value pair table
function M.DescribeMaintenanceWindowExecutionTaskInvocationsRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeMaintenanceWindowExecutionTaskInvocationsRequest")
	local t = { 
		["MaxResults"] = args["MaxResults"],
		["NextToken"] = args["NextToken"],
		["WindowExecutionId"] = args["WindowExecutionId"],
		["Filters"] = args["Filters"],
		["TaskId"] = args["TaskId"],
	}
	asserts.AssertDescribeMaintenanceWindowExecutionTaskInvocationsRequest(t)
	return t
end

keys.GetInventorySchemaRequest = { ["TypeName"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertGetInventorySchemaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInventorySchemaRequest to be of type 'table'")
	if struct["TypeName"] then asserts.AssertInventoryItemTypeNameFilter(struct["TypeName"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertGetInventorySchemaMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInventorySchemaRequest[k], "GetInventorySchemaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInventorySchemaRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TypeName [InventoryItemTypeNameFilter] <p>The type of inventory item to return.</p>
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * MaxResults [GetInventorySchemaMaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- @return GetInventorySchemaRequest structure as a key-value pair table
function M.GetInventorySchemaRequest(args)
	assert(args, "You must provdide an argument table when creating GetInventorySchemaRequest")
	local t = { 
		["TypeName"] = args["TypeName"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertGetInventorySchemaRequest(t)
	return t
end

keys.DuplicateInstanceId = { nil }

function asserts.AssertDuplicateInstanceId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateInstanceId to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DuplicateInstanceId[k], "DuplicateInstanceId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateInstanceId
-- <p>You cannot specify an instance ID in more than one association.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DuplicateInstanceId structure as a key-value pair table
function M.DuplicateInstanceId(args)
	assert(args, "You must provdide an argument table when creating DuplicateInstanceId")
	local t = { 
	}
	asserts.AssertDuplicateInstanceId(t)
	return t
end

keys.InvalidCommandId = { nil }

function asserts.AssertInvalidCommandId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCommandId to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidCommandId[k], "InvalidCommandId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCommandId
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidCommandId structure as a key-value pair table
function M.InvalidCommandId(args)
	assert(args, "You must provdide an argument table when creating InvalidCommandId")
	local t = { 
	}
	asserts.AssertInvalidCommandId(t)
	return t
end

keys.ParameterStringFilter = { ["Values"] = true, ["Option"] = true, ["Key"] = true, nil }

function asserts.AssertParameterStringFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterStringFilter to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["Values"] then asserts.AssertParameterStringFilterValueList(struct["Values"]) end
	if struct["Option"] then asserts.AssertParameterStringQueryOption(struct["Option"]) end
	if struct["Key"] then asserts.AssertParameterStringFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParameterStringFilter[k], "ParameterStringFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterStringFilter
-- <p>One or more filters. Use a filter to return a more specific list of results.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [ParameterStringFilterValueList] <p>The value you want to search for.</p>
-- * Option [ParameterStringQueryOption] <p>Valid options are Equals and BeginsWith. For Path filter, valid options are Recursive and OneLevel.</p>
-- * Key [ParameterStringFilterKey] <p>The name of the filter.</p>
-- Required key: Key
-- @return ParameterStringFilter structure as a key-value pair table
function M.ParameterStringFilter(args)
	assert(args, "You must provdide an argument table when creating ParameterStringFilter")
	local t = { 
		["Values"] = args["Values"],
		["Option"] = args["Option"],
		["Key"] = args["Key"],
	}
	asserts.AssertParameterStringFilter(t)
	return t
end

keys.DescribeAutomationExecutionsRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeAutomationExecutionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAutomationExecutionsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then asserts.AssertAutomationExecutionFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAutomationExecutionsRequest[k], "DescribeAutomationExecutionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAutomationExecutionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * MaxResults [MaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- * Filters [AutomationExecutionFilterList] <p>Filters used to limit the scope of executions that are requested.</p>
-- @return DescribeAutomationExecutionsRequest structure as a key-value pair table
function M.DescribeAutomationExecutionsRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeAutomationExecutionsRequest")
	local t = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeAutomationExecutionsRequest(t)
	return t
end

keys.DescribeMaintenanceWindowTasksResult = { ["Tasks"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeMaintenanceWindowTasksResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowTasksResult to be of type 'table'")
	if struct["Tasks"] then asserts.AssertMaintenanceWindowTaskList(struct["Tasks"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMaintenanceWindowTasksResult[k], "DescribeMaintenanceWindowTasksResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowTasksResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tasks [MaintenanceWindowTaskList] <p>Information about the tasks in the Maintenance Window.</p>
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @return DescribeMaintenanceWindowTasksResult structure as a key-value pair table
function M.DescribeMaintenanceWindowTasksResult(args)
	assert(args, "You must provdide an argument table when creating DescribeMaintenanceWindowTasksResult")
	local t = { 
		["Tasks"] = args["Tasks"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeMaintenanceWindowTasksResult(t)
	return t
end

keys.DeleteAssociationRequest = { ["InstanceId"] = true, ["AssociationId"] = true, ["Name"] = true, nil }

function asserts.AssertDeleteAssociationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAssociationRequest to be of type 'table'")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["AssociationId"] then asserts.AssertAssociationId(struct["AssociationId"]) end
	if struct["Name"] then asserts.AssertDocumentName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAssociationRequest[k], "DeleteAssociationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAssociationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The ID of the instance.</p>
-- * AssociationId [AssociationId] <p>The association ID that you want to delete.</p>
-- * Name [DocumentName] <p>The name of the Systems Manager document.</p>
-- @return DeleteAssociationRequest structure as a key-value pair table
function M.DeleteAssociationRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteAssociationRequest")
	local t = { 
		["InstanceId"] = args["InstanceId"],
		["AssociationId"] = args["AssociationId"],
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteAssociationRequest(t)
	return t
end

keys.DescribeActivationsFilter = { ["FilterKey"] = true, ["FilterValues"] = true, nil }

function asserts.AssertDescribeActivationsFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeActivationsFilter to be of type 'table'")
	if struct["FilterKey"] then asserts.AssertDescribeActivationsFilterKeys(struct["FilterKey"]) end
	if struct["FilterValues"] then asserts.AssertStringList(struct["FilterValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeActivationsFilter[k], "DescribeActivationsFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeActivationsFilter
-- <p>Filter for the DescribeActivation API.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FilterKey [DescribeActivationsFilterKeys] <p>The name of the filter.</p>
-- * FilterValues [StringList] <p>The filter values.</p>
-- @return DescribeActivationsFilter structure as a key-value pair table
function M.DescribeActivationsFilter(args)
	assert(args, "You must provdide an argument table when creating DescribeActivationsFilter")
	local t = { 
		["FilterKey"] = args["FilterKey"],
		["FilterValues"] = args["FilterValues"],
	}
	asserts.AssertDescribeActivationsFilter(t)
	return t
end

keys.DeregisterPatchBaselineForPatchGroupRequest = { ["PatchGroup"] = true, ["BaselineId"] = true, nil }

function asserts.AssertDeregisterPatchBaselineForPatchGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterPatchBaselineForPatchGroupRequest to be of type 'table'")
	assert(struct["BaselineId"], "Expected key BaselineId to exist in table")
	assert(struct["PatchGroup"], "Expected key PatchGroup to exist in table")
	if struct["PatchGroup"] then asserts.AssertPatchGroup(struct["PatchGroup"]) end
	if struct["BaselineId"] then asserts.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterPatchBaselineForPatchGroupRequest[k], "DeregisterPatchBaselineForPatchGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterPatchBaselineForPatchGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PatchGroup [PatchGroup] <p>The name of the patch group that should be deregistered from the patch baseline.</p>
-- * BaselineId [BaselineId] <p>The ID of the patch baseline to deregister the patch group from.</p>
-- Required key: BaselineId
-- Required key: PatchGroup
-- @return DeregisterPatchBaselineForPatchGroupRequest structure as a key-value pair table
function M.DeregisterPatchBaselineForPatchGroupRequest(args)
	assert(args, "You must provdide an argument table when creating DeregisterPatchBaselineForPatchGroupRequest")
	local t = { 
		["PatchGroup"] = args["PatchGroup"],
		["BaselineId"] = args["BaselineId"],
	}
	asserts.AssertDeregisterPatchBaselineForPatchGroupRequest(t)
	return t
end

keys.InternalServerError = { ["Message"] = true, nil }

function asserts.AssertInternalServerError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerError to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServerError[k], "InternalServerError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerError
-- <p>An error occurred on the server side.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InternalServerError structure as a key-value pair table
function M.InternalServerError(args)
	assert(args, "You must provdide an argument table when creating InternalServerError")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInternalServerError(t)
	return t
end

keys.DuplicateDocumentContent = { ["Message"] = true, nil }

function asserts.AssertDuplicateDocumentContent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateDocumentContent to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DuplicateDocumentContent[k], "DuplicateDocumentContent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateDocumentContent
-- <p>The content of the association document matches another document. Change the content of the document and try again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return DuplicateDocumentContent structure as a key-value pair table
function M.DuplicateDocumentContent(args)
	assert(args, "You must provdide an argument table when creating DuplicateDocumentContent")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertDuplicateDocumentContent(t)
	return t
end

keys.PatchFilterGroup = { ["PatchFilters"] = true, nil }

function asserts.AssertPatchFilterGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PatchFilterGroup to be of type 'table'")
	assert(struct["PatchFilters"], "Expected key PatchFilters to exist in table")
	if struct["PatchFilters"] then asserts.AssertPatchFilterList(struct["PatchFilters"]) end
	for k,_ in pairs(struct) do
		assert(keys.PatchFilterGroup[k], "PatchFilterGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PatchFilterGroup
-- <p>A set of patch filters, typically used for approval rules.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PatchFilters [PatchFilterList] <p>The set of patch filters that make up the group.</p>
-- Required key: PatchFilters
-- @return PatchFilterGroup structure as a key-value pair table
function M.PatchFilterGroup(args)
	assert(args, "You must provdide an argument table when creating PatchFilterGroup")
	local t = { 
		["PatchFilters"] = args["PatchFilters"],
	}
	asserts.AssertPatchFilterGroup(t)
	return t
end

keys.StatusUnchanged = { nil }

function asserts.AssertStatusUnchanged(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StatusUnchanged to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StatusUnchanged[k], "StatusUnchanged contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StatusUnchanged
-- <p>The updated status is the same as the current status.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StatusUnchanged structure as a key-value pair table
function M.StatusUnchanged(args)
	assert(args, "You must provdide an argument table when creating StatusUnchanged")
	local t = { 
	}
	asserts.AssertStatusUnchanged(t)
	return t
end

keys.S3OutputUrl = { ["OutputUrl"] = true, nil }

function asserts.AssertS3OutputUrl(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3OutputUrl to be of type 'table'")
	if struct["OutputUrl"] then asserts.AssertUrl(struct["OutputUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3OutputUrl[k], "S3OutputUrl contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3OutputUrl
-- <p>A URL for the Amazon S3 bucket where you want to store the results of this request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OutputUrl [Url] <p>A URL for an Amazon S3 bucket where you want to store the results of this request.</p>
-- @return S3OutputUrl structure as a key-value pair table
function M.S3OutputUrl(args)
	assert(args, "You must provdide an argument table when creating S3OutputUrl")
	local t = { 
		["OutputUrl"] = args["OutputUrl"],
	}
	asserts.AssertS3OutputUrl(t)
	return t
end

keys.RemoveTagsFromResourceResult = { nil }

function asserts.AssertRemoveTagsFromResourceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsFromResourceResult[k], "RemoveTagsFromResourceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RemoveTagsFromResourceResult structure as a key-value pair table
function M.RemoveTagsFromResourceResult(args)
	assert(args, "You must provdide an argument table when creating RemoveTagsFromResourceResult")
	local t = { 
	}
	asserts.AssertRemoveTagsFromResourceResult(t)
	return t
end

keys.DescribeMaintenanceWindowTasksRequest = { ["WindowId"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeMaintenanceWindowTasksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowTasksRequest to be of type 'table'")
	assert(struct["WindowId"], "Expected key WindowId to exist in table")
	if struct["WindowId"] then asserts.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaintenanceWindowMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then asserts.AssertMaintenanceWindowFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMaintenanceWindowTasksRequest[k], "DescribeMaintenanceWindowTasksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowTasksRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window whose tasks should be retrieved.</p>
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * MaxResults [MaintenanceWindowMaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- * Filters [MaintenanceWindowFilterList] <p>Optional filters used to narrow down the scope of the returned tasks. The supported filter keys are WindowTaskId, TaskArn, Priority, and TaskType.</p>
-- Required key: WindowId
-- @return DescribeMaintenanceWindowTasksRequest structure as a key-value pair table
function M.DescribeMaintenanceWindowTasksRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeMaintenanceWindowTasksRequest")
	local t = { 
		["WindowId"] = args["WindowId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeMaintenanceWindowTasksRequest(t)
	return t
end

keys.CommandInvocation = { ["Comment"] = true, ["Status"] = true, ["CommandPlugins"] = true, ["ServiceRole"] = true, ["InstanceId"] = true, ["DocumentName"] = true, ["NotificationConfig"] = true, ["StatusDetails"] = true, ["StandardOutputUrl"] = true, ["StandardErrorUrl"] = true, ["TraceOutput"] = true, ["InstanceName"] = true, ["CommandId"] = true, ["RequestedDateTime"] = true, nil }

function asserts.AssertCommandInvocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CommandInvocation to be of type 'table'")
	if struct["Comment"] then asserts.AssertComment(struct["Comment"]) end
	if struct["Status"] then asserts.AssertCommandInvocationStatus(struct["Status"]) end
	if struct["CommandPlugins"] then asserts.AssertCommandPluginList(struct["CommandPlugins"]) end
	if struct["ServiceRole"] then asserts.AssertServiceRole(struct["ServiceRole"]) end
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["DocumentName"] then asserts.AssertDocumentName(struct["DocumentName"]) end
	if struct["NotificationConfig"] then asserts.AssertNotificationConfig(struct["NotificationConfig"]) end
	if struct["StatusDetails"] then asserts.AssertStatusDetails(struct["StatusDetails"]) end
	if struct["StandardOutputUrl"] then asserts.AssertUrl(struct["StandardOutputUrl"]) end
	if struct["StandardErrorUrl"] then asserts.AssertUrl(struct["StandardErrorUrl"]) end
	if struct["TraceOutput"] then asserts.AssertInvocationTraceOutput(struct["TraceOutput"]) end
	if struct["InstanceName"] then asserts.AssertInstanceTagName(struct["InstanceName"]) end
	if struct["CommandId"] then asserts.AssertCommandId(struct["CommandId"]) end
	if struct["RequestedDateTime"] then asserts.AssertDateTime(struct["RequestedDateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.CommandInvocation[k], "CommandInvocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CommandInvocation
-- <p>An invocation is copy of a command sent to a specific instance. A command can apply to one or more instances. A command invocation applies to one instance. For example, if a user executes SendCommand against three instances, then a command invocation is created for each requested instance ID. A command invocation returns status and detail information about a command you executed. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Comment [Comment] <p>User-specified information about the command, such as a brief description of what the command should do.</p>
-- * Status [CommandInvocationStatus] <p>Whether or not the invocation succeeded, failed, or is pending.</p>
-- * CommandPlugins [CommandPluginList] 
-- * ServiceRole [ServiceRole] <p>The IAM service role that Run Command uses to act on your behalf when sending notifications about command status changes on a per instance basis.</p>
-- * InstanceId [InstanceId] <p>The instance ID in which this invocation was requested.</p>
-- * DocumentName [DocumentName] <p>The document name that was requested for execution.</p>
-- * NotificationConfig [NotificationConfig] <p>Configurations for sending notifications about command status changes on a per instance basis.</p>
-- * StatusDetails [StatusDetails] <p>A detailed status of the command execution for each invocation (each instance targeted by the command). StatusDetails includes more information than Status because it includes states resulting from error and concurrency control parameters. StatusDetails can show different results than Status. For more information about these statuses, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-about-status.html">Run Command Status</a>. StatusDetails can be one of the following values:</p> <ul> <li> <p>Pending: The command has not been sent to the instance.</p> </li> <li> <p>In Progress: The command has been sent to the instance but has not reached a terminal state.</p> </li> <li> <p>Success: The execution of the command or plugin was successfully completed. This is a terminal state.</p> </li> <li> <p>Delivery Timed Out: The command was not delivered to the instance before the delivery timeout expired. Delivery timeouts do not count against the parent command's MaxErrors limit, but they do contribute to whether the parent command status is Success or Incomplete. This is a terminal state.</p> </li> <li> <p>Execution Timed Out: Command execution started on the instance, but the execution was not complete before the execution timeout expired. Execution timeouts count against the MaxErrors limit of the parent command. This is a terminal state.</p> </li> <li> <p>Failed: The command was not successful on the instance. For a plugin, this indicates that the result code was not zero. For a command invocation, this indicates that the result code for one or more plugins was not zero. Invocation failures count against the MaxErrors limit of the parent command. This is a terminal state.</p> </li> <li> <p>Canceled: The command was terminated before it was completed. This is a terminal state.</p> </li> <li> <p>Undeliverable: The command can't be delivered to the instance. The instance might not exist or might not be responding. Undeliverable invocations don't count against the parent command's MaxErrors limit and don't contribute to whether the parent command status is Success or Incomplete. This is a terminal state.</p> </li> <li> <p>Terminated: The parent command exceeded its MaxErrors limit and subsequent command invocations were canceled by the system. This is a terminal state.</p> </li> </ul>
-- * StandardOutputUrl [Url] <p>The URL to the plugin's StdOut file in Amazon S3, if the Amazon S3 bucket was defined for the parent command. For an invocation, StandardOutputUrl is populated if there is just one plugin defined for the command, and the Amazon S3 bucket was defined for the command.</p>
-- * StandardErrorUrl [Url] <p>The URL to the plugin's StdErr file in Amazon S3, if the Amazon S3 bucket was defined for the parent command. For an invocation, StandardErrorUrl is populated if there is just one plugin defined for the command, and the Amazon S3 bucket was defined for the command.</p>
-- * TraceOutput [InvocationTraceOutput] <p> Gets the trace output sent by the agent. </p>
-- * InstanceName [InstanceTagName] <p>The name of the invocation target. For Amazon EC2 instances this is the value for the aws:Name tag. For on-premises instances, this is the name of the instance.</p>
-- * CommandId [CommandId] <p>The command against which this invocation was requested.</p>
-- * RequestedDateTime [DateTime] <p>The time and date the request was sent to this instance.</p>
-- @return CommandInvocation structure as a key-value pair table
function M.CommandInvocation(args)
	assert(args, "You must provdide an argument table when creating CommandInvocation")
	local t = { 
		["Comment"] = args["Comment"],
		["Status"] = args["Status"],
		["CommandPlugins"] = args["CommandPlugins"],
		["ServiceRole"] = args["ServiceRole"],
		["InstanceId"] = args["InstanceId"],
		["DocumentName"] = args["DocumentName"],
		["NotificationConfig"] = args["NotificationConfig"],
		["StatusDetails"] = args["StatusDetails"],
		["StandardOutputUrl"] = args["StandardOutputUrl"],
		["StandardErrorUrl"] = args["StandardErrorUrl"],
		["TraceOutput"] = args["TraceOutput"],
		["InstanceName"] = args["InstanceName"],
		["CommandId"] = args["CommandId"],
		["RequestedDateTime"] = args["RequestedDateTime"],
	}
	asserts.AssertCommandInvocation(t)
	return t
end

keys.InventoryFilter = { ["Type"] = true, ["Values"] = true, ["Key"] = true, nil }

function asserts.AssertInventoryFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryFilter to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Type"] then asserts.AssertInventoryQueryOperatorType(struct["Type"]) end
	if struct["Values"] then asserts.AssertInventoryFilterValueList(struct["Values"]) end
	if struct["Key"] then asserts.AssertInventoryFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.InventoryFilter[k], "InventoryFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryFilter
-- <p>One or more filters. Use a filter to return a more specific list of results.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [InventoryQueryOperatorType] <p>The type of filter. Valid values include the following: "Equal"|"NotEqual"|"BeginWith"|"LessThan"|"GreaterThan"</p>
-- * Values [InventoryFilterValueList] <p>Inventory filter values. Example: inventory filter where instance IDs are specified as values Key=AWS:InstanceInformation.InstanceId,Values= i-a12b3c4d5e6g, i-1a2b3c4d5e6,Type=Equal </p>
-- * Key [InventoryFilterKey] <p>The name of the filter key.</p>
-- Required key: Key
-- Required key: Values
-- @return InventoryFilter structure as a key-value pair table
function M.InventoryFilter(args)
	assert(args, "You must provdide an argument table when creating InventoryFilter")
	local t = { 
		["Type"] = args["Type"],
		["Values"] = args["Values"],
		["Key"] = args["Key"],
	}
	asserts.AssertInventoryFilter(t)
	return t
end

keys.ResultAttribute = { ["TypeName"] = true, nil }

function asserts.AssertResultAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResultAttribute to be of type 'table'")
	assert(struct["TypeName"], "Expected key TypeName to exist in table")
	if struct["TypeName"] then asserts.AssertInventoryItemTypeName(struct["TypeName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResultAttribute[k], "ResultAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResultAttribute
-- <p>The inventory item result attribute.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TypeName [InventoryItemTypeName] <p>Name of the inventory item type. Valid value: AWS:InstanceInformation. Default Value: AWS:InstanceInformation.</p>
-- Required key: TypeName
-- @return ResultAttribute structure as a key-value pair table
function M.ResultAttribute(args)
	assert(args, "You must provdide an argument table when creating ResultAttribute")
	local t = { 
		["TypeName"] = args["TypeName"],
	}
	asserts.AssertResultAttribute(t)
	return t
end

keys.DescribeInstanceAssociationsStatusResult = { ["InstanceAssociationStatusInfos"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeInstanceAssociationsStatusResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstanceAssociationsStatusResult to be of type 'table'")
	if struct["InstanceAssociationStatusInfos"] then asserts.AssertInstanceAssociationStatusInfos(struct["InstanceAssociationStatusInfos"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInstanceAssociationsStatusResult[k], "DescribeInstanceAssociationsStatusResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstanceAssociationsStatusResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceAssociationStatusInfos [InstanceAssociationStatusInfos] <p>Status information about the association.</p>
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @return DescribeInstanceAssociationsStatusResult structure as a key-value pair table
function M.DescribeInstanceAssociationsStatusResult(args)
	assert(args, "You must provdide an argument table when creating DescribeInstanceAssociationsStatusResult")
	local t = { 
		["InstanceAssociationStatusInfos"] = args["InstanceAssociationStatusInfos"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeInstanceAssociationsStatusResult(t)
	return t
end

keys.GetMaintenanceWindowExecutionTaskRequest = { ["WindowExecutionId"] = true, ["TaskId"] = true, nil }

function asserts.AssertGetMaintenanceWindowExecutionTaskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMaintenanceWindowExecutionTaskRequest to be of type 'table'")
	assert(struct["WindowExecutionId"], "Expected key WindowExecutionId to exist in table")
	assert(struct["TaskId"], "Expected key TaskId to exist in table")
	if struct["WindowExecutionId"] then asserts.AssertMaintenanceWindowExecutionId(struct["WindowExecutionId"]) end
	if struct["TaskId"] then asserts.AssertMaintenanceWindowExecutionTaskId(struct["TaskId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMaintenanceWindowExecutionTaskRequest[k], "GetMaintenanceWindowExecutionTaskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMaintenanceWindowExecutionTaskRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WindowExecutionId [MaintenanceWindowExecutionId] <p>The ID of the Maintenance Window execution that includes the task.</p>
-- * TaskId [MaintenanceWindowExecutionTaskId] <p>The ID of the specific task execution in the Maintenance Window task that should be retrieved.</p>
-- Required key: WindowExecutionId
-- Required key: TaskId
-- @return GetMaintenanceWindowExecutionTaskRequest structure as a key-value pair table
function M.GetMaintenanceWindowExecutionTaskRequest(args)
	assert(args, "You must provdide an argument table when creating GetMaintenanceWindowExecutionTaskRequest")
	local t = { 
		["WindowExecutionId"] = args["WindowExecutionId"],
		["TaskId"] = args["TaskId"],
	}
	asserts.AssertGetMaintenanceWindowExecutionTaskRequest(t)
	return t
end

keys.UpdateDocumentResult = { ["DocumentDescription"] = true, nil }

function asserts.AssertUpdateDocumentResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDocumentResult to be of type 'table'")
	if struct["DocumentDescription"] then asserts.AssertDocumentDescription(struct["DocumentDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDocumentResult[k], "UpdateDocumentResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDocumentResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DocumentDescription [DocumentDescription] <p>A description of the document that was updated.</p>
-- @return UpdateDocumentResult structure as a key-value pair table
function M.UpdateDocumentResult(args)
	assert(args, "You must provdide an argument table when creating UpdateDocumentResult")
	local t = { 
		["DocumentDescription"] = args["DocumentDescription"],
	}
	asserts.AssertUpdateDocumentResult(t)
	return t
end

keys.CreateMaintenanceWindowResult = { ["WindowId"] = true, nil }

function asserts.AssertCreateMaintenanceWindowResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateMaintenanceWindowResult to be of type 'table'")
	if struct["WindowId"] then asserts.AssertMaintenanceWindowId(struct["WindowId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateMaintenanceWindowResult[k], "CreateMaintenanceWindowResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateMaintenanceWindowResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WindowId [MaintenanceWindowId] <p>The ID of the created Maintenance Window.</p>
-- @return CreateMaintenanceWindowResult structure as a key-value pair table
function M.CreateMaintenanceWindowResult(args)
	assert(args, "You must provdide an argument table when creating CreateMaintenanceWindowResult")
	local t = { 
		["WindowId"] = args["WindowId"],
	}
	asserts.AssertCreateMaintenanceWindowResult(t)
	return t
end

keys.EffectivePatch = { ["PatchStatus"] = true, ["Patch"] = true, nil }

function asserts.AssertEffectivePatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EffectivePatch to be of type 'table'")
	if struct["PatchStatus"] then asserts.AssertPatchStatus(struct["PatchStatus"]) end
	if struct["Patch"] then asserts.AssertPatch(struct["Patch"]) end
	for k,_ in pairs(struct) do
		assert(keys.EffectivePatch[k], "EffectivePatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EffectivePatch
-- <p>The EffectivePatch structure defines metadata about a patch along with the approval state of the patch in a particular patch baseline. The approval state includes information about whether the patch is currently approved, due to be approved by a rule, explicitly approved, or explicitly rejected and the date the patch was or will be approved.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PatchStatus [PatchStatus] <p>The status of the patch in a patch baseline. This includes information about whether the patch is currently approved, due to be approved by a rule, explicitly approved, or explicitly rejected and the date the patch was or will be approved.</p>
-- * Patch [Patch] <p>Provides metadata for a patch, including information such as the KB ID, severity, classification and a URL for where more information can be obtained about the patch.</p>
-- @return EffectivePatch structure as a key-value pair table
function M.EffectivePatch(args)
	assert(args, "You must provdide an argument table when creating EffectivePatch")
	local t = { 
		["PatchStatus"] = args["PatchStatus"],
		["Patch"] = args["Patch"],
	}
	asserts.AssertEffectivePatch(t)
	return t
end

keys.ModifyDocumentPermissionResponse = { nil }

function asserts.AssertModifyDocumentPermissionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDocumentPermissionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ModifyDocumentPermissionResponse[k], "ModifyDocumentPermissionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDocumentPermissionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ModifyDocumentPermissionResponse structure as a key-value pair table
function M.ModifyDocumentPermissionResponse(args)
	assert(args, "You must provdide an argument table when creating ModifyDocumentPermissionResponse")
	local t = { 
	}
	asserts.AssertModifyDocumentPermissionResponse(t)
	return t
end

keys.Target = { ["Values"] = true, ["Key"] = true, nil }

function asserts.AssertTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Target to be of type 'table'")
	if struct["Values"] then asserts.AssertTargetValues(struct["Values"]) end
	if struct["Key"] then asserts.AssertTargetKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Target[k], "Target contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Target
-- <p>An array of search criteria that targets instances using a Key,Value combination that you specify. <code>Targets</code> is required if you don't provide one or more instance IDs in the call.</p> <p/>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [TargetValues] <p>User-defined criteria that maps to Key. For example, if you specified tag:ServerRole, you could specify value:WebServer to execute a command on instances that include Amazon EC2 tags of ServerRole,WebServer. For more information about how to send commands that target instances using Key,Value parameters, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html">Executing a Command Using Systems Manager Run Command</a>.</p>
-- * Key [TargetKey] <p>User-defined criteria for sending commands that target instances that meet the criteria. Key can be tag:&lt;Amazon EC2 tag&gt; or InstanceIds. For more information about how to send commands that target instances using Key,Value parameters, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html">Executing a Command Using Systems Manager Run Command</a>.</p>
-- @return Target structure as a key-value pair table
function M.Target(args)
	assert(args, "You must provdide an argument table when creating Target")
	local t = { 
		["Values"] = args["Values"],
		["Key"] = args["Key"],
	}
	asserts.AssertTarget(t)
	return t
end

keys.PutInventoryRequest = { ["InstanceId"] = true, ["Items"] = true, nil }

function asserts.AssertPutInventoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutInventoryRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["Items"], "Expected key Items to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["Items"] then asserts.AssertInventoryItemList(struct["Items"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutInventoryRequest[k], "PutInventoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutInventoryRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>One or more instance IDs where you want to add or update inventory items.</p>
-- * Items [InventoryItemList] <p>The inventory items that you want to add or update on instances.</p>
-- Required key: InstanceId
-- Required key: Items
-- @return PutInventoryRequest structure as a key-value pair table
function M.PutInventoryRequest(args)
	assert(args, "You must provdide an argument table when creating PutInventoryRequest")
	local t = { 
		["InstanceId"] = args["InstanceId"],
		["Items"] = args["Items"],
	}
	asserts.AssertPutInventoryRequest(t)
	return t
end

keys.MaintenanceWindowExecution = { ["Status"] = true, ["WindowId"] = true, ["StartTime"] = true, ["EndTime"] = true, ["WindowExecutionId"] = true, ["StatusDetails"] = true, nil }

function asserts.AssertMaintenanceWindowExecution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaintenanceWindowExecution to be of type 'table'")
	if struct["Status"] then asserts.AssertMaintenanceWindowExecutionStatus(struct["Status"]) end
	if struct["WindowId"] then asserts.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["StartTime"] then asserts.AssertDateTime(struct["StartTime"]) end
	if struct["EndTime"] then asserts.AssertDateTime(struct["EndTime"]) end
	if struct["WindowExecutionId"] then asserts.AssertMaintenanceWindowExecutionId(struct["WindowExecutionId"]) end
	if struct["StatusDetails"] then asserts.AssertMaintenanceWindowExecutionStatusDetails(struct["StatusDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.MaintenanceWindowExecution[k], "MaintenanceWindowExecution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaintenanceWindowExecution
-- <p>Describes the information about an execution of a Maintenance Window. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [MaintenanceWindowExecutionStatus] <p>The status of the execution.</p>
-- * WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window.</p>
-- * StartTime [DateTime] <p>The time the execution started.</p>
-- * EndTime [DateTime] <p>The time the execution finished.</p>
-- * WindowExecutionId [MaintenanceWindowExecutionId] <p>The ID of the Maintenance Window execution.</p>
-- * StatusDetails [MaintenanceWindowExecutionStatusDetails] <p>The details explaining the Status. Only available for certain status values.</p>
-- @return MaintenanceWindowExecution structure as a key-value pair table
function M.MaintenanceWindowExecution(args)
	assert(args, "You must provdide an argument table when creating MaintenanceWindowExecution")
	local t = { 
		["Status"] = args["Status"],
		["WindowId"] = args["WindowId"],
		["StartTime"] = args["StartTime"],
		["EndTime"] = args["EndTime"],
		["WindowExecutionId"] = args["WindowExecutionId"],
		["StatusDetails"] = args["StatusDetails"],
	}
	asserts.AssertMaintenanceWindowExecution(t)
	return t
end

keys.DeregisterPatchBaselineForPatchGroupResult = { ["PatchGroup"] = true, ["BaselineId"] = true, nil }

function asserts.AssertDeregisterPatchBaselineForPatchGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterPatchBaselineForPatchGroupResult to be of type 'table'")
	if struct["PatchGroup"] then asserts.AssertPatchGroup(struct["PatchGroup"]) end
	if struct["BaselineId"] then asserts.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterPatchBaselineForPatchGroupResult[k], "DeregisterPatchBaselineForPatchGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterPatchBaselineForPatchGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PatchGroup [PatchGroup] <p>The name of the patch group deregistered from the patch baseline.</p>
-- * BaselineId [BaselineId] <p>The ID of the patch baseline the patch group was deregistered from.</p>
-- @return DeregisterPatchBaselineForPatchGroupResult structure as a key-value pair table
function M.DeregisterPatchBaselineForPatchGroupResult(args)
	assert(args, "You must provdide an argument table when creating DeregisterPatchBaselineForPatchGroupResult")
	local t = { 
		["PatchGroup"] = args["PatchGroup"],
		["BaselineId"] = args["BaselineId"],
	}
	asserts.AssertDeregisterPatchBaselineForPatchGroupResult(t)
	return t
end

keys.InventoryResultItem = { ["ContentHash"] = true, ["TypeName"] = true, ["SchemaVersion"] = true, ["CaptureTime"] = true, ["Content"] = true, nil }

function asserts.AssertInventoryResultItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryResultItem to be of type 'table'")
	assert(struct["TypeName"], "Expected key TypeName to exist in table")
	assert(struct["SchemaVersion"], "Expected key SchemaVersion to exist in table")
	assert(struct["Content"], "Expected key Content to exist in table")
	if struct["ContentHash"] then asserts.AssertInventoryItemContentHash(struct["ContentHash"]) end
	if struct["TypeName"] then asserts.AssertInventoryItemTypeName(struct["TypeName"]) end
	if struct["SchemaVersion"] then asserts.AssertInventoryItemSchemaVersion(struct["SchemaVersion"]) end
	if struct["CaptureTime"] then asserts.AssertInventoryItemCaptureTime(struct["CaptureTime"]) end
	if struct["Content"] then asserts.AssertInventoryItemEntryList(struct["Content"]) end
	for k,_ in pairs(struct) do
		assert(keys.InventoryResultItem[k], "InventoryResultItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryResultItem
-- <p>The inventory result item.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContentHash [InventoryItemContentHash] <p>MD5 hash of the inventory item type contents. The content hash is used to determine whether to update inventory information. The PutInventory API does not update the inventory item type contents if the MD5 hash has not changed since last update. </p>
-- * TypeName [InventoryItemTypeName] <p>The name of the inventory result item type.</p>
-- * SchemaVersion [InventoryItemSchemaVersion] <p>The schema version for the inventory result item/</p>
-- * CaptureTime [InventoryItemCaptureTime] <p>The time inventory item data was captured.</p>
-- * Content [InventoryItemEntryList] <p>Contains all the inventory data of the item type. Results include attribute names and values. </p>
-- Required key: TypeName
-- Required key: SchemaVersion
-- Required key: Content
-- @return InventoryResultItem structure as a key-value pair table
function M.InventoryResultItem(args)
	assert(args, "You must provdide an argument table when creating InventoryResultItem")
	local t = { 
		["ContentHash"] = args["ContentHash"],
		["TypeName"] = args["TypeName"],
		["SchemaVersion"] = args["SchemaVersion"],
		["CaptureTime"] = args["CaptureTime"],
		["Content"] = args["Content"],
	}
	asserts.AssertInventoryResultItem(t)
	return t
end

keys.MaintenanceWindowTask = { ["LoggingInfo"] = true, ["ServiceRoleArn"] = true, ["MaxErrors"] = true, ["TaskArn"] = true, ["MaxConcurrency"] = true, ["WindowTaskId"] = true, ["TaskParameters"] = true, ["Priority"] = true, ["WindowId"] = true, ["Type"] = true, ["Targets"] = true, nil }

function asserts.AssertMaintenanceWindowTask(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaintenanceWindowTask to be of type 'table'")
	if struct["LoggingInfo"] then asserts.AssertLoggingInfo(struct["LoggingInfo"]) end
	if struct["ServiceRoleArn"] then asserts.AssertServiceRole(struct["ServiceRoleArn"]) end
	if struct["MaxErrors"] then asserts.AssertMaxErrors(struct["MaxErrors"]) end
	if struct["TaskArn"] then asserts.AssertMaintenanceWindowTaskArn(struct["TaskArn"]) end
	if struct["MaxConcurrency"] then asserts.AssertMaxConcurrency(struct["MaxConcurrency"]) end
	if struct["WindowTaskId"] then asserts.AssertMaintenanceWindowTaskId(struct["WindowTaskId"]) end
	if struct["TaskParameters"] then asserts.AssertMaintenanceWindowTaskParameters(struct["TaskParameters"]) end
	if struct["Priority"] then asserts.AssertMaintenanceWindowTaskPriority(struct["Priority"]) end
	if struct["WindowId"] then asserts.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["Type"] then asserts.AssertMaintenanceWindowTaskType(struct["Type"]) end
	if struct["Targets"] then asserts.AssertTargets(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(keys.MaintenanceWindowTask[k], "MaintenanceWindowTask contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaintenanceWindowTask
-- <p>Information about a task defined for a Maintenance Window.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LoggingInfo [LoggingInfo] <p>Information about an Amazon S3 bucket to write task-level logs to.</p>
-- * ServiceRoleArn [ServiceRole] <p>The role that should be assumed when executing the task</p>
-- * MaxErrors [MaxErrors] <p>The maximum number of errors allowed before this task stops being scheduled.</p>
-- * TaskArn [MaintenanceWindowTaskArn] <p>The ARN of the task to execute.</p>
-- * MaxConcurrency [MaxConcurrency] <p>The maximum number of targets this task can be run for in parallel.</p>
-- * WindowTaskId [MaintenanceWindowTaskId] <p>The task ID.</p>
-- * TaskParameters [MaintenanceWindowTaskParameters] <p>The parameters that should be passed to the task when it is executed.</p>
-- * Priority [MaintenanceWindowTaskPriority] <p>The priority of the task in the Maintenance Window, the lower the number the higher the priority. Tasks in a Maintenance Window are scheduled in priority order with tasks that have the same priority scheduled in parallel.</p>
-- * WindowId [MaintenanceWindowId] <p>The Maintenance Window ID where the task is registered.</p>
-- * Type [MaintenanceWindowTaskType] <p>The type of task.</p>
-- * Targets [Targets] <p>The targets (either instances or tags). Instances are specified using Key=instanceids,Values=&lt;instanceid1&gt;,&lt;instanceid2&gt;. Tags are specified using Key=&lt;tag name&gt;,Values=&lt;tag value&gt;.</p>
-- @return MaintenanceWindowTask structure as a key-value pair table
function M.MaintenanceWindowTask(args)
	assert(args, "You must provdide an argument table when creating MaintenanceWindowTask")
	local t = { 
		["LoggingInfo"] = args["LoggingInfo"],
		["ServiceRoleArn"] = args["ServiceRoleArn"],
		["MaxErrors"] = args["MaxErrors"],
		["TaskArn"] = args["TaskArn"],
		["MaxConcurrency"] = args["MaxConcurrency"],
		["WindowTaskId"] = args["WindowTaskId"],
		["TaskParameters"] = args["TaskParameters"],
		["Priority"] = args["Priority"],
		["WindowId"] = args["WindowId"],
		["Type"] = args["Type"],
		["Targets"] = args["Targets"],
	}
	asserts.AssertMaintenanceWindowTask(t)
	return t
end

keys.InvalidItemContentException = { ["TypeName"] = true, ["Message"] = true, nil }

function asserts.AssertInvalidItemContentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidItemContentException to be of type 'table'")
	if struct["TypeName"] then asserts.AssertInventoryItemTypeName(struct["TypeName"]) end
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidItemContentException[k], "InvalidItemContentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidItemContentException
-- <p>One or more content items is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TypeName [InventoryItemTypeName] 
-- * Message [String] 
-- @return InvalidItemContentException structure as a key-value pair table
function M.InvalidItemContentException(args)
	assert(args, "You must provdide an argument table when creating InvalidItemContentException")
	local t = { 
		["TypeName"] = args["TypeName"],
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidItemContentException(t)
	return t
end

keys.GetInventorySchemaResult = { ["NextToken"] = true, ["Schemas"] = true, nil }

function asserts.AssertGetInventorySchemaResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInventorySchemaResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Schemas"] then asserts.AssertInventoryItemSchemaResultList(struct["Schemas"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInventorySchemaResult[k], "GetInventorySchemaResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInventorySchemaResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- * Schemas [InventoryItemSchemaResultList] <p>Inventory schemas returned by the request.</p>
-- @return GetInventorySchemaResult structure as a key-value pair table
function M.GetInventorySchemaResult(args)
	assert(args, "You must provdide an argument table when creating GetInventorySchemaResult")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Schemas"] = args["Schemas"],
	}
	asserts.AssertGetInventorySchemaResult(t)
	return t
end

keys.ListDocumentVersionsRequest = { ["NextToken"] = true, ["Name"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListDocumentVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDocumentVersionsRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Name"] then asserts.AssertDocumentName(struct["Name"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDocumentVersionsRequest[k], "ListDocumentVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDocumentVersionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * Name [DocumentName] <p>The name of the document about which you want version information.</p>
-- * MaxResults [MaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- Required key: Name
-- @return ListDocumentVersionsRequest structure as a key-value pair table
function M.ListDocumentVersionsRequest(args)
	assert(args, "You must provdide an argument table when creating ListDocumentVersionsRequest")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Name"] = args["Name"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListDocumentVersionsRequest(t)
	return t
end

keys.GetParameterResult = { ["Parameter"] = true, nil }

function asserts.AssertGetParameterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParameterResult to be of type 'table'")
	if struct["Parameter"] then asserts.AssertParameter(struct["Parameter"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetParameterResult[k], "GetParameterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParameterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Parameter [Parameter] <p>Information about a parameter.</p>
-- @return GetParameterResult structure as a key-value pair table
function M.GetParameterResult(args)
	assert(args, "You must provdide an argument table when creating GetParameterResult")
	local t = { 
		["Parameter"] = args["Parameter"],
	}
	asserts.AssertGetParameterResult(t)
	return t
end

keys.InvalidFilter = { ["Message"] = true, nil }

function asserts.AssertInvalidFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidFilter to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidFilter[k], "InvalidFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidFilter
-- <p>The filter name is not valid. Verify the you entered the correct name and try again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidFilter structure as a key-value pair table
function M.InvalidFilter(args)
	assert(args, "You must provdide an argument table when creating InvalidFilter")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidFilter(t)
	return t
end

keys.InstanceAssociationOutputLocation = { ["S3Location"] = true, nil }

function asserts.AssertInstanceAssociationOutputLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceAssociationOutputLocation to be of type 'table'")
	if struct["S3Location"] then asserts.AssertS3OutputLocation(struct["S3Location"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceAssociationOutputLocation[k], "InstanceAssociationOutputLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceAssociationOutputLocation
-- <p>An Amazon S3 bucket where you want to store the results of this request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3Location [S3OutputLocation] <p>An Amazon S3 bucket where you want to store the results of this request.</p>
-- @return InstanceAssociationOutputLocation structure as a key-value pair table
function M.InstanceAssociationOutputLocation(args)
	assert(args, "You must provdide an argument table when creating InstanceAssociationOutputLocation")
	local t = { 
		["S3Location"] = args["S3Location"],
	}
	asserts.AssertInstanceAssociationOutputLocation(t)
	return t
end

keys.ListDocumentsRequest = { ["DocumentFilterList"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListDocumentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDocumentsRequest to be of type 'table'")
	if struct["DocumentFilterList"] then asserts.AssertDocumentFilterList(struct["DocumentFilterList"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDocumentsRequest[k], "ListDocumentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDocumentsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DocumentFilterList [DocumentFilterList] <p>One or more filters. Use a filter to return a more specific list of results.</p>
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * MaxResults [MaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- @return ListDocumentsRequest structure as a key-value pair table
function M.ListDocumentsRequest(args)
	assert(args, "You must provdide an argument table when creating ListDocumentsRequest")
	local t = { 
		["DocumentFilterList"] = args["DocumentFilterList"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListDocumentsRequest(t)
	return t
end

keys.CreateAssociationBatchResult = { ["Successful"] = true, ["Failed"] = true, nil }

function asserts.AssertCreateAssociationBatchResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAssociationBatchResult to be of type 'table'")
	if struct["Successful"] then asserts.AssertAssociationDescriptionList(struct["Successful"]) end
	if struct["Failed"] then asserts.AssertFailedCreateAssociationList(struct["Failed"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAssociationBatchResult[k], "CreateAssociationBatchResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAssociationBatchResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Successful [AssociationDescriptionList] <p>Information about the associations that succeeded.</p>
-- * Failed [FailedCreateAssociationList] <p>Information about the associations that failed.</p>
-- @return CreateAssociationBatchResult structure as a key-value pair table
function M.CreateAssociationBatchResult(args)
	assert(args, "You must provdide an argument table when creating CreateAssociationBatchResult")
	local t = { 
		["Successful"] = args["Successful"],
		["Failed"] = args["Failed"],
	}
	asserts.AssertCreateAssociationBatchResult(t)
	return t
end

keys.DescribeAvailablePatchesRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeAvailablePatchesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAvailablePatchesRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPatchBaselineMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then asserts.AssertPatchOrchestratorFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAvailablePatchesRequest[k], "DescribeAvailablePatchesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAvailablePatchesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * MaxResults [PatchBaselineMaxResults] <p>The maximum number of patches to return (per page).</p>
-- * Filters [PatchOrchestratorFilterList] <p>Filters used to scope down the returned patches.</p>
-- @return DescribeAvailablePatchesRequest structure as a key-value pair table
function M.DescribeAvailablePatchesRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeAvailablePatchesRequest")
	local t = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeAvailablePatchesRequest(t)
	return t
end

keys.DescribeDocumentRequest = { ["Name"] = true, ["DocumentVersion"] = true, nil }

function asserts.AssertDescribeDocumentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDocumentRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertDocumentARN(struct["Name"]) end
	if struct["DocumentVersion"] then asserts.AssertDocumentVersion(struct["DocumentVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDocumentRequest[k], "DescribeDocumentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDocumentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [DocumentARN] <p>The name of the SSM document.</p>
-- * DocumentVersion [DocumentVersion] <p>The document version for which you want information. Can be a specific version or the default version.</p>
-- Required key: Name
-- @return DescribeDocumentRequest structure as a key-value pair table
function M.DescribeDocumentRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeDocumentRequest")
	local t = { 
		["Name"] = args["Name"],
		["DocumentVersion"] = args["DocumentVersion"],
	}
	asserts.AssertDescribeDocumentRequest(t)
	return t
end

keys.InvalidDocumentVersion = { ["Message"] = true, nil }

function asserts.AssertInvalidDocumentVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDocumentVersion to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidDocumentVersion[k], "InvalidDocumentVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDocumentVersion
-- <p>The document version is not valid or does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidDocumentVersion structure as a key-value pair table
function M.InvalidDocumentVersion(args)
	assert(args, "You must provdide an argument table when creating InvalidDocumentVersion")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidDocumentVersion(t)
	return t
end

keys.AutomationExecutionNotFoundException = { ["Message"] = true, nil }

function asserts.AssertAutomationExecutionNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutomationExecutionNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutomationExecutionNotFoundException[k], "AutomationExecutionNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutomationExecutionNotFoundException
-- <p>There is no automation execution information for the requested automation execution ID.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return AutomationExecutionNotFoundException structure as a key-value pair table
function M.AutomationExecutionNotFoundException(args)
	assert(args, "You must provdide an argument table when creating AutomationExecutionNotFoundException")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertAutomationExecutionNotFoundException(t)
	return t
end

keys.AssociationDoesNotExist = { ["Message"] = true, nil }

function asserts.AssertAssociationDoesNotExist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociationDoesNotExist to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociationDoesNotExist[k], "AssociationDoesNotExist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociationDoesNotExist
-- <p>The specified association does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return AssociationDoesNotExist structure as a key-value pair table
function M.AssociationDoesNotExist(args)
	assert(args, "You must provdide an argument table when creating AssociationDoesNotExist")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertAssociationDoesNotExist(t)
	return t
end

keys.AssociationDescription = { ["Status"] = true, ["ScheduleExpression"] = true, ["OutputLocation"] = true, ["Name"] = true, ["Parameters"] = true, ["LastExecutionDate"] = true, ["InstanceId"] = true, ["Overview"] = true, ["AssociationId"] = true, ["DocumentVersion"] = true, ["LastSuccessfulExecutionDate"] = true, ["LastUpdateAssociationDate"] = true, ["Date"] = true, ["Targets"] = true, nil }

function asserts.AssertAssociationDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociationDescription to be of type 'table'")
	if struct["Status"] then asserts.AssertAssociationStatus(struct["Status"]) end
	if struct["ScheduleExpression"] then asserts.AssertScheduleExpression(struct["ScheduleExpression"]) end
	if struct["OutputLocation"] then asserts.AssertInstanceAssociationOutputLocation(struct["OutputLocation"]) end
	if struct["Name"] then asserts.AssertDocumentName(struct["Name"]) end
	if struct["Parameters"] then asserts.AssertParameters(struct["Parameters"]) end
	if struct["LastExecutionDate"] then asserts.AssertDateTime(struct["LastExecutionDate"]) end
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["Overview"] then asserts.AssertAssociationOverview(struct["Overview"]) end
	if struct["AssociationId"] then asserts.AssertAssociationId(struct["AssociationId"]) end
	if struct["DocumentVersion"] then asserts.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["LastSuccessfulExecutionDate"] then asserts.AssertDateTime(struct["LastSuccessfulExecutionDate"]) end
	if struct["LastUpdateAssociationDate"] then asserts.AssertDateTime(struct["LastUpdateAssociationDate"]) end
	if struct["Date"] then asserts.AssertDateTime(struct["Date"]) end
	if struct["Targets"] then asserts.AssertTargets(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociationDescription[k], "AssociationDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociationDescription
-- <p>Describes the parameters for a document.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [AssociationStatus] <p>The association status.</p>
-- * ScheduleExpression [ScheduleExpression] <p>A cron expression that specifies a schedule when the association runs.</p>
-- * OutputLocation [InstanceAssociationOutputLocation] <p>An Amazon S3 bucket where you want to store the output details of the request.</p>
-- * Name [DocumentName] <p>The name of the SSM document.</p>
-- * Parameters [Parameters] <p>A description of the parameters for a document. </p>
-- * LastExecutionDate [DateTime] <p>The date on which the association was last run.</p>
-- * InstanceId [InstanceId] <p>The ID of the instance.</p>
-- * Overview [AssociationOverview] <p>Information about the association.</p>
-- * AssociationId [AssociationId] <p>The association ID.</p>
-- * DocumentVersion [DocumentVersion] <p>The document version.</p>
-- * LastSuccessfulExecutionDate [DateTime] <p>The last date on which the association was successfully run.</p>
-- * LastUpdateAssociationDate [DateTime] <p>The date when the association was last updated.</p>
-- * Date [DateTime] <p>The date when the association was made.</p>
-- * Targets [Targets] <p>The instances targeted by the request. </p>
-- @return AssociationDescription structure as a key-value pair table
function M.AssociationDescription(args)
	assert(args, "You must provdide an argument table when creating AssociationDescription")
	local t = { 
		["Status"] = args["Status"],
		["ScheduleExpression"] = args["ScheduleExpression"],
		["OutputLocation"] = args["OutputLocation"],
		["Name"] = args["Name"],
		["Parameters"] = args["Parameters"],
		["LastExecutionDate"] = args["LastExecutionDate"],
		["InstanceId"] = args["InstanceId"],
		["Overview"] = args["Overview"],
		["AssociationId"] = args["AssociationId"],
		["DocumentVersion"] = args["DocumentVersion"],
		["LastSuccessfulExecutionDate"] = args["LastSuccessfulExecutionDate"],
		["LastUpdateAssociationDate"] = args["LastUpdateAssociationDate"],
		["Date"] = args["Date"],
		["Targets"] = args["Targets"],
	}
	asserts.AssertAssociationDescription(t)
	return t
end

keys.MaintenanceWindowExecutionTaskIdentity = { ["Status"] = true, ["TaskArn"] = true, ["StartTime"] = true, ["TaskType"] = true, ["EndTime"] = true, ["WindowExecutionId"] = true, ["StatusDetails"] = true, ["TaskExecutionId"] = true, nil }

function asserts.AssertMaintenanceWindowExecutionTaskIdentity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaintenanceWindowExecutionTaskIdentity to be of type 'table'")
	if struct["Status"] then asserts.AssertMaintenanceWindowExecutionStatus(struct["Status"]) end
	if struct["TaskArn"] then asserts.AssertMaintenanceWindowTaskArn(struct["TaskArn"]) end
	if struct["StartTime"] then asserts.AssertDateTime(struct["StartTime"]) end
	if struct["TaskType"] then asserts.AssertMaintenanceWindowTaskType(struct["TaskType"]) end
	if struct["EndTime"] then asserts.AssertDateTime(struct["EndTime"]) end
	if struct["WindowExecutionId"] then asserts.AssertMaintenanceWindowExecutionId(struct["WindowExecutionId"]) end
	if struct["StatusDetails"] then asserts.AssertMaintenanceWindowExecutionStatusDetails(struct["StatusDetails"]) end
	if struct["TaskExecutionId"] then asserts.AssertMaintenanceWindowExecutionTaskId(struct["TaskExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.MaintenanceWindowExecutionTaskIdentity[k], "MaintenanceWindowExecutionTaskIdentity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaintenanceWindowExecutionTaskIdentity
-- <p>Information about a task execution performed as part of a Maintenance Window execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [MaintenanceWindowExecutionStatus] <p>The status of the task execution.</p>
-- * TaskArn [MaintenanceWindowTaskArn] <p>The ARN of the executed task.</p>
-- * StartTime [DateTime] <p>The time the task execution started.</p>
-- * TaskType [MaintenanceWindowTaskType] <p>The type of executed task.</p>
-- * EndTime [DateTime] <p>The time the task execution finished.</p>
-- * WindowExecutionId [MaintenanceWindowExecutionId] <p>The ID of the Maintenance Window execution that ran the task.</p>
-- * StatusDetails [MaintenanceWindowExecutionStatusDetails] <p>The details explaining the status of the task execution. Only available for certain status values.</p>
-- * TaskExecutionId [MaintenanceWindowExecutionTaskId] <p>The ID of the specific task execution in the Maintenance Window execution.</p>
-- @return MaintenanceWindowExecutionTaskIdentity structure as a key-value pair table
function M.MaintenanceWindowExecutionTaskIdentity(args)
	assert(args, "You must provdide an argument table when creating MaintenanceWindowExecutionTaskIdentity")
	local t = { 
		["Status"] = args["Status"],
		["TaskArn"] = args["TaskArn"],
		["StartTime"] = args["StartTime"],
		["TaskType"] = args["TaskType"],
		["EndTime"] = args["EndTime"],
		["WindowExecutionId"] = args["WindowExecutionId"],
		["StatusDetails"] = args["StatusDetails"],
		["TaskExecutionId"] = args["TaskExecutionId"],
	}
	asserts.AssertMaintenanceWindowExecutionTaskIdentity(t)
	return t
end

keys.AutomationExecutionLimitExceededException = { ["Message"] = true, nil }

function asserts.AssertAutomationExecutionLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutomationExecutionLimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutomationExecutionLimitExceededException[k], "AutomationExecutionLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutomationExecutionLimitExceededException
-- <p>The number of simultaneously running Automation executions exceeded the allowable limit.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return AutomationExecutionLimitExceededException structure as a key-value pair table
function M.AutomationExecutionLimitExceededException(args)
	assert(args, "You must provdide an argument table when creating AutomationExecutionLimitExceededException")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertAutomationExecutionLimitExceededException(t)
	return t
end

keys.SendCommandRequest = { ["Comment"] = true, ["ServiceRoleArn"] = true, ["MaxErrors"] = true, ["Parameters"] = true, ["TimeoutSeconds"] = true, ["DocumentName"] = true, ["DocumentHash"] = true, ["OutputS3BucketName"] = true, ["NotificationConfig"] = true, ["DocumentHashType"] = true, ["OutputS3KeyPrefix"] = true, ["OutputS3Region"] = true, ["Targets"] = true, ["InstanceIds"] = true, ["MaxConcurrency"] = true, nil }

function asserts.AssertSendCommandRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendCommandRequest to be of type 'table'")
	assert(struct["DocumentName"], "Expected key DocumentName to exist in table")
	if struct["Comment"] then asserts.AssertComment(struct["Comment"]) end
	if struct["ServiceRoleArn"] then asserts.AssertServiceRole(struct["ServiceRoleArn"]) end
	if struct["MaxErrors"] then asserts.AssertMaxErrors(struct["MaxErrors"]) end
	if struct["Parameters"] then asserts.AssertParameters(struct["Parameters"]) end
	if struct["TimeoutSeconds"] then asserts.AssertTimeoutSeconds(struct["TimeoutSeconds"]) end
	if struct["DocumentName"] then asserts.AssertDocumentARN(struct["DocumentName"]) end
	if struct["DocumentHash"] then asserts.AssertDocumentHash(struct["DocumentHash"]) end
	if struct["OutputS3BucketName"] then asserts.AssertS3BucketName(struct["OutputS3BucketName"]) end
	if struct["NotificationConfig"] then asserts.AssertNotificationConfig(struct["NotificationConfig"]) end
	if struct["DocumentHashType"] then asserts.AssertDocumentHashType(struct["DocumentHashType"]) end
	if struct["OutputS3KeyPrefix"] then asserts.AssertS3KeyPrefix(struct["OutputS3KeyPrefix"]) end
	if struct["OutputS3Region"] then asserts.AssertS3Region(struct["OutputS3Region"]) end
	if struct["Targets"] then asserts.AssertTargets(struct["Targets"]) end
	if struct["InstanceIds"] then asserts.AssertInstanceIdList(struct["InstanceIds"]) end
	if struct["MaxConcurrency"] then asserts.AssertMaxConcurrency(struct["MaxConcurrency"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendCommandRequest[k], "SendCommandRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendCommandRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Comment [Comment] <p>User-specified information about the command, such as a brief description of what the command should do.</p>
-- * ServiceRoleArn [ServiceRole] <p>The IAM role that Systems Manager uses to send notifications. </p>
-- * MaxErrors [MaxErrors] <p>The maximum number of errors allowed without the command failing. When the command fails one more time beyond the value of MaxErrors, the systems stops sending the command to additional targets. You can specify a number like 10 or a percentage like 10%. The default value is 50. For more information about how to use MaxErrors, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-maxerrors.html">Using Error Controls</a>.</p>
-- * Parameters [Parameters] <p>The required and optional parameters specified in the document being executed.</p>
-- * TimeoutSeconds [TimeoutSeconds] <p>If this time is reached and the command has not already started executing, it will not execute.</p>
-- * DocumentName [DocumentARN] <p>Required. The name of the Systems Manager document to execute. This can be a public document or a custom document.</p>
-- * DocumentHash [DocumentHash] <p>The Sha256 or Sha1 hash created by the system when the document was created. </p> <note> <p>Sha1 hashes have been deprecated.</p> </note>
-- * OutputS3BucketName [S3BucketName] <p>The name of the S3 bucket where command execution responses should be stored.</p>
-- * NotificationConfig [NotificationConfig] <p>Configurations for sending notifications.</p>
-- * DocumentHashType [DocumentHashType] <p>Sha256 or Sha1.</p> <note> <p>Sha1 hashes have been deprecated.</p> </note>
-- * OutputS3KeyPrefix [S3KeyPrefix] <p>The directory structure within the S3 bucket where the responses should be stored.</p>
-- * OutputS3Region [S3Region] <p>(Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager automatically determines the Amazon S3 bucket region.</p>
-- * Targets [Targets] <p>(Optional) An array of search criteria that targets instances using a Key,Value combination that you specify. Targets is required if you don't provide one or more instance IDs in the call. For more information about how to use Targets, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html">Sending Commands to a Fleet</a>.</p>
-- * InstanceIds [InstanceIdList] <p>The instance IDs where the command should execute. You can specify a maximum of 50 IDs. If you prefer not to list individual instance IDs, you can instead send commands to a fleet of instances using the Targets parameter, which accepts EC2 tags. For more information about how to use Targets, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html">Sending Commands to a Fleet</a>.</p>
-- * MaxConcurrency [MaxConcurrency] <p>(Optional) The maximum number of instances that are allowed to execute the command at the same time. You can specify a number such as 10 or a percentage such as 10%. The default value is 50. For more information about how to use MaxConcurrency, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-velocity.html">Using Concurrency Controls</a>.</p>
-- Required key: DocumentName
-- @return SendCommandRequest structure as a key-value pair table
function M.SendCommandRequest(args)
	assert(args, "You must provdide an argument table when creating SendCommandRequest")
	local t = { 
		["Comment"] = args["Comment"],
		["ServiceRoleArn"] = args["ServiceRoleArn"],
		["MaxErrors"] = args["MaxErrors"],
		["Parameters"] = args["Parameters"],
		["TimeoutSeconds"] = args["TimeoutSeconds"],
		["DocumentName"] = args["DocumentName"],
		["DocumentHash"] = args["DocumentHash"],
		["OutputS3BucketName"] = args["OutputS3BucketName"],
		["NotificationConfig"] = args["NotificationConfig"],
		["DocumentHashType"] = args["DocumentHashType"],
		["OutputS3KeyPrefix"] = args["OutputS3KeyPrefix"],
		["OutputS3Region"] = args["OutputS3Region"],
		["Targets"] = args["Targets"],
		["InstanceIds"] = args["InstanceIds"],
		["MaxConcurrency"] = args["MaxConcurrency"],
	}
	asserts.AssertSendCommandRequest(t)
	return t
end

keys.UpdateDocumentDefaultVersionRequest = { ["Name"] = true, ["DocumentVersion"] = true, nil }

function asserts.AssertUpdateDocumentDefaultVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDocumentDefaultVersionRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["DocumentVersion"], "Expected key DocumentVersion to exist in table")
	if struct["Name"] then asserts.AssertDocumentName(struct["Name"]) end
	if struct["DocumentVersion"] then asserts.AssertDocumentVersionNumber(struct["DocumentVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDocumentDefaultVersionRequest[k], "UpdateDocumentDefaultVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDocumentDefaultVersionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [DocumentName] <p>The name of a custom document that you want to set as the default version.</p>
-- * DocumentVersion [DocumentVersionNumber] <p>The version of a custom document that you want to set as the default version.</p>
-- Required key: Name
-- Required key: DocumentVersion
-- @return UpdateDocumentDefaultVersionRequest structure as a key-value pair table
function M.UpdateDocumentDefaultVersionRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateDocumentDefaultVersionRequest")
	local t = { 
		["Name"] = args["Name"],
		["DocumentVersion"] = args["DocumentVersion"],
	}
	asserts.AssertUpdateDocumentDefaultVersionRequest(t)
	return t
end

keys.GetPatchBaselineResult = { ["BaselineId"] = true, ["Name"] = true, ["PatchGroups"] = true, ["RejectedPatches"] = true, ["GlobalFilters"] = true, ["ApprovalRules"] = true, ["ModifiedDate"] = true, ["CreatedDate"] = true, ["ApprovedPatches"] = true, ["Description"] = true, nil }

function asserts.AssertGetPatchBaselineResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPatchBaselineResult to be of type 'table'")
	if struct["BaselineId"] then asserts.AssertBaselineId(struct["BaselineId"]) end
	if struct["Name"] then asserts.AssertBaselineName(struct["Name"]) end
	if struct["PatchGroups"] then asserts.AssertPatchGroupList(struct["PatchGroups"]) end
	if struct["RejectedPatches"] then asserts.AssertPatchIdList(struct["RejectedPatches"]) end
	if struct["GlobalFilters"] then asserts.AssertPatchFilterGroup(struct["GlobalFilters"]) end
	if struct["ApprovalRules"] then asserts.AssertPatchRuleGroup(struct["ApprovalRules"]) end
	if struct["ModifiedDate"] then asserts.AssertDateTime(struct["ModifiedDate"]) end
	if struct["CreatedDate"] then asserts.AssertDateTime(struct["CreatedDate"]) end
	if struct["ApprovedPatches"] then asserts.AssertPatchIdList(struct["ApprovedPatches"]) end
	if struct["Description"] then asserts.AssertBaselineDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPatchBaselineResult[k], "GetPatchBaselineResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPatchBaselineResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BaselineId [BaselineId] <p>The ID of the retrieved patch baseline.</p>
-- * Name [BaselineName] <p>The name of the patch baseline.</p>
-- * PatchGroups [PatchGroupList] <p>Patch groups included in the patch baseline.</p>
-- * RejectedPatches [PatchIdList] <p>A list of explicitly rejected patches for the baseline.</p>
-- * GlobalFilters [PatchFilterGroup] <p>A set of global filters used to exclude patches from the baseline.</p>
-- * ApprovalRules [PatchRuleGroup] <p>A set of rules used to include patches in the baseline.</p>
-- * ModifiedDate [DateTime] <p>The date the patch baseline was last modified.</p>
-- * CreatedDate [DateTime] <p>The date the patch baseline was created.</p>
-- * ApprovedPatches [PatchIdList] <p>A list of explicitly approved patches for the baseline.</p>
-- * Description [BaselineDescription] <p>A description of the patch baseline.</p>
-- @return GetPatchBaselineResult structure as a key-value pair table
function M.GetPatchBaselineResult(args)
	assert(args, "You must provdide an argument table when creating GetPatchBaselineResult")
	local t = { 
		["BaselineId"] = args["BaselineId"],
		["Name"] = args["Name"],
		["PatchGroups"] = args["PatchGroups"],
		["RejectedPatches"] = args["RejectedPatches"],
		["GlobalFilters"] = args["GlobalFilters"],
		["ApprovalRules"] = args["ApprovalRules"],
		["ModifiedDate"] = args["ModifiedDate"],
		["CreatedDate"] = args["CreatedDate"],
		["ApprovedPatches"] = args["ApprovedPatches"],
		["Description"] = args["Description"],
	}
	asserts.AssertGetPatchBaselineResult(t)
	return t
end

keys.NotificationConfig = { ["NotificationArn"] = true, ["NotificationEvents"] = true, ["NotificationType"] = true, nil }

function asserts.AssertNotificationConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotificationConfig to be of type 'table'")
	if struct["NotificationArn"] then asserts.AssertNotificationArn(struct["NotificationArn"]) end
	if struct["NotificationEvents"] then asserts.AssertNotificationEventList(struct["NotificationEvents"]) end
	if struct["NotificationType"] then asserts.AssertNotificationType(struct["NotificationType"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotificationConfig[k], "NotificationConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotificationConfig
-- <p>Configurations for sending notifications.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotificationArn [NotificationArn] <p>An Amazon Resource Name (ARN) for a Simple Notification Service (SNS) topic. Run Command pushes notifications about command status changes to this topic.</p>
-- * NotificationEvents [NotificationEventList] <p>The different events for which you can receive notifications. These events include the following: All (events), InProgress, Success, TimedOut, Cancelled, Failed. To learn more about these events, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html">Setting Up Events and Notifications</a> in the <i>Amazon EC2 Systems Manager User Guide</i>.</p>
-- * NotificationType [NotificationType] <p>Command: Receive notification when the status of a command changes. Invocation: For commands sent to multiple instances, receive notification on a per-instance basis when the status of a command changes. </p>
-- @return NotificationConfig structure as a key-value pair table
function M.NotificationConfig(args)
	assert(args, "You must provdide an argument table when creating NotificationConfig")
	local t = { 
		["NotificationArn"] = args["NotificationArn"],
		["NotificationEvents"] = args["NotificationEvents"],
		["NotificationType"] = args["NotificationType"],
	}
	asserts.AssertNotificationConfig(t)
	return t
end

keys.ModifyDocumentPermissionRequest = { ["AccountIdsToAdd"] = true, ["PermissionType"] = true, ["AccountIdsToRemove"] = true, ["Name"] = true, nil }

function asserts.AssertModifyDocumentPermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDocumentPermissionRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["PermissionType"], "Expected key PermissionType to exist in table")
	if struct["AccountIdsToAdd"] then asserts.AssertAccountIdList(struct["AccountIdsToAdd"]) end
	if struct["PermissionType"] then asserts.AssertDocumentPermissionType(struct["PermissionType"]) end
	if struct["AccountIdsToRemove"] then asserts.AssertAccountIdList(struct["AccountIdsToRemove"]) end
	if struct["Name"] then asserts.AssertDocumentName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ModifyDocumentPermissionRequest[k], "ModifyDocumentPermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDocumentPermissionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AccountIdsToAdd [AccountIdList] <p>The AWS user accounts that should have access to the document. The account IDs can either be a group of account IDs or <i>All</i>.</p>
-- * PermissionType [DocumentPermissionType] <p>The permission type for the document. The permission type can be <i>Share</i>.</p>
-- * AccountIdsToRemove [AccountIdList] <p>The AWS user accounts that should no longer have access to the document. The AWS user account can either be a group of account IDs or <i>All</i>. This action has a higher priority than <i>AccountIdsToAdd</i>. If you specify an account ID to add and the same ID to remove, the system removes access to the document.</p>
-- * Name [DocumentName] <p>The name of the document that you want to share.</p>
-- Required key: Name
-- Required key: PermissionType
-- @return ModifyDocumentPermissionRequest structure as a key-value pair table
function M.ModifyDocumentPermissionRequest(args)
	assert(args, "You must provdide an argument table when creating ModifyDocumentPermissionRequest")
	local t = { 
		["AccountIdsToAdd"] = args["AccountIdsToAdd"],
		["PermissionType"] = args["PermissionType"],
		["AccountIdsToRemove"] = args["AccountIdsToRemove"],
		["Name"] = args["Name"],
	}
	asserts.AssertModifyDocumentPermissionRequest(t)
	return t
end

keys.RegisterTargetWithMaintenanceWindowRequest = { ["ResourceType"] = true, ["OwnerInformation"] = true, ["WindowId"] = true, ["Targets"] = true, ["ClientToken"] = true, nil }

function asserts.AssertRegisterTargetWithMaintenanceWindowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterTargetWithMaintenanceWindowRequest to be of type 'table'")
	assert(struct["WindowId"], "Expected key WindowId to exist in table")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["Targets"], "Expected key Targets to exist in table")
	if struct["ResourceType"] then asserts.AssertMaintenanceWindowResourceType(struct["ResourceType"]) end
	if struct["OwnerInformation"] then asserts.AssertOwnerInformation(struct["OwnerInformation"]) end
	if struct["WindowId"] then asserts.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["Targets"] then asserts.AssertTargets(struct["Targets"]) end
	if struct["ClientToken"] then asserts.AssertClientToken(struct["ClientToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterTargetWithMaintenanceWindowRequest[k], "RegisterTargetWithMaintenanceWindowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterTargetWithMaintenanceWindowRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [MaintenanceWindowResourceType] <p>The type of target being registered with the Maintenance Window.</p>
-- * OwnerInformation [OwnerInformation] <p>User-provided value that will be included in any CloudWatch events raised while running tasks for these targets in this Maintenance Window.</p>
-- * WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window the target should be registered with.</p>
-- * Targets [Targets] <p>The targets (either instances or tags). Instances are specified using Key=instanceids,Values=&lt;instanceid1&gt;,&lt;instanceid2&gt;. Tags are specified using Key=&lt;tag name&gt;,Values=&lt;tag value&gt;.</p>
-- * ClientToken [ClientToken] <p>User-provided idempotency token.</p>
-- Required key: WindowId
-- Required key: ResourceType
-- Required key: Targets
-- @return RegisterTargetWithMaintenanceWindowRequest structure as a key-value pair table
function M.RegisterTargetWithMaintenanceWindowRequest(args)
	assert(args, "You must provdide an argument table when creating RegisterTargetWithMaintenanceWindowRequest")
	local t = { 
		["ResourceType"] = args["ResourceType"],
		["OwnerInformation"] = args["OwnerInformation"],
		["WindowId"] = args["WindowId"],
		["Targets"] = args["Targets"],
		["ClientToken"] = args["ClientToken"],
	}
	asserts.AssertRegisterTargetWithMaintenanceWindowRequest(t)
	return t
end

keys.TotalSizeLimitExceededException = { ["Message"] = true, nil }

function asserts.AssertTotalSizeLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TotalSizeLimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TotalSizeLimitExceededException[k], "TotalSizeLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TotalSizeLimitExceededException
-- <p>The size of inventory data has exceeded the total size limit for the resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return TotalSizeLimitExceededException structure as a key-value pair table
function M.TotalSizeLimitExceededException(args)
	assert(args, "You must provdide an argument table when creating TotalSizeLimitExceededException")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertTotalSizeLimitExceededException(t)
	return t
end

keys.InvalidResourceType = { nil }

function asserts.AssertInvalidResourceType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidResourceType to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidResourceType[k], "InvalidResourceType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidResourceType
-- <p>The resource type is not valid. If you are attempting to tag an instance, the instance must be a registered, managed instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidResourceType structure as a key-value pair table
function M.InvalidResourceType(args)
	assert(args, "You must provdide an argument table when creating InvalidResourceType")
	local t = { 
	}
	asserts.AssertInvalidResourceType(t)
	return t
end

keys.GetMaintenanceWindowResult = { ["Cutoff"] = true, ["Name"] = true, ["Schedule"] = true, ["Enabled"] = true, ["AllowUnassociatedTargets"] = true, ["WindowId"] = true, ["ModifiedDate"] = true, ["CreatedDate"] = true, ["Duration"] = true, nil }

function asserts.AssertGetMaintenanceWindowResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMaintenanceWindowResult to be of type 'table'")
	if struct["Cutoff"] then asserts.AssertMaintenanceWindowCutoff(struct["Cutoff"]) end
	if struct["Name"] then asserts.AssertMaintenanceWindowName(struct["Name"]) end
	if struct["Schedule"] then asserts.AssertMaintenanceWindowSchedule(struct["Schedule"]) end
	if struct["Enabled"] then asserts.AssertMaintenanceWindowEnabled(struct["Enabled"]) end
	if struct["AllowUnassociatedTargets"] then asserts.AssertMaintenanceWindowAllowUnassociatedTargets(struct["AllowUnassociatedTargets"]) end
	if struct["WindowId"] then asserts.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["ModifiedDate"] then asserts.AssertDateTime(struct["ModifiedDate"]) end
	if struct["CreatedDate"] then asserts.AssertDateTime(struct["CreatedDate"]) end
	if struct["Duration"] then asserts.AssertMaintenanceWindowDurationHours(struct["Duration"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMaintenanceWindowResult[k], "GetMaintenanceWindowResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMaintenanceWindowResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cutoff [MaintenanceWindowCutoff] <p>The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution.</p>
-- * Name [MaintenanceWindowName] <p>The name of the Maintenance Window.</p>
-- * Schedule [MaintenanceWindowSchedule] <p>The schedule of the Maintenance Window in the form of a cron or rate expression.</p>
-- * Enabled [MaintenanceWindowEnabled] <p>Whether the Maintenance Windows is enabled.</p>
-- * AllowUnassociatedTargets [MaintenanceWindowAllowUnassociatedTargets] <p>Whether targets must be registered with the Maintenance Window before tasks can be defined for those targets.</p>
-- * WindowId [MaintenanceWindowId] <p>The ID of the created Maintenance Window.</p>
-- * ModifiedDate [DateTime] <p>The date the Maintenance Window was last modified.</p>
-- * CreatedDate [DateTime] <p>The date the Maintenance Window was created.</p>
-- * Duration [MaintenanceWindowDurationHours] <p>The duration of the Maintenance Window in hours.</p>
-- @return GetMaintenanceWindowResult structure as a key-value pair table
function M.GetMaintenanceWindowResult(args)
	assert(args, "You must provdide an argument table when creating GetMaintenanceWindowResult")
	local t = { 
		["Cutoff"] = args["Cutoff"],
		["Name"] = args["Name"],
		["Schedule"] = args["Schedule"],
		["Enabled"] = args["Enabled"],
		["AllowUnassociatedTargets"] = args["AllowUnassociatedTargets"],
		["WindowId"] = args["WindowId"],
		["ModifiedDate"] = args["ModifiedDate"],
		["CreatedDate"] = args["CreatedDate"],
		["Duration"] = args["Duration"],
	}
	asserts.AssertGetMaintenanceWindowResult(t)
	return t
end

keys.UpdateAssociationRequest = { ["ScheduleExpression"] = true, ["OutputLocation"] = true, ["Name"] = true, ["Parameters"] = true, ["AssociationId"] = true, ["DocumentVersion"] = true, ["Targets"] = true, nil }

function asserts.AssertUpdateAssociationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAssociationRequest to be of type 'table'")
	assert(struct["AssociationId"], "Expected key AssociationId to exist in table")
	if struct["ScheduleExpression"] then asserts.AssertScheduleExpression(struct["ScheduleExpression"]) end
	if struct["OutputLocation"] then asserts.AssertInstanceAssociationOutputLocation(struct["OutputLocation"]) end
	if struct["Name"] then asserts.AssertDocumentName(struct["Name"]) end
	if struct["Parameters"] then asserts.AssertParameters(struct["Parameters"]) end
	if struct["AssociationId"] then asserts.AssertAssociationId(struct["AssociationId"]) end
	if struct["DocumentVersion"] then asserts.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["Targets"] then asserts.AssertTargets(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAssociationRequest[k], "UpdateAssociationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAssociationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScheduleExpression [ScheduleExpression] <p>The cron expression used to schedule the association that you want to update.</p>
-- * OutputLocation [InstanceAssociationOutputLocation] <p>An Amazon S3 bucket where you want to store the results of this request.</p>
-- * Name [DocumentName] <p>The name of the association document.</p>
-- * Parameters [Parameters] <p>The parameters you want to update for the association. If you create a parameter using Parameter Store, you can reference the parameter using {{ssm:parameter-name}}</p>
-- * AssociationId [AssociationId] <p>The ID of the association you want to update. </p>
-- * DocumentVersion [DocumentVersion] <p>The document version you want update for the association. </p>
-- * Targets [Targets] <p>The targets of the association.</p>
-- Required key: AssociationId
-- @return UpdateAssociationRequest structure as a key-value pair table
function M.UpdateAssociationRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateAssociationRequest")
	local t = { 
		["ScheduleExpression"] = args["ScheduleExpression"],
		["OutputLocation"] = args["OutputLocation"],
		["Name"] = args["Name"],
		["Parameters"] = args["Parameters"],
		["AssociationId"] = args["AssociationId"],
		["DocumentVersion"] = args["DocumentVersion"],
		["Targets"] = args["Targets"],
	}
	asserts.AssertUpdateAssociationRequest(t)
	return t
end

keys.UpdateAssociationStatusResult = { ["AssociationDescription"] = true, nil }

function asserts.AssertUpdateAssociationStatusResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAssociationStatusResult to be of type 'table'")
	if struct["AssociationDescription"] then asserts.AssertAssociationDescription(struct["AssociationDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAssociationStatusResult[k], "UpdateAssociationStatusResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAssociationStatusResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AssociationDescription [AssociationDescription] <p>Information about the association.</p>
-- @return UpdateAssociationStatusResult structure as a key-value pair table
function M.UpdateAssociationStatusResult(args)
	assert(args, "You must provdide an argument table when creating UpdateAssociationStatusResult")
	local t = { 
		["AssociationDescription"] = args["AssociationDescription"],
	}
	asserts.AssertUpdateAssociationStatusResult(t)
	return t
end

keys.InvalidNextToken = { ["Message"] = true, nil }

function asserts.AssertInvalidNextToken(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextToken to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidNextToken[k], "InvalidNextToken contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextToken
-- <p>The specified token is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidNextToken structure as a key-value pair table
function M.InvalidNextToken(args)
	assert(args, "You must provdide an argument table when creating InvalidNextToken")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidNextToken(t)
	return t
end

keys.InstanceAggregatedAssociationOverview = { ["DetailedStatus"] = true, ["InstanceAssociationStatusAggregatedCount"] = true, nil }

function asserts.AssertInstanceAggregatedAssociationOverview(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceAggregatedAssociationOverview to be of type 'table'")
	if struct["DetailedStatus"] then asserts.AssertStatusName(struct["DetailedStatus"]) end
	if struct["InstanceAssociationStatusAggregatedCount"] then asserts.AssertInstanceAssociationStatusAggregatedCount(struct["InstanceAssociationStatusAggregatedCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceAggregatedAssociationOverview[k], "InstanceAggregatedAssociationOverview contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceAggregatedAssociationOverview
-- <p>Status information about the aggregated associations.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DetailedStatus [StatusName] <p>Detailed status information about the aggregated associations.</p>
-- * InstanceAssociationStatusAggregatedCount [InstanceAssociationStatusAggregatedCount] <p>The number of associations for the instance(s).</p>
-- @return InstanceAggregatedAssociationOverview structure as a key-value pair table
function M.InstanceAggregatedAssociationOverview(args)
	assert(args, "You must provdide an argument table when creating InstanceAggregatedAssociationOverview")
	local t = { 
		["DetailedStatus"] = args["DetailedStatus"],
		["InstanceAssociationStatusAggregatedCount"] = args["InstanceAssociationStatusAggregatedCount"],
	}
	asserts.AssertInstanceAggregatedAssociationOverview(t)
	return t
end

keys.DescribeInstancePatchesRequest = { ["InstanceId"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeInstancePatchesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancePatchesRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPatchComplianceMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then asserts.AssertPatchOrchestratorFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInstancePatchesRequest[k], "DescribeInstancePatchesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancePatchesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The ID of the instance whose patch state information should be retrieved.</p>
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * MaxResults [PatchComplianceMaxResults] <p>The maximum number of patches to return (per page).</p>
-- * Filters [PatchOrchestratorFilterList] <p>Each entry in the array is a structure containing:</p> <p>Key (string, between 1 and 128 characters)</p> <p>Values (array of strings, each string between 1 and 256 characters)</p>
-- Required key: InstanceId
-- @return DescribeInstancePatchesRequest structure as a key-value pair table
function M.DescribeInstancePatchesRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeInstancePatchesRequest")
	local t = { 
		["InstanceId"] = args["InstanceId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeInstancePatchesRequest(t)
	return t
end

keys.InstanceInformationStringFilter = { ["Values"] = true, ["Key"] = true, nil }

function asserts.AssertInstanceInformationStringFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceInformationStringFilter to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Values"] then asserts.AssertInstanceInformationFilterValueSet(struct["Values"]) end
	if struct["Key"] then asserts.AssertInstanceInformationStringFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceInformationStringFilter[k], "InstanceInformationStringFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceInformationStringFilter
-- <p>The filters to describe or get information about your managed instances.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [InstanceInformationFilterValueSet] <p>The filter values.</p>
-- * Key [InstanceInformationStringFilterKey] <p>The filter key name to describe your instances. For example:</p> <p>"InstanceIds"|"AgentVersion"|"PingStatus"|"PlatformTypes"|"ActivationIds"|"IamRole"|"ResourceType"|"AssociationStatus"|"Tag Key"</p>
-- Required key: Key
-- Required key: Values
-- @return InstanceInformationStringFilter structure as a key-value pair table
function M.InstanceInformationStringFilter(args)
	assert(args, "You must provdide an argument table when creating InstanceInformationStringFilter")
	local t = { 
		["Values"] = args["Values"],
		["Key"] = args["Key"],
	}
	asserts.AssertInstanceInformationStringFilter(t)
	return t
end

keys.GetMaintenanceWindowRequest = { ["WindowId"] = true, nil }

function asserts.AssertGetMaintenanceWindowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMaintenanceWindowRequest to be of type 'table'")
	assert(struct["WindowId"], "Expected key WindowId to exist in table")
	if struct["WindowId"] then asserts.AssertMaintenanceWindowId(struct["WindowId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMaintenanceWindowRequest[k], "GetMaintenanceWindowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMaintenanceWindowRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WindowId [MaintenanceWindowId] <p>The ID of the desired Maintenance Window.</p>
-- Required key: WindowId
-- @return GetMaintenanceWindowRequest structure as a key-value pair table
function M.GetMaintenanceWindowRequest(args)
	assert(args, "You must provdide an argument table when creating GetMaintenanceWindowRequest")
	local t = { 
		["WindowId"] = args["WindowId"],
	}
	asserts.AssertGetMaintenanceWindowRequest(t)
	return t
end

keys.DeregisterTargetFromMaintenanceWindowResult = { ["WindowId"] = true, ["WindowTargetId"] = true, nil }

function asserts.AssertDeregisterTargetFromMaintenanceWindowResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterTargetFromMaintenanceWindowResult to be of type 'table'")
	if struct["WindowId"] then asserts.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["WindowTargetId"] then asserts.AssertMaintenanceWindowTargetId(struct["WindowTargetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterTargetFromMaintenanceWindowResult[k], "DeregisterTargetFromMaintenanceWindowResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterTargetFromMaintenanceWindowResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window the target was removed from.</p>
-- * WindowTargetId [MaintenanceWindowTargetId] <p>The ID of the removed target definition.</p>
-- @return DeregisterTargetFromMaintenanceWindowResult structure as a key-value pair table
function M.DeregisterTargetFromMaintenanceWindowResult(args)
	assert(args, "You must provdide an argument table when creating DeregisterTargetFromMaintenanceWindowResult")
	local t = { 
		["WindowId"] = args["WindowId"],
		["WindowTargetId"] = args["WindowTargetId"],
	}
	asserts.AssertDeregisterTargetFromMaintenanceWindowResult(t)
	return t
end

keys.AddTagsToResourceResult = { nil }

function asserts.AssertAddTagsToResourceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AddTagsToResourceResult[k], "AddTagsToResourceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AddTagsToResourceResult structure as a key-value pair table
function M.AddTagsToResourceResult(args)
	assert(args, "You must provdide an argument table when creating AddTagsToResourceResult")
	local t = { 
	}
	asserts.AssertAddTagsToResourceResult(t)
	return t
end

keys.HierarchyTypeMismatchException = { ["message"] = true, nil }

function asserts.AssertHierarchyTypeMismatchException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HierarchyTypeMismatchException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.HierarchyTypeMismatchException[k], "HierarchyTypeMismatchException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HierarchyTypeMismatchException
-- <p>Parameter Store does not support changing a parameter type in a hierarchy. For example, you can't change a parameter from a String type to a SecureString type. You must create a new, unique parameter.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>Parameter Store does not support changing a parameter type in a hierarchy. For example, you can't change a parameter from a String type to a SecureString type. You must create a new, unique parameter.</p>
-- @return HierarchyTypeMismatchException structure as a key-value pair table
function M.HierarchyTypeMismatchException(args)
	assert(args, "You must provdide an argument table when creating HierarchyTypeMismatchException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertHierarchyTypeMismatchException(t)
	return t
end

keys.UpdateManagedInstanceRoleResult = { nil }

function asserts.AssertUpdateManagedInstanceRoleResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateManagedInstanceRoleResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateManagedInstanceRoleResult[k], "UpdateManagedInstanceRoleResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateManagedInstanceRoleResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateManagedInstanceRoleResult structure as a key-value pair table
function M.UpdateManagedInstanceRoleResult(args)
	assert(args, "You must provdide an argument table when creating UpdateManagedInstanceRoleResult")
	local t = { 
	}
	asserts.AssertUpdateManagedInstanceRoleResult(t)
	return t
end

keys.InvalidOutputFolder = { nil }

function asserts.AssertInvalidOutputFolder(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOutputFolder to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidOutputFolder[k], "InvalidOutputFolder contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOutputFolder
-- <p>The S3 bucket does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidOutputFolder structure as a key-value pair table
function M.InvalidOutputFolder(args)
	assert(args, "You must provdide an argument table when creating InvalidOutputFolder")
	local t = { 
	}
	asserts.AssertInvalidOutputFolder(t)
	return t
end

keys.DescribeMaintenanceWindowsRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeMaintenanceWindowsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaintenanceWindowMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then asserts.AssertMaintenanceWindowFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMaintenanceWindowsRequest[k], "DescribeMaintenanceWindowsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * MaxResults [MaintenanceWindowMaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- * Filters [MaintenanceWindowFilterList] <p>Optional filters used to narrow down the scope of the returned Maintenance Windows. Supported filter keys are Name and Enabled.</p>
-- @return DescribeMaintenanceWindowsRequest structure as a key-value pair table
function M.DescribeMaintenanceWindowsRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeMaintenanceWindowsRequest")
	local t = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeMaintenanceWindowsRequest(t)
	return t
end

keys.CreateActivationResult = { ["ActivationCode"] = true, ["ActivationId"] = true, nil }

function asserts.AssertCreateActivationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateActivationResult to be of type 'table'")
	if struct["ActivationCode"] then asserts.AssertActivationCode(struct["ActivationCode"]) end
	if struct["ActivationId"] then asserts.AssertActivationId(struct["ActivationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateActivationResult[k], "CreateActivationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateActivationResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ActivationCode [ActivationCode] <p>The code the system generates when it processes the activation. The activation code functions like a password to validate the activation ID. </p>
-- * ActivationId [ActivationId] <p>The ID number generated by the system when it processed the activation. The activation ID functions like a user name.</p>
-- @return CreateActivationResult structure as a key-value pair table
function M.CreateActivationResult(args)
	assert(args, "You must provdide an argument table when creating CreateActivationResult")
	local t = { 
		["ActivationCode"] = args["ActivationCode"],
		["ActivationId"] = args["ActivationId"],
	}
	asserts.AssertCreateActivationResult(t)
	return t
end

keys.InvalidActivationId = { ["Message"] = true, nil }

function asserts.AssertInvalidActivationId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidActivationId to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidActivationId[k], "InvalidActivationId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidActivationId
-- <p>The activation ID is not valid. Verify the you entered the correct ActivationId or ActivationCode and try again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidActivationId structure as a key-value pair table
function M.InvalidActivationId(args)
	assert(args, "You must provdide an argument table when creating InvalidActivationId")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidActivationId(t)
	return t
end

keys.AssociationLimitExceeded = { nil }

function asserts.AssertAssociationLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociationLimitExceeded to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociationLimitExceeded[k], "AssociationLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociationLimitExceeded
-- <p>You can have at most 2,000 active associations.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociationLimitExceeded structure as a key-value pair table
function M.AssociationLimitExceeded(args)
	assert(args, "You must provdide an argument table when creating AssociationLimitExceeded")
	local t = { 
	}
	asserts.AssertAssociationLimitExceeded(t)
	return t
end

keys.CommandFilter = { ["value"] = true, ["key"] = true, nil }

function asserts.AssertCommandFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CommandFilter to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	assert(struct["value"], "Expected key value to exist in table")
	if struct["value"] then asserts.AssertCommandFilterValue(struct["value"]) end
	if struct["key"] then asserts.AssertCommandFilterKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(keys.CommandFilter[k], "CommandFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CommandFilter
-- <p>Describes a command filter.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * value [CommandFilterValue] <p>The filter value. </p>
-- * key [CommandFilterKey] <p>The name of the filter.</p>
-- Required key: key
-- Required key: value
-- @return CommandFilter structure as a key-value pair table
function M.CommandFilter(args)
	assert(args, "You must provdide an argument table when creating CommandFilter")
	local t = { 
		["value"] = args["value"],
		["key"] = args["key"],
	}
	asserts.AssertCommandFilter(t)
	return t
end

keys.StartAutomationExecutionRequest = { ["DocumentName"] = true, ["Parameters"] = true, ["DocumentVersion"] = true, nil }

function asserts.AssertStartAutomationExecutionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartAutomationExecutionRequest to be of type 'table'")
	assert(struct["DocumentName"], "Expected key DocumentName to exist in table")
	if struct["DocumentName"] then asserts.AssertDocumentARN(struct["DocumentName"]) end
	if struct["Parameters"] then asserts.AssertAutomationParameterMap(struct["Parameters"]) end
	if struct["DocumentVersion"] then asserts.AssertDocumentVersion(struct["DocumentVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartAutomationExecutionRequest[k], "StartAutomationExecutionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartAutomationExecutionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DocumentName [DocumentARN] <p>The name of the Automation document to use for this execution.</p>
-- * Parameters [AutomationParameterMap] <p>A key-value map of execution parameters, which match the declared parameters in the Automation document.</p>
-- * DocumentVersion [DocumentVersion] <p>The version of the Automation document to use for this execution.</p>
-- Required key: DocumentName
-- @return StartAutomationExecutionRequest structure as a key-value pair table
function M.StartAutomationExecutionRequest(args)
	assert(args, "You must provdide an argument table when creating StartAutomationExecutionRequest")
	local t = { 
		["DocumentName"] = args["DocumentName"],
		["Parameters"] = args["Parameters"],
		["DocumentVersion"] = args["DocumentVersion"],
	}
	asserts.AssertStartAutomationExecutionRequest(t)
	return t
end

keys.InvalidResultAttributeException = { ["Message"] = true, nil }

function asserts.AssertInvalidResultAttributeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidResultAttributeException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidResultAttributeException[k], "InvalidResultAttributeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidResultAttributeException
-- <p>The specified inventory item result attribute is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidResultAttributeException structure as a key-value pair table
function M.InvalidResultAttributeException(args)
	assert(args, "You must provdide an argument table when creating InvalidResultAttributeException")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidResultAttributeException(t)
	return t
end

keys.DescribeInstanceAssociationsStatusRequest = { ["InstanceId"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeInstanceAssociationsStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstanceAssociationsStatusRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInstanceAssociationsStatusRequest[k], "DescribeInstanceAssociationsStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstanceAssociationsStatusRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The instance IDs for which you want association status information.</p>
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * MaxResults [MaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- Required key: InstanceId
-- @return DescribeInstanceAssociationsStatusRequest structure as a key-value pair table
function M.DescribeInstanceAssociationsStatusRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeInstanceAssociationsStatusRequest")
	local t = { 
		["InstanceId"] = args["InstanceId"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeInstanceAssociationsStatusRequest(t)
	return t
end

keys.ParameterPatternMismatchException = { ["message"] = true, nil }

function asserts.AssertParameterPatternMismatchException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterPatternMismatchException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParameterPatternMismatchException[k], "ParameterPatternMismatchException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterPatternMismatchException
-- <p>The parameter name is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>The parameter name is not valid.</p>
-- @return ParameterPatternMismatchException structure as a key-value pair table
function M.ParameterPatternMismatchException(args)
	assert(args, "You must provdide an argument table when creating ParameterPatternMismatchException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertParameterPatternMismatchException(t)
	return t
end

keys.GetCommandInvocationResult = { ["Comment"] = true, ["ExecutionElapsedTime"] = true, ["ExecutionEndDateTime"] = true, ["StandardErrorContent"] = true, ["InstanceId"] = true, ["StandardErrorUrl"] = true, ["DocumentName"] = true, ["StandardOutputContent"] = true, ["Status"] = true, ["StatusDetails"] = true, ["PluginName"] = true, ["ResponseCode"] = true, ["ExecutionStartDateTime"] = true, ["CommandId"] = true, ["StandardOutputUrl"] = true, nil }

function asserts.AssertGetCommandInvocationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCommandInvocationResult to be of type 'table'")
	if struct["Comment"] then asserts.AssertComment(struct["Comment"]) end
	if struct["ExecutionElapsedTime"] then asserts.AssertStringDateTime(struct["ExecutionElapsedTime"]) end
	if struct["ExecutionEndDateTime"] then asserts.AssertStringDateTime(struct["ExecutionEndDateTime"]) end
	if struct["StandardErrorContent"] then asserts.AssertStandardErrorContent(struct["StandardErrorContent"]) end
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["StandardErrorUrl"] then asserts.AssertUrl(struct["StandardErrorUrl"]) end
	if struct["DocumentName"] then asserts.AssertDocumentName(struct["DocumentName"]) end
	if struct["StandardOutputContent"] then asserts.AssertStandardOutputContent(struct["StandardOutputContent"]) end
	if struct["Status"] then asserts.AssertCommandInvocationStatus(struct["Status"]) end
	if struct["StatusDetails"] then asserts.AssertStatusDetails(struct["StatusDetails"]) end
	if struct["PluginName"] then asserts.AssertCommandPluginName(struct["PluginName"]) end
	if struct["ResponseCode"] then asserts.AssertResponseCode(struct["ResponseCode"]) end
	if struct["ExecutionStartDateTime"] then asserts.AssertStringDateTime(struct["ExecutionStartDateTime"]) end
	if struct["CommandId"] then asserts.AssertCommandId(struct["CommandId"]) end
	if struct["StandardOutputUrl"] then asserts.AssertUrl(struct["StandardOutputUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCommandInvocationResult[k], "GetCommandInvocationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCommandInvocationResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Comment [Comment] <p>The comment text for the command.</p>
-- * ExecutionElapsedTime [StringDateTime] <p>Duration since ExecutionStartDateTime.</p>
-- * ExecutionEndDateTime [StringDateTime] <p>The date and time the plugin was finished executing. Date and time are written in ISO 8601 format. For example, June 7, 2017 is represented as 2017-06-7. The following sample AWS CLI command uses the <code>InvokedAfter</code> filter.</p> <p> <code>aws ssm list-commands --filters key=InvokedAfter,value=2017-06-07T00:00:00Z</code> </p> <p>If the plugin has not started to execute, the string is empty.</p>
-- * StandardErrorContent [StandardErrorContent] <p>The first 8,000 characters written by the plugin to stderr. If the command has not finished executing, then this string is empty.</p>
-- * InstanceId [InstanceId] <p>The ID of the managed instance targeted by the command. A managed instance can be an Amazon EC2 instance or an instance in your hybrid environment that is configured for Systems Manager.</p>
-- * StandardErrorUrl [Url] <p>The URL for the complete text written by the plugin to stderr. If the command has not finished executing, then this string is empty.</p>
-- * DocumentName [DocumentName] <p>The name of the document that was executed. For example, AWS-RunShellScript.</p>
-- * StandardOutputContent [StandardOutputContent] <p>The first 24,000 characters written by the plugin to stdout. If the command has not finished executing, if ExecutionStatus is neither Succeeded nor Failed, then this string is empty.</p>
-- * Status [CommandInvocationStatus] <p>The status of the parent command for this invocation. This status can be different than StatusDetails.</p>
-- * StatusDetails [StatusDetails] <p>A detailed status of the command execution for an invocation. StatusDetails includes more information than Status because it includes states resulting from error and concurrency control parameters. StatusDetails can show different results than Status. For more information about these statuses, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-about-status.html">Run Command Status</a>. StatusDetails can be one of the following values:</p> <ul> <li> <p>Pending: The command has not been sent to the instance.</p> </li> <li> <p>In Progress: The command has been sent to the instance but has not reached a terminal state.</p> </li> <li> <p>Delayed: The system attempted to send the command to the target, but the target was not available. The instance might not be available because of network issues, the instance was stopped, etc. The system will try to deliver the command again.</p> </li> <li> <p>Success: The command or plugin was executed successfully. This is a terminal state.</p> </li> <li> <p>Delivery Timed Out: The command was not delivered to the instance before the delivery timeout expired. Delivery timeouts do not count against the parent command's MaxErrors limit, but they do contribute to whether the parent command status is Success or Incomplete. This is a terminal state.</p> </li> <li> <p>Execution Timed Out: The command started to execute on the instance, but the execution was not complete before the timeout expired. Execution timeouts count against the MaxErrors limit of the parent command. This is a terminal state.</p> </li> <li> <p>Failed: The command wasn't executed successfully on the instance. For a plugin, this indicates that the result code was not zero. For a command invocation, this indicates that the result code for one or more plugins was not zero. Invocation failures count against the MaxErrors limit of the parent command. This is a terminal state.</p> </li> <li> <p>Canceled: The command was terminated before it was completed. This is a terminal state.</p> </li> <li> <p>Undeliverable: The command can't be delivered to the instance. The instance might not exist or might not be responding. Undeliverable invocations don't count against the parent command's MaxErrors limit and don't contribute to whether the parent command status is Success or Incomplete. This is a terminal state.</p> </li> <li> <p>Terminated: The parent command exceeded its MaxErrors limit and subsequent command invocations were canceled by the system. This is a terminal state.</p> </li> </ul>
-- * PluginName [CommandPluginName] <p>The name of the plugin for which you want detailed results. For example, aws:RunShellScript is a plugin.</p>
-- * ResponseCode [ResponseCode] <p>The error level response code for the plugin script. If the response code is -1, then the command has not started executing on the instance, or it was not received by the instance.</p>
-- * ExecutionStartDateTime [StringDateTime] <p>The date and time the plugin started executing. Date and time are written in ISO 8601 format. For example, June 7, 2017 is represented as 2017-06-7. The following sample AWS CLI command uses the <code>InvokedBefore</code> filter.</p> <p> <code>aws ssm list-commands --filters key=InvokedBefore,value=2017-06-07T00:00:00Z</code> </p> <p>If the plugin has not started to execute, the string is empty.</p>
-- * CommandId [CommandId] <p>The parent command ID of the invocation plugin.</p>
-- * StandardOutputUrl [Url] <p>The URL for the complete text written by the plugin to stdout in Amazon S3. If an Amazon S3 bucket was not specified, then this string is empty.</p>
-- @return GetCommandInvocationResult structure as a key-value pair table
function M.GetCommandInvocationResult(args)
	assert(args, "You must provdide an argument table when creating GetCommandInvocationResult")
	local t = { 
		["Comment"] = args["Comment"],
		["ExecutionElapsedTime"] = args["ExecutionElapsedTime"],
		["ExecutionEndDateTime"] = args["ExecutionEndDateTime"],
		["StandardErrorContent"] = args["StandardErrorContent"],
		["InstanceId"] = args["InstanceId"],
		["StandardErrorUrl"] = args["StandardErrorUrl"],
		["DocumentName"] = args["DocumentName"],
		["StandardOutputContent"] = args["StandardOutputContent"],
		["Status"] = args["Status"],
		["StatusDetails"] = args["StatusDetails"],
		["PluginName"] = args["PluginName"],
		["ResponseCode"] = args["ResponseCode"],
		["ExecutionStartDateTime"] = args["ExecutionStartDateTime"],
		["CommandId"] = args["CommandId"],
		["StandardOutputUrl"] = args["StandardOutputUrl"],
	}
	asserts.AssertGetCommandInvocationResult(t)
	return t
end

keys.FailedCreateAssociation = { ["Entry"] = true, ["Message"] = true, ["Fault"] = true, nil }

function asserts.AssertFailedCreateAssociation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailedCreateAssociation to be of type 'table'")
	if struct["Entry"] then asserts.AssertCreateAssociationBatchRequestEntry(struct["Entry"]) end
	if struct["Message"] then asserts.AssertBatchErrorMessage(struct["Message"]) end
	if struct["Fault"] then asserts.AssertFault(struct["Fault"]) end
	for k,_ in pairs(struct) do
		assert(keys.FailedCreateAssociation[k], "FailedCreateAssociation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailedCreateAssociation
-- <p>Describes a failed association.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Entry [CreateAssociationBatchRequestEntry] <p>The association.</p>
-- * Message [BatchErrorMessage] <p>A description of the failure.</p>
-- * Fault [Fault] <p>The source of the failure.</p>
-- @return FailedCreateAssociation structure as a key-value pair table
function M.FailedCreateAssociation(args)
	assert(args, "You must provdide an argument table when creating FailedCreateAssociation")
	local t = { 
		["Entry"] = args["Entry"],
		["Message"] = args["Message"],
		["Fault"] = args["Fault"],
	}
	asserts.AssertFailedCreateAssociation(t)
	return t
end

keys.DocumentDescription = { ["Status"] = true, ["Sha1"] = true, ["Hash"] = true, ["Name"] = true, ["Parameters"] = true, ["DocumentType"] = true, ["PlatformTypes"] = true, ["DocumentVersion"] = true, ["HashType"] = true, ["CreatedDate"] = true, ["Owner"] = true, ["SchemaVersion"] = true, ["DefaultVersion"] = true, ["LatestVersion"] = true, ["Description"] = true, nil }

function asserts.AssertDocumentDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentDescription to be of type 'table'")
	if struct["Status"] then asserts.AssertDocumentStatus(struct["Status"]) end
	if struct["Sha1"] then asserts.AssertDocumentSha1(struct["Sha1"]) end
	if struct["Hash"] then asserts.AssertDocumentHash(struct["Hash"]) end
	if struct["Name"] then asserts.AssertDocumentARN(struct["Name"]) end
	if struct["Parameters"] then asserts.AssertDocumentParameterList(struct["Parameters"]) end
	if struct["DocumentType"] then asserts.AssertDocumentType(struct["DocumentType"]) end
	if struct["PlatformTypes"] then asserts.AssertPlatformTypeList(struct["PlatformTypes"]) end
	if struct["DocumentVersion"] then asserts.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["HashType"] then asserts.AssertDocumentHashType(struct["HashType"]) end
	if struct["CreatedDate"] then asserts.AssertDateTime(struct["CreatedDate"]) end
	if struct["Owner"] then asserts.AssertDocumentOwner(struct["Owner"]) end
	if struct["SchemaVersion"] then asserts.AssertDocumentSchemaVersion(struct["SchemaVersion"]) end
	if struct["DefaultVersion"] then asserts.AssertDocumentVersion(struct["DefaultVersion"]) end
	if struct["LatestVersion"] then asserts.AssertDocumentVersion(struct["LatestVersion"]) end
	if struct["Description"] then asserts.AssertDescriptionInDocument(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentDescription[k], "DocumentDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentDescription
-- <p>Describes an SSM document. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [DocumentStatus] <p>The status of the SSM document.</p>
-- * Sha1 [DocumentSha1] <p>The SHA1 hash of the document, which you can use for verification purposes.</p>
-- * Hash [DocumentHash] <p>The Sha256 or Sha1 hash created by the system when the document was created. </p> <note> <p>Sha1 hashes have been deprecated.</p> </note>
-- * Name [DocumentARN] <p>The name of the SSM document.</p>
-- * Parameters [DocumentParameterList] <p>A description of the parameters for a document.</p>
-- * DocumentType [DocumentType] <p>The type of document. </p>
-- * PlatformTypes [PlatformTypeList] <p>The list of OS platforms compatible with this SSM document. </p>
-- * DocumentVersion [DocumentVersion] <p>The document version.</p>
-- * HashType [DocumentHashType] <p>Sha256 or Sha1.</p> <note> <p>Sha1 hashes have been deprecated.</p> </note>
-- * CreatedDate [DateTime] <p>The date when the document was created.</p>
-- * Owner [DocumentOwner] <p>The AWS user account of the person who created the document.</p>
-- * SchemaVersion [DocumentSchemaVersion] <p>The schema version.</p>
-- * DefaultVersion [DocumentVersion] <p>The default version.</p>
-- * LatestVersion [DocumentVersion] <p>The latest version of the document.</p>
-- * Description [DescriptionInDocument] <p>A description of the document. </p>
-- @return DocumentDescription structure as a key-value pair table
function M.DocumentDescription(args)
	assert(args, "You must provdide an argument table when creating DocumentDescription")
	local t = { 
		["Status"] = args["Status"],
		["Sha1"] = args["Sha1"],
		["Hash"] = args["Hash"],
		["Name"] = args["Name"],
		["Parameters"] = args["Parameters"],
		["DocumentType"] = args["DocumentType"],
		["PlatformTypes"] = args["PlatformTypes"],
		["DocumentVersion"] = args["DocumentVersion"],
		["HashType"] = args["HashType"],
		["CreatedDate"] = args["CreatedDate"],
		["Owner"] = args["Owner"],
		["SchemaVersion"] = args["SchemaVersion"],
		["DefaultVersion"] = args["DefaultVersion"],
		["LatestVersion"] = args["LatestVersion"],
		["Description"] = args["Description"],
	}
	asserts.AssertDocumentDescription(t)
	return t
end

keys.UpdateAssociationResult = { ["AssociationDescription"] = true, nil }

function asserts.AssertUpdateAssociationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAssociationResult to be of type 'table'")
	if struct["AssociationDescription"] then asserts.AssertAssociationDescription(struct["AssociationDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAssociationResult[k], "UpdateAssociationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAssociationResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AssociationDescription [AssociationDescription] <p>The description of the association that was updated.</p>
-- @return UpdateAssociationResult structure as a key-value pair table
function M.UpdateAssociationResult(args)
	assert(args, "You must provdide an argument table when creating UpdateAssociationResult")
	local t = { 
		["AssociationDescription"] = args["AssociationDescription"],
	}
	asserts.AssertUpdateAssociationResult(t)
	return t
end

keys.MaintenanceWindowTarget = { ["ResourceType"] = true, ["OwnerInformation"] = true, ["WindowId"] = true, ["Targets"] = true, ["WindowTargetId"] = true, nil }

function asserts.AssertMaintenanceWindowTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaintenanceWindowTarget to be of type 'table'")
	if struct["ResourceType"] then asserts.AssertMaintenanceWindowResourceType(struct["ResourceType"]) end
	if struct["OwnerInformation"] then asserts.AssertOwnerInformation(struct["OwnerInformation"]) end
	if struct["WindowId"] then asserts.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["Targets"] then asserts.AssertTargets(struct["Targets"]) end
	if struct["WindowTargetId"] then asserts.AssertMaintenanceWindowTargetId(struct["WindowTargetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.MaintenanceWindowTarget[k], "MaintenanceWindowTarget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaintenanceWindowTarget
-- <p>The target registered with the Maintenance Window.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [MaintenanceWindowResourceType] <p>The type of target.</p>
-- * OwnerInformation [OwnerInformation] <p>User-provided value that will be included in any CloudWatch events raised while running tasks for these targets in this Maintenance Window.</p>
-- * WindowId [MaintenanceWindowId] <p>The Maintenance Window ID where the target is registered.</p>
-- * Targets [Targets] <p>The targets (either instances or tags). Instances are specified using Key=instanceids,Values=&lt;instanceid1&gt;,&lt;instanceid2&gt;. Tags are specified using Key=&lt;tag name&gt;,Values=&lt;tag value&gt;.</p>
-- * WindowTargetId [MaintenanceWindowTargetId] <p>The ID of the target.</p>
-- @return MaintenanceWindowTarget structure as a key-value pair table
function M.MaintenanceWindowTarget(args)
	assert(args, "You must provdide an argument table when creating MaintenanceWindowTarget")
	local t = { 
		["ResourceType"] = args["ResourceType"],
		["OwnerInformation"] = args["OwnerInformation"],
		["WindowId"] = args["WindowId"],
		["Targets"] = args["Targets"],
		["WindowTargetId"] = args["WindowTargetId"],
	}
	asserts.AssertMaintenanceWindowTarget(t)
	return t
end

keys.GetMaintenanceWindowExecutionTaskResult = { ["Status"] = true, ["MaxErrors"] = true, ["TaskArn"] = true, ["MaxConcurrency"] = true, ["ServiceRole"] = true, ["WindowExecutionId"] = true, ["StatusDetails"] = true, ["Priority"] = true, ["StartTime"] = true, ["EndTime"] = true, ["Type"] = true, ["TaskParameters"] = true, ["TaskExecutionId"] = true, nil }

function asserts.AssertGetMaintenanceWindowExecutionTaskResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMaintenanceWindowExecutionTaskResult to be of type 'table'")
	if struct["Status"] then asserts.AssertMaintenanceWindowExecutionStatus(struct["Status"]) end
	if struct["MaxErrors"] then asserts.AssertMaxErrors(struct["MaxErrors"]) end
	if struct["TaskArn"] then asserts.AssertMaintenanceWindowTaskArn(struct["TaskArn"]) end
	if struct["MaxConcurrency"] then asserts.AssertMaxConcurrency(struct["MaxConcurrency"]) end
	if struct["ServiceRole"] then asserts.AssertServiceRole(struct["ServiceRole"]) end
	if struct["WindowExecutionId"] then asserts.AssertMaintenanceWindowExecutionId(struct["WindowExecutionId"]) end
	if struct["StatusDetails"] then asserts.AssertMaintenanceWindowExecutionStatusDetails(struct["StatusDetails"]) end
	if struct["Priority"] then asserts.AssertMaintenanceWindowTaskPriority(struct["Priority"]) end
	if struct["StartTime"] then asserts.AssertDateTime(struct["StartTime"]) end
	if struct["EndTime"] then asserts.AssertDateTime(struct["EndTime"]) end
	if struct["Type"] then asserts.AssertMaintenanceWindowTaskType(struct["Type"]) end
	if struct["TaskParameters"] then asserts.AssertMaintenanceWindowTaskParametersList(struct["TaskParameters"]) end
	if struct["TaskExecutionId"] then asserts.AssertMaintenanceWindowExecutionTaskId(struct["TaskExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMaintenanceWindowExecutionTaskResult[k], "GetMaintenanceWindowExecutionTaskResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMaintenanceWindowExecutionTaskResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [MaintenanceWindowExecutionStatus] <p>The status of the task.</p>
-- * MaxErrors [MaxErrors] <p>The defined maximum number of task execution errors allowed before scheduling of the task execution would have been stopped.</p>
-- * TaskArn [MaintenanceWindowTaskArn] <p>The ARN of the executed task.</p>
-- * MaxConcurrency [MaxConcurrency] <p>The defined maximum number of task executions that could be run in parallel.</p>
-- * ServiceRole [ServiceRole] <p>The role that was assumed when executing the task.</p>
-- * WindowExecutionId [MaintenanceWindowExecutionId] <p>The ID of the Maintenance Window execution that includes the task.</p>
-- * StatusDetails [MaintenanceWindowExecutionStatusDetails] <p>The details explaining the Status. Only available for certain status values.</p>
-- * Priority [MaintenanceWindowTaskPriority] <p>The priority of the task.</p>
-- * StartTime [DateTime] <p>The time the task execution started.</p>
-- * EndTime [DateTime] <p>The time the task execution completed.</p>
-- * Type [MaintenanceWindowTaskType] <p>The type of task executed.</p>
-- * TaskParameters [MaintenanceWindowTaskParametersList] <p>The parameters passed to the task when it was executed. The map has the following format:</p> <p>Key: string, between 1 and 255 characters</p> <p>Value: an array of strings, each string is between 1 and 255 characters</p>
-- * TaskExecutionId [MaintenanceWindowExecutionTaskId] <p>The ID of the specific task execution in the Maintenance Window task that was retrieved.</p>
-- @return GetMaintenanceWindowExecutionTaskResult structure as a key-value pair table
function M.GetMaintenanceWindowExecutionTaskResult(args)
	assert(args, "You must provdide an argument table when creating GetMaintenanceWindowExecutionTaskResult")
	local t = { 
		["Status"] = args["Status"],
		["MaxErrors"] = args["MaxErrors"],
		["TaskArn"] = args["TaskArn"],
		["MaxConcurrency"] = args["MaxConcurrency"],
		["ServiceRole"] = args["ServiceRole"],
		["WindowExecutionId"] = args["WindowExecutionId"],
		["StatusDetails"] = args["StatusDetails"],
		["Priority"] = args["Priority"],
		["StartTime"] = args["StartTime"],
		["EndTime"] = args["EndTime"],
		["Type"] = args["Type"],
		["TaskParameters"] = args["TaskParameters"],
		["TaskExecutionId"] = args["TaskExecutionId"],
	}
	asserts.AssertGetMaintenanceWindowExecutionTaskResult(t)
	return t
end

keys.GetInventoryResult = { ["Entities"] = true, ["NextToken"] = true, nil }

function asserts.AssertGetInventoryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInventoryResult to be of type 'table'")
	if struct["Entities"] then asserts.AssertInventoryResultEntityList(struct["Entities"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetInventoryResult[k], "GetInventoryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInventoryResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Entities [InventoryResultEntityList] <p>Collection of inventory entities such as a collection of instance inventory. </p>
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @return GetInventoryResult structure as a key-value pair table
function M.GetInventoryResult(args)
	assert(args, "You must provdide an argument table when creating GetInventoryResult")
	local t = { 
		["Entities"] = args["Entities"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertGetInventoryResult(t)
	return t
end

keys.GetPatchBaselineRequest = { ["BaselineId"] = true, nil }

function asserts.AssertGetPatchBaselineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPatchBaselineRequest to be of type 'table'")
	assert(struct["BaselineId"], "Expected key BaselineId to exist in table")
	if struct["BaselineId"] then asserts.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPatchBaselineRequest[k], "GetPatchBaselineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPatchBaselineRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BaselineId [BaselineId] <p>The ID of the patch baseline to retrieve.</p>
-- Required key: BaselineId
-- @return GetPatchBaselineRequest structure as a key-value pair table
function M.GetPatchBaselineRequest(args)
	assert(args, "You must provdide an argument table when creating GetPatchBaselineRequest")
	local t = { 
		["BaselineId"] = args["BaselineId"],
	}
	asserts.AssertGetPatchBaselineRequest(t)
	return t
end

keys.RegisterPatchBaselineForPatchGroupResult = { ["PatchGroup"] = true, ["BaselineId"] = true, nil }

function asserts.AssertRegisterPatchBaselineForPatchGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterPatchBaselineForPatchGroupResult to be of type 'table'")
	if struct["PatchGroup"] then asserts.AssertPatchGroup(struct["PatchGroup"]) end
	if struct["BaselineId"] then asserts.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterPatchBaselineForPatchGroupResult[k], "RegisterPatchBaselineForPatchGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterPatchBaselineForPatchGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PatchGroup [PatchGroup] <p>The name of the patch group registered with the patch baseline.</p>
-- * BaselineId [BaselineId] <p>The ID of the patch baseline the patch group was registered with.</p>
-- @return RegisterPatchBaselineForPatchGroupResult structure as a key-value pair table
function M.RegisterPatchBaselineForPatchGroupResult(args)
	assert(args, "You must provdide an argument table when creating RegisterPatchBaselineForPatchGroupResult")
	local t = { 
		["PatchGroup"] = args["PatchGroup"],
		["BaselineId"] = args["BaselineId"],
	}
	asserts.AssertRegisterPatchBaselineForPatchGroupResult(t)
	return t
end

keys.TooManyUpdates = { ["Message"] = true, nil }

function asserts.AssertTooManyUpdates(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyUpdates to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyUpdates[k], "TooManyUpdates contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyUpdates
-- <p>There are concurrent updates for a resource that supports one update at a time.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return TooManyUpdates structure as a key-value pair table
function M.TooManyUpdates(args)
	assert(args, "You must provdide an argument table when creating TooManyUpdates")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertTooManyUpdates(t)
	return t
end

keys.PatchOrchestratorFilter = { ["Values"] = true, ["Key"] = true, nil }

function asserts.AssertPatchOrchestratorFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PatchOrchestratorFilter to be of type 'table'")
	if struct["Values"] then asserts.AssertPatchOrchestratorFilterValues(struct["Values"]) end
	if struct["Key"] then asserts.AssertPatchOrchestratorFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.PatchOrchestratorFilter[k], "PatchOrchestratorFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PatchOrchestratorFilter
-- <p>Defines a filter used in Patch Manager APIs.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [PatchOrchestratorFilterValues] <p>The value for the filter.</p>
-- * Key [PatchOrchestratorFilterKey] <p>The key for the filter.</p>
-- @return PatchOrchestratorFilter structure as a key-value pair table
function M.PatchOrchestratorFilter(args)
	assert(args, "You must provdide an argument table when creating PatchOrchestratorFilter")
	local t = { 
		["Values"] = args["Values"],
		["Key"] = args["Key"],
	}
	asserts.AssertPatchOrchestratorFilter(t)
	return t
end

keys.DeregisterTargetFromMaintenanceWindowRequest = { ["WindowId"] = true, ["WindowTargetId"] = true, nil }

function asserts.AssertDeregisterTargetFromMaintenanceWindowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterTargetFromMaintenanceWindowRequest to be of type 'table'")
	assert(struct["WindowId"], "Expected key WindowId to exist in table")
	assert(struct["WindowTargetId"], "Expected key WindowTargetId to exist in table")
	if struct["WindowId"] then asserts.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["WindowTargetId"] then asserts.AssertMaintenanceWindowTargetId(struct["WindowTargetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeregisterTargetFromMaintenanceWindowRequest[k], "DeregisterTargetFromMaintenanceWindowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterTargetFromMaintenanceWindowRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window the target should be removed from.</p>
-- * WindowTargetId [MaintenanceWindowTargetId] <p>The ID of the target definition to remove.</p>
-- Required key: WindowId
-- Required key: WindowTargetId
-- @return DeregisterTargetFromMaintenanceWindowRequest structure as a key-value pair table
function M.DeregisterTargetFromMaintenanceWindowRequest(args)
	assert(args, "You must provdide an argument table when creating DeregisterTargetFromMaintenanceWindowRequest")
	local t = { 
		["WindowId"] = args["WindowId"],
		["WindowTargetId"] = args["WindowTargetId"],
	}
	asserts.AssertDeregisterTargetFromMaintenanceWindowRequest(t)
	return t
end

keys.PatchRule = { ["PatchFilterGroup"] = true, ["ApproveAfterDays"] = true, nil }

function asserts.AssertPatchRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PatchRule to be of type 'table'")
	assert(struct["PatchFilterGroup"], "Expected key PatchFilterGroup to exist in table")
	assert(struct["ApproveAfterDays"], "Expected key ApproveAfterDays to exist in table")
	if struct["PatchFilterGroup"] then asserts.AssertPatchFilterGroup(struct["PatchFilterGroup"]) end
	if struct["ApproveAfterDays"] then asserts.AssertApproveAfterDays(struct["ApproveAfterDays"]) end
	for k,_ in pairs(struct) do
		assert(keys.PatchRule[k], "PatchRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PatchRule
-- <p>Defines an approval rule for a patch baseline.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PatchFilterGroup [PatchFilterGroup] <p>The patch filter group that defines the criteria for the rule.</p>
-- * ApproveAfterDays [ApproveAfterDays] <p>The number of days after the release date of each patch matched by the rule the patch is marked as approved in the patch baseline.</p>
-- Required key: PatchFilterGroup
-- Required key: ApproveAfterDays
-- @return PatchRule structure as a key-value pair table
function M.PatchRule(args)
	assert(args, "You must provdide an argument table when creating PatchRule")
	local t = { 
		["PatchFilterGroup"] = args["PatchFilterGroup"],
		["ApproveAfterDays"] = args["ApproveAfterDays"],
	}
	asserts.AssertPatchRule(t)
	return t
end

keys.DeleteActivationResult = { nil }

function asserts.AssertDeleteActivationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteActivationResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteActivationResult[k], "DeleteActivationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteActivationResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteActivationResult structure as a key-value pair table
function M.DeleteActivationResult(args)
	assert(args, "You must provdide an argument table when creating DeleteActivationResult")
	local t = { 
	}
	asserts.AssertDeleteActivationResult(t)
	return t
end

keys.CustomSchemaCountLimitExceededException = { ["Message"] = true, nil }

function asserts.AssertCustomSchemaCountLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomSchemaCountLimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.CustomSchemaCountLimitExceededException[k], "CustomSchemaCountLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomSchemaCountLimitExceededException
-- <p>You have exceeded the limit for custom schemas. Delete one or more custom schemas and try again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return CustomSchemaCountLimitExceededException structure as a key-value pair table
function M.CustomSchemaCountLimitExceededException(args)
	assert(args, "You must provdide an argument table when creating CustomSchemaCountLimitExceededException")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertCustomSchemaCountLimitExceededException(t)
	return t
end

keys.DeleteParameterResult = { nil }

function asserts.AssertDeleteParameterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteParameterResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteParameterResult[k], "DeleteParameterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteParameterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteParameterResult structure as a key-value pair table
function M.DeleteParameterResult(args)
	assert(args, "You must provdide an argument table when creating DeleteParameterResult")
	local t = { 
	}
	asserts.AssertDeleteParameterResult(t)
	return t
end

keys.InvalidFilterOption = { ["message"] = true, nil }

function asserts.AssertInvalidFilterOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidFilterOption to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidFilterOption[k], "InvalidFilterOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidFilterOption
-- <p>The specified filter option is not valid. Valid options are Equals and BeginsWith. For Path filter, valid options are Recursive and OneLevel.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>The specified filter option is not valid. Valid options are Equals and BeginsWith. For Path filter, valid options are Recursive and OneLevel.</p>
-- @return InvalidFilterOption structure as a key-value pair table
function M.InvalidFilterOption(args)
	assert(args, "You must provdide an argument table when creating InvalidFilterOption")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidFilterOption(t)
	return t
end

keys.S3OutputLocation = { ["OutputS3KeyPrefix"] = true, ["OutputS3BucketName"] = true, ["OutputS3Region"] = true, nil }

function asserts.AssertS3OutputLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3OutputLocation to be of type 'table'")
	if struct["OutputS3KeyPrefix"] then asserts.AssertS3KeyPrefix(struct["OutputS3KeyPrefix"]) end
	if struct["OutputS3BucketName"] then asserts.AssertS3BucketName(struct["OutputS3BucketName"]) end
	if struct["OutputS3Region"] then asserts.AssertS3Region(struct["OutputS3Region"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3OutputLocation[k], "S3OutputLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3OutputLocation
-- <p>An Amazon S3 bucket where you want to store the results of this request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OutputS3KeyPrefix [S3KeyPrefix] <p>The Amazon S3 bucket subfolder.</p>
-- * OutputS3BucketName [S3BucketName] <p>The name of the Amazon S3 bucket.</p>
-- * OutputS3Region [S3Region] <p>(Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager automatically determines the Amazon S3 bucket region.</p>
-- @return S3OutputLocation structure as a key-value pair table
function M.S3OutputLocation(args)
	assert(args, "You must provdide an argument table when creating S3OutputLocation")
	local t = { 
		["OutputS3KeyPrefix"] = args["OutputS3KeyPrefix"],
		["OutputS3BucketName"] = args["OutputS3BucketName"],
		["OutputS3Region"] = args["OutputS3Region"],
	}
	asserts.AssertS3OutputLocation(t)
	return t
end

keys.AssociationOverview = { ["Status"] = true, ["DetailedStatus"] = true, ["AssociationStatusAggregatedCount"] = true, nil }

function asserts.AssertAssociationOverview(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociationOverview to be of type 'table'")
	if struct["Status"] then asserts.AssertStatusName(struct["Status"]) end
	if struct["DetailedStatus"] then asserts.AssertStatusName(struct["DetailedStatus"]) end
	if struct["AssociationStatusAggregatedCount"] then asserts.AssertAssociationStatusAggregatedCount(struct["AssociationStatusAggregatedCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociationOverview[k], "AssociationOverview contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociationOverview
-- <p>Information about the association.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [StatusName] <p>The status of the association. Status can be: Pending, Success, or Failed.</p>
-- * DetailedStatus [StatusName] <p>A detailed status of the association.</p>
-- * AssociationStatusAggregatedCount [AssociationStatusAggregatedCount] <p>Returns the number of targets for the association status. For example, if you created an association with two instances, and one of them was successful, this would return the count of instances by status.</p>
-- @return AssociationOverview structure as a key-value pair table
function M.AssociationOverview(args)
	assert(args, "You must provdide an argument table when creating AssociationOverview")
	local t = { 
		["Status"] = args["Status"],
		["DetailedStatus"] = args["DetailedStatus"],
		["AssociationStatusAggregatedCount"] = args["AssociationStatusAggregatedCount"],
	}
	asserts.AssertAssociationOverview(t)
	return t
end

keys.DocumentDefaultVersionDescription = { ["DefaultVersion"] = true, ["Name"] = true, nil }

function asserts.AssertDocumentDefaultVersionDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentDefaultVersionDescription to be of type 'table'")
	if struct["DefaultVersion"] then asserts.AssertDocumentVersion(struct["DefaultVersion"]) end
	if struct["Name"] then asserts.AssertDocumentName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentDefaultVersionDescription[k], "DocumentDefaultVersionDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentDefaultVersionDescription
-- <p>A default version of a document.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DefaultVersion [DocumentVersion] <p>The default version of the document.</p>
-- * Name [DocumentName] <p>The name of the document.</p>
-- @return DocumentDefaultVersionDescription structure as a key-value pair table
function M.DocumentDefaultVersionDescription(args)
	assert(args, "You must provdide an argument table when creating DocumentDefaultVersionDescription")
	local t = { 
		["DefaultVersion"] = args["DefaultVersion"],
		["Name"] = args["Name"],
	}
	asserts.AssertDocumentDefaultVersionDescription(t)
	return t
end

keys.InvalidTypeNameException = { ["Message"] = true, nil }

function asserts.AssertInvalidTypeNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTypeNameException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidTypeNameException[k], "InvalidTypeNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTypeNameException
-- <p>The parameter type name is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidTypeNameException structure as a key-value pair table
function M.InvalidTypeNameException(args)
	assert(args, "You must provdide an argument table when creating InvalidTypeNameException")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidTypeNameException(t)
	return t
end

keys.ParameterNotFound = { ["message"] = true, nil }

function asserts.AssertParameterNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterNotFound to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParameterNotFound[k], "ParameterNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterNotFound
-- <p>The parameter could not be found. Verify the name and try again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return ParameterNotFound structure as a key-value pair table
function M.ParameterNotFound(args)
	assert(args, "You must provdide an argument table when creating ParameterNotFound")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertParameterNotFound(t)
	return t
end

keys.InstancePatchState = { ["OperationStartTime"] = true, ["BaselineId"] = true, ["FailedCount"] = true, ["InstanceId"] = true, ["OwnerInformation"] = true, ["NotApplicableCount"] = true, ["OperationEndTime"] = true, ["PatchGroup"] = true, ["InstalledOtherCount"] = true, ["MissingCount"] = true, ["SnapshotId"] = true, ["Operation"] = true, ["InstalledCount"] = true, nil }

function asserts.AssertInstancePatchState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstancePatchState to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["PatchGroup"], "Expected key PatchGroup to exist in table")
	assert(struct["BaselineId"], "Expected key BaselineId to exist in table")
	assert(struct["OperationStartTime"], "Expected key OperationStartTime to exist in table")
	assert(struct["OperationEndTime"], "Expected key OperationEndTime to exist in table")
	assert(struct["Operation"], "Expected key Operation to exist in table")
	if struct["OperationStartTime"] then asserts.AssertPatchOperationStartTime(struct["OperationStartTime"]) end
	if struct["BaselineId"] then asserts.AssertBaselineId(struct["BaselineId"]) end
	if struct["FailedCount"] then asserts.AssertPatchFailedCount(struct["FailedCount"]) end
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["OwnerInformation"] then asserts.AssertOwnerInformation(struct["OwnerInformation"]) end
	if struct["NotApplicableCount"] then asserts.AssertPatchNotApplicableCount(struct["NotApplicableCount"]) end
	if struct["OperationEndTime"] then asserts.AssertPatchOperationEndTime(struct["OperationEndTime"]) end
	if struct["PatchGroup"] then asserts.AssertPatchGroup(struct["PatchGroup"]) end
	if struct["InstalledOtherCount"] then asserts.AssertPatchInstalledOtherCount(struct["InstalledOtherCount"]) end
	if struct["MissingCount"] then asserts.AssertPatchMissingCount(struct["MissingCount"]) end
	if struct["SnapshotId"] then asserts.AssertSnapshotId(struct["SnapshotId"]) end
	if struct["Operation"] then asserts.AssertPatchOperationType(struct["Operation"]) end
	if struct["InstalledCount"] then asserts.AssertPatchInstalledCount(struct["InstalledCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstancePatchState[k], "InstancePatchState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstancePatchState
-- <p>Defines the high-level patch compliance state for a managed instance, providing information about the number of installed, missing, not applicable, and failed patches along with metadata about the operation when this information was gathered for the instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperationStartTime [PatchOperationStartTime] <p>The time the most recent patching operation was started on the instance.</p>
-- * BaselineId [BaselineId] <p>The ID of the patch baseline used to patch the instance.</p>
-- * FailedCount [PatchFailedCount] <p>The number of patches from the patch baseline that were attempted to be installed during the last patching operation, but failed to install.</p>
-- * InstanceId [InstanceId] <p>The ID of the managed instance the high-level patch compliance information was collected for.</p>
-- * OwnerInformation [OwnerInformation] <p>Placeholder information, this field will always be empty in the current release of the service.</p>
-- * NotApplicableCount [PatchNotApplicableCount] <p>The number of patches from the patch baseline that aren't applicable for the instance and hence aren't installed on the instance.</p>
-- * OperationEndTime [PatchOperationEndTime] <p>The time the most recent patching operation completed on the instance.</p>
-- * PatchGroup [PatchGroup] <p>The name of the patch group the managed instance belongs to.</p>
-- * InstalledOtherCount [PatchInstalledOtherCount] <p>The number of patches not specified in the patch baseline that are installed on the instance.</p>
-- * MissingCount [PatchMissingCount] <p>The number of patches from the patch baseline that are applicable for the instance but aren't currently installed.</p>
-- * SnapshotId [SnapshotId] <p>The ID of the patch baseline snapshot used during the patching operation when this compliance data was collected.</p>
-- * Operation [PatchOperationType] <p>The type of patching operation that was performed: SCAN (assess patch compliance state) or INSTALL (install missing patches).</p>
-- * InstalledCount [PatchInstalledCount] <p>The number of patches from the patch baseline that are installed on the instance.</p>
-- Required key: InstanceId
-- Required key: PatchGroup
-- Required key: BaselineId
-- Required key: OperationStartTime
-- Required key: OperationEndTime
-- Required key: Operation
-- @return InstancePatchState structure as a key-value pair table
function M.InstancePatchState(args)
	assert(args, "You must provdide an argument table when creating InstancePatchState")
	local t = { 
		["OperationStartTime"] = args["OperationStartTime"],
		["BaselineId"] = args["BaselineId"],
		["FailedCount"] = args["FailedCount"],
		["InstanceId"] = args["InstanceId"],
		["OwnerInformation"] = args["OwnerInformation"],
		["NotApplicableCount"] = args["NotApplicableCount"],
		["OperationEndTime"] = args["OperationEndTime"],
		["PatchGroup"] = args["PatchGroup"],
		["InstalledOtherCount"] = args["InstalledOtherCount"],
		["MissingCount"] = args["MissingCount"],
		["SnapshotId"] = args["SnapshotId"],
		["Operation"] = args["Operation"],
		["InstalledCount"] = args["InstalledCount"],
	}
	asserts.AssertInstancePatchState(t)
	return t
end

keys.InvalidDocumentOperation = { ["Message"] = true, nil }

function asserts.AssertInvalidDocumentOperation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDocumentOperation to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidDocumentOperation[k], "InvalidDocumentOperation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDocumentOperation
-- <p>You attempted to delete a document while it is still shared. You must stop sharing the document before you can delete it.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidDocumentOperation structure as a key-value pair table
function M.InvalidDocumentOperation(args)
	assert(args, "You must provdide an argument table when creating InvalidDocumentOperation")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidDocumentOperation(t)
	return t
end

keys.ListCommandInvocationsRequest = { ["InstanceId"] = true, ["MaxResults"] = true, ["Details"] = true, ["Filters"] = true, ["NextToken"] = true, ["CommandId"] = true, nil }

function asserts.AssertListCommandInvocationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCommandInvocationsRequest to be of type 'table'")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["MaxResults"] then asserts.AssertCommandMaxResults(struct["MaxResults"]) end
	if struct["Details"] then asserts.AssertBoolean(struct["Details"]) end
	if struct["Filters"] then asserts.AssertCommandFilterList(struct["Filters"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["CommandId"] then asserts.AssertCommandId(struct["CommandId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCommandInvocationsRequest[k], "ListCommandInvocationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCommandInvocationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>(Optional) The command execution details for a specific instance ID.</p>
-- * MaxResults [CommandMaxResults] <p>(Optional) The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- * Details [Boolean] <p>(Optional) If set this returns the response of the command executions and any command output. By default this is set to False. </p>
-- * Filters [CommandFilterList] <p>(Optional) One or more filters. Use a filter to return a more specific list of results.</p>
-- * NextToken [NextToken] <p>(Optional) The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * CommandId [CommandId] <p>(Optional) The invocations for a specific command ID.</p>
-- @return ListCommandInvocationsRequest structure as a key-value pair table
function M.ListCommandInvocationsRequest(args)
	assert(args, "You must provdide an argument table when creating ListCommandInvocationsRequest")
	local t = { 
		["InstanceId"] = args["InstanceId"],
		["MaxResults"] = args["MaxResults"],
		["Details"] = args["Details"],
		["Filters"] = args["Filters"],
		["NextToken"] = args["NextToken"],
		["CommandId"] = args["CommandId"],
	}
	asserts.AssertListCommandInvocationsRequest(t)
	return t
end

keys.UnsupportedInventorySchemaVersionException = { ["Message"] = true, nil }

function asserts.AssertUnsupportedInventorySchemaVersionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedInventorySchemaVersionException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedInventorySchemaVersionException[k], "UnsupportedInventorySchemaVersionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedInventorySchemaVersionException
-- <p>Inventory item type schema version has to match supported versions in the service. Check output of GetInventorySchema to see the available schema version for each type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return UnsupportedInventorySchemaVersionException structure as a key-value pair table
function M.UnsupportedInventorySchemaVersionException(args)
	assert(args, "You must provdide an argument table when creating UnsupportedInventorySchemaVersionException")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertUnsupportedInventorySchemaVersionException(t)
	return t
end

keys.AssociationFilter = { ["value"] = true, ["key"] = true, nil }

function asserts.AssertAssociationFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociationFilter to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	assert(struct["value"], "Expected key value to exist in table")
	if struct["value"] then asserts.AssertAssociationFilterValue(struct["value"]) end
	if struct["key"] then asserts.AssertAssociationFilterKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociationFilter[k], "AssociationFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociationFilter
-- <p>Describes a filter.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * value [AssociationFilterValue] <p>The filter value.</p>
-- * key [AssociationFilterKey] <p>The name of the filter.</p>
-- Required key: key
-- Required key: value
-- @return AssociationFilter structure as a key-value pair table
function M.AssociationFilter(args)
	assert(args, "You must provdide an argument table when creating AssociationFilter")
	local t = { 
		["value"] = args["value"],
		["key"] = args["key"],
	}
	asserts.AssertAssociationFilter(t)
	return t
end

keys.GetParameterHistoryRequest = { ["NextToken"] = true, ["Name"] = true, ["MaxResults"] = true, ["WithDecryption"] = true, nil }

function asserts.AssertGetParameterHistoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParameterHistoryRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Name"] then asserts.AssertPSParameterName(struct["Name"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["WithDecryption"] then asserts.AssertBoolean(struct["WithDecryption"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetParameterHistoryRequest[k], "GetParameterHistoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParameterHistoryRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * Name [PSParameterName] <p>The name of a parameter you want to query.</p>
-- * MaxResults [MaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- * WithDecryption [Boolean] <p>Return decrypted values for secure string parameters. This flag is ignored for String and StringList parameter types.</p>
-- Required key: Name
-- @return GetParameterHistoryRequest structure as a key-value pair table
function M.GetParameterHistoryRequest(args)
	assert(args, "You must provdide an argument table when creating GetParameterHistoryRequest")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Name"] = args["Name"],
		["MaxResults"] = args["MaxResults"],
		["WithDecryption"] = args["WithDecryption"],
	}
	asserts.AssertGetParameterHistoryRequest(t)
	return t
end

keys.RegisterDefaultPatchBaselineRequest = { ["BaselineId"] = true, nil }

function asserts.AssertRegisterDefaultPatchBaselineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterDefaultPatchBaselineRequest to be of type 'table'")
	assert(struct["BaselineId"], "Expected key BaselineId to exist in table")
	if struct["BaselineId"] then asserts.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterDefaultPatchBaselineRequest[k], "RegisterDefaultPatchBaselineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterDefaultPatchBaselineRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BaselineId [BaselineId] <p>The ID of the patch baseline that should be the default patch baseline.</p>
-- Required key: BaselineId
-- @return RegisterDefaultPatchBaselineRequest structure as a key-value pair table
function M.RegisterDefaultPatchBaselineRequest(args)
	assert(args, "You must provdide an argument table when creating RegisterDefaultPatchBaselineRequest")
	local t = { 
		["BaselineId"] = args["BaselineId"],
	}
	asserts.AssertRegisterDefaultPatchBaselineRequest(t)
	return t
end

keys.InvalidResourceId = { nil }

function asserts.AssertInvalidResourceId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidResourceId to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidResourceId[k], "InvalidResourceId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidResourceId
-- <p>The resource ID is not valid. Verify that you entered the correct ID and try again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidResourceId structure as a key-value pair table
function M.InvalidResourceId(args)
	assert(args, "You must provdide an argument table when creating InvalidResourceId")
	local t = { 
	}
	asserts.AssertInvalidResourceId(t)
	return t
end

keys.AssociationAlreadyExists = { nil }

function asserts.AssertAssociationAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociationAlreadyExists to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AssociationAlreadyExists[k], "AssociationAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociationAlreadyExists
-- <p>The specified association already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AssociationAlreadyExists structure as a key-value pair table
function M.AssociationAlreadyExists(args)
	assert(args, "You must provdide an argument table when creating AssociationAlreadyExists")
	local t = { 
	}
	asserts.AssertAssociationAlreadyExists(t)
	return t
end

keys.DescribePatchGroupsResult = { ["NextToken"] = true, ["Mappings"] = true, nil }

function asserts.AssertDescribePatchGroupsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePatchGroupsResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Mappings"] then asserts.AssertPatchGroupPatchBaselineMappingList(struct["Mappings"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePatchGroupsResult[k], "DescribePatchGroupsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePatchGroupsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- * Mappings [PatchGroupPatchBaselineMappingList] <p>Each entry in the array contains:</p> <p>PatchGroup: string (between 1 and 256 characters, Regex: ^([\p{L}\p{Z}\p{N}_.:/=+\-@]*)$)</p> <p>PatchBaselineIdentity: A PatchBaselineIdentity element. </p>
-- @return DescribePatchGroupsResult structure as a key-value pair table
function M.DescribePatchGroupsResult(args)
	assert(args, "You must provdide an argument table when creating DescribePatchGroupsResult")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Mappings"] = args["Mappings"],
	}
	asserts.AssertDescribePatchGroupsResult(t)
	return t
end

keys.DescribeInstanceInformationResult = { ["InstanceInformationList"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeInstanceInformationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstanceInformationResult to be of type 'table'")
	if struct["InstanceInformationList"] then asserts.AssertInstanceInformationList(struct["InstanceInformationList"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInstanceInformationResult[k], "DescribeInstanceInformationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstanceInformationResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceInformationList [InstanceInformationList] <p>The instance information list.</p>
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty. </p>
-- @return DescribeInstanceInformationResult structure as a key-value pair table
function M.DescribeInstanceInformationResult(args)
	assert(args, "You must provdide an argument table when creating DescribeInstanceInformationResult")
	local t = { 
		["InstanceInformationList"] = args["InstanceInformationList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeInstanceInformationResult(t)
	return t
end

keys.AutomationExecutionFilter = { ["Values"] = true, ["Key"] = true, nil }

function asserts.AssertAutomationExecutionFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutomationExecutionFilter to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Values"] then asserts.AssertAutomationExecutionFilterValueList(struct["Values"]) end
	if struct["Key"] then asserts.AssertAutomationExecutionFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.AutomationExecutionFilter[k], "AutomationExecutionFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutomationExecutionFilter
-- <p>A filter used to match specific automation executions. This is used to limit the scope of Automation execution information returned.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [AutomationExecutionFilterValueList] <p>The values used to limit the execution information associated with the filter's key.</p>
-- * Key [AutomationExecutionFilterKey] <p>The aspect of the Automation execution information that should be limited.</p>
-- Required key: Key
-- Required key: Values
-- @return AutomationExecutionFilter structure as a key-value pair table
function M.AutomationExecutionFilter(args)
	assert(args, "You must provdide an argument table when creating AutomationExecutionFilter")
	local t = { 
		["Values"] = args["Values"],
		["Key"] = args["Key"],
	}
	asserts.AssertAutomationExecutionFilter(t)
	return t
end

keys.GetParameterRequest = { ["Name"] = true, ["WithDecryption"] = true, nil }

function asserts.AssertGetParameterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParameterRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertPSParameterName(struct["Name"]) end
	if struct["WithDecryption"] then asserts.AssertBoolean(struct["WithDecryption"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetParameterRequest[k], "GetParameterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParameterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [PSParameterName] <p>The name of the parameter you want to query.</p>
-- * WithDecryption [Boolean] <p>Return decrypted values for secure string parameters. This flag is ignored for String and StringList parameter types.</p>
-- Required key: Name
-- @return GetParameterRequest structure as a key-value pair table
function M.GetParameterRequest(args)
	assert(args, "You must provdide an argument table when creating GetParameterRequest")
	local t = { 
		["Name"] = args["Name"],
		["WithDecryption"] = args["WithDecryption"],
	}
	asserts.AssertGetParameterRequest(t)
	return t
end

keys.PatchComplianceData = { ["KBId"] = true, ["Severity"] = true, ["Classification"] = true, ["Title"] = true, ["State"] = true, ["InstalledTime"] = true, nil }

function asserts.AssertPatchComplianceData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PatchComplianceData to be of type 'table'")
	assert(struct["Title"], "Expected key Title to exist in table")
	assert(struct["KBId"], "Expected key KBId to exist in table")
	assert(struct["Classification"], "Expected key Classification to exist in table")
	assert(struct["Severity"], "Expected key Severity to exist in table")
	assert(struct["State"], "Expected key State to exist in table")
	assert(struct["InstalledTime"], "Expected key InstalledTime to exist in table")
	if struct["KBId"] then asserts.AssertPatchKbNumber(struct["KBId"]) end
	if struct["Severity"] then asserts.AssertPatchSeverity(struct["Severity"]) end
	if struct["Classification"] then asserts.AssertPatchClassification(struct["Classification"]) end
	if struct["Title"] then asserts.AssertPatchTitle(struct["Title"]) end
	if struct["State"] then asserts.AssertPatchComplianceDataState(struct["State"]) end
	if struct["InstalledTime"] then asserts.AssertPatchInstalledTime(struct["InstalledTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.PatchComplianceData[k], "PatchComplianceData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PatchComplianceData
-- <p>Information about the state of a patch on a particular instance as it relates to the patch baseline used to patch the instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KBId [PatchKbNumber] <p>The Microsoft Knowledge Base ID of the patch.</p>
-- * Severity [PatchSeverity] <p>The severity of the patch (for example, Critical, Important, Moderate).</p>
-- * Classification [PatchClassification] <p>The classification of the patch (for example, SecurityUpdates, Updates, CriticalUpdates).</p>
-- * Title [PatchTitle] <p>The title of the patch.</p>
-- * State [PatchComplianceDataState] <p>The state of the patch on the instance (INSTALLED, INSTALLED_OTHER, MISSING, NOT_APPLICABLE or FAILED).</p>
-- * InstalledTime [PatchInstalledTime] <p>The date/time the patch was installed on the instance.</p>
-- Required key: Title
-- Required key: KBId
-- Required key: Classification
-- Required key: Severity
-- Required key: State
-- Required key: InstalledTime
-- @return PatchComplianceData structure as a key-value pair table
function M.PatchComplianceData(args)
	assert(args, "You must provdide an argument table when creating PatchComplianceData")
	local t = { 
		["KBId"] = args["KBId"],
		["Severity"] = args["Severity"],
		["Classification"] = args["Classification"],
		["Title"] = args["Title"],
		["State"] = args["State"],
		["InstalledTime"] = args["InstalledTime"],
	}
	asserts.AssertPatchComplianceData(t)
	return t
end

keys.UpdateDocumentRequest = { ["Content"] = true, ["Name"] = true, ["DocumentVersion"] = true, nil }

function asserts.AssertUpdateDocumentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDocumentRequest to be of type 'table'")
	assert(struct["Content"], "Expected key Content to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Content"] then asserts.AssertDocumentContent(struct["Content"]) end
	if struct["Name"] then asserts.AssertDocumentName(struct["Name"]) end
	if struct["DocumentVersion"] then asserts.AssertDocumentVersion(struct["DocumentVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDocumentRequest[k], "UpdateDocumentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDocumentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Content [DocumentContent] <p>The content in a document that you want to update.</p>
-- * Name [DocumentName] <p>The name of the document that you want to update.</p>
-- * DocumentVersion [DocumentVersion] <p>The version of the document that you want to update.</p>
-- Required key: Content
-- Required key: Name
-- @return UpdateDocumentRequest structure as a key-value pair table
function M.UpdateDocumentRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateDocumentRequest")
	local t = { 
		["Content"] = args["Content"],
		["Name"] = args["Name"],
		["DocumentVersion"] = args["DocumentVersion"],
	}
	asserts.AssertUpdateDocumentRequest(t)
	return t
end

keys.PutInventoryResult = { nil }

function asserts.AssertPutInventoryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutInventoryResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PutInventoryResult[k], "PutInventoryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutInventoryResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PutInventoryResult structure as a key-value pair table
function M.PutInventoryResult(args)
	assert(args, "You must provdide an argument table when creating PutInventoryResult")
	local t = { 
	}
	asserts.AssertPutInventoryResult(t)
	return t
end

keys.ListAssociationsResult = { ["Associations"] = true, ["NextToken"] = true, nil }

function asserts.AssertListAssociationsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssociationsResult to be of type 'table'")
	if struct["Associations"] then asserts.AssertAssociationList(struct["Associations"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAssociationsResult[k], "ListAssociationsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssociationsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Associations [AssociationList] <p>The associations.</p>
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @return ListAssociationsResult structure as a key-value pair table
function M.ListAssociationsResult(args)
	assert(args, "You must provdide an argument table when creating ListAssociationsResult")
	local t = { 
		["Associations"] = args["Associations"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListAssociationsResult(t)
	return t
end

keys.InvalidOutputLocation = { nil }

function asserts.AssertInvalidOutputLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOutputLocation to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidOutputLocation[k], "InvalidOutputLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOutputLocation
-- <p>The output location is not valid or does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidOutputLocation structure as a key-value pair table
function M.InvalidOutputLocation(args)
	assert(args, "You must provdide an argument table when creating InvalidOutputLocation")
	local t = { 
	}
	asserts.AssertInvalidOutputLocation(t)
	return t
end

keys.InvalidParameters = { ["Message"] = true, nil }

function asserts.AssertInvalidParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameters to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameters[k], "InvalidParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameters
-- <p>You must specify values for all required parameters in the SSM document. You can only supply values to parameters defined in the SSM document.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidParameters structure as a key-value pair table
function M.InvalidParameters(args)
	assert(args, "You must provdide an argument table when creating InvalidParameters")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidParameters(t)
	return t
end

keys.DeleteDocumentResult = { nil }

function asserts.AssertDeleteDocumentResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDocumentResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteDocumentResult[k], "DeleteDocumentResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDocumentResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteDocumentResult structure as a key-value pair table
function M.DeleteDocumentResult(args)
	assert(args, "You must provdide an argument table when creating DeleteDocumentResult")
	local t = { 
	}
	asserts.AssertDeleteDocumentResult(t)
	return t
end

keys.CreateMaintenanceWindowRequest = { ["Cutoff"] = true, ["Name"] = true, ["Schedule"] = true, ["AllowUnassociatedTargets"] = true, ["ClientToken"] = true, ["Duration"] = true, nil }

function asserts.AssertCreateMaintenanceWindowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateMaintenanceWindowRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Schedule"], "Expected key Schedule to exist in table")
	assert(struct["Duration"], "Expected key Duration to exist in table")
	assert(struct["Cutoff"], "Expected key Cutoff to exist in table")
	assert(struct["AllowUnassociatedTargets"], "Expected key AllowUnassociatedTargets to exist in table")
	if struct["Cutoff"] then asserts.AssertMaintenanceWindowCutoff(struct["Cutoff"]) end
	if struct["Name"] then asserts.AssertMaintenanceWindowName(struct["Name"]) end
	if struct["Schedule"] then asserts.AssertMaintenanceWindowSchedule(struct["Schedule"]) end
	if struct["AllowUnassociatedTargets"] then asserts.AssertMaintenanceWindowAllowUnassociatedTargets(struct["AllowUnassociatedTargets"]) end
	if struct["ClientToken"] then asserts.AssertClientToken(struct["ClientToken"]) end
	if struct["Duration"] then asserts.AssertMaintenanceWindowDurationHours(struct["Duration"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateMaintenanceWindowRequest[k], "CreateMaintenanceWindowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateMaintenanceWindowRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cutoff [MaintenanceWindowCutoff] <p>The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution.</p>
-- * Name [MaintenanceWindowName] <p>The name of the Maintenance Window.</p>
-- * Schedule [MaintenanceWindowSchedule] <p>The schedule of the Maintenance Window in the form of a cron or rate expression.</p>
-- * AllowUnassociatedTargets [MaintenanceWindowAllowUnassociatedTargets] <p>Whether targets must be registered with the Maintenance Window before tasks can be defined for those targets.</p>
-- * ClientToken [ClientToken] <p>User-provided idempotency token.</p>
-- * Duration [MaintenanceWindowDurationHours] <p>The duration of the Maintenance Window in hours.</p>
-- Required key: Name
-- Required key: Schedule
-- Required key: Duration
-- Required key: Cutoff
-- Required key: AllowUnassociatedTargets
-- @return CreateMaintenanceWindowRequest structure as a key-value pair table
function M.CreateMaintenanceWindowRequest(args)
	assert(args, "You must provdide an argument table when creating CreateMaintenanceWindowRequest")
	local t = { 
		["Cutoff"] = args["Cutoff"],
		["Name"] = args["Name"],
		["Schedule"] = args["Schedule"],
		["AllowUnassociatedTargets"] = args["AllowUnassociatedTargets"],
		["ClientToken"] = args["ClientToken"],
		["Duration"] = args["Duration"],
	}
	asserts.AssertCreateMaintenanceWindowRequest(t)
	return t
end

keys.DescribeInstancePatchStatesForPatchGroupRequest = { ["PatchGroup"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeInstancePatchStatesForPatchGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancePatchStatesForPatchGroupRequest to be of type 'table'")
	assert(struct["PatchGroup"], "Expected key PatchGroup to exist in table")
	if struct["PatchGroup"] then asserts.AssertPatchGroup(struct["PatchGroup"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPatchComplianceMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then asserts.AssertInstancePatchStateFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInstancePatchStatesForPatchGroupRequest[k], "DescribeInstancePatchStatesForPatchGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancePatchStatesForPatchGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PatchGroup [PatchGroup] <p>The name of the patch group for which the patch state information should be retrieved.</p>
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * MaxResults [PatchComplianceMaxResults] <p>The maximum number of patches to return (per page).</p>
-- * Filters [InstancePatchStateFilterList] <p>Each entry in the array is a structure containing:</p> <p>Key (string between 1 and 200 characters)</p> <p> Values (array containing a single string)</p> <p> Type (string "Equal", "NotEqual", "LessThan", "GreaterThan")</p>
-- Required key: PatchGroup
-- @return DescribeInstancePatchStatesForPatchGroupRequest structure as a key-value pair table
function M.DescribeInstancePatchStatesForPatchGroupRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeInstancePatchStatesForPatchGroupRequest")
	local t = { 
		["PatchGroup"] = args["PatchGroup"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeInstancePatchStatesForPatchGroupRequest(t)
	return t
end

keys.GetDefaultPatchBaselineResult = { ["BaselineId"] = true, nil }

function asserts.AssertGetDefaultPatchBaselineResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDefaultPatchBaselineResult to be of type 'table'")
	if struct["BaselineId"] then asserts.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDefaultPatchBaselineResult[k], "GetDefaultPatchBaselineResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDefaultPatchBaselineResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BaselineId [BaselineId] <p>The ID of the default patch baseline.</p>
-- @return GetDefaultPatchBaselineResult structure as a key-value pair table
function M.GetDefaultPatchBaselineResult(args)
	assert(args, "You must provdide an argument table when creating GetDefaultPatchBaselineResult")
	local t = { 
		["BaselineId"] = args["BaselineId"],
	}
	asserts.AssertGetDefaultPatchBaselineResult(t)
	return t
end

keys.GetDefaultPatchBaselineRequest = { nil }

function asserts.AssertGetDefaultPatchBaselineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDefaultPatchBaselineRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetDefaultPatchBaselineRequest[k], "GetDefaultPatchBaselineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDefaultPatchBaselineRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetDefaultPatchBaselineRequest structure as a key-value pair table
function M.GetDefaultPatchBaselineRequest(args)
	assert(args, "You must provdide an argument table when creating GetDefaultPatchBaselineRequest")
	local t = { 
	}
	asserts.AssertGetDefaultPatchBaselineRequest(t)
	return t
end

keys.DescribeAssociationRequest = { ["InstanceId"] = true, ["AssociationId"] = true, ["Name"] = true, nil }

function asserts.AssertDescribeAssociationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAssociationRequest to be of type 'table'")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["AssociationId"] then asserts.AssertAssociationId(struct["AssociationId"]) end
	if struct["Name"] then asserts.AssertDocumentName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAssociationRequest[k], "DescribeAssociationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAssociationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>The instance ID.</p>
-- * AssociationId [AssociationId] <p>The association ID for which you want information.</p>
-- * Name [DocumentName] <p>The name of the SSM document.</p>
-- @return DescribeAssociationRequest structure as a key-value pair table
function M.DescribeAssociationRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeAssociationRequest")
	local t = { 
		["InstanceId"] = args["InstanceId"],
		["AssociationId"] = args["AssociationId"],
		["Name"] = args["Name"],
	}
	asserts.AssertDescribeAssociationRequest(t)
	return t
end

keys.DescribeInstanceInformationRequest = { ["InstanceInformationFilterList"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeInstanceInformationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstanceInformationRequest to be of type 'table'")
	if struct["InstanceInformationFilterList"] then asserts.AssertInstanceInformationFilterList(struct["InstanceInformationFilterList"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResultsEC2Compatible(struct["MaxResults"]) end
	if struct["Filters"] then asserts.AssertInstanceInformationStringFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInstanceInformationRequest[k], "DescribeInstanceInformationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstanceInformationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceInformationFilterList [InstanceInformationFilterList] <p>One or more filters. Use a filter to return a more specific list of instances.</p>
-- * NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * MaxResults [MaxResultsEC2Compatible] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results. </p>
-- * Filters [InstanceInformationStringFilterList] <p>One or more filters. Use a filter to return a more specific list of instances.</p>
-- @return DescribeInstanceInformationRequest structure as a key-value pair table
function M.DescribeInstanceInformationRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeInstanceInformationRequest")
	local t = { 
		["InstanceInformationFilterList"] = args["InstanceInformationFilterList"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeInstanceInformationRequest(t)
	return t
end

keys.ListCommandsResult = { ["Commands"] = true, ["NextToken"] = true, nil }

function asserts.AssertListCommandsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCommandsResult to be of type 'table'")
	if struct["Commands"] then asserts.AssertCommandList(struct["Commands"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListCommandsResult[k], "ListCommandsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCommandsResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Commands [CommandList] <p>(Optional) The list of commands requested by the user. </p>
-- * NextToken [NextToken] <p>(Optional) The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @return ListCommandsResult structure as a key-value pair table
function M.ListCommandsResult(args)
	assert(args, "You must provdide an argument table when creating ListCommandsResult")
	local t = { 
		["Commands"] = args["Commands"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListCommandsResult(t)
	return t
end

keys.InvalidFilterValue = { ["Message"] = true, nil }

function asserts.AssertInvalidFilterValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidFilterValue to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidFilterValue[k], "InvalidFilterValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidFilterValue
-- <p>The filter value is not valid. Verify the value and try again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidFilterValue structure as a key-value pair table
function M.InvalidFilterValue(args)
	assert(args, "You must provdide an argument table when creating InvalidFilterValue")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidFilterValue(t)
	return t
end

keys.GetCommandInvocationRequest = { ["InstanceId"] = true, ["PluginName"] = true, ["CommandId"] = true, nil }

function asserts.AssertGetCommandInvocationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCommandInvocationRequest to be of type 'table'")
	assert(struct["CommandId"], "Expected key CommandId to exist in table")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["PluginName"] then asserts.AssertCommandPluginName(struct["PluginName"]) end
	if struct["CommandId"] then asserts.AssertCommandId(struct["CommandId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCommandInvocationRequest[k], "GetCommandInvocationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCommandInvocationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstanceId [InstanceId] <p>(Required) The ID of the managed instance targeted by the command. A managed instance can be an Amazon EC2 instance or an instance in your hybrid environment that is configured for Systems Manager.</p>
-- * PluginName [CommandPluginName] <p>(Optional) The name of the plugin for which you want detailed results. If the document contains only one plugin, the name can be omitted and the details will be returned.</p>
-- * CommandId [CommandId] <p>(Required) The parent command ID of the invocation plugin.</p>
-- Required key: CommandId
-- Required key: InstanceId
-- @return GetCommandInvocationRequest structure as a key-value pair table
function M.GetCommandInvocationRequest(args)
	assert(args, "You must provdide an argument table when creating GetCommandInvocationRequest")
	local t = { 
		["InstanceId"] = args["InstanceId"],
		["PluginName"] = args["PluginName"],
		["CommandId"] = args["CommandId"],
	}
	asserts.AssertGetCommandInvocationRequest(t)
	return t
end

keys.CreateDocumentRequest = { ["Content"] = true, ["Name"] = true, ["DocumentType"] = true, nil }

function asserts.AssertCreateDocumentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDocumentRequest to be of type 'table'")
	assert(struct["Content"], "Expected key Content to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Content"] then asserts.AssertDocumentContent(struct["Content"]) end
	if struct["Name"] then asserts.AssertDocumentName(struct["Name"]) end
	if struct["DocumentType"] then asserts.AssertDocumentType(struct["DocumentType"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDocumentRequest[k], "CreateDocumentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDocumentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Content [DocumentContent] <p>A valid JSON string.</p>
-- * Name [DocumentName] <p>A name for the Systems Manager document.</p>
-- * DocumentType [DocumentType] <p>The type of document to create. Valid document types include: Policy, Automation, and Command.</p>
-- Required key: Content
-- Required key: Name
-- @return CreateDocumentRequest structure as a key-value pair table
function M.CreateDocumentRequest(args)
	assert(args, "You must provdide an argument table when creating CreateDocumentRequest")
	local t = { 
		["Content"] = args["Content"],
		["Name"] = args["Name"],
		["DocumentType"] = args["DocumentType"],
	}
	asserts.AssertCreateDocumentRequest(t)
	return t
end

keys.InstanceAssociationStatusInfo = { ["Status"] = true, ["DetailedStatus"] = true, ["OutputUrl"] = true, ["Name"] = true, ["InstanceId"] = true, ["AssociationId"] = true, ["DocumentVersion"] = true, ["ErrorCode"] = true, ["ExecutionSummary"] = true, ["ExecutionDate"] = true, nil }

function asserts.AssertInstanceAssociationStatusInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceAssociationStatusInfo to be of type 'table'")
	if struct["Status"] then asserts.AssertStatusName(struct["Status"]) end
	if struct["DetailedStatus"] then asserts.AssertStatusName(struct["DetailedStatus"]) end
	if struct["OutputUrl"] then asserts.AssertInstanceAssociationOutputUrl(struct["OutputUrl"]) end
	if struct["Name"] then asserts.AssertDocumentName(struct["Name"]) end
	if struct["InstanceId"] then asserts.AssertInstanceId(struct["InstanceId"]) end
	if struct["AssociationId"] then asserts.AssertAssociationId(struct["AssociationId"]) end
	if struct["DocumentVersion"] then asserts.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["ErrorCode"] then asserts.AssertAgentErrorCode(struct["ErrorCode"]) end
	if struct["ExecutionSummary"] then asserts.AssertInstanceAssociationExecutionSummary(struct["ExecutionSummary"]) end
	if struct["ExecutionDate"] then asserts.AssertDateTime(struct["ExecutionDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceAssociationStatusInfo[k], "InstanceAssociationStatusInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceAssociationStatusInfo
-- <p>Status information about the instance association.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [StatusName] <p>Status information about the instance association.</p>
-- * DetailedStatus [StatusName] <p>Detailed status information about the instance association.</p>
-- * OutputUrl [InstanceAssociationOutputUrl] <p>A URL for an Amazon S3 bucket where you want to store the results of this request.</p>
-- * Name [DocumentName] <p>The name of the association.</p>
-- * InstanceId [InstanceId] <p>The instance ID where the association was created.</p>
-- * AssociationId [AssociationId] <p>The association ID.</p>
-- * DocumentVersion [DocumentVersion] <p>The association document verions.</p>
-- * ErrorCode [AgentErrorCode] <p>An error code returned by the request to create the association.</p>
-- * ExecutionSummary [InstanceAssociationExecutionSummary] <p>Summary information about association execution.</p>
-- * ExecutionDate [DateTime] <p>The date the instance association executed. </p>
-- @return InstanceAssociationStatusInfo structure as a key-value pair table
function M.InstanceAssociationStatusInfo(args)
	assert(args, "You must provdide an argument table when creating InstanceAssociationStatusInfo")
	local t = { 
		["Status"] = args["Status"],
		["DetailedStatus"] = args["DetailedStatus"],
		["OutputUrl"] = args["OutputUrl"],
		["Name"] = args["Name"],
		["InstanceId"] = args["InstanceId"],
		["AssociationId"] = args["AssociationId"],
		["DocumentVersion"] = args["DocumentVersion"],
		["ErrorCode"] = args["ErrorCode"],
		["ExecutionSummary"] = args["ExecutionSummary"],
		["ExecutionDate"] = args["ExecutionDate"],
	}
	asserts.AssertInstanceAssociationStatusInfo(t)
	return t
end

keys.ParametersFilter = { ["Values"] = true, ["Key"] = true, nil }

function asserts.AssertParametersFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParametersFilter to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Values"] then asserts.AssertParametersFilterValueList(struct["Values"]) end
	if struct["Key"] then asserts.AssertParametersFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParametersFilter[k], "ParametersFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParametersFilter
-- <p>One or more filters. Use a filter to return a more specific list of results.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [ParametersFilterValueList] <p>The filter values.</p>
-- * Key [ParametersFilterKey] <p>The name of the filter.</p>
-- Required key: Key
-- Required key: Values
-- @return ParametersFilter structure as a key-value pair table
function M.ParametersFilter(args)
	assert(args, "You must provdide an argument table when creating ParametersFilter")
	local t = { 
		["Values"] = args["Values"],
		["Key"] = args["Key"],
	}
	asserts.AssertParametersFilter(t)
	return t
end

keys.TooManyTagsError = { nil }

function asserts.AssertTooManyTagsError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyTagsError to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TooManyTagsError[k], "TooManyTagsError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyTagsError
-- <p>The Targets parameter includes too many tags. Remove one or more tags and try the command again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TooManyTagsError structure as a key-value pair table
function M.TooManyTagsError(args)
	assert(args, "You must provdide an argument table when creating TooManyTagsError")
	local t = { 
	}
	asserts.AssertTooManyTagsError(t)
	return t
end

keys.DescribeDocumentPermissionRequest = { ["PermissionType"] = true, ["Name"] = true, nil }

function asserts.AssertDescribeDocumentPermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDocumentPermissionRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["PermissionType"], "Expected key PermissionType to exist in table")
	if struct["PermissionType"] then asserts.AssertDocumentPermissionType(struct["PermissionType"]) end
	if struct["Name"] then asserts.AssertDocumentName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDocumentPermissionRequest[k], "DescribeDocumentPermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDocumentPermissionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PermissionType [DocumentPermissionType] <p>The permission type for the document. The permission type can be <i>Share</i>.</p>
-- * Name [DocumentName] <p>The name of the document for which you are the owner.</p>
-- Required key: Name
-- Required key: PermissionType
-- @return DescribeDocumentPermissionRequest structure as a key-value pair table
function M.DescribeDocumentPermissionRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeDocumentPermissionRequest")
	local t = { 
		["PermissionType"] = args["PermissionType"],
		["Name"] = args["Name"],
	}
	asserts.AssertDescribeDocumentPermissionRequest(t)
	return t
end

keys.DocumentPermissionLimit = { ["Message"] = true, nil }

function asserts.AssertDocumentPermissionLimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentPermissionLimit to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentPermissionLimit[k], "DocumentPermissionLimit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentPermissionLimit
-- <p>The document cannot be shared with more AWS user accounts. You can share a document with a maximum of 20 accounts. You can publicly share up to five documents. If you need to increase this limit, contact AWS Support.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return DocumentPermissionLimit structure as a key-value pair table
function M.DocumentPermissionLimit(args)
	assert(args, "You must provdide an argument table when creating DocumentPermissionLimit")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertDocumentPermissionLimit(t)
	return t
end

keys.DeleteDocumentRequest = { ["Name"] = true, nil }

function asserts.AssertDeleteDocumentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDocumentRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertDocumentName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDocumentRequest[k], "DeleteDocumentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDocumentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [DocumentName] <p>The name of the document.</p>
-- Required key: Name
-- @return DeleteDocumentRequest structure as a key-value pair table
function M.DeleteDocumentRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteDocumentRequest")
	local t = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteDocumentRequest(t)
	return t
end

keys.DescribeInstancePatchStatesForPatchGroupResult = { ["InstancePatchStates"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeInstancePatchStatesForPatchGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancePatchStatesForPatchGroupResult to be of type 'table'")
	if struct["InstancePatchStates"] then asserts.AssertInstancePatchStatesList(struct["InstancePatchStates"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeInstancePatchStatesForPatchGroupResult[k], "DescribeInstancePatchStatesForPatchGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancePatchStatesForPatchGroupResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InstancePatchStates [InstancePatchStatesList] <p>The high-level patch state for the requested instances. </p>
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @return DescribeInstancePatchStatesForPatchGroupResult structure as a key-value pair table
function M.DescribeInstancePatchStatesForPatchGroupResult(args)
	assert(args, "You must provdide an argument table when creating DescribeInstancePatchStatesForPatchGroupResult")
	local t = { 
		["InstancePatchStates"] = args["InstancePatchStates"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeInstancePatchStatesForPatchGroupResult(t)
	return t
end

keys.InvalidUpdate = { ["Message"] = true, nil }

function asserts.AssertInvalidUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidUpdate to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidUpdate[k], "InvalidUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidUpdate
-- <p>The update is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidUpdate structure as a key-value pair table
function M.InvalidUpdate(args)
	assert(args, "You must provdide an argument table when creating InvalidUpdate")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidUpdate(t)
	return t
end

keys.InvalidAllowedPatternException = { ["message"] = true, nil }

function asserts.AssertInvalidAllowedPatternException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAllowedPatternException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidAllowedPatternException[k], "InvalidAllowedPatternException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAllowedPatternException
-- <p>The request does not meet the regular expression requirement.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>The request does not meet the regular expression requirement.</p>
-- @return InvalidAllowedPatternException structure as a key-value pair table
function M.InvalidAllowedPatternException(args)
	assert(args, "You must provdide an argument table when creating InvalidAllowedPatternException")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidAllowedPatternException(t)
	return t
end

keys.InventoryItemAttribute = { ["DataType"] = true, ["Name"] = true, nil }

function asserts.AssertInventoryItemAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryItemAttribute to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["DataType"], "Expected key DataType to exist in table")
	if struct["DataType"] then asserts.AssertInventoryAttributeDataType(struct["DataType"]) end
	if struct["Name"] then asserts.AssertInventoryItemAttributeName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.InventoryItemAttribute[k], "InventoryItemAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryItemAttribute
-- <p>Attributes are the entries within the inventory item content. It contains name and value.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataType [InventoryAttributeDataType] <p>The data type of the inventory item attribute. </p>
-- * Name [InventoryItemAttributeName] <p>Name of the inventory item attribute.</p>
-- Required key: Name
-- Required key: DataType
-- @return InventoryItemAttribute structure as a key-value pair table
function M.InventoryItemAttribute(args)
	assert(args, "You must provdide an argument table when creating InventoryItemAttribute")
	local t = { 
		["DataType"] = args["DataType"],
		["Name"] = args["Name"],
	}
	asserts.AssertInventoryItemAttribute(t)
	return t
end

keys.UpdateMaintenanceWindowResult = { ["Cutoff"] = true, ["Name"] = true, ["Schedule"] = true, ["Enabled"] = true, ["AllowUnassociatedTargets"] = true, ["WindowId"] = true, ["Duration"] = true, nil }

function asserts.AssertUpdateMaintenanceWindowResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateMaintenanceWindowResult to be of type 'table'")
	if struct["Cutoff"] then asserts.AssertMaintenanceWindowCutoff(struct["Cutoff"]) end
	if struct["Name"] then asserts.AssertMaintenanceWindowName(struct["Name"]) end
	if struct["Schedule"] then asserts.AssertMaintenanceWindowSchedule(struct["Schedule"]) end
	if struct["Enabled"] then asserts.AssertMaintenanceWindowEnabled(struct["Enabled"]) end
	if struct["AllowUnassociatedTargets"] then asserts.AssertMaintenanceWindowAllowUnassociatedTargets(struct["AllowUnassociatedTargets"]) end
	if struct["WindowId"] then asserts.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["Duration"] then asserts.AssertMaintenanceWindowDurationHours(struct["Duration"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateMaintenanceWindowResult[k], "UpdateMaintenanceWindowResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateMaintenanceWindowResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cutoff [MaintenanceWindowCutoff] <p>The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution.</p>
-- * Name [MaintenanceWindowName] <p>The name of the Maintenance Window.</p>
-- * Schedule [MaintenanceWindowSchedule] <p>The schedule of the Maintenance Window in the form of a cron or rate expression.</p>
-- * Enabled [MaintenanceWindowEnabled] <p>Whether the Maintenance Window is enabled.</p>
-- * AllowUnassociatedTargets [MaintenanceWindowAllowUnassociatedTargets] <p>Whether targets must be registered with the Maintenance Window before tasks can be defined for those targets.</p>
-- * WindowId [MaintenanceWindowId] <p>The ID of the created Maintenance Window.</p>
-- * Duration [MaintenanceWindowDurationHours] <p>The duration of the Maintenance Window in hours.</p>
-- @return UpdateMaintenanceWindowResult structure as a key-value pair table
function M.UpdateMaintenanceWindowResult(args)
	assert(args, "You must provdide an argument table when creating UpdateMaintenanceWindowResult")
	local t = { 
		["Cutoff"] = args["Cutoff"],
		["Name"] = args["Name"],
		["Schedule"] = args["Schedule"],
		["Enabled"] = args["Enabled"],
		["AllowUnassociatedTargets"] = args["AllowUnassociatedTargets"],
		["WindowId"] = args["WindowId"],
		["Duration"] = args["Duration"],
	}
	asserts.AssertUpdateMaintenanceWindowResult(t)
	return t
end

keys.CreateActivationRequest = { ["DefaultInstanceName"] = true, ["IamRole"] = true, ["ExpirationDate"] = true, ["Description"] = true, ["RegistrationLimit"] = true, nil }

function asserts.AssertCreateActivationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateActivationRequest to be of type 'table'")
	assert(struct["IamRole"], "Expected key IamRole to exist in table")
	if struct["DefaultInstanceName"] then asserts.AssertDefaultInstanceName(struct["DefaultInstanceName"]) end
	if struct["IamRole"] then asserts.AssertIamRole(struct["IamRole"]) end
	if struct["ExpirationDate"] then asserts.AssertExpirationDate(struct["ExpirationDate"]) end
	if struct["Description"] then asserts.AssertActivationDescription(struct["Description"]) end
	if struct["RegistrationLimit"] then asserts.AssertRegistrationLimit(struct["RegistrationLimit"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateActivationRequest[k], "CreateActivationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateActivationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DefaultInstanceName [DefaultInstanceName] <p>The name of the registered, managed instance as it will appear in the Amazon EC2 console or when you use the AWS command line tools to list EC2 resources.</p>
-- * IamRole [IamRole] <p>The Amazon Identity and Access Management (IAM) role that you want to assign to the managed instance. </p>
-- * ExpirationDate [ExpirationDate] <p>The date by which this activation request should expire. The default value is 24 hours.</p>
-- * Description [ActivationDescription] <p>A userdefined description of the resource that you want to register with Amazon EC2. </p>
-- * RegistrationLimit [RegistrationLimit] <p>Specify the maximum number of managed instances you want to register. The default value is 1 instance.</p>
-- Required key: IamRole
-- @return CreateActivationRequest structure as a key-value pair table
function M.CreateActivationRequest(args)
	assert(args, "You must provdide an argument table when creating CreateActivationRequest")
	local t = { 
		["DefaultInstanceName"] = args["DefaultInstanceName"],
		["IamRole"] = args["IamRole"],
		["ExpirationDate"] = args["ExpirationDate"],
		["Description"] = args["Description"],
		["RegistrationLimit"] = args["RegistrationLimit"],
	}
	asserts.AssertCreateActivationRequest(t)
	return t
end

keys.DescribeAssociationResult = { ["AssociationDescription"] = true, nil }

function asserts.AssertDescribeAssociationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAssociationResult to be of type 'table'")
	if struct["AssociationDescription"] then asserts.AssertAssociationDescription(struct["AssociationDescription"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAssociationResult[k], "DescribeAssociationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAssociationResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AssociationDescription [AssociationDescription] <p>Information about the association.</p>
-- @return DescribeAssociationResult structure as a key-value pair table
function M.DescribeAssociationResult(args)
	assert(args, "You must provdide an argument table when creating DescribeAssociationResult")
	local t = { 
		["AssociationDescription"] = args["AssociationDescription"],
	}
	asserts.AssertDescribeAssociationResult(t)
	return t
end

keys.InventoryResultEntity = { ["Data"] = true, ["Id"] = true, nil }

function asserts.AssertInventoryResultEntity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryResultEntity to be of type 'table'")
	if struct["Data"] then asserts.AssertInventoryResultItemMap(struct["Data"]) end
	if struct["Id"] then asserts.AssertInventoryResultEntityId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.InventoryResultEntity[k], "InventoryResultEntity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryResultEntity
-- <p>Inventory query results.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Data [InventoryResultItemMap] <p>The data section in the inventory result entity json.</p>
-- * Id [InventoryResultEntityId] <p>ID of the inventory result entity. For example, for managed instance inventory the result will be the managed instance ID. For EC2 instance inventory, the result will be the instance ID. </p>
-- @return InventoryResultEntity structure as a key-value pair table
function M.InventoryResultEntity(args)
	assert(args, "You must provdide an argument table when creating InventoryResultEntity")
	local t = { 
		["Data"] = args["Data"],
		["Id"] = args["Id"],
	}
	asserts.AssertInventoryResultEntity(t)
	return t
end

keys.DescribeParametersResult = { ["NextToken"] = true, ["Parameters"] = true, nil }

function asserts.AssertDescribeParametersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeParametersResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Parameters"] then asserts.AssertParameterMetadataList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeParametersResult[k], "DescribeParametersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeParametersResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- * Parameters [ParameterMetadataList] <p>Parameters returned by the request.</p>
-- @return DescribeParametersResult structure as a key-value pair table
function M.DescribeParametersResult(args)
	assert(args, "You must provdide an argument table when creating DescribeParametersResult")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertDescribeParametersResult(t)
	return t
end

keys.UnsupportedPlatformType = { ["Message"] = true, nil }

function asserts.AssertUnsupportedPlatformType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedPlatformType to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedPlatformType[k], "UnsupportedPlatformType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedPlatformType
-- <p>The document does not support the platform type of the given instance ID(s). For example, you sent an document for a Windows instance to a Linux instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return UnsupportedPlatformType structure as a key-value pair table
function M.UnsupportedPlatformType(args)
	assert(args, "You must provdide an argument table when creating UnsupportedPlatformType")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertUnsupportedPlatformType(t)
	return t
end

keys.DescribeDocumentResult = { ["Document"] = true, nil }

function asserts.AssertDescribeDocumentResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDocumentResult to be of type 'table'")
	if struct["Document"] then asserts.AssertDocumentDescription(struct["Document"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDocumentResult[k], "DescribeDocumentResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDocumentResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Document [DocumentDescription] <p>Information about the SSM document.</p>
-- @return DescribeDocumentResult structure as a key-value pair table
function M.DescribeDocumentResult(args)
	assert(args, "You must provdide an argument table when creating DescribeDocumentResult")
	local t = { 
		["Document"] = args["Document"],
	}
	asserts.AssertDescribeDocumentResult(t)
	return t
end

keys.DoesNotExistException = { ["Message"] = true, nil }

function asserts.AssertDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DoesNotExistException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DoesNotExistException[k], "DoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DoesNotExistException
-- <p>Error returned when the ID specified for a resource (e.g. a Maintenance Window) doesn't exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return DoesNotExistException structure as a key-value pair table
function M.DoesNotExistException(args)
	assert(args, "You must provdide an argument table when creating DoesNotExistException")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertDoesNotExistException(t)
	return t
end

keys.ParameterLimitExceeded = { ["message"] = true, nil }

function asserts.AssertParameterLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterLimitExceeded to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParameterLimitExceeded[k], "ParameterLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterLimitExceeded
-- <p>You have exceeded the number of parameters for this AWS account. Delete one or more parameters and try again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return ParameterLimitExceeded structure as a key-value pair table
function M.ParameterLimitExceeded(args)
	assert(args, "You must provdide an argument table when creating ParameterLimitExceeded")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertParameterLimitExceeded(t)
	return t
end

keys.InstanceAssociationOutputUrl = { ["S3OutputUrl"] = true, nil }

function asserts.AssertInstanceAssociationOutputUrl(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceAssociationOutputUrl to be of type 'table'")
	if struct["S3OutputUrl"] then asserts.AssertS3OutputUrl(struct["S3OutputUrl"]) end
	for k,_ in pairs(struct) do
		assert(keys.InstanceAssociationOutputUrl[k], "InstanceAssociationOutputUrl contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceAssociationOutputUrl
-- <p>The URL of Amazon S3 bucket where you want to store the results of this request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3OutputUrl [S3OutputUrl] <p>The URL of Amazon S3 bucket where you want to store the results of this request.</p>
-- @return InstanceAssociationOutputUrl structure as a key-value pair table
function M.InstanceAssociationOutputUrl(args)
	assert(args, "You must provdide an argument table when creating InstanceAssociationOutputUrl")
	local t = { 
		["S3OutputUrl"] = args["S3OutputUrl"],
	}
	asserts.AssertInstanceAssociationOutputUrl(t)
	return t
end

keys.DeleteParametersRequest = { ["Names"] = true, nil }

function asserts.AssertDeleteParametersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteParametersRequest to be of type 'table'")
	assert(struct["Names"], "Expected key Names to exist in table")
	if struct["Names"] then asserts.AssertParameterNameList(struct["Names"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteParametersRequest[k], "DeleteParametersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteParametersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Names [ParameterNameList] <p>The names of the parameters to delete.</p>
-- Required key: Names
-- @return DeleteParametersRequest structure as a key-value pair table
function M.DeleteParametersRequest(args)
	assert(args, "You must provdide an argument table when creating DeleteParametersRequest")
	local t = { 
		["Names"] = args["Names"],
	}
	asserts.AssertDeleteParametersRequest(t)
	return t
end

keys.CreatePatchBaselineRequest = { ["Description"] = true, ["RejectedPatches"] = true, ["GlobalFilters"] = true, ["ApprovalRules"] = true, ["ClientToken"] = true, ["ApprovedPatches"] = true, ["Name"] = true, nil }

function asserts.AssertCreatePatchBaselineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePatchBaselineRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Description"] then asserts.AssertBaselineDescription(struct["Description"]) end
	if struct["RejectedPatches"] then asserts.AssertPatchIdList(struct["RejectedPatches"]) end
	if struct["GlobalFilters"] then asserts.AssertPatchFilterGroup(struct["GlobalFilters"]) end
	if struct["ApprovalRules"] then asserts.AssertPatchRuleGroup(struct["ApprovalRules"]) end
	if struct["ClientToken"] then asserts.AssertClientToken(struct["ClientToken"]) end
	if struct["ApprovedPatches"] then asserts.AssertPatchIdList(struct["ApprovedPatches"]) end
	if struct["Name"] then asserts.AssertBaselineName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePatchBaselineRequest[k], "CreatePatchBaselineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePatchBaselineRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [BaselineDescription] <p>A description of the patch baseline.</p>
-- * RejectedPatches [PatchIdList] <p>A list of explicitly rejected patches for the baseline.</p>
-- * GlobalFilters [PatchFilterGroup] <p>A set of global filters used to exclude patches from the baseline.</p>
-- * ApprovalRules [PatchRuleGroup] <p>A set of rules used to include patches in the baseline.</p>
-- * ClientToken [ClientToken] <p>User-provided idempotency token.</p>
-- * ApprovedPatches [PatchIdList] <p>A list of explicitly approved patches for the baseline.</p>
-- * Name [BaselineName] <p>The name of the patch baseline.</p>
-- Required key: Name
-- @return CreatePatchBaselineRequest structure as a key-value pair table
function M.CreatePatchBaselineRequest(args)
	assert(args, "You must provdide an argument table when creating CreatePatchBaselineRequest")
	local t = { 
		["Description"] = args["Description"],
		["RejectedPatches"] = args["RejectedPatches"],
		["GlobalFilters"] = args["GlobalFilters"],
		["ApprovalRules"] = args["ApprovalRules"],
		["ClientToken"] = args["ClientToken"],
		["ApprovedPatches"] = args["ApprovedPatches"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreatePatchBaselineRequest(t)
	return t
end

keys.GetDocumentRequest = { ["Name"] = true, ["DocumentVersion"] = true, nil }

function asserts.AssertGetDocumentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertDocumentARN(struct["Name"]) end
	if struct["DocumentVersion"] then asserts.AssertDocumentVersion(struct["DocumentVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDocumentRequest[k], "GetDocumentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [DocumentARN] <p>The name of the SSM document.</p>
-- * DocumentVersion [DocumentVersion] <p>The document version for which you want information.</p>
-- Required key: Name
-- @return GetDocumentRequest structure as a key-value pair table
function M.GetDocumentRequest(args)
	assert(args, "You must provdide an argument table when creating GetDocumentRequest")
	local t = { 
		["Name"] = args["Name"],
		["DocumentVersion"] = args["DocumentVersion"],
	}
	asserts.AssertGetDocumentRequest(t)
	return t
end

keys.IdempotentParameterMismatch = { ["Message"] = true, nil }

function asserts.AssertIdempotentParameterMismatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdempotentParameterMismatch to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.IdempotentParameterMismatch[k], "IdempotentParameterMismatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdempotentParameterMismatch
-- <p>Error returned when an idempotent operation is retried and the parameters don't match the original call to the API with the same idempotency token. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return IdempotentParameterMismatch structure as a key-value pair table
function M.IdempotentParameterMismatch(args)
	assert(args, "You must provdide an argument table when creating IdempotentParameterMismatch")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertIdempotentParameterMismatch(t)
	return t
end

keys.DescribePatchGroupStateRequest = { ["PatchGroup"] = true, nil }

function asserts.AssertDescribePatchGroupStateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePatchGroupStateRequest to be of type 'table'")
	assert(struct["PatchGroup"], "Expected key PatchGroup to exist in table")
	if struct["PatchGroup"] then asserts.AssertPatchGroup(struct["PatchGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribePatchGroupStateRequest[k], "DescribePatchGroupStateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePatchGroupStateRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PatchGroup [PatchGroup] <p>The name of the patch group whose patch snapshot should be retrieved.</p>
-- Required key: PatchGroup
-- @return DescribePatchGroupStateRequest structure as a key-value pair table
function M.DescribePatchGroupStateRequest(args)
	assert(args, "You must provdide an argument table when creating DescribePatchGroupStateRequest")
	local t = { 
		["PatchGroup"] = args["PatchGroup"],
	}
	asserts.AssertDescribePatchGroupStateRequest(t)
	return t
end

keys.PatchBaselineIdentity = { ["BaselineName"] = true, ["DefaultBaseline"] = true, ["BaselineDescription"] = true, ["BaselineId"] = true, nil }

function asserts.AssertPatchBaselineIdentity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PatchBaselineIdentity to be of type 'table'")
	if struct["BaselineName"] then asserts.AssertBaselineName(struct["BaselineName"]) end
	if struct["DefaultBaseline"] then asserts.AssertDefaultBaseline(struct["DefaultBaseline"]) end
	if struct["BaselineDescription"] then asserts.AssertBaselineDescription(struct["BaselineDescription"]) end
	if struct["BaselineId"] then asserts.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PatchBaselineIdentity[k], "PatchBaselineIdentity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PatchBaselineIdentity
-- <p>Defines the basic information about a patch baseline.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * BaselineName [BaselineName] <p>The name of the patch baseline.</p>
-- * DefaultBaseline [DefaultBaseline] <p>Whether this is the default baseline.</p>
-- * BaselineDescription [BaselineDescription] <p>The description of the patch baseline.</p>
-- * BaselineId [BaselineId] <p>The ID of the patch baseline.</p>
-- @return PatchBaselineIdentity structure as a key-value pair table
function M.PatchBaselineIdentity(args)
	assert(args, "You must provdide an argument table when creating PatchBaselineIdentity")
	local t = { 
		["BaselineName"] = args["BaselineName"],
		["DefaultBaseline"] = args["DefaultBaseline"],
		["BaselineDescription"] = args["BaselineDescription"],
		["BaselineId"] = args["BaselineId"],
	}
	asserts.AssertPatchBaselineIdentity(t)
	return t
end

keys.DescribeActivationsRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["Filters"] = true, nil }

function asserts.AssertDescribeActivationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeActivationsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then asserts.AssertDescribeActivationsFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeActivationsRequest[k], "DescribeActivationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeActivationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>A token to start the list. Use this token to get the next set of results. </p>
-- * MaxResults [MaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- * Filters [DescribeActivationsFilterList] <p>A filter to view information about your activations.</p>
-- @return DescribeActivationsRequest structure as a key-value pair table
function M.DescribeActivationsRequest(args)
	assert(args, "You must provdide an argument table when creating DescribeActivationsRequest")
	local t = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["Filters"] = args["Filters"],
	}
	asserts.AssertDescribeActivationsRequest(t)
	return t
end

keys.RegisterTargetWithMaintenanceWindowResult = { ["WindowTargetId"] = true, nil }

function asserts.AssertRegisterTargetWithMaintenanceWindowResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterTargetWithMaintenanceWindowResult to be of type 'table'")
	if struct["WindowTargetId"] then asserts.AssertMaintenanceWindowTargetId(struct["WindowTargetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterTargetWithMaintenanceWindowResult[k], "RegisterTargetWithMaintenanceWindowResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterTargetWithMaintenanceWindowResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * WindowTargetId [MaintenanceWindowTargetId] <p>The ID of the target definition in this Maintenance Window.</p>
-- @return RegisterTargetWithMaintenanceWindowResult structure as a key-value pair table
function M.RegisterTargetWithMaintenanceWindowResult(args)
	assert(args, "You must provdide an argument table when creating RegisterTargetWithMaintenanceWindowResult")
	local t = { 
		["WindowTargetId"] = args["WindowTargetId"],
	}
	asserts.AssertRegisterTargetWithMaintenanceWindowResult(t)
	return t
end

keys.DocumentParameter = { ["DefaultValue"] = true, ["Type"] = true, ["Name"] = true, ["Description"] = true, nil }

function asserts.AssertDocumentParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentParameter to be of type 'table'")
	if struct["DefaultValue"] then asserts.AssertDocumentParameterDefaultValue(struct["DefaultValue"]) end
	if struct["Type"] then asserts.AssertDocumentParameterType(struct["Type"]) end
	if struct["Name"] then asserts.AssertDocumentParameterName(struct["Name"]) end
	if struct["Description"] then asserts.AssertDocumentParameterDescrption(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.DocumentParameter[k], "DocumentParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentParameter
-- <p>Parameters specified in a System Manager document that execute on the server when the command is run. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DefaultValue [DocumentParameterDefaultValue] <p>If specified, the default values for the parameters. Parameters without a default value are required. Parameters with a default value are optional.</p>
-- * Type [DocumentParameterType] <p>The type of parameter. The type can be either String or StringList.</p>
-- * Name [DocumentParameterName] <p>The name of the parameter.</p>
-- * Description [DocumentParameterDescrption] <p>A description of what the parameter does, how to use it, the default value, and whether or not the parameter is optional.</p>
-- @return DocumentParameter structure as a key-value pair table
function M.DocumentParameter(args)
	assert(args, "You must provdide an argument table when creating DocumentParameter")
	local t = { 
		["DefaultValue"] = args["DefaultValue"],
		["Type"] = args["Type"],
		["Name"] = args["Name"],
		["Description"] = args["Description"],
	}
	asserts.AssertDocumentParameter(t)
	return t
end

keys.InvalidDocumentSchemaVersion = { ["Message"] = true, nil }

function asserts.AssertInvalidDocumentSchemaVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDocumentSchemaVersion to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidDocumentSchemaVersion[k], "InvalidDocumentSchemaVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDocumentSchemaVersion
-- <p>The version of the document schema is not supported.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidDocumentSchemaVersion structure as a key-value pair table
function M.InvalidDocumentSchemaVersion(args)
	assert(args, "You must provdide an argument table when creating InvalidDocumentSchemaVersion")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidDocumentSchemaVersion(t)
	return t
end

keys.InvalidDocumentContent = { ["Message"] = true, nil }

function asserts.AssertInvalidDocumentContent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDocumentContent to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidDocumentContent[k], "InvalidDocumentContent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDocumentContent
-- <p>The content for the document is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] <p>A description of the validation error.</p>
-- @return InvalidDocumentContent structure as a key-value pair table
function M.InvalidDocumentContent(args)
	assert(args, "You must provdide an argument table when creating InvalidDocumentContent")
	local t = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidDocumentContent(t)
	return t
end

keys.InvalidKeyId = { ["message"] = true, nil }

function asserts.AssertInvalidKeyId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidKeyId to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidKeyId[k], "InvalidKeyId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidKeyId
-- <p>The query key ID is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return InvalidKeyId structure as a key-value pair table
function M.InvalidKeyId(args)
	assert(args, "You must provdide an argument table when creating InvalidKeyId")
	local t = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidKeyId(t)
	return t
end

keys.PutParameterResult = { nil }

function asserts.AssertPutParameterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutParameterResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PutParameterResult[k], "PutParameterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutParameterResult
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PutParameterResult structure as a key-value pair table
function M.PutParameterResult(args)
	assert(args, "You must provdide an argument table when creating PutParameterResult")
	local t = { 
	}
	asserts.AssertPutParameterResult(t)
	return t
end

keys.UpdateMaintenanceWindowRequest = { ["Cutoff"] = true, ["Name"] = true, ["Schedule"] = true, ["Enabled"] = true, ["AllowUnassociatedTargets"] = true, ["WindowId"] = true, ["Duration"] = true, nil }

function asserts.AssertUpdateMaintenanceWindowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateMaintenanceWindowRequest to be of type 'table'")
	assert(struct["WindowId"], "Expected key WindowId to exist in table")
	if struct["Cutoff"] then asserts.AssertMaintenanceWindowCutoff(struct["Cutoff"]) end
	if struct["Name"] then asserts.AssertMaintenanceWindowName(struct["Name"]) end
	if struct["Schedule"] then asserts.AssertMaintenanceWindowSchedule(struct["Schedule"]) end
	if struct["Enabled"] then asserts.AssertMaintenanceWindowEnabled(struct["Enabled"]) end
	if struct["AllowUnassociatedTargets"] then asserts.AssertMaintenanceWindowAllowUnassociatedTargets(struct["AllowUnassociatedTargets"]) end
	if struct["WindowId"] then asserts.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["Duration"] then asserts.AssertMaintenanceWindowDurationHours(struct["Duration"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateMaintenanceWindowRequest[k], "UpdateMaintenanceWindowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateMaintenanceWindowRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Cutoff [MaintenanceWindowCutoff] <p>The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution.</p>
-- * Name [MaintenanceWindowName] <p>The name of the Maintenance Window.</p>
-- * Schedule [MaintenanceWindowSchedule] <p>The schedule of the Maintenance Window in the form of a cron or rate expression.</p>
-- * Enabled [MaintenanceWindowEnabled] <p>Whether the Maintenance Window is enabled.</p>
-- * AllowUnassociatedTargets [MaintenanceWindowAllowUnassociatedTargets] <p>Whether targets must be registered with the Maintenance Window before tasks can be defined for those targets.</p>
-- * WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window to update.</p>
-- * Duration [MaintenanceWindowDurationHours] <p>The duration of the Maintenance Window in hours.</p>
-- Required key: WindowId
-- @return UpdateMaintenanceWindowRequest structure as a key-value pair table
function M.UpdateMaintenanceWindowRequest(args)
	assert(args, "You must provdide an argument table when creating UpdateMaintenanceWindowRequest")
	local t = { 
		["Cutoff"] = args["Cutoff"],
		["Name"] = args["Name"],
		["Schedule"] = args["Schedule"],
		["Enabled"] = args["Enabled"],
		["AllowUnassociatedTargets"] = args["AllowUnassociatedTargets"],
		["WindowId"] = args["WindowId"],
		["Duration"] = args["Duration"],
	}
	asserts.AssertUpdateMaintenanceWindowRequest(t)
	return t
end

function asserts.AssertAutomationExecutionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected AutomationExecutionStatus to be of type 'string'")
end

--  
function M.AutomationExecutionStatus(str)
	asserts.AssertAutomationExecutionStatus(str)
	return str
end

function asserts.AssertS3Region(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Region to be of type 'string'")
	assert(#str <= 20, "Expected string to be max 20 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.S3Region(str)
	asserts.AssertS3Region(str)
	return str
end

function asserts.AssertAssociationStatusName(str)
	assert(str)
	assert(type(str) == "string", "Expected AssociationStatusName to be of type 'string'")
end

--  
function M.AssociationStatusName(str)
	asserts.AssertAssociationStatusName(str)
	return str
end

function asserts.AssertInventoryResultItemKey(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryResultItemKey to be of type 'string'")
end

--  
function M.InventoryResultItemKey(str)
	asserts.AssertInventoryResultItemKey(str)
	return str
end

function asserts.AssertAssociationFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AssociationFilterValue to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AssociationFilterValue(str)
	asserts.AssertAssociationFilterValue(str)
	return str
end

function asserts.AssertInstanceAssociationExecutionSummary(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceAssociationExecutionSummary to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.InstanceAssociationExecutionSummary(str)
	asserts.AssertInstanceAssociationExecutionSummary(str)
	return str
end

function asserts.AssertDocumentStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentStatus to be of type 'string'")
end

--  
function M.DocumentStatus(str)
	asserts.AssertDocumentStatus(str)
	return str
end

function asserts.AssertStatusAdditionalInfo(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusAdditionalInfo to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.StatusAdditionalInfo(str)
	asserts.AssertStatusAdditionalInfo(str)
	return str
end

function asserts.AssertPatchProductFamily(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchProductFamily to be of type 'string'")
end

--  
function M.PatchProductFamily(str)
	asserts.AssertPatchProductFamily(str)
	return str
end

function asserts.AssertPatchDeploymentStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchDeploymentStatus to be of type 'string'")
end

--  
function M.PatchDeploymentStatus(str)
	asserts.AssertPatchDeploymentStatus(str)
	return str
end

function asserts.AssertInventoryItemTypeName(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryItemTypeName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.InventoryItemTypeName(str)
	asserts.AssertInventoryItemTypeName(str)
	return str
end

function asserts.AssertDocumentVersionNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentVersionNumber to be of type 'string'")
end

--  
function M.DocumentVersionNumber(str)
	asserts.AssertDocumentVersionNumber(str)
	return str
end

function asserts.AssertStatusDetails(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusDetails to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
end

--  
function M.StatusDetails(str)
	asserts.AssertStatusDetails(str)
	return str
end

function asserts.AssertPatchMsrcSeverity(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchMsrcSeverity to be of type 'string'")
end

--  
function M.PatchMsrcSeverity(str)
	asserts.AssertPatchMsrcSeverity(str)
	return str
end

function asserts.AssertInventoryFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryFilterValue to be of type 'string'")
end

--  
function M.InventoryFilterValue(str)
	asserts.AssertInventoryFilterValue(str)
	return str
end

function asserts.AssertInventoryResultEntityId(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryResultEntityId to be of type 'string'")
end

--  
function M.InventoryResultEntityId(str)
	asserts.AssertInventoryResultEntityId(str)
	return str
end

function asserts.AssertDocumentParameterType(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentParameterType to be of type 'string'")
end

--  
function M.DocumentParameterType(str)
	asserts.AssertDocumentParameterType(str)
	return str
end

function asserts.AssertBatchErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected BatchErrorMessage to be of type 'string'")
end

--  
function M.BatchErrorMessage(str)
	asserts.AssertBatchErrorMessage(str)
	return str
end

function asserts.AssertDocumentParameterDefaultValue(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentParameterDefaultValue to be of type 'string'")
end

--  
function M.DocumentParameterDefaultValue(str)
	asserts.AssertDocumentParameterDefaultValue(str)
	return str
end

function asserts.AssertOwnerInformation(str)
	assert(str)
	assert(type(str) == "string", "Expected OwnerInformation to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.OwnerInformation(str)
	asserts.AssertOwnerInformation(str)
	return str
end

function asserts.AssertParametersFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ParametersFilterValue to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ParametersFilterValue(str)
	asserts.AssertParametersFilterValue(str)
	return str
end

function asserts.AssertDocumentHash(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentHash to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.DocumentHash(str)
	asserts.AssertDocumentHash(str)
	return str
end

function asserts.AssertInventoryFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryFilterKey to be of type 'string'")
	assert(#str <= 200, "Expected string to be max 200 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.InventoryFilterKey(str)
	asserts.AssertInventoryFilterKey(str)
	return str
end

function asserts.AssertClientToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientToken to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ClientToken(str)
	asserts.AssertClientToken(str)
	return str
end

function asserts.AssertMaintenanceWindowExecutionTaskInvocationParameters(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowExecutionTaskInvocationParameters to be of type 'string'")
end

--  
function M.MaintenanceWindowExecutionTaskInvocationParameters(str)
	asserts.AssertMaintenanceWindowExecutionTaskInvocationParameters(str)
	return str
end

function asserts.AssertPatchId(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchId to be of type 'string'")
end

--  
function M.PatchId(str)
	asserts.AssertPatchId(str)
	return str
end

function asserts.AssertPatchClassification(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchClassification to be of type 'string'")
end

--  
function M.PatchClassification(str)
	asserts.AssertPatchClassification(str)
	return str
end

function asserts.AssertInstanceInformationFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceInformationFilterKey to be of type 'string'")
end

--  
function M.InstanceInformationFilterKey(str)
	asserts.AssertInstanceInformationFilterKey(str)
	return str
end

function asserts.AssertDocumentName(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentName to be of type 'string'")
end

--  
function M.DocumentName(str)
	asserts.AssertDocumentName(str)
	return str
end

function asserts.AssertMaintenanceWindowTaskArn(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowTaskArn to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MaintenanceWindowTaskArn(str)
	asserts.AssertMaintenanceWindowTaskArn(str)
	return str
end

function asserts.AssertParameterKeyId(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterKeyId to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ParameterKeyId(str)
	asserts.AssertParameterKeyId(str)
	return str
end

function asserts.AssertPatchOrchestratorFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchOrchestratorFilterKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PatchOrchestratorFilterKey(str)
	asserts.AssertPatchOrchestratorFilterKey(str)
	return str
end

function asserts.AssertAssociationFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected AssociationFilterKey to be of type 'string'")
end

--  
function M.AssociationFilterKey(str)
	asserts.AssertAssociationFilterKey(str)
	return str
end

function asserts.AssertResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceId to be of type 'string'")
end

--  
function M.ResourceId(str)
	asserts.AssertResourceId(str)
	return str
end

function asserts.AssertDocumentARN(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentARN to be of type 'string'")
end

--  
function M.DocumentARN(str)
	asserts.AssertDocumentARN(str)
	return str
end

function asserts.AssertMaintenanceWindowExecutionTaskExecutionId(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowExecutionTaskExecutionId to be of type 'string'")
end

--  
function M.MaintenanceWindowExecutionTaskExecutionId(str)
	asserts.AssertMaintenanceWindowExecutionTaskExecutionId(str)
	return str
end

function asserts.AssertMaintenanceWindowTargetId(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowTargetId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 36, "Expected string to be min 36 characters")
end

--  
function M.MaintenanceWindowTargetId(str)
	asserts.AssertMaintenanceWindowTargetId(str)
	return str
end

function asserts.AssertInventoryItemTypeNameFilter(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryItemTypeNameFilter to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
end

--  
function M.InventoryItemTypeNameFilter(str)
	asserts.AssertInventoryItemTypeNameFilter(str)
	return str
end

function asserts.AssertDocumentSchemaVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentSchemaVersion to be of type 'string'")
end

--  
function M.DocumentSchemaVersion(str)
	asserts.AssertDocumentSchemaVersion(str)
	return str
end

function asserts.AssertInstanceInformationStringFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceInformationStringFilterKey to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.InstanceInformationStringFilterKey(str)
	asserts.AssertInstanceInformationStringFilterKey(str)
	return str
end

function asserts.AssertUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected Url to be of type 'string'")
end

--  
function M.Url(str)
	asserts.AssertUrl(str)
	return str
end

function asserts.AssertMaintenanceWindowExecutionTaskInvocationId(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowExecutionTaskInvocationId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 36, "Expected string to be min 36 characters")
end

--  
function M.MaintenanceWindowExecutionTaskInvocationId(str)
	asserts.AssertMaintenanceWindowExecutionTaskInvocationId(str)
	return str
end

function asserts.AssertDocumentVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentVersion to be of type 'string'")
end

--  
function M.DocumentVersion(str)
	asserts.AssertDocumentVersion(str)
	return str
end

function asserts.AssertScheduleExpression(str)
	assert(str)
	assert(type(str) == "string", "Expected ScheduleExpression to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ScheduleExpression(str)
	asserts.AssertScheduleExpression(str)
	return str
end

function asserts.AssertInventoryItemAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryItemAttributeName to be of type 'string'")
end

--  
function M.InventoryItemAttributeName(str)
	asserts.AssertInventoryItemAttributeName(str)
	return str
end

function asserts.AssertNotificationArn(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationArn to be of type 'string'")
end

--  
function M.NotificationArn(str)
	asserts.AssertNotificationArn(str)
	return str
end

function asserts.AssertParameterStringQueryOption(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterStringQueryOption to be of type 'string'")
	assert(#str <= 10, "Expected string to be max 10 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ParameterStringQueryOption(str)
	asserts.AssertParameterStringQueryOption(str)
	return str
end

function asserts.AssertDefaultInstanceName(str)
	assert(str)
	assert(type(str) == "string", "Expected DefaultInstanceName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.DefaultInstanceName(str)
	asserts.AssertDefaultInstanceName(str)
	return str
end

function asserts.AssertMaintenanceWindowTaskParameterName(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowTaskParameterName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MaintenanceWindowTaskParameterName(str)
	asserts.AssertMaintenanceWindowTaskParameterName(str)
	return str
end

function asserts.AssertAutomationParameterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AutomationParameterValue to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AutomationParameterValue(str)
	asserts.AssertAutomationParameterValue(str)
	return str
end

function asserts.AssertDescribeActivationsFilterKeys(str)
	assert(str)
	assert(type(str) == "string", "Expected DescribeActivationsFilterKeys to be of type 'string'")
end

--  
function M.DescribeActivationsFilterKeys(str)
	asserts.AssertDescribeActivationsFilterKeys(str)
	return str
end

function asserts.AssertActivationDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ActivationDescription to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.ActivationDescription(str)
	asserts.AssertActivationDescription(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertInventoryQueryOperatorType(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryQueryOperatorType to be of type 'string'")
end

--  
function M.InventoryQueryOperatorType(str)
	asserts.AssertInventoryQueryOperatorType(str)
	return str
end

function asserts.AssertCommandId(str)
	assert(str)
	assert(type(str) == "string", "Expected CommandId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 36, "Expected string to be min 36 characters")
end

--  
function M.CommandId(str)
	asserts.AssertCommandId(str)
	return str
end

function asserts.AssertAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeValue to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.AttributeValue(str)
	asserts.AssertAttributeValue(str)
	return str
end

function asserts.AssertPatchProduct(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchProduct to be of type 'string'")
end

--  
function M.PatchProduct(str)
	asserts.AssertPatchProduct(str)
	return str
end

function asserts.AssertPatchKbNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchKbNumber to be of type 'string'")
end

--  
function M.PatchKbNumber(str)
	asserts.AssertPatchKbNumber(str)
	return str
end

function asserts.AssertMaintenanceWindowTaskTargetId(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowTaskTargetId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
end

--  
function M.MaintenanceWindowTaskTargetId(str)
	asserts.AssertMaintenanceWindowTaskTargetId(str)
	return str
end

function asserts.AssertBaselineDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected BaselineDescription to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.BaselineDescription(str)
	asserts.AssertBaselineDescription(str)
	return str
end

function asserts.AssertPatchOperationType(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchOperationType to be of type 'string'")
end

--  
function M.PatchOperationType(str)
	asserts.AssertPatchOperationType(str)
	return str
end

function asserts.AssertCommandInvocationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CommandInvocationStatus to be of type 'string'")
end

--  
function M.CommandInvocationStatus(str)
	asserts.AssertCommandInvocationStatus(str)
	return str
end

function asserts.AssertMaintenanceWindowExecutionId(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowExecutionId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 36, "Expected string to be min 36 characters")
end

--  
function M.MaintenanceWindowExecutionId(str)
	asserts.AssertMaintenanceWindowExecutionId(str)
	return str
end

function asserts.AssertMaintenanceWindowExecutionStatusDetails(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowExecutionStatusDetails to be of type 'string'")
	assert(#str <= 250, "Expected string to be max 250 characters")
end

--  
function M.MaintenanceWindowExecutionStatusDetails(str)
	asserts.AssertMaintenanceWindowExecutionStatusDetails(str)
	return str
end

function asserts.AssertPatchContentUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchContentUrl to be of type 'string'")
end

--  
function M.PatchContentUrl(str)
	asserts.AssertPatchContentUrl(str)
	return str
end

function asserts.AssertAssociationId(str)
	assert(str)
	assert(type(str) == "string", "Expected AssociationId to be of type 'string'")
end

--  
function M.AssociationId(str)
	asserts.AssertAssociationId(str)
	return str
end

function asserts.AssertSnapshotId(str)
	assert(str)
	assert(type(str) == "string", "Expected SnapshotId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 36, "Expected string to be min 36 characters")
end

--  
function M.SnapshotId(str)
	asserts.AssertSnapshotId(str)
	return str
end

function asserts.AssertAllowedPattern(str)
	assert(str)
	assert(type(str) == "string", "Expected AllowedPattern to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.AllowedPattern(str)
	asserts.AssertAllowedPattern(str)
	return str
end

function asserts.AssertMaintenanceWindowExecutionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowExecutionStatus to be of type 'string'")
end

--  
function M.MaintenanceWindowExecutionStatus(str)
	asserts.AssertMaintenanceWindowExecutionStatus(str)
	return str
end

function asserts.AssertDocumentFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentFilterKey to be of type 'string'")
end

--  
function M.DocumentFilterKey(str)
	asserts.AssertDocumentFilterKey(str)
	return str
end

function asserts.AssertParameterName(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterName to be of type 'string'")
end

--  
function M.ParameterName(str)
	asserts.AssertParameterName(str)
	return str
end

function asserts.AssertParameterStringFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterStringFilterValue to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ParameterStringFilterValue(str)
	asserts.AssertParameterStringFilterValue(str)
	return str
end

function asserts.AssertParameterType(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterType to be of type 'string'")
end

--  
function M.ParameterType(str)
	asserts.AssertParameterType(str)
	return str
end

function asserts.AssertDocumentHashType(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentHashType to be of type 'string'")
end

--  
function M.DocumentHashType(str)
	asserts.AssertDocumentHashType(str)
	return str
end

function asserts.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
end

--  
function M.Version(str)
	asserts.AssertVersion(str)
	return str
end

function asserts.AssertComputerName(str)
	assert(str)
	assert(type(str) == "string", "Expected ComputerName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ComputerName(str)
	asserts.AssertComputerName(str)
	return str
end

function asserts.AssertStandardOutputContent(str)
	assert(str)
	assert(type(str) == "string", "Expected StandardOutputContent to be of type 'string'")
	assert(#str <= 24000, "Expected string to be max 24000 characters")
end

--  
function M.StandardOutputContent(str)
	asserts.AssertStandardOutputContent(str)
	return str
end

function asserts.AssertAutomationParameterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected AutomationParameterKey to be of type 'string'")
	assert(#str <= 30, "Expected string to be max 30 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AutomationParameterKey(str)
	asserts.AssertAutomationParameterKey(str)
	return str
end

function asserts.AssertPatchFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchFilterValue to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PatchFilterValue(str)
	asserts.AssertPatchFilterValue(str)
	return str
end

function asserts.AssertFault(str)
	assert(str)
	assert(type(str) == "string", "Expected Fault to be of type 'string'")
end

--  
function M.Fault(str)
	asserts.AssertFault(str)
	return str
end

function asserts.AssertInventoryItemContentHash(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryItemContentHash to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.InventoryItemContentHash(str)
	asserts.AssertInventoryItemContentHash(str)
	return str
end

function asserts.AssertParameterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterValue to be of type 'string'")
end

--  
function M.ParameterValue(str)
	asserts.AssertParameterValue(str)
	return str
end

function asserts.AssertMaintenanceWindowTaskType(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowTaskType to be of type 'string'")
end

--  
function M.MaintenanceWindowTaskType(str)
	asserts.AssertMaintenanceWindowTaskType(str)
	return str
end

function asserts.AssertSnapshotDownloadUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected SnapshotDownloadUrl to be of type 'string'")
end

--  
function M.SnapshotDownloadUrl(str)
	asserts.AssertSnapshotDownloadUrl(str)
	return str
end

function asserts.AssertParameterStringFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterStringFilterKey to be of type 'string'")
	assert(#str <= 132, "Expected string to be max 132 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ParameterStringFilterKey(str)
	asserts.AssertParameterStringFilterKey(str)
	return str
end

function asserts.AssertCommandStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CommandStatus to be of type 'string'")
end

--  
function M.CommandStatus(str)
	asserts.AssertCommandStatus(str)
	return str
end

function asserts.AssertResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceType to be of type 'string'")
end

--  
function M.ResourceType(str)
	asserts.AssertResourceType(str)
	return str
end

function asserts.AssertTargetKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TargetKey(str)
	asserts.AssertTargetKey(str)
	return str
end

function asserts.AssertManagedInstanceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ManagedInstanceId to be of type 'string'")
end

--  
function M.ManagedInstanceId(str)
	asserts.AssertManagedInstanceId(str)
	return str
end

function asserts.AssertDocumentType(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentType to be of type 'string'")
end

--  
function M.DocumentType(str)
	asserts.AssertDocumentType(str)
	return str
end

function asserts.AssertAutomationExecutionFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AutomationExecutionFilterValue to be of type 'string'")
	assert(#str <= 150, "Expected string to be max 150 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AutomationExecutionFilterValue(str)
	asserts.AssertAutomationExecutionFilterValue(str)
	return str
end

function asserts.AssertCommandFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected CommandFilterValue to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CommandFilterValue(str)
	asserts.AssertCommandFilterValue(str)
	return str
end

function asserts.AssertPlatformType(str)
	assert(str)
	assert(type(str) == "string", "Expected PlatformType to be of type 'string'")
end

--  
function M.PlatformType(str)
	asserts.AssertPlatformType(str)
	return str
end

function asserts.AssertDocumentOwner(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentOwner to be of type 'string'")
end

--  
function M.DocumentOwner(str)
	asserts.AssertDocumentOwner(str)
	return str
end

function asserts.AssertPSParameterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected PSParameterValue to be of type 'string'")
	assert(#str <= 4096, "Expected string to be max 4096 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PSParameterValue(str)
	asserts.AssertPSParameterValue(str)
	return str
end

function asserts.AssertNotificationType(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationType to be of type 'string'")
end

--  
function M.NotificationType(str)
	asserts.AssertNotificationType(str)
	return str
end

function asserts.AssertDocumentContent(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentContent to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DocumentContent(str)
	asserts.AssertDocumentContent(str)
	return str
end

function asserts.AssertMaintenanceWindowId(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowId to be of type 'string'")
	assert(#str <= 20, "Expected string to be max 20 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.MaintenanceWindowId(str)
	asserts.AssertMaintenanceWindowId(str)
	return str
end

function asserts.AssertMaintenanceWindowTaskId(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowTaskId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 36, "Expected string to be min 36 characters")
end

--  
function M.MaintenanceWindowTaskId(str)
	asserts.AssertMaintenanceWindowTaskId(str)
	return str
end

function asserts.AssertActivationCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ActivationCode to be of type 'string'")
	assert(#str <= 250, "Expected string to be max 250 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.ActivationCode(str)
	asserts.AssertActivationCode(str)
	return str
end

function asserts.AssertCommandPluginName(str)
	assert(str)
	assert(type(str) == "string", "Expected CommandPluginName to be of type 'string'")
	assert(#str >= 4, "Expected string to be min 4 characters")
end

--  
function M.CommandPluginName(str)
	asserts.AssertCommandPluginName(str)
	return str
end

function asserts.AssertAutomationExecutionFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected AutomationExecutionFilterKey to be of type 'string'")
end

--  
function M.AutomationExecutionFilterKey(str)
	asserts.AssertAutomationExecutionFilterKey(str)
	return str
end

function asserts.AssertMaxErrors(str)
	assert(str)
	assert(type(str) == "string", "Expected MaxErrors to be of type 'string'")
	assert(#str <= 7, "Expected string to be max 7 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MaxErrors(str)
	asserts.AssertMaxErrors(str)
	return str
end

function asserts.AssertNotificationEvent(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationEvent to be of type 'string'")
end

--  
function M.NotificationEvent(str)
	asserts.AssertNotificationEvent(str)
	return str
end

function asserts.AssertPatchComplianceDataState(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchComplianceDataState to be of type 'string'")
end

--  
function M.PatchComplianceDataState(str)
	asserts.AssertPatchComplianceDataState(str)
	return str
end

function asserts.AssertPatchOrchestratorFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchOrchestratorFilterValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PatchOrchestratorFilterValue(str)
	asserts.AssertPatchOrchestratorFilterValue(str)
	return str
end

function asserts.AssertS3KeyPrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected S3KeyPrefix to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
end

--  
function M.S3KeyPrefix(str)
	asserts.AssertS3KeyPrefix(str)
	return str
end

function asserts.AssertMaintenanceWindowTaskParameterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowTaskParameterValue to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MaintenanceWindowTaskParameterValue(str)
	asserts.AssertMaintenanceWindowTaskParameterValue(str)
	return str
end

function asserts.AssertInstanceTagName(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceTagName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.InstanceTagName(str)
	asserts.AssertInstanceTagName(str)
	return str
end

function asserts.AssertBaselineId(str)
	assert(str)
	assert(type(str) == "string", "Expected BaselineId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.BaselineId(str)
	asserts.AssertBaselineId(str)
	return str
end

function asserts.AssertAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AttributeName(str)
	asserts.AssertAttributeName(str)
	return str
end

function asserts.AssertParametersFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ParametersFilterKey to be of type 'string'")
end

--  
function M.ParametersFilterKey(str)
	asserts.AssertParametersFilterKey(str)
	return str
end

function asserts.AssertPingStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected PingStatus to be of type 'string'")
end

--  
function M.PingStatus(str)
	asserts.AssertPingStatus(str)
	return str
end

function asserts.AssertDocumentSha1(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentSha1 to be of type 'string'")
end

--  
function M.DocumentSha1(str)
	asserts.AssertDocumentSha1(str)
	return str
end

function asserts.AssertInvocationTraceOutput(str)
	assert(str)
	assert(type(str) == "string", "Expected InvocationTraceOutput to be of type 'string'")
	assert(#str <= 2500, "Expected string to be max 2500 characters")
end

--  
function M.InvocationTraceOutput(str)
	asserts.AssertInvocationTraceOutput(str)
	return str
end

function asserts.AssertServiceRole(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceRole to be of type 'string'")
end

--  
function M.ServiceRole(str)
	asserts.AssertServiceRole(str)
	return str
end

function asserts.AssertActivationId(str)
	assert(str)
	assert(type(str) == "string", "Expected ActivationId to be of type 'string'")
end

--  
function M.ActivationId(str)
	asserts.AssertActivationId(str)
	return str
end

function asserts.AssertCommandFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected CommandFilterKey to be of type 'string'")
end

--  
function M.CommandFilterKey(str)
	asserts.AssertCommandFilterKey(str)
	return str
end

function asserts.AssertPatchVendor(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchVendor to be of type 'string'")
end

--  
function M.PatchVendor(str)
	asserts.AssertPatchVendor(str)
	return str
end

function asserts.AssertPatchDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchDescription to be of type 'string'")
end

--  
function M.PatchDescription(str)
	asserts.AssertPatchDescription(str)
	return str
end

function asserts.AssertParameterDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterDescription to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ParameterDescription(str)
	asserts.AssertParameterDescription(str)
	return str
end

function asserts.AssertMaintenanceWindowExecutionTaskId(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowExecutionTaskId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 36, "Expected string to be min 36 characters")
end

--  
function M.MaintenanceWindowExecutionTaskId(str)
	asserts.AssertMaintenanceWindowExecutionTaskId(str)
	return str
end

function asserts.AssertIPAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected IPAddress to be of type 'string'")
	assert(#str <= 46, "Expected string to be max 46 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IPAddress(str)
	asserts.AssertIPAddress(str)
	return str
end

function asserts.AssertCommandPluginOutput(str)
	assert(str)
	assert(type(str) == "string", "Expected CommandPluginOutput to be of type 'string'")
	assert(#str <= 2500, "Expected string to be max 2500 characters")
end

--  
function M.CommandPluginOutput(str)
	asserts.AssertCommandPluginOutput(str)
	return str
end

function asserts.AssertAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountId to be of type 'string'")
end

--  
function M.AccountId(str)
	asserts.AssertAccountId(str)
	return str
end

function asserts.AssertPSParameterName(str)
	assert(str)
	assert(type(str) == "string", "Expected PSParameterName to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PSParameterName(str)
	asserts.AssertPSParameterName(str)
	return str
end

function asserts.AssertPatchSeverity(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchSeverity to be of type 'string'")
end

--  
function M.PatchSeverity(str)
	asserts.AssertPatchSeverity(str)
	return str
end

function asserts.AssertInstancePatchStateFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected InstancePatchStateFilterKey to be of type 'string'")
	assert(#str <= 200, "Expected string to be max 200 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.InstancePatchStateFilterKey(str)
	asserts.AssertInstancePatchStateFilterKey(str)
	return str
end

function asserts.AssertStatusMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusMessage to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StatusMessage(str)
	asserts.AssertStatusMessage(str)
	return str
end

function asserts.AssertStatusName(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusName to be of type 'string'")
end

--  
function M.StatusName(str)
	asserts.AssertStatusName(str)
	return str
end

function asserts.AssertDocumentParameterDescrption(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentParameterDescrption to be of type 'string'")
end

--  
function M.DocumentParameterDescrption(str)
	asserts.AssertDocumentParameterDescrption(str)
	return str
end

function asserts.AssertDocumentPermissionType(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentPermissionType to be of type 'string'")
end

--  
function M.DocumentPermissionType(str)
	asserts.AssertDocumentPermissionType(str)
	return str
end

function asserts.AssertDocumentFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentFilterValue to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DocumentFilterValue(str)
	asserts.AssertDocumentFilterValue(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertAutomationActionName(str)
	assert(str)
	assert(type(str) == "string", "Expected AutomationActionName to be of type 'string'")
end

--  
function M.AutomationActionName(str)
	asserts.AssertAutomationActionName(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertStandardErrorContent(str)
	assert(str)
	assert(type(str) == "string", "Expected StandardErrorContent to be of type 'string'")
	assert(#str <= 8000, "Expected string to be max 8000 characters")
end

--  
function M.StandardErrorContent(str)
	asserts.AssertStandardErrorContent(str)
	return str
end

function asserts.AssertPatchLanguage(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchLanguage to be of type 'string'")
end

--  
function M.PatchLanguage(str)
	asserts.AssertPatchLanguage(str)
	return str
end

function asserts.AssertInstanceInformationFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceInformationFilterValue to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.InstanceInformationFilterValue(str)
	asserts.AssertInstanceInformationFilterValue(str)
	return str
end

function asserts.AssertComment(str)
	assert(str)
	assert(type(str) == "string", "Expected Comment to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
end

--  
function M.Comment(str)
	asserts.AssertComment(str)
	return str
end

function asserts.AssertStringDateTime(str)
	assert(str)
	assert(type(str) == "string", "Expected StringDateTime to be of type 'string'")
end

--  
function M.StringDateTime(str)
	asserts.AssertStringDateTime(str)
	return str
end

function asserts.AssertAutomationExecutionId(str)
	assert(str)
	assert(type(str) == "string", "Expected AutomationExecutionId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 36, "Expected string to be min 36 characters")
end

--  
function M.AutomationExecutionId(str)
	asserts.AssertAutomationExecutionId(str)
	return str
end

function asserts.AssertMaintenanceWindowFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowFilterValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MaintenanceWindowFilterValue(str)
	asserts.AssertMaintenanceWindowFilterValue(str)
	return str
end

function asserts.AssertPatchGroup(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchGroup to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PatchGroup(str)
	asserts.AssertPatchGroup(str)
	return str
end

function asserts.AssertAgentErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected AgentErrorCode to be of type 'string'")
	assert(#str <= 10, "Expected string to be max 10 characters")
end

--  
function M.AgentErrorCode(str)
	asserts.AssertAgentErrorCode(str)
	return str
end

function asserts.AssertTargetValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetValue to be of type 'string'")
end

--  
function M.TargetValue(str)
	asserts.AssertTargetValue(str)
	return str
end

function asserts.AssertInventoryAttributeDataType(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryAttributeDataType to be of type 'string'")
end

--  
function M.InventoryAttributeDataType(str)
	asserts.AssertInventoryAttributeDataType(str)
	return str
end

function asserts.AssertDescriptionInDocument(str)
	assert(str)
	assert(type(str) == "string", "Expected DescriptionInDocument to be of type 'string'")
end

--  
function M.DescriptionInDocument(str)
	asserts.AssertDescriptionInDocument(str)
	return str
end

function asserts.AssertPatchTitle(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchTitle to be of type 'string'")
end

--  
function M.PatchTitle(str)
	asserts.AssertPatchTitle(str)
	return str
end

function asserts.AssertPatchFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchFilterKey to be of type 'string'")
end

--  
function M.PatchFilterKey(str)
	asserts.AssertPatchFilterKey(str)
	return str
end

function asserts.AssertDocumentParameterName(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentParameterName to be of type 'string'")
end

--  
function M.DocumentParameterName(str)
	asserts.AssertDocumentParameterName(str)
	return str
end

function asserts.AssertResourceTypeForTagging(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceTypeForTagging to be of type 'string'")
end

--  
function M.ResourceTypeForTagging(str)
	asserts.AssertResourceTypeForTagging(str)
	return str
end

function asserts.AssertCommandPluginStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CommandPluginStatus to be of type 'string'")
end

--  
function M.CommandPluginStatus(str)
	asserts.AssertCommandPluginStatus(str)
	return str
end

function asserts.AssertInstancePatchStateFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected InstancePatchStateFilterValue to be of type 'string'")
end

--  
function M.InstancePatchStateFilterValue(str)
	asserts.AssertInstancePatchStateFilterValue(str)
	return str
end

function asserts.AssertS3BucketName(str)
	assert(str)
	assert(type(str) == "string", "Expected S3BucketName to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.S3BucketName(str)
	asserts.AssertS3BucketName(str)
	return str
end

function asserts.AssertBaselineName(str)
	assert(str)
	assert(type(str) == "string", "Expected BaselineName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.BaselineName(str)
	asserts.AssertBaselineName(str)
	return str
end

function asserts.AssertMaintenanceWindowSchedule(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowSchedule to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MaintenanceWindowSchedule(str)
	asserts.AssertMaintenanceWindowSchedule(str)
	return str
end

function asserts.AssertIamRole(str)
	assert(str)
	assert(type(str) == "string", "Expected IamRole to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.IamRole(str)
	asserts.AssertIamRole(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertInventoryItemCaptureTime(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryItemCaptureTime to be of type 'string'")
end

--  
function M.InventoryItemCaptureTime(str)
	asserts.AssertInventoryItemCaptureTime(str)
	return str
end

function asserts.AssertInstanceId(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceId to be of type 'string'")
end

--  
function M.InstanceId(str)
	asserts.AssertInstanceId(str)
	return str
end

function asserts.AssertMaintenanceWindowResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowResourceType to be of type 'string'")
end

--  
function M.MaintenanceWindowResourceType(str)
	asserts.AssertMaintenanceWindowResourceType(str)
	return str
end

function asserts.AssertInstancePatchStateOperatorType(str)
	assert(str)
	assert(type(str) == "string", "Expected InstancePatchStateOperatorType to be of type 'string'")
end

--  
function M.InstancePatchStateOperatorType(str)
	asserts.AssertInstancePatchStateOperatorType(str)
	return str
end

function asserts.AssertMaintenanceWindowFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowFilterKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MaintenanceWindowFilterKey(str)
	asserts.AssertMaintenanceWindowFilterKey(str)
	return str
end

function asserts.AssertMaxConcurrency(str)
	assert(str)
	assert(type(str) == "string", "Expected MaxConcurrency to be of type 'string'")
	assert(#str <= 7, "Expected string to be max 7 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MaxConcurrency(str)
	asserts.AssertMaxConcurrency(str)
	return str
end

function asserts.AssertPatchMsrcNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchMsrcNumber to be of type 'string'")
end

--  
function M.PatchMsrcNumber(str)
	asserts.AssertPatchMsrcNumber(str)
	return str
end

function asserts.AssertMaintenanceWindowName(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.MaintenanceWindowName(str)
	asserts.AssertMaintenanceWindowName(str)
	return str
end

function asserts.AssertInventoryItemSchemaVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryItemSchemaVersion to be of type 'string'")
end

--  
function M.InventoryItemSchemaVersion(str)
	asserts.AssertInventoryItemSchemaVersion(str)
	return str
end

function asserts.AssertPatchMissingCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PatchMissingCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PatchMissingCount(integer)
	asserts.AssertPatchMissingCount(integer)
	return integer
end

function asserts.AssertRegistrationLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RegistrationLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.RegistrationLimit(integer)
	asserts.AssertRegistrationLimit(integer)
	return integer
end

function asserts.AssertPatchBaselineMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PatchBaselineMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PatchBaselineMaxResults(integer)
	asserts.AssertPatchBaselineMaxResults(integer)
	return integer
end

function asserts.AssertCommandMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected CommandMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.CommandMaxResults(integer)
	asserts.AssertCommandMaxResults(integer)
	return integer
end

function asserts.AssertPatchInstalledOtherCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PatchInstalledOtherCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PatchInstalledOtherCount(integer)
	asserts.AssertPatchInstalledOtherCount(integer)
	return integer
end

function asserts.AssertApproveAfterDays(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ApproveAfterDays to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.ApproveAfterDays(integer)
	asserts.AssertApproveAfterDays(integer)
	return integer
end

function asserts.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	asserts.AssertInteger(integer)
	return integer
end

function asserts.AssertMaxResultsEC2Compatible(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResultsEC2Compatible to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
	assert(integer >= 5, "Expected integer to be min 5")
end

function M.MaxResultsEC2Compatible(integer)
	asserts.AssertMaxResultsEC2Compatible(integer)
	return integer
end

function asserts.AssertResponseCode(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ResponseCode to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ResponseCode(integer)
	asserts.AssertResponseCode(integer)
	return integer
end

function asserts.AssertPatchComplianceMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PatchComplianceMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 10, "Expected integer to be min 10")
end

function M.PatchComplianceMaxResults(integer)
	asserts.AssertPatchComplianceMaxResults(integer)
	return integer
end

function asserts.AssertTimeoutSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TimeoutSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 2592000, "Expected integer to be max 2592000")
	assert(integer >= 30, "Expected integer to be min 30")
end

function M.TimeoutSeconds(integer)
	asserts.AssertTimeoutSeconds(integer)
	return integer
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertPatchInstalledCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PatchInstalledCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PatchInstalledCount(integer)
	asserts.AssertPatchInstalledCount(integer)
	return integer
end

function asserts.AssertInstanceCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected InstanceCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.InstanceCount(integer)
	asserts.AssertInstanceCount(integer)
	return integer
end

function asserts.AssertTargetCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TargetCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.TargetCount(integer)
	asserts.AssertTargetCount(integer)
	return integer
end

function asserts.AssertCompletedCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected CompletedCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.CompletedCount(integer)
	asserts.AssertCompletedCount(integer)
	return integer
end

function asserts.AssertMaintenanceWindowDurationHours(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaintenanceWindowDurationHours to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 24, "Expected integer to be max 24")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaintenanceWindowDurationHours(integer)
	asserts.AssertMaintenanceWindowDurationHours(integer)
	return integer
end

function asserts.AssertGetInventorySchemaMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected GetInventorySchemaMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 200, "Expected integer to be max 200")
	assert(integer >= 50, "Expected integer to be min 50")
end

function M.GetInventorySchemaMaxResults(integer)
	asserts.AssertGetInventorySchemaMaxResults(integer)
	return integer
end

function asserts.AssertPatchFailedCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PatchFailedCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PatchFailedCount(integer)
	asserts.AssertPatchFailedCount(integer)
	return integer
end

function asserts.AssertGetParametersByPathMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected GetParametersByPathMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.GetParametersByPathMaxResults(integer)
	asserts.AssertGetParametersByPathMaxResults(integer)
	return integer
end

function asserts.AssertMaintenanceWindowTaskPriority(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaintenanceWindowTaskPriority to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaintenanceWindowTaskPriority(integer)
	asserts.AssertMaintenanceWindowTaskPriority(integer)
	return integer
end

function asserts.AssertPatchNotApplicableCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PatchNotApplicableCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PatchNotApplicableCount(integer)
	asserts.AssertPatchNotApplicableCount(integer)
	return integer
end

function asserts.AssertEffectiveInstanceAssociationMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected EffectiveInstanceAssociationMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 5, "Expected integer to be max 5")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.EffectiveInstanceAssociationMaxResults(integer)
	asserts.AssertEffectiveInstanceAssociationMaxResults(integer)
	return integer
end

function asserts.AssertMaintenanceWindowCutoff(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaintenanceWindowCutoff to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 23, "Expected integer to be max 23")
end

function M.MaintenanceWindowCutoff(integer)
	asserts.AssertMaintenanceWindowCutoff(integer)
	return integer
end

function asserts.AssertRegistrationsCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RegistrationsCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.RegistrationsCount(integer)
	asserts.AssertRegistrationsCount(integer)
	return integer
end

function asserts.AssertErrorCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ErrorCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ErrorCount(integer)
	asserts.AssertErrorCount(integer)
	return integer
end

function asserts.AssertMaintenanceWindowMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaintenanceWindowMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 10, "Expected integer to be min 10")
end

function M.MaintenanceWindowMaxResults(integer)
	asserts.AssertMaintenanceWindowMaxResults(integer)
	return integer
end

function asserts.AssertDefaultBaseline(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected DefaultBaseline to be of type 'boolean'")
end

function M.DefaultBaseline(boolean)
	asserts.AssertDefaultBaseline(boolean)
	return boolean
end

function asserts.AssertMaintenanceWindowAllowUnassociatedTargets(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected MaintenanceWindowAllowUnassociatedTargets to be of type 'boolean'")
end

function M.MaintenanceWindowAllowUnassociatedTargets(boolean)
	asserts.AssertMaintenanceWindowAllowUnassociatedTargets(boolean)
	return boolean
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertMaintenanceWindowEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected MaintenanceWindowEnabled to be of type 'boolean'")
end

function M.MaintenanceWindowEnabled(boolean)
	asserts.AssertMaintenanceWindowEnabled(boolean)
	return boolean
end

function asserts.AssertAutomationParameterMap(map)
	assert(map)
	assert(type(map) == "table", "Expected AutomationParameterMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAutomationParameterKey(k)
		asserts.AssertAutomationParameterValueList(v)
	end
end

function M.AutomationParameterMap(map)
	asserts.AssertAutomationParameterMap(map)
	return map
end

function asserts.AssertInventoryItemEntry(map)
	assert(map)
	assert(type(map) == "table", "Expected InventoryItemEntry to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAttributeName(k)
		asserts.AssertAttributeValue(v)
	end
end

function M.InventoryItemEntry(map)
	asserts.AssertInventoryItemEntry(map)
	return map
end

function asserts.AssertInstanceAssociationStatusAggregatedCount(map)
	assert(map)
	assert(type(map) == "table", "Expected InstanceAssociationStatusAggregatedCount to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertStatusName(k)
		asserts.AssertInstanceCount(v)
	end
end

function M.InstanceAssociationStatusAggregatedCount(map)
	asserts.AssertInstanceAssociationStatusAggregatedCount(map)
	return map
end

function asserts.AssertMaintenanceWindowTaskParameters(map)
	assert(map)
	assert(type(map) == "table", "Expected MaintenanceWindowTaskParameters to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertMaintenanceWindowTaskParameterName(k)
		asserts.AssertMaintenanceWindowTaskParameterValueExpression(v)
	end
end

function M.MaintenanceWindowTaskParameters(map)
	asserts.AssertMaintenanceWindowTaskParameters(map)
	return map
end

function asserts.AssertInventoryResultItemMap(map)
	assert(map)
	assert(type(map) == "table", "Expected InventoryResultItemMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertInventoryResultItemKey(k)
		asserts.AssertInventoryResultItem(v)
	end
end

function M.InventoryResultItemMap(map)
	asserts.AssertInventoryResultItemMap(map)
	return map
end

function asserts.AssertParameters(map)
	assert(map)
	assert(type(map) == "table", "Expected Parameters to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertParameterName(k)
		asserts.AssertParameterValueList(v)
	end
end

function M.Parameters(map)
	asserts.AssertParameters(map)
	return map
end

function asserts.AssertNormalStringMap(map)
	assert(map)
	assert(type(map) == "table", "Expected NormalStringMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.NormalStringMap(map)
	asserts.AssertNormalStringMap(map)
	return map
end

function asserts.AssertAssociationStatusAggregatedCount(map)
	assert(map)
	assert(type(map) == "table", "Expected AssociationStatusAggregatedCount to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertStatusName(k)
		asserts.AssertInstanceCount(v)
	end
end

function M.AssociationStatusAggregatedCount(map)
	asserts.AssertAssociationStatusAggregatedCount(map)
	return map
end

function asserts.AssertDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DateTime to be of type 'string'")
end

function M.DateTime(timestamp)
	asserts.AssertDateTime(timestamp)
	return timestamp
end

function asserts.AssertExpirationDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected ExpirationDate to be of type 'string'")
end

function M.ExpirationDate(timestamp)
	asserts.AssertExpirationDate(timestamp)
	return timestamp
end

function asserts.AssertPatchOperationEndTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected PatchOperationEndTime to be of type 'string'")
end

function M.PatchOperationEndTime(timestamp)
	asserts.AssertPatchOperationEndTime(timestamp)
	return timestamp
end

function asserts.AssertPatchOperationStartTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected PatchOperationStartTime to be of type 'string'")
end

function M.PatchOperationStartTime(timestamp)
	asserts.AssertPatchOperationStartTime(timestamp)
	return timestamp
end

function asserts.AssertCreatedDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreatedDate to be of type 'string'")
end

function M.CreatedDate(timestamp)
	asserts.AssertCreatedDate(timestamp)
	return timestamp
end

function asserts.AssertPatchInstalledTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected PatchInstalledTime to be of type 'string'")
end

function M.PatchInstalledTime(timestamp)
	asserts.AssertPatchInstalledTime(timestamp)
	return timestamp
end

function asserts.AssertDocumentParameterList(list)
	assert(list)
	assert(type(list) == "table", "Expected DocumentParameterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDocumentParameter(v)
	end
end

--  
-- List of DocumentParameter objects
function M.DocumentParameterList(list)
	asserts.AssertDocumentParameterList(list)
	return list
end

function asserts.AssertInstanceAssociationList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceAssociationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceAssociation(v)
	end
end

--  
-- List of InstanceAssociation objects
function M.InstanceAssociationList(list)
	asserts.AssertInstanceAssociationList(list)
	return list
end

function asserts.AssertParameterStringFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterStringFilterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParameterStringFilter(v)
	end
end

--  
-- List of ParameterStringFilter objects
function M.ParameterStringFilterList(list)
	asserts.AssertParameterStringFilterList(list)
	return list
end

function asserts.AssertInventoryResultEntityList(list)
	assert(list)
	assert(type(list) == "table", "Expected InventoryResultEntityList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInventoryResultEntity(v)
	end
end

--  
-- List of InventoryResultEntity objects
function M.InventoryResultEntityList(list)
	asserts.AssertInventoryResultEntityList(list)
	return list
end

function asserts.AssertAccountIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected AccountIdList to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		asserts.AssertAccountId(v)
	end
end

--  
-- List of AccountId objects
function M.AccountIdList(list)
	asserts.AssertAccountIdList(list)
	return list
end

function asserts.AssertPatchOrchestratorFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchOrchestratorFilterList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		asserts.AssertPatchOrchestratorFilter(v)
	end
end

--  
-- List of PatchOrchestratorFilter objects
function M.PatchOrchestratorFilterList(list)
	asserts.AssertPatchOrchestratorFilterList(list)
	return list
end

function asserts.AssertParametersFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParametersFilterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParametersFilter(v)
	end
end

--  
-- List of ParametersFilter objects
function M.ParametersFilterList(list)
	asserts.AssertParametersFilterList(list)
	return list
end

function asserts.AssertDocumentFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected DocumentFilterList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertDocumentFilter(v)
	end
end

--  
-- List of DocumentFilter objects
function M.DocumentFilterList(list)
	asserts.AssertDocumentFilterList(list)
	return list
end

function asserts.AssertPatchRuleList(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchRuleList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertPatchRule(v)
	end
end

--  
-- List of PatchRule objects
function M.PatchRuleList(list)
	asserts.AssertPatchRuleList(list)
	return list
end

function asserts.AssertEffectivePatchList(list)
	assert(list)
	assert(type(list) == "table", "Expected EffectivePatchList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEffectivePatch(v)
	end
end

--  
-- List of EffectivePatch objects
function M.EffectivePatchList(list)
	asserts.AssertEffectivePatchList(list)
	return list
end

function asserts.AssertMaintenanceWindowIdentityList(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowIdentityList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMaintenanceWindowIdentity(v)
	end
end

--  
-- List of MaintenanceWindowIdentity objects
function M.MaintenanceWindowIdentityList(list)
	asserts.AssertMaintenanceWindowIdentityList(list)
	return list
end

function asserts.AssertPatchOrchestratorFilterValues(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchOrchestratorFilterValues to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPatchOrchestratorFilterValue(v)
	end
end

--  
-- List of PatchOrchestratorFilterValue objects
function M.PatchOrchestratorFilterValues(list)
	asserts.AssertPatchOrchestratorFilterValues(list)
	return list
end

function asserts.AssertMaintenanceWindowExecutionTaskIdentityList(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowExecutionTaskIdentityList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMaintenanceWindowExecutionTaskIdentity(v)
	end
end

--  
-- List of MaintenanceWindowExecutionTaskIdentity objects
function M.MaintenanceWindowExecutionTaskIdentityList(list)
	asserts.AssertMaintenanceWindowExecutionTaskIdentityList(list)
	return list
end

function asserts.AssertPatchGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchGroupList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPatchGroup(v)
	end
end

--  
-- List of PatchGroup objects
function M.PatchGroupList(list)
	asserts.AssertPatchGroupList(list)
	return list
end

function asserts.AssertInstanceInformationList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceInformationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceInformation(v)
	end
end

--  
-- List of InstanceInformation objects
function M.InstanceInformationList(list)
	asserts.AssertInstanceInformationList(list)
	return list
end

function asserts.AssertDescribeActivationsFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected DescribeActivationsFilterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDescribeActivationsFilter(v)
	end
end

--  
-- List of DescribeActivationsFilter objects
function M.DescribeActivationsFilterList(list)
	asserts.AssertDescribeActivationsFilterList(list)
	return list
end

function asserts.AssertPatchFilterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchFilterValueList to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertPatchFilterValue(v)
	end
end

--  
-- List of PatchFilterValue objects
function M.PatchFilterValueList(list)
	asserts.AssertPatchFilterValueList(list)
	return list
end

function asserts.AssertAutomationExecutionFilterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected AutomationExecutionFilterValueList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertAutomationExecutionFilterValue(v)
	end
end

--  
-- List of AutomationExecutionFilterValue objects
function M.AutomationExecutionFilterValueList(list)
	asserts.AssertAutomationExecutionFilterValueList(list)
	return list
end

function asserts.AssertAutomationParameterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected AutomationParameterValueList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertAutomationParameterValue(v)
	end
end

--  
-- List of AutomationParameterValue objects
function M.AutomationParameterValueList(list)
	asserts.AssertAutomationParameterValueList(list)
	return list
end

function asserts.AssertInventoryItemAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected InventoryItemAttributeList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertInventoryItemAttribute(v)
	end
end

--  
-- List of InventoryItemAttribute objects
function M.InventoryItemAttributeList(list)
	asserts.AssertInventoryItemAttributeList(list)
	return list
end

function asserts.AssertInstancePatchStateFilterValues(list)
	assert(list)
	assert(type(list) == "table", "Expected InstancePatchStateFilterValues to be of type ''table")
	assert(#list <= 1, "Expected list to be contain 1 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertInstancePatchStateFilterValue(v)
	end
end

--  
-- List of InstancePatchStateFilterValue objects
function M.InstancePatchStateFilterValues(list)
	asserts.AssertInstancePatchStateFilterValues(list)
	return list
end

function asserts.AssertInstanceIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceIdList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertInstanceId(v)
	end
end

--  
-- List of InstanceId objects
function M.InstanceIdList(list)
	asserts.AssertInstanceIdList(list)
	return list
end

function asserts.AssertCommandList(list)
	assert(list)
	assert(type(list) == "table", "Expected CommandList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCommand(v)
	end
end

--  
-- List of Command objects
function M.CommandList(list)
	asserts.AssertCommandList(list)
	return list
end

function asserts.AssertDocumentIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected DocumentIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDocumentIdentifier(v)
	end
end

--  
-- List of DocumentIdentifier objects
function M.DocumentIdentifierList(list)
	asserts.AssertDocumentIdentifierList(list)
	return list
end

function asserts.AssertParameterStringFilterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterStringFilterValueList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertParameterStringFilterValue(v)
	end
end

--  
-- List of ParameterStringFilterValue objects
function M.ParameterStringFilterValueList(list)
	asserts.AssertParameterStringFilterValueList(list)
	return list
end

function asserts.AssertInventoryFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected InventoryFilterList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertInventoryFilter(v)
	end
end

--  
-- List of InventoryFilter objects
function M.InventoryFilterList(list)
	asserts.AssertInventoryFilterList(list)
	return list
end

function asserts.AssertActivationList(list)
	assert(list)
	assert(type(list) == "table", "Expected ActivationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertActivation(v)
	end
end

--  
-- List of Activation objects
function M.ActivationList(list)
	asserts.AssertActivationList(list)
	return list
end

function asserts.AssertAssociationDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssociationDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAssociationDescription(v)
	end
end

--  
-- List of AssociationDescription objects
function M.AssociationDescriptionList(list)
	asserts.AssertAssociationDescriptionList(list)
	return list
end

function asserts.AssertPatchList(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPatch(v)
	end
end

--  
-- List of Patch objects
function M.PatchList(list)
	asserts.AssertPatchList(list)
	return list
end

function asserts.AssertInstanceInformationStringFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceInformationStringFilterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceInformationStringFilter(v)
	end
end

--  
-- List of InstanceInformationStringFilter objects
function M.InstanceInformationStringFilterList(list)
	asserts.AssertInstanceInformationStringFilterList(list)
	return list
end

function asserts.AssertInventoryItemEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected InventoryItemEntryList to be of type ''table")
	assert(#list <= 10000, "Expected list to be contain 10000 elements")
	for _,v in ipairs(list) do
		asserts.AssertInventoryItemEntry(v)
	end
end

--  
-- List of InventoryItemEntry objects
function M.InventoryItemEntryList(list)
	asserts.AssertInventoryItemEntryList(list)
	return list
end

function asserts.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.StringList(list)
	asserts.AssertStringList(list)
	return list
end

function asserts.AssertCreateAssociationBatchRequestEntries(list)
	assert(list)
	assert(type(list) == "table", "Expected CreateAssociationBatchRequestEntries to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertCreateAssociationBatchRequestEntry(v)
	end
end

--  
-- List of CreateAssociationBatchRequestEntry objects
function M.CreateAssociationBatchRequestEntries(list)
	asserts.AssertCreateAssociationBatchRequestEntries(list)
	return list
end

function asserts.AssertNotificationEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected NotificationEventList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNotificationEvent(v)
	end
end

--  
-- List of NotificationEvent objects
function M.NotificationEventList(list)
	asserts.AssertNotificationEventList(list)
	return list
end

function asserts.AssertDocumentVersionList(list)
	assert(list)
	assert(type(list) == "table", "Expected DocumentVersionList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertDocumentVersionInfo(v)
	end
end

--  
-- List of DocumentVersionInfo objects
function M.DocumentVersionList(list)
	asserts.AssertDocumentVersionList(list)
	return list
end

function asserts.AssertMaintenanceWindowTargetList(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowTargetList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMaintenanceWindowTarget(v)
	end
end

--  
-- List of MaintenanceWindowTarget objects
function M.MaintenanceWindowTargetList(list)
	asserts.AssertMaintenanceWindowTargetList(list)
	return list
end

function asserts.AssertMaintenanceWindowFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowFilterList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		asserts.AssertMaintenanceWindowFilter(v)
	end
end

--  
-- List of MaintenanceWindowFilter objects
function M.MaintenanceWindowFilterList(list)
	asserts.AssertMaintenanceWindowFilterList(list)
	return list
end

function asserts.AssertMaintenanceWindowFilterValues(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowFilterValues to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMaintenanceWindowFilterValue(v)
	end
end

--  
-- List of MaintenanceWindowFilterValue objects
function M.MaintenanceWindowFilterValues(list)
	asserts.AssertMaintenanceWindowFilterValues(list)
	return list
end

function asserts.AssertMaintenanceWindowExecutionTaskInvocationIdentityList(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowExecutionTaskInvocationIdentityList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMaintenanceWindowExecutionTaskInvocationIdentity(v)
	end
end

--  
-- List of MaintenanceWindowExecutionTaskInvocationIdentity objects
function M.MaintenanceWindowExecutionTaskInvocationIdentityList(list)
	asserts.AssertMaintenanceWindowExecutionTaskInvocationIdentityList(list)
	return list
end

function asserts.AssertPatchBaselineIdentityList(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchBaselineIdentityList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPatchBaselineIdentity(v)
	end
end

--  
-- List of PatchBaselineIdentity objects
function M.PatchBaselineIdentityList(list)
	asserts.AssertPatchBaselineIdentityList(list)
	return list
end

function asserts.AssertInventoryFilterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected InventoryFilterValueList to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertInventoryFilterValue(v)
	end
end

--  
-- List of InventoryFilterValue objects
function M.InventoryFilterValueList(list)
	asserts.AssertInventoryFilterValueList(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	asserts.AssertTagList(list)
	return list
end

function asserts.AssertInstanceInformationFilterValueSet(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceInformationFilterValueSet to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertInstanceInformationFilterValue(v)
	end
end

--  
-- List of InstanceInformationFilterValue objects
function M.InstanceInformationFilterValueSet(list)
	asserts.AssertInstanceInformationFilterValueSet(list)
	return list
end

function asserts.AssertCommandFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected CommandFilterList to be of type ''table")
	assert(#list <= 3, "Expected list to be contain 3 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertCommandFilter(v)
	end
end

--  
-- List of CommandFilter objects
function M.CommandFilterList(list)
	asserts.AssertCommandFilterList(list)
	return list
end

function asserts.AssertAssociationFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssociationFilterList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertAssociationFilter(v)
	end
end

--  
-- List of AssociationFilter objects
function M.AssociationFilterList(list)
	asserts.AssertAssociationFilterList(list)
	return list
end

function asserts.AssertMaintenanceWindowExecutionTaskIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowExecutionTaskIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMaintenanceWindowExecutionTaskId(v)
	end
end

--  
-- List of MaintenanceWindowExecutionTaskId objects
function M.MaintenanceWindowExecutionTaskIdList(list)
	asserts.AssertMaintenanceWindowExecutionTaskIdList(list)
	return list
end

function asserts.AssertAutomationExecutionMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected AutomationExecutionMetadataList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertAutomationExecutionMetadata(v)
	end
end

--  
-- List of AutomationExecutionMetadata objects
function M.AutomationExecutionMetadataList(list)
	asserts.AssertAutomationExecutionMetadataList(list)
	return list
end

function asserts.AssertPatchComplianceDataList(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchComplianceDataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPatchComplianceData(v)
	end
end

--  
-- List of PatchComplianceData objects
function M.PatchComplianceDataList(list)
	asserts.AssertPatchComplianceDataList(list)
	return list
end

function asserts.AssertParametersFilterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParametersFilterValueList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertParametersFilterValue(v)
	end
end

--  
-- List of ParametersFilterValue objects
function M.ParametersFilterValueList(list)
	asserts.AssertParametersFilterValueList(list)
	return list
end

function asserts.AssertStepExecutionList(list)
	assert(list)
	assert(type(list) == "table", "Expected StepExecutionList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertStepExecution(v)
	end
end

--  
-- List of StepExecution objects
function M.StepExecutionList(list)
	asserts.AssertStepExecutionList(list)
	return list
end

function asserts.AssertPatchIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchIdList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertPatchId(v)
	end
end

--  
-- List of PatchId objects
function M.PatchIdList(list)
	asserts.AssertPatchIdList(list)
	return list
end

function asserts.AssertFailedCreateAssociationList(list)
	assert(list)
	assert(type(list) == "table", "Expected FailedCreateAssociationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFailedCreateAssociation(v)
	end
end

--  
-- List of FailedCreateAssociation objects
function M.FailedCreateAssociationList(list)
	asserts.AssertFailedCreateAssociationList(list)
	return list
end

function asserts.AssertTargets(list)
	assert(list)
	assert(type(list) == "table", "Expected Targets to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		asserts.AssertTarget(v)
	end
end

--  
-- List of Target objects
function M.Targets(list)
	asserts.AssertTargets(list)
	return list
end

function asserts.AssertMaintenanceWindowTaskParameterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowTaskParameterValueList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMaintenanceWindowTaskParameterValue(v)
	end
end

--  
-- List of MaintenanceWindowTaskParameterValue objects
function M.MaintenanceWindowTaskParameterValueList(list)
	asserts.AssertMaintenanceWindowTaskParameterValueList(list)
	return list
end

function asserts.AssertParameterMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParameterMetadata(v)
	end
end

--  
-- List of ParameterMetadata objects
function M.ParameterMetadataList(list)
	asserts.AssertParameterMetadataList(list)
	return list
end

function asserts.AssertInstancePatchStatesList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstancePatchStatesList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertInstancePatchState(v)
	end
end

--  
-- List of InstancePatchState objects
function M.InstancePatchStatesList(list)
	asserts.AssertInstancePatchStatesList(list)
	return list
end

function asserts.AssertResultAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResultAttributeList to be of type ''table")
	assert(#list <= 1, "Expected list to be contain 1 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertResultAttribute(v)
	end
end

--  
-- List of ResultAttribute objects
function M.ResultAttributeList(list)
	asserts.AssertResultAttributeList(list)
	return list
end

function asserts.AssertInstancePatchStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstancePatchStateList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstancePatchState(v)
	end
end

--  
-- List of InstancePatchState objects
function M.InstancePatchStateList(list)
	asserts.AssertInstancePatchStateList(list)
	return list
end

function asserts.AssertInventoryItemSchemaResultList(list)
	assert(list)
	assert(type(list) == "table", "Expected InventoryItemSchemaResultList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInventoryItemSchema(v)
	end
end

--  
-- List of InventoryItemSchema objects
function M.InventoryItemSchemaResultList(list)
	asserts.AssertInventoryItemSchemaResultList(list)
	return list
end

function asserts.AssertPlatformTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected PlatformTypeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPlatformType(v)
	end
end

--  
-- List of PlatformType objects
function M.PlatformTypeList(list)
	asserts.AssertPlatformTypeList(list)
	return list
end

function asserts.AssertPatchGroupPatchBaselineMappingList(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchGroupPatchBaselineMappingList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPatchGroupPatchBaselineMapping(v)
	end
end

--  
-- List of PatchGroupPatchBaselineMapping objects
function M.PatchGroupPatchBaselineMappingList(list)
	asserts.AssertPatchGroupPatchBaselineMappingList(list)
	return list
end

function asserts.AssertInstanceAssociationStatusInfos(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceAssociationStatusInfos to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceAssociationStatusInfo(v)
	end
end

--  
-- List of InstanceAssociationStatusInfo objects
function M.InstanceAssociationStatusInfos(list)
	asserts.AssertInstanceAssociationStatusInfos(list)
	return list
end

function asserts.AssertMaintenanceWindowExecutionList(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowExecutionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMaintenanceWindowExecution(v)
	end
end

--  
-- List of MaintenanceWindowExecution objects
function M.MaintenanceWindowExecutionList(list)
	asserts.AssertMaintenanceWindowExecutionList(list)
	return list
end

function asserts.AssertPatchFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchFilterList to be of type ''table")
	assert(#list <= 4, "Expected list to be contain 4 elements")
	for _,v in ipairs(list) do
		asserts.AssertPatchFilter(v)
	end
end

--  
-- List of PatchFilter objects
function M.PatchFilterList(list)
	asserts.AssertPatchFilterList(list)
	return list
end

function asserts.AssertInstanceInformationFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceInformationFilterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertInstanceInformationFilter(v)
	end
end

--  
-- List of InstanceInformationFilter objects
function M.InstanceInformationFilterList(list)
	asserts.AssertInstanceInformationFilterList(list)
	return list
end

function asserts.AssertAutomationExecutionFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected AutomationExecutionFilterList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertAutomationExecutionFilter(v)
	end
end

--  
-- List of AutomationExecutionFilter objects
function M.AutomationExecutionFilterList(list)
	asserts.AssertAutomationExecutionFilterList(list)
	return list
end

function asserts.AssertMaintenanceWindowTaskList(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowTaskList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMaintenanceWindowTask(v)
	end
end

--  
-- List of MaintenanceWindowTask objects
function M.MaintenanceWindowTaskList(list)
	asserts.AssertMaintenanceWindowTaskList(list)
	return list
end

function asserts.AssertCommandPluginList(list)
	assert(list)
	assert(type(list) == "table", "Expected CommandPluginList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCommandPlugin(v)
	end
end

--  
-- List of CommandPlugin objects
function M.CommandPluginList(list)
	asserts.AssertCommandPluginList(list)
	return list
end

function asserts.AssertKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected KeyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.KeyList(list)
	asserts.AssertKeyList(list)
	return list
end

function asserts.AssertMaintenanceWindowTaskParametersList(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowTaskParametersList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMaintenanceWindowTaskParameters(v)
	end
end

--  
-- List of MaintenanceWindowTaskParameters objects
function M.MaintenanceWindowTaskParametersList(list)
	asserts.AssertMaintenanceWindowTaskParametersList(list)
	return list
end

function asserts.AssertInstancePatchStateFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstancePatchStateFilterList to be of type ''table")
	assert(#list <= 4, "Expected list to be contain 4 elements")
	for _,v in ipairs(list) do
		asserts.AssertInstancePatchStateFilter(v)
	end
end

--  
-- List of InstancePatchStateFilter objects
function M.InstancePatchStateFilterList(list)
	asserts.AssertInstancePatchStateFilterList(list)
	return list
end

function asserts.AssertTargetValues(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetValues to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertTargetValue(v)
	end
end

--  
-- List of TargetValue objects
function M.TargetValues(list)
	asserts.AssertTargetValues(list)
	return list
end

function asserts.AssertParameterNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterNameList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertPSParameterName(v)
	end
end

--  
-- List of PSParameterName objects
function M.ParameterNameList(list)
	asserts.AssertParameterNameList(list)
	return list
end

function asserts.AssertParameterList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParameter(v)
	end
end

--  
-- List of Parameter objects
function M.ParameterList(list)
	asserts.AssertParameterList(list)
	return list
end

function asserts.AssertParameterHistoryList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterHistoryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParameterHistory(v)
	end
end

--  
-- List of ParameterHistory objects
function M.ParameterHistoryList(list)
	asserts.AssertParameterHistoryList(list)
	return list
end

function asserts.AssertCommandInvocationList(list)
	assert(list)
	assert(type(list) == "table", "Expected CommandInvocationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCommandInvocation(v)
	end
end

--  
-- List of CommandInvocation objects
function M.CommandInvocationList(list)
	asserts.AssertCommandInvocationList(list)
	return list
end

function asserts.AssertInventoryItemList(list)
	assert(list)
	assert(type(list) == "table", "Expected InventoryItemList to be of type ''table")
	assert(#list <= 30, "Expected list to be contain 30 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertInventoryItem(v)
	end
end

--  
-- List of InventoryItem objects
function M.InventoryItemList(list)
	asserts.AssertInventoryItemList(list)
	return list
end

function asserts.AssertParameterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterValueList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParameterValue(v)
	end
end

--  
-- List of ParameterValue objects
function M.ParameterValueList(list)
	asserts.AssertParameterValueList(list)
	return list
end

function asserts.AssertAssociationList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssociationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAssociation(v)
	end
end

--  
-- List of Association objects
function M.AssociationList(list)
	asserts.AssertAssociationList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "ssm.amazonaws.com"
		end
	end
	local ss = { "ssm" }
	if use_dualstack then
		ss[#ss + 1] = "dualstack"
	end
	ss[#ss + 1] = region
	ss[#ss + 1] = "amazonaws.com"
	if region == "cn-north-1" then
		ss[#ss + 1] = "cn"
	end
	return table.concat(ss, ".")
end


function M.init(config)
	assert(config, "You must provide a config table")
	assert(config.region, "You must provide a region in the config table")

	settings.service = M.metadata.endpoint_prefix
	settings.protocol = M.metadata.protocol
	settings.region = config.region
	settings.endpoint = config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
	settings.uri = scheme_mapper.from_string(config.scheme) .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call DeleteActivation asynchronously, invoking a callback when done
-- @param DeleteActivationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteActivationAsync(DeleteActivationRequest, cb)
	assert(DeleteActivationRequest, "You must provide a DeleteActivationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeleteActivation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteActivationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteActivation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteActivationRequest
-- @return response
-- @return error_message
function M.DeleteActivationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteActivationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdatePatchBaseline asynchronously, invoking a callback when done
-- @param UpdatePatchBaselineRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdatePatchBaselineAsync(UpdatePatchBaselineRequest, cb)
	assert(UpdatePatchBaselineRequest, "You must provide a UpdatePatchBaselineRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.UpdatePatchBaseline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdatePatchBaselineRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdatePatchBaseline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdatePatchBaselineRequest
-- @return response
-- @return error_message
function M.UpdatePatchBaselineSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdatePatchBaselineAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateMaintenanceWindow asynchronously, invoking a callback when done
-- @param CreateMaintenanceWindowRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateMaintenanceWindowAsync(CreateMaintenanceWindowRequest, cb)
	assert(CreateMaintenanceWindowRequest, "You must provide a CreateMaintenanceWindowRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.CreateMaintenanceWindow",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateMaintenanceWindowRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateMaintenanceWindow synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateMaintenanceWindowRequest
-- @return response
-- @return error_message
function M.CreateMaintenanceWindowSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateMaintenanceWindowAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterManagedInstance asynchronously, invoking a callback when done
-- @param DeregisterManagedInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterManagedInstanceAsync(DeregisterManagedInstanceRequest, cb)
	assert(DeregisterManagedInstanceRequest, "You must provide a DeregisterManagedInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeregisterManagedInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeregisterManagedInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeregisterManagedInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeregisterManagedInstanceRequest
-- @return response
-- @return error_message
function M.DeregisterManagedInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterManagedInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePatchBaseline asynchronously, invoking a callback when done
-- @param CreatePatchBaselineRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePatchBaselineAsync(CreatePatchBaselineRequest, cb)
	assert(CreatePatchBaselineRequest, "You must provide a CreatePatchBaselineRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.CreatePatchBaseline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreatePatchBaselineRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePatchBaseline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePatchBaselineRequest
-- @return response
-- @return error_message
function M.CreatePatchBaselineSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePatchBaselineAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDeployablePatchSnapshotForInstance asynchronously, invoking a callback when done
-- @param GetDeployablePatchSnapshotForInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDeployablePatchSnapshotForInstanceAsync(GetDeployablePatchSnapshotForInstanceRequest, cb)
	assert(GetDeployablePatchSnapshotForInstanceRequest, "You must provide a GetDeployablePatchSnapshotForInstanceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetDeployablePatchSnapshotForInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDeployablePatchSnapshotForInstanceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDeployablePatchSnapshotForInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDeployablePatchSnapshotForInstanceRequest
-- @return response
-- @return error_message
function M.GetDeployablePatchSnapshotForInstanceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDeployablePatchSnapshotForInstanceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDocumentPermission asynchronously, invoking a callback when done
-- @param DescribeDocumentPermissionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDocumentPermissionAsync(DescribeDocumentPermissionRequest, cb)
	assert(DescribeDocumentPermissionRequest, "You must provide a DescribeDocumentPermissionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeDocumentPermission",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDocumentPermissionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDocumentPermission synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDocumentPermissionRequest
-- @return response
-- @return error_message
function M.DescribeDocumentPermissionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDocumentPermissionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEffectivePatchesForPatchBaseline asynchronously, invoking a callback when done
-- @param DescribeEffectivePatchesForPatchBaselineRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEffectivePatchesForPatchBaselineAsync(DescribeEffectivePatchesForPatchBaselineRequest, cb)
	assert(DescribeEffectivePatchesForPatchBaselineRequest, "You must provide a DescribeEffectivePatchesForPatchBaselineRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeEffectivePatchesForPatchBaseline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEffectivePatchesForPatchBaselineRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEffectivePatchesForPatchBaseline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEffectivePatchesForPatchBaselineRequest
-- @return response
-- @return error_message
function M.DescribeEffectivePatchesForPatchBaselineSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEffectivePatchesForPatchBaselineAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAvailablePatches asynchronously, invoking a callback when done
-- @param DescribeAvailablePatchesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAvailablePatchesAsync(DescribeAvailablePatchesRequest, cb)
	assert(DescribeAvailablePatchesRequest, "You must provide a DescribeAvailablePatchesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeAvailablePatches",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAvailablePatchesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAvailablePatches synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAvailablePatchesRequest
-- @return response
-- @return error_message
function M.DescribeAvailablePatchesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAvailablePatchesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeInstancePatches asynchronously, invoking a callback when done
-- @param DescribeInstancePatchesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeInstancePatchesAsync(DescribeInstancePatchesRequest, cb)
	assert(DescribeInstancePatchesRequest, "You must provide a DescribeInstancePatchesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeInstancePatches",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeInstancePatchesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeInstancePatches synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeInstancePatchesRequest
-- @return response
-- @return error_message
function M.DescribeInstancePatchesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeInstancePatchesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutParameter asynchronously, invoking a callback when done
-- @param PutParameterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutParameterAsync(PutParameterRequest, cb)
	assert(PutParameterRequest, "You must provide a PutParameterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.PutParameter",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", PutParameterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutParameter synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutParameterRequest
-- @return response
-- @return error_message
function M.PutParameterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutParameterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterDefaultPatchBaseline asynchronously, invoking a callback when done
-- @param RegisterDefaultPatchBaselineRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterDefaultPatchBaselineAsync(RegisterDefaultPatchBaselineRequest, cb)
	assert(RegisterDefaultPatchBaselineRequest, "You must provide a RegisterDefaultPatchBaselineRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.RegisterDefaultPatchBaseline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterDefaultPatchBaselineRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterDefaultPatchBaseline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterDefaultPatchBaselineRequest
-- @return response
-- @return error_message
function M.RegisterDefaultPatchBaselineSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterDefaultPatchBaselineAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDocumentVersions asynchronously, invoking a callback when done
-- @param ListDocumentVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDocumentVersionsAsync(ListDocumentVersionsRequest, cb)
	assert(ListDocumentVersionsRequest, "You must provide a ListDocumentVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.ListDocumentVersions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListDocumentVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDocumentVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDocumentVersionsRequest
-- @return response
-- @return error_message
function M.ListDocumentVersionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDocumentVersionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPatchBaselineForPatchGroup asynchronously, invoking a callback when done
-- @param GetPatchBaselineForPatchGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetPatchBaselineForPatchGroupAsync(GetPatchBaselineForPatchGroupRequest, cb)
	assert(GetPatchBaselineForPatchGroupRequest, "You must provide a GetPatchBaselineForPatchGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetPatchBaselineForPatchGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetPatchBaselineForPatchGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPatchBaselineForPatchGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPatchBaselineForPatchGroupRequest
-- @return response
-- @return error_message
function M.GetPatchBaselineForPatchGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPatchBaselineForPatchGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAutomationExecution asynchronously, invoking a callback when done
-- @param GetAutomationExecutionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAutomationExecutionAsync(GetAutomationExecutionRequest, cb)
	assert(GetAutomationExecutionRequest, "You must provide a GetAutomationExecutionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetAutomationExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetAutomationExecutionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAutomationExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAutomationExecutionRequest
-- @return response
-- @return error_message
function M.GetAutomationExecutionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAutomationExecutionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAssociations asynchronously, invoking a callback when done
-- @param ListAssociationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAssociationsAsync(ListAssociationsRequest, cb)
	assert(ListAssociationsRequest, "You must provide a ListAssociationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.ListAssociations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAssociationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAssociations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAssociationsRequest
-- @return response
-- @return error_message
function M.ListAssociationsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAssociationsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeInstancePatchStates asynchronously, invoking a callback when done
-- @param DescribeInstancePatchStatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeInstancePatchStatesAsync(DescribeInstancePatchStatesRequest, cb)
	assert(DescribeInstancePatchStatesRequest, "You must provide a DescribeInstancePatchStatesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeInstancePatchStates",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeInstancePatchStatesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeInstancePatchStates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeInstancePatchStatesRequest
-- @return response
-- @return error_message
function M.DescribeInstancePatchStatesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeInstancePatchStatesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAssociation asynchronously, invoking a callback when done
-- @param DescribeAssociationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAssociationAsync(DescribeAssociationRequest, cb)
	assert(DescribeAssociationRequest, "You must provide a DescribeAssociationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeAssociation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAssociationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAssociation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAssociationRequest
-- @return response
-- @return error_message
function M.DescribeAssociationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAssociationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutInventory asynchronously, invoking a callback when done
-- @param PutInventoryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutInventoryAsync(PutInventoryRequest, cb)
	assert(PutInventoryRequest, "You must provide a PutInventoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.PutInventory",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", PutInventoryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutInventory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutInventoryRequest
-- @return response
-- @return error_message
function M.PutInventorySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutInventoryAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeInstancePatchStatesForPatchGroup asynchronously, invoking a callback when done
-- @param DescribeInstancePatchStatesForPatchGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeInstancePatchStatesForPatchGroupAsync(DescribeInstancePatchStatesForPatchGroupRequest, cb)
	assert(DescribeInstancePatchStatesForPatchGroupRequest, "You must provide a DescribeInstancePatchStatesForPatchGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeInstancePatchStatesForPatchGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeInstancePatchStatesForPatchGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeInstancePatchStatesForPatchGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeInstancePatchStatesForPatchGroupRequest
-- @return response
-- @return error_message
function M.DescribeInstancePatchStatesForPatchGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeInstancePatchStatesForPatchGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDefaultPatchBaseline asynchronously, invoking a callback when done
-- @param GetDefaultPatchBaselineRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDefaultPatchBaselineAsync(GetDefaultPatchBaselineRequest, cb)
	assert(GetDefaultPatchBaselineRequest, "You must provide a GetDefaultPatchBaselineRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetDefaultPatchBaseline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDefaultPatchBaselineRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDefaultPatchBaseline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDefaultPatchBaselineRequest
-- @return response
-- @return error_message
function M.GetDefaultPatchBaselineSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDefaultPatchBaselineAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAutomationExecutions asynchronously, invoking a callback when done
-- @param DescribeAutomationExecutionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAutomationExecutionsAsync(DescribeAutomationExecutionsRequest, cb)
	assert(DescribeAutomationExecutionsRequest, "You must provide a DescribeAutomationExecutionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeAutomationExecutions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAutomationExecutionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAutomationExecutions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAutomationExecutionsRequest
-- @return response
-- @return error_message
function M.DescribeAutomationExecutionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAutomationExecutionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDocument asynchronously, invoking a callback when done
-- @param GetDocumentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDocumentAsync(GetDocumentRequest, cb)
	assert(GetDocumentRequest, "You must provide a GetDocumentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetDocument",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDocumentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDocument synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDocumentRequest
-- @return response
-- @return error_message
function M.GetDocumentSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDocumentAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetMaintenanceWindow asynchronously, invoking a callback when done
-- @param GetMaintenanceWindowRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetMaintenanceWindowAsync(GetMaintenanceWindowRequest, cb)
	assert(GetMaintenanceWindowRequest, "You must provide a GetMaintenanceWindowRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetMaintenanceWindow",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetMaintenanceWindowRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetMaintenanceWindow synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetMaintenanceWindowRequest
-- @return response
-- @return error_message
function M.GetMaintenanceWindowSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetMaintenanceWindowAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetParametersByPath asynchronously, invoking a callback when done
-- @param GetParametersByPathRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetParametersByPathAsync(GetParametersByPathRequest, cb)
	assert(GetParametersByPathRequest, "You must provide a GetParametersByPathRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetParametersByPath",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetParametersByPathRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetParametersByPath synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetParametersByPathRequest
-- @return response
-- @return error_message
function M.GetParametersByPathSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetParametersByPathAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDocument asynchronously, invoking a callback when done
-- @param CreateDocumentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDocumentAsync(CreateDocumentRequest, cb)
	assert(CreateDocumentRequest, "You must provide a CreateDocumentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.CreateDocument",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDocumentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDocument synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDocumentRequest
-- @return response
-- @return error_message
function M.CreateDocumentSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDocumentAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAssociation asynchronously, invoking a callback when done
-- @param DeleteAssociationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAssociationAsync(DeleteAssociationRequest, cb)
	assert(DeleteAssociationRequest, "You must provide a DeleteAssociationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeleteAssociation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteAssociationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAssociation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAssociationRequest
-- @return response
-- @return error_message
function M.DeleteAssociationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAssociationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddTagsToResource asynchronously, invoking a callback when done
-- @param AddTagsToResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsToResourceAsync(AddTagsToResourceRequest, cb)
	assert(AddTagsToResourceRequest, "You must provide a AddTagsToResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.AddTagsToResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AddTagsToResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddTagsToResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddTagsToResourceRequest
-- @return response
-- @return error_message
function M.AddTagsToResourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsToResourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateManagedInstanceRole asynchronously, invoking a callback when done
-- @param UpdateManagedInstanceRoleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateManagedInstanceRoleAsync(UpdateManagedInstanceRoleRequest, cb)
	assert(UpdateManagedInstanceRoleRequest, "You must provide a UpdateManagedInstanceRoleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.UpdateManagedInstanceRole",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateManagedInstanceRoleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateManagedInstanceRole synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateManagedInstanceRoleRequest
-- @return response
-- @return error_message
function M.UpdateManagedInstanceRoleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateManagedInstanceRoleAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribePatchBaselines asynchronously, invoking a callback when done
-- @param DescribePatchBaselinesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribePatchBaselinesAsync(DescribePatchBaselinesRequest, cb)
	assert(DescribePatchBaselinesRequest, "You must provide a DescribePatchBaselinesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribePatchBaselines",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribePatchBaselinesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribePatchBaselines synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribePatchBaselinesRequest
-- @return response
-- @return error_message
function M.DescribePatchBaselinesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribePatchBaselinesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateMaintenanceWindow asynchronously, invoking a callback when done
-- @param UpdateMaintenanceWindowRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateMaintenanceWindowAsync(UpdateMaintenanceWindowRequest, cb)
	assert(UpdateMaintenanceWindowRequest, "You must provide a UpdateMaintenanceWindowRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.UpdateMaintenanceWindow",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateMaintenanceWindowRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateMaintenanceWindow synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateMaintenanceWindowRequest
-- @return response
-- @return error_message
function M.UpdateMaintenanceWindowSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateMaintenanceWindowAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPatchBaseline asynchronously, invoking a callback when done
-- @param GetPatchBaselineRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetPatchBaselineAsync(GetPatchBaselineRequest, cb)
	assert(GetPatchBaselineRequest, "You must provide a GetPatchBaselineRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetPatchBaseline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetPatchBaselineRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPatchBaseline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPatchBaselineRequest
-- @return response
-- @return error_message
function M.GetPatchBaselineSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPatchBaselineAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StopAutomationExecution asynchronously, invoking a callback when done
-- @param StopAutomationExecutionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopAutomationExecutionAsync(StopAutomationExecutionRequest, cb)
	assert(StopAutomationExecutionRequest, "You must provide a StopAutomationExecutionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.StopAutomationExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", StopAutomationExecutionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopAutomationExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopAutomationExecutionRequest
-- @return response
-- @return error_message
function M.StopAutomationExecutionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopAutomationExecutionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInventory asynchronously, invoking a callback when done
-- @param GetInventoryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInventoryAsync(GetInventoryRequest, cb)
	assert(GetInventoryRequest, "You must provide a GetInventoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetInventory",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetInventoryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetInventory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetInventoryRequest
-- @return response
-- @return error_message
function M.GetInventorySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInventoryAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveTagsFromResource asynchronously, invoking a callback when done
-- @param RemoveTagsFromResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTagsFromResourceAsync(RemoveTagsFromResourceRequest, cb)
	assert(RemoveTagsFromResourceRequest, "You must provide a RemoveTagsFromResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.RemoveTagsFromResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveTagsFromResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveTagsFromResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveTagsFromResourceRequest
-- @return response
-- @return error_message
function M.RemoveTagsFromResourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTagsFromResourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterTargetFromMaintenanceWindow asynchronously, invoking a callback when done
-- @param DeregisterTargetFromMaintenanceWindowRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterTargetFromMaintenanceWindowAsync(DeregisterTargetFromMaintenanceWindowRequest, cb)
	assert(DeregisterTargetFromMaintenanceWindowRequest, "You must provide a DeregisterTargetFromMaintenanceWindowRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeregisterTargetFromMaintenanceWindow",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeregisterTargetFromMaintenanceWindowRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeregisterTargetFromMaintenanceWindow synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeregisterTargetFromMaintenanceWindowRequest
-- @return response
-- @return error_message
function M.DeregisterTargetFromMaintenanceWindowSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterTargetFromMaintenanceWindowAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SendCommand asynchronously, invoking a callback when done
-- @param SendCommandRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SendCommandAsync(SendCommandRequest, cb)
	assert(SendCommandRequest, "You must provide a SendCommandRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.SendCommand",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", SendCommandRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SendCommand synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendCommandRequest
-- @return response
-- @return error_message
function M.SendCommandSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendCommandAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeInstanceAssociationsStatus asynchronously, invoking a callback when done
-- @param DescribeInstanceAssociationsStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeInstanceAssociationsStatusAsync(DescribeInstanceAssociationsStatusRequest, cb)
	assert(DescribeInstanceAssociationsStatusRequest, "You must provide a DescribeInstanceAssociationsStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeInstanceAssociationsStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeInstanceAssociationsStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeInstanceAssociationsStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeInstanceAssociationsStatusRequest
-- @return response
-- @return error_message
function M.DescribeInstanceAssociationsStatusSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeInstanceAssociationsStatusAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribePatchGroups asynchronously, invoking a callback when done
-- @param DescribePatchGroupsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribePatchGroupsAsync(DescribePatchGroupsRequest, cb)
	assert(DescribePatchGroupsRequest, "You must provide a DescribePatchGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribePatchGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribePatchGroupsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribePatchGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribePatchGroupsRequest
-- @return response
-- @return error_message
function M.DescribePatchGroupsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribePatchGroupsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetMaintenanceWindowExecutionTask asynchronously, invoking a callback when done
-- @param GetMaintenanceWindowExecutionTaskRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetMaintenanceWindowExecutionTaskAsync(GetMaintenanceWindowExecutionTaskRequest, cb)
	assert(GetMaintenanceWindowExecutionTaskRequest, "You must provide a GetMaintenanceWindowExecutionTaskRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetMaintenanceWindowExecutionTask",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetMaintenanceWindowExecutionTaskRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetMaintenanceWindowExecutionTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetMaintenanceWindowExecutionTaskRequest
-- @return response
-- @return error_message
function M.GetMaintenanceWindowExecutionTaskSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetMaintenanceWindowExecutionTaskAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetInventorySchema asynchronously, invoking a callback when done
-- @param GetInventorySchemaRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInventorySchemaAsync(GetInventorySchemaRequest, cb)
	assert(GetInventorySchemaRequest, "You must provide a GetInventorySchemaRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetInventorySchema",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetInventorySchemaRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetInventorySchema synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetInventorySchemaRequest
-- @return response
-- @return error_message
function M.GetInventorySchemaSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetInventorySchemaAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelCommand asynchronously, invoking a callback when done
-- @param CancelCommandRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CancelCommandAsync(CancelCommandRequest, cb)
	assert(CancelCommandRequest, "You must provide a CancelCommandRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.CancelCommand",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CancelCommandRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CancelCommand synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelCommandRequest
-- @return response
-- @return error_message
function M.CancelCommandSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelCommandAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCommandInvocation asynchronously, invoking a callback when done
-- @param GetCommandInvocationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCommandInvocationAsync(GetCommandInvocationRequest, cb)
	assert(GetCommandInvocationRequest, "You must provide a GetCommandInvocationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetCommandInvocation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetCommandInvocationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCommandInvocation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCommandInvocationRequest
-- @return response
-- @return error_message
function M.GetCommandInvocationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCommandInvocationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAssociationStatus asynchronously, invoking a callback when done
-- @param UpdateAssociationStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAssociationStatusAsync(UpdateAssociationStatusRequest, cb)
	assert(UpdateAssociationStatusRequest, "You must provide a UpdateAssociationStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.UpdateAssociationStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateAssociationStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateAssociationStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateAssociationStatusRequest
-- @return response
-- @return error_message
function M.UpdateAssociationStatusSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAssociationStatusAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribePatchGroupState asynchronously, invoking a callback when done
-- @param DescribePatchGroupStateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribePatchGroupStateAsync(DescribePatchGroupStateRequest, cb)
	assert(DescribePatchGroupStateRequest, "You must provide a DescribePatchGroupStateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribePatchGroupState",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribePatchGroupStateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribePatchGroupState synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribePatchGroupStateRequest
-- @return response
-- @return error_message
function M.DescribePatchGroupStateSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribePatchGroupStateAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAssociationBatch asynchronously, invoking a callback when done
-- @param CreateAssociationBatchRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAssociationBatchAsync(CreateAssociationBatchRequest, cb)
	assert(CreateAssociationBatchRequest, "You must provide a CreateAssociationBatchRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.CreateAssociationBatch",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateAssociationBatchRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateAssociationBatch synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAssociationBatchRequest
-- @return response
-- @return error_message
function M.CreateAssociationBatchSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAssociationBatchAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetParameter asynchronously, invoking a callback when done
-- @param GetParameterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetParameterAsync(GetParameterRequest, cb)
	assert(GetParameterRequest, "You must provide a GetParameterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetParameter",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetParameterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetParameter synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetParameterRequest
-- @return response
-- @return error_message
function M.GetParameterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetParameterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeMaintenanceWindowExecutionTasks asynchronously, invoking a callback when done
-- @param DescribeMaintenanceWindowExecutionTasksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeMaintenanceWindowExecutionTasksAsync(DescribeMaintenanceWindowExecutionTasksRequest, cb)
	assert(DescribeMaintenanceWindowExecutionTasksRequest, "You must provide a DescribeMaintenanceWindowExecutionTasksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeMaintenanceWindowExecutionTasks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeMaintenanceWindowExecutionTasksRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeMaintenanceWindowExecutionTasks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeMaintenanceWindowExecutionTasksRequest
-- @return response
-- @return error_message
function M.DescribeMaintenanceWindowExecutionTasksSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeMaintenanceWindowExecutionTasksAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetParameterHistory asynchronously, invoking a callback when done
-- @param GetParameterHistoryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetParameterHistoryAsync(GetParameterHistoryRequest, cb)
	assert(GetParameterHistoryRequest, "You must provide a GetParameterHistoryRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetParameterHistory",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetParameterHistoryRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetParameterHistory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetParameterHistoryRequest
-- @return response
-- @return error_message
function M.GetParameterHistorySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetParameterHistoryAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterTaskFromMaintenanceWindow asynchronously, invoking a callback when done
-- @param DeregisterTaskFromMaintenanceWindowRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterTaskFromMaintenanceWindowAsync(DeregisterTaskFromMaintenanceWindowRequest, cb)
	assert(DeregisterTaskFromMaintenanceWindowRequest, "You must provide a DeregisterTaskFromMaintenanceWindowRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeregisterTaskFromMaintenanceWindow",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeregisterTaskFromMaintenanceWindowRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeregisterTaskFromMaintenanceWindow synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeregisterTaskFromMaintenanceWindowRequest
-- @return response
-- @return error_message
function M.DeregisterTaskFromMaintenanceWindowSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterTaskFromMaintenanceWindowAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListCommandInvocations asynchronously, invoking a callback when done
-- @param ListCommandInvocationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListCommandInvocationsAsync(ListCommandInvocationsRequest, cb)
	assert(ListCommandInvocationsRequest, "You must provide a ListCommandInvocationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.ListCommandInvocations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListCommandInvocationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListCommandInvocations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListCommandInvocationsRequest
-- @return response
-- @return error_message
function M.ListCommandInvocationsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListCommandInvocationsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeParameters asynchronously, invoking a callback when done
-- @param DescribeParametersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeParametersAsync(DescribeParametersRequest, cb)
	assert(DescribeParametersRequest, "You must provide a DescribeParametersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeParametersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeParametersRequest
-- @return response
-- @return error_message
function M.DescribeParametersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeParametersAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeMaintenanceWindowTasks asynchronously, invoking a callback when done
-- @param DescribeMaintenanceWindowTasksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeMaintenanceWindowTasksAsync(DescribeMaintenanceWindowTasksRequest, cb)
	assert(DescribeMaintenanceWindowTasksRequest, "You must provide a DescribeMaintenanceWindowTasksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeMaintenanceWindowTasks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeMaintenanceWindowTasksRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeMaintenanceWindowTasks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeMaintenanceWindowTasksRequest
-- @return response
-- @return error_message
function M.DescribeMaintenanceWindowTasksSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeMaintenanceWindowTasksAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteParameters asynchronously, invoking a callback when done
-- @param DeleteParametersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteParametersAsync(DeleteParametersRequest, cb)
	assert(DeleteParametersRequest, "You must provide a DeleteParametersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeleteParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteParametersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteParametersRequest
-- @return response
-- @return error_message
function M.DeleteParametersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteParametersAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeMaintenanceWindowTargets asynchronously, invoking a callback when done
-- @param DescribeMaintenanceWindowTargetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeMaintenanceWindowTargetsAsync(DescribeMaintenanceWindowTargetsRequest, cb)
	assert(DescribeMaintenanceWindowTargetsRequest, "You must provide a DescribeMaintenanceWindowTargetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeMaintenanceWindowTargets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeMaintenanceWindowTargetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeMaintenanceWindowTargets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeMaintenanceWindowTargetsRequest
-- @return response
-- @return error_message
function M.DescribeMaintenanceWindowTargetsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeMaintenanceWindowTargetsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeInstanceInformation asynchronously, invoking a callback when done
-- @param DescribeInstanceInformationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeInstanceInformationAsync(DescribeInstanceInformationRequest, cb)
	assert(DescribeInstanceInformationRequest, "You must provide a DescribeInstanceInformationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeInstanceInformation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeInstanceInformationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeInstanceInformation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeInstanceInformationRequest
-- @return response
-- @return error_message
function M.DescribeInstanceInformationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeInstanceInformationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateActivation asynchronously, invoking a callback when done
-- @param CreateActivationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateActivationAsync(CreateActivationRequest, cb)
	assert(CreateActivationRequest, "You must provide a CreateActivationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.CreateActivation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateActivationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateActivation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateActivationRequest
-- @return response
-- @return error_message
function M.CreateActivationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateActivationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterPatchBaselineForPatchGroup asynchronously, invoking a callback when done
-- @param RegisterPatchBaselineForPatchGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterPatchBaselineForPatchGroupAsync(RegisterPatchBaselineForPatchGroupRequest, cb)
	assert(RegisterPatchBaselineForPatchGroupRequest, "You must provide a RegisterPatchBaselineForPatchGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.RegisterPatchBaselineForPatchGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterPatchBaselineForPatchGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterPatchBaselineForPatchGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterPatchBaselineForPatchGroupRequest
-- @return response
-- @return error_message
function M.RegisterPatchBaselineForPatchGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterPatchBaselineForPatchGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDocument asynchronously, invoking a callback when done
-- @param UpdateDocumentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDocumentAsync(UpdateDocumentRequest, cb)
	assert(UpdateDocumentRequest, "You must provide a UpdateDocumentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.UpdateDocument",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateDocumentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDocument synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDocumentRequest
-- @return response
-- @return error_message
function M.UpdateDocumentSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDocumentAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeActivations asynchronously, invoking a callback when done
-- @param DescribeActivationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeActivationsAsync(DescribeActivationsRequest, cb)
	assert(DescribeActivationsRequest, "You must provide a DescribeActivationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeActivations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeActivationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeActivations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeActivationsRequest
-- @return response
-- @return error_message
function M.DescribeActivationsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeActivationsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAssociation asynchronously, invoking a callback when done
-- @param CreateAssociationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAssociationAsync(CreateAssociationRequest, cb)
	assert(CreateAssociationRequest, "You must provide a CreateAssociationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.CreateAssociation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateAssociationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateAssociation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAssociationRequest
-- @return response
-- @return error_message
function M.CreateAssociationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAssociationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetMaintenanceWindowExecution asynchronously, invoking a callback when done
-- @param GetMaintenanceWindowExecutionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetMaintenanceWindowExecutionAsync(GetMaintenanceWindowExecutionRequest, cb)
	assert(GetMaintenanceWindowExecutionRequest, "You must provide a GetMaintenanceWindowExecutionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetMaintenanceWindowExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetMaintenanceWindowExecutionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetMaintenanceWindowExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetMaintenanceWindowExecutionRequest
-- @return response
-- @return error_message
function M.GetMaintenanceWindowExecutionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetMaintenanceWindowExecutionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteMaintenanceWindow asynchronously, invoking a callback when done
-- @param DeleteMaintenanceWindowRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteMaintenanceWindowAsync(DeleteMaintenanceWindowRequest, cb)
	assert(DeleteMaintenanceWindowRequest, "You must provide a DeleteMaintenanceWindowRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeleteMaintenanceWindow",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteMaintenanceWindowRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteMaintenanceWindow synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteMaintenanceWindowRequest
-- @return response
-- @return error_message
function M.DeleteMaintenanceWindowSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteMaintenanceWindowAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListCommands asynchronously, invoking a callback when done
-- @param ListCommandsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListCommandsAsync(ListCommandsRequest, cb)
	assert(ListCommandsRequest, "You must provide a ListCommandsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.ListCommands",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListCommandsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListCommands synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListCommandsRequest
-- @return response
-- @return error_message
function M.ListCommandsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListCommandsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAssociation asynchronously, invoking a callback when done
-- @param UpdateAssociationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAssociationAsync(UpdateAssociationRequest, cb)
	assert(UpdateAssociationRequest, "You must provide a UpdateAssociationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.UpdateAssociation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateAssociationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateAssociation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateAssociationRequest
-- @return response
-- @return error_message
function M.UpdateAssociationSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAssociationAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDocument asynchronously, invoking a callback when done
-- @param DeleteDocumentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDocumentAsync(DeleteDocumentRequest, cb)
	assert(DeleteDocumentRequest, "You must provide a DeleteDocumentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeleteDocument",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDocumentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDocument synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDocumentRequest
-- @return response
-- @return error_message
function M.DeleteDocumentSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDocumentAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEffectiveInstanceAssociations asynchronously, invoking a callback when done
-- @param DescribeEffectiveInstanceAssociationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEffectiveInstanceAssociationsAsync(DescribeEffectiveInstanceAssociationsRequest, cb)
	assert(DescribeEffectiveInstanceAssociationsRequest, "You must provide a DescribeEffectiveInstanceAssociationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeEffectiveInstanceAssociations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEffectiveInstanceAssociationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEffectiveInstanceAssociations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEffectiveInstanceAssociationsRequest
-- @return response
-- @return error_message
function M.DescribeEffectiveInstanceAssociationsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEffectiveInstanceAssociationsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeMaintenanceWindows asynchronously, invoking a callback when done
-- @param DescribeMaintenanceWindowsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeMaintenanceWindowsAsync(DescribeMaintenanceWindowsRequest, cb)
	assert(DescribeMaintenanceWindowsRequest, "You must provide a DescribeMaintenanceWindowsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeMaintenanceWindows",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeMaintenanceWindowsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeMaintenanceWindows synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeMaintenanceWindowsRequest
-- @return response
-- @return error_message
function M.DescribeMaintenanceWindowsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeMaintenanceWindowsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteParameter asynchronously, invoking a callback when done
-- @param DeleteParameterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteParameterAsync(DeleteParameterRequest, cb)
	assert(DeleteParameterRequest, "You must provide a DeleteParameterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeleteParameter",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteParameterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteParameter synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteParameterRequest
-- @return response
-- @return error_message
function M.DeleteParameterSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteParameterAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeMaintenanceWindowExecutionTaskInvocations asynchronously, invoking a callback when done
-- @param DescribeMaintenanceWindowExecutionTaskInvocationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeMaintenanceWindowExecutionTaskInvocationsAsync(DescribeMaintenanceWindowExecutionTaskInvocationsRequest, cb)
	assert(DescribeMaintenanceWindowExecutionTaskInvocationsRequest, "You must provide a DescribeMaintenanceWindowExecutionTaskInvocationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeMaintenanceWindowExecutionTaskInvocations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeMaintenanceWindowExecutionTaskInvocationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeMaintenanceWindowExecutionTaskInvocations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeMaintenanceWindowExecutionTaskInvocationsRequest
-- @return response
-- @return error_message
function M.DescribeMaintenanceWindowExecutionTaskInvocationsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeMaintenanceWindowExecutionTaskInvocationsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ModifyDocumentPermission asynchronously, invoking a callback when done
-- @param ModifyDocumentPermissionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDocumentPermissionAsync(ModifyDocumentPermissionRequest, cb)
	assert(ModifyDocumentPermissionRequest, "You must provide a ModifyDocumentPermissionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.ModifyDocumentPermission",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ModifyDocumentPermissionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ModifyDocumentPermission synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ModifyDocumentPermissionRequest
-- @return response
-- @return error_message
function M.ModifyDocumentPermissionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ModifyDocumentPermissionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeMaintenanceWindowExecutions asynchronously, invoking a callback when done
-- @param DescribeMaintenanceWindowExecutionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeMaintenanceWindowExecutionsAsync(DescribeMaintenanceWindowExecutionsRequest, cb)
	assert(DescribeMaintenanceWindowExecutionsRequest, "You must provide a DescribeMaintenanceWindowExecutionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeMaintenanceWindowExecutions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeMaintenanceWindowExecutionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeMaintenanceWindowExecutions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeMaintenanceWindowExecutionsRequest
-- @return response
-- @return error_message
function M.DescribeMaintenanceWindowExecutionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeMaintenanceWindowExecutionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StartAutomationExecution asynchronously, invoking a callback when done
-- @param StartAutomationExecutionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartAutomationExecutionAsync(StartAutomationExecutionRequest, cb)
	assert(StartAutomationExecutionRequest, "You must provide a StartAutomationExecutionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.StartAutomationExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", StartAutomationExecutionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartAutomationExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartAutomationExecutionRequest
-- @return response
-- @return error_message
function M.StartAutomationExecutionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartAutomationExecutionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDocument asynchronously, invoking a callback when done
-- @param DescribeDocumentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDocumentAsync(DescribeDocumentRequest, cb)
	assert(DescribeDocumentRequest, "You must provide a DescribeDocumentRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeDocument",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDocumentRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDocument synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDocumentRequest
-- @return response
-- @return error_message
function M.DescribeDocumentSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDocumentAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDocumentDefaultVersion asynchronously, invoking a callback when done
-- @param UpdateDocumentDefaultVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDocumentDefaultVersionAsync(UpdateDocumentDefaultVersionRequest, cb)
	assert(UpdateDocumentDefaultVersionRequest, "You must provide a UpdateDocumentDefaultVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.UpdateDocumentDefaultVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateDocumentDefaultVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDocumentDefaultVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDocumentDefaultVersionRequest
-- @return response
-- @return error_message
function M.UpdateDocumentDefaultVersionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDocumentDefaultVersionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterTargetWithMaintenanceWindow asynchronously, invoking a callback when done
-- @param RegisterTargetWithMaintenanceWindowRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterTargetWithMaintenanceWindowAsync(RegisterTargetWithMaintenanceWindowRequest, cb)
	assert(RegisterTargetWithMaintenanceWindowRequest, "You must provide a RegisterTargetWithMaintenanceWindowRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.RegisterTargetWithMaintenanceWindow",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterTargetWithMaintenanceWindowRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterTargetWithMaintenanceWindow synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterTargetWithMaintenanceWindowRequest
-- @return response
-- @return error_message
function M.RegisterTargetWithMaintenanceWindowSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterTargetWithMaintenanceWindowAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePatchBaseline asynchronously, invoking a callback when done
-- @param DeletePatchBaselineRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeletePatchBaselineAsync(DeletePatchBaselineRequest, cb)
	assert(DeletePatchBaselineRequest, "You must provide a DeletePatchBaselineRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeletePatchBaseline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeletePatchBaselineRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePatchBaseline synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePatchBaselineRequest
-- @return response
-- @return error_message
function M.DeletePatchBaselineSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePatchBaselineAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListInventoryEntries asynchronously, invoking a callback when done
-- @param ListInventoryEntriesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListInventoryEntriesAsync(ListInventoryEntriesRequest, cb)
	assert(ListInventoryEntriesRequest, "You must provide a ListInventoryEntriesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.ListInventoryEntries",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListInventoryEntriesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListInventoryEntries synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListInventoryEntriesRequest
-- @return response
-- @return error_message
function M.ListInventoryEntriesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListInventoryEntriesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeregisterPatchBaselineForPatchGroup asynchronously, invoking a callback when done
-- @param DeregisterPatchBaselineForPatchGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterPatchBaselineForPatchGroupAsync(DeregisterPatchBaselineForPatchGroupRequest, cb)
	assert(DeregisterPatchBaselineForPatchGroupRequest, "You must provide a DeregisterPatchBaselineForPatchGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeregisterPatchBaselineForPatchGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeregisterPatchBaselineForPatchGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeregisterPatchBaselineForPatchGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeregisterPatchBaselineForPatchGroupRequest
-- @return response
-- @return error_message
function M.DeregisterPatchBaselineForPatchGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeregisterPatchBaselineForPatchGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForResource asynchronously, invoking a callback when done
-- @param ListTagsForResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceRequest, cb)
	assert(ListTagsForResourceRequest, "You must provide a ListTagsForResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.ListTagsForResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsForResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForResourceRequest
-- @return response
-- @return error_message
function M.ListTagsForResourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForResourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterTaskWithMaintenanceWindow asynchronously, invoking a callback when done
-- @param RegisterTaskWithMaintenanceWindowRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterTaskWithMaintenanceWindowAsync(RegisterTaskWithMaintenanceWindowRequest, cb)
	assert(RegisterTaskWithMaintenanceWindowRequest, "You must provide a RegisterTaskWithMaintenanceWindowRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.RegisterTaskWithMaintenanceWindow",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterTaskWithMaintenanceWindowRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterTaskWithMaintenanceWindow synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterTaskWithMaintenanceWindowRequest
-- @return response
-- @return error_message
function M.RegisterTaskWithMaintenanceWindowSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterTaskWithMaintenanceWindowAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetParameters asynchronously, invoking a callback when done
-- @param GetParametersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetParametersAsync(GetParametersRequest, cb)
	assert(GetParametersRequest, "You must provide a GetParametersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetParametersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetParameters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetParametersRequest
-- @return response
-- @return error_message
function M.GetParametersSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetParametersAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDocuments asynchronously, invoking a callback when done
-- @param ListDocumentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDocumentsAsync(ListDocumentsRequest, cb)
	assert(ListDocumentsRequest, "You must provide a ListDocumentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonSSM.ListDocuments",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListDocumentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDocuments synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDocumentsRequest
-- @return response
-- @return error_message
function M.ListDocumentsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDocumentsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
