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

local InvocationDoesNotExist_keys = { nil }

function M.AssertInvocationDoesNotExist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvocationDoesNotExist to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvocationDoesNotExist_keys[k], "InvocationDoesNotExist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvocationDoesNotExist
-- <p>The command ID and instance ID you specified did not match any invocations. Verify the command ID adn the instance ID and try again. </p>
function M.InvocationDoesNotExist(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvocationDoesNotExist")
	local t = { 
	}
	M.AssertInvocationDoesNotExist(t)
	return t
end

local UpdateManagedInstanceRoleRequest_keys = { "InstanceId" = true, "IamRole" = true, nil }

function M.AssertUpdateManagedInstanceRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateManagedInstanceRoleRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["IamRole"], "Expected key IamRole to exist in table")
	if struct["InstanceId"] then M.AssertManagedInstanceId(struct["InstanceId"]) end
	if struct["IamRole"] then M.AssertIamRole(struct["IamRole"]) end
	for k,_ in pairs(struct) do
		assert(UpdateManagedInstanceRoleRequest_keys[k], "UpdateManagedInstanceRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateManagedInstanceRoleRequest
--  
-- @param InstanceId [ManagedInstanceId] <p>The ID of the managed instance where you want to update the role.</p>
-- @param IamRole [IamRole] <p>The IAM role you want to assign or change.</p>
-- Required parameter: InstanceId
-- Required parameter: IamRole
function M.UpdateManagedInstanceRoleRequest(InstanceId, IamRole, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateManagedInstanceRoleRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["IamRole"] = IamRole,
	}
	M.AssertUpdateManagedInstanceRoleRequest(t)
	return t
end

local ListTagsForResourceResult_keys = { "TagList" = true, nil }

function M.AssertListTagsForResourceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceResult to be of type 'table'")
	if struct["TagList"] then M.AssertTagList(struct["TagList"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourceResult_keys[k], "ListTagsForResourceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceResult
--  
-- @param TagList [TagList] <p>A list of tags.</p>
function M.ListTagsForResourceResult(TagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceResult")
	local t = { 
		["TagList"] = TagList,
	}
	M.AssertListTagsForResourceResult(t)
	return t
end

local CreateDocumentResult_keys = { "DocumentDescription" = true, nil }

function M.AssertCreateDocumentResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDocumentResult to be of type 'table'")
	if struct["DocumentDescription"] then M.AssertDocumentDescription(struct["DocumentDescription"]) end
	for k,_ in pairs(struct) do
		assert(CreateDocumentResult_keys[k], "CreateDocumentResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDocumentResult
--  
-- @param DocumentDescription [DocumentDescription] <p>Information about the Systems Manager document.</p>
function M.CreateDocumentResult(DocumentDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDocumentResult")
	local t = { 
		["DocumentDescription"] = DocumentDescription,
	}
	M.AssertCreateDocumentResult(t)
	return t
end

local MaintenanceWindowFilter_keys = { "Values" = true, "Key" = true, nil }

function M.AssertMaintenanceWindowFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaintenanceWindowFilter to be of type 'table'")
	if struct["Values"] then M.AssertMaintenanceWindowFilterValues(struct["Values"]) end
	if struct["Key"] then M.AssertMaintenanceWindowFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(MaintenanceWindowFilter_keys[k], "MaintenanceWindowFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaintenanceWindowFilter
-- <p>Filter used in the request.</p>
-- @param Values [MaintenanceWindowFilterValues] <p>The filter values.</p>
-- @param Key [MaintenanceWindowFilterKey] <p>The name of the filter.</p>
function M.MaintenanceWindowFilter(Values, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaintenanceWindowFilter")
	local t = { 
		["Values"] = Values,
		["Key"] = Key,
	}
	M.AssertMaintenanceWindowFilter(t)
	return t
end

local StopAutomationExecutionRequest_keys = { "AutomationExecutionId" = true, nil }

function M.AssertStopAutomationExecutionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopAutomationExecutionRequest to be of type 'table'")
	assert(struct["AutomationExecutionId"], "Expected key AutomationExecutionId to exist in table")
	if struct["AutomationExecutionId"] then M.AssertAutomationExecutionId(struct["AutomationExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(StopAutomationExecutionRequest_keys[k], "StopAutomationExecutionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopAutomationExecutionRequest
--  
-- @param AutomationExecutionId [AutomationExecutionId] <p>The execution ID of the Automation to stop.</p>
-- Required parameter: AutomationExecutionId
function M.StopAutomationExecutionRequest(AutomationExecutionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopAutomationExecutionRequest")
	local t = { 
		["AutomationExecutionId"] = AutomationExecutionId,
	}
	M.AssertStopAutomationExecutionRequest(t)
	return t
end

local InvalidNotificationConfig_keys = { "Message" = true, nil }

function M.AssertInvalidNotificationConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNotificationConfig to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidNotificationConfig_keys[k], "InvalidNotificationConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNotificationConfig
-- <p>One or more configuration items is not valid. Verify that a valid Amazon Resource Name (ARN) was provided for an Amazon SNS topic.</p>
-- @param Message [String] <p>One or more configuration items is not valid. Verify that a valid Amazon Resource Name (ARN) was provided for an Amazon SNS topic.</p>
function M.InvalidNotificationConfig(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNotificationConfig")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidNotificationConfig(t)
	return t
end

local DocumentIdentifier_keys = { "Name" = true, "PlatformTypes" = true, "DocumentVersion" = true, "DocumentType" = true, "Owner" = true, "SchemaVersion" = true, nil }

function M.AssertDocumentIdentifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentIdentifier to be of type 'table'")
	if struct["Name"] then M.AssertDocumentARN(struct["Name"]) end
	if struct["PlatformTypes"] then M.AssertPlatformTypeList(struct["PlatformTypes"]) end
	if struct["DocumentVersion"] then M.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["DocumentType"] then M.AssertDocumentType(struct["DocumentType"]) end
	if struct["Owner"] then M.AssertDocumentOwner(struct["Owner"]) end
	if struct["SchemaVersion"] then M.AssertDocumentSchemaVersion(struct["SchemaVersion"]) end
	for k,_ in pairs(struct) do
		assert(DocumentIdentifier_keys[k], "DocumentIdentifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentIdentifier
-- <p>Describes the name of an SSM document.</p>
-- @param Name [DocumentARN] <p>The name of the SSM document.</p>
-- @param PlatformTypes [PlatformTypeList] <p>The operating system platform. </p>
-- @param DocumentVersion [DocumentVersion] <p>The document version.</p>
-- @param DocumentType [DocumentType] <p>The document type.</p>
-- @param Owner [DocumentOwner] <p>The AWS user account of the person who created the document.</p>
-- @param SchemaVersion [DocumentSchemaVersion] <p>The schema version.</p>
function M.DocumentIdentifier(Name, PlatformTypes, DocumentVersion, DocumentType, Owner, SchemaVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentIdentifier")
	local t = { 
		["Name"] = Name,
		["PlatformTypes"] = PlatformTypes,
		["DocumentVersion"] = DocumentVersion,
		["DocumentType"] = DocumentType,
		["Owner"] = Owner,
		["SchemaVersion"] = SchemaVersion,
	}
	M.AssertDocumentIdentifier(t)
	return t
end

local RegisterDefaultPatchBaselineResult_keys = { "BaselineId" = true, nil }

function M.AssertRegisterDefaultPatchBaselineResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterDefaultPatchBaselineResult to be of type 'table'")
	if struct["BaselineId"] then M.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(RegisterDefaultPatchBaselineResult_keys[k], "RegisterDefaultPatchBaselineResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterDefaultPatchBaselineResult
--  
-- @param BaselineId [BaselineId] <p>The ID of the default patch baseline.</p>
function M.RegisterDefaultPatchBaselineResult(BaselineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterDefaultPatchBaselineResult")
	local t = { 
		["BaselineId"] = BaselineId,
	}
	M.AssertRegisterDefaultPatchBaselineResult(t)
	return t
end

local Patch_keys = { "ContentUrl" = true, "ProductFamily" = true, "Product" = true, "Vendor" = true, "Description" = true, "Classification" = true, "Title" = true, "ReleaseDate" = true, "Language" = true, "MsrcSeverity" = true, "KbNumber" = true, "MsrcNumber" = true, "Id" = true, nil }

function M.AssertPatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Patch to be of type 'table'")
	if struct["ContentUrl"] then M.AssertPatchContentUrl(struct["ContentUrl"]) end
	if struct["ProductFamily"] then M.AssertPatchProductFamily(struct["ProductFamily"]) end
	if struct["Product"] then M.AssertPatchProduct(struct["Product"]) end
	if struct["Vendor"] then M.AssertPatchVendor(struct["Vendor"]) end
	if struct["Description"] then M.AssertPatchDescription(struct["Description"]) end
	if struct["Classification"] then M.AssertPatchClassification(struct["Classification"]) end
	if struct["Title"] then M.AssertPatchTitle(struct["Title"]) end
	if struct["ReleaseDate"] then M.AssertDateTime(struct["ReleaseDate"]) end
	if struct["Language"] then M.AssertPatchLanguage(struct["Language"]) end
	if struct["MsrcSeverity"] then M.AssertPatchMsrcSeverity(struct["MsrcSeverity"]) end
	if struct["KbNumber"] then M.AssertPatchKbNumber(struct["KbNumber"]) end
	if struct["MsrcNumber"] then M.AssertPatchMsrcNumber(struct["MsrcNumber"]) end
	if struct["Id"] then M.AssertPatchId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(Patch_keys[k], "Patch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Patch
-- <p>Represents metadata about a patch.</p>
-- @param ContentUrl [PatchContentUrl] <p>The URL where more information can be obtained about the patch.</p>
-- @param ProductFamily [PatchProductFamily] <p>The product family the patch is applicable for (for example, Windows).</p>
-- @param Product [PatchProduct] <p>The specific product the patch is applicable for (for example, WindowsServer2016).</p>
-- @param Vendor [PatchVendor] <p>The name of the vendor providing the patch.</p>
-- @param Description [PatchDescription] <p>The description of the patch.</p>
-- @param Classification [PatchClassification] <p>The classification of the patch (for example, SecurityUpdates, Updates, CriticalUpdates).</p>
-- @param Title [PatchTitle] <p>The title of the patch.</p>
-- @param ReleaseDate [DateTime] <p>The date the patch was released.</p>
-- @param Language [PatchLanguage] <p>The language of the patch if it's language-specific.</p>
-- @param MsrcSeverity [PatchMsrcSeverity] <p>The severity of the patch (for example Critical, Important, Moderate).</p>
-- @param KbNumber [PatchKbNumber] <p>The Microsoft Knowledge Base ID of the patch.</p>
-- @param MsrcNumber [PatchMsrcNumber] <p>The ID of the MSRC bulletin the patch is related to.</p>
-- @param Id [PatchId] <p>The ID of the patch (this is different than the Microsoft Knowledge Base ID).</p>
function M.Patch(ContentUrl, ProductFamily, Product, Vendor, Description, Classification, Title, ReleaseDate, Language, MsrcSeverity, KbNumber, MsrcNumber, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Patch")
	local t = { 
		["ContentUrl"] = ContentUrl,
		["ProductFamily"] = ProductFamily,
		["Product"] = Product,
		["Vendor"] = Vendor,
		["Description"] = Description,
		["Classification"] = Classification,
		["Title"] = Title,
		["ReleaseDate"] = ReleaseDate,
		["Language"] = Language,
		["MsrcSeverity"] = MsrcSeverity,
		["KbNumber"] = KbNumber,
		["MsrcNumber"] = MsrcNumber,
		["Id"] = Id,
	}
	M.AssertPatch(t)
	return t
end

local DeregisterTaskFromMaintenanceWindowResult_keys = { "WindowTaskId" = true, "WindowId" = true, nil }

function M.AssertDeregisterTaskFromMaintenanceWindowResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterTaskFromMaintenanceWindowResult to be of type 'table'")
	if struct["WindowTaskId"] then M.AssertMaintenanceWindowTaskId(struct["WindowTaskId"]) end
	if struct["WindowId"] then M.AssertMaintenanceWindowId(struct["WindowId"]) end
	for k,_ in pairs(struct) do
		assert(DeregisterTaskFromMaintenanceWindowResult_keys[k], "DeregisterTaskFromMaintenanceWindowResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterTaskFromMaintenanceWindowResult
--  
-- @param WindowTaskId [MaintenanceWindowTaskId] <p>The ID of the task removed from the Maintenance Window.</p>
-- @param WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window the task was removed from.</p>
function M.DeregisterTaskFromMaintenanceWindowResult(WindowTaskId, WindowId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterTaskFromMaintenanceWindowResult")
	local t = { 
		["WindowTaskId"] = WindowTaskId,
		["WindowId"] = WindowId,
	}
	M.AssertDeregisterTaskFromMaintenanceWindowResult(t)
	return t
end

local ParameterMetadata_keys = { "KeyId" = true, "Name" = true, "LastModifiedDate" = true, "AllowedPattern" = true, "LastModifiedUser" = true, "Type" = true, "Description" = true, nil }

function M.AssertParameterMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterMetadata to be of type 'table'")
	if struct["KeyId"] then M.AssertParameterKeyId(struct["KeyId"]) end
	if struct["Name"] then M.AssertPSParameterName(struct["Name"]) end
	if struct["LastModifiedDate"] then M.AssertDateTime(struct["LastModifiedDate"]) end
	if struct["AllowedPattern"] then M.AssertAllowedPattern(struct["AllowedPattern"]) end
	if struct["LastModifiedUser"] then M.AssertString(struct["LastModifiedUser"]) end
	if struct["Type"] then M.AssertParameterType(struct["Type"]) end
	if struct["Description"] then M.AssertParameterDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(ParameterMetadata_keys[k], "ParameterMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterMetadata
-- <p>Metada includes information like the ARN of the last user and the date/time the parameter was last used.</p>
-- @param KeyId [ParameterKeyId] <p>The ID of the query key used for this parameter.</p>
-- @param Name [PSParameterName] <p>The parameter name.</p>
-- @param LastModifiedDate [DateTime] <p>Date the parameter was last changed or updated.</p>
-- @param AllowedPattern [AllowedPattern] <p>A parameter name can include only the following letters and symbols.</p> <p>a-zA-Z0-9_.-</p>
-- @param LastModifiedUser [String] <p>Amazon Resource Name (ARN) of the AWS user who last changed the parameter.</p>
-- @param Type [ParameterType] <p>The type of parameter. Valid parameter types include the following: String, String list, Secure string.</p>
-- @param Description [ParameterDescription] <p>Description of the parameter actions.</p>
function M.ParameterMetadata(KeyId, Name, LastModifiedDate, AllowedPattern, LastModifiedUser, Type, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterMetadata")
	local t = { 
		["KeyId"] = KeyId,
		["Name"] = Name,
		["LastModifiedDate"] = LastModifiedDate,
		["AllowedPattern"] = AllowedPattern,
		["LastModifiedUser"] = LastModifiedUser,
		["Type"] = Type,
		["Description"] = Description,
	}
	M.AssertParameterMetadata(t)
	return t
end

local GetParametersRequest_keys = { "Names" = true, "WithDecryption" = true, nil }

function M.AssertGetParametersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParametersRequest to be of type 'table'")
	assert(struct["Names"], "Expected key Names to exist in table")
	if struct["Names"] then M.AssertParameterNameList(struct["Names"]) end
	if struct["WithDecryption"] then M.AssertBoolean(struct["WithDecryption"]) end
	for k,_ in pairs(struct) do
		assert(GetParametersRequest_keys[k], "GetParametersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParametersRequest
--  
-- @param Names [ParameterNameList] <p>Names of the parameters for which you want to query information.</p>
-- @param WithDecryption [Boolean] <p>Return decrypted secure string value. Return decrypted values for secure string parameters. This flag is ignored for String and StringList parameter types.</p>
-- Required parameter: Names
function M.GetParametersRequest(Names, WithDecryption, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetParametersRequest")
	local t = { 
		["Names"] = Names,
		["WithDecryption"] = WithDecryption,
	}
	M.AssertGetParametersRequest(t)
	return t
end

local GetParametersResult_keys = { "InvalidParameters" = true, "Parameters" = true, nil }

function M.AssertGetParametersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParametersResult to be of type 'table'")
	if struct["InvalidParameters"] then M.AssertParameterNameList(struct["InvalidParameters"]) end
	if struct["Parameters"] then M.AssertParameterList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(GetParametersResult_keys[k], "GetParametersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParametersResult
--  
-- @param InvalidParameters [ParameterNameList] <p>A list of parameters that are not formatted correctly or do not run when executed.</p>
-- @param Parameters [ParameterList] <p>A list of details for a parameter.</p>
function M.GetParametersResult(InvalidParameters, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetParametersResult")
	local t = { 
		["InvalidParameters"] = InvalidParameters,
		["Parameters"] = Parameters,
	}
	M.AssertGetParametersResult(t)
	return t
end

local PatchFilter_keys = { "Values" = true, "Key" = true, nil }

function M.AssertPatchFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PatchFilter to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Values"] then M.AssertPatchFilterValueList(struct["Values"]) end
	if struct["Key"] then M.AssertPatchFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(PatchFilter_keys[k], "PatchFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PatchFilter
-- <p>Defines a patch filter.</p>
-- @param Values [PatchFilterValueList] <p>The value for the filter key.</p>
-- @param Key [PatchFilterKey] <p>The key for the filter (PRODUCT, CLASSIFICATION, MSRC_SEVERITY, PATCH_ID)</p>
-- Required parameter: Key
-- Required parameter: Values
function M.PatchFilter(Values, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PatchFilter")
	local t = { 
		["Values"] = Values,
		["Key"] = Key,
	}
	M.AssertPatchFilter(t)
	return t
end

local ItemSizeLimitExceededException_keys = { "TypeName" = true, "Message" = true, nil }

function M.AssertItemSizeLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ItemSizeLimitExceededException to be of type 'table'")
	if struct["TypeName"] then M.AssertInventoryItemTypeName(struct["TypeName"]) end
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ItemSizeLimitExceededException_keys[k], "ItemSizeLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ItemSizeLimitExceededException
-- <p>The inventory item size has exceeded the size limit.</p>
-- @param TypeName [InventoryItemTypeName] <p>The inventory item size has exceeded the size limit.</p>
-- @param Message [String] <p>The inventory item size has exceeded the size limit.</p>
function M.ItemSizeLimitExceededException(TypeName, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ItemSizeLimitExceededException")
	local t = { 
		["TypeName"] = TypeName,
		["Message"] = Message,
	}
	M.AssertItemSizeLimitExceededException(t)
	return t
end

local DescribeMaintenanceWindowExecutionTaskInvocationsResult_keys = { "NextToken" = true, "WindowExecutionTaskInvocationIdentities" = true, nil }

function M.AssertDescribeMaintenanceWindowExecutionTaskInvocationsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowExecutionTaskInvocationsResult to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["WindowExecutionTaskInvocationIdentities"] then M.AssertMaintenanceWindowExecutionTaskInvocationIdentityList(struct["WindowExecutionTaskInvocationIdentities"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMaintenanceWindowExecutionTaskInvocationsResult_keys[k], "DescribeMaintenanceWindowExecutionTaskInvocationsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowExecutionTaskInvocationsResult
--  
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @param WindowExecutionTaskInvocationIdentities [MaintenanceWindowExecutionTaskInvocationIdentityList] <p>Information about the task invocation results per invocation.</p>
function M.DescribeMaintenanceWindowExecutionTaskInvocationsResult(NextToken, WindowExecutionTaskInvocationIdentities, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMaintenanceWindowExecutionTaskInvocationsResult")
	local t = { 
		["NextToken"] = NextToken,
		["WindowExecutionTaskInvocationIdentities"] = WindowExecutionTaskInvocationIdentities,
	}
	M.AssertDescribeMaintenanceWindowExecutionTaskInvocationsResult(t)
	return t
end

local ResourceLimitExceededException_keys = { "Message" = true, nil }

function M.AssertResourceLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceLimitExceededException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceLimitExceededException_keys[k], "ResourceLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceLimitExceededException
-- <p>Error returned when the caller has exceeded the default resource limits (e.g. too many Maintenance Windows have been created).</p>
-- @param Message [String] <p>Error returned when the caller has exceeded the default resource limits (e.g. too many Maintenance Windows have been created).</p>
function M.ResourceLimitExceededException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceLimitExceededException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertResourceLimitExceededException(t)
	return t
end

local AddTagsToResourceRequest_keys = { "ResourceType" = true, "ResourceId" = true, "Tags" = true, nil }

function M.AssertAddTagsToResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceRequest to be of type 'table'")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["ResourceType"] then M.AssertResourceTypeForTagging(struct["ResourceType"]) end
	if struct["ResourceId"] then M.AssertResourceId(struct["ResourceId"]) end
	if struct["Tags"] then M.AssertTagList(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(AddTagsToResourceRequest_keys[k], "AddTagsToResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceRequest
--  
-- @param ResourceType [ResourceTypeForTagging] <p>Specifies the type of resource you are tagging.</p>
-- @param ResourceId [ResourceId] <p>The resource ID you want to tag.</p>
-- @param Tags [TagList] <p> One or more tags. The value parameter is required, but if you don't want the tag to have a value, specify the parameter with no value, and we set the value to an empty string. </p>
-- Required parameter: ResourceType
-- Required parameter: ResourceId
-- Required parameter: Tags
function M.AddTagsToResourceRequest(ResourceType, ResourceId, Tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToResourceRequest")
	local t = { 
		["ResourceType"] = ResourceType,
		["ResourceId"] = ResourceId,
		["Tags"] = Tags,
	}
	M.AssertAddTagsToResourceRequest(t)
	return t
end

local DocumentVersionInfo_keys = { "IsDefaultVersion" = true, "Name" = true, "DocumentVersion" = true, "CreatedDate" = true, nil }

function M.AssertDocumentVersionInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentVersionInfo to be of type 'table'")
	if struct["IsDefaultVersion"] then M.AssertBoolean(struct["IsDefaultVersion"]) end
	if struct["Name"] then M.AssertDocumentName(struct["Name"]) end
	if struct["DocumentVersion"] then M.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["CreatedDate"] then M.AssertDateTime(struct["CreatedDate"]) end
	for k,_ in pairs(struct) do
		assert(DocumentVersionInfo_keys[k], "DocumentVersionInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentVersionInfo
-- <p>Version information about the document.</p>
-- @param IsDefaultVersion [Boolean] <p>An identifier for the default version of the document.</p>
-- @param Name [DocumentName] <p>The document name.</p>
-- @param DocumentVersion [DocumentVersion] <p>The document version.</p>
-- @param CreatedDate [DateTime] <p>The date the document was created.</p>
function M.DocumentVersionInfo(IsDefaultVersion, Name, DocumentVersion, CreatedDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentVersionInfo")
	local t = { 
		["IsDefaultVersion"] = IsDefaultVersion,
		["Name"] = Name,
		["DocumentVersion"] = DocumentVersion,
		["CreatedDate"] = CreatedDate,
	}
	M.AssertDocumentVersionInfo(t)
	return t
end

local DescribeInstancePatchStatesRequest_keys = { "NextToken" = true, "MaxResults" = true, "InstanceIds" = true, nil }

function M.AssertDescribeInstancePatchStatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancePatchStatesRequest to be of type 'table'")
	assert(struct["InstanceIds"], "Expected key InstanceIds to exist in table")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertPatchComplianceMaxResults(struct["MaxResults"]) end
	if struct["InstanceIds"] then M.AssertInstanceIdList(struct["InstanceIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeInstancePatchStatesRequest_keys[k], "DescribeInstancePatchStatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancePatchStatesRequest
--  
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param MaxResults [PatchComplianceMaxResults] <p>The maximum number of instances to return (per page).</p>
-- @param InstanceIds [InstanceIdList] <p>The ID of the instance whose patch state information should be retrieved.</p>
-- Required parameter: InstanceIds
function M.DescribeInstancePatchStatesRequest(NextToken, MaxResults, InstanceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInstancePatchStatesRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["InstanceIds"] = InstanceIds,
	}
	M.AssertDescribeInstancePatchStatesRequest(t)
	return t
end

local GetDocumentResult_keys = { "Content" = true, "Name" = true, "DocumentVersion" = true, "DocumentType" = true, nil }

function M.AssertGetDocumentResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentResult to be of type 'table'")
	if struct["Content"] then M.AssertDocumentContent(struct["Content"]) end
	if struct["Name"] then M.AssertDocumentARN(struct["Name"]) end
	if struct["DocumentVersion"] then M.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["DocumentType"] then M.AssertDocumentType(struct["DocumentType"]) end
	for k,_ in pairs(struct) do
		assert(GetDocumentResult_keys[k], "GetDocumentResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentResult
--  
-- @param Content [DocumentContent] <p>The contents of the SSM document.</p>
-- @param Name [DocumentARN] <p>The name of the SSM document.</p>
-- @param DocumentVersion [DocumentVersion] <p>The document version.</p>
-- @param DocumentType [DocumentType] <p>The document type.</p>
function M.GetDocumentResult(Content, Name, DocumentVersion, DocumentType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDocumentResult")
	local t = { 
		["Content"] = Content,
		["Name"] = Name,
		["DocumentVersion"] = DocumentVersion,
		["DocumentType"] = DocumentType,
	}
	M.AssertGetDocumentResult(t)
	return t
end

local GetAutomationExecutionResult_keys = { "AutomationExecution" = true, nil }

function M.AssertGetAutomationExecutionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAutomationExecutionResult to be of type 'table'")
	if struct["AutomationExecution"] then M.AssertAutomationExecution(struct["AutomationExecution"]) end
	for k,_ in pairs(struct) do
		assert(GetAutomationExecutionResult_keys[k], "GetAutomationExecutionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAutomationExecutionResult
--  
-- @param AutomationExecution [AutomationExecution] <p>Detailed information about the current state of an automation execution.</p>
function M.GetAutomationExecutionResult(AutomationExecution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAutomationExecutionResult")
	local t = { 
		["AutomationExecution"] = AutomationExecution,
	}
	M.AssertGetAutomationExecutionResult(t)
	return t
end

local InvalidFilterKey_keys = { nil }

function M.AssertInvalidFilterKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidFilterKey to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidFilterKey_keys[k], "InvalidFilterKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidFilterKey
-- <p>The specified key is not valid.</p>
function M.InvalidFilterKey(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidFilterKey")
	local t = { 
	}
	M.AssertInvalidFilterKey(t)
	return t
end

local InventoryItem_keys = { "ContentHash" = true, "TypeName" = true, "SchemaVersion" = true, "CaptureTime" = true, "Content" = true, nil }

function M.AssertInventoryItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryItem to be of type 'table'")
	assert(struct["TypeName"], "Expected key TypeName to exist in table")
	assert(struct["SchemaVersion"], "Expected key SchemaVersion to exist in table")
	assert(struct["CaptureTime"], "Expected key CaptureTime to exist in table")
	if struct["ContentHash"] then M.AssertInventoryItemContentHash(struct["ContentHash"]) end
	if struct["TypeName"] then M.AssertInventoryItemTypeName(struct["TypeName"]) end
	if struct["SchemaVersion"] then M.AssertInventoryItemSchemaVersion(struct["SchemaVersion"]) end
	if struct["CaptureTime"] then M.AssertInventoryItemCaptureTime(struct["CaptureTime"]) end
	if struct["Content"] then M.AssertInventoryItemEntryList(struct["Content"]) end
	for k,_ in pairs(struct) do
		assert(InventoryItem_keys[k], "InventoryItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryItem
-- <p>Information collected from managed instances based on your inventory policy document</p>
-- @param ContentHash [InventoryItemContentHash] <p>MD5 hash of the inventory item type contents. The content hash is used to determine whether to update inventory information. The PutInventory API does not update the inventory item type contents if the MD5 hash has not changed since last update. </p>
-- @param TypeName [InventoryItemTypeName] <p>The name of the inventory type. Default inventory item type names start with AWS. Custom inventory type names will start with Custom. Default inventory item types include the following: AWS:AWSComponent, AWS:Application, AWS:InstanceInformation, AWS:Network, and AWS:WindowsUpdate.</p>
-- @param SchemaVersion [InventoryItemSchemaVersion] <p>The schema version for the inventory item.</p>
-- @param CaptureTime [InventoryItemCaptureTime] <p>The time the inventory information was collected.</p>
-- @param Content [InventoryItemEntryList] <p>The inventory data of the inventory type.</p>
-- Required parameter: TypeName
-- Required parameter: SchemaVersion
-- Required parameter: CaptureTime
function M.InventoryItem(ContentHash, TypeName, SchemaVersion, CaptureTime, Content, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InventoryItem")
	local t = { 
		["ContentHash"] = ContentHash,
		["TypeName"] = TypeName,
		["SchemaVersion"] = SchemaVersion,
		["CaptureTime"] = CaptureTime,
		["Content"] = Content,
	}
	M.AssertInventoryItem(t)
	return t
end

local MaintenanceWindowTaskParameterValueExpression_keys = { "Values" = true, nil }

function M.AssertMaintenanceWindowTaskParameterValueExpression(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaintenanceWindowTaskParameterValueExpression to be of type 'table'")
	if struct["Values"] then M.AssertMaintenanceWindowTaskParameterValueList(struct["Values"]) end
	for k,_ in pairs(struct) do
		assert(MaintenanceWindowTaskParameterValueExpression_keys[k], "MaintenanceWindowTaskParameterValueExpression contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaintenanceWindowTaskParameterValueExpression
-- <p>Defines the values for a task parameter.</p>
-- @param Values [MaintenanceWindowTaskParameterValueList] <p>This field contains an array of 0 or more strings, each 1 to 255 characters in length.</p>
function M.MaintenanceWindowTaskParameterValueExpression(Values, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaintenanceWindowTaskParameterValueExpression")
	local t = { 
		["Values"] = Values,
	}
	M.AssertMaintenanceWindowTaskParameterValueExpression(t)
	return t
end

local MaintenanceWindowIdentity_keys = { "Duration" = true, "Cutoff" = true, "WindowId" = true, "Enabled" = true, "Name" = true, nil }

function M.AssertMaintenanceWindowIdentity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaintenanceWindowIdentity to be of type 'table'")
	if struct["Duration"] then M.AssertMaintenanceWindowDurationHours(struct["Duration"]) end
	if struct["Cutoff"] then M.AssertMaintenanceWindowCutoff(struct["Cutoff"]) end
	if struct["WindowId"] then M.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["Enabled"] then M.AssertMaintenanceWindowEnabled(struct["Enabled"]) end
	if struct["Name"] then M.AssertMaintenanceWindowName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(MaintenanceWindowIdentity_keys[k], "MaintenanceWindowIdentity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaintenanceWindowIdentity
-- <p>Information about the Maintenance Window.</p>
-- @param Duration [MaintenanceWindowDurationHours] <p>The duration of the Maintenance Window in hours.</p>
-- @param Cutoff [MaintenanceWindowCutoff] <p>The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution.</p>
-- @param WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window.</p>
-- @param Enabled [MaintenanceWindowEnabled] <p>Whether the Maintenance Window is enabled.</p>
-- @param Name [MaintenanceWindowName] <p>The name of the Maintenance Window.</p>
function M.MaintenanceWindowIdentity(Duration, Cutoff, WindowId, Enabled, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaintenanceWindowIdentity")
	local t = { 
		["Duration"] = Duration,
		["Cutoff"] = Cutoff,
		["WindowId"] = WindowId,
		["Enabled"] = Enabled,
		["Name"] = Name,
	}
	M.AssertMaintenanceWindowIdentity(t)
	return t
end

local PatchStatus_keys = { "ApprovalDate" = true, "DeploymentStatus" = true, nil }

function M.AssertPatchStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PatchStatus to be of type 'table'")
	if struct["ApprovalDate"] then M.AssertDateTime(struct["ApprovalDate"]) end
	if struct["DeploymentStatus"] then M.AssertPatchDeploymentStatus(struct["DeploymentStatus"]) end
	for k,_ in pairs(struct) do
		assert(PatchStatus_keys[k], "PatchStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PatchStatus
-- <p>Information about the approval status of a patch.</p>
-- @param ApprovalDate [DateTime] <p>The date the patch was approved (or will be approved if the status is PENDING_APPROVAL).</p>
-- @param DeploymentStatus [PatchDeploymentStatus] <p>The approval status of a patch (APPROVED, PENDING_APPROVAL, EXPLICIT_APPROVED, EXPLICIT_REJECTED).</p>
function M.PatchStatus(ApprovalDate, DeploymentStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PatchStatus")
	local t = { 
		["ApprovalDate"] = ApprovalDate,
		["DeploymentStatus"] = DeploymentStatus,
	}
	M.AssertPatchStatus(t)
	return t
end

local ListDocumentsResult_keys = { "DocumentIdentifiers" = true, "NextToken" = true, nil }

function M.AssertListDocumentsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDocumentsResult to be of type 'table'")
	if struct["DocumentIdentifiers"] then M.AssertDocumentIdentifierList(struct["DocumentIdentifiers"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListDocumentsResult_keys[k], "ListDocumentsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDocumentsResult
--  
-- @param DocumentIdentifiers [DocumentIdentifierList] <p>The names of the SSM documents.</p>
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
function M.ListDocumentsResult(DocumentIdentifiers, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDocumentsResult")
	local t = { 
		["DocumentIdentifiers"] = DocumentIdentifiers,
		["NextToken"] = NextToken,
	}
	M.AssertListDocumentsResult(t)
	return t
end

local InvalidAutomationExecutionParametersException_keys = { "Message" = true, nil }

function M.AssertInvalidAutomationExecutionParametersException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAutomationExecutionParametersException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidAutomationExecutionParametersException_keys[k], "InvalidAutomationExecutionParametersException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAutomationExecutionParametersException
-- <p>The supplied parameters for invoking the specified Automation document are incorrect. For example, they may not match the set of parameters permitted for the specified Automation document.</p>
-- @param Message [String] <p>The supplied parameters for invoking the specified Automation document are incorrect. For example, they may not match the set of parameters permitted for the specified Automation document.</p>
function M.InvalidAutomationExecutionParametersException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAutomationExecutionParametersException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidAutomationExecutionParametersException(t)
	return t
end

local ParameterAlreadyExists_keys = { "message" = true, nil }

function M.AssertParameterAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterAlreadyExists to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ParameterAlreadyExists_keys[k], "ParameterAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterAlreadyExists
-- <p>The parameter already exists. You can't create duplicate parameters.</p>
-- @param message [String] <p>The parameter already exists. You can't create duplicate parameters.</p>
function M.ParameterAlreadyExists(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterAlreadyExists")
	local t = { 
		["message"] = message,
	}
	M.AssertParameterAlreadyExists(t)
	return t
end

local CancelCommandRequest_keys = { "CommandId" = true, "InstanceIds" = true, nil }

function M.AssertCancelCommandRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelCommandRequest to be of type 'table'")
	assert(struct["CommandId"], "Expected key CommandId to exist in table")
	if struct["CommandId"] then M.AssertCommandId(struct["CommandId"]) end
	if struct["InstanceIds"] then M.AssertInstanceIdList(struct["InstanceIds"]) end
	for k,_ in pairs(struct) do
		assert(CancelCommandRequest_keys[k], "CancelCommandRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelCommandRequest
-- <p/>
-- @param CommandId [CommandId] <p>The ID of the command you want to cancel.</p>
-- @param InstanceIds [InstanceIdList] <p>(Optional) A list of instance IDs on which you want to cancel the command. If not provided, the command is canceled on every instance on which it was requested.</p>
-- Required parameter: CommandId
function M.CancelCommandRequest(CommandId, InstanceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelCommandRequest")
	local t = { 
		["CommandId"] = CommandId,
		["InstanceIds"] = InstanceIds,
	}
	M.AssertCancelCommandRequest(t)
	return t
end

local DeregisterManagedInstanceRequest_keys = { "InstanceId" = true, nil }

function M.AssertDeregisterManagedInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterManagedInstanceRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then M.AssertManagedInstanceId(struct["InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(DeregisterManagedInstanceRequest_keys[k], "DeregisterManagedInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterManagedInstanceRequest
--  
-- @param InstanceId [ManagedInstanceId] <p>The ID assigned to the managed instance when you registered it using the activation process. </p>
-- Required parameter: InstanceId
function M.DeregisterManagedInstanceRequest(InstanceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterManagedInstanceRequest")
	local t = { 
		["InstanceId"] = InstanceId,
	}
	M.AssertDeregisterManagedInstanceRequest(t)
	return t
end

local Command_keys = { "Comment" = true, "Status" = true, "MaxErrors" = true, "Parameters" = true, "ExpiresAfter" = true, "ServiceRole" = true, "DocumentName" = true, "TargetCount" = true, "OutputS3BucketName" = true, "NotificationConfig" = true, "CompletedCount" = true, "Targets" = true, "StatusDetails" = true, "ErrorCount" = true, "OutputS3KeyPrefix" = true, "RequestedDateTime" = true, "OutputS3Region" = true, "CommandId" = true, "InstanceIds" = true, "MaxConcurrency" = true, nil }

function M.AssertCommand(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Command to be of type 'table'")
	if struct["Comment"] then M.AssertComment(struct["Comment"]) end
	if struct["Status"] then M.AssertCommandStatus(struct["Status"]) end
	if struct["MaxErrors"] then M.AssertMaxErrors(struct["MaxErrors"]) end
	if struct["Parameters"] then M.AssertParameters(struct["Parameters"]) end
	if struct["ExpiresAfter"] then M.AssertDateTime(struct["ExpiresAfter"]) end
	if struct["ServiceRole"] then M.AssertServiceRole(struct["ServiceRole"]) end
	if struct["DocumentName"] then M.AssertDocumentName(struct["DocumentName"]) end
	if struct["TargetCount"] then M.AssertTargetCount(struct["TargetCount"]) end
	if struct["OutputS3BucketName"] then M.AssertS3BucketName(struct["OutputS3BucketName"]) end
	if struct["NotificationConfig"] then M.AssertNotificationConfig(struct["NotificationConfig"]) end
	if struct["CompletedCount"] then M.AssertCompletedCount(struct["CompletedCount"]) end
	if struct["Targets"] then M.AssertTargets(struct["Targets"]) end
	if struct["StatusDetails"] then M.AssertStatusDetails(struct["StatusDetails"]) end
	if struct["ErrorCount"] then M.AssertErrorCount(struct["ErrorCount"]) end
	if struct["OutputS3KeyPrefix"] then M.AssertS3KeyPrefix(struct["OutputS3KeyPrefix"]) end
	if struct["RequestedDateTime"] then M.AssertDateTime(struct["RequestedDateTime"]) end
	if struct["OutputS3Region"] then M.AssertS3Region(struct["OutputS3Region"]) end
	if struct["CommandId"] then M.AssertCommandId(struct["CommandId"]) end
	if struct["InstanceIds"] then M.AssertInstanceIdList(struct["InstanceIds"]) end
	if struct["MaxConcurrency"] then M.AssertMaxConcurrency(struct["MaxConcurrency"]) end
	for k,_ in pairs(struct) do
		assert(Command_keys[k], "Command contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Command
-- <p>Describes a command request.</p>
-- @param Comment [Comment] <p>User-specified information about the command, such as a brief description of what the command should do.</p>
-- @param Status [CommandStatus] <p>The status of the command.</p>
-- @param MaxErrors [MaxErrors] <p>The maximum number of errors allowed before the system stops sending the command to additional targets. You can specify a number of errors, such as 10, or a percentage or errors, such as 10%. The default value is 50. For more information about how to use MaxErrors, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/run-command.html">Executing a Command Using Systems Manager Run Command</a>.</p>
-- @param Parameters [Parameters] <p>The parameter values to be inserted in the document when executing the command.</p>
-- @param ExpiresAfter [DateTime] <p>If this time is reached and the command has not already started executing, it will not execute. Calculated based on the ExpiresAfter user input provided as part of the SendCommand API.</p>
-- @param ServiceRole [ServiceRole] <p>The IAM service role that Run Command uses to act on your behalf when sending notifications about command status changes. </p>
-- @param DocumentName [DocumentName] <p>The name of the document requested for execution.</p>
-- @param TargetCount [TargetCount] <p>The number of targets for the command.</p>
-- @param OutputS3BucketName [S3BucketName] <p>The S3 bucket where the responses to the command executions should be stored. This was requested when issuing the command.</p>
-- @param NotificationConfig [NotificationConfig] <p>Configurations for sending notifications about command status changes. </p>
-- @param CompletedCount [CompletedCount] <p>The number of targets for which the command invocation reached a terminal state. Terminal states include the following: Success, Failed, Execution Timed Out, Delivery Timed Out, Canceled, Terminated, or Undeliverable.</p>
-- @param Targets [Targets] <p>An array of search criteria that targets instances using a Key,Value combination that you specify. Targets is required if you don't provide one or more instance IDs in the call.</p>
-- @param StatusDetails [StatusDetails] <p>A detailed status of the command execution. StatusDetails includes more information than Status because it includes states resulting from error and concurrency control parameters. StatusDetails can show different results than Status. For more information about these statuses, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-about-status.html">Run Command Status</a>. StatusDetails can be one of the following values:</p> <ul> <li> <p>Pending: The command has not been sent to any instances.</p> </li> <li> <p>In Progress: The command has been sent to at least one instance but has not reached a final state on all instances.</p> </li> <li> <p>Success: The command successfully executed on all invocations. This is a terminal state.</p> </li> <li> <p>Delivery Timed Out: The value of MaxErrors or more command invocations shows a status of Delivery Timed Out. This is a terminal state.</p> </li> <li> <p>Execution Timed Out: The value of MaxErrors or more command invocations shows a status of Execution Timed Out. This is a terminal state.</p> </li> <li> <p>Failed: The value of MaxErrors or more command invocations shows a status of Failed. This is a terminal state.</p> </li> <li> <p>Incomplete: The command was attempted on all instances and one or more invocations does not have a value of Success but not enough invocations failed for the status to be Failed. This is a terminal state.</p> </li> <li> <p>Canceled: The command was terminated before it was completed. This is a terminal state.</p> </li> <li> <p>Rate Exceeded: The number of instances targeted by the command exceeded the account limit for pending invocations. The system has canceled the command before executing it on any instance. This is a terminal state.</p> </li> </ul>
-- @param ErrorCount [ErrorCount] <p>The number of targets for which the status is Failed or Execution Timed Out.</p>
-- @param OutputS3KeyPrefix [S3KeyPrefix] <p>The S3 directory path inside the bucket where the responses to the command executions should be stored. This was requested when issuing the command.</p>
-- @param RequestedDateTime [DateTime] <p>The date and time the command was requested.</p>
-- @param OutputS3Region [S3Region] <p>(Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager automatically determines the Amazon S3 bucket region.</p>
-- @param CommandId [CommandId] <p>A unique identifier for this command.</p>
-- @param InstanceIds [InstanceIdList] <p>The instance IDs against which this command was requested.</p>
-- @param MaxConcurrency [MaxConcurrency] <p>The maximum number of instances that are allowed to execute the command at the same time. You can specify a number of instances, such as 10, or a percentage of instances, such as 10%. The default value is 50. For more information about how to use MaxConcurrency, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/run-command.html">Executing a Command Using Systems Manager Run Command</a>.</p>
function M.Command(Comment, Status, MaxErrors, Parameters, ExpiresAfter, ServiceRole, DocumentName, TargetCount, OutputS3BucketName, NotificationConfig, CompletedCount, Targets, StatusDetails, ErrorCount, OutputS3KeyPrefix, RequestedDateTime, OutputS3Region, CommandId, InstanceIds, MaxConcurrency, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Command")
	local t = { 
		["Comment"] = Comment,
		["Status"] = Status,
		["MaxErrors"] = MaxErrors,
		["Parameters"] = Parameters,
		["ExpiresAfter"] = ExpiresAfter,
		["ServiceRole"] = ServiceRole,
		["DocumentName"] = DocumentName,
		["TargetCount"] = TargetCount,
		["OutputS3BucketName"] = OutputS3BucketName,
		["NotificationConfig"] = NotificationConfig,
		["CompletedCount"] = CompletedCount,
		["Targets"] = Targets,
		["StatusDetails"] = StatusDetails,
		["ErrorCount"] = ErrorCount,
		["OutputS3KeyPrefix"] = OutputS3KeyPrefix,
		["RequestedDateTime"] = RequestedDateTime,
		["OutputS3Region"] = OutputS3Region,
		["CommandId"] = CommandId,
		["InstanceIds"] = InstanceIds,
		["MaxConcurrency"] = MaxConcurrency,
	}
	M.AssertCommand(t)
	return t
end

local PutParameterRequest_keys = { "KeyId" = true, "Name" = true, "Value" = true, "AllowedPattern" = true, "Type" = true, "Overwrite" = true, "Description" = true, nil }

function M.AssertPutParameterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutParameterRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["KeyId"] then M.AssertParameterKeyId(struct["KeyId"]) end
	if struct["Name"] then M.AssertPSParameterName(struct["Name"]) end
	if struct["Value"] then M.AssertPSParameterValue(struct["Value"]) end
	if struct["AllowedPattern"] then M.AssertAllowedPattern(struct["AllowedPattern"]) end
	if struct["Type"] then M.AssertParameterType(struct["Type"]) end
	if struct["Overwrite"] then M.AssertBoolean(struct["Overwrite"]) end
	if struct["Description"] then M.AssertParameterDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(PutParameterRequest_keys[k], "PutParameterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutParameterRequest
--  
-- @param KeyId [ParameterKeyId] <p>The KMS Key ID that you want to use to encrypt a parameter when you choose the SecureString data type. If you don't specify a key ID, the system uses the default key associated with your AWS account.</p>
-- @param Name [PSParameterName] <p>The name of the parameter that you want to add to the system.</p>
-- @param Value [PSParameterValue] <p>The parameter value that you want to add to the system.</p>
-- @param AllowedPattern [AllowedPattern] <p>A regular expression used to validate the parameter value. For example, for String types with values restricted to numbers, you can specify the following: AllowedPattern=^\d+$ </p>
-- @param Type [ParameterType] <p>The type of parameter that you want to add to the system.</p>
-- @param Overwrite [Boolean] <p>Overwrite an existing parameter. If not specified, will default to "false".</p>
-- @param Description [ParameterDescription] <p>Information about the parameter that you want to add to the system</p>
-- Required parameter: Name
-- Required parameter: Value
-- Required parameter: Type
function M.PutParameterRequest(KeyId, Name, Value, AllowedPattern, Type, Overwrite, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutParameterRequest")
	local t = { 
		["KeyId"] = KeyId,
		["Name"] = Name,
		["Value"] = Value,
		["AllowedPattern"] = AllowedPattern,
		["Type"] = Type,
		["Overwrite"] = Overwrite,
		["Description"] = Description,
	}
	M.AssertPutParameterRequest(t)
	return t
end

local RemoveTagsFromResourceRequest_keys = { "ResourceType" = true, "ResourceId" = true, "TagKeys" = true, nil }

function M.AssertRemoveTagsFromResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceRequest to be of type 'table'")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	assert(struct["TagKeys"], "Expected key TagKeys to exist in table")
	if struct["ResourceType"] then M.AssertResourceTypeForTagging(struct["ResourceType"]) end
	if struct["ResourceId"] then M.AssertResourceId(struct["ResourceId"]) end
	if struct["TagKeys"] then M.AssertKeyList(struct["TagKeys"]) end
	for k,_ in pairs(struct) do
		assert(RemoveTagsFromResourceRequest_keys[k], "RemoveTagsFromResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceRequest
--  
-- @param ResourceType [ResourceTypeForTagging] <p>The type of resource of which you want to remove a tag.</p>
-- @param ResourceId [ResourceId] <p>The resource ID for which you want to remove tags.</p>
-- @param TagKeys [KeyList] <p>Tag keys that you want to remove from the specified resource.</p>
-- Required parameter: ResourceType
-- Required parameter: ResourceId
-- Required parameter: TagKeys
function M.RemoveTagsFromResourceRequest(ResourceType, ResourceId, TagKeys, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromResourceRequest")
	local t = { 
		["ResourceType"] = ResourceType,
		["ResourceId"] = ResourceId,
		["TagKeys"] = TagKeys,
	}
	M.AssertRemoveTagsFromResourceRequest(t)
	return t
end

local DocumentFilter_keys = { "value" = true, "key" = true, nil }

function M.AssertDocumentFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentFilter to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	assert(struct["value"], "Expected key value to exist in table")
	if struct["value"] then M.AssertDocumentFilterValue(struct["value"]) end
	if struct["key"] then M.AssertDocumentFilterKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(DocumentFilter_keys[k], "DocumentFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentFilter
-- <p>Describes a filter.</p>
-- @param value [DocumentFilterValue] <p>The value of the filter.</p>
-- @param key [DocumentFilterKey] <p>The name of the filter.</p>
-- Required parameter: key
-- Required parameter: value
function M.DocumentFilter(value, key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentFilter")
	local t = { 
		["value"] = value,
		["key"] = key,
	}
	M.AssertDocumentFilter(t)
	return t
end

local GetDeployablePatchSnapshotForInstanceRequest_keys = { "InstanceId" = true, "SnapshotId" = true, nil }

function M.AssertGetDeployablePatchSnapshotForInstanceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeployablePatchSnapshotForInstanceRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["SnapshotId"], "Expected key SnapshotId to exist in table")
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["SnapshotId"] then M.AssertSnapshotId(struct["SnapshotId"]) end
	for k,_ in pairs(struct) do
		assert(GetDeployablePatchSnapshotForInstanceRequest_keys[k], "GetDeployablePatchSnapshotForInstanceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeployablePatchSnapshotForInstanceRequest
--  
-- @param InstanceId [InstanceId] <p>The ID of the instance for which the appropriate patch snapshot should be retrieved.</p>
-- @param SnapshotId [SnapshotId] <p>The user-defined snapshot ID.</p>
-- Required parameter: InstanceId
-- Required parameter: SnapshotId
function M.GetDeployablePatchSnapshotForInstanceRequest(InstanceId, SnapshotId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeployablePatchSnapshotForInstanceRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["SnapshotId"] = SnapshotId,
	}
	M.AssertGetDeployablePatchSnapshotForInstanceRequest(t)
	return t
end

local GetMaintenanceWindowExecutionResult_keys = { "Status" = true, "TaskIds" = true, "StartTime" = true, "EndTime" = true, "WindowExecutionId" = true, "StatusDetails" = true, nil }

function M.AssertGetMaintenanceWindowExecutionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMaintenanceWindowExecutionResult to be of type 'table'")
	if struct["Status"] then M.AssertMaintenanceWindowExecutionStatus(struct["Status"]) end
	if struct["TaskIds"] then M.AssertMaintenanceWindowExecutionTaskIdList(struct["TaskIds"]) end
	if struct["StartTime"] then M.AssertDateTime(struct["StartTime"]) end
	if struct["EndTime"] then M.AssertDateTime(struct["EndTime"]) end
	if struct["WindowExecutionId"] then M.AssertMaintenanceWindowExecutionId(struct["WindowExecutionId"]) end
	if struct["StatusDetails"] then M.AssertMaintenanceWindowExecutionStatusDetails(struct["StatusDetails"]) end
	for k,_ in pairs(struct) do
		assert(GetMaintenanceWindowExecutionResult_keys[k], "GetMaintenanceWindowExecutionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMaintenanceWindowExecutionResult
--  
-- @param Status [MaintenanceWindowExecutionStatus] <p>The status of the Maintenance Window execution.</p>
-- @param TaskIds [MaintenanceWindowExecutionTaskIdList] <p>The ID of the task executions from the Maintenance Window execution.</p>
-- @param StartTime [DateTime] <p>The time the Maintenance Window started executing.</p>
-- @param EndTime [DateTime] <p>The time the Maintenance Window finished executing.</p>
-- @param WindowExecutionId [MaintenanceWindowExecutionId] <p>The ID of the Maintenance Window execution.</p>
-- @param StatusDetails [MaintenanceWindowExecutionStatusDetails] <p>The details explaining the Status. Only available for certain status values.</p>
function M.GetMaintenanceWindowExecutionResult(Status, TaskIds, StartTime, EndTime, WindowExecutionId, StatusDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetMaintenanceWindowExecutionResult")
	local t = { 
		["Status"] = Status,
		["TaskIds"] = TaskIds,
		["StartTime"] = StartTime,
		["EndTime"] = EndTime,
		["WindowExecutionId"] = WindowExecutionId,
		["StatusDetails"] = StatusDetails,
	}
	M.AssertGetMaintenanceWindowExecutionResult(t)
	return t
end

local ListCommandsRequest_keys = { "InstanceId" = true, "Filters" = true, "NextToken" = true, "CommandId" = true, "MaxResults" = true, nil }

function M.AssertListCommandsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCommandsRequest to be of type 'table'")
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["Filters"] then M.AssertCommandFilterList(struct["Filters"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["CommandId"] then M.AssertCommandId(struct["CommandId"]) end
	if struct["MaxResults"] then M.AssertCommandMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListCommandsRequest_keys[k], "ListCommandsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCommandsRequest
--  
-- @param InstanceId [InstanceId] <p>(Optional) Lists commands issued against this instance ID.</p>
-- @param Filters [CommandFilterList] <p>(Optional) One or more filters. Use a filter to return a more specific list of results. </p>
-- @param NextToken [NextToken] <p>(Optional) The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param CommandId [CommandId] <p>(Optional) If provided, lists only the specified command.</p>
-- @param MaxResults [CommandMaxResults] <p>(Optional) The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
function M.ListCommandsRequest(InstanceId, Filters, NextToken, CommandId, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCommandsRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["Filters"] = Filters,
		["NextToken"] = NextToken,
		["CommandId"] = CommandId,
		["MaxResults"] = MaxResults,
	}
	M.AssertListCommandsRequest(t)
	return t
end

local GetDeployablePatchSnapshotForInstanceResult_keys = { "InstanceId" = true, "SnapshotId" = true, "SnapshotDownloadUrl" = true, nil }

function M.AssertGetDeployablePatchSnapshotForInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDeployablePatchSnapshotForInstanceResult to be of type 'table'")
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["SnapshotId"] then M.AssertSnapshotId(struct["SnapshotId"]) end
	if struct["SnapshotDownloadUrl"] then M.AssertSnapshotDownloadUrl(struct["SnapshotDownloadUrl"]) end
	for k,_ in pairs(struct) do
		assert(GetDeployablePatchSnapshotForInstanceResult_keys[k], "GetDeployablePatchSnapshotForInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDeployablePatchSnapshotForInstanceResult
--  
-- @param InstanceId [InstanceId] <p>The ID of the instance.</p>
-- @param SnapshotId [SnapshotId] <p>The user-defined snapshot ID.</p>
-- @param SnapshotDownloadUrl [SnapshotDownloadUrl] <p>A pre-signed Amazon S3 URL that can be used to download the patch snapshot.</p>
function M.GetDeployablePatchSnapshotForInstanceResult(InstanceId, SnapshotId, SnapshotDownloadUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDeployablePatchSnapshotForInstanceResult")
	local t = { 
		["InstanceId"] = InstanceId,
		["SnapshotId"] = SnapshotId,
		["SnapshotDownloadUrl"] = SnapshotDownloadUrl,
	}
	M.AssertGetDeployablePatchSnapshotForInstanceResult(t)
	return t
end

local ListInventoryEntriesRequest_keys = { "InstanceId" = true, "TypeName" = true, "NextToken" = true, "MaxResults" = true, "Filters" = true, nil }

function M.AssertListInventoryEntriesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInventoryEntriesRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["TypeName"], "Expected key TypeName to exist in table")
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["TypeName"] then M.AssertInventoryItemTypeName(struct["TypeName"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then M.AssertInventoryFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(ListInventoryEntriesRequest_keys[k], "ListInventoryEntriesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInventoryEntriesRequest
--  
-- @param InstanceId [InstanceId] <p>The instance ID for which you want inventory information.</p>
-- @param TypeName [InventoryItemTypeName] <p>The type of inventory item for which you want information.</p>
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param MaxResults [MaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- @param Filters [InventoryFilterList] <p>One or more filters. Use a filter to return a more specific list of results.</p>
-- Required parameter: InstanceId
-- Required parameter: TypeName
function M.ListInventoryEntriesRequest(InstanceId, TypeName, NextToken, MaxResults, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListInventoryEntriesRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["TypeName"] = TypeName,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["Filters"] = Filters,
	}
	M.AssertListInventoryEntriesRequest(t)
	return t
end

local DocumentVersionLimitExceeded_keys = { "Message" = true, nil }

function M.AssertDocumentVersionLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentVersionLimitExceeded to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DocumentVersionLimitExceeded_keys[k], "DocumentVersionLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentVersionLimitExceeded
-- <p>The document has too many versions. Delete one or more document versions and try again.</p>
-- @param Message [String] <p>The document has too many versions. Delete one or more document versions and try again.</p>
function M.DocumentVersionLimitExceeded(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentVersionLimitExceeded")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDocumentVersionLimitExceeded(t)
	return t
end

local DeletePatchBaselineResult_keys = { "BaselineId" = true, nil }

function M.AssertDeletePatchBaselineResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePatchBaselineResult to be of type 'table'")
	if struct["BaselineId"] then M.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(DeletePatchBaselineResult_keys[k], "DeletePatchBaselineResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePatchBaselineResult
--  
-- @param BaselineId [BaselineId] <p>The ID of the deleted patch baseline.</p>
function M.DeletePatchBaselineResult(BaselineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePatchBaselineResult")
	local t = { 
		["BaselineId"] = BaselineId,
	}
	M.AssertDeletePatchBaselineResult(t)
	return t
end

local DescribeDocumentPermissionResponse_keys = { "AccountIds" = true, nil }

function M.AssertDescribeDocumentPermissionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDocumentPermissionResponse to be of type 'table'")
	if struct["AccountIds"] then M.AssertAccountIdList(struct["AccountIds"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDocumentPermissionResponse_keys[k], "DescribeDocumentPermissionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDocumentPermissionResponse
--  
-- @param AccountIds [AccountIdList] <p>The account IDs that have permission to use this document. The ID can be either an AWS account or <i>All</i>.</p>
function M.DescribeDocumentPermissionResponse(AccountIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDocumentPermissionResponse")
	local t = { 
		["AccountIds"] = AccountIds,
	}
	M.AssertDescribeDocumentPermissionResponse(t)
	return t
end

local RegisterTaskWithMaintenanceWindowRequest_keys = { "ServiceRoleArn" = true, "LoggingInfo" = true, "MaxErrors" = true, "TaskArn" = true, "MaxConcurrency" = true, "ClientToken" = true, "Targets" = true, "Priority" = true, "WindowId" = true, "TaskType" = true, "TaskParameters" = true, nil }

function M.AssertRegisterTaskWithMaintenanceWindowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterTaskWithMaintenanceWindowRequest to be of type 'table'")
	assert(struct["WindowId"], "Expected key WindowId to exist in table")
	assert(struct["Targets"], "Expected key Targets to exist in table")
	assert(struct["TaskArn"], "Expected key TaskArn to exist in table")
	assert(struct["ServiceRoleArn"], "Expected key ServiceRoleArn to exist in table")
	assert(struct["TaskType"], "Expected key TaskType to exist in table")
	assert(struct["MaxConcurrency"], "Expected key MaxConcurrency to exist in table")
	assert(struct["MaxErrors"], "Expected key MaxErrors to exist in table")
	if struct["ServiceRoleArn"] then M.AssertServiceRole(struct["ServiceRoleArn"]) end
	if struct["LoggingInfo"] then M.AssertLoggingInfo(struct["LoggingInfo"]) end
	if struct["MaxErrors"] then M.AssertMaxErrors(struct["MaxErrors"]) end
	if struct["TaskArn"] then M.AssertMaintenanceWindowTaskArn(struct["TaskArn"]) end
	if struct["MaxConcurrency"] then M.AssertMaxConcurrency(struct["MaxConcurrency"]) end
	if struct["ClientToken"] then M.AssertClientToken(struct["ClientToken"]) end
	if struct["Targets"] then M.AssertTargets(struct["Targets"]) end
	if struct["Priority"] then M.AssertMaintenanceWindowTaskPriority(struct["Priority"]) end
	if struct["WindowId"] then M.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["TaskType"] then M.AssertMaintenanceWindowTaskType(struct["TaskType"]) end
	if struct["TaskParameters"] then M.AssertMaintenanceWindowTaskParameters(struct["TaskParameters"]) end
	for k,_ in pairs(struct) do
		assert(RegisterTaskWithMaintenanceWindowRequest_keys[k], "RegisterTaskWithMaintenanceWindowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterTaskWithMaintenanceWindowRequest
--  
-- @param ServiceRoleArn [ServiceRole] <p>The role that should be assumed when executing the task.</p>
-- @param LoggingInfo [LoggingInfo] <p>A structure containing information about an Amazon S3 bucket to write instance-level logs to. </p>
-- @param MaxErrors [MaxErrors] <p>The maximum number of errors allowed before this task stops being scheduled.</p>
-- @param TaskArn [MaintenanceWindowTaskArn] <p>The ARN of the task to execute </p>
-- @param MaxConcurrency [MaxConcurrency] <p>The maximum number of targets this task can be run for in parallel.</p>
-- @param ClientToken [ClientToken] <p>User-provided idempotency token.</p>
-- @param Targets [Targets] <p>The targets (either instances or tags). Instances are specified using Key=instanceids,Values=&lt;instanceid1&gt;,&lt;instanceid2&gt;. Tags are specified using Key=&lt;tag name&gt;,Values=&lt;tag value&gt;.</p>
-- @param Priority [MaintenanceWindowTaskPriority] <p>The priority of the task in the Maintenance Window, the lower the number the higher the priority. Tasks in a Maintenance Window are scheduled in priority order with tasks that have the same priority scheduled in parallel.</p>
-- @param WindowId [MaintenanceWindowId] <p>The id of the Maintenance Window the task should be added to.</p>
-- @param TaskType [MaintenanceWindowTaskType] <p>The type of task being registered.</p>
-- @param TaskParameters [MaintenanceWindowTaskParameters] <p>The parameters that should be passed to the task when it is executed.</p>
-- Required parameter: WindowId
-- Required parameter: Targets
-- Required parameter: TaskArn
-- Required parameter: ServiceRoleArn
-- Required parameter: TaskType
-- Required parameter: MaxConcurrency
-- Required parameter: MaxErrors
function M.RegisterTaskWithMaintenanceWindowRequest(ServiceRoleArn, LoggingInfo, MaxErrors, TaskArn, MaxConcurrency, ClientToken, Targets, Priority, WindowId, TaskType, TaskParameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterTaskWithMaintenanceWindowRequest")
	local t = { 
		["ServiceRoleArn"] = ServiceRoleArn,
		["LoggingInfo"] = LoggingInfo,
		["MaxErrors"] = MaxErrors,
		["TaskArn"] = TaskArn,
		["MaxConcurrency"] = MaxConcurrency,
		["ClientToken"] = ClientToken,
		["Targets"] = Targets,
		["Priority"] = Priority,
		["WindowId"] = WindowId,
		["TaskType"] = TaskType,
		["TaskParameters"] = TaskParameters,
	}
	M.AssertRegisterTaskWithMaintenanceWindowRequest(t)
	return t
end

local CreateAssociationRequest_keys = { "ScheduleExpression" = true, "OutputLocation" = true, "Name" = true, "Parameters" = true, "InstanceId" = true, "DocumentVersion" = true, "Targets" = true, nil }

function M.AssertCreateAssociationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAssociationRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["ScheduleExpression"] then M.AssertScheduleExpression(struct["ScheduleExpression"]) end
	if struct["OutputLocation"] then M.AssertInstanceAssociationOutputLocation(struct["OutputLocation"]) end
	if struct["Name"] then M.AssertDocumentName(struct["Name"]) end
	if struct["Parameters"] then M.AssertParameters(struct["Parameters"]) end
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["DocumentVersion"] then M.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["Targets"] then M.AssertTargets(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(CreateAssociationRequest_keys[k], "CreateAssociationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAssociationRequest
--  
-- @param ScheduleExpression [ScheduleExpression] <p>A cron expression when the association will be applied to the target(s).</p>
-- @param OutputLocation [InstanceAssociationOutputLocation] <p>An Amazon S3 bucket where you want to store the output details of the request.</p>
-- @param Name [DocumentName] <p>The name of the Systems Manager document.</p>
-- @param Parameters [Parameters] <p>The parameters for the documents runtime configuration. </p>
-- @param InstanceId [InstanceId] <p>The instance ID.</p>
-- @param DocumentVersion [DocumentVersion] <p>The document version you want to associate with the target(s). Can be a specific version or the default version.</p>
-- @param Targets [Targets] <p>The targets (either instances or tags) for the association.</p>
-- Required parameter: Name
function M.CreateAssociationRequest(ScheduleExpression, OutputLocation, Name, Parameters, InstanceId, DocumentVersion, Targets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAssociationRequest")
	local t = { 
		["ScheduleExpression"] = ScheduleExpression,
		["OutputLocation"] = OutputLocation,
		["Name"] = Name,
		["Parameters"] = Parameters,
		["InstanceId"] = InstanceId,
		["DocumentVersion"] = DocumentVersion,
		["Targets"] = Targets,
	}
	M.AssertCreateAssociationRequest(t)
	return t
end

local DescribeMaintenanceWindowTargetsResult_keys = { "NextToken" = true, "Targets" = true, nil }

function M.AssertDescribeMaintenanceWindowTargetsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowTargetsResult to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Targets"] then M.AssertMaintenanceWindowTargetList(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMaintenanceWindowTargetsResult_keys[k], "DescribeMaintenanceWindowTargetsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowTargetsResult
--  
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @param Targets [MaintenanceWindowTargetList] <p>Information about the targets in the Maintenance Window.</p>
function M.DescribeMaintenanceWindowTargetsResult(NextToken, Targets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMaintenanceWindowTargetsResult")
	local t = { 
		["NextToken"] = NextToken,
		["Targets"] = Targets,
	}
	M.AssertDescribeMaintenanceWindowTargetsResult(t)
	return t
end

local DescribePatchGroupStateResult_keys = { "InstancesWithNotApplicablePatches" = true, "InstancesWithMissingPatches" = true, "InstancesWithFailedPatches" = true, "InstancesWithInstalledOtherPatches" = true, "Instances" = true, "InstancesWithInstalledPatches" = true, nil }

function M.AssertDescribePatchGroupStateResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePatchGroupStateResult to be of type 'table'")
	if struct["InstancesWithNotApplicablePatches"] then M.AssertInteger(struct["InstancesWithNotApplicablePatches"]) end
	if struct["InstancesWithMissingPatches"] then M.AssertInteger(struct["InstancesWithMissingPatches"]) end
	if struct["InstancesWithFailedPatches"] then M.AssertInteger(struct["InstancesWithFailedPatches"]) end
	if struct["InstancesWithInstalledOtherPatches"] then M.AssertInteger(struct["InstancesWithInstalledOtherPatches"]) end
	if struct["Instances"] then M.AssertInteger(struct["Instances"]) end
	if struct["InstancesWithInstalledPatches"] then M.AssertInteger(struct["InstancesWithInstalledPatches"]) end
	for k,_ in pairs(struct) do
		assert(DescribePatchGroupStateResult_keys[k], "DescribePatchGroupStateResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePatchGroupStateResult
--  
-- @param InstancesWithNotApplicablePatches [Integer] <p>The number of instances with patches that aren't applicable.</p>
-- @param InstancesWithMissingPatches [Integer] <p>The number of instances with missing patches from the patch baseline.</p>
-- @param InstancesWithFailedPatches [Integer] <p>The number of instances with patches from the patch baseline that failed to install.</p>
-- @param InstancesWithInstalledOtherPatches [Integer] <p>The number of instances with patches installed that aren't defined in the patch baseline.</p>
-- @param Instances [Integer] <p>The number of instances in the patch group.</p>
-- @param InstancesWithInstalledPatches [Integer] <p>The number of instances with installed patches.</p>
function M.DescribePatchGroupStateResult(InstancesWithNotApplicablePatches, InstancesWithMissingPatches, InstancesWithFailedPatches, InstancesWithInstalledOtherPatches, Instances, InstancesWithInstalledPatches, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePatchGroupStateResult")
	local t = { 
		["InstancesWithNotApplicablePatches"] = InstancesWithNotApplicablePatches,
		["InstancesWithMissingPatches"] = InstancesWithMissingPatches,
		["InstancesWithFailedPatches"] = InstancesWithFailedPatches,
		["InstancesWithInstalledOtherPatches"] = InstancesWithInstalledOtherPatches,
		["Instances"] = Instances,
		["InstancesWithInstalledPatches"] = InstancesWithInstalledPatches,
	}
	M.AssertDescribePatchGroupStateResult(t)
	return t
end

local ItemContentMismatchException_keys = { "TypeName" = true, "Message" = true, nil }

function M.AssertItemContentMismatchException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ItemContentMismatchException to be of type 'table'")
	if struct["TypeName"] then M.AssertInventoryItemTypeName(struct["TypeName"]) end
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ItemContentMismatchException_keys[k], "ItemContentMismatchException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ItemContentMismatchException
-- <p>The inventory item has invalid content. </p>
-- @param TypeName [InventoryItemTypeName] <p>The inventory item has invalid content. </p>
-- @param Message [String] <p>The inventory item has invalid content. </p>
function M.ItemContentMismatchException(TypeName, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ItemContentMismatchException")
	local t = { 
		["TypeName"] = TypeName,
		["Message"] = Message,
	}
	M.AssertItemContentMismatchException(t)
	return t
end

local DeleteParameterRequest_keys = { "Name" = true, nil }

function M.AssertDeleteParameterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteParameterRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertPSParameterName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DeleteParameterRequest_keys[k], "DeleteParameterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteParameterRequest
--  
-- @param Name [PSParameterName] <p>The name of the parameter to delete.</p>
-- Required parameter: Name
function M.DeleteParameterRequest(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteParameterRequest")
	local t = { 
		["Name"] = Name,
	}
	M.AssertDeleteParameterRequest(t)
	return t
end

local InvalidTarget_keys = { "Message" = true, nil }

function M.AssertInvalidTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTarget to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidTarget_keys[k], "InvalidTarget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTarget
-- <p>The target is not valid or does not exist. It might not be configured for EC2 Systems Manager or you might not have permission to perform the operation.</p>
-- @param Message [String] <p>The target is not valid or does not exist. It might not be configured for EC2 Systems Manager or you might not have permission to perform the operation.</p>
function M.InvalidTarget(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTarget")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidTarget(t)
	return t
end

local InstanceAssociation_keys = { "InstanceId" = true, "Content" = true, "AssociationId" = true, nil }

function M.AssertInstanceAssociation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceAssociation to be of type 'table'")
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["Content"] then M.AssertDocumentContent(struct["Content"]) end
	if struct["AssociationId"] then M.AssertAssociationId(struct["AssociationId"]) end
	for k,_ in pairs(struct) do
		assert(InstanceAssociation_keys[k], "InstanceAssociation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceAssociation
-- <p>One or more association documents on the instance. </p>
-- @param InstanceId [InstanceId] <p>The instance ID.</p>
-- @param Content [DocumentContent] <p>The content of the association document for the instance(s).</p>
-- @param AssociationId [AssociationId] <p>The association ID.</p>
function M.InstanceAssociation(InstanceId, Content, AssociationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceAssociation")
	local t = { 
		["InstanceId"] = InstanceId,
		["Content"] = Content,
		["AssociationId"] = AssociationId,
	}
	M.AssertInstanceAssociation(t)
	return t
end

local DescribeMaintenanceWindowExecutionTasksResult_keys = { "WindowExecutionTaskIdentities" = true, "NextToken" = true, nil }

function M.AssertDescribeMaintenanceWindowExecutionTasksResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowExecutionTasksResult to be of type 'table'")
	if struct["WindowExecutionTaskIdentities"] then M.AssertMaintenanceWindowExecutionTaskIdentityList(struct["WindowExecutionTaskIdentities"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMaintenanceWindowExecutionTasksResult_keys[k], "DescribeMaintenanceWindowExecutionTasksResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowExecutionTasksResult
--  
-- @param WindowExecutionTaskIdentities [MaintenanceWindowExecutionTaskIdentityList] <p>Information about the task executions.</p>
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
function M.DescribeMaintenanceWindowExecutionTasksResult(WindowExecutionTaskIdentities, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMaintenanceWindowExecutionTasksResult")
	local t = { 
		["WindowExecutionTaskIdentities"] = WindowExecutionTaskIdentities,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeMaintenanceWindowExecutionTasksResult(t)
	return t
end

local DescribeAvailablePatchesResult_keys = { "NextToken" = true, "Patches" = true, nil }

function M.AssertDescribeAvailablePatchesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAvailablePatchesResult to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Patches"] then M.AssertPatchList(struct["Patches"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAvailablePatchesResult_keys[k], "DescribeAvailablePatchesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAvailablePatchesResult
--  
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @param Patches [PatchList] <p>An array of patches. Each entry in the array is a patch structure.</p>
function M.DescribeAvailablePatchesResult(NextToken, Patches, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAvailablePatchesResult")
	local t = { 
		["NextToken"] = NextToken,
		["Patches"] = Patches,
	}
	M.AssertDescribeAvailablePatchesResult(t)
	return t
end

local RegisterPatchBaselineForPatchGroupRequest_keys = { "PatchGroup" = true, "BaselineId" = true, nil }

function M.AssertRegisterPatchBaselineForPatchGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterPatchBaselineForPatchGroupRequest to be of type 'table'")
	assert(struct["BaselineId"], "Expected key BaselineId to exist in table")
	assert(struct["PatchGroup"], "Expected key PatchGroup to exist in table")
	if struct["PatchGroup"] then M.AssertPatchGroup(struct["PatchGroup"]) end
	if struct["BaselineId"] then M.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(RegisterPatchBaselineForPatchGroupRequest_keys[k], "RegisterPatchBaselineForPatchGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterPatchBaselineForPatchGroupRequest
--  
-- @param PatchGroup [PatchGroup] <p>The name of the patch group that should be registered with the patch baseline.</p>
-- @param BaselineId [BaselineId] <p>The ID of the patch baseline to register the patch group with.</p>
-- Required parameter: BaselineId
-- Required parameter: PatchGroup
function M.RegisterPatchBaselineForPatchGroupRequest(PatchGroup, BaselineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterPatchBaselineForPatchGroupRequest")
	local t = { 
		["PatchGroup"] = PatchGroup,
		["BaselineId"] = BaselineId,
	}
	M.AssertRegisterPatchBaselineForPatchGroupRequest(t)
	return t
end

local StepExecution_keys = { "Inputs" = true, "Outputs" = true, "StepName" = true, "FailureMessage" = true, "ExecutionEndTime" = true, "FailureDetails" = true, "ResponseCode" = true, "ExecutionStartTime" = true, "Action" = true, "Response" = true, "StepStatus" = true, nil }

function M.AssertStepExecution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StepExecution to be of type 'table'")
	if struct["Inputs"] then M.AssertNormalStringMap(struct["Inputs"]) end
	if struct["Outputs"] then M.AssertAutomationParameterMap(struct["Outputs"]) end
	if struct["StepName"] then M.AssertString(struct["StepName"]) end
	if struct["FailureMessage"] then M.AssertString(struct["FailureMessage"]) end
	if struct["ExecutionEndTime"] then M.AssertDateTime(struct["ExecutionEndTime"]) end
	if struct["FailureDetails"] then M.AssertFailureDetails(struct["FailureDetails"]) end
	if struct["ResponseCode"] then M.AssertString(struct["ResponseCode"]) end
	if struct["ExecutionStartTime"] then M.AssertDateTime(struct["ExecutionStartTime"]) end
	if struct["Action"] then M.AssertAutomationActionName(struct["Action"]) end
	if struct["Response"] then M.AssertString(struct["Response"]) end
	if struct["StepStatus"] then M.AssertAutomationExecutionStatus(struct["StepStatus"]) end
	for k,_ in pairs(struct) do
		assert(StepExecution_keys[k], "StepExecution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StepExecution
-- <p>Detailed information about an the execution state of an Automation step.</p>
-- @param Inputs [NormalStringMap] <p>Fully-resolved values passed into the step before execution.</p>
-- @param Outputs [AutomationParameterMap] <p>Returned values from the execution of the step.</p>
-- @param StepName [String] <p>The name of this execution step.</p>
-- @param FailureMessage [String] <p>If a step failed, this message explains why the execution failed.</p>
-- @param ExecutionEndTime [DateTime] <p>If a step has finished execution, this contains the time the execution ended. If the step has not yet concluded, this field is not populated.</p>
-- @param FailureDetails [FailureDetails] <p>Information about the Automation failure.</p>
-- @param ResponseCode [String] <p>The response code returned by the execution of the step.</p>
-- @param ExecutionStartTime [DateTime] <p>If a step has begun execution, this contains the time the step started. If the step is in Pending status, this field is not populated.</p>
-- @param Action [AutomationActionName] <p>The action this step performs. The action determines the behavior of the step.</p>
-- @param Response [String] <p>A message associated with the response code for an execution.</p>
-- @param StepStatus [AutomationExecutionStatus] <p>The execution status for this step. Valid values include: Pending, InProgress, Success, Cancelled, Failed, and TimedOut.</p>
function M.StepExecution(Inputs, Outputs, StepName, FailureMessage, ExecutionEndTime, FailureDetails, ResponseCode, ExecutionStartTime, Action, Response, StepStatus, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StepExecution")
	local t = { 
		["Inputs"] = Inputs,
		["Outputs"] = Outputs,
		["StepName"] = StepName,
		["FailureMessage"] = FailureMessage,
		["ExecutionEndTime"] = ExecutionEndTime,
		["FailureDetails"] = FailureDetails,
		["ResponseCode"] = ResponseCode,
		["ExecutionStartTime"] = ExecutionStartTime,
		["Action"] = Action,
		["Response"] = Response,
		["StepStatus"] = StepStatus,
	}
	M.AssertStepExecution(t)
	return t
end

local InstancePatchStateFilter_keys = { "Type" = true, "Values" = true, "Key" = true, nil }

function M.AssertInstancePatchStateFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstancePatchStateFilter to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Type"] then M.AssertInstancePatchStateOperatorType(struct["Type"]) end
	if struct["Values"] then M.AssertInstancePatchStateFilterValues(struct["Values"]) end
	if struct["Key"] then M.AssertInstancePatchStateFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(InstancePatchStateFilter_keys[k], "InstancePatchStateFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstancePatchStateFilter
-- <p>Defines a filter used in DescribeInstancePatchStatesForPatchGroup used to scope down the information returned by the API.</p>
-- @param Type [InstancePatchStateOperatorType] <p>The type of comparison that should be performed for the value: Equal, NotEqual, LessThan or GreaterThan.</p>
-- @param Values [InstancePatchStateFilterValues] <p>The value for the filter, must be an integer greater than or equal to 0.</p>
-- @param Key [InstancePatchStateFilterKey] <p>The key for the filter. Supported values are FailedCount, InstalledCount, InstalledOtherCount, MissingCount and NotApplicableCount.</p>
-- Required parameter: Key
-- Required parameter: Values
-- Required parameter: Type
function M.InstancePatchStateFilter(Type, Values, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstancePatchStateFilter")
	local t = { 
		["Type"] = Type,
		["Values"] = Values,
		["Key"] = Key,
	}
	M.AssertInstancePatchStateFilter(t)
	return t
end

local DescribePatchBaselinesRequest_keys = { "NextToken" = true, "MaxResults" = true, "Filters" = true, nil }

function M.AssertDescribePatchBaselinesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePatchBaselinesRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertPatchBaselineMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then M.AssertPatchOrchestratorFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribePatchBaselinesRequest_keys[k], "DescribePatchBaselinesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePatchBaselinesRequest
--  
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param MaxResults [PatchBaselineMaxResults] <p>The maximum number of patch baselines to return (per page).</p>
-- @param Filters [PatchOrchestratorFilterList] <p>Each element in the array is a structure containing: </p> <p>Key: (string, "NAME_PREFIX" or "OWNER")</p> <p>Value: (array of strings, exactly 1 entry, between 1 and 255 characters)</p>
function M.DescribePatchBaselinesRequest(NextToken, MaxResults, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePatchBaselinesRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["Filters"] = Filters,
	}
	M.AssertDescribePatchBaselinesRequest(t)
	return t
end

local AutomationDefinitionVersionNotFoundException_keys = { "Message" = true, nil }

function M.AssertAutomationDefinitionVersionNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutomationDefinitionVersionNotFoundException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(AutomationDefinitionVersionNotFoundException_keys[k], "AutomationDefinitionVersionNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutomationDefinitionVersionNotFoundException
-- <p>An Automation document with the specified name and version could not be found.</p>
-- @param Message [String] <p>An Automation document with the specified name and version could not be found.</p>
function M.AutomationDefinitionVersionNotFoundException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutomationDefinitionVersionNotFoundException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertAutomationDefinitionVersionNotFoundException(t)
	return t
end

local DescribeActivationsResult_keys = { "NextToken" = true, "ActivationList" = true, nil }

function M.AssertDescribeActivationsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeActivationsResult to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["ActivationList"] then M.AssertActivationList(struct["ActivationList"]) end
	for k,_ in pairs(struct) do
		assert(DescribeActivationsResult_keys[k], "DescribeActivationsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeActivationsResult
--  
-- @param NextToken [NextToken] <p>The token for the next set of items to return. Use this token to get the next set of results. </p>
-- @param ActivationList [ActivationList] <p>A list of activations for your AWS account.</p>
function M.DescribeActivationsResult(NextToken, ActivationList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeActivationsResult")
	local t = { 
		["NextToken"] = NextToken,
		["ActivationList"] = ActivationList,
	}
	M.AssertDescribeActivationsResult(t)
	return t
end

local StartAutomationExecutionResult_keys = { "AutomationExecutionId" = true, nil }

function M.AssertStartAutomationExecutionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartAutomationExecutionResult to be of type 'table'")
	if struct["AutomationExecutionId"] then M.AssertAutomationExecutionId(struct["AutomationExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(StartAutomationExecutionResult_keys[k], "StartAutomationExecutionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartAutomationExecutionResult
--  
-- @param AutomationExecutionId [AutomationExecutionId] <p>The unique ID of a newly scheduled automation execution.</p>
function M.StartAutomationExecutionResult(AutomationExecutionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartAutomationExecutionResult")
	local t = { 
		["AutomationExecutionId"] = AutomationExecutionId,
	}
	M.AssertStartAutomationExecutionResult(t)
	return t
end

local ListDocumentVersionsResult_keys = { "DocumentVersions" = true, "NextToken" = true, nil }

function M.AssertListDocumentVersionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDocumentVersionsResult to be of type 'table'")
	if struct["DocumentVersions"] then M.AssertDocumentVersionList(struct["DocumentVersions"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListDocumentVersionsResult_keys[k], "ListDocumentVersionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDocumentVersionsResult
--  
-- @param DocumentVersions [DocumentVersionList] <p>The document versions.</p>
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
function M.ListDocumentVersionsResult(DocumentVersions, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDocumentVersionsResult")
	local t = { 
		["DocumentVersions"] = DocumentVersions,
		["NextToken"] = NextToken,
	}
	M.AssertListDocumentVersionsResult(t)
	return t
end

local DescribeEffectivePatchesForPatchBaselineRequest_keys = { "NextToken" = true, "BaselineId" = true, "MaxResults" = true, nil }

function M.AssertDescribeEffectivePatchesForPatchBaselineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEffectivePatchesForPatchBaselineRequest to be of type 'table'")
	assert(struct["BaselineId"], "Expected key BaselineId to exist in table")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["BaselineId"] then M.AssertBaselineId(struct["BaselineId"]) end
	if struct["MaxResults"] then M.AssertPatchBaselineMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEffectivePatchesForPatchBaselineRequest_keys[k], "DescribeEffectivePatchesForPatchBaselineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEffectivePatchesForPatchBaselineRequest
--  
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param BaselineId [BaselineId] <p>The ID of the patch baseline to retrieve the effective patches for.</p>
-- @param MaxResults [PatchBaselineMaxResults] <p>The maximum number of patches to return (per page).</p>
-- Required parameter: BaselineId
function M.DescribeEffectivePatchesForPatchBaselineRequest(NextToken, BaselineId, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEffectivePatchesForPatchBaselineRequest")
	local t = { 
		["NextToken"] = NextToken,
		["BaselineId"] = BaselineId,
		["MaxResults"] = MaxResults,
	}
	M.AssertDescribeEffectivePatchesForPatchBaselineRequest(t)
	return t
end

local Activation_keys = { "IamRole" = true, "RegistrationLimit" = true, "Description" = true, "ActivationId" = true, "RegistrationsCount" = true, "CreatedDate" = true, "DefaultInstanceName" = true, "Expired" = true, "ExpirationDate" = true, nil }

function M.AssertActivation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Activation to be of type 'table'")
	if struct["IamRole"] then M.AssertIamRole(struct["IamRole"]) end
	if struct["RegistrationLimit"] then M.AssertRegistrationLimit(struct["RegistrationLimit"]) end
	if struct["Description"] then M.AssertActivationDescription(struct["Description"]) end
	if struct["ActivationId"] then M.AssertActivationId(struct["ActivationId"]) end
	if struct["RegistrationsCount"] then M.AssertRegistrationsCount(struct["RegistrationsCount"]) end
	if struct["CreatedDate"] then M.AssertCreatedDate(struct["CreatedDate"]) end
	if struct["DefaultInstanceName"] then M.AssertDefaultInstanceName(struct["DefaultInstanceName"]) end
	if struct["Expired"] then M.AssertBoolean(struct["Expired"]) end
	if struct["ExpirationDate"] then M.AssertExpirationDate(struct["ExpirationDate"]) end
	for k,_ in pairs(struct) do
		assert(Activation_keys[k], "Activation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Activation
-- <p>An activation registers one or more on-premises servers or virtual machines (VMs) with AWS so that you can configure those servers or VMs using Run Command. A server or VM that has been registered with AWS is called a managed instance.</p>
-- @param IamRole [IamRole] <p>The Amazon Identity and Access Management (IAM) role to assign to the managed instance.</p>
-- @param RegistrationLimit [RegistrationLimit] <p>The maximum number of managed instances that can be registered using this activation.</p>
-- @param Description [ActivationDescription] <p>A user defined description of the activation.</p>
-- @param ActivationId [ActivationId] <p>The ID created by Systems Manager when you submitted the activation.</p>
-- @param RegistrationsCount [RegistrationsCount] <p>The number of managed instances already registered with this activation.</p>
-- @param CreatedDate [CreatedDate] <p>The date the activation was created.</p>
-- @param DefaultInstanceName [DefaultInstanceName] <p>A name for the managed instance when it is created.</p>
-- @param Expired [Boolean] <p>Whether or not the activation is expired.</p>
-- @param ExpirationDate [ExpirationDate] <p>The date when this activation can no longer be used to register managed instances.</p>
function M.Activation(IamRole, RegistrationLimit, Description, ActivationId, RegistrationsCount, CreatedDate, DefaultInstanceName, Expired, ExpirationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Activation")
	local t = { 
		["IamRole"] = IamRole,
		["RegistrationLimit"] = RegistrationLimit,
		["Description"] = Description,
		["ActivationId"] = ActivationId,
		["RegistrationsCount"] = RegistrationsCount,
		["CreatedDate"] = CreatedDate,
		["DefaultInstanceName"] = DefaultInstanceName,
		["Expired"] = Expired,
		["ExpirationDate"] = ExpirationDate,
	}
	M.AssertActivation(t)
	return t
end

local SendCommandResult_keys = { "Command" = true, nil }

function M.AssertSendCommandResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendCommandResult to be of type 'table'")
	if struct["Command"] then M.AssertCommand(struct["Command"]) end
	for k,_ in pairs(struct) do
		assert(SendCommandResult_keys[k], "SendCommandResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendCommandResult
--  
-- @param Command [Command] <p>The request as it was received by Systems Manager. Also provides the command ID which can be used future references to this request.</p>
function M.SendCommandResult(Command, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendCommandResult")
	local t = { 
		["Command"] = Command,
	}
	M.AssertSendCommandResult(t)
	return t
end

local GetInventoryRequest_keys = { "ResultAttributes" = true, "NextToken" = true, "MaxResults" = true, "Filters" = true, nil }

function M.AssertGetInventoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInventoryRequest to be of type 'table'")
	if struct["ResultAttributes"] then M.AssertResultAttributeList(struct["ResultAttributes"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then M.AssertInventoryFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(GetInventoryRequest_keys[k], "GetInventoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInventoryRequest
--  
-- @param ResultAttributes [ResultAttributeList] <p>The list of inventory item types to return.</p>
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param MaxResults [MaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- @param Filters [InventoryFilterList] <p>One or more filters. Use a filter to return a more specific list of results.</p>
function M.GetInventoryRequest(ResultAttributes, NextToken, MaxResults, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInventoryRequest")
	local t = { 
		["ResultAttributes"] = ResultAttributes,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["Filters"] = Filters,
	}
	M.AssertGetInventoryRequest(t)
	return t
end

local CreateAssociationResult_keys = { "AssociationDescription" = true, nil }

function M.AssertCreateAssociationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAssociationResult to be of type 'table'")
	if struct["AssociationDescription"] then M.AssertAssociationDescription(struct["AssociationDescription"]) end
	for k,_ in pairs(struct) do
		assert(CreateAssociationResult_keys[k], "CreateAssociationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAssociationResult
--  
-- @param AssociationDescription [AssociationDescription] <p>Information about the association.</p>
function M.CreateAssociationResult(AssociationDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAssociationResult")
	local t = { 
		["AssociationDescription"] = AssociationDescription,
	}
	M.AssertCreateAssociationResult(t)
	return t
end

local InvalidDocument_keys = { "Message" = true, nil }

function M.AssertInvalidDocument(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDocument to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidDocument_keys[k], "InvalidDocument contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDocument
-- <p>The specified document does not exist.</p>
-- @param Message [String] <p>The document does not exist or the document is not available to the user. This exception can be issued by CreateAssociation, CreateAssociationBatch, DeleteAssociation, DeleteDocument, DescribeAssociation, DescribeDocument, GetDocument, SendCommand, or UpdateAssociationStatus. </p>
function M.InvalidDocument(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDocument")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidDocument(t)
	return t
end

local DeleteAssociationResult_keys = { nil }

function M.AssertDeleteAssociationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAssociationResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteAssociationResult_keys[k], "DeleteAssociationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAssociationResult
--  
function M.DeleteAssociationResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAssociationResult")
	local t = { 
	}
	M.AssertDeleteAssociationResult(t)
	return t
end

local MaxDocumentSizeExceeded_keys = { "Message" = true, nil }

function M.AssertMaxDocumentSizeExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaxDocumentSizeExceeded to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(MaxDocumentSizeExceeded_keys[k], "MaxDocumentSizeExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaxDocumentSizeExceeded
-- <p>The size limit of a document is 64 KB.</p>
-- @param Message [String] <p>The size limit of a document is 64 KB.</p>
function M.MaxDocumentSizeExceeded(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaxDocumentSizeExceeded")
	local t = { 
		["Message"] = Message,
	}
	M.AssertMaxDocumentSizeExceeded(t)
	return t
end

local DescribePatchBaselinesResult_keys = { "NextToken" = true, "BaselineIdentities" = true, nil }

function M.AssertDescribePatchBaselinesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePatchBaselinesResult to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["BaselineIdentities"] then M.AssertPatchBaselineIdentityList(struct["BaselineIdentities"]) end
	for k,_ in pairs(struct) do
		assert(DescribePatchBaselinesResult_keys[k], "DescribePatchBaselinesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePatchBaselinesResult
--  
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @param BaselineIdentities [PatchBaselineIdentityList] <p>An array of PatchBaselineIdentity elements.</p>
function M.DescribePatchBaselinesResult(NextToken, BaselineIdentities, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePatchBaselinesResult")
	local t = { 
		["NextToken"] = NextToken,
		["BaselineIdentities"] = BaselineIdentities,
	}
	M.AssertDescribePatchBaselinesResult(t)
	return t
end

local DescribeMaintenanceWindowExecutionsResult_keys = { "WindowExecutions" = true, "NextToken" = true, nil }

function M.AssertDescribeMaintenanceWindowExecutionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowExecutionsResult to be of type 'table'")
	if struct["WindowExecutions"] then M.AssertMaintenanceWindowExecutionList(struct["WindowExecutions"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMaintenanceWindowExecutionsResult_keys[k], "DescribeMaintenanceWindowExecutionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowExecutionsResult
--  
-- @param WindowExecutions [MaintenanceWindowExecutionList] <p>Information about the Maintenance Windows execution.</p>
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
function M.DescribeMaintenanceWindowExecutionsResult(WindowExecutions, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMaintenanceWindowExecutionsResult")
	local t = { 
		["WindowExecutions"] = WindowExecutions,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeMaintenanceWindowExecutionsResult(t)
	return t
end

local CreatePatchBaselineResult_keys = { "BaselineId" = true, nil }

function M.AssertCreatePatchBaselineResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePatchBaselineResult to be of type 'table'")
	if struct["BaselineId"] then M.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(CreatePatchBaselineResult_keys[k], "CreatePatchBaselineResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePatchBaselineResult
--  
-- @param BaselineId [BaselineId] <p>The ID of the created patch baseline.</p>
function M.CreatePatchBaselineResult(BaselineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePatchBaselineResult")
	local t = { 
		["BaselineId"] = BaselineId,
	}
	M.AssertCreatePatchBaselineResult(t)
	return t
end

local PatchGroupPatchBaselineMapping_keys = { "PatchGroup" = true, "BaselineIdentity" = true, nil }

function M.AssertPatchGroupPatchBaselineMapping(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PatchGroupPatchBaselineMapping to be of type 'table'")
	if struct["PatchGroup"] then M.AssertPatchGroup(struct["PatchGroup"]) end
	if struct["BaselineIdentity"] then M.AssertPatchBaselineIdentity(struct["BaselineIdentity"]) end
	for k,_ in pairs(struct) do
		assert(PatchGroupPatchBaselineMapping_keys[k], "PatchGroupPatchBaselineMapping contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PatchGroupPatchBaselineMapping
-- <p>The mapping between a patch group and the patch baseline the patch group is registered with.</p>
-- @param PatchGroup [PatchGroup] <p>The name of the patch group registered with the patch baseline.</p>
-- @param BaselineIdentity [PatchBaselineIdentity] <p>The patch baseline the patch group is registered with.</p>
function M.PatchGroupPatchBaselineMapping(PatchGroup, BaselineIdentity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PatchGroupPatchBaselineMapping")
	local t = { 
		["PatchGroup"] = PatchGroup,
		["BaselineIdentity"] = BaselineIdentity,
	}
	M.AssertPatchGroupPatchBaselineMapping(t)
	return t
end

local InvalidInstanceInformationFilterValue_keys = { "message" = true, nil }

function M.AssertInvalidInstanceInformationFilterValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInstanceInformationFilterValue to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidInstanceInformationFilterValue_keys[k], "InvalidInstanceInformationFilterValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInstanceInformationFilterValue
-- <p>The specified filter value is not valid.</p>
-- @param message [String] <p>The specified filter value is not valid.</p>
function M.InvalidInstanceInformationFilterValue(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInstanceInformationFilterValue")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidInstanceInformationFilterValue(t)
	return t
end

local StopAutomationExecutionResult_keys = { nil }

function M.AssertStopAutomationExecutionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopAutomationExecutionResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(StopAutomationExecutionResult_keys[k], "StopAutomationExecutionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopAutomationExecutionResult
--  
function M.StopAutomationExecutionResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopAutomationExecutionResult")
	local t = { 
	}
	M.AssertStopAutomationExecutionResult(t)
	return t
end

local GetPatchBaselineForPatchGroupResult_keys = { "PatchGroup" = true, "BaselineId" = true, nil }

function M.AssertGetPatchBaselineForPatchGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPatchBaselineForPatchGroupResult to be of type 'table'")
	if struct["PatchGroup"] then M.AssertPatchGroup(struct["PatchGroup"]) end
	if struct["BaselineId"] then M.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(GetPatchBaselineForPatchGroupResult_keys[k], "GetPatchBaselineForPatchGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPatchBaselineForPatchGroupResult
--  
-- @param PatchGroup [PatchGroup] <p>The name of the patch group.</p>
-- @param BaselineId [BaselineId] <p>The ID of the patch baseline that should be used for the patch group.</p>
function M.GetPatchBaselineForPatchGroupResult(PatchGroup, BaselineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPatchBaselineForPatchGroupResult")
	local t = { 
		["PatchGroup"] = PatchGroup,
		["BaselineId"] = BaselineId,
	}
	M.AssertGetPatchBaselineForPatchGroupResult(t)
	return t
end

local ParameterHistory_keys = { "KeyId" = true, "Name" = true, "LastModifiedDate" = true, "Value" = true, "AllowedPattern" = true, "LastModifiedUser" = true, "Type" = true, "Description" = true, nil }

function M.AssertParameterHistory(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterHistory to be of type 'table'")
	if struct["KeyId"] then M.AssertParameterKeyId(struct["KeyId"]) end
	if struct["Name"] then M.AssertPSParameterName(struct["Name"]) end
	if struct["LastModifiedDate"] then M.AssertDateTime(struct["LastModifiedDate"]) end
	if struct["Value"] then M.AssertPSParameterValue(struct["Value"]) end
	if struct["AllowedPattern"] then M.AssertAllowedPattern(struct["AllowedPattern"]) end
	if struct["LastModifiedUser"] then M.AssertString(struct["LastModifiedUser"]) end
	if struct["Type"] then M.AssertParameterType(struct["Type"]) end
	if struct["Description"] then M.AssertParameterDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(ParameterHistory_keys[k], "ParameterHistory contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterHistory
-- <p>Information about parameter usage.</p>
-- @param KeyId [ParameterKeyId] <p>The ID of the query key used for this parameter.</p>
-- @param Name [PSParameterName] <p>The name of the parameter.</p>
-- @param LastModifiedDate [DateTime] <p>Date the parameter was last changed or updated.</p>
-- @param Value [PSParameterValue] <p>The parameter value.</p>
-- @param AllowedPattern [AllowedPattern] <p>Parameter names can include the following letters and symbols.</p> <p>a-zA-Z0-9_.-</p>
-- @param LastModifiedUser [String] <p>Amazon Resource Name (ARN) of the AWS user who last changed the parameter.</p>
-- @param Type [ParameterType] <p>The type of parameter used.</p>
-- @param Description [ParameterDescription] <p>Information about the parameter.</p>
function M.ParameterHistory(KeyId, Name, LastModifiedDate, Value, AllowedPattern, LastModifiedUser, Type, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterHistory")
	local t = { 
		["KeyId"] = KeyId,
		["Name"] = Name,
		["LastModifiedDate"] = LastModifiedDate,
		["Value"] = Value,
		["AllowedPattern"] = AllowedPattern,
		["LastModifiedUser"] = LastModifiedUser,
		["Type"] = Type,
		["Description"] = Description,
	}
	M.AssertParameterHistory(t)
	return t
end

local AutomationDefinitionNotFoundException_keys = { "Message" = true, nil }

function M.AssertAutomationDefinitionNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutomationDefinitionNotFoundException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(AutomationDefinitionNotFoundException_keys[k], "AutomationDefinitionNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutomationDefinitionNotFoundException
-- <p>An Automation document with the specified name could not be found.</p>
-- @param Message [String] <p>An Automation document with the specified name could not be found.</p>
function M.AutomationDefinitionNotFoundException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutomationDefinitionNotFoundException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertAutomationDefinitionNotFoundException(t)
	return t
end

local CommandPlugin_keys = { "Status" = true, "ResponseStartDateTime" = true, "StandardErrorUrl" = true, "OutputS3BucketName" = true, "OutputS3Region" = true, "OutputS3KeyPrefix" = true, "ResponseCode" = true, "Output" = true, "ResponseFinishDateTime" = true, "StatusDetails" = true, "StandardOutputUrl" = true, "Name" = true, nil }

function M.AssertCommandPlugin(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CommandPlugin to be of type 'table'")
	if struct["Status"] then M.AssertCommandPluginStatus(struct["Status"]) end
	if struct["ResponseStartDateTime"] then M.AssertDateTime(struct["ResponseStartDateTime"]) end
	if struct["StandardErrorUrl"] then M.AssertUrl(struct["StandardErrorUrl"]) end
	if struct["OutputS3BucketName"] then M.AssertS3BucketName(struct["OutputS3BucketName"]) end
	if struct["OutputS3Region"] then M.AssertS3Region(struct["OutputS3Region"]) end
	if struct["OutputS3KeyPrefix"] then M.AssertS3KeyPrefix(struct["OutputS3KeyPrefix"]) end
	if struct["ResponseCode"] then M.AssertResponseCode(struct["ResponseCode"]) end
	if struct["Output"] then M.AssertCommandPluginOutput(struct["Output"]) end
	if struct["ResponseFinishDateTime"] then M.AssertDateTime(struct["ResponseFinishDateTime"]) end
	if struct["StatusDetails"] then M.AssertStatusDetails(struct["StatusDetails"]) end
	if struct["StandardOutputUrl"] then M.AssertUrl(struct["StandardOutputUrl"]) end
	if struct["Name"] then M.AssertCommandPluginName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CommandPlugin_keys[k], "CommandPlugin contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CommandPlugin
-- <p>Describes plugin details.</p>
-- @param Status [CommandPluginStatus] <p>The status of this plugin. You can execute a document with multiple plugins.</p>
-- @param ResponseStartDateTime [DateTime] <p>The time the plugin started executing. </p>
-- @param StandardErrorUrl [Url] <p>The URL for the complete text written by the plugin to stderr. If execution is not yet complete, then this string is empty.</p>
-- @param OutputS3BucketName [S3BucketName] <p>The S3 bucket where the responses to the command executions should be stored. This was requested when issuing the command. For example, in the following response:</p> <p> test_folder/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix/i-1234567876543/awsrunShellScript </p> <p>test_folder is the name of the Amazon S3 bucket;</p> <p> ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix is the name of the S3 prefix;</p> <p>i-1234567876543 is the instance ID;</p> <p>awsrunShellScript is the name of the plugin.</p>
-- @param OutputS3Region [S3Region] <p>(Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager automatically determines the Amazon S3 bucket region.</p>
-- @param OutputS3KeyPrefix [S3KeyPrefix] <p>The S3 directory path inside the bucket where the responses to the command executions should be stored. This was requested when issuing the command. For example, in the following response:</p> <p> test_folder/ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix/i-1234567876543/awsrunShellScript </p> <p>test_folder is the name of the Amazon S3 bucket;</p> <p> ab19cb99-a030-46dd-9dfc-8eSAMPLEPre-Fix is the name of the S3 prefix;</p> <p>i-1234567876543 is the instance ID;</p> <p>awsrunShellScript is the name of the plugin.</p>
-- @param ResponseCode [ResponseCode] <p>A numeric response code generated after executing the plugin. </p>
-- @param Output [CommandPluginOutput] <p>Output of the plugin execution.</p>
-- @param ResponseFinishDateTime [DateTime] <p>The time the plugin stopped executing. Could stop prematurely if, for example, a cancel command was sent. </p>
-- @param StatusDetails [StatusDetails] <p>A detailed status of the plugin execution. StatusDetails includes more information than Status because it includes states resulting from error and concurrency control parameters. StatusDetails can show different results than Status. For more information about these statuses, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-about-status.html">Run Command Status</a>. StatusDetails can be one of the following values:</p> <ul> <li> <p>Pending: The command has not been sent to the instance.</p> </li> <li> <p>In Progress: The command has been sent to the instance but has not reached a terminal state.</p> </li> <li> <p>Success: The execution of the command or plugin was successfully completed. This is a terminal state.</p> </li> <li> <p>Delivery Timed Out: The command was not delivered to the instance before the delivery timeout expired. Delivery timeouts do not count against the parent command's MaxErrors limit, but they do contribute to whether the parent command status is Success or Incomplete. This is a terminal state.</p> </li> <li> <p>Execution Timed Out: Command execution started on the instance, but the execution was not complete before the execution timeout expired. Execution timeouts count against the MaxErrors limit of the parent command. This is a terminal state.</p> </li> <li> <p>Failed: The command was not successful on the instance. For a plugin, this indicates that the result code was not zero. For a command invocation, this indicates that the result code for one or more plugins was not zero. Invocation failures count against the MaxErrors limit of the parent command. This is a terminal state.</p> </li> <li> <p>Canceled: The command was terminated before it was completed. This is a terminal state.</p> </li> <li> <p>Undeliverable: The command can't be delivered to the instance. The instance might not exist, or it might not be responding. Undeliverable invocations don't count against the parent command's MaxErrors limit, and they don't contribute to whether the parent command status is Success or Incomplete. This is a terminal state.</p> </li> <li> <p>Terminated: The parent command exceeded its MaxErrors limit and subsequent command invocations were canceled by the system. This is a terminal state.</p> </li> </ul>
-- @param StandardOutputUrl [Url] <p>The URL for the complete text written by the plugin to stdout in Amazon S3. If the Amazon S3 bucket for the command was not specified, then this string is empty.</p>
-- @param Name [CommandPluginName] <p>The name of the plugin. Must be one of the following: aws:updateAgent, aws:domainjoin, aws:applications, aws:runPowerShellScript, aws:psmodule, aws:cloudWatch, aws:runShellScript, or aws:updateSSMAgent. </p>
function M.CommandPlugin(Status, ResponseStartDateTime, StandardErrorUrl, OutputS3BucketName, OutputS3Region, OutputS3KeyPrefix, ResponseCode, Output, ResponseFinishDateTime, StatusDetails, StandardOutputUrl, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CommandPlugin")
	local t = { 
		["Status"] = Status,
		["ResponseStartDateTime"] = ResponseStartDateTime,
		["StandardErrorUrl"] = StandardErrorUrl,
		["OutputS3BucketName"] = OutputS3BucketName,
		["OutputS3Region"] = OutputS3Region,
		["OutputS3KeyPrefix"] = OutputS3KeyPrefix,
		["ResponseCode"] = ResponseCode,
		["Output"] = Output,
		["ResponseFinishDateTime"] = ResponseFinishDateTime,
		["StatusDetails"] = StatusDetails,
		["StandardOutputUrl"] = StandardOutputUrl,
		["Name"] = Name,
	}
	M.AssertCommandPlugin(t)
	return t
end

local DocumentLimitExceeded_keys = { "Message" = true, nil }

function M.AssertDocumentLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentLimitExceeded to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DocumentLimitExceeded_keys[k], "DocumentLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentLimitExceeded
-- <p>You can have at most 200 active SSM documents.</p>
-- @param Message [String] <p>You can have at most 200 active SSM documents.</p>
function M.DocumentLimitExceeded(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentLimitExceeded")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDocumentLimitExceeded(t)
	return t
end

local DescribeEffectiveInstanceAssociationsResult_keys = { "Associations" = true, "NextToken" = true, nil }

function M.AssertDescribeEffectiveInstanceAssociationsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEffectiveInstanceAssociationsResult to be of type 'table'")
	if struct["Associations"] then M.AssertInstanceAssociationList(struct["Associations"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEffectiveInstanceAssociationsResult_keys[k], "DescribeEffectiveInstanceAssociationsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEffectiveInstanceAssociationsResult
--  
-- @param Associations [InstanceAssociationList] <p>The associations for the requested instance.</p>
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
function M.DescribeEffectiveInstanceAssociationsResult(Associations, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEffectiveInstanceAssociationsResult")
	local t = { 
		["Associations"] = Associations,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeEffectiveInstanceAssociationsResult(t)
	return t
end

local MaintenanceWindowExecutionTaskInvocationIdentity_keys = { "Status" = true, "Parameters" = true, "OwnerInformation" = true, "WindowTargetId" = true, "ExecutionId" = true, "InvocationId" = true, "StartTime" = true, "EndTime" = true, "WindowExecutionId" = true, "StatusDetails" = true, "TaskExecutionId" = true, nil }

function M.AssertMaintenanceWindowExecutionTaskInvocationIdentity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaintenanceWindowExecutionTaskInvocationIdentity to be of type 'table'")
	if struct["Status"] then M.AssertMaintenanceWindowExecutionStatus(struct["Status"]) end
	if struct["Parameters"] then M.AssertMaintenanceWindowExecutionTaskInvocationParameters(struct["Parameters"]) end
	if struct["OwnerInformation"] then M.AssertOwnerInformation(struct["OwnerInformation"]) end
	if struct["WindowTargetId"] then M.AssertMaintenanceWindowTaskTargetId(struct["WindowTargetId"]) end
	if struct["ExecutionId"] then M.AssertMaintenanceWindowExecutionTaskExecutionId(struct["ExecutionId"]) end
	if struct["InvocationId"] then M.AssertMaintenanceWindowExecutionTaskInvocationId(struct["InvocationId"]) end
	if struct["StartTime"] then M.AssertDateTime(struct["StartTime"]) end
	if struct["EndTime"] then M.AssertDateTime(struct["EndTime"]) end
	if struct["WindowExecutionId"] then M.AssertMaintenanceWindowExecutionId(struct["WindowExecutionId"]) end
	if struct["StatusDetails"] then M.AssertMaintenanceWindowExecutionStatusDetails(struct["StatusDetails"]) end
	if struct["TaskExecutionId"] then M.AssertMaintenanceWindowExecutionTaskId(struct["TaskExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(MaintenanceWindowExecutionTaskInvocationIdentity_keys[k], "MaintenanceWindowExecutionTaskInvocationIdentity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaintenanceWindowExecutionTaskInvocationIdentity
-- <p>Describes the information about a task invocation for a particular target as part of a task execution performed as part of a Maintenance Window execution.</p>
-- @param Status [MaintenanceWindowExecutionStatus] <p>The status of the task invocation.</p>
-- @param Parameters [MaintenanceWindowExecutionTaskInvocationParameters] <p>The parameters that were provided for the invocation when it was executed.</p>
-- @param OwnerInformation [OwnerInformation] <p>User-provided value that was specified when the target was registered with the Maintenance Window. This was also included in any CloudWatch events raised during the task invocation.</p>
-- @param WindowTargetId [MaintenanceWindowTaskTargetId] <p>The ID of the target definition in this Maintenance Window the invocation was performed for.</p>
-- @param ExecutionId [MaintenanceWindowExecutionTaskExecutionId] <p>The ID of the action performed in the service that actually handled the task invocation. If the task type is RUN_COMMAND, this value is the command ID.</p>
-- @param InvocationId [MaintenanceWindowExecutionTaskInvocationId] <p>The ID of the task invocation.</p>
-- @param StartTime [DateTime] <p>The time the invocation started.</p>
-- @param EndTime [DateTime] <p>The time the invocation finished.</p>
-- @param WindowExecutionId [MaintenanceWindowExecutionId] <p>The ID of the Maintenance Window execution that ran the task.</p>
-- @param StatusDetails [MaintenanceWindowExecutionStatusDetails] <p>The details explaining the status of the task invocation. Only available for certain Status values. </p>
-- @param TaskExecutionId [MaintenanceWindowExecutionTaskId] <p>The ID of the specific task execution in the Maintenance Window execution.</p>
function M.MaintenanceWindowExecutionTaskInvocationIdentity(Status, Parameters, OwnerInformation, WindowTargetId, ExecutionId, InvocationId, StartTime, EndTime, WindowExecutionId, StatusDetails, TaskExecutionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaintenanceWindowExecutionTaskInvocationIdentity")
	local t = { 
		["Status"] = Status,
		["Parameters"] = Parameters,
		["OwnerInformation"] = OwnerInformation,
		["WindowTargetId"] = WindowTargetId,
		["ExecutionId"] = ExecutionId,
		["InvocationId"] = InvocationId,
		["StartTime"] = StartTime,
		["EndTime"] = EndTime,
		["WindowExecutionId"] = WindowExecutionId,
		["StatusDetails"] = StatusDetails,
		["TaskExecutionId"] = TaskExecutionId,
	}
	M.AssertMaintenanceWindowExecutionTaskInvocationIdentity(t)
	return t
end

local UpdateAssociationStatusRequest_keys = { "InstanceId" = true, "AssociationStatus" = true, "Name" = true, nil }

function M.AssertUpdateAssociationStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAssociationStatusRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["AssociationStatus"], "Expected key AssociationStatus to exist in table")
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["AssociationStatus"] then M.AssertAssociationStatus(struct["AssociationStatus"]) end
	if struct["Name"] then M.AssertDocumentName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(UpdateAssociationStatusRequest_keys[k], "UpdateAssociationStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAssociationStatusRequest
--  
-- @param InstanceId [InstanceId] <p>The ID of the instance.</p>
-- @param AssociationStatus [AssociationStatus] <p>The association status.</p>
-- @param Name [DocumentName] <p>The name of the SSM document.</p>
-- Required parameter: Name
-- Required parameter: InstanceId
-- Required parameter: AssociationStatus
function M.UpdateAssociationStatusRequest(InstanceId, AssociationStatus, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAssociationStatusRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["AssociationStatus"] = AssociationStatus,
		["Name"] = Name,
	}
	M.AssertUpdateAssociationStatusRequest(t)
	return t
end

local UpdatePatchBaselineResult_keys = { "BaselineId" = true, "Name" = true, "RejectedPatches" = true, "GlobalFilters" = true, "ApprovalRules" = true, "ModifiedDate" = true, "CreatedDate" = true, "ApprovedPatches" = true, "Description" = true, nil }

function M.AssertUpdatePatchBaselineResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePatchBaselineResult to be of type 'table'")
	if struct["BaselineId"] then M.AssertBaselineId(struct["BaselineId"]) end
	if struct["Name"] then M.AssertBaselineName(struct["Name"]) end
	if struct["RejectedPatches"] then M.AssertPatchIdList(struct["RejectedPatches"]) end
	if struct["GlobalFilters"] then M.AssertPatchFilterGroup(struct["GlobalFilters"]) end
	if struct["ApprovalRules"] then M.AssertPatchRuleGroup(struct["ApprovalRules"]) end
	if struct["ModifiedDate"] then M.AssertDateTime(struct["ModifiedDate"]) end
	if struct["CreatedDate"] then M.AssertDateTime(struct["CreatedDate"]) end
	if struct["ApprovedPatches"] then M.AssertPatchIdList(struct["ApprovedPatches"]) end
	if struct["Description"] then M.AssertBaselineDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(UpdatePatchBaselineResult_keys[k], "UpdatePatchBaselineResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePatchBaselineResult
--  
-- @param BaselineId [BaselineId] <p>The ID of the deleted patch baseline.</p>
-- @param Name [BaselineName] <p>The name of the patch baseline.</p>
-- @param RejectedPatches [PatchIdList] <p>A list of explicitly rejected patches for the baseline.</p>
-- @param GlobalFilters [PatchFilterGroup] <p>A set of global filters used to exclude patches from the baseline.</p>
-- @param ApprovalRules [PatchRuleGroup] <p>A set of rules used to include patches in the baseline.</p>
-- @param ModifiedDate [DateTime] <p>The date when the patch baseline was last modified.</p>
-- @param CreatedDate [DateTime] <p>The date when the patch baseline was created.</p>
-- @param ApprovedPatches [PatchIdList] <p>A list of explicitly approved patches for the baseline.</p>
-- @param Description [BaselineDescription] <p>A description of the Patch Baseline.</p>
function M.UpdatePatchBaselineResult(BaselineId, Name, RejectedPatches, GlobalFilters, ApprovalRules, ModifiedDate, CreatedDate, ApprovedPatches, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdatePatchBaselineResult")
	local t = { 
		["BaselineId"] = BaselineId,
		["Name"] = Name,
		["RejectedPatches"] = RejectedPatches,
		["GlobalFilters"] = GlobalFilters,
		["ApprovalRules"] = ApprovalRules,
		["ModifiedDate"] = ModifiedDate,
		["CreatedDate"] = CreatedDate,
		["ApprovedPatches"] = ApprovedPatches,
		["Description"] = Description,
	}
	M.AssertUpdatePatchBaselineResult(t)
	return t
end

local DescribeEffectivePatchesForPatchBaselineResult_keys = { "NextToken" = true, "EffectivePatches" = true, nil }

function M.AssertDescribeEffectivePatchesForPatchBaselineResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEffectivePatchesForPatchBaselineResult to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["EffectivePatches"] then M.AssertEffectivePatchList(struct["EffectivePatches"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEffectivePatchesForPatchBaselineResult_keys[k], "DescribeEffectivePatchesForPatchBaselineResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEffectivePatchesForPatchBaselineResult
--  
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @param EffectivePatches [EffectivePatchList] <p>An array of patches and patch status.</p>
function M.DescribeEffectivePatchesForPatchBaselineResult(NextToken, EffectivePatches, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEffectivePatchesForPatchBaselineResult")
	local t = { 
		["NextToken"] = NextToken,
		["EffectivePatches"] = EffectivePatches,
	}
	M.AssertDescribeEffectivePatchesForPatchBaselineResult(t)
	return t
end

local DocumentAlreadyExists_keys = { "Message" = true, nil }

function M.AssertDocumentAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentAlreadyExists to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DocumentAlreadyExists_keys[k], "DocumentAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentAlreadyExists
-- <p>The specified document already exists.</p>
-- @param Message [String] <p>The specified document already exists.</p>
function M.DocumentAlreadyExists(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentAlreadyExists")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDocumentAlreadyExists(t)
	return t
end

local DeleteMaintenanceWindowRequest_keys = { "WindowId" = true, nil }

function M.AssertDeleteMaintenanceWindowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMaintenanceWindowRequest to be of type 'table'")
	assert(struct["WindowId"], "Expected key WindowId to exist in table")
	if struct["WindowId"] then M.AssertMaintenanceWindowId(struct["WindowId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteMaintenanceWindowRequest_keys[k], "DeleteMaintenanceWindowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMaintenanceWindowRequest
--  
-- @param WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window to delete.</p>
-- Required parameter: WindowId
function M.DeleteMaintenanceWindowRequest(WindowId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteMaintenanceWindowRequest")
	local t = { 
		["WindowId"] = WindowId,
	}
	M.AssertDeleteMaintenanceWindowRequest(t)
	return t
end

local ListAssociationsRequest_keys = { "AssociationFilterList" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListAssociationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssociationsRequest to be of type 'table'")
	if struct["AssociationFilterList"] then M.AssertAssociationFilterList(struct["AssociationFilterList"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListAssociationsRequest_keys[k], "ListAssociationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssociationsRequest
--  
-- @param AssociationFilterList [AssociationFilterList] <p>One or more filters. Use a filter to return a more specific list of results.</p>
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param MaxResults [MaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
function M.ListAssociationsRequest(AssociationFilterList, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssociationsRequest")
	local t = { 
		["AssociationFilterList"] = AssociationFilterList,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListAssociationsRequest(t)
	return t
end

local DescribeParametersRequest_keys = { "ParameterFilters" = true, "NextToken" = true, "MaxResults" = true, "Filters" = true, nil }

function M.AssertDescribeParametersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeParametersRequest to be of type 'table'")
	if struct["ParameterFilters"] then M.AssertParameterStringFilterList(struct["ParameterFilters"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then M.AssertParametersFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeParametersRequest_keys[k], "DescribeParametersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeParametersRequest
--  
-- @param ParameterFilters [ParameterStringFilterList] <p>Filters to limit the request results.</p>
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param MaxResults [MaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- @param Filters [ParametersFilterList] <p>One or more filters. Use a filter to return a more specific list of results.</p>
function M.DescribeParametersRequest(ParameterFilters, NextToken, MaxResults, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeParametersRequest")
	local t = { 
		["ParameterFilters"] = ParameterFilters,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["Filters"] = Filters,
	}
	M.AssertDescribeParametersRequest(t)
	return t
end

local DeleteParametersResult_keys = { "InvalidParameters" = true, "DeletedParameters" = true, nil }

function M.AssertDeleteParametersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteParametersResult to be of type 'table'")
	if struct["InvalidParameters"] then M.AssertParameterNameList(struct["InvalidParameters"]) end
	if struct["DeletedParameters"] then M.AssertParameterNameList(struct["DeletedParameters"]) end
	for k,_ in pairs(struct) do
		assert(DeleteParametersResult_keys[k], "DeleteParametersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteParametersResult
--  
-- @param InvalidParameters [ParameterNameList] <p>The names of parameters that weren't deleted because the parameters are not valid.</p>
-- @param DeletedParameters [ParameterNameList] <p>The names of the deleted parameters.</p>
function M.DeleteParametersResult(InvalidParameters, DeletedParameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteParametersResult")
	local t = { 
		["InvalidParameters"] = InvalidParameters,
		["DeletedParameters"] = DeletedParameters,
	}
	M.AssertDeleteParametersResult(t)
	return t
end

local AssociationStatus_keys = { "Date" = true, "AdditionalInfo" = true, "Message" = true, "Name" = true, nil }

function M.AssertAssociationStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociationStatus to be of type 'table'")
	assert(struct["Date"], "Expected key Date to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Message"], "Expected key Message to exist in table")
	if struct["Date"] then M.AssertDateTime(struct["Date"]) end
	if struct["AdditionalInfo"] then M.AssertStatusAdditionalInfo(struct["AdditionalInfo"]) end
	if struct["Message"] then M.AssertStatusMessage(struct["Message"]) end
	if struct["Name"] then M.AssertAssociationStatusName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(AssociationStatus_keys[k], "AssociationStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociationStatus
-- <p>Describes an association status.</p>
-- @param Date [DateTime] <p>The date when the status changed.</p>
-- @param AdditionalInfo [StatusAdditionalInfo] <p>A user-defined string.</p>
-- @param Message [StatusMessage] <p>The reason for the status.</p>
-- @param Name [AssociationStatusName] <p>The status.</p>
-- Required parameter: Date
-- Required parameter: Name
-- Required parameter: Message
function M.AssociationStatus(Date, AdditionalInfo, Message, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociationStatus")
	local t = { 
		["Date"] = Date,
		["AdditionalInfo"] = AdditionalInfo,
		["Message"] = Message,
		["Name"] = Name,
	}
	M.AssertAssociationStatus(t)
	return t
end

local InstanceInformationFilter_keys = { "valueSet" = true, "key" = true, nil }

function M.AssertInstanceInformationFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceInformationFilter to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	assert(struct["valueSet"], "Expected key valueSet to exist in table")
	if struct["valueSet"] then M.AssertInstanceInformationFilterValueSet(struct["valueSet"]) end
	if struct["key"] then M.AssertInstanceInformationFilterKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(InstanceInformationFilter_keys[k], "InstanceInformationFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceInformationFilter
-- <p>Describes a filter for a specific list of instances. </p>
-- @param valueSet [InstanceInformationFilterValueSet] <p>The filter values.</p>
-- @param key [InstanceInformationFilterKey] <p>The name of the filter. </p>
-- Required parameter: key
-- Required parameter: valueSet
function M.InstanceInformationFilter(valueSet, key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceInformationFilter")
	local t = { 
		["valueSet"] = valueSet,
		["key"] = key,
	}
	M.AssertInstanceInformationFilter(t)
	return t
end

local DescribeMaintenanceWindowTargetsRequest_keys = { "WindowId" = true, "NextToken" = true, "MaxResults" = true, "Filters" = true, nil }

function M.AssertDescribeMaintenanceWindowTargetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowTargetsRequest to be of type 'table'")
	assert(struct["WindowId"], "Expected key WindowId to exist in table")
	if struct["WindowId"] then M.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaintenanceWindowMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then M.AssertMaintenanceWindowFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMaintenanceWindowTargetsRequest_keys[k], "DescribeMaintenanceWindowTargetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowTargetsRequest
--  
-- @param WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window whose targets should be retrieved.</p>
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param MaxResults [MaintenanceWindowMaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- @param Filters [MaintenanceWindowFilterList] <p>Optional filters that can be used to narrow down the scope of the returned window targets. The supported filter keys are Type, WindowTargetId and OwnerInformation.</p>
-- Required parameter: WindowId
function M.DescribeMaintenanceWindowTargetsRequest(WindowId, NextToken, MaxResults, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMaintenanceWindowTargetsRequest")
	local t = { 
		["WindowId"] = WindowId,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["Filters"] = Filters,
	}
	M.AssertDescribeMaintenanceWindowTargetsRequest(t)
	return t
end

local CreateAssociationBatchRequestEntry_keys = { "ScheduleExpression" = true, "OutputLocation" = true, "Name" = true, "Parameters" = true, "InstanceId" = true, "DocumentVersion" = true, "Targets" = true, nil }

function M.AssertCreateAssociationBatchRequestEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAssociationBatchRequestEntry to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["ScheduleExpression"] then M.AssertScheduleExpression(struct["ScheduleExpression"]) end
	if struct["OutputLocation"] then M.AssertInstanceAssociationOutputLocation(struct["OutputLocation"]) end
	if struct["Name"] then M.AssertDocumentName(struct["Name"]) end
	if struct["Parameters"] then M.AssertParameters(struct["Parameters"]) end
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["DocumentVersion"] then M.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["Targets"] then M.AssertTargets(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(CreateAssociationBatchRequestEntry_keys[k], "CreateAssociationBatchRequestEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAssociationBatchRequestEntry
-- <p>Describes the association of a Systems Manager document and an instance.</p>
-- @param ScheduleExpression [ScheduleExpression] <p>A cron expression that specifies a schedule when the association runs.</p>
-- @param OutputLocation [InstanceAssociationOutputLocation] <p>An Amazon S3 bucket where you want to store the results of this request.</p>
-- @param Name [DocumentName] <p>The name of the configuration document. </p>
-- @param Parameters [Parameters] <p>A description of the parameters for a document. </p>
-- @param InstanceId [InstanceId] <p>The ID of the instance. </p>
-- @param DocumentVersion [DocumentVersion] <p>The document version.</p>
-- @param Targets [Targets] <p>The instances targeted by the request.</p>
-- Required parameter: Name
function M.CreateAssociationBatchRequestEntry(ScheduleExpression, OutputLocation, Name, Parameters, InstanceId, DocumentVersion, Targets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAssociationBatchRequestEntry")
	local t = { 
		["ScheduleExpression"] = ScheduleExpression,
		["OutputLocation"] = OutputLocation,
		["Name"] = Name,
		["Parameters"] = Parameters,
		["InstanceId"] = InstanceId,
		["DocumentVersion"] = DocumentVersion,
		["Targets"] = Targets,
	}
	M.AssertCreateAssociationBatchRequestEntry(t)
	return t
end

local ListTagsForResourceRequest_keys = { "ResourceType" = true, "ResourceId" = true, nil }

function M.AssertListTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceRequest to be of type 'table'")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["ResourceType"] then M.AssertResourceTypeForTagging(struct["ResourceType"]) end
	if struct["ResourceId"] then M.AssertResourceId(struct["ResourceId"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourceRequest_keys[k], "ListTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceRequest
--  
-- @param ResourceType [ResourceTypeForTagging] <p>Returns a list of tags for a specific resource type.</p>
-- @param ResourceId [ResourceId] <p>The resource ID for which you want to see a list of tags.</p>
-- Required parameter: ResourceType
-- Required parameter: ResourceId
function M.ListTagsForResourceRequest(ResourceType, ResourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceRequest")
	local t = { 
		["ResourceType"] = ResourceType,
		["ResourceId"] = ResourceId,
	}
	M.AssertListTagsForResourceRequest(t)
	return t
end

local Parameter_keys = { "Type" = true, "Name" = true, "Value" = true, nil }

function M.AssertParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Parameter to be of type 'table'")
	if struct["Type"] then M.AssertParameterType(struct["Type"]) end
	if struct["Name"] then M.AssertPSParameterName(struct["Name"]) end
	if struct["Value"] then M.AssertPSParameterValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(Parameter_keys[k], "Parameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Parameter
-- <p>An Amazon EC2 Systems Manager parameter in Parameter Store.</p>
-- @param Type [ParameterType] <p>The type of parameter. Valid values include the following: String, String list, Secure string.</p>
-- @param Name [PSParameterName] <p>The name of the parameter.</p>
-- @param Value [PSParameterValue] <p>The parameter value.</p>
function M.Parameter(Type, Name, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Parameter")
	local t = { 
		["Type"] = Type,
		["Name"] = Name,
		["Value"] = Value,
	}
	M.AssertParameter(t)
	return t
end

local InvalidPluginName_keys = { nil }

function M.AssertInvalidPluginName(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidPluginName to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidPluginName_keys[k], "InvalidPluginName contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidPluginName
-- <p>The plugin name is not valid.</p>
function M.InvalidPluginName(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidPluginName")
	local t = { 
	}
	M.AssertInvalidPluginName(t)
	return t
end

local GetParametersByPathResult_keys = { "NextToken" = true, "Parameters" = true, nil }

function M.AssertGetParametersByPathResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParametersByPathResult to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Parameters"] then M.AssertParameterList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(GetParametersByPathResult_keys[k], "GetParametersByPathResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParametersByPathResult
--  
-- @param NextToken [NextToken] <p>The token for the next set of items to return. Use this token to get the next set of results.</p>
-- @param Parameters [ParameterList] <p>A list of parameters found in the specified hierarchy.</p>
function M.GetParametersByPathResult(NextToken, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetParametersByPathResult")
	local t = { 
		["NextToken"] = NextToken,
		["Parameters"] = Parameters,
	}
	M.AssertGetParametersByPathResult(t)
	return t
end

local UpdateDocumentDefaultVersionResult_keys = { "Description" = true, nil }

function M.AssertUpdateDocumentDefaultVersionResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDocumentDefaultVersionResult to be of type 'table'")
	if struct["Description"] then M.AssertDocumentDefaultVersionDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDocumentDefaultVersionResult_keys[k], "UpdateDocumentDefaultVersionResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDocumentDefaultVersionResult
--  
-- @param Description [DocumentDefaultVersionDescription] <p>The description of a custom document that you want to set as the default version.</p>
function M.UpdateDocumentDefaultVersionResult(Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDocumentDefaultVersionResult")
	local t = { 
		["Description"] = Description,
	}
	M.AssertUpdateDocumentDefaultVersionResult(t)
	return t
end

local GetParametersByPathRequest_keys = { "Recursive" = true, "ParameterFilters" = true, "WithDecryption" = true, "MaxResults" = true, "Path" = true, "NextToken" = true, nil }

function M.AssertGetParametersByPathRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParametersByPathRequest to be of type 'table'")
	assert(struct["Path"], "Expected key Path to exist in table")
	if struct["Recursive"] then M.AssertBoolean(struct["Recursive"]) end
	if struct["ParameterFilters"] then M.AssertParameterStringFilterList(struct["ParameterFilters"]) end
	if struct["WithDecryption"] then M.AssertBoolean(struct["WithDecryption"]) end
	if struct["MaxResults"] then M.AssertGetParametersByPathMaxResults(struct["MaxResults"]) end
	if struct["Path"] then M.AssertPSParameterName(struct["Path"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(GetParametersByPathRequest_keys[k], "GetParametersByPathRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParametersByPathRequest
--  
-- @param Recursive [Boolean] <p>Retrieve all parameters within a hierarchy.</p>
-- @param ParameterFilters [ParameterStringFilterList] <p>Filters to limit the request results.</p>
-- @param WithDecryption [Boolean] <p>Retrieve all parameters in a hierarchy with their value decrypted.</p>
-- @param MaxResults [GetParametersByPathMaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- @param Path [PSParameterName] <p>The hierarchy for the parameter. Hierarchies start with a forward slash (/) and end with the parameter name. A hierarchy can have a maximum of five levels. Examples: /Environment/Test/DBString003</p> <p>/Finance/Prod/IAD/OS/WinServ2016/license15</p>
-- @param NextToken [NextToken] <p>A token to start the list. Use this token to get the next set of results. </p>
-- Required parameter: Path
function M.GetParametersByPathRequest(Recursive, ParameterFilters, WithDecryption, MaxResults, Path, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetParametersByPathRequest")
	local t = { 
		["Recursive"] = Recursive,
		["ParameterFilters"] = ParameterFilters,
		["WithDecryption"] = WithDecryption,
		["MaxResults"] = MaxResults,
		["Path"] = Path,
		["NextToken"] = NextToken,
	}
	M.AssertGetParametersByPathRequest(t)
	return t
end

local UpdatePatchBaselineRequest_keys = { "BaselineId" = true, "Name" = true, "RejectedPatches" = true, "GlobalFilters" = true, "ApprovalRules" = true, "ApprovedPatches" = true, "Description" = true, nil }

function M.AssertUpdatePatchBaselineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePatchBaselineRequest to be of type 'table'")
	assert(struct["BaselineId"], "Expected key BaselineId to exist in table")
	if struct["BaselineId"] then M.AssertBaselineId(struct["BaselineId"]) end
	if struct["Name"] then M.AssertBaselineName(struct["Name"]) end
	if struct["RejectedPatches"] then M.AssertPatchIdList(struct["RejectedPatches"]) end
	if struct["GlobalFilters"] then M.AssertPatchFilterGroup(struct["GlobalFilters"]) end
	if struct["ApprovalRules"] then M.AssertPatchRuleGroup(struct["ApprovalRules"]) end
	if struct["ApprovedPatches"] then M.AssertPatchIdList(struct["ApprovedPatches"]) end
	if struct["Description"] then M.AssertBaselineDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(UpdatePatchBaselineRequest_keys[k], "UpdatePatchBaselineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePatchBaselineRequest
--  
-- @param BaselineId [BaselineId] <p>The ID of the patch baseline to update.</p>
-- @param Name [BaselineName] <p>The name of the patch baseline.</p>
-- @param RejectedPatches [PatchIdList] <p>A list of explicitly rejected patches for the baseline.</p>
-- @param GlobalFilters [PatchFilterGroup] <p>A set of global filters used to exclude patches from the baseline.</p>
-- @param ApprovalRules [PatchRuleGroup] <p>A set of rules used to include patches in the baseline.</p>
-- @param ApprovedPatches [PatchIdList] <p>A list of explicitly approved patches for the baseline.</p>
-- @param Description [BaselineDescription] <p>A description of the patch baseline.</p>
-- Required parameter: BaselineId
function M.UpdatePatchBaselineRequest(BaselineId, Name, RejectedPatches, GlobalFilters, ApprovalRules, ApprovedPatches, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdatePatchBaselineRequest")
	local t = { 
		["BaselineId"] = BaselineId,
		["Name"] = Name,
		["RejectedPatches"] = RejectedPatches,
		["GlobalFilters"] = GlobalFilters,
		["ApprovalRules"] = ApprovalRules,
		["ApprovedPatches"] = ApprovedPatches,
		["Description"] = Description,
	}
	M.AssertUpdatePatchBaselineRequest(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Value"] then M.AssertTagValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>Metadata that you assign to your managed instances. Tags enable you to categorize your managed instances in different ways, for example, by purpose, owner, or environment.</p>
-- @param Value [TagValue] <p>The value of the tag.</p>
-- @param Key [TagKey] <p>The name of the tag.</p>
-- Required parameter: Key
-- Required parameter: Value
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local PatchRuleGroup_keys = { "PatchRules" = true, nil }

function M.AssertPatchRuleGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PatchRuleGroup to be of type 'table'")
	assert(struct["PatchRules"], "Expected key PatchRules to exist in table")
	if struct["PatchRules"] then M.AssertPatchRuleList(struct["PatchRules"]) end
	for k,_ in pairs(struct) do
		assert(PatchRuleGroup_keys[k], "PatchRuleGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PatchRuleGroup
-- <p>A set of rules defining the approval rules for a patch baseline.</p>
-- @param PatchRules [PatchRuleList] <p>The rules that make up the rule group.</p>
-- Required parameter: PatchRules
function M.PatchRuleGroup(PatchRules, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PatchRuleGroup")
	local t = { 
		["PatchRules"] = PatchRules,
	}
	M.AssertPatchRuleGroup(t)
	return t
end

local FailureDetails_keys = { "FailureStage" = true, "FailureType" = true, "Details" = true, nil }

function M.AssertFailureDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailureDetails to be of type 'table'")
	if struct["FailureStage"] then M.AssertString(struct["FailureStage"]) end
	if struct["FailureType"] then M.AssertString(struct["FailureType"]) end
	if struct["Details"] then M.AssertAutomationParameterMap(struct["Details"]) end
	for k,_ in pairs(struct) do
		assert(FailureDetails_keys[k], "FailureDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailureDetails
-- <p>Information about an Automation failure.</p>
-- @param FailureStage [String] <p>The stage of the Automation execution when the failure occurred. The stages include the following: InputValidation, PreVerification, Invocation, PostVerification.</p>
-- @param FailureType [String] <p>The type of Automation failure. Failure types include the following: Action, Permission, Throttling, Verification, Internal.</p>
-- @param Details [AutomationParameterMap] <p>Detailed information about the Automation step failure.</p>
function M.FailureDetails(FailureStage, FailureType, Details, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FailureDetails")
	local t = { 
		["FailureStage"] = FailureStage,
		["FailureType"] = FailureType,
		["Details"] = Details,
	}
	M.AssertFailureDetails(t)
	return t
end

local UnsupportedParameterType_keys = { "message" = true, nil }

function M.AssertUnsupportedParameterType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedParameterType to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnsupportedParameterType_keys[k], "UnsupportedParameterType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedParameterType
-- <p>The parameter type is not supported.</p>
-- @param message [String] <p>The parameter type is not supported.</p>
function M.UnsupportedParameterType(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedParameterType")
	local t = { 
		["message"] = message,
	}
	M.AssertUnsupportedParameterType(t)
	return t
end

local ListCommandInvocationsResult_keys = { "NextToken" = true, "CommandInvocations" = true, nil }

function M.AssertListCommandInvocationsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCommandInvocationsResult to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["CommandInvocations"] then M.AssertCommandInvocationList(struct["CommandInvocations"]) end
	for k,_ in pairs(struct) do
		assert(ListCommandInvocationsResult_keys[k], "ListCommandInvocationsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCommandInvocationsResult
--  
-- @param NextToken [NextToken] <p>(Optional) The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param CommandInvocations [CommandInvocationList] <p>(Optional) A list of all invocations. </p>
function M.ListCommandInvocationsResult(NextToken, CommandInvocations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCommandInvocationsResult")
	local t = { 
		["NextToken"] = NextToken,
		["CommandInvocations"] = CommandInvocations,
	}
	M.AssertListCommandInvocationsResult(t)
	return t
end

local DescribeInstancePatchesResult_keys = { "NextToken" = true, "Patches" = true, nil }

function M.AssertDescribeInstancePatchesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancePatchesResult to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Patches"] then M.AssertPatchComplianceDataList(struct["Patches"]) end
	for k,_ in pairs(struct) do
		assert(DescribeInstancePatchesResult_keys[k], "DescribeInstancePatchesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancePatchesResult
--  
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @param Patches [PatchComplianceDataList] <p>Each entry in the array is a structure containing:</p> <p>Title (string)</p> <p>KBId (string)</p> <p>Classification (string)</p> <p>Severity (string)</p> <p>State (string: "INSTALLED", "INSTALLED OTHER", "MISSING", "NOT APPLICABLE", "FAILED")</p> <p>InstalledTime (DateTime)</p> <p>InstalledBy (string)</p>
function M.DescribeInstancePatchesResult(NextToken, Patches, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInstancePatchesResult")
	local t = { 
		["NextToken"] = NextToken,
		["Patches"] = Patches,
	}
	M.AssertDescribeInstancePatchesResult(t)
	return t
end

local GetPatchBaselineForPatchGroupRequest_keys = { "PatchGroup" = true, nil }

function M.AssertGetPatchBaselineForPatchGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPatchBaselineForPatchGroupRequest to be of type 'table'")
	assert(struct["PatchGroup"], "Expected key PatchGroup to exist in table")
	if struct["PatchGroup"] then M.AssertPatchGroup(struct["PatchGroup"]) end
	for k,_ in pairs(struct) do
		assert(GetPatchBaselineForPatchGroupRequest_keys[k], "GetPatchBaselineForPatchGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPatchBaselineForPatchGroupRequest
--  
-- @param PatchGroup [PatchGroup] <p>The name of the patch group whose patch baseline should be retrieved.</p>
-- Required parameter: PatchGroup
function M.GetPatchBaselineForPatchGroupRequest(PatchGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPatchBaselineForPatchGroupRequest")
	local t = { 
		["PatchGroup"] = PatchGroup,
	}
	M.AssertGetPatchBaselineForPatchGroupRequest(t)
	return t
end

local ResourceInUseException_keys = { "Message" = true, nil }

function M.AssertResourceInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUseException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceInUseException_keys[k], "ResourceInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUseException
-- <p>Error returned if an attempt is made to delete a patch baseline that is registered for a patch group.</p>
-- @param Message [String] <p>Error returned if an attempt is made to delete a patch baseline that is registered for a patch group.</p>
function M.ResourceInUseException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceInUseException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertResourceInUseException(t)
	return t
end

local DescribeMaintenanceWindowsResult_keys = { "WindowIdentities" = true, "NextToken" = true, nil }

function M.AssertDescribeMaintenanceWindowsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowsResult to be of type 'table'")
	if struct["WindowIdentities"] then M.AssertMaintenanceWindowIdentityList(struct["WindowIdentities"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMaintenanceWindowsResult_keys[k], "DescribeMaintenanceWindowsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowsResult
--  
-- @param WindowIdentities [MaintenanceWindowIdentityList] <p>Information about the Maintenance Windows.</p>
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
function M.DescribeMaintenanceWindowsResult(WindowIdentities, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMaintenanceWindowsResult")
	local t = { 
		["WindowIdentities"] = WindowIdentities,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeMaintenanceWindowsResult(t)
	return t
end

local DeletePatchBaselineRequest_keys = { "BaselineId" = true, nil }

function M.AssertDeletePatchBaselineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePatchBaselineRequest to be of type 'table'")
	assert(struct["BaselineId"], "Expected key BaselineId to exist in table")
	if struct["BaselineId"] then M.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(DeletePatchBaselineRequest_keys[k], "DeletePatchBaselineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePatchBaselineRequest
--  
-- @param BaselineId [BaselineId] <p>The ID of the patch baseline to delete.</p>
-- Required parameter: BaselineId
function M.DeletePatchBaselineRequest(BaselineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeletePatchBaselineRequest")
	local t = { 
		["BaselineId"] = BaselineId,
	}
	M.AssertDeletePatchBaselineRequest(t)
	return t
end

local CreateAssociationBatchRequest_keys = { "Entries" = true, nil }

function M.AssertCreateAssociationBatchRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAssociationBatchRequest to be of type 'table'")
	assert(struct["Entries"], "Expected key Entries to exist in table")
	if struct["Entries"] then M.AssertCreateAssociationBatchRequestEntries(struct["Entries"]) end
	for k,_ in pairs(struct) do
		assert(CreateAssociationBatchRequest_keys[k], "CreateAssociationBatchRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAssociationBatchRequest
--  
-- @param Entries [CreateAssociationBatchRequestEntries] <p>One or more associations.</p>
-- Required parameter: Entries
function M.CreateAssociationBatchRequest(Entries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAssociationBatchRequest")
	local t = { 
		["Entries"] = Entries,
	}
	M.AssertCreateAssociationBatchRequest(t)
	return t
end

local DescribeMaintenanceWindowExecutionTasksRequest_keys = { "NextToken" = true, "WindowExecutionId" = true, "MaxResults" = true, "Filters" = true, nil }

function M.AssertDescribeMaintenanceWindowExecutionTasksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowExecutionTasksRequest to be of type 'table'")
	assert(struct["WindowExecutionId"], "Expected key WindowExecutionId to exist in table")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["WindowExecutionId"] then M.AssertMaintenanceWindowExecutionId(struct["WindowExecutionId"]) end
	if struct["MaxResults"] then M.AssertMaintenanceWindowMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then M.AssertMaintenanceWindowFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMaintenanceWindowExecutionTasksRequest_keys[k], "DescribeMaintenanceWindowExecutionTasksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowExecutionTasksRequest
--  
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param WindowExecutionId [MaintenanceWindowExecutionId] <p>The ID of the Maintenance Window execution whose task executions should be retrieved.</p>
-- @param MaxResults [MaintenanceWindowMaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- @param Filters [MaintenanceWindowFilterList] <p>Optional filters used to scope down the returned tasks. The supported filter key is STATUS with the corresponding values PENDING, IN_PROGRESS, SUCCESS, FAILED, TIMED_OUT, CANCELLING, and CANCELLED. </p>
-- Required parameter: WindowExecutionId
function M.DescribeMaintenanceWindowExecutionTasksRequest(NextToken, WindowExecutionId, MaxResults, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMaintenanceWindowExecutionTasksRequest")
	local t = { 
		["NextToken"] = NextToken,
		["WindowExecutionId"] = WindowExecutionId,
		["MaxResults"] = MaxResults,
		["Filters"] = Filters,
	}
	M.AssertDescribeMaintenanceWindowExecutionTasksRequest(t)
	return t
end

local AutomationExecution_keys = { "AutomationExecutionStatus" = true, "Parameters" = true, "Outputs" = true, "DocumentName" = true, "AutomationExecutionId" = true, "FailureMessage" = true, "ExecutionEndTime" = true, "DocumentVersion" = true, "ExecutionStartTime" = true, "StepExecutions" = true, nil }

function M.AssertAutomationExecution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutomationExecution to be of type 'table'")
	if struct["AutomationExecutionStatus"] then M.AssertAutomationExecutionStatus(struct["AutomationExecutionStatus"]) end
	if struct["Parameters"] then M.AssertAutomationParameterMap(struct["Parameters"]) end
	if struct["Outputs"] then M.AssertAutomationParameterMap(struct["Outputs"]) end
	if struct["DocumentName"] then M.AssertDocumentName(struct["DocumentName"]) end
	if struct["AutomationExecutionId"] then M.AssertAutomationExecutionId(struct["AutomationExecutionId"]) end
	if struct["FailureMessage"] then M.AssertString(struct["FailureMessage"]) end
	if struct["ExecutionEndTime"] then M.AssertDateTime(struct["ExecutionEndTime"]) end
	if struct["DocumentVersion"] then M.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["ExecutionStartTime"] then M.AssertDateTime(struct["ExecutionStartTime"]) end
	if struct["StepExecutions"] then M.AssertStepExecutionList(struct["StepExecutions"]) end
	for k,_ in pairs(struct) do
		assert(AutomationExecution_keys[k], "AutomationExecution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutomationExecution
-- <p>Detailed information about the current state of an individual Automation execution.</p>
-- @param AutomationExecutionStatus [AutomationExecutionStatus] <p>The execution status of the Automation.</p>
-- @param Parameters [AutomationParameterMap] <p>The key-value map of execution parameters, which were supplied when calling StartAutomationExecution.</p>
-- @param Outputs [AutomationParameterMap] <p>The list of execution outputs as defined in the automation document.</p>
-- @param DocumentName [DocumentName] <p>The name of the Automation document used during the execution.</p>
-- @param AutomationExecutionId [AutomationExecutionId] <p>The execution ID.</p>
-- @param FailureMessage [String] <p>A message describing why an execution has failed, if the status is set to Failed.</p>
-- @param ExecutionEndTime [DateTime] <p>The time the execution finished.</p>
-- @param DocumentVersion [DocumentVersion] <p>The version of the document to use during execution.</p>
-- @param ExecutionStartTime [DateTime] <p>The time the execution started.</p>
-- @param StepExecutions [StepExecutionList] <p>A list of details about the current state of all steps that comprise an execution. An Automation document contains a list of steps that are executed in order.</p>
function M.AutomationExecution(AutomationExecutionStatus, Parameters, Outputs, DocumentName, AutomationExecutionId, FailureMessage, ExecutionEndTime, DocumentVersion, ExecutionStartTime, StepExecutions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutomationExecution")
	local t = { 
		["AutomationExecutionStatus"] = AutomationExecutionStatus,
		["Parameters"] = Parameters,
		["Outputs"] = Outputs,
		["DocumentName"] = DocumentName,
		["AutomationExecutionId"] = AutomationExecutionId,
		["FailureMessage"] = FailureMessage,
		["ExecutionEndTime"] = ExecutionEndTime,
		["DocumentVersion"] = DocumentVersion,
		["ExecutionStartTime"] = ExecutionStartTime,
		["StepExecutions"] = StepExecutions,
	}
	M.AssertAutomationExecution(t)
	return t
end

local DescribePatchGroupsRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertDescribePatchGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePatchGroupsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertPatchBaselineMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribePatchGroupsRequest_keys[k], "DescribePatchGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePatchGroupsRequest
--  
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param MaxResults [PatchBaselineMaxResults] <p>The maximum number of patch groups to return (per page).</p>
function M.DescribePatchGroupsRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePatchGroupsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertDescribePatchGroupsRequest(t)
	return t
end

local HierarchyLevelLimitExceededException_keys = { "message" = true, nil }

function M.AssertHierarchyLevelLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HierarchyLevelLimitExceededException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(HierarchyLevelLimitExceededException_keys[k], "HierarchyLevelLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HierarchyLevelLimitExceededException
-- <p>A hierarchy can have a maximum of five levels. For example:</p> <p>/Finance/Prod/IAD/OS/WinServ2016/license15</p> <p>For more information, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-working-path.html">Develop a Parameter Hierarchy</a>. </p>
-- @param message [String] <p>A hierarchy can have a maximum of five levels. For example:</p> <p>/Finance/Prod/IAD/OS/WinServ2016/license15</p> <p>For more information, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-working-path.html">Develop a Parameter Hierarchy</a>. </p>
function M.HierarchyLevelLimitExceededException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HierarchyLevelLimitExceededException")
	local t = { 
		["message"] = message,
	}
	M.AssertHierarchyLevelLimitExceededException(t)
	return t
end

local AlreadyExistsException_keys = { "Message" = true, nil }

function M.AssertAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlreadyExistsException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(AlreadyExistsException_keys[k], "AlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlreadyExistsException
-- <p>Error returned if an attempt is made to register a patch group with a patch baseline that is already registered with a different patch baseline.</p>
-- @param Message [String] <p>Error returned if an attempt is made to register a patch group with a patch baseline that is already registered with a different patch baseline.</p>
function M.AlreadyExistsException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AlreadyExistsException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertAlreadyExistsException(t)
	return t
end

local InvalidSchedule_keys = { "Message" = true, nil }

function M.AssertInvalidSchedule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSchedule to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidSchedule_keys[k], "InvalidSchedule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSchedule
-- <p>The schedule is invalid. Verify your cron or rate expression and try again.</p>
-- @param Message [String] <p>The schedule is invalid. Verify your cron or rate expression and try again.</p>
function M.InvalidSchedule(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSchedule")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidSchedule(t)
	return t
end

local InvalidActivation_keys = { "Message" = true, nil }

function M.AssertInvalidActivation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidActivation to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidActivation_keys[k], "InvalidActivation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidActivation
-- <p>The activation is not valid. The activation might have been deleted, or the ActivationId and the ActivationCode do not match.</p>
-- @param Message [String] <p>The activation is not valid. The activation might have been deleted, or the ActivationId and the ActivationCode do not match.</p>
function M.InvalidActivation(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidActivation")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidActivation(t)
	return t
end

local DescribeMaintenanceWindowExecutionsRequest_keys = { "WindowId" = true, "NextToken" = true, "MaxResults" = true, "Filters" = true, nil }

function M.AssertDescribeMaintenanceWindowExecutionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowExecutionsRequest to be of type 'table'")
	assert(struct["WindowId"], "Expected key WindowId to exist in table")
	if struct["WindowId"] then M.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaintenanceWindowMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then M.AssertMaintenanceWindowFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMaintenanceWindowExecutionsRequest_keys[k], "DescribeMaintenanceWindowExecutionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowExecutionsRequest
--  
-- @param WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window whose executions should be retrieved.</p>
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param MaxResults [MaintenanceWindowMaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- @param Filters [MaintenanceWindowFilterList] <p>Each entry in the array is a structure containing:</p> <p>Key (string, between 1 and 128 characters)</p> <p>Values (array of strings, each string is between 1 and 256 characters)</p> <p>The supported Keys are ExecutedBefore and ExecutedAfter with the value being a date/time string such as 2016-11-04T05:00:00Z.</p>
-- Required parameter: WindowId
function M.DescribeMaintenanceWindowExecutionsRequest(WindowId, NextToken, MaxResults, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMaintenanceWindowExecutionsRequest")
	local t = { 
		["WindowId"] = WindowId,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["Filters"] = Filters,
	}
	M.AssertDescribeMaintenanceWindowExecutionsRequest(t)
	return t
end

local AutomationExecutionMetadata_keys = { "AutomationExecutionStatus" = true, "Outputs" = true, "DocumentName" = true, "AutomationExecutionId" = true, "ExecutionEndTime" = true, "DocumentVersion" = true, "ExecutionStartTime" = true, "ExecutedBy" = true, "LogFile" = true, nil }

function M.AssertAutomationExecutionMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutomationExecutionMetadata to be of type 'table'")
	if struct["AutomationExecutionStatus"] then M.AssertAutomationExecutionStatus(struct["AutomationExecutionStatus"]) end
	if struct["Outputs"] then M.AssertAutomationParameterMap(struct["Outputs"]) end
	if struct["DocumentName"] then M.AssertDocumentName(struct["DocumentName"]) end
	if struct["AutomationExecutionId"] then M.AssertAutomationExecutionId(struct["AutomationExecutionId"]) end
	if struct["ExecutionEndTime"] then M.AssertDateTime(struct["ExecutionEndTime"]) end
	if struct["DocumentVersion"] then M.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["ExecutionStartTime"] then M.AssertDateTime(struct["ExecutionStartTime"]) end
	if struct["ExecutedBy"] then M.AssertString(struct["ExecutedBy"]) end
	if struct["LogFile"] then M.AssertString(struct["LogFile"]) end
	for k,_ in pairs(struct) do
		assert(AutomationExecutionMetadata_keys[k], "AutomationExecutionMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutomationExecutionMetadata
-- <p>Details about a specific Automation execution.</p>
-- @param AutomationExecutionStatus [AutomationExecutionStatus] <p>The status of the execution. Valid values include: Running, Succeeded, Failed, Timed out, or Cancelled.</p>
-- @param Outputs [AutomationParameterMap] <p>The list of execution outputs as defined in the Automation document.</p>
-- @param DocumentName [DocumentName] <p>The name of the Automation document used during execution.</p>
-- @param AutomationExecutionId [AutomationExecutionId] <p>The execution ID.</p>
-- @param ExecutionEndTime [DateTime] <p>The time the execution finished. This is not populated if the execution is still in progress.</p>
-- @param DocumentVersion [DocumentVersion] <p>The document version used during the execution.</p>
-- @param ExecutionStartTime [DateTime] <p>The time the execution started.&gt;</p>
-- @param ExecutedBy [String] <p>The IAM role ARN of the user who executed the Automation.</p>
-- @param LogFile [String] <p>An Amazon S3 bucket where execution information is stored.</p>
function M.AutomationExecutionMetadata(AutomationExecutionStatus, Outputs, DocumentName, AutomationExecutionId, ExecutionEndTime, DocumentVersion, ExecutionStartTime, ExecutedBy, LogFile, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutomationExecutionMetadata")
	local t = { 
		["AutomationExecutionStatus"] = AutomationExecutionStatus,
		["Outputs"] = Outputs,
		["DocumentName"] = DocumentName,
		["AutomationExecutionId"] = AutomationExecutionId,
		["ExecutionEndTime"] = ExecutionEndTime,
		["DocumentVersion"] = DocumentVersion,
		["ExecutionStartTime"] = ExecutionStartTime,
		["ExecutedBy"] = ExecutedBy,
		["LogFile"] = LogFile,
	}
	M.AssertAutomationExecutionMetadata(t)
	return t
end

local InstanceInformation_keys = { "IsLatestVersion" = true, "IamRole" = true, "ComputerName" = true, "AssociationOverview" = true, "PingStatus" = true, "Name" = true, "LastSuccessfulAssociationExecutionDate" = true, "InstanceId" = true, "IPAddress" = true, "AssociationStatus" = true, "LastAssociationExecutionDate" = true, "ResourceType" = true, "ActivationId" = true, "AgentVersion" = true, "PlatformVersion" = true, "RegistrationDate" = true, "PlatformName" = true, "PlatformType" = true, "LastPingDateTime" = true, nil }

function M.AssertInstanceInformation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceInformation to be of type 'table'")
	if struct["IsLatestVersion"] then M.AssertBoolean(struct["IsLatestVersion"]) end
	if struct["IamRole"] then M.AssertIamRole(struct["IamRole"]) end
	if struct["ComputerName"] then M.AssertComputerName(struct["ComputerName"]) end
	if struct["AssociationOverview"] then M.AssertInstanceAggregatedAssociationOverview(struct["AssociationOverview"]) end
	if struct["PingStatus"] then M.AssertPingStatus(struct["PingStatus"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["LastSuccessfulAssociationExecutionDate"] then M.AssertDateTime(struct["LastSuccessfulAssociationExecutionDate"]) end
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["IPAddress"] then M.AssertIPAddress(struct["IPAddress"]) end
	if struct["AssociationStatus"] then M.AssertStatusName(struct["AssociationStatus"]) end
	if struct["LastAssociationExecutionDate"] then M.AssertDateTime(struct["LastAssociationExecutionDate"]) end
	if struct["ResourceType"] then M.AssertResourceType(struct["ResourceType"]) end
	if struct["ActivationId"] then M.AssertActivationId(struct["ActivationId"]) end
	if struct["AgentVersion"] then M.AssertVersion(struct["AgentVersion"]) end
	if struct["PlatformVersion"] then M.AssertString(struct["PlatformVersion"]) end
	if struct["RegistrationDate"] then M.AssertDateTime(struct["RegistrationDate"]) end
	if struct["PlatformName"] then M.AssertString(struct["PlatformName"]) end
	if struct["PlatformType"] then M.AssertPlatformType(struct["PlatformType"]) end
	if struct["LastPingDateTime"] then M.AssertDateTime(struct["LastPingDateTime"]) end
	for k,_ in pairs(struct) do
		assert(InstanceInformation_keys[k], "InstanceInformation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceInformation
-- <p>Describes a filter for a specific list of instances. </p>
-- @param IsLatestVersion [Boolean] <p>Indicates whether latest version of the SSM Agent is running on your instance. </p>
-- @param IamRole [IamRole] <p>The Amazon Identity and Access Management (IAM) role assigned to EC2 instances or managed instances. </p>
-- @param ComputerName [ComputerName] <p>The fully qualified host name of the managed instance.</p>
-- @param AssociationOverview [InstanceAggregatedAssociationOverview] <p>Information about the association.</p>
-- @param PingStatus [PingStatus] <p>Connection status of the SSM Agent. </p>
-- @param Name [String] <p>The name of the managed instance.</p>
-- @param LastSuccessfulAssociationExecutionDate [DateTime] <p>The last date the association was successfully run.</p>
-- @param InstanceId [InstanceId] <p>The instance ID. </p>
-- @param IPAddress [IPAddress] <p>The IP address of the managed instance.</p>
-- @param AssociationStatus [StatusName] <p>The status of the association.</p>
-- @param LastAssociationExecutionDate [DateTime] <p>The date the association was last executed.</p>
-- @param ResourceType [ResourceType] <p>The type of instance. Instances are either EC2 instances or managed instances. </p>
-- @param ActivationId [ActivationId] <p>The activation ID created by Systems Manager when the server or VM was registered.</p>
-- @param AgentVersion [Version] <p>The version of the SSM Agent running on your Linux instance. </p>
-- @param PlatformVersion [String] <p>The version of the OS platform running on your instance. </p>
-- @param RegistrationDate [DateTime] <p>The date the server or VM was registered with AWS as a managed instance.</p>
-- @param PlatformName [String] <p>The name of the operating system platform running on your instance. </p>
-- @param PlatformType [PlatformType] <p>The operating system platform type. </p>
-- @param LastPingDateTime [DateTime] <p>The date and time when agent last pinged Systems Manager service. </p>
function M.InstanceInformation(IsLatestVersion, IamRole, ComputerName, AssociationOverview, PingStatus, Name, LastSuccessfulAssociationExecutionDate, InstanceId, IPAddress, AssociationStatus, LastAssociationExecutionDate, ResourceType, ActivationId, AgentVersion, PlatformVersion, RegistrationDate, PlatformName, PlatformType, LastPingDateTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceInformation")
	local t = { 
		["IsLatestVersion"] = IsLatestVersion,
		["IamRole"] = IamRole,
		["ComputerName"] = ComputerName,
		["AssociationOverview"] = AssociationOverview,
		["PingStatus"] = PingStatus,
		["Name"] = Name,
		["LastSuccessfulAssociationExecutionDate"] = LastSuccessfulAssociationExecutionDate,
		["InstanceId"] = InstanceId,
		["IPAddress"] = IPAddress,
		["AssociationStatus"] = AssociationStatus,
		["LastAssociationExecutionDate"] = LastAssociationExecutionDate,
		["ResourceType"] = ResourceType,
		["ActivationId"] = ActivationId,
		["AgentVersion"] = AgentVersion,
		["PlatformVersion"] = PlatformVersion,
		["RegistrationDate"] = RegistrationDate,
		["PlatformName"] = PlatformName,
		["PlatformType"] = PlatformType,
		["LastPingDateTime"] = LastPingDateTime,
	}
	M.AssertInstanceInformation(t)
	return t
end

local InvalidRole_keys = { "Message" = true, nil }

function M.AssertInvalidRole(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRole to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidRole_keys[k], "InvalidRole contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRole
-- <p>The role name can't contain invalid characters. Also verify that you specified an IAM role for notifications that includes the required trust policy. For information about configuring the IAM role for Run Command notifications, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/rc-sns-notifications.html">Configuring Amazon SNS Notifications for Run Command</a> in the <i>Amazon EC2 Systems Manager User Guide</i>.</p>
-- @param Message [String] <p>The role name can't contain invalid characters. Also verify that you specified an IAM role for notifications that includes the required trust policy. For information about configuring the IAM role for Run Command notifications, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/rc-sns-notifications.html">Configuring Amazon SNS Notifications for Run Command</a> in the <i>Amazon EC2 Systems Manager User Guide</i>.</p>
function M.InvalidRole(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRole")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidRole(t)
	return t
end

local DeleteActivationRequest_keys = { "ActivationId" = true, nil }

function M.AssertDeleteActivationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteActivationRequest to be of type 'table'")
	assert(struct["ActivationId"], "Expected key ActivationId to exist in table")
	if struct["ActivationId"] then M.AssertActivationId(struct["ActivationId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteActivationRequest_keys[k], "DeleteActivationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteActivationRequest
--  
-- @param ActivationId [ActivationId] <p>The ID of the activation that you want to delete.</p>
-- Required parameter: ActivationId
function M.DeleteActivationRequest(ActivationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteActivationRequest")
	local t = { 
		["ActivationId"] = ActivationId,
	}
	M.AssertDeleteActivationRequest(t)
	return t
end

local InvalidInstanceId_keys = { "Message" = true, nil }

function M.AssertInvalidInstanceId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInstanceId to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidInstanceId_keys[k], "InvalidInstanceId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInstanceId
-- <p>The following problems can cause this exception:</p> <p>You do not have permission to access the instance.</p> <p>The SSM Agent is not running. On managed instances and Linux instances, verify that the SSM Agent is running. On EC2 Windows instances, verify that the EC2Config service is running.</p> <p>The SSM Agent or EC2Config service is not registered to the SSM endpoint. Try reinstalling the SSM Agent or EC2Config service.</p> <p>The instance is not in valid state. Valid states are: Running, Pending, Stopped, Stopping. Invalid states are: Shutting-down and Terminated.</p>
-- @param Message [String] <p>The following problems can cause this exception:</p> <p>You do not have permission to access the instance.</p> <p>The SSM Agent is not running. On managed instances and Linux instances, verify that the SSM Agent is running. On EC2 Windows instances, verify that the EC2Config service is running.</p> <p>The SSM Agent or EC2Config service is not registered to the SSM endpoint. Try reinstalling the SSM Agent or EC2Config service.</p> <p>The instance is not in valid state. Valid states are: Running, Pending, Stopped, Stopping. Invalid states are: Shutting-down and Terminated.</p>
function M.InvalidInstanceId(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInstanceId")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidInstanceId(t)
	return t
end

local InventoryItemSchema_keys = { "TypeName" = true, "Version" = true, "Attributes" = true, nil }

function M.AssertInventoryItemSchema(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryItemSchema to be of type 'table'")
	assert(struct["TypeName"], "Expected key TypeName to exist in table")
	assert(struct["Attributes"], "Expected key Attributes to exist in table")
	if struct["TypeName"] then M.AssertInventoryItemTypeName(struct["TypeName"]) end
	if struct["Version"] then M.AssertInventoryItemSchemaVersion(struct["Version"]) end
	if struct["Attributes"] then M.AssertInventoryItemAttributeList(struct["Attributes"]) end
	for k,_ in pairs(struct) do
		assert(InventoryItemSchema_keys[k], "InventoryItemSchema contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryItemSchema
-- <p>The inventory item schema definition. Users can use this to compose inventory query filters.</p>
-- @param TypeName [InventoryItemTypeName] <p>The name of the inventory type. Default inventory item type names start with AWS. Custom inventory type names will start with Custom. Default inventory item types include the following: AWS:AWSComponent, AWS:Application, AWS:InstanceInformation, AWS:Network, and AWS:WindowsUpdate.</p>
-- @param Version [InventoryItemSchemaVersion] <p>The schema version for the inventory item.</p>
-- @param Attributes [InventoryItemAttributeList] <p>The schema attributes for inventory. This contains data type and attribute name.</p>
-- Required parameter: TypeName
-- Required parameter: Attributes
function M.InventoryItemSchema(TypeName, Version, Attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InventoryItemSchema")
	local t = { 
		["TypeName"] = TypeName,
		["Version"] = Version,
		["Attributes"] = Attributes,
	}
	M.AssertInventoryItemSchema(t)
	return t
end

local DeleteMaintenanceWindowResult_keys = { "WindowId" = true, nil }

function M.AssertDeleteMaintenanceWindowResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMaintenanceWindowResult to be of type 'table'")
	if struct["WindowId"] then M.AssertMaintenanceWindowId(struct["WindowId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteMaintenanceWindowResult_keys[k], "DeleteMaintenanceWindowResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMaintenanceWindowResult
--  
-- @param WindowId [MaintenanceWindowId] <p>The ID of the deleted Maintenance Window.</p>
function M.DeleteMaintenanceWindowResult(WindowId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteMaintenanceWindowResult")
	local t = { 
		["WindowId"] = WindowId,
	}
	M.AssertDeleteMaintenanceWindowResult(t)
	return t
end

local DescribeInstancePatchStatesResult_keys = { "InstancePatchStates" = true, "NextToken" = true, nil }

function M.AssertDescribeInstancePatchStatesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancePatchStatesResult to be of type 'table'")
	if struct["InstancePatchStates"] then M.AssertInstancePatchStateList(struct["InstancePatchStates"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeInstancePatchStatesResult_keys[k], "DescribeInstancePatchStatesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancePatchStatesResult
--  
-- @param InstancePatchStates [InstancePatchStateList] <p>The high-level patch state for the requested instances.</p>
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
function M.DescribeInstancePatchStatesResult(InstancePatchStates, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInstancePatchStatesResult")
	local t = { 
		["InstancePatchStates"] = InstancePatchStates,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeInstancePatchStatesResult(t)
	return t
end

local Association_keys = { "ScheduleExpression" = true, "Name" = true, "LastExecutionDate" = true, "InstanceId" = true, "Overview" = true, "AssociationId" = true, "DocumentVersion" = true, "Targets" = true, nil }

function M.AssertAssociation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Association to be of type 'table'")
	if struct["ScheduleExpression"] then M.AssertScheduleExpression(struct["ScheduleExpression"]) end
	if struct["Name"] then M.AssertDocumentName(struct["Name"]) end
	if struct["LastExecutionDate"] then M.AssertDateTime(struct["LastExecutionDate"]) end
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["Overview"] then M.AssertAssociationOverview(struct["Overview"]) end
	if struct["AssociationId"] then M.AssertAssociationId(struct["AssociationId"]) end
	if struct["DocumentVersion"] then M.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["Targets"] then M.AssertTargets(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(Association_keys[k], "Association contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Association
-- <p>Describes an association of a Systems Manager document and an instance.</p>
-- @param ScheduleExpression [ScheduleExpression] <p>A cron expression that specifies a schedule when the association runs.</p>
-- @param Name [DocumentName] <p>The name of the SSM document.</p>
-- @param LastExecutionDate [DateTime] <p>The date on which the association was last run.</p>
-- @param InstanceId [InstanceId] <p>The ID of the instance.</p>
-- @param Overview [AssociationOverview] <p>Information about the association.</p>
-- @param AssociationId [AssociationId] <p>The ID created by the system when you create an association. An association is a binding between a document and a set of targets with a schedule.</p>
-- @param DocumentVersion [DocumentVersion] <p>The version of the document used in the association.</p>
-- @param Targets [Targets] <p>The instances targeted by the request to create an association. </p>
function M.Association(ScheduleExpression, Name, LastExecutionDate, InstanceId, Overview, AssociationId, DocumentVersion, Targets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Association")
	local t = { 
		["ScheduleExpression"] = ScheduleExpression,
		["Name"] = Name,
		["LastExecutionDate"] = LastExecutionDate,
		["InstanceId"] = InstanceId,
		["Overview"] = Overview,
		["AssociationId"] = AssociationId,
		["DocumentVersion"] = DocumentVersion,
		["Targets"] = Targets,
	}
	M.AssertAssociation(t)
	return t
end

local DescribeEffectiveInstanceAssociationsRequest_keys = { "InstanceId" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertDescribeEffectiveInstanceAssociationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEffectiveInstanceAssociationsRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertEffectiveInstanceAssociationMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeEffectiveInstanceAssociationsRequest_keys[k], "DescribeEffectiveInstanceAssociationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEffectiveInstanceAssociationsRequest
--  
-- @param InstanceId [InstanceId] <p>The instance ID for which you want to view all associations.</p>
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param MaxResults [EffectiveInstanceAssociationMaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- Required parameter: InstanceId
function M.DescribeEffectiveInstanceAssociationsRequest(InstanceId, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeEffectiveInstanceAssociationsRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertDescribeEffectiveInstanceAssociationsRequest(t)
	return t
end

local GetParameterHistoryResult_keys = { "NextToken" = true, "Parameters" = true, nil }

function M.AssertGetParameterHistoryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParameterHistoryResult to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Parameters"] then M.AssertParameterHistoryList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(GetParameterHistoryResult_keys[k], "GetParameterHistoryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParameterHistoryResult
--  
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @param Parameters [ParameterHistoryList] <p>A list of parameters returned by the request.</p>
function M.GetParameterHistoryResult(NextToken, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetParameterHistoryResult")
	local t = { 
		["NextToken"] = NextToken,
		["Parameters"] = Parameters,
	}
	M.AssertGetParameterHistoryResult(t)
	return t
end

local LoggingInfo_keys = { "S3KeyPrefix" = true, "S3BucketName" = true, "S3Region" = true, nil }

function M.AssertLoggingInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LoggingInfo to be of type 'table'")
	assert(struct["S3BucketName"], "Expected key S3BucketName to exist in table")
	assert(struct["S3Region"], "Expected key S3Region to exist in table")
	if struct["S3KeyPrefix"] then M.AssertS3KeyPrefix(struct["S3KeyPrefix"]) end
	if struct["S3BucketName"] then M.AssertS3BucketName(struct["S3BucketName"]) end
	if struct["S3Region"] then M.AssertS3Region(struct["S3Region"]) end
	for k,_ in pairs(struct) do
		assert(LoggingInfo_keys[k], "LoggingInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LoggingInfo
-- <p>Information about an Amazon S3 bucket to write instance-level logs to.</p>
-- @param S3KeyPrefix [S3KeyPrefix] <p>(Optional) The Amazon S3 bucket subfolder. </p>
-- @param S3BucketName [S3BucketName] <p>The name of an Amazon S3 bucket where execution logs are stored .</p>
-- @param S3Region [S3Region] <p>The region where the Amazon S3 bucket is located.</p>
-- Required parameter: S3BucketName
-- Required parameter: S3Region
function M.LoggingInfo(S3KeyPrefix, S3BucketName, S3Region, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LoggingInfo")
	local t = { 
		["S3KeyPrefix"] = S3KeyPrefix,
		["S3BucketName"] = S3BucketName,
		["S3Region"] = S3Region,
	}
	M.AssertLoggingInfo(t)
	return t
end

local ListInventoryEntriesResult_keys = { "InstanceId" = true, "TypeName" = true, "Entries" = true, "SchemaVersion" = true, "NextToken" = true, "CaptureTime" = true, nil }

function M.AssertListInventoryEntriesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListInventoryEntriesResult to be of type 'table'")
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["TypeName"] then M.AssertInventoryItemTypeName(struct["TypeName"]) end
	if struct["Entries"] then M.AssertInventoryItemEntryList(struct["Entries"]) end
	if struct["SchemaVersion"] then M.AssertInventoryItemSchemaVersion(struct["SchemaVersion"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["CaptureTime"] then M.AssertInventoryItemCaptureTime(struct["CaptureTime"]) end
	for k,_ in pairs(struct) do
		assert(ListInventoryEntriesResult_keys[k], "ListInventoryEntriesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListInventoryEntriesResult
--  
-- @param InstanceId [InstanceId] <p>The instance ID targeted by the request to query inventory information.</p>
-- @param TypeName [InventoryItemTypeName] <p>The type of inventory item returned by the request.</p>
-- @param Entries [InventoryItemEntryList] <p>A list of inventory items on the instance(s).</p>
-- @param SchemaVersion [InventoryItemSchemaVersion] <p>The inventory schema version used by the instance(s).</p>
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @param CaptureTime [InventoryItemCaptureTime] <p>The time that inventory information was collected for the instance(s).</p>
function M.ListInventoryEntriesResult(InstanceId, TypeName, Entries, SchemaVersion, NextToken, CaptureTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListInventoryEntriesResult")
	local t = { 
		["InstanceId"] = InstanceId,
		["TypeName"] = TypeName,
		["Entries"] = Entries,
		["SchemaVersion"] = SchemaVersion,
		["NextToken"] = NextToken,
		["CaptureTime"] = CaptureTime,
	}
	M.AssertListInventoryEntriesResult(t)
	return t
end

local DeregisterManagedInstanceResult_keys = { nil }

function M.AssertDeregisterManagedInstanceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterManagedInstanceResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeregisterManagedInstanceResult_keys[k], "DeregisterManagedInstanceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterManagedInstanceResult
--  
function M.DeregisterManagedInstanceResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterManagedInstanceResult")
	local t = { 
	}
	M.AssertDeregisterManagedInstanceResult(t)
	return t
end

local DescribeAutomationExecutionsResult_keys = { "NextToken" = true, "AutomationExecutionMetadataList" = true, nil }

function M.AssertDescribeAutomationExecutionsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAutomationExecutionsResult to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["AutomationExecutionMetadataList"] then M.AssertAutomationExecutionMetadataList(struct["AutomationExecutionMetadataList"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAutomationExecutionsResult_keys[k], "DescribeAutomationExecutionsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAutomationExecutionsResult
--  
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @param AutomationExecutionMetadataList [AutomationExecutionMetadataList] <p>The list of details about each automation execution which has occurred which matches the filter specification, if any.</p>
function M.DescribeAutomationExecutionsResult(NextToken, AutomationExecutionMetadataList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAutomationExecutionsResult")
	local t = { 
		["NextToken"] = NextToken,
		["AutomationExecutionMetadataList"] = AutomationExecutionMetadataList,
	}
	M.AssertDescribeAutomationExecutionsResult(t)
	return t
end

local DeregisterTaskFromMaintenanceWindowRequest_keys = { "WindowTaskId" = true, "WindowId" = true, nil }

function M.AssertDeregisterTaskFromMaintenanceWindowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterTaskFromMaintenanceWindowRequest to be of type 'table'")
	assert(struct["WindowId"], "Expected key WindowId to exist in table")
	assert(struct["WindowTaskId"], "Expected key WindowTaskId to exist in table")
	if struct["WindowTaskId"] then M.AssertMaintenanceWindowTaskId(struct["WindowTaskId"]) end
	if struct["WindowId"] then M.AssertMaintenanceWindowId(struct["WindowId"]) end
	for k,_ in pairs(struct) do
		assert(DeregisterTaskFromMaintenanceWindowRequest_keys[k], "DeregisterTaskFromMaintenanceWindowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterTaskFromMaintenanceWindowRequest
--  
-- @param WindowTaskId [MaintenanceWindowTaskId] <p>The ID of the task to remove from the Maintenance Window.</p>
-- @param WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window the task should be removed from.</p>
-- Required parameter: WindowId
-- Required parameter: WindowTaskId
function M.DeregisterTaskFromMaintenanceWindowRequest(WindowTaskId, WindowId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterTaskFromMaintenanceWindowRequest")
	local t = { 
		["WindowTaskId"] = WindowTaskId,
		["WindowId"] = WindowId,
	}
	M.AssertDeregisterTaskFromMaintenanceWindowRequest(t)
	return t
end

local InvalidPermissionType_keys = { "Message" = true, nil }

function M.AssertInvalidPermissionType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidPermissionType to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidPermissionType_keys[k], "InvalidPermissionType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidPermissionType
-- <p>The permission type is not supported. <i>Share</i> is the only supported permission type.</p>
-- @param Message [String] <p>The permission type is not supported. <i>Share</i> is the only supported permission type.</p>
function M.InvalidPermissionType(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidPermissionType")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidPermissionType(t)
	return t
end

local CancelCommandResult_keys = { nil }

function M.AssertCancelCommandResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelCommandResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CancelCommandResult_keys[k], "CancelCommandResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelCommandResult
-- <p>Whether or not the command was successfully canceled. There is no guarantee that a request can be canceled.</p>
function M.CancelCommandResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelCommandResult")
	local t = { 
	}
	M.AssertCancelCommandResult(t)
	return t
end

local GetAutomationExecutionRequest_keys = { "AutomationExecutionId" = true, nil }

function M.AssertGetAutomationExecutionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAutomationExecutionRequest to be of type 'table'")
	assert(struct["AutomationExecutionId"], "Expected key AutomationExecutionId to exist in table")
	if struct["AutomationExecutionId"] then M.AssertAutomationExecutionId(struct["AutomationExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(GetAutomationExecutionRequest_keys[k], "GetAutomationExecutionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAutomationExecutionRequest
--  
-- @param AutomationExecutionId [AutomationExecutionId] <p>The unique identifier for an existing automation execution to examine. The execution ID is returned by StartAutomationExecution when the execution of an Automation document is initiated.</p>
-- Required parameter: AutomationExecutionId
function M.GetAutomationExecutionRequest(AutomationExecutionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAutomationExecutionRequest")
	local t = { 
		["AutomationExecutionId"] = AutomationExecutionId,
	}
	M.AssertGetAutomationExecutionRequest(t)
	return t
end

local RegisterTaskWithMaintenanceWindowResult_keys = { "WindowTaskId" = true, nil }

function M.AssertRegisterTaskWithMaintenanceWindowResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterTaskWithMaintenanceWindowResult to be of type 'table'")
	if struct["WindowTaskId"] then M.AssertMaintenanceWindowTaskId(struct["WindowTaskId"]) end
	for k,_ in pairs(struct) do
		assert(RegisterTaskWithMaintenanceWindowResult_keys[k], "RegisterTaskWithMaintenanceWindowResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterTaskWithMaintenanceWindowResult
--  
-- @param WindowTaskId [MaintenanceWindowTaskId] <p>The id of the task in the Maintenance Window.</p>
function M.RegisterTaskWithMaintenanceWindowResult(WindowTaskId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterTaskWithMaintenanceWindowResult")
	local t = { 
		["WindowTaskId"] = WindowTaskId,
	}
	M.AssertRegisterTaskWithMaintenanceWindowResult(t)
	return t
end

local AssociatedInstances_keys = { nil }

function M.AssertAssociatedInstances(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociatedInstances to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AssociatedInstances_keys[k], "AssociatedInstances contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociatedInstances
-- <p>You must disassociate a document from all instances before you can delete it.</p>
function M.AssociatedInstances(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociatedInstances")
	local t = { 
	}
	M.AssertAssociatedInstances(t)
	return t
end

local GetMaintenanceWindowExecutionRequest_keys = { "WindowExecutionId" = true, nil }

function M.AssertGetMaintenanceWindowExecutionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMaintenanceWindowExecutionRequest to be of type 'table'")
	assert(struct["WindowExecutionId"], "Expected key WindowExecutionId to exist in table")
	if struct["WindowExecutionId"] then M.AssertMaintenanceWindowExecutionId(struct["WindowExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(GetMaintenanceWindowExecutionRequest_keys[k], "GetMaintenanceWindowExecutionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMaintenanceWindowExecutionRequest
--  
-- @param WindowExecutionId [MaintenanceWindowExecutionId] <p>The ID of the Maintenance Window execution that includes the task.</p>
-- Required parameter: WindowExecutionId
function M.GetMaintenanceWindowExecutionRequest(WindowExecutionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetMaintenanceWindowExecutionRequest")
	local t = { 
		["WindowExecutionId"] = WindowExecutionId,
	}
	M.AssertGetMaintenanceWindowExecutionRequest(t)
	return t
end

local DescribeMaintenanceWindowExecutionTaskInvocationsRequest_keys = { "MaxResults" = true, "NextToken" = true, "WindowExecutionId" = true, "Filters" = true, "TaskId" = true, nil }

function M.AssertDescribeMaintenanceWindowExecutionTaskInvocationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowExecutionTaskInvocationsRequest to be of type 'table'")
	assert(struct["WindowExecutionId"], "Expected key WindowExecutionId to exist in table")
	assert(struct["TaskId"], "Expected key TaskId to exist in table")
	if struct["MaxResults"] then M.AssertMaintenanceWindowMaxResults(struct["MaxResults"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["WindowExecutionId"] then M.AssertMaintenanceWindowExecutionId(struct["WindowExecutionId"]) end
	if struct["Filters"] then M.AssertMaintenanceWindowFilterList(struct["Filters"]) end
	if struct["TaskId"] then M.AssertMaintenanceWindowExecutionTaskId(struct["TaskId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMaintenanceWindowExecutionTaskInvocationsRequest_keys[k], "DescribeMaintenanceWindowExecutionTaskInvocationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowExecutionTaskInvocationsRequest
--  
-- @param MaxResults [MaintenanceWindowMaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param WindowExecutionId [MaintenanceWindowExecutionId] <p>The ID of the Maintenance Window execution the task is part of.</p>
-- @param Filters [MaintenanceWindowFilterList] <p>Optional filters used to scope down the returned task invocations. The supported filter key is STATUS with the corresponding values PENDING, IN_PROGRESS, SUCCESS, FAILED, TIMED_OUT, CANCELLING, and CANCELLED.</p>
-- @param TaskId [MaintenanceWindowExecutionTaskId] <p>The ID of the specific task in the Maintenance Window task that should be retrieved.</p>
-- Required parameter: WindowExecutionId
-- Required parameter: TaskId
function M.DescribeMaintenanceWindowExecutionTaskInvocationsRequest(MaxResults, NextToken, WindowExecutionId, Filters, TaskId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMaintenanceWindowExecutionTaskInvocationsRequest")
	local t = { 
		["MaxResults"] = MaxResults,
		["NextToken"] = NextToken,
		["WindowExecutionId"] = WindowExecutionId,
		["Filters"] = Filters,
		["TaskId"] = TaskId,
	}
	M.AssertDescribeMaintenanceWindowExecutionTaskInvocationsRequest(t)
	return t
end

local GetInventorySchemaRequest_keys = { "TypeName" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertGetInventorySchemaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInventorySchemaRequest to be of type 'table'")
	if struct["TypeName"] then M.AssertInventoryItemTypeNameFilter(struct["TypeName"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertGetInventorySchemaMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(GetInventorySchemaRequest_keys[k], "GetInventorySchemaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInventorySchemaRequest
--  
-- @param TypeName [InventoryItemTypeNameFilter] <p>The type of inventory item to return.</p>
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param MaxResults [GetInventorySchemaMaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
function M.GetInventorySchemaRequest(TypeName, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInventorySchemaRequest")
	local t = { 
		["TypeName"] = TypeName,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertGetInventorySchemaRequest(t)
	return t
end

local DuplicateInstanceId_keys = { nil }

function M.AssertDuplicateInstanceId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateInstanceId to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DuplicateInstanceId_keys[k], "DuplicateInstanceId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateInstanceId
-- <p>You cannot specify an instance ID in more than one association.</p>
function M.DuplicateInstanceId(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateInstanceId")
	local t = { 
	}
	M.AssertDuplicateInstanceId(t)
	return t
end

local InvalidCommandId_keys = { nil }

function M.AssertInvalidCommandId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCommandId to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidCommandId_keys[k], "InvalidCommandId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCommandId
--  
function M.InvalidCommandId(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCommandId")
	local t = { 
	}
	M.AssertInvalidCommandId(t)
	return t
end

local ParameterStringFilter_keys = { "Values" = true, "Option" = true, "Key" = true, nil }

function M.AssertParameterStringFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterStringFilter to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["Values"] then M.AssertParameterStringFilterValueList(struct["Values"]) end
	if struct["Option"] then M.AssertParameterStringQueryOption(struct["Option"]) end
	if struct["Key"] then M.AssertParameterStringFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(ParameterStringFilter_keys[k], "ParameterStringFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterStringFilter
-- <p>One or more filters. Use a filter to return a more specific list of results.</p>
-- @param Values [ParameterStringFilterValueList] <p>The value you want to search for.</p>
-- @param Option [ParameterStringQueryOption] <p>Valid options are Equals and BeginsWith. For Path filter, valid options are Recursive and OneLevel.</p>
-- @param Key [ParameterStringFilterKey] <p>The name of the filter.</p>
-- Required parameter: Key
function M.ParameterStringFilter(Values, Option, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterStringFilter")
	local t = { 
		["Values"] = Values,
		["Option"] = Option,
		["Key"] = Key,
	}
	M.AssertParameterStringFilter(t)
	return t
end

local DescribeAutomationExecutionsRequest_keys = { "NextToken" = true, "MaxResults" = true, "Filters" = true, nil }

function M.AssertDescribeAutomationExecutionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAutomationExecutionsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then M.AssertAutomationExecutionFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAutomationExecutionsRequest_keys[k], "DescribeAutomationExecutionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAutomationExecutionsRequest
--  
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param MaxResults [MaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- @param Filters [AutomationExecutionFilterList] <p>Filters used to limit the scope of executions that are requested.</p>
function M.DescribeAutomationExecutionsRequest(NextToken, MaxResults, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAutomationExecutionsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["Filters"] = Filters,
	}
	M.AssertDescribeAutomationExecutionsRequest(t)
	return t
end

local DescribeMaintenanceWindowTasksResult_keys = { "Tasks" = true, "NextToken" = true, nil }

function M.AssertDescribeMaintenanceWindowTasksResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowTasksResult to be of type 'table'")
	if struct["Tasks"] then M.AssertMaintenanceWindowTaskList(struct["Tasks"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMaintenanceWindowTasksResult_keys[k], "DescribeMaintenanceWindowTasksResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowTasksResult
--  
-- @param Tasks [MaintenanceWindowTaskList] <p>Information about the tasks in the Maintenance Window.</p>
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
function M.DescribeMaintenanceWindowTasksResult(Tasks, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMaintenanceWindowTasksResult")
	local t = { 
		["Tasks"] = Tasks,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeMaintenanceWindowTasksResult(t)
	return t
end

local DeleteAssociationRequest_keys = { "InstanceId" = true, "AssociationId" = true, "Name" = true, nil }

function M.AssertDeleteAssociationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAssociationRequest to be of type 'table'")
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["AssociationId"] then M.AssertAssociationId(struct["AssociationId"]) end
	if struct["Name"] then M.AssertDocumentName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DeleteAssociationRequest_keys[k], "DeleteAssociationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAssociationRequest
--  
-- @param InstanceId [InstanceId] <p>The ID of the instance.</p>
-- @param AssociationId [AssociationId] <p>The association ID that you want to delete.</p>
-- @param Name [DocumentName] <p>The name of the Systems Manager document.</p>
function M.DeleteAssociationRequest(InstanceId, AssociationId, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAssociationRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["AssociationId"] = AssociationId,
		["Name"] = Name,
	}
	M.AssertDeleteAssociationRequest(t)
	return t
end

local DescribeActivationsFilter_keys = { "FilterKey" = true, "FilterValues" = true, nil }

function M.AssertDescribeActivationsFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeActivationsFilter to be of type 'table'")
	if struct["FilterKey"] then M.AssertDescribeActivationsFilterKeys(struct["FilterKey"]) end
	if struct["FilterValues"] then M.AssertStringList(struct["FilterValues"]) end
	for k,_ in pairs(struct) do
		assert(DescribeActivationsFilter_keys[k], "DescribeActivationsFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeActivationsFilter
-- <p>Filter for the DescribeActivation API.</p>
-- @param FilterKey [DescribeActivationsFilterKeys] <p>The name of the filter.</p>
-- @param FilterValues [StringList] <p>The filter values.</p>
function M.DescribeActivationsFilter(FilterKey, FilterValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeActivationsFilter")
	local t = { 
		["FilterKey"] = FilterKey,
		["FilterValues"] = FilterValues,
	}
	M.AssertDescribeActivationsFilter(t)
	return t
end

local DeregisterPatchBaselineForPatchGroupRequest_keys = { "PatchGroup" = true, "BaselineId" = true, nil }

function M.AssertDeregisterPatchBaselineForPatchGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterPatchBaselineForPatchGroupRequest to be of type 'table'")
	assert(struct["BaselineId"], "Expected key BaselineId to exist in table")
	assert(struct["PatchGroup"], "Expected key PatchGroup to exist in table")
	if struct["PatchGroup"] then M.AssertPatchGroup(struct["PatchGroup"]) end
	if struct["BaselineId"] then M.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(DeregisterPatchBaselineForPatchGroupRequest_keys[k], "DeregisterPatchBaselineForPatchGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterPatchBaselineForPatchGroupRequest
--  
-- @param PatchGroup [PatchGroup] <p>The name of the patch group that should be deregistered from the patch baseline.</p>
-- @param BaselineId [BaselineId] <p>The ID of the patch baseline to deregister the patch group from.</p>
-- Required parameter: BaselineId
-- Required parameter: PatchGroup
function M.DeregisterPatchBaselineForPatchGroupRequest(PatchGroup, BaselineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterPatchBaselineForPatchGroupRequest")
	local t = { 
		["PatchGroup"] = PatchGroup,
		["BaselineId"] = BaselineId,
	}
	M.AssertDeregisterPatchBaselineForPatchGroupRequest(t)
	return t
end

local InternalServerError_keys = { "Message" = true, nil }

function M.AssertInternalServerError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerError to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InternalServerError_keys[k], "InternalServerError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerError
-- <p>An error occurred on the server side.</p>
-- @param Message [String] <p>An error occurred on the server side.</p>
function M.InternalServerError(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServerError")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInternalServerError(t)
	return t
end

local DuplicateDocumentContent_keys = { "Message" = true, nil }

function M.AssertDuplicateDocumentContent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateDocumentContent to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DuplicateDocumentContent_keys[k], "DuplicateDocumentContent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateDocumentContent
-- <p>The content of the association document matches another document. Change the content of the document and try again.</p>
-- @param Message [String] <p>The content of the association document matches another document. Change the content of the document and try again.</p>
function M.DuplicateDocumentContent(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateDocumentContent")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDuplicateDocumentContent(t)
	return t
end

local PatchFilterGroup_keys = { "PatchFilters" = true, nil }

function M.AssertPatchFilterGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PatchFilterGroup to be of type 'table'")
	assert(struct["PatchFilters"], "Expected key PatchFilters to exist in table")
	if struct["PatchFilters"] then M.AssertPatchFilterList(struct["PatchFilters"]) end
	for k,_ in pairs(struct) do
		assert(PatchFilterGroup_keys[k], "PatchFilterGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PatchFilterGroup
-- <p>A set of patch filters, typically used for approval rules.</p>
-- @param PatchFilters [PatchFilterList] <p>The set of patch filters that make up the group.</p>
-- Required parameter: PatchFilters
function M.PatchFilterGroup(PatchFilters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PatchFilterGroup")
	local t = { 
		["PatchFilters"] = PatchFilters,
	}
	M.AssertPatchFilterGroup(t)
	return t
end

local StatusUnchanged_keys = { nil }

function M.AssertStatusUnchanged(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StatusUnchanged to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(StatusUnchanged_keys[k], "StatusUnchanged contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StatusUnchanged
-- <p>The updated status is the same as the current status.</p>
function M.StatusUnchanged(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StatusUnchanged")
	local t = { 
	}
	M.AssertStatusUnchanged(t)
	return t
end

local S3OutputUrl_keys = { "OutputUrl" = true, nil }

function M.AssertS3OutputUrl(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3OutputUrl to be of type 'table'")
	if struct["OutputUrl"] then M.AssertUrl(struct["OutputUrl"]) end
	for k,_ in pairs(struct) do
		assert(S3OutputUrl_keys[k], "S3OutputUrl contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3OutputUrl
-- <p>A URL for the Amazon S3 bucket where you want to store the results of this request.</p>
-- @param OutputUrl [Url] <p>A URL for an Amazon S3 bucket where you want to store the results of this request.</p>
function M.S3OutputUrl(OutputUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3OutputUrl")
	local t = { 
		["OutputUrl"] = OutputUrl,
	}
	M.AssertS3OutputUrl(t)
	return t
end

local RemoveTagsFromResourceResult_keys = { nil }

function M.AssertRemoveTagsFromResourceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsFromResourceResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RemoveTagsFromResourceResult_keys[k], "RemoveTagsFromResourceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsFromResourceResult
--  
function M.RemoveTagsFromResourceResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsFromResourceResult")
	local t = { 
	}
	M.AssertRemoveTagsFromResourceResult(t)
	return t
end

local DescribeMaintenanceWindowTasksRequest_keys = { "WindowId" = true, "NextToken" = true, "MaxResults" = true, "Filters" = true, nil }

function M.AssertDescribeMaintenanceWindowTasksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowTasksRequest to be of type 'table'")
	assert(struct["WindowId"], "Expected key WindowId to exist in table")
	if struct["WindowId"] then M.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaintenanceWindowMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then M.AssertMaintenanceWindowFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMaintenanceWindowTasksRequest_keys[k], "DescribeMaintenanceWindowTasksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowTasksRequest
--  
-- @param WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window whose tasks should be retrieved.</p>
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param MaxResults [MaintenanceWindowMaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- @param Filters [MaintenanceWindowFilterList] <p>Optional filters used to narrow down the scope of the returned tasks. The supported filter keys are WindowTaskId, TaskArn, Priority, and TaskType.</p>
-- Required parameter: WindowId
function M.DescribeMaintenanceWindowTasksRequest(WindowId, NextToken, MaxResults, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMaintenanceWindowTasksRequest")
	local t = { 
		["WindowId"] = WindowId,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["Filters"] = Filters,
	}
	M.AssertDescribeMaintenanceWindowTasksRequest(t)
	return t
end

local CommandInvocation_keys = { "Comment" = true, "Status" = true, "CommandPlugins" = true, "ServiceRole" = true, "InstanceId" = true, "DocumentName" = true, "NotificationConfig" = true, "StatusDetails" = true, "StandardOutputUrl" = true, "StandardErrorUrl" = true, "TraceOutput" = true, "InstanceName" = true, "CommandId" = true, "RequestedDateTime" = true, nil }

function M.AssertCommandInvocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CommandInvocation to be of type 'table'")
	if struct["Comment"] then M.AssertComment(struct["Comment"]) end
	if struct["Status"] then M.AssertCommandInvocationStatus(struct["Status"]) end
	if struct["CommandPlugins"] then M.AssertCommandPluginList(struct["CommandPlugins"]) end
	if struct["ServiceRole"] then M.AssertServiceRole(struct["ServiceRole"]) end
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["DocumentName"] then M.AssertDocumentName(struct["DocumentName"]) end
	if struct["NotificationConfig"] then M.AssertNotificationConfig(struct["NotificationConfig"]) end
	if struct["StatusDetails"] then M.AssertStatusDetails(struct["StatusDetails"]) end
	if struct["StandardOutputUrl"] then M.AssertUrl(struct["StandardOutputUrl"]) end
	if struct["StandardErrorUrl"] then M.AssertUrl(struct["StandardErrorUrl"]) end
	if struct["TraceOutput"] then M.AssertInvocationTraceOutput(struct["TraceOutput"]) end
	if struct["InstanceName"] then M.AssertInstanceTagName(struct["InstanceName"]) end
	if struct["CommandId"] then M.AssertCommandId(struct["CommandId"]) end
	if struct["RequestedDateTime"] then M.AssertDateTime(struct["RequestedDateTime"]) end
	for k,_ in pairs(struct) do
		assert(CommandInvocation_keys[k], "CommandInvocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CommandInvocation
-- <p>An invocation is copy of a command sent to a specific instance. A command can apply to one or more instances. A command invocation applies to one instance. For example, if a user executes SendCommand against three instances, then a command invocation is created for each requested instance ID. A command invocation returns status and detail information about a command you executed. </p>
-- @param Comment [Comment] <p>User-specified information about the command, such as a brief description of what the command should do.</p>
-- @param Status [CommandInvocationStatus] <p>Whether or not the invocation succeeded, failed, or is pending.</p>
-- @param CommandPlugins [CommandPluginList] <p>An invocation is copy of a command sent to a specific instance. A command can apply to one or more instances. A command invocation applies to one instance. For example, if a user executes SendCommand against three instances, then a command invocation is created for each requested instance ID. A command invocation returns status and detail information about a command you executed. </p>
-- @param ServiceRole [ServiceRole] <p>The IAM service role that Run Command uses to act on your behalf when sending notifications about command status changes on a per instance basis.</p>
-- @param InstanceId [InstanceId] <p>The instance ID in which this invocation was requested.</p>
-- @param DocumentName [DocumentName] <p>The document name that was requested for execution.</p>
-- @param NotificationConfig [NotificationConfig] <p>Configurations for sending notifications about command status changes on a per instance basis.</p>
-- @param StatusDetails [StatusDetails] <p>A detailed status of the command execution for each invocation (each instance targeted by the command). StatusDetails includes more information than Status because it includes states resulting from error and concurrency control parameters. StatusDetails can show different results than Status. For more information about these statuses, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-about-status.html">Run Command Status</a>. StatusDetails can be one of the following values:</p> <ul> <li> <p>Pending: The command has not been sent to the instance.</p> </li> <li> <p>In Progress: The command has been sent to the instance but has not reached a terminal state.</p> </li> <li> <p>Success: The execution of the command or plugin was successfully completed. This is a terminal state.</p> </li> <li> <p>Delivery Timed Out: The command was not delivered to the instance before the delivery timeout expired. Delivery timeouts do not count against the parent command's MaxErrors limit, but they do contribute to whether the parent command status is Success or Incomplete. This is a terminal state.</p> </li> <li> <p>Execution Timed Out: Command execution started on the instance, but the execution was not complete before the execution timeout expired. Execution timeouts count against the MaxErrors limit of the parent command. This is a terminal state.</p> </li> <li> <p>Failed: The command was not successful on the instance. For a plugin, this indicates that the result code was not zero. For a command invocation, this indicates that the result code for one or more plugins was not zero. Invocation failures count against the MaxErrors limit of the parent command. This is a terminal state.</p> </li> <li> <p>Canceled: The command was terminated before it was completed. This is a terminal state.</p> </li> <li> <p>Undeliverable: The command can't be delivered to the instance. The instance might not exist or might not be responding. Undeliverable invocations don't count against the parent command's MaxErrors limit and don't contribute to whether the parent command status is Success or Incomplete. This is a terminal state.</p> </li> <li> <p>Terminated: The parent command exceeded its MaxErrors limit and subsequent command invocations were canceled by the system. This is a terminal state.</p> </li> </ul>
-- @param StandardOutputUrl [Url] <p>The URL to the plugin's StdOut file in Amazon S3, if the Amazon S3 bucket was defined for the parent command. For an invocation, StandardOutputUrl is populated if there is just one plugin defined for the command, and the Amazon S3 bucket was defined for the command.</p>
-- @param StandardErrorUrl [Url] <p>The URL to the plugin's StdErr file in Amazon S3, if the Amazon S3 bucket was defined for the parent command. For an invocation, StandardErrorUrl is populated if there is just one plugin defined for the command, and the Amazon S3 bucket was defined for the command.</p>
-- @param TraceOutput [InvocationTraceOutput] <p> Gets the trace output sent by the agent. </p>
-- @param InstanceName [InstanceTagName] <p>The name of the invocation target. For Amazon EC2 instances this is the value for the aws:Name tag. For on-premises instances, this is the name of the instance.</p>
-- @param CommandId [CommandId] <p>The command against which this invocation was requested.</p>
-- @param RequestedDateTime [DateTime] <p>The time and date the request was sent to this instance.</p>
function M.CommandInvocation(Comment, Status, CommandPlugins, ServiceRole, InstanceId, DocumentName, NotificationConfig, StatusDetails, StandardOutputUrl, StandardErrorUrl, TraceOutput, InstanceName, CommandId, RequestedDateTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CommandInvocation")
	local t = { 
		["Comment"] = Comment,
		["Status"] = Status,
		["CommandPlugins"] = CommandPlugins,
		["ServiceRole"] = ServiceRole,
		["InstanceId"] = InstanceId,
		["DocumentName"] = DocumentName,
		["NotificationConfig"] = NotificationConfig,
		["StatusDetails"] = StatusDetails,
		["StandardOutputUrl"] = StandardOutputUrl,
		["StandardErrorUrl"] = StandardErrorUrl,
		["TraceOutput"] = TraceOutput,
		["InstanceName"] = InstanceName,
		["CommandId"] = CommandId,
		["RequestedDateTime"] = RequestedDateTime,
	}
	M.AssertCommandInvocation(t)
	return t
end

local InventoryFilter_keys = { "Type" = true, "Values" = true, "Key" = true, nil }

function M.AssertInventoryFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryFilter to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Type"] then M.AssertInventoryQueryOperatorType(struct["Type"]) end
	if struct["Values"] then M.AssertInventoryFilterValueList(struct["Values"]) end
	if struct["Key"] then M.AssertInventoryFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(InventoryFilter_keys[k], "InventoryFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryFilter
-- <p>One or more filters. Use a filter to return a more specific list of results.</p>
-- @param Type [InventoryQueryOperatorType] <p>The type of filter. Valid values include the following: "Equal"|"NotEqual"|"BeginWith"|"LessThan"|"GreaterThan"</p>
-- @param Values [InventoryFilterValueList] <p>Inventory filter values. Example: inventory filter where instance IDs are specified as values Key=AWS:InstanceInformation.InstanceId,Values= i-a12b3c4d5e6g, i-1a2b3c4d5e6,Type=Equal </p>
-- @param Key [InventoryFilterKey] <p>The name of the filter key.</p>
-- Required parameter: Key
-- Required parameter: Values
function M.InventoryFilter(Type, Values, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InventoryFilter")
	local t = { 
		["Type"] = Type,
		["Values"] = Values,
		["Key"] = Key,
	}
	M.AssertInventoryFilter(t)
	return t
end

local ResultAttribute_keys = { "TypeName" = true, nil }

function M.AssertResultAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResultAttribute to be of type 'table'")
	assert(struct["TypeName"], "Expected key TypeName to exist in table")
	if struct["TypeName"] then M.AssertInventoryItemTypeName(struct["TypeName"]) end
	for k,_ in pairs(struct) do
		assert(ResultAttribute_keys[k], "ResultAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResultAttribute
-- <p>The inventory item result attribute.</p>
-- @param TypeName [InventoryItemTypeName] <p>Name of the inventory item type. Valid value: AWS:InstanceInformation. Default Value: AWS:InstanceInformation.</p>
-- Required parameter: TypeName
function M.ResultAttribute(TypeName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResultAttribute")
	local t = { 
		["TypeName"] = TypeName,
	}
	M.AssertResultAttribute(t)
	return t
end

local DescribeInstanceAssociationsStatusResult_keys = { "InstanceAssociationStatusInfos" = true, "NextToken" = true, nil }

function M.AssertDescribeInstanceAssociationsStatusResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstanceAssociationsStatusResult to be of type 'table'")
	if struct["InstanceAssociationStatusInfos"] then M.AssertInstanceAssociationStatusInfos(struct["InstanceAssociationStatusInfos"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeInstanceAssociationsStatusResult_keys[k], "DescribeInstanceAssociationsStatusResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstanceAssociationsStatusResult
--  
-- @param InstanceAssociationStatusInfos [InstanceAssociationStatusInfos] <p>Status information about the association.</p>
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
function M.DescribeInstanceAssociationsStatusResult(InstanceAssociationStatusInfos, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInstanceAssociationsStatusResult")
	local t = { 
		["InstanceAssociationStatusInfos"] = InstanceAssociationStatusInfos,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeInstanceAssociationsStatusResult(t)
	return t
end

local GetMaintenanceWindowExecutionTaskRequest_keys = { "WindowExecutionId" = true, "TaskId" = true, nil }

function M.AssertGetMaintenanceWindowExecutionTaskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMaintenanceWindowExecutionTaskRequest to be of type 'table'")
	assert(struct["WindowExecutionId"], "Expected key WindowExecutionId to exist in table")
	assert(struct["TaskId"], "Expected key TaskId to exist in table")
	if struct["WindowExecutionId"] then M.AssertMaintenanceWindowExecutionId(struct["WindowExecutionId"]) end
	if struct["TaskId"] then M.AssertMaintenanceWindowExecutionTaskId(struct["TaskId"]) end
	for k,_ in pairs(struct) do
		assert(GetMaintenanceWindowExecutionTaskRequest_keys[k], "GetMaintenanceWindowExecutionTaskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMaintenanceWindowExecutionTaskRequest
--  
-- @param WindowExecutionId [MaintenanceWindowExecutionId] <p>The ID of the Maintenance Window execution that includes the task.</p>
-- @param TaskId [MaintenanceWindowExecutionTaskId] <p>The ID of the specific task execution in the Maintenance Window task that should be retrieved.</p>
-- Required parameter: WindowExecutionId
-- Required parameter: TaskId
function M.GetMaintenanceWindowExecutionTaskRequest(WindowExecutionId, TaskId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetMaintenanceWindowExecutionTaskRequest")
	local t = { 
		["WindowExecutionId"] = WindowExecutionId,
		["TaskId"] = TaskId,
	}
	M.AssertGetMaintenanceWindowExecutionTaskRequest(t)
	return t
end

local UpdateDocumentResult_keys = { "DocumentDescription" = true, nil }

function M.AssertUpdateDocumentResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDocumentResult to be of type 'table'")
	if struct["DocumentDescription"] then M.AssertDocumentDescription(struct["DocumentDescription"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDocumentResult_keys[k], "UpdateDocumentResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDocumentResult
--  
-- @param DocumentDescription [DocumentDescription] <p>A description of the document that was updated.</p>
function M.UpdateDocumentResult(DocumentDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDocumentResult")
	local t = { 
		["DocumentDescription"] = DocumentDescription,
	}
	M.AssertUpdateDocumentResult(t)
	return t
end

local CreateMaintenanceWindowResult_keys = { "WindowId" = true, nil }

function M.AssertCreateMaintenanceWindowResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateMaintenanceWindowResult to be of type 'table'")
	if struct["WindowId"] then M.AssertMaintenanceWindowId(struct["WindowId"]) end
	for k,_ in pairs(struct) do
		assert(CreateMaintenanceWindowResult_keys[k], "CreateMaintenanceWindowResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateMaintenanceWindowResult
--  
-- @param WindowId [MaintenanceWindowId] <p>The ID of the created Maintenance Window.</p>
function M.CreateMaintenanceWindowResult(WindowId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateMaintenanceWindowResult")
	local t = { 
		["WindowId"] = WindowId,
	}
	M.AssertCreateMaintenanceWindowResult(t)
	return t
end

local EffectivePatch_keys = { "PatchStatus" = true, "Patch" = true, nil }

function M.AssertEffectivePatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EffectivePatch to be of type 'table'")
	if struct["PatchStatus"] then M.AssertPatchStatus(struct["PatchStatus"]) end
	if struct["Patch"] then M.AssertPatch(struct["Patch"]) end
	for k,_ in pairs(struct) do
		assert(EffectivePatch_keys[k], "EffectivePatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EffectivePatch
-- <p>The EffectivePatch structure defines metadata about a patch along with the approval state of the patch in a particular patch baseline. The approval state includes information about whether the patch is currently approved, due to be approved by a rule, explicitly approved, or explicitly rejected and the date the patch was or will be approved.</p>
-- @param PatchStatus [PatchStatus] <p>The status of the patch in a patch baseline. This includes information about whether the patch is currently approved, due to be approved by a rule, explicitly approved, or explicitly rejected and the date the patch was or will be approved.</p>
-- @param Patch [Patch] <p>Provides metadata for a patch, including information such as the KB ID, severity, classification and a URL for where more information can be obtained about the patch.</p>
function M.EffectivePatch(PatchStatus, Patch, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EffectivePatch")
	local t = { 
		["PatchStatus"] = PatchStatus,
		["Patch"] = Patch,
	}
	M.AssertEffectivePatch(t)
	return t
end

local ModifyDocumentPermissionResponse_keys = { nil }

function M.AssertModifyDocumentPermissionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDocumentPermissionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ModifyDocumentPermissionResponse_keys[k], "ModifyDocumentPermissionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDocumentPermissionResponse
--  
function M.ModifyDocumentPermissionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDocumentPermissionResponse")
	local t = { 
	}
	M.AssertModifyDocumentPermissionResponse(t)
	return t
end

local Target_keys = { "Values" = true, "Key" = true, nil }

function M.AssertTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Target to be of type 'table'")
	if struct["Values"] then M.AssertTargetValues(struct["Values"]) end
	if struct["Key"] then M.AssertTargetKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Target_keys[k], "Target contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Target
-- <p>An array of search criteria that targets instances using a Key,Value combination that you specify. <code>Targets</code> is required if you don't provide one or more instance IDs in the call.</p> <p/>
-- @param Values [TargetValues] <p>User-defined criteria that maps to Key. For example, if you specified tag:ServerRole, you could specify value:WebServer to execute a command on instances that include Amazon EC2 tags of ServerRole,WebServer. For more information about how to send commands that target instances using Key,Value parameters, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html">Executing a Command Using Systems Manager Run Command</a>.</p>
-- @param Key [TargetKey] <p>User-defined criteria for sending commands that target instances that meet the criteria. Key can be tag:&lt;Amazon EC2 tag&gt; or InstanceIds. For more information about how to send commands that target instances using Key,Value parameters, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html">Executing a Command Using Systems Manager Run Command</a>.</p>
function M.Target(Values, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Target")
	local t = { 
		["Values"] = Values,
		["Key"] = Key,
	}
	M.AssertTarget(t)
	return t
end

local PutInventoryRequest_keys = { "InstanceId" = true, "Items" = true, nil }

function M.AssertPutInventoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutInventoryRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["Items"], "Expected key Items to exist in table")
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["Items"] then M.AssertInventoryItemList(struct["Items"]) end
	for k,_ in pairs(struct) do
		assert(PutInventoryRequest_keys[k], "PutInventoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutInventoryRequest
--  
-- @param InstanceId [InstanceId] <p>One or more instance IDs where you want to add or update inventory items.</p>
-- @param Items [InventoryItemList] <p>The inventory items that you want to add or update on instances.</p>
-- Required parameter: InstanceId
-- Required parameter: Items
function M.PutInventoryRequest(InstanceId, Items, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutInventoryRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["Items"] = Items,
	}
	M.AssertPutInventoryRequest(t)
	return t
end

local MaintenanceWindowExecution_keys = { "Status" = true, "WindowId" = true, "StartTime" = true, "EndTime" = true, "WindowExecutionId" = true, "StatusDetails" = true, nil }

function M.AssertMaintenanceWindowExecution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaintenanceWindowExecution to be of type 'table'")
	if struct["Status"] then M.AssertMaintenanceWindowExecutionStatus(struct["Status"]) end
	if struct["WindowId"] then M.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["StartTime"] then M.AssertDateTime(struct["StartTime"]) end
	if struct["EndTime"] then M.AssertDateTime(struct["EndTime"]) end
	if struct["WindowExecutionId"] then M.AssertMaintenanceWindowExecutionId(struct["WindowExecutionId"]) end
	if struct["StatusDetails"] then M.AssertMaintenanceWindowExecutionStatusDetails(struct["StatusDetails"]) end
	for k,_ in pairs(struct) do
		assert(MaintenanceWindowExecution_keys[k], "MaintenanceWindowExecution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaintenanceWindowExecution
-- <p>Describes the information about an execution of a Maintenance Window. </p>
-- @param Status [MaintenanceWindowExecutionStatus] <p>The status of the execution.</p>
-- @param WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window.</p>
-- @param StartTime [DateTime] <p>The time the execution started.</p>
-- @param EndTime [DateTime] <p>The time the execution finished.</p>
-- @param WindowExecutionId [MaintenanceWindowExecutionId] <p>The ID of the Maintenance Window execution.</p>
-- @param StatusDetails [MaintenanceWindowExecutionStatusDetails] <p>The details explaining the Status. Only available for certain status values.</p>
function M.MaintenanceWindowExecution(Status, WindowId, StartTime, EndTime, WindowExecutionId, StatusDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaintenanceWindowExecution")
	local t = { 
		["Status"] = Status,
		["WindowId"] = WindowId,
		["StartTime"] = StartTime,
		["EndTime"] = EndTime,
		["WindowExecutionId"] = WindowExecutionId,
		["StatusDetails"] = StatusDetails,
	}
	M.AssertMaintenanceWindowExecution(t)
	return t
end

local DeregisterPatchBaselineForPatchGroupResult_keys = { "PatchGroup" = true, "BaselineId" = true, nil }

function M.AssertDeregisterPatchBaselineForPatchGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterPatchBaselineForPatchGroupResult to be of type 'table'")
	if struct["PatchGroup"] then M.AssertPatchGroup(struct["PatchGroup"]) end
	if struct["BaselineId"] then M.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(DeregisterPatchBaselineForPatchGroupResult_keys[k], "DeregisterPatchBaselineForPatchGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterPatchBaselineForPatchGroupResult
--  
-- @param PatchGroup [PatchGroup] <p>The name of the patch group deregistered from the patch baseline.</p>
-- @param BaselineId [BaselineId] <p>The ID of the patch baseline the patch group was deregistered from.</p>
function M.DeregisterPatchBaselineForPatchGroupResult(PatchGroup, BaselineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterPatchBaselineForPatchGroupResult")
	local t = { 
		["PatchGroup"] = PatchGroup,
		["BaselineId"] = BaselineId,
	}
	M.AssertDeregisterPatchBaselineForPatchGroupResult(t)
	return t
end

local InventoryResultItem_keys = { "ContentHash" = true, "TypeName" = true, "SchemaVersion" = true, "CaptureTime" = true, "Content" = true, nil }

function M.AssertInventoryResultItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryResultItem to be of type 'table'")
	assert(struct["TypeName"], "Expected key TypeName to exist in table")
	assert(struct["SchemaVersion"], "Expected key SchemaVersion to exist in table")
	assert(struct["Content"], "Expected key Content to exist in table")
	if struct["ContentHash"] then M.AssertInventoryItemContentHash(struct["ContentHash"]) end
	if struct["TypeName"] then M.AssertInventoryItemTypeName(struct["TypeName"]) end
	if struct["SchemaVersion"] then M.AssertInventoryItemSchemaVersion(struct["SchemaVersion"]) end
	if struct["CaptureTime"] then M.AssertInventoryItemCaptureTime(struct["CaptureTime"]) end
	if struct["Content"] then M.AssertInventoryItemEntryList(struct["Content"]) end
	for k,_ in pairs(struct) do
		assert(InventoryResultItem_keys[k], "InventoryResultItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryResultItem
-- <p>The inventory result item.</p>
-- @param ContentHash [InventoryItemContentHash] <p>MD5 hash of the inventory item type contents. The content hash is used to determine whether to update inventory information. The PutInventory API does not update the inventory item type contents if the MD5 hash has not changed since last update. </p>
-- @param TypeName [InventoryItemTypeName] <p>The name of the inventory result item type.</p>
-- @param SchemaVersion [InventoryItemSchemaVersion] <p>The schema version for the inventory result item/</p>
-- @param CaptureTime [InventoryItemCaptureTime] <p>The time inventory item data was captured.</p>
-- @param Content [InventoryItemEntryList] <p>Contains all the inventory data of the item type. Results include attribute names and values. </p>
-- Required parameter: TypeName
-- Required parameter: SchemaVersion
-- Required parameter: Content
function M.InventoryResultItem(ContentHash, TypeName, SchemaVersion, CaptureTime, Content, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InventoryResultItem")
	local t = { 
		["ContentHash"] = ContentHash,
		["TypeName"] = TypeName,
		["SchemaVersion"] = SchemaVersion,
		["CaptureTime"] = CaptureTime,
		["Content"] = Content,
	}
	M.AssertInventoryResultItem(t)
	return t
end

local MaintenanceWindowTask_keys = { "LoggingInfo" = true, "ServiceRoleArn" = true, "MaxErrors" = true, "TaskArn" = true, "MaxConcurrency" = true, "WindowTaskId" = true, "TaskParameters" = true, "Priority" = true, "WindowId" = true, "Type" = true, "Targets" = true, nil }

function M.AssertMaintenanceWindowTask(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaintenanceWindowTask to be of type 'table'")
	if struct["LoggingInfo"] then M.AssertLoggingInfo(struct["LoggingInfo"]) end
	if struct["ServiceRoleArn"] then M.AssertServiceRole(struct["ServiceRoleArn"]) end
	if struct["MaxErrors"] then M.AssertMaxErrors(struct["MaxErrors"]) end
	if struct["TaskArn"] then M.AssertMaintenanceWindowTaskArn(struct["TaskArn"]) end
	if struct["MaxConcurrency"] then M.AssertMaxConcurrency(struct["MaxConcurrency"]) end
	if struct["WindowTaskId"] then M.AssertMaintenanceWindowTaskId(struct["WindowTaskId"]) end
	if struct["TaskParameters"] then M.AssertMaintenanceWindowTaskParameters(struct["TaskParameters"]) end
	if struct["Priority"] then M.AssertMaintenanceWindowTaskPriority(struct["Priority"]) end
	if struct["WindowId"] then M.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["Type"] then M.AssertMaintenanceWindowTaskType(struct["Type"]) end
	if struct["Targets"] then M.AssertTargets(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(MaintenanceWindowTask_keys[k], "MaintenanceWindowTask contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaintenanceWindowTask
-- <p>Information about a task defined for a Maintenance Window.</p>
-- @param LoggingInfo [LoggingInfo] <p>Information about an Amazon S3 bucket to write task-level logs to.</p>
-- @param ServiceRoleArn [ServiceRole] <p>The role that should be assumed when executing the task</p>
-- @param MaxErrors [MaxErrors] <p>The maximum number of errors allowed before this task stops being scheduled.</p>
-- @param TaskArn [MaintenanceWindowTaskArn] <p>The ARN of the task to execute.</p>
-- @param MaxConcurrency [MaxConcurrency] <p>The maximum number of targets this task can be run for in parallel.</p>
-- @param WindowTaskId [MaintenanceWindowTaskId] <p>The task ID.</p>
-- @param TaskParameters [MaintenanceWindowTaskParameters] <p>The parameters that should be passed to the task when it is executed.</p>
-- @param Priority [MaintenanceWindowTaskPriority] <p>The priority of the task in the Maintenance Window, the lower the number the higher the priority. Tasks in a Maintenance Window are scheduled in priority order with tasks that have the same priority scheduled in parallel.</p>
-- @param WindowId [MaintenanceWindowId] <p>The Maintenance Window ID where the task is registered.</p>
-- @param Type [MaintenanceWindowTaskType] <p>The type of task.</p>
-- @param Targets [Targets] <p>The targets (either instances or tags). Instances are specified using Key=instanceids,Values=&lt;instanceid1&gt;,&lt;instanceid2&gt;. Tags are specified using Key=&lt;tag name&gt;,Values=&lt;tag value&gt;.</p>
function M.MaintenanceWindowTask(LoggingInfo, ServiceRoleArn, MaxErrors, TaskArn, MaxConcurrency, WindowTaskId, TaskParameters, Priority, WindowId, Type, Targets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaintenanceWindowTask")
	local t = { 
		["LoggingInfo"] = LoggingInfo,
		["ServiceRoleArn"] = ServiceRoleArn,
		["MaxErrors"] = MaxErrors,
		["TaskArn"] = TaskArn,
		["MaxConcurrency"] = MaxConcurrency,
		["WindowTaskId"] = WindowTaskId,
		["TaskParameters"] = TaskParameters,
		["Priority"] = Priority,
		["WindowId"] = WindowId,
		["Type"] = Type,
		["Targets"] = Targets,
	}
	M.AssertMaintenanceWindowTask(t)
	return t
end

local InvalidItemContentException_keys = { "TypeName" = true, "Message" = true, nil }

function M.AssertInvalidItemContentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidItemContentException to be of type 'table'")
	if struct["TypeName"] then M.AssertInventoryItemTypeName(struct["TypeName"]) end
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidItemContentException_keys[k], "InvalidItemContentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidItemContentException
-- <p>One or more content items is not valid.</p>
-- @param TypeName [InventoryItemTypeName] <p>One or more content items is not valid.</p>
-- @param Message [String] <p>One or more content items is not valid.</p>
function M.InvalidItemContentException(TypeName, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidItemContentException")
	local t = { 
		["TypeName"] = TypeName,
		["Message"] = Message,
	}
	M.AssertInvalidItemContentException(t)
	return t
end

local GetInventorySchemaResult_keys = { "NextToken" = true, "Schemas" = true, nil }

function M.AssertGetInventorySchemaResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInventorySchemaResult to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Schemas"] then M.AssertInventoryItemSchemaResultList(struct["Schemas"]) end
	for k,_ in pairs(struct) do
		assert(GetInventorySchemaResult_keys[k], "GetInventorySchemaResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInventorySchemaResult
--  
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @param Schemas [InventoryItemSchemaResultList] <p>Inventory schemas returned by the request.</p>
function M.GetInventorySchemaResult(NextToken, Schemas, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInventorySchemaResult")
	local t = { 
		["NextToken"] = NextToken,
		["Schemas"] = Schemas,
	}
	M.AssertGetInventorySchemaResult(t)
	return t
end

local ListDocumentVersionsRequest_keys = { "NextToken" = true, "Name" = true, "MaxResults" = true, nil }

function M.AssertListDocumentVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDocumentVersionsRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Name"] then M.AssertDocumentName(struct["Name"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListDocumentVersionsRequest_keys[k], "ListDocumentVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDocumentVersionsRequest
--  
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param Name [DocumentName] <p>The name of the document about which you want version information.</p>
-- @param MaxResults [MaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- Required parameter: Name
function M.ListDocumentVersionsRequest(NextToken, Name, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDocumentVersionsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["Name"] = Name,
		["MaxResults"] = MaxResults,
	}
	M.AssertListDocumentVersionsRequest(t)
	return t
end

local GetParameterResult_keys = { "Parameter" = true, nil }

function M.AssertGetParameterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParameterResult to be of type 'table'")
	if struct["Parameter"] then M.AssertParameter(struct["Parameter"]) end
	for k,_ in pairs(struct) do
		assert(GetParameterResult_keys[k], "GetParameterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParameterResult
--  
-- @param Parameter [Parameter] <p>Information about a parameter.</p>
function M.GetParameterResult(Parameter, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetParameterResult")
	local t = { 
		["Parameter"] = Parameter,
	}
	M.AssertGetParameterResult(t)
	return t
end

local InvalidFilter_keys = { "Message" = true, nil }

function M.AssertInvalidFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidFilter to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidFilter_keys[k], "InvalidFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidFilter
-- <p>The filter name is not valid. Verify the you entered the correct name and try again.</p>
-- @param Message [String] <p>The filter name is not valid. Verify the you entered the correct name and try again.</p>
function M.InvalidFilter(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidFilter")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidFilter(t)
	return t
end

local InstanceAssociationOutputLocation_keys = { "S3Location" = true, nil }

function M.AssertInstanceAssociationOutputLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceAssociationOutputLocation to be of type 'table'")
	if struct["S3Location"] then M.AssertS3OutputLocation(struct["S3Location"]) end
	for k,_ in pairs(struct) do
		assert(InstanceAssociationOutputLocation_keys[k], "InstanceAssociationOutputLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceAssociationOutputLocation
-- <p>An Amazon S3 bucket where you want to store the results of this request.</p>
-- @param S3Location [S3OutputLocation] <p>An Amazon S3 bucket where you want to store the results of this request.</p>
function M.InstanceAssociationOutputLocation(S3Location, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceAssociationOutputLocation")
	local t = { 
		["S3Location"] = S3Location,
	}
	M.AssertInstanceAssociationOutputLocation(t)
	return t
end

local ListDocumentsRequest_keys = { "DocumentFilterList" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListDocumentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDocumentsRequest to be of type 'table'")
	if struct["DocumentFilterList"] then M.AssertDocumentFilterList(struct["DocumentFilterList"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListDocumentsRequest_keys[k], "ListDocumentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDocumentsRequest
--  
-- @param DocumentFilterList [DocumentFilterList] <p>One or more filters. Use a filter to return a more specific list of results.</p>
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param MaxResults [MaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
function M.ListDocumentsRequest(DocumentFilterList, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDocumentsRequest")
	local t = { 
		["DocumentFilterList"] = DocumentFilterList,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListDocumentsRequest(t)
	return t
end

local CreateAssociationBatchResult_keys = { "Successful" = true, "Failed" = true, nil }

function M.AssertCreateAssociationBatchResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAssociationBatchResult to be of type 'table'")
	if struct["Successful"] then M.AssertAssociationDescriptionList(struct["Successful"]) end
	if struct["Failed"] then M.AssertFailedCreateAssociationList(struct["Failed"]) end
	for k,_ in pairs(struct) do
		assert(CreateAssociationBatchResult_keys[k], "CreateAssociationBatchResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAssociationBatchResult
--  
-- @param Successful [AssociationDescriptionList] <p>Information about the associations that succeeded.</p>
-- @param Failed [FailedCreateAssociationList] <p>Information about the associations that failed.</p>
function M.CreateAssociationBatchResult(Successful, Failed, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAssociationBatchResult")
	local t = { 
		["Successful"] = Successful,
		["Failed"] = Failed,
	}
	M.AssertCreateAssociationBatchResult(t)
	return t
end

local DescribeAvailablePatchesRequest_keys = { "NextToken" = true, "MaxResults" = true, "Filters" = true, nil }

function M.AssertDescribeAvailablePatchesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAvailablePatchesRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertPatchBaselineMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then M.AssertPatchOrchestratorFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAvailablePatchesRequest_keys[k], "DescribeAvailablePatchesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAvailablePatchesRequest
--  
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param MaxResults [PatchBaselineMaxResults] <p>The maximum number of patches to return (per page).</p>
-- @param Filters [PatchOrchestratorFilterList] <p>Filters used to scope down the returned patches.</p>
function M.DescribeAvailablePatchesRequest(NextToken, MaxResults, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAvailablePatchesRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["Filters"] = Filters,
	}
	M.AssertDescribeAvailablePatchesRequest(t)
	return t
end

local DescribeDocumentRequest_keys = { "Name" = true, "DocumentVersion" = true, nil }

function M.AssertDescribeDocumentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDocumentRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertDocumentARN(struct["Name"]) end
	if struct["DocumentVersion"] then M.AssertDocumentVersion(struct["DocumentVersion"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDocumentRequest_keys[k], "DescribeDocumentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDocumentRequest
--  
-- @param Name [DocumentARN] <p>The name of the SSM document.</p>
-- @param DocumentVersion [DocumentVersion] <p>The document version for which you want information. Can be a specific version or the default version.</p>
-- Required parameter: Name
function M.DescribeDocumentRequest(Name, DocumentVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDocumentRequest")
	local t = { 
		["Name"] = Name,
		["DocumentVersion"] = DocumentVersion,
	}
	M.AssertDescribeDocumentRequest(t)
	return t
end

local InvalidDocumentVersion_keys = { "Message" = true, nil }

function M.AssertInvalidDocumentVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDocumentVersion to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidDocumentVersion_keys[k], "InvalidDocumentVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDocumentVersion
-- <p>The document version is not valid or does not exist.</p>
-- @param Message [String] <p>The document version is not valid or does not exist.</p>
function M.InvalidDocumentVersion(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDocumentVersion")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidDocumentVersion(t)
	return t
end

local AutomationExecutionNotFoundException_keys = { "Message" = true, nil }

function M.AssertAutomationExecutionNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutomationExecutionNotFoundException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(AutomationExecutionNotFoundException_keys[k], "AutomationExecutionNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutomationExecutionNotFoundException
-- <p>There is no automation execution information for the requested automation execution ID.</p>
-- @param Message [String] <p>There is no automation execution information for the requested automation execution ID.</p>
function M.AutomationExecutionNotFoundException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutomationExecutionNotFoundException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertAutomationExecutionNotFoundException(t)
	return t
end

local AssociationDoesNotExist_keys = { "Message" = true, nil }

function M.AssertAssociationDoesNotExist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociationDoesNotExist to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(AssociationDoesNotExist_keys[k], "AssociationDoesNotExist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociationDoesNotExist
-- <p>The specified association does not exist.</p>
-- @param Message [String] <p>The specified association does not exist.</p>
function M.AssociationDoesNotExist(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociationDoesNotExist")
	local t = { 
		["Message"] = Message,
	}
	M.AssertAssociationDoesNotExist(t)
	return t
end

local AssociationDescription_keys = { "Status" = true, "ScheduleExpression" = true, "OutputLocation" = true, "Name" = true, "Parameters" = true, "LastExecutionDate" = true, "InstanceId" = true, "Overview" = true, "AssociationId" = true, "DocumentVersion" = true, "LastSuccessfulExecutionDate" = true, "LastUpdateAssociationDate" = true, "Date" = true, "Targets" = true, nil }

function M.AssertAssociationDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociationDescription to be of type 'table'")
	if struct["Status"] then M.AssertAssociationStatus(struct["Status"]) end
	if struct["ScheduleExpression"] then M.AssertScheduleExpression(struct["ScheduleExpression"]) end
	if struct["OutputLocation"] then M.AssertInstanceAssociationOutputLocation(struct["OutputLocation"]) end
	if struct["Name"] then M.AssertDocumentName(struct["Name"]) end
	if struct["Parameters"] then M.AssertParameters(struct["Parameters"]) end
	if struct["LastExecutionDate"] then M.AssertDateTime(struct["LastExecutionDate"]) end
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["Overview"] then M.AssertAssociationOverview(struct["Overview"]) end
	if struct["AssociationId"] then M.AssertAssociationId(struct["AssociationId"]) end
	if struct["DocumentVersion"] then M.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["LastSuccessfulExecutionDate"] then M.AssertDateTime(struct["LastSuccessfulExecutionDate"]) end
	if struct["LastUpdateAssociationDate"] then M.AssertDateTime(struct["LastUpdateAssociationDate"]) end
	if struct["Date"] then M.AssertDateTime(struct["Date"]) end
	if struct["Targets"] then M.AssertTargets(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(AssociationDescription_keys[k], "AssociationDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociationDescription
-- <p>Describes the parameters for a document.</p>
-- @param Status [AssociationStatus] <p>The association status.</p>
-- @param ScheduleExpression [ScheduleExpression] <p>A cron expression that specifies a schedule when the association runs.</p>
-- @param OutputLocation [InstanceAssociationOutputLocation] <p>An Amazon S3 bucket where you want to store the output details of the request.</p>
-- @param Name [DocumentName] <p>The name of the SSM document.</p>
-- @param Parameters [Parameters] <p>A description of the parameters for a document. </p>
-- @param LastExecutionDate [DateTime] <p>The date on which the association was last run.</p>
-- @param InstanceId [InstanceId] <p>The ID of the instance.</p>
-- @param Overview [AssociationOverview] <p>Information about the association.</p>
-- @param AssociationId [AssociationId] <p>The association ID.</p>
-- @param DocumentVersion [DocumentVersion] <p>The document version.</p>
-- @param LastSuccessfulExecutionDate [DateTime] <p>The last date on which the association was successfully run.</p>
-- @param LastUpdateAssociationDate [DateTime] <p>The date when the association was last updated.</p>
-- @param Date [DateTime] <p>The date when the association was made.</p>
-- @param Targets [Targets] <p>The instances targeted by the request. </p>
function M.AssociationDescription(Status, ScheduleExpression, OutputLocation, Name, Parameters, LastExecutionDate, InstanceId, Overview, AssociationId, DocumentVersion, LastSuccessfulExecutionDate, LastUpdateAssociationDate, Date, Targets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociationDescription")
	local t = { 
		["Status"] = Status,
		["ScheduleExpression"] = ScheduleExpression,
		["OutputLocation"] = OutputLocation,
		["Name"] = Name,
		["Parameters"] = Parameters,
		["LastExecutionDate"] = LastExecutionDate,
		["InstanceId"] = InstanceId,
		["Overview"] = Overview,
		["AssociationId"] = AssociationId,
		["DocumentVersion"] = DocumentVersion,
		["LastSuccessfulExecutionDate"] = LastSuccessfulExecutionDate,
		["LastUpdateAssociationDate"] = LastUpdateAssociationDate,
		["Date"] = Date,
		["Targets"] = Targets,
	}
	M.AssertAssociationDescription(t)
	return t
end

local MaintenanceWindowExecutionTaskIdentity_keys = { "Status" = true, "TaskArn" = true, "StartTime" = true, "TaskType" = true, "EndTime" = true, "WindowExecutionId" = true, "StatusDetails" = true, "TaskExecutionId" = true, nil }

function M.AssertMaintenanceWindowExecutionTaskIdentity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaintenanceWindowExecutionTaskIdentity to be of type 'table'")
	if struct["Status"] then M.AssertMaintenanceWindowExecutionStatus(struct["Status"]) end
	if struct["TaskArn"] then M.AssertMaintenanceWindowTaskArn(struct["TaskArn"]) end
	if struct["StartTime"] then M.AssertDateTime(struct["StartTime"]) end
	if struct["TaskType"] then M.AssertMaintenanceWindowTaskType(struct["TaskType"]) end
	if struct["EndTime"] then M.AssertDateTime(struct["EndTime"]) end
	if struct["WindowExecutionId"] then M.AssertMaintenanceWindowExecutionId(struct["WindowExecutionId"]) end
	if struct["StatusDetails"] then M.AssertMaintenanceWindowExecutionStatusDetails(struct["StatusDetails"]) end
	if struct["TaskExecutionId"] then M.AssertMaintenanceWindowExecutionTaskId(struct["TaskExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(MaintenanceWindowExecutionTaskIdentity_keys[k], "MaintenanceWindowExecutionTaskIdentity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaintenanceWindowExecutionTaskIdentity
-- <p>Information about a task execution performed as part of a Maintenance Window execution.</p>
-- @param Status [MaintenanceWindowExecutionStatus] <p>The status of the task execution.</p>
-- @param TaskArn [MaintenanceWindowTaskArn] <p>The ARN of the executed task.</p>
-- @param StartTime [DateTime] <p>The time the task execution started.</p>
-- @param TaskType [MaintenanceWindowTaskType] <p>The type of executed task.</p>
-- @param EndTime [DateTime] <p>The time the task execution finished.</p>
-- @param WindowExecutionId [MaintenanceWindowExecutionId] <p>The ID of the Maintenance Window execution that ran the task.</p>
-- @param StatusDetails [MaintenanceWindowExecutionStatusDetails] <p>The details explaining the status of the task execution. Only available for certain status values.</p>
-- @param TaskExecutionId [MaintenanceWindowExecutionTaskId] <p>The ID of the specific task execution in the Maintenance Window execution.</p>
function M.MaintenanceWindowExecutionTaskIdentity(Status, TaskArn, StartTime, TaskType, EndTime, WindowExecutionId, StatusDetails, TaskExecutionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaintenanceWindowExecutionTaskIdentity")
	local t = { 
		["Status"] = Status,
		["TaskArn"] = TaskArn,
		["StartTime"] = StartTime,
		["TaskType"] = TaskType,
		["EndTime"] = EndTime,
		["WindowExecutionId"] = WindowExecutionId,
		["StatusDetails"] = StatusDetails,
		["TaskExecutionId"] = TaskExecutionId,
	}
	M.AssertMaintenanceWindowExecutionTaskIdentity(t)
	return t
end

local AutomationExecutionLimitExceededException_keys = { "Message" = true, nil }

function M.AssertAutomationExecutionLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutomationExecutionLimitExceededException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(AutomationExecutionLimitExceededException_keys[k], "AutomationExecutionLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutomationExecutionLimitExceededException
-- <p>The number of simultaneously running Automation executions exceeded the allowable limit.</p>
-- @param Message [String] <p>The number of simultaneously running Automation executions exceeded the allowable limit.</p>
function M.AutomationExecutionLimitExceededException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutomationExecutionLimitExceededException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertAutomationExecutionLimitExceededException(t)
	return t
end

local SendCommandRequest_keys = { "Comment" = true, "ServiceRoleArn" = true, "MaxErrors" = true, "Parameters" = true, "TimeoutSeconds" = true, "DocumentName" = true, "DocumentHash" = true, "OutputS3BucketName" = true, "NotificationConfig" = true, "DocumentHashType" = true, "OutputS3KeyPrefix" = true, "OutputS3Region" = true, "Targets" = true, "InstanceIds" = true, "MaxConcurrency" = true, nil }

function M.AssertSendCommandRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendCommandRequest to be of type 'table'")
	assert(struct["DocumentName"], "Expected key DocumentName to exist in table")
	if struct["Comment"] then M.AssertComment(struct["Comment"]) end
	if struct["ServiceRoleArn"] then M.AssertServiceRole(struct["ServiceRoleArn"]) end
	if struct["MaxErrors"] then M.AssertMaxErrors(struct["MaxErrors"]) end
	if struct["Parameters"] then M.AssertParameters(struct["Parameters"]) end
	if struct["TimeoutSeconds"] then M.AssertTimeoutSeconds(struct["TimeoutSeconds"]) end
	if struct["DocumentName"] then M.AssertDocumentARN(struct["DocumentName"]) end
	if struct["DocumentHash"] then M.AssertDocumentHash(struct["DocumentHash"]) end
	if struct["OutputS3BucketName"] then M.AssertS3BucketName(struct["OutputS3BucketName"]) end
	if struct["NotificationConfig"] then M.AssertNotificationConfig(struct["NotificationConfig"]) end
	if struct["DocumentHashType"] then M.AssertDocumentHashType(struct["DocumentHashType"]) end
	if struct["OutputS3KeyPrefix"] then M.AssertS3KeyPrefix(struct["OutputS3KeyPrefix"]) end
	if struct["OutputS3Region"] then M.AssertS3Region(struct["OutputS3Region"]) end
	if struct["Targets"] then M.AssertTargets(struct["Targets"]) end
	if struct["InstanceIds"] then M.AssertInstanceIdList(struct["InstanceIds"]) end
	if struct["MaxConcurrency"] then M.AssertMaxConcurrency(struct["MaxConcurrency"]) end
	for k,_ in pairs(struct) do
		assert(SendCommandRequest_keys[k], "SendCommandRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendCommandRequest
--  
-- @param Comment [Comment] <p>User-specified information about the command, such as a brief description of what the command should do.</p>
-- @param ServiceRoleArn [ServiceRole] <p>The IAM role that Systems Manager uses to send notifications. </p>
-- @param MaxErrors [MaxErrors] <p>The maximum number of errors allowed without the command failing. When the command fails one more time beyond the value of MaxErrors, the systems stops sending the command to additional targets. You can specify a number like 10 or a percentage like 10%. The default value is 50. For more information about how to use MaxErrors, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-maxerrors.html">Using Error Controls</a>.</p>
-- @param Parameters [Parameters] <p>The required and optional parameters specified in the document being executed.</p>
-- @param TimeoutSeconds [TimeoutSeconds] <p>If this time is reached and the command has not already started executing, it will not execute.</p>
-- @param DocumentName [DocumentARN] <p>Required. The name of the Systems Manager document to execute. This can be a public document or a custom document.</p>
-- @param DocumentHash [DocumentHash] <p>The Sha256 or Sha1 hash created by the system when the document was created. </p> <note> <p>Sha1 hashes have been deprecated.</p> </note>
-- @param OutputS3BucketName [S3BucketName] <p>The name of the S3 bucket where command execution responses should be stored.</p>
-- @param NotificationConfig [NotificationConfig] <p>Configurations for sending notifications.</p>
-- @param DocumentHashType [DocumentHashType] <p>Sha256 or Sha1.</p> <note> <p>Sha1 hashes have been deprecated.</p> </note>
-- @param OutputS3KeyPrefix [S3KeyPrefix] <p>The directory structure within the S3 bucket where the responses should be stored.</p>
-- @param OutputS3Region [S3Region] <p>(Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager automatically determines the Amazon S3 bucket region.</p>
-- @param Targets [Targets] <p>(Optional) An array of search criteria that targets instances using a Key,Value combination that you specify. Targets is required if you don't provide one or more instance IDs in the call. For more information about how to use Targets, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html">Sending Commands to a Fleet</a>.</p>
-- @param InstanceIds [InstanceIdList] <p>The instance IDs where the command should execute. You can specify a maximum of 50 IDs. If you prefer not to list individual instance IDs, you can instead send commands to a fleet of instances using the Targets parameter, which accepts EC2 tags. For more information about how to use Targets, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-multiple.html">Sending Commands to a Fleet</a>.</p>
-- @param MaxConcurrency [MaxConcurrency] <p>(Optional) The maximum number of instances that are allowed to execute the command at the same time. You can specify a number such as 10 or a percentage such as 10%. The default value is 50. For more information about how to use MaxConcurrency, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/send-commands-velocity.html">Using Concurrency Controls</a>.</p>
-- Required parameter: DocumentName
function M.SendCommandRequest(Comment, ServiceRoleArn, MaxErrors, Parameters, TimeoutSeconds, DocumentName, DocumentHash, OutputS3BucketName, NotificationConfig, DocumentHashType, OutputS3KeyPrefix, OutputS3Region, Targets, InstanceIds, MaxConcurrency, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendCommandRequest")
	local t = { 
		["Comment"] = Comment,
		["ServiceRoleArn"] = ServiceRoleArn,
		["MaxErrors"] = MaxErrors,
		["Parameters"] = Parameters,
		["TimeoutSeconds"] = TimeoutSeconds,
		["DocumentName"] = DocumentName,
		["DocumentHash"] = DocumentHash,
		["OutputS3BucketName"] = OutputS3BucketName,
		["NotificationConfig"] = NotificationConfig,
		["DocumentHashType"] = DocumentHashType,
		["OutputS3KeyPrefix"] = OutputS3KeyPrefix,
		["OutputS3Region"] = OutputS3Region,
		["Targets"] = Targets,
		["InstanceIds"] = InstanceIds,
		["MaxConcurrency"] = MaxConcurrency,
	}
	M.AssertSendCommandRequest(t)
	return t
end

local UpdateDocumentDefaultVersionRequest_keys = { "Name" = true, "DocumentVersion" = true, nil }

function M.AssertUpdateDocumentDefaultVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDocumentDefaultVersionRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["DocumentVersion"], "Expected key DocumentVersion to exist in table")
	if struct["Name"] then M.AssertDocumentName(struct["Name"]) end
	if struct["DocumentVersion"] then M.AssertDocumentVersionNumber(struct["DocumentVersion"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDocumentDefaultVersionRequest_keys[k], "UpdateDocumentDefaultVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDocumentDefaultVersionRequest
--  
-- @param Name [DocumentName] <p>The name of a custom document that you want to set as the default version.</p>
-- @param DocumentVersion [DocumentVersionNumber] <p>The version of a custom document that you want to set as the default version.</p>
-- Required parameter: Name
-- Required parameter: DocumentVersion
function M.UpdateDocumentDefaultVersionRequest(Name, DocumentVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDocumentDefaultVersionRequest")
	local t = { 
		["Name"] = Name,
		["DocumentVersion"] = DocumentVersion,
	}
	M.AssertUpdateDocumentDefaultVersionRequest(t)
	return t
end

local GetPatchBaselineResult_keys = { "BaselineId" = true, "Name" = true, "PatchGroups" = true, "RejectedPatches" = true, "GlobalFilters" = true, "ApprovalRules" = true, "ModifiedDate" = true, "CreatedDate" = true, "ApprovedPatches" = true, "Description" = true, nil }

function M.AssertGetPatchBaselineResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPatchBaselineResult to be of type 'table'")
	if struct["BaselineId"] then M.AssertBaselineId(struct["BaselineId"]) end
	if struct["Name"] then M.AssertBaselineName(struct["Name"]) end
	if struct["PatchGroups"] then M.AssertPatchGroupList(struct["PatchGroups"]) end
	if struct["RejectedPatches"] then M.AssertPatchIdList(struct["RejectedPatches"]) end
	if struct["GlobalFilters"] then M.AssertPatchFilterGroup(struct["GlobalFilters"]) end
	if struct["ApprovalRules"] then M.AssertPatchRuleGroup(struct["ApprovalRules"]) end
	if struct["ModifiedDate"] then M.AssertDateTime(struct["ModifiedDate"]) end
	if struct["CreatedDate"] then M.AssertDateTime(struct["CreatedDate"]) end
	if struct["ApprovedPatches"] then M.AssertPatchIdList(struct["ApprovedPatches"]) end
	if struct["Description"] then M.AssertBaselineDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(GetPatchBaselineResult_keys[k], "GetPatchBaselineResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPatchBaselineResult
--  
-- @param BaselineId [BaselineId] <p>The ID of the retrieved patch baseline.</p>
-- @param Name [BaselineName] <p>The name of the patch baseline.</p>
-- @param PatchGroups [PatchGroupList] <p>Patch groups included in the patch baseline.</p>
-- @param RejectedPatches [PatchIdList] <p>A list of explicitly rejected patches for the baseline.</p>
-- @param GlobalFilters [PatchFilterGroup] <p>A set of global filters used to exclude patches from the baseline.</p>
-- @param ApprovalRules [PatchRuleGroup] <p>A set of rules used to include patches in the baseline.</p>
-- @param ModifiedDate [DateTime] <p>The date the patch baseline was last modified.</p>
-- @param CreatedDate [DateTime] <p>The date the patch baseline was created.</p>
-- @param ApprovedPatches [PatchIdList] <p>A list of explicitly approved patches for the baseline.</p>
-- @param Description [BaselineDescription] <p>A description of the patch baseline.</p>
function M.GetPatchBaselineResult(BaselineId, Name, PatchGroups, RejectedPatches, GlobalFilters, ApprovalRules, ModifiedDate, CreatedDate, ApprovedPatches, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPatchBaselineResult")
	local t = { 
		["BaselineId"] = BaselineId,
		["Name"] = Name,
		["PatchGroups"] = PatchGroups,
		["RejectedPatches"] = RejectedPatches,
		["GlobalFilters"] = GlobalFilters,
		["ApprovalRules"] = ApprovalRules,
		["ModifiedDate"] = ModifiedDate,
		["CreatedDate"] = CreatedDate,
		["ApprovedPatches"] = ApprovedPatches,
		["Description"] = Description,
	}
	M.AssertGetPatchBaselineResult(t)
	return t
end

local NotificationConfig_keys = { "NotificationArn" = true, "NotificationEvents" = true, "NotificationType" = true, nil }

function M.AssertNotificationConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotificationConfig to be of type 'table'")
	if struct["NotificationArn"] then M.AssertNotificationArn(struct["NotificationArn"]) end
	if struct["NotificationEvents"] then M.AssertNotificationEventList(struct["NotificationEvents"]) end
	if struct["NotificationType"] then M.AssertNotificationType(struct["NotificationType"]) end
	for k,_ in pairs(struct) do
		assert(NotificationConfig_keys[k], "NotificationConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotificationConfig
-- <p>Configurations for sending notifications.</p>
-- @param NotificationArn [NotificationArn] <p>An Amazon Resource Name (ARN) for a Simple Notification Service (SNS) topic. Run Command pushes notifications about command status changes to this topic.</p>
-- @param NotificationEvents [NotificationEventList] <p>The different events for which you can receive notifications. These events include the following: All (events), InProgress, Success, TimedOut, Cancelled, Failed. To learn more about these events, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-commands.html">Setting Up Events and Notifications</a> in the <i>Amazon EC2 Systems Manager User Guide</i>.</p>
-- @param NotificationType [NotificationType] <p>Command: Receive notification when the status of a command changes. Invocation: For commands sent to multiple instances, receive notification on a per-instance basis when the status of a command changes. </p>
function M.NotificationConfig(NotificationArn, NotificationEvents, NotificationType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NotificationConfig")
	local t = { 
		["NotificationArn"] = NotificationArn,
		["NotificationEvents"] = NotificationEvents,
		["NotificationType"] = NotificationType,
	}
	M.AssertNotificationConfig(t)
	return t
end

local ModifyDocumentPermissionRequest_keys = { "AccountIdsToAdd" = true, "PermissionType" = true, "AccountIdsToRemove" = true, "Name" = true, nil }

function M.AssertModifyDocumentPermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ModifyDocumentPermissionRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["PermissionType"], "Expected key PermissionType to exist in table")
	if struct["AccountIdsToAdd"] then M.AssertAccountIdList(struct["AccountIdsToAdd"]) end
	if struct["PermissionType"] then M.AssertDocumentPermissionType(struct["PermissionType"]) end
	if struct["AccountIdsToRemove"] then M.AssertAccountIdList(struct["AccountIdsToRemove"]) end
	if struct["Name"] then M.AssertDocumentName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(ModifyDocumentPermissionRequest_keys[k], "ModifyDocumentPermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ModifyDocumentPermissionRequest
--  
-- @param AccountIdsToAdd [AccountIdList] <p>The AWS user accounts that should have access to the document. The account IDs can either be a group of account IDs or <i>All</i>.</p>
-- @param PermissionType [DocumentPermissionType] <p>The permission type for the document. The permission type can be <i>Share</i>.</p>
-- @param AccountIdsToRemove [AccountIdList] <p>The AWS user accounts that should no longer have access to the document. The AWS user account can either be a group of account IDs or <i>All</i>. This action has a higher priority than <i>AccountIdsToAdd</i>. If you specify an account ID to add and the same ID to remove, the system removes access to the document.</p>
-- @param Name [DocumentName] <p>The name of the document that you want to share.</p>
-- Required parameter: Name
-- Required parameter: PermissionType
function M.ModifyDocumentPermissionRequest(AccountIdsToAdd, PermissionType, AccountIdsToRemove, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ModifyDocumentPermissionRequest")
	local t = { 
		["AccountIdsToAdd"] = AccountIdsToAdd,
		["PermissionType"] = PermissionType,
		["AccountIdsToRemove"] = AccountIdsToRemove,
		["Name"] = Name,
	}
	M.AssertModifyDocumentPermissionRequest(t)
	return t
end

local RegisterTargetWithMaintenanceWindowRequest_keys = { "ResourceType" = true, "OwnerInformation" = true, "WindowId" = true, "Targets" = true, "ClientToken" = true, nil }

function M.AssertRegisterTargetWithMaintenanceWindowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterTargetWithMaintenanceWindowRequest to be of type 'table'")
	assert(struct["WindowId"], "Expected key WindowId to exist in table")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["Targets"], "Expected key Targets to exist in table")
	if struct["ResourceType"] then M.AssertMaintenanceWindowResourceType(struct["ResourceType"]) end
	if struct["OwnerInformation"] then M.AssertOwnerInformation(struct["OwnerInformation"]) end
	if struct["WindowId"] then M.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["Targets"] then M.AssertTargets(struct["Targets"]) end
	if struct["ClientToken"] then M.AssertClientToken(struct["ClientToken"]) end
	for k,_ in pairs(struct) do
		assert(RegisterTargetWithMaintenanceWindowRequest_keys[k], "RegisterTargetWithMaintenanceWindowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterTargetWithMaintenanceWindowRequest
--  
-- @param ResourceType [MaintenanceWindowResourceType] <p>The type of target being registered with the Maintenance Window.</p>
-- @param OwnerInformation [OwnerInformation] <p>User-provided value that will be included in any CloudWatch events raised while running tasks for these targets in this Maintenance Window.</p>
-- @param WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window the target should be registered with.</p>
-- @param Targets [Targets] <p>The targets (either instances or tags). Instances are specified using Key=instanceids,Values=&lt;instanceid1&gt;,&lt;instanceid2&gt;. Tags are specified using Key=&lt;tag name&gt;,Values=&lt;tag value&gt;.</p>
-- @param ClientToken [ClientToken] <p>User-provided idempotency token.</p>
-- Required parameter: WindowId
-- Required parameter: ResourceType
-- Required parameter: Targets
function M.RegisterTargetWithMaintenanceWindowRequest(ResourceType, OwnerInformation, WindowId, Targets, ClientToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterTargetWithMaintenanceWindowRequest")
	local t = { 
		["ResourceType"] = ResourceType,
		["OwnerInformation"] = OwnerInformation,
		["WindowId"] = WindowId,
		["Targets"] = Targets,
		["ClientToken"] = ClientToken,
	}
	M.AssertRegisterTargetWithMaintenanceWindowRequest(t)
	return t
end

local TotalSizeLimitExceededException_keys = { "Message" = true, nil }

function M.AssertTotalSizeLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TotalSizeLimitExceededException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TotalSizeLimitExceededException_keys[k], "TotalSizeLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TotalSizeLimitExceededException
-- <p>The size of inventory data has exceeded the total size limit for the resource.</p>
-- @param Message [String] <p>The size of inventory data has exceeded the total size limit for the resource.</p>
function M.TotalSizeLimitExceededException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TotalSizeLimitExceededException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTotalSizeLimitExceededException(t)
	return t
end

local InvalidResourceType_keys = { nil }

function M.AssertInvalidResourceType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidResourceType to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidResourceType_keys[k], "InvalidResourceType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidResourceType
-- <p>The resource type is not valid. If you are attempting to tag an instance, the instance must be a registered, managed instance.</p>
function M.InvalidResourceType(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidResourceType")
	local t = { 
	}
	M.AssertInvalidResourceType(t)
	return t
end

local GetMaintenanceWindowResult_keys = { "Cutoff" = true, "Name" = true, "Schedule" = true, "Enabled" = true, "AllowUnassociatedTargets" = true, "WindowId" = true, "ModifiedDate" = true, "CreatedDate" = true, "Duration" = true, nil }

function M.AssertGetMaintenanceWindowResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMaintenanceWindowResult to be of type 'table'")
	if struct["Cutoff"] then M.AssertMaintenanceWindowCutoff(struct["Cutoff"]) end
	if struct["Name"] then M.AssertMaintenanceWindowName(struct["Name"]) end
	if struct["Schedule"] then M.AssertMaintenanceWindowSchedule(struct["Schedule"]) end
	if struct["Enabled"] then M.AssertMaintenanceWindowEnabled(struct["Enabled"]) end
	if struct["AllowUnassociatedTargets"] then M.AssertMaintenanceWindowAllowUnassociatedTargets(struct["AllowUnassociatedTargets"]) end
	if struct["WindowId"] then M.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["ModifiedDate"] then M.AssertDateTime(struct["ModifiedDate"]) end
	if struct["CreatedDate"] then M.AssertDateTime(struct["CreatedDate"]) end
	if struct["Duration"] then M.AssertMaintenanceWindowDurationHours(struct["Duration"]) end
	for k,_ in pairs(struct) do
		assert(GetMaintenanceWindowResult_keys[k], "GetMaintenanceWindowResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMaintenanceWindowResult
--  
-- @param Cutoff [MaintenanceWindowCutoff] <p>The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution.</p>
-- @param Name [MaintenanceWindowName] <p>The name of the Maintenance Window.</p>
-- @param Schedule [MaintenanceWindowSchedule] <p>The schedule of the Maintenance Window in the form of a cron or rate expression.</p>
-- @param Enabled [MaintenanceWindowEnabled] <p>Whether the Maintenance Windows is enabled.</p>
-- @param AllowUnassociatedTargets [MaintenanceWindowAllowUnassociatedTargets] <p>Whether targets must be registered with the Maintenance Window before tasks can be defined for those targets.</p>
-- @param WindowId [MaintenanceWindowId] <p>The ID of the created Maintenance Window.</p>
-- @param ModifiedDate [DateTime] <p>The date the Maintenance Window was last modified.</p>
-- @param CreatedDate [DateTime] <p>The date the Maintenance Window was created.</p>
-- @param Duration [MaintenanceWindowDurationHours] <p>The duration of the Maintenance Window in hours.</p>
function M.GetMaintenanceWindowResult(Cutoff, Name, Schedule, Enabled, AllowUnassociatedTargets, WindowId, ModifiedDate, CreatedDate, Duration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetMaintenanceWindowResult")
	local t = { 
		["Cutoff"] = Cutoff,
		["Name"] = Name,
		["Schedule"] = Schedule,
		["Enabled"] = Enabled,
		["AllowUnassociatedTargets"] = AllowUnassociatedTargets,
		["WindowId"] = WindowId,
		["ModifiedDate"] = ModifiedDate,
		["CreatedDate"] = CreatedDate,
		["Duration"] = Duration,
	}
	M.AssertGetMaintenanceWindowResult(t)
	return t
end

local UpdateAssociationRequest_keys = { "ScheduleExpression" = true, "OutputLocation" = true, "Name" = true, "Parameters" = true, "AssociationId" = true, "DocumentVersion" = true, "Targets" = true, nil }

function M.AssertUpdateAssociationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAssociationRequest to be of type 'table'")
	assert(struct["AssociationId"], "Expected key AssociationId to exist in table")
	if struct["ScheduleExpression"] then M.AssertScheduleExpression(struct["ScheduleExpression"]) end
	if struct["OutputLocation"] then M.AssertInstanceAssociationOutputLocation(struct["OutputLocation"]) end
	if struct["Name"] then M.AssertDocumentName(struct["Name"]) end
	if struct["Parameters"] then M.AssertParameters(struct["Parameters"]) end
	if struct["AssociationId"] then M.AssertAssociationId(struct["AssociationId"]) end
	if struct["DocumentVersion"] then M.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["Targets"] then M.AssertTargets(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(UpdateAssociationRequest_keys[k], "UpdateAssociationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAssociationRequest
--  
-- @param ScheduleExpression [ScheduleExpression] <p>The cron expression used to schedule the association that you want to update.</p>
-- @param OutputLocation [InstanceAssociationOutputLocation] <p>An Amazon S3 bucket where you want to store the results of this request.</p>
-- @param Name [DocumentName] <p>The name of the association document.</p>
-- @param Parameters [Parameters] <p>The parameters you want to update for the association. If you create a parameter using Parameter Store, you can reference the parameter using {{ssm:parameter-name}}</p>
-- @param AssociationId [AssociationId] <p>The ID of the association you want to update. </p>
-- @param DocumentVersion [DocumentVersion] <p>The document version you want update for the association. </p>
-- @param Targets [Targets] <p>The targets of the association.</p>
-- Required parameter: AssociationId
function M.UpdateAssociationRequest(ScheduleExpression, OutputLocation, Name, Parameters, AssociationId, DocumentVersion, Targets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAssociationRequest")
	local t = { 
		["ScheduleExpression"] = ScheduleExpression,
		["OutputLocation"] = OutputLocation,
		["Name"] = Name,
		["Parameters"] = Parameters,
		["AssociationId"] = AssociationId,
		["DocumentVersion"] = DocumentVersion,
		["Targets"] = Targets,
	}
	M.AssertUpdateAssociationRequest(t)
	return t
end

local UpdateAssociationStatusResult_keys = { "AssociationDescription" = true, nil }

function M.AssertUpdateAssociationStatusResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAssociationStatusResult to be of type 'table'")
	if struct["AssociationDescription"] then M.AssertAssociationDescription(struct["AssociationDescription"]) end
	for k,_ in pairs(struct) do
		assert(UpdateAssociationStatusResult_keys[k], "UpdateAssociationStatusResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAssociationStatusResult
--  
-- @param AssociationDescription [AssociationDescription] <p>Information about the association.</p>
function M.UpdateAssociationStatusResult(AssociationDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAssociationStatusResult")
	local t = { 
		["AssociationDescription"] = AssociationDescription,
	}
	M.AssertUpdateAssociationStatusResult(t)
	return t
end

local InvalidNextToken_keys = { "Message" = true, nil }

function M.AssertInvalidNextToken(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextToken to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidNextToken_keys[k], "InvalidNextToken contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextToken
-- <p>The specified token is not valid.</p>
-- @param Message [String] <p>The specified token is not valid.</p>
function M.InvalidNextToken(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextToken")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidNextToken(t)
	return t
end

local InstanceAggregatedAssociationOverview_keys = { "DetailedStatus" = true, "InstanceAssociationStatusAggregatedCount" = true, nil }

function M.AssertInstanceAggregatedAssociationOverview(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceAggregatedAssociationOverview to be of type 'table'")
	if struct["DetailedStatus"] then M.AssertStatusName(struct["DetailedStatus"]) end
	if struct["InstanceAssociationStatusAggregatedCount"] then M.AssertInstanceAssociationStatusAggregatedCount(struct["InstanceAssociationStatusAggregatedCount"]) end
	for k,_ in pairs(struct) do
		assert(InstanceAggregatedAssociationOverview_keys[k], "InstanceAggregatedAssociationOverview contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceAggregatedAssociationOverview
-- <p>Status information about the aggregated associations.</p>
-- @param DetailedStatus [StatusName] <p>Detailed status information about the aggregated associations.</p>
-- @param InstanceAssociationStatusAggregatedCount [InstanceAssociationStatusAggregatedCount] <p>The number of associations for the instance(s).</p>
function M.InstanceAggregatedAssociationOverview(DetailedStatus, InstanceAssociationStatusAggregatedCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceAggregatedAssociationOverview")
	local t = { 
		["DetailedStatus"] = DetailedStatus,
		["InstanceAssociationStatusAggregatedCount"] = InstanceAssociationStatusAggregatedCount,
	}
	M.AssertInstanceAggregatedAssociationOverview(t)
	return t
end

local DescribeInstancePatchesRequest_keys = { "InstanceId" = true, "NextToken" = true, "MaxResults" = true, "Filters" = true, nil }

function M.AssertDescribeInstancePatchesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancePatchesRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertPatchComplianceMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then M.AssertPatchOrchestratorFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeInstancePatchesRequest_keys[k], "DescribeInstancePatchesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancePatchesRequest
--  
-- @param InstanceId [InstanceId] <p>The ID of the instance whose patch state information should be retrieved.</p>
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param MaxResults [PatchComplianceMaxResults] <p>The maximum number of patches to return (per page).</p>
-- @param Filters [PatchOrchestratorFilterList] <p>Each entry in the array is a structure containing:</p> <p>Key (string, between 1 and 128 characters)</p> <p>Values (array of strings, each string between 1 and 256 characters)</p>
-- Required parameter: InstanceId
function M.DescribeInstancePatchesRequest(InstanceId, NextToken, MaxResults, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInstancePatchesRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["Filters"] = Filters,
	}
	M.AssertDescribeInstancePatchesRequest(t)
	return t
end

local InstanceInformationStringFilter_keys = { "Values" = true, "Key" = true, nil }

function M.AssertInstanceInformationStringFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceInformationStringFilter to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Values"] then M.AssertInstanceInformationFilterValueSet(struct["Values"]) end
	if struct["Key"] then M.AssertInstanceInformationStringFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(InstanceInformationStringFilter_keys[k], "InstanceInformationStringFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceInformationStringFilter
-- <p>The filters to describe or get information about your managed instances.</p>
-- @param Values [InstanceInformationFilterValueSet] <p>The filter values.</p>
-- @param Key [InstanceInformationStringFilterKey] <p>The filter key name to describe your instances. For example:</p> <p>"InstanceIds"|"AgentVersion"|"PingStatus"|"PlatformTypes"|"ActivationIds"|"IamRole"|"ResourceType"|"AssociationStatus"|"Tag Key"</p>
-- Required parameter: Key
-- Required parameter: Values
function M.InstanceInformationStringFilter(Values, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceInformationStringFilter")
	local t = { 
		["Values"] = Values,
		["Key"] = Key,
	}
	M.AssertInstanceInformationStringFilter(t)
	return t
end

local GetMaintenanceWindowRequest_keys = { "WindowId" = true, nil }

function M.AssertGetMaintenanceWindowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMaintenanceWindowRequest to be of type 'table'")
	assert(struct["WindowId"], "Expected key WindowId to exist in table")
	if struct["WindowId"] then M.AssertMaintenanceWindowId(struct["WindowId"]) end
	for k,_ in pairs(struct) do
		assert(GetMaintenanceWindowRequest_keys[k], "GetMaintenanceWindowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMaintenanceWindowRequest
--  
-- @param WindowId [MaintenanceWindowId] <p>The ID of the desired Maintenance Window.</p>
-- Required parameter: WindowId
function M.GetMaintenanceWindowRequest(WindowId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetMaintenanceWindowRequest")
	local t = { 
		["WindowId"] = WindowId,
	}
	M.AssertGetMaintenanceWindowRequest(t)
	return t
end

local DeregisterTargetFromMaintenanceWindowResult_keys = { "WindowId" = true, "WindowTargetId" = true, nil }

function M.AssertDeregisterTargetFromMaintenanceWindowResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterTargetFromMaintenanceWindowResult to be of type 'table'")
	if struct["WindowId"] then M.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["WindowTargetId"] then M.AssertMaintenanceWindowTargetId(struct["WindowTargetId"]) end
	for k,_ in pairs(struct) do
		assert(DeregisterTargetFromMaintenanceWindowResult_keys[k], "DeregisterTargetFromMaintenanceWindowResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterTargetFromMaintenanceWindowResult
--  
-- @param WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window the target was removed from.</p>
-- @param WindowTargetId [MaintenanceWindowTargetId] <p>The ID of the removed target definition.</p>
function M.DeregisterTargetFromMaintenanceWindowResult(WindowId, WindowTargetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterTargetFromMaintenanceWindowResult")
	local t = { 
		["WindowId"] = WindowId,
		["WindowTargetId"] = WindowTargetId,
	}
	M.AssertDeregisterTargetFromMaintenanceWindowResult(t)
	return t
end

local AddTagsToResourceResult_keys = { nil }

function M.AssertAddTagsToResourceResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsToResourceResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AddTagsToResourceResult_keys[k], "AddTagsToResourceResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsToResourceResult
--  
function M.AddTagsToResourceResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsToResourceResult")
	local t = { 
	}
	M.AssertAddTagsToResourceResult(t)
	return t
end

local HierarchyTypeMismatchException_keys = { "message" = true, nil }

function M.AssertHierarchyTypeMismatchException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HierarchyTypeMismatchException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(HierarchyTypeMismatchException_keys[k], "HierarchyTypeMismatchException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HierarchyTypeMismatchException
-- <p>Parameter Store does not support changing a parameter type in a hierarchy. For example, you can't change a parameter from a String type to a SecureString type. You must create a new, unique parameter.</p>
-- @param message [String] <p>Parameter Store does not support changing a parameter type in a hierarchy. For example, you can't change a parameter from a String type to a SecureString type. You must create a new, unique parameter.</p>
function M.HierarchyTypeMismatchException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HierarchyTypeMismatchException")
	local t = { 
		["message"] = message,
	}
	M.AssertHierarchyTypeMismatchException(t)
	return t
end

local UpdateManagedInstanceRoleResult_keys = { nil }

function M.AssertUpdateManagedInstanceRoleResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateManagedInstanceRoleResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UpdateManagedInstanceRoleResult_keys[k], "UpdateManagedInstanceRoleResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateManagedInstanceRoleResult
--  
function M.UpdateManagedInstanceRoleResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateManagedInstanceRoleResult")
	local t = { 
	}
	M.AssertUpdateManagedInstanceRoleResult(t)
	return t
end

local InvalidOutputFolder_keys = { nil }

function M.AssertInvalidOutputFolder(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOutputFolder to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidOutputFolder_keys[k], "InvalidOutputFolder contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOutputFolder
-- <p>The S3 bucket does not exist.</p>
function M.InvalidOutputFolder(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOutputFolder")
	local t = { 
	}
	M.AssertInvalidOutputFolder(t)
	return t
end

local DescribeMaintenanceWindowsRequest_keys = { "NextToken" = true, "MaxResults" = true, "Filters" = true, nil }

function M.AssertDescribeMaintenanceWindowsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMaintenanceWindowsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaintenanceWindowMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then M.AssertMaintenanceWindowFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMaintenanceWindowsRequest_keys[k], "DescribeMaintenanceWindowsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMaintenanceWindowsRequest
--  
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param MaxResults [MaintenanceWindowMaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- @param Filters [MaintenanceWindowFilterList] <p>Optional filters used to narrow down the scope of the returned Maintenance Windows. Supported filter keys are Name and Enabled.</p>
function M.DescribeMaintenanceWindowsRequest(NextToken, MaxResults, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMaintenanceWindowsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["Filters"] = Filters,
	}
	M.AssertDescribeMaintenanceWindowsRequest(t)
	return t
end

local CreateActivationResult_keys = { "ActivationCode" = true, "ActivationId" = true, nil }

function M.AssertCreateActivationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateActivationResult to be of type 'table'")
	if struct["ActivationCode"] then M.AssertActivationCode(struct["ActivationCode"]) end
	if struct["ActivationId"] then M.AssertActivationId(struct["ActivationId"]) end
	for k,_ in pairs(struct) do
		assert(CreateActivationResult_keys[k], "CreateActivationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateActivationResult
--  
-- @param ActivationCode [ActivationCode] <p>The code the system generates when it processes the activation. The activation code functions like a password to validate the activation ID. </p>
-- @param ActivationId [ActivationId] <p>The ID number generated by the system when it processed the activation. The activation ID functions like a user name.</p>
function M.CreateActivationResult(ActivationCode, ActivationId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateActivationResult")
	local t = { 
		["ActivationCode"] = ActivationCode,
		["ActivationId"] = ActivationId,
	}
	M.AssertCreateActivationResult(t)
	return t
end

local InvalidActivationId_keys = { "Message" = true, nil }

function M.AssertInvalidActivationId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidActivationId to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidActivationId_keys[k], "InvalidActivationId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidActivationId
-- <p>The activation ID is not valid. Verify the you entered the correct ActivationId or ActivationCode and try again.</p>
-- @param Message [String] <p>The activation ID is not valid. Verify the you entered the correct ActivationId or ActivationCode and try again.</p>
function M.InvalidActivationId(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidActivationId")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidActivationId(t)
	return t
end

local AssociationLimitExceeded_keys = { nil }

function M.AssertAssociationLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociationLimitExceeded to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AssociationLimitExceeded_keys[k], "AssociationLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociationLimitExceeded
-- <p>You can have at most 2,000 active associations.</p>
function M.AssociationLimitExceeded(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociationLimitExceeded")
	local t = { 
	}
	M.AssertAssociationLimitExceeded(t)
	return t
end

local CommandFilter_keys = { "value" = true, "key" = true, nil }

function M.AssertCommandFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CommandFilter to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	assert(struct["value"], "Expected key value to exist in table")
	if struct["value"] then M.AssertCommandFilterValue(struct["value"]) end
	if struct["key"] then M.AssertCommandFilterKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(CommandFilter_keys[k], "CommandFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CommandFilter
-- <p>Describes a command filter.</p>
-- @param value [CommandFilterValue] <p>The filter value. </p>
-- @param key [CommandFilterKey] <p>The name of the filter.</p>
-- Required parameter: key
-- Required parameter: value
function M.CommandFilter(value, key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CommandFilter")
	local t = { 
		["value"] = value,
		["key"] = key,
	}
	M.AssertCommandFilter(t)
	return t
end

local StartAutomationExecutionRequest_keys = { "DocumentName" = true, "Parameters" = true, "DocumentVersion" = true, nil }

function M.AssertStartAutomationExecutionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartAutomationExecutionRequest to be of type 'table'")
	assert(struct["DocumentName"], "Expected key DocumentName to exist in table")
	if struct["DocumentName"] then M.AssertDocumentARN(struct["DocumentName"]) end
	if struct["Parameters"] then M.AssertAutomationParameterMap(struct["Parameters"]) end
	if struct["DocumentVersion"] then M.AssertDocumentVersion(struct["DocumentVersion"]) end
	for k,_ in pairs(struct) do
		assert(StartAutomationExecutionRequest_keys[k], "StartAutomationExecutionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartAutomationExecutionRequest
--  
-- @param DocumentName [DocumentARN] <p>The name of the Automation document to use for this execution.</p>
-- @param Parameters [AutomationParameterMap] <p>A key-value map of execution parameters, which match the declared parameters in the Automation document.</p>
-- @param DocumentVersion [DocumentVersion] <p>The version of the Automation document to use for this execution.</p>
-- Required parameter: DocumentName
function M.StartAutomationExecutionRequest(DocumentName, Parameters, DocumentVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartAutomationExecutionRequest")
	local t = { 
		["DocumentName"] = DocumentName,
		["Parameters"] = Parameters,
		["DocumentVersion"] = DocumentVersion,
	}
	M.AssertStartAutomationExecutionRequest(t)
	return t
end

local InvalidResultAttributeException_keys = { "Message" = true, nil }

function M.AssertInvalidResultAttributeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidResultAttributeException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidResultAttributeException_keys[k], "InvalidResultAttributeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidResultAttributeException
-- <p>The specified inventory item result attribute is not valid.</p>
-- @param Message [String] <p>The specified inventory item result attribute is not valid.</p>
function M.InvalidResultAttributeException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidResultAttributeException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidResultAttributeException(t)
	return t
end

local DescribeInstanceAssociationsStatusRequest_keys = { "InstanceId" = true, "NextToken" = true, "MaxResults" = true, nil }

function M.AssertDescribeInstanceAssociationsStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstanceAssociationsStatusRequest to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeInstanceAssociationsStatusRequest_keys[k], "DescribeInstanceAssociationsStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstanceAssociationsStatusRequest
--  
-- @param InstanceId [InstanceId] <p>The instance IDs for which you want association status information.</p>
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param MaxResults [MaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- Required parameter: InstanceId
function M.DescribeInstanceAssociationsStatusRequest(InstanceId, NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInstanceAssociationsStatusRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertDescribeInstanceAssociationsStatusRequest(t)
	return t
end

local ParameterPatternMismatchException_keys = { "message" = true, nil }

function M.AssertParameterPatternMismatchException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterPatternMismatchException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ParameterPatternMismatchException_keys[k], "ParameterPatternMismatchException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterPatternMismatchException
-- <p>The parameter name is not valid.</p>
-- @param message [String] <p>The parameter name is not valid.</p>
function M.ParameterPatternMismatchException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterPatternMismatchException")
	local t = { 
		["message"] = message,
	}
	M.AssertParameterPatternMismatchException(t)
	return t
end

local GetCommandInvocationResult_keys = { "Comment" = true, "ExecutionElapsedTime" = true, "ExecutionEndDateTime" = true, "StandardErrorContent" = true, "InstanceId" = true, "StandardErrorUrl" = true, "DocumentName" = true, "StandardOutputContent" = true, "Status" = true, "StatusDetails" = true, "PluginName" = true, "ResponseCode" = true, "ExecutionStartDateTime" = true, "CommandId" = true, "StandardOutputUrl" = true, nil }

function M.AssertGetCommandInvocationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCommandInvocationResult to be of type 'table'")
	if struct["Comment"] then M.AssertComment(struct["Comment"]) end
	if struct["ExecutionElapsedTime"] then M.AssertStringDateTime(struct["ExecutionElapsedTime"]) end
	if struct["ExecutionEndDateTime"] then M.AssertStringDateTime(struct["ExecutionEndDateTime"]) end
	if struct["StandardErrorContent"] then M.AssertStandardErrorContent(struct["StandardErrorContent"]) end
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["StandardErrorUrl"] then M.AssertUrl(struct["StandardErrorUrl"]) end
	if struct["DocumentName"] then M.AssertDocumentName(struct["DocumentName"]) end
	if struct["StandardOutputContent"] then M.AssertStandardOutputContent(struct["StandardOutputContent"]) end
	if struct["Status"] then M.AssertCommandInvocationStatus(struct["Status"]) end
	if struct["StatusDetails"] then M.AssertStatusDetails(struct["StatusDetails"]) end
	if struct["PluginName"] then M.AssertCommandPluginName(struct["PluginName"]) end
	if struct["ResponseCode"] then M.AssertResponseCode(struct["ResponseCode"]) end
	if struct["ExecutionStartDateTime"] then M.AssertStringDateTime(struct["ExecutionStartDateTime"]) end
	if struct["CommandId"] then M.AssertCommandId(struct["CommandId"]) end
	if struct["StandardOutputUrl"] then M.AssertUrl(struct["StandardOutputUrl"]) end
	for k,_ in pairs(struct) do
		assert(GetCommandInvocationResult_keys[k], "GetCommandInvocationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCommandInvocationResult
--  
-- @param Comment [Comment] <p>The comment text for the command.</p>
-- @param ExecutionElapsedTime [StringDateTime] <p>Duration since ExecutionStartDateTime.</p>
-- @param ExecutionEndDateTime [StringDateTime] <p>The date and time the plugin was finished executing. Date and time are written in ISO 8601 format. For example, June 7, 2017 is represented as 2017-06-7. The following sample AWS CLI command uses the <code>InvokedAfter</code> filter.</p> <p> <code>aws ssm list-commands --filters key=InvokedAfter,value=2017-06-07T00:00:00Z</code> </p> <p>If the plugin has not started to execute, the string is empty.</p>
-- @param StandardErrorContent [StandardErrorContent] <p>The first 8,000 characters written by the plugin to stderr. If the command has not finished executing, then this string is empty.</p>
-- @param InstanceId [InstanceId] <p>The ID of the managed instance targeted by the command. A managed instance can be an Amazon EC2 instance or an instance in your hybrid environment that is configured for Systems Manager.</p>
-- @param StandardErrorUrl [Url] <p>The URL for the complete text written by the plugin to stderr. If the command has not finished executing, then this string is empty.</p>
-- @param DocumentName [DocumentName] <p>The name of the document that was executed. For example, AWS-RunShellScript.</p>
-- @param StandardOutputContent [StandardOutputContent] <p>The first 24,000 characters written by the plugin to stdout. If the command has not finished executing, if ExecutionStatus is neither Succeeded nor Failed, then this string is empty.</p>
-- @param Status [CommandInvocationStatus] <p>The status of the parent command for this invocation. This status can be different than StatusDetails.</p>
-- @param StatusDetails [StatusDetails] <p>A detailed status of the command execution for an invocation. StatusDetails includes more information than Status because it includes states resulting from error and concurrency control parameters. StatusDetails can show different results than Status. For more information about these statuses, see <a href="http://docs.aws.amazon.com/systems-manager/latest/userguide/monitor-about-status.html">Run Command Status</a>. StatusDetails can be one of the following values:</p> <ul> <li> <p>Pending: The command has not been sent to the instance.</p> </li> <li> <p>In Progress: The command has been sent to the instance but has not reached a terminal state.</p> </li> <li> <p>Delayed: The system attempted to send the command to the target, but the target was not available. The instance might not be available because of network issues, the instance was stopped, etc. The system will try to deliver the command again.</p> </li> <li> <p>Success: The command or plugin was executed successfully. This is a terminal state.</p> </li> <li> <p>Delivery Timed Out: The command was not delivered to the instance before the delivery timeout expired. Delivery timeouts do not count against the parent command's MaxErrors limit, but they do contribute to whether the parent command status is Success or Incomplete. This is a terminal state.</p> </li> <li> <p>Execution Timed Out: The command started to execute on the instance, but the execution was not complete before the timeout expired. Execution timeouts count against the MaxErrors limit of the parent command. This is a terminal state.</p> </li> <li> <p>Failed: The command wasn't executed successfully on the instance. For a plugin, this indicates that the result code was not zero. For a command invocation, this indicates that the result code for one or more plugins was not zero. Invocation failures count against the MaxErrors limit of the parent command. This is a terminal state.</p> </li> <li> <p>Canceled: The command was terminated before it was completed. This is a terminal state.</p> </li> <li> <p>Undeliverable: The command can't be delivered to the instance. The instance might not exist or might not be responding. Undeliverable invocations don't count against the parent command's MaxErrors limit and don't contribute to whether the parent command status is Success or Incomplete. This is a terminal state.</p> </li> <li> <p>Terminated: The parent command exceeded its MaxErrors limit and subsequent command invocations were canceled by the system. This is a terminal state.</p> </li> </ul>
-- @param PluginName [CommandPluginName] <p>The name of the plugin for which you want detailed results. For example, aws:RunShellScript is a plugin.</p>
-- @param ResponseCode [ResponseCode] <p>The error level response code for the plugin script. If the response code is -1, then the command has not started executing on the instance, or it was not received by the instance.</p>
-- @param ExecutionStartDateTime [StringDateTime] <p>The date and time the plugin started executing. Date and time are written in ISO 8601 format. For example, June 7, 2017 is represented as 2017-06-7. The following sample AWS CLI command uses the <code>InvokedBefore</code> filter.</p> <p> <code>aws ssm list-commands --filters key=InvokedBefore,value=2017-06-07T00:00:00Z</code> </p> <p>If the plugin has not started to execute, the string is empty.</p>
-- @param CommandId [CommandId] <p>The parent command ID of the invocation plugin.</p>
-- @param StandardOutputUrl [Url] <p>The URL for the complete text written by the plugin to stdout in Amazon S3. If an Amazon S3 bucket was not specified, then this string is empty.</p>
function M.GetCommandInvocationResult(Comment, ExecutionElapsedTime, ExecutionEndDateTime, StandardErrorContent, InstanceId, StandardErrorUrl, DocumentName, StandardOutputContent, Status, StatusDetails, PluginName, ResponseCode, ExecutionStartDateTime, CommandId, StandardOutputUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCommandInvocationResult")
	local t = { 
		["Comment"] = Comment,
		["ExecutionElapsedTime"] = ExecutionElapsedTime,
		["ExecutionEndDateTime"] = ExecutionEndDateTime,
		["StandardErrorContent"] = StandardErrorContent,
		["InstanceId"] = InstanceId,
		["StandardErrorUrl"] = StandardErrorUrl,
		["DocumentName"] = DocumentName,
		["StandardOutputContent"] = StandardOutputContent,
		["Status"] = Status,
		["StatusDetails"] = StatusDetails,
		["PluginName"] = PluginName,
		["ResponseCode"] = ResponseCode,
		["ExecutionStartDateTime"] = ExecutionStartDateTime,
		["CommandId"] = CommandId,
		["StandardOutputUrl"] = StandardOutputUrl,
	}
	M.AssertGetCommandInvocationResult(t)
	return t
end

local FailedCreateAssociation_keys = { "Entry" = true, "Message" = true, "Fault" = true, nil }

function M.AssertFailedCreateAssociation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailedCreateAssociation to be of type 'table'")
	if struct["Entry"] then M.AssertCreateAssociationBatchRequestEntry(struct["Entry"]) end
	if struct["Message"] then M.AssertBatchErrorMessage(struct["Message"]) end
	if struct["Fault"] then M.AssertFault(struct["Fault"]) end
	for k,_ in pairs(struct) do
		assert(FailedCreateAssociation_keys[k], "FailedCreateAssociation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailedCreateAssociation
-- <p>Describes a failed association.</p>
-- @param Entry [CreateAssociationBatchRequestEntry] <p>The association.</p>
-- @param Message [BatchErrorMessage] <p>A description of the failure.</p>
-- @param Fault [Fault] <p>The source of the failure.</p>
function M.FailedCreateAssociation(Entry, Message, Fault, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FailedCreateAssociation")
	local t = { 
		["Entry"] = Entry,
		["Message"] = Message,
		["Fault"] = Fault,
	}
	M.AssertFailedCreateAssociation(t)
	return t
end

local DocumentDescription_keys = { "Status" = true, "Sha1" = true, "Hash" = true, "Name" = true, "Parameters" = true, "DocumentType" = true, "PlatformTypes" = true, "DocumentVersion" = true, "HashType" = true, "CreatedDate" = true, "Owner" = true, "SchemaVersion" = true, "DefaultVersion" = true, "LatestVersion" = true, "Description" = true, nil }

function M.AssertDocumentDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentDescription to be of type 'table'")
	if struct["Status"] then M.AssertDocumentStatus(struct["Status"]) end
	if struct["Sha1"] then M.AssertDocumentSha1(struct["Sha1"]) end
	if struct["Hash"] then M.AssertDocumentHash(struct["Hash"]) end
	if struct["Name"] then M.AssertDocumentARN(struct["Name"]) end
	if struct["Parameters"] then M.AssertDocumentParameterList(struct["Parameters"]) end
	if struct["DocumentType"] then M.AssertDocumentType(struct["DocumentType"]) end
	if struct["PlatformTypes"] then M.AssertPlatformTypeList(struct["PlatformTypes"]) end
	if struct["DocumentVersion"] then M.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["HashType"] then M.AssertDocumentHashType(struct["HashType"]) end
	if struct["CreatedDate"] then M.AssertDateTime(struct["CreatedDate"]) end
	if struct["Owner"] then M.AssertDocumentOwner(struct["Owner"]) end
	if struct["SchemaVersion"] then M.AssertDocumentSchemaVersion(struct["SchemaVersion"]) end
	if struct["DefaultVersion"] then M.AssertDocumentVersion(struct["DefaultVersion"]) end
	if struct["LatestVersion"] then M.AssertDocumentVersion(struct["LatestVersion"]) end
	if struct["Description"] then M.AssertDescriptionInDocument(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(DocumentDescription_keys[k], "DocumentDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentDescription
-- <p>Describes an SSM document. </p>
-- @param Status [DocumentStatus] <p>The status of the SSM document.</p>
-- @param Sha1 [DocumentSha1] <p>The SHA1 hash of the document, which you can use for verification purposes.</p>
-- @param Hash [DocumentHash] <p>The Sha256 or Sha1 hash created by the system when the document was created. </p> <note> <p>Sha1 hashes have been deprecated.</p> </note>
-- @param Name [DocumentARN] <p>The name of the SSM document.</p>
-- @param Parameters [DocumentParameterList] <p>A description of the parameters for a document.</p>
-- @param DocumentType [DocumentType] <p>The type of document. </p>
-- @param PlatformTypes [PlatformTypeList] <p>The list of OS platforms compatible with this SSM document. </p>
-- @param DocumentVersion [DocumentVersion] <p>The document version.</p>
-- @param HashType [DocumentHashType] <p>Sha256 or Sha1.</p> <note> <p>Sha1 hashes have been deprecated.</p> </note>
-- @param CreatedDate [DateTime] <p>The date when the document was created.</p>
-- @param Owner [DocumentOwner] <p>The AWS user account of the person who created the document.</p>
-- @param SchemaVersion [DocumentSchemaVersion] <p>The schema version.</p>
-- @param DefaultVersion [DocumentVersion] <p>The default version.</p>
-- @param LatestVersion [DocumentVersion] <p>The latest version of the document.</p>
-- @param Description [DescriptionInDocument] <p>A description of the document. </p>
function M.DocumentDescription(Status, Sha1, Hash, Name, Parameters, DocumentType, PlatformTypes, DocumentVersion, HashType, CreatedDate, Owner, SchemaVersion, DefaultVersion, LatestVersion, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentDescription")
	local t = { 
		["Status"] = Status,
		["Sha1"] = Sha1,
		["Hash"] = Hash,
		["Name"] = Name,
		["Parameters"] = Parameters,
		["DocumentType"] = DocumentType,
		["PlatformTypes"] = PlatformTypes,
		["DocumentVersion"] = DocumentVersion,
		["HashType"] = HashType,
		["CreatedDate"] = CreatedDate,
		["Owner"] = Owner,
		["SchemaVersion"] = SchemaVersion,
		["DefaultVersion"] = DefaultVersion,
		["LatestVersion"] = LatestVersion,
		["Description"] = Description,
	}
	M.AssertDocumentDescription(t)
	return t
end

local UpdateAssociationResult_keys = { "AssociationDescription" = true, nil }

function M.AssertUpdateAssociationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAssociationResult to be of type 'table'")
	if struct["AssociationDescription"] then M.AssertAssociationDescription(struct["AssociationDescription"]) end
	for k,_ in pairs(struct) do
		assert(UpdateAssociationResult_keys[k], "UpdateAssociationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAssociationResult
--  
-- @param AssociationDescription [AssociationDescription] <p>The description of the association that was updated.</p>
function M.UpdateAssociationResult(AssociationDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAssociationResult")
	local t = { 
		["AssociationDescription"] = AssociationDescription,
	}
	M.AssertUpdateAssociationResult(t)
	return t
end

local MaintenanceWindowTarget_keys = { "ResourceType" = true, "OwnerInformation" = true, "WindowId" = true, "Targets" = true, "WindowTargetId" = true, nil }

function M.AssertMaintenanceWindowTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaintenanceWindowTarget to be of type 'table'")
	if struct["ResourceType"] then M.AssertMaintenanceWindowResourceType(struct["ResourceType"]) end
	if struct["OwnerInformation"] then M.AssertOwnerInformation(struct["OwnerInformation"]) end
	if struct["WindowId"] then M.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["Targets"] then M.AssertTargets(struct["Targets"]) end
	if struct["WindowTargetId"] then M.AssertMaintenanceWindowTargetId(struct["WindowTargetId"]) end
	for k,_ in pairs(struct) do
		assert(MaintenanceWindowTarget_keys[k], "MaintenanceWindowTarget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaintenanceWindowTarget
-- <p>The target registered with the Maintenance Window.</p>
-- @param ResourceType [MaintenanceWindowResourceType] <p>The type of target.</p>
-- @param OwnerInformation [OwnerInformation] <p>User-provided value that will be included in any CloudWatch events raised while running tasks for these targets in this Maintenance Window.</p>
-- @param WindowId [MaintenanceWindowId] <p>The Maintenance Window ID where the target is registered.</p>
-- @param Targets [Targets] <p>The targets (either instances or tags). Instances are specified using Key=instanceids,Values=&lt;instanceid1&gt;,&lt;instanceid2&gt;. Tags are specified using Key=&lt;tag name&gt;,Values=&lt;tag value&gt;.</p>
-- @param WindowTargetId [MaintenanceWindowTargetId] <p>The ID of the target.</p>
function M.MaintenanceWindowTarget(ResourceType, OwnerInformation, WindowId, Targets, WindowTargetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaintenanceWindowTarget")
	local t = { 
		["ResourceType"] = ResourceType,
		["OwnerInformation"] = OwnerInformation,
		["WindowId"] = WindowId,
		["Targets"] = Targets,
		["WindowTargetId"] = WindowTargetId,
	}
	M.AssertMaintenanceWindowTarget(t)
	return t
end

local GetMaintenanceWindowExecutionTaskResult_keys = { "Status" = true, "MaxErrors" = true, "TaskArn" = true, "MaxConcurrency" = true, "ServiceRole" = true, "WindowExecutionId" = true, "StatusDetails" = true, "Priority" = true, "StartTime" = true, "EndTime" = true, "Type" = true, "TaskParameters" = true, "TaskExecutionId" = true, nil }

function M.AssertGetMaintenanceWindowExecutionTaskResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMaintenanceWindowExecutionTaskResult to be of type 'table'")
	if struct["Status"] then M.AssertMaintenanceWindowExecutionStatus(struct["Status"]) end
	if struct["MaxErrors"] then M.AssertMaxErrors(struct["MaxErrors"]) end
	if struct["TaskArn"] then M.AssertMaintenanceWindowTaskArn(struct["TaskArn"]) end
	if struct["MaxConcurrency"] then M.AssertMaxConcurrency(struct["MaxConcurrency"]) end
	if struct["ServiceRole"] then M.AssertServiceRole(struct["ServiceRole"]) end
	if struct["WindowExecutionId"] then M.AssertMaintenanceWindowExecutionId(struct["WindowExecutionId"]) end
	if struct["StatusDetails"] then M.AssertMaintenanceWindowExecutionStatusDetails(struct["StatusDetails"]) end
	if struct["Priority"] then M.AssertMaintenanceWindowTaskPriority(struct["Priority"]) end
	if struct["StartTime"] then M.AssertDateTime(struct["StartTime"]) end
	if struct["EndTime"] then M.AssertDateTime(struct["EndTime"]) end
	if struct["Type"] then M.AssertMaintenanceWindowTaskType(struct["Type"]) end
	if struct["TaskParameters"] then M.AssertMaintenanceWindowTaskParametersList(struct["TaskParameters"]) end
	if struct["TaskExecutionId"] then M.AssertMaintenanceWindowExecutionTaskId(struct["TaskExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(GetMaintenanceWindowExecutionTaskResult_keys[k], "GetMaintenanceWindowExecutionTaskResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMaintenanceWindowExecutionTaskResult
--  
-- @param Status [MaintenanceWindowExecutionStatus] <p>The status of the task.</p>
-- @param MaxErrors [MaxErrors] <p>The defined maximum number of task execution errors allowed before scheduling of the task execution would have been stopped.</p>
-- @param TaskArn [MaintenanceWindowTaskArn] <p>The ARN of the executed task.</p>
-- @param MaxConcurrency [MaxConcurrency] <p>The defined maximum number of task executions that could be run in parallel.</p>
-- @param ServiceRole [ServiceRole] <p>The role that was assumed when executing the task.</p>
-- @param WindowExecutionId [MaintenanceWindowExecutionId] <p>The ID of the Maintenance Window execution that includes the task.</p>
-- @param StatusDetails [MaintenanceWindowExecutionStatusDetails] <p>The details explaining the Status. Only available for certain status values.</p>
-- @param Priority [MaintenanceWindowTaskPriority] <p>The priority of the task.</p>
-- @param StartTime [DateTime] <p>The time the task execution started.</p>
-- @param EndTime [DateTime] <p>The time the task execution completed.</p>
-- @param Type [MaintenanceWindowTaskType] <p>The type of task executed.</p>
-- @param TaskParameters [MaintenanceWindowTaskParametersList] <p>The parameters passed to the task when it was executed. The map has the following format:</p> <p>Key: string, between 1 and 255 characters</p> <p>Value: an array of strings, each string is between 1 and 255 characters</p>
-- @param TaskExecutionId [MaintenanceWindowExecutionTaskId] <p>The ID of the specific task execution in the Maintenance Window task that was retrieved.</p>
function M.GetMaintenanceWindowExecutionTaskResult(Status, MaxErrors, TaskArn, MaxConcurrency, ServiceRole, WindowExecutionId, StatusDetails, Priority, StartTime, EndTime, Type, TaskParameters, TaskExecutionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetMaintenanceWindowExecutionTaskResult")
	local t = { 
		["Status"] = Status,
		["MaxErrors"] = MaxErrors,
		["TaskArn"] = TaskArn,
		["MaxConcurrency"] = MaxConcurrency,
		["ServiceRole"] = ServiceRole,
		["WindowExecutionId"] = WindowExecutionId,
		["StatusDetails"] = StatusDetails,
		["Priority"] = Priority,
		["StartTime"] = StartTime,
		["EndTime"] = EndTime,
		["Type"] = Type,
		["TaskParameters"] = TaskParameters,
		["TaskExecutionId"] = TaskExecutionId,
	}
	M.AssertGetMaintenanceWindowExecutionTaskResult(t)
	return t
end

local GetInventoryResult_keys = { "Entities" = true, "NextToken" = true, nil }

function M.AssertGetInventoryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetInventoryResult to be of type 'table'")
	if struct["Entities"] then M.AssertInventoryResultEntityList(struct["Entities"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(GetInventoryResult_keys[k], "GetInventoryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetInventoryResult
--  
-- @param Entities [InventoryResultEntityList] <p>Collection of inventory entities such as a collection of instance inventory. </p>
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
function M.GetInventoryResult(Entities, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetInventoryResult")
	local t = { 
		["Entities"] = Entities,
		["NextToken"] = NextToken,
	}
	M.AssertGetInventoryResult(t)
	return t
end

local GetPatchBaselineRequest_keys = { "BaselineId" = true, nil }

function M.AssertGetPatchBaselineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPatchBaselineRequest to be of type 'table'")
	assert(struct["BaselineId"], "Expected key BaselineId to exist in table")
	if struct["BaselineId"] then M.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(GetPatchBaselineRequest_keys[k], "GetPatchBaselineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPatchBaselineRequest
--  
-- @param BaselineId [BaselineId] <p>The ID of the patch baseline to retrieve.</p>
-- Required parameter: BaselineId
function M.GetPatchBaselineRequest(BaselineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetPatchBaselineRequest")
	local t = { 
		["BaselineId"] = BaselineId,
	}
	M.AssertGetPatchBaselineRequest(t)
	return t
end

local RegisterPatchBaselineForPatchGroupResult_keys = { "PatchGroup" = true, "BaselineId" = true, nil }

function M.AssertRegisterPatchBaselineForPatchGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterPatchBaselineForPatchGroupResult to be of type 'table'")
	if struct["PatchGroup"] then M.AssertPatchGroup(struct["PatchGroup"]) end
	if struct["BaselineId"] then M.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(RegisterPatchBaselineForPatchGroupResult_keys[k], "RegisterPatchBaselineForPatchGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterPatchBaselineForPatchGroupResult
--  
-- @param PatchGroup [PatchGroup] <p>The name of the patch group registered with the patch baseline.</p>
-- @param BaselineId [BaselineId] <p>The ID of the patch baseline the patch group was registered with.</p>
function M.RegisterPatchBaselineForPatchGroupResult(PatchGroup, BaselineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterPatchBaselineForPatchGroupResult")
	local t = { 
		["PatchGroup"] = PatchGroup,
		["BaselineId"] = BaselineId,
	}
	M.AssertRegisterPatchBaselineForPatchGroupResult(t)
	return t
end

local TooManyUpdates_keys = { "Message" = true, nil }

function M.AssertTooManyUpdates(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyUpdates to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(TooManyUpdates_keys[k], "TooManyUpdates contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyUpdates
-- <p>There are concurrent updates for a resource that supports one update at a time.</p>
-- @param Message [String] <p>There are concurrent updates for a resource that supports one update at a time.</p>
function M.TooManyUpdates(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyUpdates")
	local t = { 
		["Message"] = Message,
	}
	M.AssertTooManyUpdates(t)
	return t
end

local PatchOrchestratorFilter_keys = { "Values" = true, "Key" = true, nil }

function M.AssertPatchOrchestratorFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PatchOrchestratorFilter to be of type 'table'")
	if struct["Values"] then M.AssertPatchOrchestratorFilterValues(struct["Values"]) end
	if struct["Key"] then M.AssertPatchOrchestratorFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(PatchOrchestratorFilter_keys[k], "PatchOrchestratorFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PatchOrchestratorFilter
-- <p>Defines a filter used in Patch Manager APIs.</p>
-- @param Values [PatchOrchestratorFilterValues] <p>The value for the filter.</p>
-- @param Key [PatchOrchestratorFilterKey] <p>The key for the filter.</p>
function M.PatchOrchestratorFilter(Values, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PatchOrchestratorFilter")
	local t = { 
		["Values"] = Values,
		["Key"] = Key,
	}
	M.AssertPatchOrchestratorFilter(t)
	return t
end

local DeregisterTargetFromMaintenanceWindowRequest_keys = { "WindowId" = true, "WindowTargetId" = true, nil }

function M.AssertDeregisterTargetFromMaintenanceWindowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeregisterTargetFromMaintenanceWindowRequest to be of type 'table'")
	assert(struct["WindowId"], "Expected key WindowId to exist in table")
	assert(struct["WindowTargetId"], "Expected key WindowTargetId to exist in table")
	if struct["WindowId"] then M.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["WindowTargetId"] then M.AssertMaintenanceWindowTargetId(struct["WindowTargetId"]) end
	for k,_ in pairs(struct) do
		assert(DeregisterTargetFromMaintenanceWindowRequest_keys[k], "DeregisterTargetFromMaintenanceWindowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeregisterTargetFromMaintenanceWindowRequest
--  
-- @param WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window the target should be removed from.</p>
-- @param WindowTargetId [MaintenanceWindowTargetId] <p>The ID of the target definition to remove.</p>
-- Required parameter: WindowId
-- Required parameter: WindowTargetId
function M.DeregisterTargetFromMaintenanceWindowRequest(WindowId, WindowTargetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeregisterTargetFromMaintenanceWindowRequest")
	local t = { 
		["WindowId"] = WindowId,
		["WindowTargetId"] = WindowTargetId,
	}
	M.AssertDeregisterTargetFromMaintenanceWindowRequest(t)
	return t
end

local PatchRule_keys = { "PatchFilterGroup" = true, "ApproveAfterDays" = true, nil }

function M.AssertPatchRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PatchRule to be of type 'table'")
	assert(struct["PatchFilterGroup"], "Expected key PatchFilterGroup to exist in table")
	assert(struct["ApproveAfterDays"], "Expected key ApproveAfterDays to exist in table")
	if struct["PatchFilterGroup"] then M.AssertPatchFilterGroup(struct["PatchFilterGroup"]) end
	if struct["ApproveAfterDays"] then M.AssertApproveAfterDays(struct["ApproveAfterDays"]) end
	for k,_ in pairs(struct) do
		assert(PatchRule_keys[k], "PatchRule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PatchRule
-- <p>Defines an approval rule for a patch baseline.</p>
-- @param PatchFilterGroup [PatchFilterGroup] <p>The patch filter group that defines the criteria for the rule.</p>
-- @param ApproveAfterDays [ApproveAfterDays] <p>The number of days after the release date of each patch matched by the rule the patch is marked as approved in the patch baseline.</p>
-- Required parameter: PatchFilterGroup
-- Required parameter: ApproveAfterDays
function M.PatchRule(PatchFilterGroup, ApproveAfterDays, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PatchRule")
	local t = { 
		["PatchFilterGroup"] = PatchFilterGroup,
		["ApproveAfterDays"] = ApproveAfterDays,
	}
	M.AssertPatchRule(t)
	return t
end

local DeleteActivationResult_keys = { nil }

function M.AssertDeleteActivationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteActivationResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteActivationResult_keys[k], "DeleteActivationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteActivationResult
--  
function M.DeleteActivationResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteActivationResult")
	local t = { 
	}
	M.AssertDeleteActivationResult(t)
	return t
end

local CustomSchemaCountLimitExceededException_keys = { "Message" = true, nil }

function M.AssertCustomSchemaCountLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CustomSchemaCountLimitExceededException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(CustomSchemaCountLimitExceededException_keys[k], "CustomSchemaCountLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CustomSchemaCountLimitExceededException
-- <p>You have exceeded the limit for custom schemas. Delete one or more custom schemas and try again.</p>
-- @param Message [String] <p>You have exceeded the limit for custom schemas. Delete one or more custom schemas and try again.</p>
function M.CustomSchemaCountLimitExceededException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CustomSchemaCountLimitExceededException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertCustomSchemaCountLimitExceededException(t)
	return t
end

local DeleteParameterResult_keys = { nil }

function M.AssertDeleteParameterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteParameterResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteParameterResult_keys[k], "DeleteParameterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteParameterResult
--  
function M.DeleteParameterResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteParameterResult")
	local t = { 
	}
	M.AssertDeleteParameterResult(t)
	return t
end

local InvalidFilterOption_keys = { "message" = true, nil }

function M.AssertInvalidFilterOption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidFilterOption to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidFilterOption_keys[k], "InvalidFilterOption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidFilterOption
-- <p>The specified filter option is not valid. Valid options are Equals and BeginsWith. For Path filter, valid options are Recursive and OneLevel.</p>
-- @param message [String] <p>The specified filter option is not valid. Valid options are Equals and BeginsWith. For Path filter, valid options are Recursive and OneLevel.</p>
function M.InvalidFilterOption(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidFilterOption")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidFilterOption(t)
	return t
end

local S3OutputLocation_keys = { "OutputS3KeyPrefix" = true, "OutputS3BucketName" = true, "OutputS3Region" = true, nil }

function M.AssertS3OutputLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3OutputLocation to be of type 'table'")
	if struct["OutputS3KeyPrefix"] then M.AssertS3KeyPrefix(struct["OutputS3KeyPrefix"]) end
	if struct["OutputS3BucketName"] then M.AssertS3BucketName(struct["OutputS3BucketName"]) end
	if struct["OutputS3Region"] then M.AssertS3Region(struct["OutputS3Region"]) end
	for k,_ in pairs(struct) do
		assert(S3OutputLocation_keys[k], "S3OutputLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3OutputLocation
-- <p>An Amazon S3 bucket where you want to store the results of this request.</p>
-- @param OutputS3KeyPrefix [S3KeyPrefix] <p>The Amazon S3 bucket subfolder.</p>
-- @param OutputS3BucketName [S3BucketName] <p>The name of the Amazon S3 bucket.</p>
-- @param OutputS3Region [S3Region] <p>(Deprecated) You can no longer specify this parameter. The system ignores it. Instead, Systems Manager automatically determines the Amazon S3 bucket region.</p>
function M.S3OutputLocation(OutputS3KeyPrefix, OutputS3BucketName, OutputS3Region, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3OutputLocation")
	local t = { 
		["OutputS3KeyPrefix"] = OutputS3KeyPrefix,
		["OutputS3BucketName"] = OutputS3BucketName,
		["OutputS3Region"] = OutputS3Region,
	}
	M.AssertS3OutputLocation(t)
	return t
end

local AssociationOverview_keys = { "Status" = true, "DetailedStatus" = true, "AssociationStatusAggregatedCount" = true, nil }

function M.AssertAssociationOverview(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociationOverview to be of type 'table'")
	if struct["Status"] then M.AssertStatusName(struct["Status"]) end
	if struct["DetailedStatus"] then M.AssertStatusName(struct["DetailedStatus"]) end
	if struct["AssociationStatusAggregatedCount"] then M.AssertAssociationStatusAggregatedCount(struct["AssociationStatusAggregatedCount"]) end
	for k,_ in pairs(struct) do
		assert(AssociationOverview_keys[k], "AssociationOverview contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociationOverview
-- <p>Information about the association.</p>
-- @param Status [StatusName] <p>The status of the association. Status can be: Pending, Success, or Failed.</p>
-- @param DetailedStatus [StatusName] <p>A detailed status of the association.</p>
-- @param AssociationStatusAggregatedCount [AssociationStatusAggregatedCount] <p>Returns the number of targets for the association status. For example, if you created an association with two instances, and one of them was successful, this would return the count of instances by status.</p>
function M.AssociationOverview(Status, DetailedStatus, AssociationStatusAggregatedCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociationOverview")
	local t = { 
		["Status"] = Status,
		["DetailedStatus"] = DetailedStatus,
		["AssociationStatusAggregatedCount"] = AssociationStatusAggregatedCount,
	}
	M.AssertAssociationOverview(t)
	return t
end

local DocumentDefaultVersionDescription_keys = { "DefaultVersion" = true, "Name" = true, nil }

function M.AssertDocumentDefaultVersionDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentDefaultVersionDescription to be of type 'table'")
	if struct["DefaultVersion"] then M.AssertDocumentVersion(struct["DefaultVersion"]) end
	if struct["Name"] then M.AssertDocumentName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DocumentDefaultVersionDescription_keys[k], "DocumentDefaultVersionDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentDefaultVersionDescription
-- <p>A default version of a document.</p>
-- @param DefaultVersion [DocumentVersion] <p>The default version of the document.</p>
-- @param Name [DocumentName] <p>The name of the document.</p>
function M.DocumentDefaultVersionDescription(DefaultVersion, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentDefaultVersionDescription")
	local t = { 
		["DefaultVersion"] = DefaultVersion,
		["Name"] = Name,
	}
	M.AssertDocumentDefaultVersionDescription(t)
	return t
end

local InvalidTypeNameException_keys = { "Message" = true, nil }

function M.AssertInvalidTypeNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTypeNameException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidTypeNameException_keys[k], "InvalidTypeNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTypeNameException
-- <p>The parameter type name is not valid.</p>
-- @param Message [String] <p>The parameter type name is not valid.</p>
function M.InvalidTypeNameException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTypeNameException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidTypeNameException(t)
	return t
end

local ParameterNotFound_keys = { "message" = true, nil }

function M.AssertParameterNotFound(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterNotFound to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ParameterNotFound_keys[k], "ParameterNotFound contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterNotFound
-- <p>The parameter could not be found. Verify the name and try again.</p>
-- @param message [String] <p>The parameter could not be found. Verify the name and try again.</p>
function M.ParameterNotFound(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterNotFound")
	local t = { 
		["message"] = message,
	}
	M.AssertParameterNotFound(t)
	return t
end

local InstancePatchState_keys = { "OperationStartTime" = true, "BaselineId" = true, "FailedCount" = true, "InstanceId" = true, "OwnerInformation" = true, "NotApplicableCount" = true, "OperationEndTime" = true, "PatchGroup" = true, "InstalledOtherCount" = true, "MissingCount" = true, "SnapshotId" = true, "Operation" = true, "InstalledCount" = true, nil }

function M.AssertInstancePatchState(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstancePatchState to be of type 'table'")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	assert(struct["PatchGroup"], "Expected key PatchGroup to exist in table")
	assert(struct["BaselineId"], "Expected key BaselineId to exist in table")
	assert(struct["OperationStartTime"], "Expected key OperationStartTime to exist in table")
	assert(struct["OperationEndTime"], "Expected key OperationEndTime to exist in table")
	assert(struct["Operation"], "Expected key Operation to exist in table")
	if struct["OperationStartTime"] then M.AssertPatchOperationStartTime(struct["OperationStartTime"]) end
	if struct["BaselineId"] then M.AssertBaselineId(struct["BaselineId"]) end
	if struct["FailedCount"] then M.AssertPatchFailedCount(struct["FailedCount"]) end
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["OwnerInformation"] then M.AssertOwnerInformation(struct["OwnerInformation"]) end
	if struct["NotApplicableCount"] then M.AssertPatchNotApplicableCount(struct["NotApplicableCount"]) end
	if struct["OperationEndTime"] then M.AssertPatchOperationEndTime(struct["OperationEndTime"]) end
	if struct["PatchGroup"] then M.AssertPatchGroup(struct["PatchGroup"]) end
	if struct["InstalledOtherCount"] then M.AssertPatchInstalledOtherCount(struct["InstalledOtherCount"]) end
	if struct["MissingCount"] then M.AssertPatchMissingCount(struct["MissingCount"]) end
	if struct["SnapshotId"] then M.AssertSnapshotId(struct["SnapshotId"]) end
	if struct["Operation"] then M.AssertPatchOperationType(struct["Operation"]) end
	if struct["InstalledCount"] then M.AssertPatchInstalledCount(struct["InstalledCount"]) end
	for k,_ in pairs(struct) do
		assert(InstancePatchState_keys[k], "InstancePatchState contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstancePatchState
-- <p>Defines the high-level patch compliance state for a managed instance, providing information about the number of installed, missing, not applicable, and failed patches along with metadata about the operation when this information was gathered for the instance.</p>
-- @param OperationStartTime [PatchOperationStartTime] <p>The time the most recent patching operation was started on the instance.</p>
-- @param BaselineId [BaselineId] <p>The ID of the patch baseline used to patch the instance.</p>
-- @param FailedCount [PatchFailedCount] <p>The number of patches from the patch baseline that were attempted to be installed during the last patching operation, but failed to install.</p>
-- @param InstanceId [InstanceId] <p>The ID of the managed instance the high-level patch compliance information was collected for.</p>
-- @param OwnerInformation [OwnerInformation] <p>Placeholder information, this field will always be empty in the current release of the service.</p>
-- @param NotApplicableCount [PatchNotApplicableCount] <p>The number of patches from the patch baseline that aren't applicable for the instance and hence aren't installed on the instance.</p>
-- @param OperationEndTime [PatchOperationEndTime] <p>The time the most recent patching operation completed on the instance.</p>
-- @param PatchGroup [PatchGroup] <p>The name of the patch group the managed instance belongs to.</p>
-- @param InstalledOtherCount [PatchInstalledOtherCount] <p>The number of patches not specified in the patch baseline that are installed on the instance.</p>
-- @param MissingCount [PatchMissingCount] <p>The number of patches from the patch baseline that are applicable for the instance but aren't currently installed.</p>
-- @param SnapshotId [SnapshotId] <p>The ID of the patch baseline snapshot used during the patching operation when this compliance data was collected.</p>
-- @param Operation [PatchOperationType] <p>The type of patching operation that was performed: SCAN (assess patch compliance state) or INSTALL (install missing patches).</p>
-- @param InstalledCount [PatchInstalledCount] <p>The number of patches from the patch baseline that are installed on the instance.</p>
-- Required parameter: InstanceId
-- Required parameter: PatchGroup
-- Required parameter: BaselineId
-- Required parameter: OperationStartTime
-- Required parameter: OperationEndTime
-- Required parameter: Operation
function M.InstancePatchState(OperationStartTime, BaselineId, FailedCount, InstanceId, OwnerInformation, NotApplicableCount, OperationEndTime, PatchGroup, InstalledOtherCount, MissingCount, SnapshotId, Operation, InstalledCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstancePatchState")
	local t = { 
		["OperationStartTime"] = OperationStartTime,
		["BaselineId"] = BaselineId,
		["FailedCount"] = FailedCount,
		["InstanceId"] = InstanceId,
		["OwnerInformation"] = OwnerInformation,
		["NotApplicableCount"] = NotApplicableCount,
		["OperationEndTime"] = OperationEndTime,
		["PatchGroup"] = PatchGroup,
		["InstalledOtherCount"] = InstalledOtherCount,
		["MissingCount"] = MissingCount,
		["SnapshotId"] = SnapshotId,
		["Operation"] = Operation,
		["InstalledCount"] = InstalledCount,
	}
	M.AssertInstancePatchState(t)
	return t
end

local InvalidDocumentOperation_keys = { "Message" = true, nil }

function M.AssertInvalidDocumentOperation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDocumentOperation to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidDocumentOperation_keys[k], "InvalidDocumentOperation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDocumentOperation
-- <p>You attempted to delete a document while it is still shared. You must stop sharing the document before you can delete it.</p>
-- @param Message [String] <p>You attempted to delete a document while it is still shared. You must stop sharing the document before you can delete it.</p>
function M.InvalidDocumentOperation(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDocumentOperation")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidDocumentOperation(t)
	return t
end

local ListCommandInvocationsRequest_keys = { "InstanceId" = true, "MaxResults" = true, "Details" = true, "Filters" = true, "NextToken" = true, "CommandId" = true, nil }

function M.AssertListCommandInvocationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCommandInvocationsRequest to be of type 'table'")
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["MaxResults"] then M.AssertCommandMaxResults(struct["MaxResults"]) end
	if struct["Details"] then M.AssertBoolean(struct["Details"]) end
	if struct["Filters"] then M.AssertCommandFilterList(struct["Filters"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["CommandId"] then M.AssertCommandId(struct["CommandId"]) end
	for k,_ in pairs(struct) do
		assert(ListCommandInvocationsRequest_keys[k], "ListCommandInvocationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCommandInvocationsRequest
--  
-- @param InstanceId [InstanceId] <p>(Optional) The command execution details for a specific instance ID.</p>
-- @param MaxResults [CommandMaxResults] <p>(Optional) The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- @param Details [Boolean] <p>(Optional) If set this returns the response of the command executions and any command output. By default this is set to False. </p>
-- @param Filters [CommandFilterList] <p>(Optional) One or more filters. Use a filter to return a more specific list of results.</p>
-- @param NextToken [NextToken] <p>(Optional) The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param CommandId [CommandId] <p>(Optional) The invocations for a specific command ID.</p>
function M.ListCommandInvocationsRequest(InstanceId, MaxResults, Details, Filters, NextToken, CommandId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCommandInvocationsRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["MaxResults"] = MaxResults,
		["Details"] = Details,
		["Filters"] = Filters,
		["NextToken"] = NextToken,
		["CommandId"] = CommandId,
	}
	M.AssertListCommandInvocationsRequest(t)
	return t
end

local UnsupportedInventorySchemaVersionException_keys = { "Message" = true, nil }

function M.AssertUnsupportedInventorySchemaVersionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedInventorySchemaVersionException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(UnsupportedInventorySchemaVersionException_keys[k], "UnsupportedInventorySchemaVersionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedInventorySchemaVersionException
-- <p>Inventory item type schema version has to match supported versions in the service. Check output of GetInventorySchema to see the available schema version for each type.</p>
-- @param Message [String] <p>Inventory item type schema version has to match supported versions in the service. Check output of GetInventorySchema to see the available schema version for each type.</p>
function M.UnsupportedInventorySchemaVersionException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedInventorySchemaVersionException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertUnsupportedInventorySchemaVersionException(t)
	return t
end

local AssociationFilter_keys = { "value" = true, "key" = true, nil }

function M.AssertAssociationFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociationFilter to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	assert(struct["value"], "Expected key value to exist in table")
	if struct["value"] then M.AssertAssociationFilterValue(struct["value"]) end
	if struct["key"] then M.AssertAssociationFilterKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(AssociationFilter_keys[k], "AssociationFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociationFilter
-- <p>Describes a filter.</p>
-- @param value [AssociationFilterValue] <p>The filter value.</p>
-- @param key [AssociationFilterKey] <p>The name of the filter.</p>
-- Required parameter: key
-- Required parameter: value
function M.AssociationFilter(value, key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociationFilter")
	local t = { 
		["value"] = value,
		["key"] = key,
	}
	M.AssertAssociationFilter(t)
	return t
end

local GetParameterHistoryRequest_keys = { "NextToken" = true, "Name" = true, "MaxResults" = true, "WithDecryption" = true, nil }

function M.AssertGetParameterHistoryRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParameterHistoryRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Name"] then M.AssertPSParameterName(struct["Name"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	if struct["WithDecryption"] then M.AssertBoolean(struct["WithDecryption"]) end
	for k,_ in pairs(struct) do
		assert(GetParameterHistoryRequest_keys[k], "GetParameterHistoryRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParameterHistoryRequest
--  
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param Name [PSParameterName] <p>The name of a parameter you want to query.</p>
-- @param MaxResults [MaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- @param WithDecryption [Boolean] <p>Return decrypted values for secure string parameters. This flag is ignored for String and StringList parameter types.</p>
-- Required parameter: Name
function M.GetParameterHistoryRequest(NextToken, Name, MaxResults, WithDecryption, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetParameterHistoryRequest")
	local t = { 
		["NextToken"] = NextToken,
		["Name"] = Name,
		["MaxResults"] = MaxResults,
		["WithDecryption"] = WithDecryption,
	}
	M.AssertGetParameterHistoryRequest(t)
	return t
end

local RegisterDefaultPatchBaselineRequest_keys = { "BaselineId" = true, nil }

function M.AssertRegisterDefaultPatchBaselineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterDefaultPatchBaselineRequest to be of type 'table'")
	assert(struct["BaselineId"], "Expected key BaselineId to exist in table")
	if struct["BaselineId"] then M.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(RegisterDefaultPatchBaselineRequest_keys[k], "RegisterDefaultPatchBaselineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterDefaultPatchBaselineRequest
--  
-- @param BaselineId [BaselineId] <p>The ID of the patch baseline that should be the default patch baseline.</p>
-- Required parameter: BaselineId
function M.RegisterDefaultPatchBaselineRequest(BaselineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterDefaultPatchBaselineRequest")
	local t = { 
		["BaselineId"] = BaselineId,
	}
	M.AssertRegisterDefaultPatchBaselineRequest(t)
	return t
end

local InvalidResourceId_keys = { nil }

function M.AssertInvalidResourceId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidResourceId to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidResourceId_keys[k], "InvalidResourceId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidResourceId
-- <p>The resource ID is not valid. Verify that you entered the correct ID and try again.</p>
function M.InvalidResourceId(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidResourceId")
	local t = { 
	}
	M.AssertInvalidResourceId(t)
	return t
end

local AssociationAlreadyExists_keys = { nil }

function M.AssertAssociationAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociationAlreadyExists to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AssociationAlreadyExists_keys[k], "AssociationAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociationAlreadyExists
-- <p>The specified association already exists.</p>
function M.AssociationAlreadyExists(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssociationAlreadyExists")
	local t = { 
	}
	M.AssertAssociationAlreadyExists(t)
	return t
end

local DescribePatchGroupsResult_keys = { "NextToken" = true, "Mappings" = true, nil }

function M.AssertDescribePatchGroupsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePatchGroupsResult to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Mappings"] then M.AssertPatchGroupPatchBaselineMappingList(struct["Mappings"]) end
	for k,_ in pairs(struct) do
		assert(DescribePatchGroupsResult_keys[k], "DescribePatchGroupsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePatchGroupsResult
--  
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @param Mappings [PatchGroupPatchBaselineMappingList] <p>Each entry in the array contains:</p> <p>PatchGroup: string (between 1 and 256 characters, Regex: ^([\p{L}\p{Z}\p{N}_.:/=+\-@]*)$)</p> <p>PatchBaselineIdentity: A PatchBaselineIdentity element. </p>
function M.DescribePatchGroupsResult(NextToken, Mappings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePatchGroupsResult")
	local t = { 
		["NextToken"] = NextToken,
		["Mappings"] = Mappings,
	}
	M.AssertDescribePatchGroupsResult(t)
	return t
end

local DescribeInstanceInformationResult_keys = { "InstanceInformationList" = true, "NextToken" = true, nil }

function M.AssertDescribeInstanceInformationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstanceInformationResult to be of type 'table'")
	if struct["InstanceInformationList"] then M.AssertInstanceInformationList(struct["InstanceInformationList"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeInstanceInformationResult_keys[k], "DescribeInstanceInformationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstanceInformationResult
--  
-- @param InstanceInformationList [InstanceInformationList] <p>The instance information list.</p>
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty. </p>
function M.DescribeInstanceInformationResult(InstanceInformationList, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInstanceInformationResult")
	local t = { 
		["InstanceInformationList"] = InstanceInformationList,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeInstanceInformationResult(t)
	return t
end

local AutomationExecutionFilter_keys = { "Values" = true, "Key" = true, nil }

function M.AssertAutomationExecutionFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AutomationExecutionFilter to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Values"] then M.AssertAutomationExecutionFilterValueList(struct["Values"]) end
	if struct["Key"] then M.AssertAutomationExecutionFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(AutomationExecutionFilter_keys[k], "AutomationExecutionFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AutomationExecutionFilter
-- <p>A filter used to match specific automation executions. This is used to limit the scope of Automation execution information returned.</p>
-- @param Values [AutomationExecutionFilterValueList] <p>The values used to limit the execution information associated with the filter's key.</p>
-- @param Key [AutomationExecutionFilterKey] <p>The aspect of the Automation execution information that should be limited.</p>
-- Required parameter: Key
-- Required parameter: Values
function M.AutomationExecutionFilter(Values, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AutomationExecutionFilter")
	local t = { 
		["Values"] = Values,
		["Key"] = Key,
	}
	M.AssertAutomationExecutionFilter(t)
	return t
end

local GetParameterRequest_keys = { "Name" = true, "WithDecryption" = true, nil }

function M.AssertGetParameterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetParameterRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertPSParameterName(struct["Name"]) end
	if struct["WithDecryption"] then M.AssertBoolean(struct["WithDecryption"]) end
	for k,_ in pairs(struct) do
		assert(GetParameterRequest_keys[k], "GetParameterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetParameterRequest
--  
-- @param Name [PSParameterName] <p>The name of the parameter you want to query.</p>
-- @param WithDecryption [Boolean] <p>Return decrypted values for secure string parameters. This flag is ignored for String and StringList parameter types.</p>
-- Required parameter: Name
function M.GetParameterRequest(Name, WithDecryption, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetParameterRequest")
	local t = { 
		["Name"] = Name,
		["WithDecryption"] = WithDecryption,
	}
	M.AssertGetParameterRequest(t)
	return t
end

local PatchComplianceData_keys = { "KBId" = true, "Severity" = true, "Classification" = true, "Title" = true, "State" = true, "InstalledTime" = true, nil }

function M.AssertPatchComplianceData(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PatchComplianceData to be of type 'table'")
	assert(struct["Title"], "Expected key Title to exist in table")
	assert(struct["KBId"], "Expected key KBId to exist in table")
	assert(struct["Classification"], "Expected key Classification to exist in table")
	assert(struct["Severity"], "Expected key Severity to exist in table")
	assert(struct["State"], "Expected key State to exist in table")
	assert(struct["InstalledTime"], "Expected key InstalledTime to exist in table")
	if struct["KBId"] then M.AssertPatchKbNumber(struct["KBId"]) end
	if struct["Severity"] then M.AssertPatchSeverity(struct["Severity"]) end
	if struct["Classification"] then M.AssertPatchClassification(struct["Classification"]) end
	if struct["Title"] then M.AssertPatchTitle(struct["Title"]) end
	if struct["State"] then M.AssertPatchComplianceDataState(struct["State"]) end
	if struct["InstalledTime"] then M.AssertPatchInstalledTime(struct["InstalledTime"]) end
	for k,_ in pairs(struct) do
		assert(PatchComplianceData_keys[k], "PatchComplianceData contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PatchComplianceData
-- <p>Information about the state of a patch on a particular instance as it relates to the patch baseline used to patch the instance.</p>
-- @param KBId [PatchKbNumber] <p>The Microsoft Knowledge Base ID of the patch.</p>
-- @param Severity [PatchSeverity] <p>The severity of the patch (for example, Critical, Important, Moderate).</p>
-- @param Classification [PatchClassification] <p>The classification of the patch (for example, SecurityUpdates, Updates, CriticalUpdates).</p>
-- @param Title [PatchTitle] <p>The title of the patch.</p>
-- @param State [PatchComplianceDataState] <p>The state of the patch on the instance (INSTALLED, INSTALLED_OTHER, MISSING, NOT_APPLICABLE or FAILED).</p>
-- @param InstalledTime [PatchInstalledTime] <p>The date/time the patch was installed on the instance.</p>
-- Required parameter: Title
-- Required parameter: KBId
-- Required parameter: Classification
-- Required parameter: Severity
-- Required parameter: State
-- Required parameter: InstalledTime
function M.PatchComplianceData(KBId, Severity, Classification, Title, State, InstalledTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PatchComplianceData")
	local t = { 
		["KBId"] = KBId,
		["Severity"] = Severity,
		["Classification"] = Classification,
		["Title"] = Title,
		["State"] = State,
		["InstalledTime"] = InstalledTime,
	}
	M.AssertPatchComplianceData(t)
	return t
end

local UpdateDocumentRequest_keys = { "Content" = true, "Name" = true, "DocumentVersion" = true, nil }

function M.AssertUpdateDocumentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDocumentRequest to be of type 'table'")
	assert(struct["Content"], "Expected key Content to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Content"] then M.AssertDocumentContent(struct["Content"]) end
	if struct["Name"] then M.AssertDocumentName(struct["Name"]) end
	if struct["DocumentVersion"] then M.AssertDocumentVersion(struct["DocumentVersion"]) end
	for k,_ in pairs(struct) do
		assert(UpdateDocumentRequest_keys[k], "UpdateDocumentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDocumentRequest
--  
-- @param Content [DocumentContent] <p>The content in a document that you want to update.</p>
-- @param Name [DocumentName] <p>The name of the document that you want to update.</p>
-- @param DocumentVersion [DocumentVersion] <p>The version of the document that you want to update.</p>
-- Required parameter: Content
-- Required parameter: Name
function M.UpdateDocumentRequest(Content, Name, DocumentVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateDocumentRequest")
	local t = { 
		["Content"] = Content,
		["Name"] = Name,
		["DocumentVersion"] = DocumentVersion,
	}
	M.AssertUpdateDocumentRequest(t)
	return t
end

local PutInventoryResult_keys = { nil }

function M.AssertPutInventoryResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutInventoryResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(PutInventoryResult_keys[k], "PutInventoryResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutInventoryResult
--  
function M.PutInventoryResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutInventoryResult")
	local t = { 
	}
	M.AssertPutInventoryResult(t)
	return t
end

local ListAssociationsResult_keys = { "Associations" = true, "NextToken" = true, nil }

function M.AssertListAssociationsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssociationsResult to be of type 'table'")
	if struct["Associations"] then M.AssertAssociationList(struct["Associations"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListAssociationsResult_keys[k], "ListAssociationsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssociationsResult
--  
-- @param Associations [AssociationList] <p>The associations.</p>
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
function M.ListAssociationsResult(Associations, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssociationsResult")
	local t = { 
		["Associations"] = Associations,
		["NextToken"] = NextToken,
	}
	M.AssertListAssociationsResult(t)
	return t
end

local InvalidOutputLocation_keys = { nil }

function M.AssertInvalidOutputLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOutputLocation to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidOutputLocation_keys[k], "InvalidOutputLocation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOutputLocation
-- <p>The output location is not valid or does not exist.</p>
function M.InvalidOutputLocation(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOutputLocation")
	local t = { 
	}
	M.AssertInvalidOutputLocation(t)
	return t
end

local InvalidParameters_keys = { "Message" = true, nil }

function M.AssertInvalidParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameters to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidParameters_keys[k], "InvalidParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameters
-- <p>You must specify values for all required parameters in the SSM document. You can only supply values to parameters defined in the SSM document.</p>
-- @param Message [String] <p>You must specify values for all required parameters in the SSM document. You can only supply values to parameters defined in the SSM document.</p>
function M.InvalidParameters(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameters")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidParameters(t)
	return t
end

local DeleteDocumentResult_keys = { nil }

function M.AssertDeleteDocumentResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDocumentResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteDocumentResult_keys[k], "DeleteDocumentResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDocumentResult
--  
function M.DeleteDocumentResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDocumentResult")
	local t = { 
	}
	M.AssertDeleteDocumentResult(t)
	return t
end

local CreateMaintenanceWindowRequest_keys = { "Cutoff" = true, "Name" = true, "Schedule" = true, "AllowUnassociatedTargets" = true, "ClientToken" = true, "Duration" = true, nil }

function M.AssertCreateMaintenanceWindowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateMaintenanceWindowRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Schedule"], "Expected key Schedule to exist in table")
	assert(struct["Duration"], "Expected key Duration to exist in table")
	assert(struct["Cutoff"], "Expected key Cutoff to exist in table")
	assert(struct["AllowUnassociatedTargets"], "Expected key AllowUnassociatedTargets to exist in table")
	if struct["Cutoff"] then M.AssertMaintenanceWindowCutoff(struct["Cutoff"]) end
	if struct["Name"] then M.AssertMaintenanceWindowName(struct["Name"]) end
	if struct["Schedule"] then M.AssertMaintenanceWindowSchedule(struct["Schedule"]) end
	if struct["AllowUnassociatedTargets"] then M.AssertMaintenanceWindowAllowUnassociatedTargets(struct["AllowUnassociatedTargets"]) end
	if struct["ClientToken"] then M.AssertClientToken(struct["ClientToken"]) end
	if struct["Duration"] then M.AssertMaintenanceWindowDurationHours(struct["Duration"]) end
	for k,_ in pairs(struct) do
		assert(CreateMaintenanceWindowRequest_keys[k], "CreateMaintenanceWindowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateMaintenanceWindowRequest
--  
-- @param Cutoff [MaintenanceWindowCutoff] <p>The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution.</p>
-- @param Name [MaintenanceWindowName] <p>The name of the Maintenance Window.</p>
-- @param Schedule [MaintenanceWindowSchedule] <p>The schedule of the Maintenance Window in the form of a cron or rate expression.</p>
-- @param AllowUnassociatedTargets [MaintenanceWindowAllowUnassociatedTargets] <p>Whether targets must be registered with the Maintenance Window before tasks can be defined for those targets.</p>
-- @param ClientToken [ClientToken] <p>User-provided idempotency token.</p>
-- @param Duration [MaintenanceWindowDurationHours] <p>The duration of the Maintenance Window in hours.</p>
-- Required parameter: Name
-- Required parameter: Schedule
-- Required parameter: Duration
-- Required parameter: Cutoff
-- Required parameter: AllowUnassociatedTargets
function M.CreateMaintenanceWindowRequest(Cutoff, Name, Schedule, AllowUnassociatedTargets, ClientToken, Duration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateMaintenanceWindowRequest")
	local t = { 
		["Cutoff"] = Cutoff,
		["Name"] = Name,
		["Schedule"] = Schedule,
		["AllowUnassociatedTargets"] = AllowUnassociatedTargets,
		["ClientToken"] = ClientToken,
		["Duration"] = Duration,
	}
	M.AssertCreateMaintenanceWindowRequest(t)
	return t
end

local DescribeInstancePatchStatesForPatchGroupRequest_keys = { "PatchGroup" = true, "NextToken" = true, "MaxResults" = true, "Filters" = true, nil }

function M.AssertDescribeInstancePatchStatesForPatchGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancePatchStatesForPatchGroupRequest to be of type 'table'")
	assert(struct["PatchGroup"], "Expected key PatchGroup to exist in table")
	if struct["PatchGroup"] then M.AssertPatchGroup(struct["PatchGroup"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertPatchComplianceMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then M.AssertInstancePatchStateFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeInstancePatchStatesForPatchGroupRequest_keys[k], "DescribeInstancePatchStatesForPatchGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancePatchStatesForPatchGroupRequest
--  
-- @param PatchGroup [PatchGroup] <p>The name of the patch group for which the patch state information should be retrieved.</p>
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param MaxResults [PatchComplianceMaxResults] <p>The maximum number of patches to return (per page).</p>
-- @param Filters [InstancePatchStateFilterList] <p>Each entry in the array is a structure containing:</p> <p>Key (string between 1 and 200 characters)</p> <p> Values (array containing a single string)</p> <p> Type (string "Equal", "NotEqual", "LessThan", "GreaterThan")</p>
-- Required parameter: PatchGroup
function M.DescribeInstancePatchStatesForPatchGroupRequest(PatchGroup, NextToken, MaxResults, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInstancePatchStatesForPatchGroupRequest")
	local t = { 
		["PatchGroup"] = PatchGroup,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["Filters"] = Filters,
	}
	M.AssertDescribeInstancePatchStatesForPatchGroupRequest(t)
	return t
end

local GetDefaultPatchBaselineResult_keys = { "BaselineId" = true, nil }

function M.AssertGetDefaultPatchBaselineResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDefaultPatchBaselineResult to be of type 'table'")
	if struct["BaselineId"] then M.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(GetDefaultPatchBaselineResult_keys[k], "GetDefaultPatchBaselineResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDefaultPatchBaselineResult
--  
-- @param BaselineId [BaselineId] <p>The ID of the default patch baseline.</p>
function M.GetDefaultPatchBaselineResult(BaselineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDefaultPatchBaselineResult")
	local t = { 
		["BaselineId"] = BaselineId,
	}
	M.AssertGetDefaultPatchBaselineResult(t)
	return t
end

local GetDefaultPatchBaselineRequest_keys = { nil }

function M.AssertGetDefaultPatchBaselineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDefaultPatchBaselineRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(GetDefaultPatchBaselineRequest_keys[k], "GetDefaultPatchBaselineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDefaultPatchBaselineRequest
--  
function M.GetDefaultPatchBaselineRequest(...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDefaultPatchBaselineRequest")
	local t = { 
	}
	M.AssertGetDefaultPatchBaselineRequest(t)
	return t
end

local DescribeAssociationRequest_keys = { "InstanceId" = true, "AssociationId" = true, "Name" = true, nil }

function M.AssertDescribeAssociationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAssociationRequest to be of type 'table'")
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["AssociationId"] then M.AssertAssociationId(struct["AssociationId"]) end
	if struct["Name"] then M.AssertDocumentName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAssociationRequest_keys[k], "DescribeAssociationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAssociationRequest
--  
-- @param InstanceId [InstanceId] <p>The instance ID.</p>
-- @param AssociationId [AssociationId] <p>The association ID for which you want information.</p>
-- @param Name [DocumentName] <p>The name of the SSM document.</p>
function M.DescribeAssociationRequest(InstanceId, AssociationId, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAssociationRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["AssociationId"] = AssociationId,
		["Name"] = Name,
	}
	M.AssertDescribeAssociationRequest(t)
	return t
end

local DescribeInstanceInformationRequest_keys = { "InstanceInformationFilterList" = true, "NextToken" = true, "MaxResults" = true, "Filters" = true, nil }

function M.AssertDescribeInstanceInformationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstanceInformationRequest to be of type 'table'")
	if struct["InstanceInformationFilterList"] then M.AssertInstanceInformationFilterList(struct["InstanceInformationFilterList"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResultsEC2Compatible(struct["MaxResults"]) end
	if struct["Filters"] then M.AssertInstanceInformationStringFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeInstanceInformationRequest_keys[k], "DescribeInstanceInformationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstanceInformationRequest
--  
-- @param InstanceInformationFilterList [InstanceInformationFilterList] <p>One or more filters. Use a filter to return a more specific list of instances.</p>
-- @param NextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param MaxResults [MaxResultsEC2Compatible] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results. </p>
-- @param Filters [InstanceInformationStringFilterList] <p>One or more filters. Use a filter to return a more specific list of instances.</p>
function M.DescribeInstanceInformationRequest(InstanceInformationFilterList, NextToken, MaxResults, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInstanceInformationRequest")
	local t = { 
		["InstanceInformationFilterList"] = InstanceInformationFilterList,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["Filters"] = Filters,
	}
	M.AssertDescribeInstanceInformationRequest(t)
	return t
end

local ListCommandsResult_keys = { "Commands" = true, "NextToken" = true, nil }

function M.AssertListCommandsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListCommandsResult to be of type 'table'")
	if struct["Commands"] then M.AssertCommandList(struct["Commands"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListCommandsResult_keys[k], "ListCommandsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListCommandsResult
--  
-- @param Commands [CommandList] <p>(Optional) The list of commands requested by the user. </p>
-- @param NextToken [NextToken] <p>(Optional) The token for the next set of items to return. (You received this token from a previous call.)</p>
function M.ListCommandsResult(Commands, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListCommandsResult")
	local t = { 
		["Commands"] = Commands,
		["NextToken"] = NextToken,
	}
	M.AssertListCommandsResult(t)
	return t
end

local InvalidFilterValue_keys = { "Message" = true, nil }

function M.AssertInvalidFilterValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidFilterValue to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidFilterValue_keys[k], "InvalidFilterValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidFilterValue
-- <p>The filter value is not valid. Verify the value and try again.</p>
-- @param Message [String] <p>The filter value is not valid. Verify the value and try again.</p>
function M.InvalidFilterValue(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidFilterValue")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidFilterValue(t)
	return t
end

local GetCommandInvocationRequest_keys = { "InstanceId" = true, "PluginName" = true, "CommandId" = true, nil }

function M.AssertGetCommandInvocationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCommandInvocationRequest to be of type 'table'")
	assert(struct["CommandId"], "Expected key CommandId to exist in table")
	assert(struct["InstanceId"], "Expected key InstanceId to exist in table")
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["PluginName"] then M.AssertCommandPluginName(struct["PluginName"]) end
	if struct["CommandId"] then M.AssertCommandId(struct["CommandId"]) end
	for k,_ in pairs(struct) do
		assert(GetCommandInvocationRequest_keys[k], "GetCommandInvocationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCommandInvocationRequest
--  
-- @param InstanceId [InstanceId] <p>(Required) The ID of the managed instance targeted by the command. A managed instance can be an Amazon EC2 instance or an instance in your hybrid environment that is configured for Systems Manager.</p>
-- @param PluginName [CommandPluginName] <p>(Optional) The name of the plugin for which you want detailed results. If the document contains only one plugin, the name can be omitted and the details will be returned.</p>
-- @param CommandId [CommandId] <p>(Required) The parent command ID of the invocation plugin.</p>
-- Required parameter: CommandId
-- Required parameter: InstanceId
function M.GetCommandInvocationRequest(InstanceId, PluginName, CommandId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetCommandInvocationRequest")
	local t = { 
		["InstanceId"] = InstanceId,
		["PluginName"] = PluginName,
		["CommandId"] = CommandId,
	}
	M.AssertGetCommandInvocationRequest(t)
	return t
end

local CreateDocumentRequest_keys = { "Content" = true, "Name" = true, "DocumentType" = true, nil }

function M.AssertCreateDocumentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDocumentRequest to be of type 'table'")
	assert(struct["Content"], "Expected key Content to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Content"] then M.AssertDocumentContent(struct["Content"]) end
	if struct["Name"] then M.AssertDocumentName(struct["Name"]) end
	if struct["DocumentType"] then M.AssertDocumentType(struct["DocumentType"]) end
	for k,_ in pairs(struct) do
		assert(CreateDocumentRequest_keys[k], "CreateDocumentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDocumentRequest
--  
-- @param Content [DocumentContent] <p>A valid JSON string.</p>
-- @param Name [DocumentName] <p>A name for the Systems Manager document.</p>
-- @param DocumentType [DocumentType] <p>The type of document to create. Valid document types include: Policy, Automation, and Command.</p>
-- Required parameter: Content
-- Required parameter: Name
function M.CreateDocumentRequest(Content, Name, DocumentType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateDocumentRequest")
	local t = { 
		["Content"] = Content,
		["Name"] = Name,
		["DocumentType"] = DocumentType,
	}
	M.AssertCreateDocumentRequest(t)
	return t
end

local InstanceAssociationStatusInfo_keys = { "Status" = true, "DetailedStatus" = true, "OutputUrl" = true, "Name" = true, "InstanceId" = true, "AssociationId" = true, "DocumentVersion" = true, "ErrorCode" = true, "ExecutionSummary" = true, "ExecutionDate" = true, nil }

function M.AssertInstanceAssociationStatusInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceAssociationStatusInfo to be of type 'table'")
	if struct["Status"] then M.AssertStatusName(struct["Status"]) end
	if struct["DetailedStatus"] then M.AssertStatusName(struct["DetailedStatus"]) end
	if struct["OutputUrl"] then M.AssertInstanceAssociationOutputUrl(struct["OutputUrl"]) end
	if struct["Name"] then M.AssertDocumentName(struct["Name"]) end
	if struct["InstanceId"] then M.AssertInstanceId(struct["InstanceId"]) end
	if struct["AssociationId"] then M.AssertAssociationId(struct["AssociationId"]) end
	if struct["DocumentVersion"] then M.AssertDocumentVersion(struct["DocumentVersion"]) end
	if struct["ErrorCode"] then M.AssertAgentErrorCode(struct["ErrorCode"]) end
	if struct["ExecutionSummary"] then M.AssertInstanceAssociationExecutionSummary(struct["ExecutionSummary"]) end
	if struct["ExecutionDate"] then M.AssertDateTime(struct["ExecutionDate"]) end
	for k,_ in pairs(struct) do
		assert(InstanceAssociationStatusInfo_keys[k], "InstanceAssociationStatusInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceAssociationStatusInfo
-- <p>Status information about the instance association.</p>
-- @param Status [StatusName] <p>Status information about the instance association.</p>
-- @param DetailedStatus [StatusName] <p>Detailed status information about the instance association.</p>
-- @param OutputUrl [InstanceAssociationOutputUrl] <p>A URL for an Amazon S3 bucket where you want to store the results of this request.</p>
-- @param Name [DocumentName] <p>The name of the association.</p>
-- @param InstanceId [InstanceId] <p>The instance ID where the association was created.</p>
-- @param AssociationId [AssociationId] <p>The association ID.</p>
-- @param DocumentVersion [DocumentVersion] <p>The association document verions.</p>
-- @param ErrorCode [AgentErrorCode] <p>An error code returned by the request to create the association.</p>
-- @param ExecutionSummary [InstanceAssociationExecutionSummary] <p>Summary information about association execution.</p>
-- @param ExecutionDate [DateTime] <p>The date the instance association executed. </p>
function M.InstanceAssociationStatusInfo(Status, DetailedStatus, OutputUrl, Name, InstanceId, AssociationId, DocumentVersion, ErrorCode, ExecutionSummary, ExecutionDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceAssociationStatusInfo")
	local t = { 
		["Status"] = Status,
		["DetailedStatus"] = DetailedStatus,
		["OutputUrl"] = OutputUrl,
		["Name"] = Name,
		["InstanceId"] = InstanceId,
		["AssociationId"] = AssociationId,
		["DocumentVersion"] = DocumentVersion,
		["ErrorCode"] = ErrorCode,
		["ExecutionSummary"] = ExecutionSummary,
		["ExecutionDate"] = ExecutionDate,
	}
	M.AssertInstanceAssociationStatusInfo(t)
	return t
end

local ParametersFilter_keys = { "Values" = true, "Key" = true, nil }

function M.AssertParametersFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParametersFilter to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Values"] then M.AssertParametersFilterValueList(struct["Values"]) end
	if struct["Key"] then M.AssertParametersFilterKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(ParametersFilter_keys[k], "ParametersFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParametersFilter
-- <p>One or more filters. Use a filter to return a more specific list of results.</p>
-- @param Values [ParametersFilterValueList] <p>The filter values.</p>
-- @param Key [ParametersFilterKey] <p>The name of the filter.</p>
-- Required parameter: Key
-- Required parameter: Values
function M.ParametersFilter(Values, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParametersFilter")
	local t = { 
		["Values"] = Values,
		["Key"] = Key,
	}
	M.AssertParametersFilter(t)
	return t
end

local TooManyTagsError_keys = { nil }

function M.AssertTooManyTagsError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyTagsError to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TooManyTagsError_keys[k], "TooManyTagsError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyTagsError
-- <p>The Targets parameter includes too many tags. Remove one or more tags and try the command again.</p>
function M.TooManyTagsError(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyTagsError")
	local t = { 
	}
	M.AssertTooManyTagsError(t)
	return t
end

local DescribeDocumentPermissionRequest_keys = { "PermissionType" = true, "Name" = true, nil }

function M.AssertDescribeDocumentPermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDocumentPermissionRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["PermissionType"], "Expected key PermissionType to exist in table")
	if struct["PermissionType"] then M.AssertDocumentPermissionType(struct["PermissionType"]) end
	if struct["Name"] then M.AssertDocumentName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDocumentPermissionRequest_keys[k], "DescribeDocumentPermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDocumentPermissionRequest
--  
-- @param PermissionType [DocumentPermissionType] <p>The permission type for the document. The permission type can be <i>Share</i>.</p>
-- @param Name [DocumentName] <p>The name of the document for which you are the owner.</p>
-- Required parameter: Name
-- Required parameter: PermissionType
function M.DescribeDocumentPermissionRequest(PermissionType, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDocumentPermissionRequest")
	local t = { 
		["PermissionType"] = PermissionType,
		["Name"] = Name,
	}
	M.AssertDescribeDocumentPermissionRequest(t)
	return t
end

local DocumentPermissionLimit_keys = { "Message" = true, nil }

function M.AssertDocumentPermissionLimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentPermissionLimit to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DocumentPermissionLimit_keys[k], "DocumentPermissionLimit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentPermissionLimit
-- <p>The document cannot be shared with more AWS user accounts. You can share a document with a maximum of 20 accounts. You can publicly share up to five documents. If you need to increase this limit, contact AWS Support.</p>
-- @param Message [String] <p>The document cannot be shared with more AWS user accounts. You can share a document with a maximum of 20 accounts. You can publicly share up to five documents. If you need to increase this limit, contact AWS Support.</p>
function M.DocumentPermissionLimit(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentPermissionLimit")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDocumentPermissionLimit(t)
	return t
end

local DeleteDocumentRequest_keys = { "Name" = true, nil }

function M.AssertDeleteDocumentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDocumentRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertDocumentName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDocumentRequest_keys[k], "DeleteDocumentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDocumentRequest
--  
-- @param Name [DocumentName] <p>The name of the document.</p>
-- Required parameter: Name
function M.DeleteDocumentRequest(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDocumentRequest")
	local t = { 
		["Name"] = Name,
	}
	M.AssertDeleteDocumentRequest(t)
	return t
end

local DescribeInstancePatchStatesForPatchGroupResult_keys = { "InstancePatchStates" = true, "NextToken" = true, nil }

function M.AssertDescribeInstancePatchStatesForPatchGroupResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeInstancePatchStatesForPatchGroupResult to be of type 'table'")
	if struct["InstancePatchStates"] then M.AssertInstancePatchStatesList(struct["InstancePatchStates"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeInstancePatchStatesForPatchGroupResult_keys[k], "DescribeInstancePatchStatesForPatchGroupResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeInstancePatchStatesForPatchGroupResult
--  
-- @param InstancePatchStates [InstancePatchStatesList] <p>The high-level patch state for the requested instances. </p>
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
function M.DescribeInstancePatchStatesForPatchGroupResult(InstancePatchStates, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeInstancePatchStatesForPatchGroupResult")
	local t = { 
		["InstancePatchStates"] = InstancePatchStates,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeInstancePatchStatesForPatchGroupResult(t)
	return t
end

local InvalidUpdate_keys = { "Message" = true, nil }

function M.AssertInvalidUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidUpdate to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidUpdate_keys[k], "InvalidUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidUpdate
-- <p>The update is not valid.</p>
-- @param Message [String] <p>The update is not valid.</p>
function M.InvalidUpdate(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidUpdate")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidUpdate(t)
	return t
end

local InvalidAllowedPatternException_keys = { "message" = true, nil }

function M.AssertInvalidAllowedPatternException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidAllowedPatternException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidAllowedPatternException_keys[k], "InvalidAllowedPatternException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidAllowedPatternException
-- <p>The request does not meet the regular expression requirement.</p>
-- @param message [String] <p>The request does not meet the regular expression requirement.</p>
function M.InvalidAllowedPatternException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidAllowedPatternException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidAllowedPatternException(t)
	return t
end

local InventoryItemAttribute_keys = { "DataType" = true, "Name" = true, nil }

function M.AssertInventoryItemAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryItemAttribute to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["DataType"], "Expected key DataType to exist in table")
	if struct["DataType"] then M.AssertInventoryAttributeDataType(struct["DataType"]) end
	if struct["Name"] then M.AssertInventoryItemAttributeName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(InventoryItemAttribute_keys[k], "InventoryItemAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryItemAttribute
-- <p>Attributes are the entries within the inventory item content. It contains name and value.</p>
-- @param DataType [InventoryAttributeDataType] <p>The data type of the inventory item attribute. </p>
-- @param Name [InventoryItemAttributeName] <p>Name of the inventory item attribute.</p>
-- Required parameter: Name
-- Required parameter: DataType
function M.InventoryItemAttribute(DataType, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InventoryItemAttribute")
	local t = { 
		["DataType"] = DataType,
		["Name"] = Name,
	}
	M.AssertInventoryItemAttribute(t)
	return t
end

local UpdateMaintenanceWindowResult_keys = { "Cutoff" = true, "Name" = true, "Schedule" = true, "Enabled" = true, "AllowUnassociatedTargets" = true, "WindowId" = true, "Duration" = true, nil }

function M.AssertUpdateMaintenanceWindowResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateMaintenanceWindowResult to be of type 'table'")
	if struct["Cutoff"] then M.AssertMaintenanceWindowCutoff(struct["Cutoff"]) end
	if struct["Name"] then M.AssertMaintenanceWindowName(struct["Name"]) end
	if struct["Schedule"] then M.AssertMaintenanceWindowSchedule(struct["Schedule"]) end
	if struct["Enabled"] then M.AssertMaintenanceWindowEnabled(struct["Enabled"]) end
	if struct["AllowUnassociatedTargets"] then M.AssertMaintenanceWindowAllowUnassociatedTargets(struct["AllowUnassociatedTargets"]) end
	if struct["WindowId"] then M.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["Duration"] then M.AssertMaintenanceWindowDurationHours(struct["Duration"]) end
	for k,_ in pairs(struct) do
		assert(UpdateMaintenanceWindowResult_keys[k], "UpdateMaintenanceWindowResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateMaintenanceWindowResult
--  
-- @param Cutoff [MaintenanceWindowCutoff] <p>The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution.</p>
-- @param Name [MaintenanceWindowName] <p>The name of the Maintenance Window.</p>
-- @param Schedule [MaintenanceWindowSchedule] <p>The schedule of the Maintenance Window in the form of a cron or rate expression.</p>
-- @param Enabled [MaintenanceWindowEnabled] <p>Whether the Maintenance Window is enabled.</p>
-- @param AllowUnassociatedTargets [MaintenanceWindowAllowUnassociatedTargets] <p>Whether targets must be registered with the Maintenance Window before tasks can be defined for those targets.</p>
-- @param WindowId [MaintenanceWindowId] <p>The ID of the created Maintenance Window.</p>
-- @param Duration [MaintenanceWindowDurationHours] <p>The duration of the Maintenance Window in hours.</p>
function M.UpdateMaintenanceWindowResult(Cutoff, Name, Schedule, Enabled, AllowUnassociatedTargets, WindowId, Duration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateMaintenanceWindowResult")
	local t = { 
		["Cutoff"] = Cutoff,
		["Name"] = Name,
		["Schedule"] = Schedule,
		["Enabled"] = Enabled,
		["AllowUnassociatedTargets"] = AllowUnassociatedTargets,
		["WindowId"] = WindowId,
		["Duration"] = Duration,
	}
	M.AssertUpdateMaintenanceWindowResult(t)
	return t
end

local CreateActivationRequest_keys = { "DefaultInstanceName" = true, "IamRole" = true, "ExpirationDate" = true, "Description" = true, "RegistrationLimit" = true, nil }

function M.AssertCreateActivationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateActivationRequest to be of type 'table'")
	assert(struct["IamRole"], "Expected key IamRole to exist in table")
	if struct["DefaultInstanceName"] then M.AssertDefaultInstanceName(struct["DefaultInstanceName"]) end
	if struct["IamRole"] then M.AssertIamRole(struct["IamRole"]) end
	if struct["ExpirationDate"] then M.AssertExpirationDate(struct["ExpirationDate"]) end
	if struct["Description"] then M.AssertActivationDescription(struct["Description"]) end
	if struct["RegistrationLimit"] then M.AssertRegistrationLimit(struct["RegistrationLimit"]) end
	for k,_ in pairs(struct) do
		assert(CreateActivationRequest_keys[k], "CreateActivationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateActivationRequest
--  
-- @param DefaultInstanceName [DefaultInstanceName] <p>The name of the registered, managed instance as it will appear in the Amazon EC2 console or when you use the AWS command line tools to list EC2 resources.</p>
-- @param IamRole [IamRole] <p>The Amazon Identity and Access Management (IAM) role that you want to assign to the managed instance. </p>
-- @param ExpirationDate [ExpirationDate] <p>The date by which this activation request should expire. The default value is 24 hours.</p>
-- @param Description [ActivationDescription] <p>A userdefined description of the resource that you want to register with Amazon EC2. </p>
-- @param RegistrationLimit [RegistrationLimit] <p>Specify the maximum number of managed instances you want to register. The default value is 1 instance.</p>
-- Required parameter: IamRole
function M.CreateActivationRequest(DefaultInstanceName, IamRole, ExpirationDate, Description, RegistrationLimit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateActivationRequest")
	local t = { 
		["DefaultInstanceName"] = DefaultInstanceName,
		["IamRole"] = IamRole,
		["ExpirationDate"] = ExpirationDate,
		["Description"] = Description,
		["RegistrationLimit"] = RegistrationLimit,
	}
	M.AssertCreateActivationRequest(t)
	return t
end

local DescribeAssociationResult_keys = { "AssociationDescription" = true, nil }

function M.AssertDescribeAssociationResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAssociationResult to be of type 'table'")
	if struct["AssociationDescription"] then M.AssertAssociationDescription(struct["AssociationDescription"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAssociationResult_keys[k], "DescribeAssociationResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAssociationResult
--  
-- @param AssociationDescription [AssociationDescription] <p>Information about the association.</p>
function M.DescribeAssociationResult(AssociationDescription, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAssociationResult")
	local t = { 
		["AssociationDescription"] = AssociationDescription,
	}
	M.AssertDescribeAssociationResult(t)
	return t
end

local InventoryResultEntity_keys = { "Data" = true, "Id" = true, nil }

function M.AssertInventoryResultEntity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InventoryResultEntity to be of type 'table'")
	if struct["Data"] then M.AssertInventoryResultItemMap(struct["Data"]) end
	if struct["Id"] then M.AssertInventoryResultEntityId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(InventoryResultEntity_keys[k], "InventoryResultEntity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InventoryResultEntity
-- <p>Inventory query results.</p>
-- @param Data [InventoryResultItemMap] <p>The data section in the inventory result entity json.</p>
-- @param Id [InventoryResultEntityId] <p>ID of the inventory result entity. For example, for managed instance inventory the result will be the managed instance ID. For EC2 instance inventory, the result will be the instance ID. </p>
function M.InventoryResultEntity(Data, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InventoryResultEntity")
	local t = { 
		["Data"] = Data,
		["Id"] = Id,
	}
	M.AssertInventoryResultEntity(t)
	return t
end

local DescribeParametersResult_keys = { "NextToken" = true, "Parameters" = true, nil }

function M.AssertDescribeParametersResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeParametersResult to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Parameters"] then M.AssertParameterMetadataList(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeParametersResult_keys[k], "DescribeParametersResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeParametersResult
--  
-- @param NextToken [NextToken] <p>The token to use when requesting the next set of items. If there are no additional items to return, the string is empty.</p>
-- @param Parameters [ParameterMetadataList] <p>Parameters returned by the request.</p>
function M.DescribeParametersResult(NextToken, Parameters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeParametersResult")
	local t = { 
		["NextToken"] = NextToken,
		["Parameters"] = Parameters,
	}
	M.AssertDescribeParametersResult(t)
	return t
end

local UnsupportedPlatformType_keys = { "Message" = true, nil }

function M.AssertUnsupportedPlatformType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedPlatformType to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(UnsupportedPlatformType_keys[k], "UnsupportedPlatformType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedPlatformType
-- <p>The document does not support the platform type of the given instance ID(s). For example, you sent an document for a Windows instance to a Linux instance.</p>
-- @param Message [String] <p>The document does not support the platform type of the given instance ID(s). For example, you sent an document for a Windows instance to a Linux instance.</p>
function M.UnsupportedPlatformType(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedPlatformType")
	local t = { 
		["Message"] = Message,
	}
	M.AssertUnsupportedPlatformType(t)
	return t
end

local DescribeDocumentResult_keys = { "Document" = true, nil }

function M.AssertDescribeDocumentResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDocumentResult to be of type 'table'")
	if struct["Document"] then M.AssertDocumentDescription(struct["Document"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDocumentResult_keys[k], "DescribeDocumentResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDocumentResult
--  
-- @param Document [DocumentDescription] <p>Information about the SSM document.</p>
function M.DescribeDocumentResult(Document, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDocumentResult")
	local t = { 
		["Document"] = Document,
	}
	M.AssertDescribeDocumentResult(t)
	return t
end

local DoesNotExistException_keys = { "Message" = true, nil }

function M.AssertDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DoesNotExistException to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DoesNotExistException_keys[k], "DoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DoesNotExistException
-- <p>Error returned when the ID specified for a resource (e.g. a Maintenance Window) doesn't exist.</p>
-- @param Message [String] <p>Error returned when the ID specified for a resource (e.g. a Maintenance Window) doesn't exist.</p>
function M.DoesNotExistException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DoesNotExistException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDoesNotExistException(t)
	return t
end

local ParameterLimitExceeded_keys = { "message" = true, nil }

function M.AssertParameterLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterLimitExceeded to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ParameterLimitExceeded_keys[k], "ParameterLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterLimitExceeded
-- <p>You have exceeded the number of parameters for this AWS account. Delete one or more parameters and try again.</p>
-- @param message [String] <p>You have exceeded the number of parameters for this AWS account. Delete one or more parameters and try again.</p>
function M.ParameterLimitExceeded(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterLimitExceeded")
	local t = { 
		["message"] = message,
	}
	M.AssertParameterLimitExceeded(t)
	return t
end

local InstanceAssociationOutputUrl_keys = { "S3OutputUrl" = true, nil }

function M.AssertInstanceAssociationOutputUrl(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InstanceAssociationOutputUrl to be of type 'table'")
	if struct["S3OutputUrl"] then M.AssertS3OutputUrl(struct["S3OutputUrl"]) end
	for k,_ in pairs(struct) do
		assert(InstanceAssociationOutputUrl_keys[k], "InstanceAssociationOutputUrl contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InstanceAssociationOutputUrl
-- <p>The URL of Amazon S3 bucket where you want to store the results of this request.</p>
-- @param S3OutputUrl [S3OutputUrl] <p>The URL of Amazon S3 bucket where you want to store the results of this request.</p>
function M.InstanceAssociationOutputUrl(S3OutputUrl, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InstanceAssociationOutputUrl")
	local t = { 
		["S3OutputUrl"] = S3OutputUrl,
	}
	M.AssertInstanceAssociationOutputUrl(t)
	return t
end

local DeleteParametersRequest_keys = { "Names" = true, nil }

function M.AssertDeleteParametersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteParametersRequest to be of type 'table'")
	assert(struct["Names"], "Expected key Names to exist in table")
	if struct["Names"] then M.AssertParameterNameList(struct["Names"]) end
	for k,_ in pairs(struct) do
		assert(DeleteParametersRequest_keys[k], "DeleteParametersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteParametersRequest
--  
-- @param Names [ParameterNameList] <p>The names of the parameters to delete.</p>
-- Required parameter: Names
function M.DeleteParametersRequest(Names, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteParametersRequest")
	local t = { 
		["Names"] = Names,
	}
	M.AssertDeleteParametersRequest(t)
	return t
end

local CreatePatchBaselineRequest_keys = { "Description" = true, "RejectedPatches" = true, "GlobalFilters" = true, "ApprovalRules" = true, "ClientToken" = true, "ApprovedPatches" = true, "Name" = true, nil }

function M.AssertCreatePatchBaselineRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePatchBaselineRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Description"] then M.AssertBaselineDescription(struct["Description"]) end
	if struct["RejectedPatches"] then M.AssertPatchIdList(struct["RejectedPatches"]) end
	if struct["GlobalFilters"] then M.AssertPatchFilterGroup(struct["GlobalFilters"]) end
	if struct["ApprovalRules"] then M.AssertPatchRuleGroup(struct["ApprovalRules"]) end
	if struct["ClientToken"] then M.AssertClientToken(struct["ClientToken"]) end
	if struct["ApprovedPatches"] then M.AssertPatchIdList(struct["ApprovedPatches"]) end
	if struct["Name"] then M.AssertBaselineName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(CreatePatchBaselineRequest_keys[k], "CreatePatchBaselineRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePatchBaselineRequest
--  
-- @param Description [BaselineDescription] <p>A description of the patch baseline.</p>
-- @param RejectedPatches [PatchIdList] <p>A list of explicitly rejected patches for the baseline.</p>
-- @param GlobalFilters [PatchFilterGroup] <p>A set of global filters used to exclude patches from the baseline.</p>
-- @param ApprovalRules [PatchRuleGroup] <p>A set of rules used to include patches in the baseline.</p>
-- @param ClientToken [ClientToken] <p>User-provided idempotency token.</p>
-- @param ApprovedPatches [PatchIdList] <p>A list of explicitly approved patches for the baseline.</p>
-- @param Name [BaselineName] <p>The name of the patch baseline.</p>
-- Required parameter: Name
function M.CreatePatchBaselineRequest(Description, RejectedPatches, GlobalFilters, ApprovalRules, ClientToken, ApprovedPatches, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreatePatchBaselineRequest")
	local t = { 
		["Description"] = Description,
		["RejectedPatches"] = RejectedPatches,
		["GlobalFilters"] = GlobalFilters,
		["ApprovalRules"] = ApprovalRules,
		["ClientToken"] = ClientToken,
		["ApprovedPatches"] = ApprovedPatches,
		["Name"] = Name,
	}
	M.AssertCreatePatchBaselineRequest(t)
	return t
end

local GetDocumentRequest_keys = { "Name" = true, "DocumentVersion" = true, nil }

function M.AssertGetDocumentRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDocumentRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertDocumentARN(struct["Name"]) end
	if struct["DocumentVersion"] then M.AssertDocumentVersion(struct["DocumentVersion"]) end
	for k,_ in pairs(struct) do
		assert(GetDocumentRequest_keys[k], "GetDocumentRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDocumentRequest
--  
-- @param Name [DocumentARN] <p>The name of the SSM document.</p>
-- @param DocumentVersion [DocumentVersion] <p>The document version for which you want information.</p>
-- Required parameter: Name
function M.GetDocumentRequest(Name, DocumentVersion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetDocumentRequest")
	local t = { 
		["Name"] = Name,
		["DocumentVersion"] = DocumentVersion,
	}
	M.AssertGetDocumentRequest(t)
	return t
end

local IdempotentParameterMismatch_keys = { "Message" = true, nil }

function M.AssertIdempotentParameterMismatch(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected IdempotentParameterMismatch to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(IdempotentParameterMismatch_keys[k], "IdempotentParameterMismatch contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type IdempotentParameterMismatch
-- <p>Error returned when an idempotent operation is retried and the parameters don't match the original call to the API with the same idempotency token. </p>
-- @param Message [String] <p>Error returned when an idempotent operation is retried and the parameters don't match the original call to the API with the same idempotency token. </p>
function M.IdempotentParameterMismatch(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating IdempotentParameterMismatch")
	local t = { 
		["Message"] = Message,
	}
	M.AssertIdempotentParameterMismatch(t)
	return t
end

local DescribePatchGroupStateRequest_keys = { "PatchGroup" = true, nil }

function M.AssertDescribePatchGroupStateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribePatchGroupStateRequest to be of type 'table'")
	assert(struct["PatchGroup"], "Expected key PatchGroup to exist in table")
	if struct["PatchGroup"] then M.AssertPatchGroup(struct["PatchGroup"]) end
	for k,_ in pairs(struct) do
		assert(DescribePatchGroupStateRequest_keys[k], "DescribePatchGroupStateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribePatchGroupStateRequest
--  
-- @param PatchGroup [PatchGroup] <p>The name of the patch group whose patch snapshot should be retrieved.</p>
-- Required parameter: PatchGroup
function M.DescribePatchGroupStateRequest(PatchGroup, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribePatchGroupStateRequest")
	local t = { 
		["PatchGroup"] = PatchGroup,
	}
	M.AssertDescribePatchGroupStateRequest(t)
	return t
end

local PatchBaselineIdentity_keys = { "BaselineName" = true, "DefaultBaseline" = true, "BaselineDescription" = true, "BaselineId" = true, nil }

function M.AssertPatchBaselineIdentity(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PatchBaselineIdentity to be of type 'table'")
	if struct["BaselineName"] then M.AssertBaselineName(struct["BaselineName"]) end
	if struct["DefaultBaseline"] then M.AssertDefaultBaseline(struct["DefaultBaseline"]) end
	if struct["BaselineDescription"] then M.AssertBaselineDescription(struct["BaselineDescription"]) end
	if struct["BaselineId"] then M.AssertBaselineId(struct["BaselineId"]) end
	for k,_ in pairs(struct) do
		assert(PatchBaselineIdentity_keys[k], "PatchBaselineIdentity contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PatchBaselineIdentity
-- <p>Defines the basic information about a patch baseline.</p>
-- @param BaselineName [BaselineName] <p>The name of the patch baseline.</p>
-- @param DefaultBaseline [DefaultBaseline] <p>Whether this is the default baseline.</p>
-- @param BaselineDescription [BaselineDescription] <p>The description of the patch baseline.</p>
-- @param BaselineId [BaselineId] <p>The ID of the patch baseline.</p>
function M.PatchBaselineIdentity(BaselineName, DefaultBaseline, BaselineDescription, BaselineId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PatchBaselineIdentity")
	local t = { 
		["BaselineName"] = BaselineName,
		["DefaultBaseline"] = DefaultBaseline,
		["BaselineDescription"] = BaselineDescription,
		["BaselineId"] = BaselineId,
	}
	M.AssertPatchBaselineIdentity(t)
	return t
end

local DescribeActivationsRequest_keys = { "NextToken" = true, "MaxResults" = true, "Filters" = true, nil }

function M.AssertDescribeActivationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeActivationsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	if struct["Filters"] then M.AssertDescribeActivationsFilterList(struct["Filters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeActivationsRequest_keys[k], "DescribeActivationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeActivationsRequest
--  
-- @param NextToken [NextToken] <p>A token to start the list. Use this token to get the next set of results. </p>
-- @param MaxResults [MaxResults] <p>The maximum number of items to return for this call. The call also returns a token that you can specify in a subsequent call to get the next set of results.</p>
-- @param Filters [DescribeActivationsFilterList] <p>A filter to view information about your activations.</p>
function M.DescribeActivationsRequest(NextToken, MaxResults, Filters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeActivationsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["Filters"] = Filters,
	}
	M.AssertDescribeActivationsRequest(t)
	return t
end

local RegisterTargetWithMaintenanceWindowResult_keys = { "WindowTargetId" = true, nil }

function M.AssertRegisterTargetWithMaintenanceWindowResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterTargetWithMaintenanceWindowResult to be of type 'table'")
	if struct["WindowTargetId"] then M.AssertMaintenanceWindowTargetId(struct["WindowTargetId"]) end
	for k,_ in pairs(struct) do
		assert(RegisterTargetWithMaintenanceWindowResult_keys[k], "RegisterTargetWithMaintenanceWindowResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterTargetWithMaintenanceWindowResult
--  
-- @param WindowTargetId [MaintenanceWindowTargetId] <p>The ID of the target definition in this Maintenance Window.</p>
function M.RegisterTargetWithMaintenanceWindowResult(WindowTargetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterTargetWithMaintenanceWindowResult")
	local t = { 
		["WindowTargetId"] = WindowTargetId,
	}
	M.AssertRegisterTargetWithMaintenanceWindowResult(t)
	return t
end

local DocumentParameter_keys = { "DefaultValue" = true, "Type" = true, "Name" = true, "Description" = true, nil }

function M.AssertDocumentParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DocumentParameter to be of type 'table'")
	if struct["DefaultValue"] then M.AssertDocumentParameterDefaultValue(struct["DefaultValue"]) end
	if struct["Type"] then M.AssertDocumentParameterType(struct["Type"]) end
	if struct["Name"] then M.AssertDocumentParameterName(struct["Name"]) end
	if struct["Description"] then M.AssertDocumentParameterDescrption(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(DocumentParameter_keys[k], "DocumentParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DocumentParameter
-- <p>Parameters specified in a System Manager document that execute on the server when the command is run. </p>
-- @param DefaultValue [DocumentParameterDefaultValue] <p>If specified, the default values for the parameters. Parameters without a default value are required. Parameters with a default value are optional.</p>
-- @param Type [DocumentParameterType] <p>The type of parameter. The type can be either String or StringList.</p>
-- @param Name [DocumentParameterName] <p>The name of the parameter.</p>
-- @param Description [DocumentParameterDescrption] <p>A description of what the parameter does, how to use it, the default value, and whether or not the parameter is optional.</p>
function M.DocumentParameter(DefaultValue, Type, Name, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DocumentParameter")
	local t = { 
		["DefaultValue"] = DefaultValue,
		["Type"] = Type,
		["Name"] = Name,
		["Description"] = Description,
	}
	M.AssertDocumentParameter(t)
	return t
end

local InvalidDocumentSchemaVersion_keys = { "Message" = true, nil }

function M.AssertInvalidDocumentSchemaVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDocumentSchemaVersion to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidDocumentSchemaVersion_keys[k], "InvalidDocumentSchemaVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDocumentSchemaVersion
-- <p>The version of the document schema is not supported.</p>
-- @param Message [String] <p>The version of the document schema is not supported.</p>
function M.InvalidDocumentSchemaVersion(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDocumentSchemaVersion")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidDocumentSchemaVersion(t)
	return t
end

local InvalidDocumentContent_keys = { "Message" = true, nil }

function M.AssertInvalidDocumentContent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDocumentContent to be of type 'table'")
	if struct["Message"] then M.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidDocumentContent_keys[k], "InvalidDocumentContent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDocumentContent
-- <p>The content for the document is not valid.</p>
-- @param Message [String] <p>A description of the validation error.</p>
function M.InvalidDocumentContent(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDocumentContent")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInvalidDocumentContent(t)
	return t
end

local InvalidKeyId_keys = { "message" = true, nil }

function M.AssertInvalidKeyId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidKeyId to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidKeyId_keys[k], "InvalidKeyId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidKeyId
-- <p>The query key ID is not valid.</p>
-- @param message [String] <p>The query key ID is not valid.</p>
function M.InvalidKeyId(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidKeyId")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidKeyId(t)
	return t
end

local PutParameterResult_keys = { nil }

function M.AssertPutParameterResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutParameterResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(PutParameterResult_keys[k], "PutParameterResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutParameterResult
--  
function M.PutParameterResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutParameterResult")
	local t = { 
	}
	M.AssertPutParameterResult(t)
	return t
end

local UpdateMaintenanceWindowRequest_keys = { "Cutoff" = true, "Name" = true, "Schedule" = true, "Enabled" = true, "AllowUnassociatedTargets" = true, "WindowId" = true, "Duration" = true, nil }

function M.AssertUpdateMaintenanceWindowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateMaintenanceWindowRequest to be of type 'table'")
	assert(struct["WindowId"], "Expected key WindowId to exist in table")
	if struct["Cutoff"] then M.AssertMaintenanceWindowCutoff(struct["Cutoff"]) end
	if struct["Name"] then M.AssertMaintenanceWindowName(struct["Name"]) end
	if struct["Schedule"] then M.AssertMaintenanceWindowSchedule(struct["Schedule"]) end
	if struct["Enabled"] then M.AssertMaintenanceWindowEnabled(struct["Enabled"]) end
	if struct["AllowUnassociatedTargets"] then M.AssertMaintenanceWindowAllowUnassociatedTargets(struct["AllowUnassociatedTargets"]) end
	if struct["WindowId"] then M.AssertMaintenanceWindowId(struct["WindowId"]) end
	if struct["Duration"] then M.AssertMaintenanceWindowDurationHours(struct["Duration"]) end
	for k,_ in pairs(struct) do
		assert(UpdateMaintenanceWindowRequest_keys[k], "UpdateMaintenanceWindowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateMaintenanceWindowRequest
--  
-- @param Cutoff [MaintenanceWindowCutoff] <p>The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution.</p>
-- @param Name [MaintenanceWindowName] <p>The name of the Maintenance Window.</p>
-- @param Schedule [MaintenanceWindowSchedule] <p>The schedule of the Maintenance Window in the form of a cron or rate expression.</p>
-- @param Enabled [MaintenanceWindowEnabled] <p>Whether the Maintenance Window is enabled.</p>
-- @param AllowUnassociatedTargets [MaintenanceWindowAllowUnassociatedTargets] <p>Whether targets must be registered with the Maintenance Window before tasks can be defined for those targets.</p>
-- @param WindowId [MaintenanceWindowId] <p>The ID of the Maintenance Window to update.</p>
-- @param Duration [MaintenanceWindowDurationHours] <p>The duration of the Maintenance Window in hours.</p>
-- Required parameter: WindowId
function M.UpdateMaintenanceWindowRequest(Cutoff, Name, Schedule, Enabled, AllowUnassociatedTargets, WindowId, Duration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateMaintenanceWindowRequest")
	local t = { 
		["Cutoff"] = Cutoff,
		["Name"] = Name,
		["Schedule"] = Schedule,
		["Enabled"] = Enabled,
		["AllowUnassociatedTargets"] = AllowUnassociatedTargets,
		["WindowId"] = WindowId,
		["Duration"] = Duration,
	}
	M.AssertUpdateMaintenanceWindowRequest(t)
	return t
end

function M.AssertAutomationExecutionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected AutomationExecutionStatus to be of type 'string'")
end

--  
function M.AutomationExecutionStatus(str)
	M.AssertAutomationExecutionStatus(str)
	return str
end

function M.AssertS3Region(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Region to be of type 'string'")
	assert(#str <= 20, "Expected string to be max 20 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.S3Region(str)
	M.AssertS3Region(str)
	return str
end

function M.AssertAssociationStatusName(str)
	assert(str)
	assert(type(str) == "string", "Expected AssociationStatusName to be of type 'string'")
end

--  
function M.AssociationStatusName(str)
	M.AssertAssociationStatusName(str)
	return str
end

function M.AssertInventoryResultItemKey(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryResultItemKey to be of type 'string'")
end

--  
function M.InventoryResultItemKey(str)
	M.AssertInventoryResultItemKey(str)
	return str
end

function M.AssertAssociationFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AssociationFilterValue to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AssociationFilterValue(str)
	M.AssertAssociationFilterValue(str)
	return str
end

function M.AssertInstanceAssociationExecutionSummary(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceAssociationExecutionSummary to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.InstanceAssociationExecutionSummary(str)
	M.AssertInstanceAssociationExecutionSummary(str)
	return str
end

function M.AssertDocumentStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentStatus to be of type 'string'")
end

--  
function M.DocumentStatus(str)
	M.AssertDocumentStatus(str)
	return str
end

function M.AssertStatusAdditionalInfo(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusAdditionalInfo to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.StatusAdditionalInfo(str)
	M.AssertStatusAdditionalInfo(str)
	return str
end

function M.AssertPatchProductFamily(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchProductFamily to be of type 'string'")
end

--  
function M.PatchProductFamily(str)
	M.AssertPatchProductFamily(str)
	return str
end

function M.AssertPatchDeploymentStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchDeploymentStatus to be of type 'string'")
end

--  
function M.PatchDeploymentStatus(str)
	M.AssertPatchDeploymentStatus(str)
	return str
end

function M.AssertInventoryItemTypeName(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryItemTypeName to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^(AWS|Custom):.*$"), "Expected string to match pattern '^(AWS|Custom):.*$'")
end

--  
function M.InventoryItemTypeName(str)
	M.AssertInventoryItemTypeName(str)
	return str
end

function M.AssertDocumentVersionNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentVersionNumber to be of type 'string'")
	assert(str:match("(^[1-9][0-9]*$)"), "Expected string to match pattern '(^[1-9][0-9]*$)'")
end

--  
function M.DocumentVersionNumber(str)
	M.AssertDocumentVersionNumber(str)
	return str
end

function M.AssertStatusDetails(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusDetails to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
end

--  
function M.StatusDetails(str)
	M.AssertStatusDetails(str)
	return str
end

function M.AssertPatchMsrcSeverity(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchMsrcSeverity to be of type 'string'")
end

--  
function M.PatchMsrcSeverity(str)
	M.AssertPatchMsrcSeverity(str)
	return str
end

function M.AssertInventoryFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryFilterValue to be of type 'string'")
end

--  
function M.InventoryFilterValue(str)
	M.AssertInventoryFilterValue(str)
	return str
end

function M.AssertInventoryResultEntityId(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryResultEntityId to be of type 'string'")
end

--  
function M.InventoryResultEntityId(str)
	M.AssertInventoryResultEntityId(str)
	return str
end

function M.AssertDocumentParameterType(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentParameterType to be of type 'string'")
end

--  
function M.DocumentParameterType(str)
	M.AssertDocumentParameterType(str)
	return str
end

function M.AssertBatchErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected BatchErrorMessage to be of type 'string'")
end

--  
function M.BatchErrorMessage(str)
	M.AssertBatchErrorMessage(str)
	return str
end

function M.AssertDocumentParameterDefaultValue(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentParameterDefaultValue to be of type 'string'")
end

--  
function M.DocumentParameterDefaultValue(str)
	M.AssertDocumentParameterDefaultValue(str)
	return str
end

function M.AssertOwnerInformation(str)
	assert(str)
	assert(type(str) == "string", "Expected OwnerInformation to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.OwnerInformation(str)
	M.AssertOwnerInformation(str)
	return str
end

function M.AssertParametersFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ParametersFilterValue to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ParametersFilterValue(str)
	M.AssertParametersFilterValue(str)
	return str
end

function M.AssertDocumentHash(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentHash to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.DocumentHash(str)
	M.AssertDocumentHash(str)
	return str
end

function M.AssertInventoryFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryFilterKey to be of type 'string'")
	assert(#str <= 200, "Expected string to be max 200 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.InventoryFilterKey(str)
	M.AssertInventoryFilterKey(str)
	return str
end

function M.AssertClientToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientToken to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ClientToken(str)
	M.AssertClientToken(str)
	return str
end

function M.AssertMaintenanceWindowExecutionTaskInvocationParameters(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowExecutionTaskInvocationParameters to be of type 'string'")
end

--  
function M.MaintenanceWindowExecutionTaskInvocationParameters(str)
	M.AssertMaintenanceWindowExecutionTaskInvocationParameters(str)
	return str
end

function M.AssertPatchId(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchId to be of type 'string'")
	assert(str:match("(^KB[0-9]{1,7}$)|(^MS[0-9]{2}%-[0-9]{3}$)"), "Expected string to match pattern '(^KB[0-9]{1,7}$)|(^MS[0-9]{2}%-[0-9]{3}$)'")
end

--  
function M.PatchId(str)
	M.AssertPatchId(str)
	return str
end

function M.AssertPatchClassification(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchClassification to be of type 'string'")
end

--  
function M.PatchClassification(str)
	M.AssertPatchClassification(str)
	return str
end

function M.AssertInstanceInformationFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceInformationFilterKey to be of type 'string'")
end

--  
function M.InstanceInformationFilterKey(str)
	M.AssertInstanceInformationFilterKey(str)
	return str
end

function M.AssertDocumentName(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentName to be of type 'string'")
	assert(str:match("^[a-zA-Z0-9_%-.]{3,128}$"), "Expected string to match pattern '^[a-zA-Z0-9_%-.]{3,128}$'")
end

--  
function M.DocumentName(str)
	M.AssertDocumentName(str)
	return str
end

function M.AssertMaintenanceWindowTaskArn(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowTaskArn to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MaintenanceWindowTaskArn(str)
	M.AssertMaintenanceWindowTaskArn(str)
	return str
end

function M.AssertParameterKeyId(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterKeyId to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^([a-zA-Z0-9:/_-]+)$"), "Expected string to match pattern '^([a-zA-Z0-9:/_-]+)$'")
end

--  
function M.ParameterKeyId(str)
	M.AssertParameterKeyId(str)
	return str
end

function M.AssertPatchOrchestratorFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchOrchestratorFilterKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PatchOrchestratorFilterKey(str)
	M.AssertPatchOrchestratorFilterKey(str)
	return str
end

function M.AssertAssociationFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected AssociationFilterKey to be of type 'string'")
end

--  
function M.AssociationFilterKey(str)
	M.AssertAssociationFilterKey(str)
	return str
end

function M.AssertResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceId to be of type 'string'")
end

--  
function M.ResourceId(str)
	M.AssertResourceId(str)
	return str
end

function M.AssertDocumentARN(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentARN to be of type 'string'")
	assert(str:match("^[a-zA-Z0-9_%-.:/]{3,128}$"), "Expected string to match pattern '^[a-zA-Z0-9_%-.:/]{3,128}$'")
end

--  
function M.DocumentARN(str)
	M.AssertDocumentARN(str)
	return str
end

function M.AssertMaintenanceWindowExecutionTaskExecutionId(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowExecutionTaskExecutionId to be of type 'string'")
end

--  
function M.MaintenanceWindowExecutionTaskExecutionId(str)
	M.AssertMaintenanceWindowExecutionTaskExecutionId(str)
	return str
end

function M.AssertMaintenanceWindowTargetId(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowTargetId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 36, "Expected string to be min 36 characters")
	assert(str:match("^[0-9a-fA-F]{8}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{12}$"), "Expected string to match pattern '^[0-9a-fA-F]{8}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{12}$'")
end

--  
function M.MaintenanceWindowTargetId(str)
	M.AssertMaintenanceWindowTargetId(str)
	return str
end

function M.AssertInventoryItemTypeNameFilter(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryItemTypeNameFilter to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
end

--  
function M.InventoryItemTypeNameFilter(str)
	M.AssertInventoryItemTypeNameFilter(str)
	return str
end

function M.AssertDocumentSchemaVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentSchemaVersion to be of type 'string'")
	assert(str:match("([0-9]+)%.([0-9]+)"), "Expected string to match pattern '([0-9]+)%.([0-9]+)'")
end

--  
function M.DocumentSchemaVersion(str)
	M.AssertDocumentSchemaVersion(str)
	return str
end

function M.AssertInstanceInformationStringFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceInformationStringFilterKey to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.InstanceInformationStringFilterKey(str)
	M.AssertInstanceInformationStringFilterKey(str)
	return str
end

function M.AssertUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected Url to be of type 'string'")
end

--  
function M.Url(str)
	M.AssertUrl(str)
	return str
end

function M.AssertMaintenanceWindowExecutionTaskInvocationId(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowExecutionTaskInvocationId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 36, "Expected string to be min 36 characters")
	assert(str:match("^[0-9a-fA-F]{8}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{12}$"), "Expected string to match pattern '^[0-9a-fA-F]{8}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{12}$'")
end

--  
function M.MaintenanceWindowExecutionTaskInvocationId(str)
	M.AssertMaintenanceWindowExecutionTaskInvocationId(str)
	return str
end

function M.AssertDocumentVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentVersion to be of type 'string'")
	assert(str:match("([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)"), "Expected string to match pattern '([$]LATEST|[$]DEFAULT|^[1-9][0-9]*$)'")
end

--  
function M.DocumentVersion(str)
	M.AssertDocumentVersion(str)
	return str
end

function M.AssertScheduleExpression(str)
	assert(str)
	assert(type(str) == "string", "Expected ScheduleExpression to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ScheduleExpression(str)
	M.AssertScheduleExpression(str)
	return str
end

function M.AssertInventoryItemAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryItemAttributeName to be of type 'string'")
end

--  
function M.InventoryItemAttributeName(str)
	M.AssertInventoryItemAttributeName(str)
	return str
end

function M.AssertNotificationArn(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationArn to be of type 'string'")
end

--  
function M.NotificationArn(str)
	M.AssertNotificationArn(str)
	return str
end

function M.AssertParameterStringQueryOption(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterStringQueryOption to be of type 'string'")
	assert(#str <= 10, "Expected string to be max 10 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ParameterStringQueryOption(str)
	M.AssertParameterStringQueryOption(str)
	return str
end

function M.AssertDefaultInstanceName(str)
	assert(str)
	assert(type(str) == "string", "Expected DefaultInstanceName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$'")
end

--  
function M.DefaultInstanceName(str)
	M.AssertDefaultInstanceName(str)
	return str
end

function M.AssertMaintenanceWindowTaskParameterName(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowTaskParameterName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MaintenanceWindowTaskParameterName(str)
	M.AssertMaintenanceWindowTaskParameterName(str)
	return str
end

function M.AssertAutomationParameterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AutomationParameterValue to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AutomationParameterValue(str)
	M.AssertAutomationParameterValue(str)
	return str
end

function M.AssertDescribeActivationsFilterKeys(str)
	assert(str)
	assert(type(str) == "string", "Expected DescribeActivationsFilterKeys to be of type 'string'")
end

--  
function M.DescribeActivationsFilterKeys(str)
	M.AssertDescribeActivationsFilterKeys(str)
	return str
end

function M.AssertActivationDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ActivationDescription to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.ActivationDescription(str)
	M.AssertActivationDescription(str)
	return str
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^(?!^(?i)aws:)(?=^[%p{L}%p{Z}%p{N}_.:/=+%-@]*$).*$"), "Expected string to match pattern '^(?!^(?i)aws:)(?=^[%p{L}%p{Z}%p{N}_.:/=+%-@]*$).*$'")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertInventoryQueryOperatorType(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryQueryOperatorType to be of type 'string'")
end

--  
function M.InventoryQueryOperatorType(str)
	M.AssertInventoryQueryOperatorType(str)
	return str
end

function M.AssertCommandId(str)
	assert(str)
	assert(type(str) == "string", "Expected CommandId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 36, "Expected string to be min 36 characters")
end

--  
function M.CommandId(str)
	M.AssertCommandId(str)
	return str
end

function M.AssertAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeValue to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.AttributeValue(str)
	M.AssertAttributeValue(str)
	return str
end

function M.AssertPatchProduct(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchProduct to be of type 'string'")
end

--  
function M.PatchProduct(str)
	M.AssertPatchProduct(str)
	return str
end

function M.AssertPatchKbNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchKbNumber to be of type 'string'")
end

--  
function M.PatchKbNumber(str)
	M.AssertPatchKbNumber(str)
	return str
end

function M.AssertMaintenanceWindowTaskTargetId(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowTaskTargetId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
end

--  
function M.MaintenanceWindowTaskTargetId(str)
	M.AssertMaintenanceWindowTaskTargetId(str)
	return str
end

function M.AssertBaselineDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected BaselineDescription to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.BaselineDescription(str)
	M.AssertBaselineDescription(str)
	return str
end

function M.AssertPatchOperationType(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchOperationType to be of type 'string'")
end

--  
function M.PatchOperationType(str)
	M.AssertPatchOperationType(str)
	return str
end

function M.AssertCommandInvocationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CommandInvocationStatus to be of type 'string'")
end

--  
function M.CommandInvocationStatus(str)
	M.AssertCommandInvocationStatus(str)
	return str
end

function M.AssertMaintenanceWindowExecutionId(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowExecutionId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 36, "Expected string to be min 36 characters")
	assert(str:match("^[0-9a-fA-F]{8}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{12}$"), "Expected string to match pattern '^[0-9a-fA-F]{8}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{12}$'")
end

--  
function M.MaintenanceWindowExecutionId(str)
	M.AssertMaintenanceWindowExecutionId(str)
	return str
end

function M.AssertMaintenanceWindowExecutionStatusDetails(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowExecutionStatusDetails to be of type 'string'")
	assert(#str <= 250, "Expected string to be max 250 characters")
end

--  
function M.MaintenanceWindowExecutionStatusDetails(str)
	M.AssertMaintenanceWindowExecutionStatusDetails(str)
	return str
end

function M.AssertPatchContentUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchContentUrl to be of type 'string'")
end

--  
function M.PatchContentUrl(str)
	M.AssertPatchContentUrl(str)
	return str
end

function M.AssertAssociationId(str)
	assert(str)
	assert(type(str) == "string", "Expected AssociationId to be of type 'string'")
	assert(str:match("[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}"), "Expected string to match pattern '[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}'")
end

--  
function M.AssociationId(str)
	M.AssertAssociationId(str)
	return str
end

function M.AssertSnapshotId(str)
	assert(str)
	assert(type(str) == "string", "Expected SnapshotId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 36, "Expected string to be min 36 characters")
	assert(str:match("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"), "Expected string to match pattern '^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$'")
end

--  
function M.SnapshotId(str)
	M.AssertSnapshotId(str)
	return str
end

function M.AssertAllowedPattern(str)
	assert(str)
	assert(type(str) == "string", "Expected AllowedPattern to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.AllowedPattern(str)
	M.AssertAllowedPattern(str)
	return str
end

function M.AssertMaintenanceWindowExecutionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowExecutionStatus to be of type 'string'")
end

--  
function M.MaintenanceWindowExecutionStatus(str)
	M.AssertMaintenanceWindowExecutionStatus(str)
	return str
end

function M.AssertDocumentFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentFilterKey to be of type 'string'")
end

--  
function M.DocumentFilterKey(str)
	M.AssertDocumentFilterKey(str)
	return str
end

function M.AssertParameterName(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterName to be of type 'string'")
end

--  
function M.ParameterName(str)
	M.AssertParameterName(str)
	return str
end

function M.AssertParameterStringFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterStringFilterValue to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ParameterStringFilterValue(str)
	M.AssertParameterStringFilterValue(str)
	return str
end

function M.AssertParameterType(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterType to be of type 'string'")
end

--  
function M.ParameterType(str)
	M.AssertParameterType(str)
	return str
end

function M.AssertDocumentHashType(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentHashType to be of type 'string'")
end

--  
function M.DocumentHashType(str)
	M.AssertDocumentHashType(str)
	return str
end

function M.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
	assert(str:match("^[0-9]{1,6}(%.[0-9]{1,6}){2,3}$"), "Expected string to match pattern '^[0-9]{1,6}(%.[0-9]{1,6}){2,3}$'")
end

--  
function M.Version(str)
	M.AssertVersion(str)
	return str
end

function M.AssertComputerName(str)
	assert(str)
	assert(type(str) == "string", "Expected ComputerName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ComputerName(str)
	M.AssertComputerName(str)
	return str
end

function M.AssertStandardOutputContent(str)
	assert(str)
	assert(type(str) == "string", "Expected StandardOutputContent to be of type 'string'")
	assert(#str <= 24000, "Expected string to be max 24000 characters")
end

--  
function M.StandardOutputContent(str)
	M.AssertStandardOutputContent(str)
	return str
end

function M.AssertAutomationParameterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected AutomationParameterKey to be of type 'string'")
	assert(#str <= 30, "Expected string to be max 30 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AutomationParameterKey(str)
	M.AssertAutomationParameterKey(str)
	return str
end

function M.AssertPatchFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchFilterValue to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PatchFilterValue(str)
	M.AssertPatchFilterValue(str)
	return str
end

function M.AssertFault(str)
	assert(str)
	assert(type(str) == "string", "Expected Fault to be of type 'string'")
end

--  
function M.Fault(str)
	M.AssertFault(str)
	return str
end

function M.AssertInventoryItemContentHash(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryItemContentHash to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.InventoryItemContentHash(str)
	M.AssertInventoryItemContentHash(str)
	return str
end

function M.AssertParameterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterValue to be of type 'string'")
end

--  
function M.ParameterValue(str)
	M.AssertParameterValue(str)
	return str
end

function M.AssertMaintenanceWindowTaskType(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowTaskType to be of type 'string'")
end

--  
function M.MaintenanceWindowTaskType(str)
	M.AssertMaintenanceWindowTaskType(str)
	return str
end

function M.AssertSnapshotDownloadUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected SnapshotDownloadUrl to be of type 'string'")
end

--  
function M.SnapshotDownloadUrl(str)
	M.AssertSnapshotDownloadUrl(str)
	return str
end

function M.AssertParameterStringFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterStringFilterKey to be of type 'string'")
	assert(#str <= 132, "Expected string to be max 132 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("tag:.+|Name|Type|KeyId|Path"), "Expected string to match pattern 'tag:.+|Name|Type|KeyId|Path'")
end

--  
function M.ParameterStringFilterKey(str)
	M.AssertParameterStringFilterKey(str)
	return str
end

function M.AssertCommandStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CommandStatus to be of type 'string'")
end

--  
function M.CommandStatus(str)
	M.AssertCommandStatus(str)
	return str
end

function M.AssertResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceType to be of type 'string'")
end

--  
function M.ResourceType(str)
	M.AssertResourceType(str)
	return str
end

function M.AssertTargetKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[%p{L}%p{Z}%p{N}_.:/=%-@]*$"), "Expected string to match pattern '^[%p{L}%p{Z}%p{N}_.:/=%-@]*$'")
end

--  
function M.TargetKey(str)
	M.AssertTargetKey(str)
	return str
end

function M.AssertManagedInstanceId(str)
	assert(str)
	assert(type(str) == "string", "Expected ManagedInstanceId to be of type 'string'")
	assert(str:match("^mi-[0-9a-f]{17}$"), "Expected string to match pattern '^mi-[0-9a-f]{17}$'")
end

--  
function M.ManagedInstanceId(str)
	M.AssertManagedInstanceId(str)
	return str
end

function M.AssertDocumentType(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentType to be of type 'string'")
end

--  
function M.DocumentType(str)
	M.AssertDocumentType(str)
	return str
end

function M.AssertAutomationExecutionFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AutomationExecutionFilterValue to be of type 'string'")
	assert(#str <= 150, "Expected string to be max 150 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AutomationExecutionFilterValue(str)
	M.AssertAutomationExecutionFilterValue(str)
	return str
end

function M.AssertCommandFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected CommandFilterValue to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CommandFilterValue(str)
	M.AssertCommandFilterValue(str)
	return str
end

function M.AssertPlatformType(str)
	assert(str)
	assert(type(str) == "string", "Expected PlatformType to be of type 'string'")
end

--  
function M.PlatformType(str)
	M.AssertPlatformType(str)
	return str
end

function M.AssertDocumentOwner(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentOwner to be of type 'string'")
end

--  
function M.DocumentOwner(str)
	M.AssertDocumentOwner(str)
	return str
end

function M.AssertPSParameterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected PSParameterValue to be of type 'string'")
	assert(#str <= 4096, "Expected string to be max 4096 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PSParameterValue(str)
	M.AssertPSParameterValue(str)
	return str
end

function M.AssertNotificationType(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationType to be of type 'string'")
end

--  
function M.NotificationType(str)
	M.AssertNotificationType(str)
	return str
end

function M.AssertDocumentContent(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentContent to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DocumentContent(str)
	M.AssertDocumentContent(str)
	return str
end

function M.AssertMaintenanceWindowId(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowId to be of type 'string'")
	assert(#str <= 20, "Expected string to be max 20 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
	assert(str:match("^mw-[0-9a-f]{17}$"), "Expected string to match pattern '^mw-[0-9a-f]{17}$'")
end

--  
function M.MaintenanceWindowId(str)
	M.AssertMaintenanceWindowId(str)
	return str
end

function M.AssertMaintenanceWindowTaskId(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowTaskId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 36, "Expected string to be min 36 characters")
	assert(str:match("^[0-9a-fA-F]{8}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{12}$"), "Expected string to match pattern '^[0-9a-fA-F]{8}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{12}$'")
end

--  
function M.MaintenanceWindowTaskId(str)
	M.AssertMaintenanceWindowTaskId(str)
	return str
end

function M.AssertActivationCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ActivationCode to be of type 'string'")
	assert(#str <= 250, "Expected string to be max 250 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.ActivationCode(str)
	M.AssertActivationCode(str)
	return str
end

function M.AssertCommandPluginName(str)
	assert(str)
	assert(type(str) == "string", "Expected CommandPluginName to be of type 'string'")
	assert(#str >= 4, "Expected string to be min 4 characters")
end

--  
function M.CommandPluginName(str)
	M.AssertCommandPluginName(str)
	return str
end

function M.AssertAutomationExecutionFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected AutomationExecutionFilterKey to be of type 'string'")
end

--  
function M.AutomationExecutionFilterKey(str)
	M.AssertAutomationExecutionFilterKey(str)
	return str
end

function M.AssertMaxErrors(str)
	assert(str)
	assert(type(str) == "string", "Expected MaxErrors to be of type 'string'")
	assert(#str <= 7, "Expected string to be max 7 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^([1-9][0-9]*|[0]|[1-9][0-9]%|[0-9]%|100%)$"), "Expected string to match pattern '^([1-9][0-9]*|[0]|[1-9][0-9]%|[0-9]%|100%)$'")
end

--  
function M.MaxErrors(str)
	M.AssertMaxErrors(str)
	return str
end

function M.AssertNotificationEvent(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationEvent to be of type 'string'")
end

--  
function M.NotificationEvent(str)
	M.AssertNotificationEvent(str)
	return str
end

function M.AssertPatchComplianceDataState(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchComplianceDataState to be of type 'string'")
end

--  
function M.PatchComplianceDataState(str)
	M.AssertPatchComplianceDataState(str)
	return str
end

function M.AssertPatchOrchestratorFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchOrchestratorFilterValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PatchOrchestratorFilterValue(str)
	M.AssertPatchOrchestratorFilterValue(str)
	return str
end

function M.AssertS3KeyPrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected S3KeyPrefix to be of type 'string'")
	assert(#str <= 500, "Expected string to be max 500 characters")
end

--  
function M.S3KeyPrefix(str)
	M.AssertS3KeyPrefix(str)
	return str
end

function M.AssertMaintenanceWindowTaskParameterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowTaskParameterValue to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MaintenanceWindowTaskParameterValue(str)
	M.AssertMaintenanceWindowTaskParameterValue(str)
	return str
end

function M.AssertInstanceTagName(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceTagName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.InstanceTagName(str)
	M.AssertInstanceTagName(str)
	return str
end

function M.AssertBaselineId(str)
	assert(str)
	assert(type(str) == "string", "Expected BaselineId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
	assert(str:match("^[a-zA-Z0-9_%-:/]{20,128}$"), "Expected string to match pattern '^[a-zA-Z0-9_%-:/]{20,128}$'")
end

--  
function M.BaselineId(str)
	M.AssertBaselineId(str)
	return str
end

function M.AssertAttributeName(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AttributeName(str)
	M.AssertAttributeName(str)
	return str
end

function M.AssertParametersFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ParametersFilterKey to be of type 'string'")
end

--  
function M.ParametersFilterKey(str)
	M.AssertParametersFilterKey(str)
	return str
end

function M.AssertPingStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected PingStatus to be of type 'string'")
end

--  
function M.PingStatus(str)
	M.AssertPingStatus(str)
	return str
end

function M.AssertDocumentSha1(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentSha1 to be of type 'string'")
end

--  
function M.DocumentSha1(str)
	M.AssertDocumentSha1(str)
	return str
end

function M.AssertInvocationTraceOutput(str)
	assert(str)
	assert(type(str) == "string", "Expected InvocationTraceOutput to be of type 'string'")
	assert(#str <= 2500, "Expected string to be max 2500 characters")
end

--  
function M.InvocationTraceOutput(str)
	M.AssertInvocationTraceOutput(str)
	return str
end

function M.AssertServiceRole(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceRole to be of type 'string'")
end

--  
function M.ServiceRole(str)
	M.AssertServiceRole(str)
	return str
end

function M.AssertActivationId(str)
	assert(str)
	assert(type(str) == "string", "Expected ActivationId to be of type 'string'")
	assert(str:match("^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"), "Expected string to match pattern '^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$'")
end

--  
function M.ActivationId(str)
	M.AssertActivationId(str)
	return str
end

function M.AssertCommandFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected CommandFilterKey to be of type 'string'")
end

--  
function M.CommandFilterKey(str)
	M.AssertCommandFilterKey(str)
	return str
end

function M.AssertPatchVendor(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchVendor to be of type 'string'")
end

--  
function M.PatchVendor(str)
	M.AssertPatchVendor(str)
	return str
end

function M.AssertPatchDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchDescription to be of type 'string'")
end

--  
function M.PatchDescription(str)
	M.AssertPatchDescription(str)
	return str
end

function M.AssertParameterDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterDescription to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ParameterDescription(str)
	M.AssertParameterDescription(str)
	return str
end

function M.AssertMaintenanceWindowExecutionTaskId(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowExecutionTaskId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 36, "Expected string to be min 36 characters")
	assert(str:match("^[0-9a-fA-F]{8}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{12}$"), "Expected string to match pattern '^[0-9a-fA-F]{8}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{4}%-[0-9a-fA-F]{12}$'")
end

--  
function M.MaintenanceWindowExecutionTaskId(str)
	M.AssertMaintenanceWindowExecutionTaskId(str)
	return str
end

function M.AssertIPAddress(str)
	assert(str)
	assert(type(str) == "string", "Expected IPAddress to be of type 'string'")
	assert(#str <= 46, "Expected string to be max 46 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IPAddress(str)
	M.AssertIPAddress(str)
	return str
end

function M.AssertCommandPluginOutput(str)
	assert(str)
	assert(type(str) == "string", "Expected CommandPluginOutput to be of type 'string'")
	assert(#str <= 2500, "Expected string to be max 2500 characters")
end

--  
function M.CommandPluginOutput(str)
	M.AssertCommandPluginOutput(str)
	return str
end

function M.AssertAccountId(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountId to be of type 'string'")
	assert(str:match("(?i)all|[0-9]{12}"), "Expected string to match pattern '(?i)all|[0-9]{12}'")
end

--  
function M.AccountId(str)
	M.AssertAccountId(str)
	return str
end

function M.AssertPSParameterName(str)
	assert(str)
	assert(type(str) == "string", "Expected PSParameterName to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PSParameterName(str)
	M.AssertPSParameterName(str)
	return str
end

function M.AssertPatchSeverity(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchSeverity to be of type 'string'")
end

--  
function M.PatchSeverity(str)
	M.AssertPatchSeverity(str)
	return str
end

function M.AssertInstancePatchStateFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected InstancePatchStateFilterKey to be of type 'string'")
	assert(#str <= 200, "Expected string to be max 200 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.InstancePatchStateFilterKey(str)
	M.AssertInstancePatchStateFilterKey(str)
	return str
end

function M.AssertStatusMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusMessage to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StatusMessage(str)
	M.AssertStatusMessage(str)
	return str
end

function M.AssertStatusName(str)
	assert(str)
	assert(type(str) == "string", "Expected StatusName to be of type 'string'")
end

--  
function M.StatusName(str)
	M.AssertStatusName(str)
	return str
end

function M.AssertDocumentParameterDescrption(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentParameterDescrption to be of type 'string'")
end

--  
function M.DocumentParameterDescrption(str)
	M.AssertDocumentParameterDescrption(str)
	return str
end

function M.AssertDocumentPermissionType(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentPermissionType to be of type 'string'")
end

--  
function M.DocumentPermissionType(str)
	M.AssertDocumentPermissionType(str)
	return str
end

function M.AssertDocumentFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentFilterValue to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DocumentFilterValue(str)
	M.AssertDocumentFilterValue(str)
	return str
end

function M.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	M.AssertString(str)
	return str
end

function M.AssertAutomationActionName(str)
	assert(str)
	assert(type(str) == "string", "Expected AutomationActionName to be of type 'string'")
	assert(str:match("^aws:[a-zA-Z]{3,25}$"), "Expected string to match pattern '^aws:[a-zA-Z]{3,25}$'")
end

--  
function M.AutomationActionName(str)
	M.AssertAutomationActionName(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$'")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertStandardErrorContent(str)
	assert(str)
	assert(type(str) == "string", "Expected StandardErrorContent to be of type 'string'")
	assert(#str <= 8000, "Expected string to be max 8000 characters")
end

--  
function M.StandardErrorContent(str)
	M.AssertStandardErrorContent(str)
	return str
end

function M.AssertPatchLanguage(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchLanguage to be of type 'string'")
end

--  
function M.PatchLanguage(str)
	M.AssertPatchLanguage(str)
	return str
end

function M.AssertInstanceInformationFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceInformationFilterValue to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.InstanceInformationFilterValue(str)
	M.AssertInstanceInformationFilterValue(str)
	return str
end

function M.AssertComment(str)
	assert(str)
	assert(type(str) == "string", "Expected Comment to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
end

--  
function M.Comment(str)
	M.AssertComment(str)
	return str
end

function M.AssertStringDateTime(str)
	assert(str)
	assert(type(str) == "string", "Expected StringDateTime to be of type 'string'")
	assert(str:match("^([%-]?%d{4}(?!%d{2}%b))((-?)((0[1-9]|1[0-2])(%3([12]%d|0[1-9]|3[01]))?|W([0-4]%d|5[0-2])(-?[1-7])?|(00[1-9]|0[1-9]%d|[12]%d{2}|3([0-5]%d|6[1-6])))([T%s]((([01]%d|2[0-3])((:?)[0-5]%d)?|24%:?00)([%.,]%d(?!:))?)?(%17[0-5]%d([%.,]%d)?)?([zZ]|([%-])([01]%d|2[0-3]):?([0-5]%d)?)?)?)?$"), "Expected string to match pattern '^([%-]?%d{4}(?!%d{2}%b))((-?)((0[1-9]|1[0-2])(%3([12]%d|0[1-9]|3[01]))?|W([0-4]%d|5[0-2])(-?[1-7])?|(00[1-9]|0[1-9]%d|[12]%d{2}|3([0-5]%d|6[1-6])))([T%s]((([01]%d|2[0-3])((:?)[0-5]%d)?|24%:?00)([%.,]%d(?!:))?)?(%17[0-5]%d([%.,]%d)?)?([zZ]|([%-])([01]%d|2[0-3]):?([0-5]%d)?)?)?)?$'")
end

--  
function M.StringDateTime(str)
	M.AssertStringDateTime(str)
	return str
end

function M.AssertAutomationExecutionId(str)
	assert(str)
	assert(type(str) == "string", "Expected AutomationExecutionId to be of type 'string'")
	assert(#str <= 36, "Expected string to be max 36 characters")
	assert(#str >= 36, "Expected string to be min 36 characters")
end

--  
function M.AutomationExecutionId(str)
	M.AssertAutomationExecutionId(str)
	return str
end

function M.AssertMaintenanceWindowFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowFilterValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MaintenanceWindowFilterValue(str)
	M.AssertMaintenanceWindowFilterValue(str)
	return str
end

function M.AssertPatchGroup(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchGroup to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$'")
end

--  
function M.PatchGroup(str)
	M.AssertPatchGroup(str)
	return str
end

function M.AssertAgentErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected AgentErrorCode to be of type 'string'")
	assert(#str <= 10, "Expected string to be max 10 characters")
end

--  
function M.AgentErrorCode(str)
	M.AssertAgentErrorCode(str)
	return str
end

function M.AssertTargetValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetValue to be of type 'string'")
end

--  
function M.TargetValue(str)
	M.AssertTargetValue(str)
	return str
end

function M.AssertInventoryAttributeDataType(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryAttributeDataType to be of type 'string'")
end

--  
function M.InventoryAttributeDataType(str)
	M.AssertInventoryAttributeDataType(str)
	return str
end

function M.AssertDescriptionInDocument(str)
	assert(str)
	assert(type(str) == "string", "Expected DescriptionInDocument to be of type 'string'")
end

--  
function M.DescriptionInDocument(str)
	M.AssertDescriptionInDocument(str)
	return str
end

function M.AssertPatchTitle(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchTitle to be of type 'string'")
end

--  
function M.PatchTitle(str)
	M.AssertPatchTitle(str)
	return str
end

function M.AssertPatchFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchFilterKey to be of type 'string'")
end

--  
function M.PatchFilterKey(str)
	M.AssertPatchFilterKey(str)
	return str
end

function M.AssertDocumentParameterName(str)
	assert(str)
	assert(type(str) == "string", "Expected DocumentParameterName to be of type 'string'")
end

--  
function M.DocumentParameterName(str)
	M.AssertDocumentParameterName(str)
	return str
end

function M.AssertResourceTypeForTagging(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceTypeForTagging to be of type 'string'")
end

--  
function M.ResourceTypeForTagging(str)
	M.AssertResourceTypeForTagging(str)
	return str
end

function M.AssertCommandPluginStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CommandPluginStatus to be of type 'string'")
end

--  
function M.CommandPluginStatus(str)
	M.AssertCommandPluginStatus(str)
	return str
end

function M.AssertInstancePatchStateFilterValue(str)
	assert(str)
	assert(type(str) == "string", "Expected InstancePatchStateFilterValue to be of type 'string'")
end

--  
function M.InstancePatchStateFilterValue(str)
	M.AssertInstancePatchStateFilterValue(str)
	return str
end

function M.AssertS3BucketName(str)
	assert(str)
	assert(type(str) == "string", "Expected S3BucketName to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
end

--  
function M.S3BucketName(str)
	M.AssertS3BucketName(str)
	return str
end

function M.AssertBaselineName(str)
	assert(str)
	assert(type(str) == "string", "Expected BaselineName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
	assert(str:match("^[a-zA-Z0-9_%-.]{3,128}$"), "Expected string to match pattern '^[a-zA-Z0-9_%-.]{3,128}$'")
end

--  
function M.BaselineName(str)
	M.AssertBaselineName(str)
	return str
end

function M.AssertMaintenanceWindowSchedule(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowSchedule to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MaintenanceWindowSchedule(str)
	M.AssertMaintenanceWindowSchedule(str)
	return str
end

function M.AssertIamRole(str)
	assert(str)
	assert(type(str) == "string", "Expected IamRole to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.IamRole(str)
	M.AssertIamRole(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	M.AssertNextToken(str)
	return str
end

function M.AssertInventoryItemCaptureTime(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryItemCaptureTime to be of type 'string'")
	assert(str:match("^(20)[0-9][0-9]-(0[1-9]|1[012])-([12][0-9]|3[01]|0[1-9])(T)(2[0-3]|[0-1][0-9])(:[0-5][0-9])(:[0-5][0-9])(Z)$"), "Expected string to match pattern '^(20)[0-9][0-9]-(0[1-9]|1[012])-([12][0-9]|3[01]|0[1-9])(T)(2[0-3]|[0-1][0-9])(:[0-5][0-9])(:[0-5][0-9])(Z)$'")
end

--  
function M.InventoryItemCaptureTime(str)
	M.AssertInventoryItemCaptureTime(str)
	return str
end

function M.AssertInstanceId(str)
	assert(str)
	assert(type(str) == "string", "Expected InstanceId to be of type 'string'")
	assert(str:match("(^i-(%w{8}|%w{17})$)|(^mi-%w{17}$)"), "Expected string to match pattern '(^i-(%w{8}|%w{17})$)|(^mi-%w{17}$)'")
end

--  
function M.InstanceId(str)
	M.AssertInstanceId(str)
	return str
end

function M.AssertMaintenanceWindowResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowResourceType to be of type 'string'")
end

--  
function M.MaintenanceWindowResourceType(str)
	M.AssertMaintenanceWindowResourceType(str)
	return str
end

function M.AssertInstancePatchStateOperatorType(str)
	assert(str)
	assert(type(str) == "string", "Expected InstancePatchStateOperatorType to be of type 'string'")
end

--  
function M.InstancePatchStateOperatorType(str)
	M.AssertInstancePatchStateOperatorType(str)
	return str
end

function M.AssertMaintenanceWindowFilterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowFilterKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MaintenanceWindowFilterKey(str)
	M.AssertMaintenanceWindowFilterKey(str)
	return str
end

function M.AssertMaxConcurrency(str)
	assert(str)
	assert(type(str) == "string", "Expected MaxConcurrency to be of type 'string'")
	assert(#str <= 7, "Expected string to be max 7 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^([1-9][0-9]*|[1-9][0-9]%|[1-9]%|100%)$"), "Expected string to match pattern '^([1-9][0-9]*|[1-9][0-9]%|[1-9]%|100%)$'")
end

--  
function M.MaxConcurrency(str)
	M.AssertMaxConcurrency(str)
	return str
end

function M.AssertPatchMsrcNumber(str)
	assert(str)
	assert(type(str) == "string", "Expected PatchMsrcNumber to be of type 'string'")
end

--  
function M.PatchMsrcNumber(str)
	M.AssertPatchMsrcNumber(str)
	return str
end

function M.AssertMaintenanceWindowName(str)
	assert(str)
	assert(type(str) == "string", "Expected MaintenanceWindowName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 3, "Expected string to be min 3 characters")
	assert(str:match("^[a-zA-Z0-9_%-.]{3,128}$"), "Expected string to match pattern '^[a-zA-Z0-9_%-.]{3,128}$'")
end

--  
function M.MaintenanceWindowName(str)
	M.AssertMaintenanceWindowName(str)
	return str
end

function M.AssertInventoryItemSchemaVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected InventoryItemSchemaVersion to be of type 'string'")
	assert(str:match("^([0-9]{1,6})(%.[0-9]{1,6})$"), "Expected string to match pattern '^([0-9]{1,6})(%.[0-9]{1,6})$'")
end

--  
function M.InventoryItemSchemaVersion(str)
	M.AssertInventoryItemSchemaVersion(str)
	return str
end

function M.AssertPatchMissingCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PatchMissingCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PatchMissingCount(integer)
	M.AssertPatchMissingCount(integer)
	return integer
end

function M.AssertRegistrationLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RegistrationLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.RegistrationLimit(integer)
	M.AssertRegistrationLimit(integer)
	return integer
end

function M.AssertPatchBaselineMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PatchBaselineMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PatchBaselineMaxResults(integer)
	M.AssertPatchBaselineMaxResults(integer)
	return integer
end

function M.AssertCommandMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected CommandMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.CommandMaxResults(integer)
	M.AssertCommandMaxResults(integer)
	return integer
end

function M.AssertPatchInstalledOtherCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PatchInstalledOtherCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PatchInstalledOtherCount(integer)
	M.AssertPatchInstalledOtherCount(integer)
	return integer
end

function M.AssertApproveAfterDays(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ApproveAfterDays to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.ApproveAfterDays(integer)
	M.AssertApproveAfterDays(integer)
	return integer
end

function M.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	M.AssertInteger(integer)
	return integer
end

function M.AssertMaxResultsEC2Compatible(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResultsEC2Compatible to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
	assert(integer >= 5, "Expected integer to be min 5")
end

function M.MaxResultsEC2Compatible(integer)
	M.AssertMaxResultsEC2Compatible(integer)
	return integer
end

function M.AssertResponseCode(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ResponseCode to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ResponseCode(integer)
	M.AssertResponseCode(integer)
	return integer
end

function M.AssertPatchComplianceMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PatchComplianceMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 10, "Expected integer to be min 10")
end

function M.PatchComplianceMaxResults(integer)
	M.AssertPatchComplianceMaxResults(integer)
	return integer
end

function M.AssertTimeoutSeconds(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TimeoutSeconds to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 2592000, "Expected integer to be max 2592000")
	assert(integer >= 30, "Expected integer to be min 30")
end

function M.TimeoutSeconds(integer)
	M.AssertTimeoutSeconds(integer)
	return integer
end

function M.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	M.AssertMaxResults(integer)
	return integer
end

function M.AssertPatchInstalledCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PatchInstalledCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PatchInstalledCount(integer)
	M.AssertPatchInstalledCount(integer)
	return integer
end

function M.AssertInstanceCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected InstanceCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.InstanceCount(integer)
	M.AssertInstanceCount(integer)
	return integer
end

function M.AssertTargetCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TargetCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.TargetCount(integer)
	M.AssertTargetCount(integer)
	return integer
end

function M.AssertCompletedCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected CompletedCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.CompletedCount(integer)
	M.AssertCompletedCount(integer)
	return integer
end

function M.AssertMaintenanceWindowDurationHours(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaintenanceWindowDurationHours to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 24, "Expected integer to be max 24")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaintenanceWindowDurationHours(integer)
	M.AssertMaintenanceWindowDurationHours(integer)
	return integer
end

function M.AssertGetInventorySchemaMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected GetInventorySchemaMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 200, "Expected integer to be max 200")
	assert(integer >= 50, "Expected integer to be min 50")
end

function M.GetInventorySchemaMaxResults(integer)
	M.AssertGetInventorySchemaMaxResults(integer)
	return integer
end

function M.AssertPatchFailedCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PatchFailedCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PatchFailedCount(integer)
	M.AssertPatchFailedCount(integer)
	return integer
end

function M.AssertGetParametersByPathMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected GetParametersByPathMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.GetParametersByPathMaxResults(integer)
	M.AssertGetParametersByPathMaxResults(integer)
	return integer
end

function M.AssertMaintenanceWindowTaskPriority(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaintenanceWindowTaskPriority to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaintenanceWindowTaskPriority(integer)
	M.AssertMaintenanceWindowTaskPriority(integer)
	return integer
end

function M.AssertPatchNotApplicableCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PatchNotApplicableCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PatchNotApplicableCount(integer)
	M.AssertPatchNotApplicableCount(integer)
	return integer
end

function M.AssertEffectiveInstanceAssociationMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected EffectiveInstanceAssociationMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 5, "Expected integer to be max 5")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.EffectiveInstanceAssociationMaxResults(integer)
	M.AssertEffectiveInstanceAssociationMaxResults(integer)
	return integer
end

function M.AssertMaintenanceWindowCutoff(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaintenanceWindowCutoff to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 23, "Expected integer to be max 23")
end

function M.MaintenanceWindowCutoff(integer)
	M.AssertMaintenanceWindowCutoff(integer)
	return integer
end

function M.AssertRegistrationsCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected RegistrationsCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.RegistrationsCount(integer)
	M.AssertRegistrationsCount(integer)
	return integer
end

function M.AssertErrorCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ErrorCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ErrorCount(integer)
	M.AssertErrorCount(integer)
	return integer
end

function M.AssertMaintenanceWindowMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaintenanceWindowMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 10, "Expected integer to be min 10")
end

function M.MaintenanceWindowMaxResults(integer)
	M.AssertMaintenanceWindowMaxResults(integer)
	return integer
end

function M.AssertDefaultBaseline(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected DefaultBaseline to be of type 'boolean'")
end

function M.DefaultBaseline(boolean)
	M.AssertDefaultBaseline(boolean)
	return boolean
end

function M.AssertMaintenanceWindowAllowUnassociatedTargets(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected MaintenanceWindowAllowUnassociatedTargets to be of type 'boolean'")
end

function M.MaintenanceWindowAllowUnassociatedTargets(boolean)
	M.AssertMaintenanceWindowAllowUnassociatedTargets(boolean)
	return boolean
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertMaintenanceWindowEnabled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected MaintenanceWindowEnabled to be of type 'boolean'")
end

function M.MaintenanceWindowEnabled(boolean)
	M.AssertMaintenanceWindowEnabled(boolean)
	return boolean
end

function M.AssertAutomationParameterMap(map)
	assert(map)
	assert(type(map) == "table", "Expected AutomationParameterMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertAutomationParameterKey(k)
		M.AssertAutomationParameterValueList(v)
	end
end

function M.AutomationParameterMap(map)
	M.AssertAutomationParameterMap(map)
	return map
end

function M.AssertInventoryItemEntry(map)
	assert(map)
	assert(type(map) == "table", "Expected InventoryItemEntry to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertAttributeName(k)
		M.AssertAttributeValue(v)
	end
end

function M.InventoryItemEntry(map)
	M.AssertInventoryItemEntry(map)
	return map
end

function M.AssertInstanceAssociationStatusAggregatedCount(map)
	assert(map)
	assert(type(map) == "table", "Expected InstanceAssociationStatusAggregatedCount to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertStatusName(k)
		M.AssertInstanceCount(v)
	end
end

function M.InstanceAssociationStatusAggregatedCount(map)
	M.AssertInstanceAssociationStatusAggregatedCount(map)
	return map
end

function M.AssertMaintenanceWindowTaskParameters(map)
	assert(map)
	assert(type(map) == "table", "Expected MaintenanceWindowTaskParameters to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertMaintenanceWindowTaskParameterName(k)
		M.AssertMaintenanceWindowTaskParameterValueExpression(v)
	end
end

function M.MaintenanceWindowTaskParameters(map)
	M.AssertMaintenanceWindowTaskParameters(map)
	return map
end

function M.AssertInventoryResultItemMap(map)
	assert(map)
	assert(type(map) == "table", "Expected InventoryResultItemMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertInventoryResultItemKey(k)
		M.AssertInventoryResultItem(v)
	end
end

function M.InventoryResultItemMap(map)
	M.AssertInventoryResultItemMap(map)
	return map
end

function M.AssertParameters(map)
	assert(map)
	assert(type(map) == "table", "Expected Parameters to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertParameterName(k)
		M.AssertParameterValueList(v)
	end
end

function M.Parameters(map)
	M.AssertParameters(map)
	return map
end

function M.AssertNormalStringMap(map)
	assert(map)
	assert(type(map) == "table", "Expected NormalStringMap to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString(k)
		M.AssertString(v)
	end
end

function M.NormalStringMap(map)
	M.AssertNormalStringMap(map)
	return map
end

function M.AssertAssociationStatusAggregatedCount(map)
	assert(map)
	assert(type(map) == "table", "Expected AssociationStatusAggregatedCount to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertStatusName(k)
		M.AssertInstanceCount(v)
	end
end

function M.AssociationStatusAggregatedCount(map)
	M.AssertAssociationStatusAggregatedCount(map)
	return map
end

function M.AssertDateTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DateTime to be of type 'string'")
end

function M.DateTime(timestamp)
	M.AssertDateTime(timestamp)
	return timestamp
end

function M.AssertExpirationDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected ExpirationDate to be of type 'string'")
end

function M.ExpirationDate(timestamp)
	M.AssertExpirationDate(timestamp)
	return timestamp
end

function M.AssertPatchOperationEndTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected PatchOperationEndTime to be of type 'string'")
end

function M.PatchOperationEndTime(timestamp)
	M.AssertPatchOperationEndTime(timestamp)
	return timestamp
end

function M.AssertPatchOperationStartTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected PatchOperationStartTime to be of type 'string'")
end

function M.PatchOperationStartTime(timestamp)
	M.AssertPatchOperationStartTime(timestamp)
	return timestamp
end

function M.AssertCreatedDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreatedDate to be of type 'string'")
end

function M.CreatedDate(timestamp)
	M.AssertCreatedDate(timestamp)
	return timestamp
end

function M.AssertPatchInstalledTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected PatchInstalledTime to be of type 'string'")
end

function M.PatchInstalledTime(timestamp)
	M.AssertPatchInstalledTime(timestamp)
	return timestamp
end

function M.AssertDocumentParameterList(list)
	assert(list)
	assert(type(list) == "table", "Expected DocumentParameterList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDocumentParameter(v)
	end
end

--  
-- List of DocumentParameter objects
function M.DocumentParameterList(list)
	M.AssertDocumentParameterList(list)
	return list
end

function M.AssertInstanceAssociationList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceAssociationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceAssociation(v)
	end
end

--  
-- List of InstanceAssociation objects
function M.InstanceAssociationList(list)
	M.AssertInstanceAssociationList(list)
	return list
end

function M.AssertParameterStringFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterStringFilterList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertParameterStringFilter(v)
	end
end

--  
-- List of ParameterStringFilter objects
function M.ParameterStringFilterList(list)
	M.AssertParameterStringFilterList(list)
	return list
end

function M.AssertInventoryResultEntityList(list)
	assert(list)
	assert(type(list) == "table", "Expected InventoryResultEntityList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInventoryResultEntity(v)
	end
end

--  
-- List of InventoryResultEntity objects
function M.InventoryResultEntityList(list)
	M.AssertInventoryResultEntityList(list)
	return list
end

function M.AssertAccountIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected AccountIdList to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		M.AssertAccountId(v)
	end
end

--  
-- List of AccountId objects
function M.AccountIdList(list)
	M.AssertAccountIdList(list)
	return list
end

function M.AssertPatchOrchestratorFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchOrchestratorFilterList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		M.AssertPatchOrchestratorFilter(v)
	end
end

--  
-- List of PatchOrchestratorFilter objects
function M.PatchOrchestratorFilterList(list)
	M.AssertPatchOrchestratorFilterList(list)
	return list
end

function M.AssertParametersFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParametersFilterList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertParametersFilter(v)
	end
end

--  
-- List of ParametersFilter objects
function M.ParametersFilterList(list)
	M.AssertParametersFilterList(list)
	return list
end

function M.AssertDocumentFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected DocumentFilterList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertDocumentFilter(v)
	end
end

--  
-- List of DocumentFilter objects
function M.DocumentFilterList(list)
	M.AssertDocumentFilterList(list)
	return list
end

function M.AssertPatchRuleList(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchRuleList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		M.AssertPatchRule(v)
	end
end

--  
-- List of PatchRule objects
function M.PatchRuleList(list)
	M.AssertPatchRuleList(list)
	return list
end

function M.AssertEffectivePatchList(list)
	assert(list)
	assert(type(list) == "table", "Expected EffectivePatchList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEffectivePatch(v)
	end
end

--  
-- List of EffectivePatch objects
function M.EffectivePatchList(list)
	M.AssertEffectivePatchList(list)
	return list
end

function M.AssertMaintenanceWindowIdentityList(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowIdentityList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMaintenanceWindowIdentity(v)
	end
end

--  
-- List of MaintenanceWindowIdentity objects
function M.MaintenanceWindowIdentityList(list)
	M.AssertMaintenanceWindowIdentityList(list)
	return list
end

function M.AssertPatchOrchestratorFilterValues(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchOrchestratorFilterValues to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPatchOrchestratorFilterValue(v)
	end
end

--  
-- List of PatchOrchestratorFilterValue objects
function M.PatchOrchestratorFilterValues(list)
	M.AssertPatchOrchestratorFilterValues(list)
	return list
end

function M.AssertMaintenanceWindowExecutionTaskIdentityList(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowExecutionTaskIdentityList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMaintenanceWindowExecutionTaskIdentity(v)
	end
end

--  
-- List of MaintenanceWindowExecutionTaskIdentity objects
function M.MaintenanceWindowExecutionTaskIdentityList(list)
	M.AssertMaintenanceWindowExecutionTaskIdentityList(list)
	return list
end

function M.AssertPatchGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchGroupList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPatchGroup(v)
	end
end

--  
-- List of PatchGroup objects
function M.PatchGroupList(list)
	M.AssertPatchGroupList(list)
	return list
end

function M.AssertInstanceInformationList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceInformationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceInformation(v)
	end
end

--  
-- List of InstanceInformation objects
function M.InstanceInformationList(list)
	M.AssertInstanceInformationList(list)
	return list
end

function M.AssertDescribeActivationsFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected DescribeActivationsFilterList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDescribeActivationsFilter(v)
	end
end

--  
-- List of DescribeActivationsFilter objects
function M.DescribeActivationsFilterList(list)
	M.AssertDescribeActivationsFilterList(list)
	return list
end

function M.AssertPatchFilterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchFilterValueList to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertPatchFilterValue(v)
	end
end

--  
-- List of PatchFilterValue objects
function M.PatchFilterValueList(list)
	M.AssertPatchFilterValueList(list)
	return list
end

function M.AssertAutomationExecutionFilterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected AutomationExecutionFilterValueList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertAutomationExecutionFilterValue(v)
	end
end

--  
-- List of AutomationExecutionFilterValue objects
function M.AutomationExecutionFilterValueList(list)
	M.AssertAutomationExecutionFilterValueList(list)
	return list
end

function M.AssertAutomationParameterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected AutomationParameterValueList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		M.AssertAutomationParameterValue(v)
	end
end

--  
-- List of AutomationParameterValue objects
function M.AutomationParameterValueList(list)
	M.AssertAutomationParameterValueList(list)
	return list
end

function M.AssertInventoryItemAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected InventoryItemAttributeList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertInventoryItemAttribute(v)
	end
end

--  
-- List of InventoryItemAttribute objects
function M.InventoryItemAttributeList(list)
	M.AssertInventoryItemAttributeList(list)
	return list
end

function M.AssertInstancePatchStateFilterValues(list)
	assert(list)
	assert(type(list) == "table", "Expected InstancePatchStateFilterValues to be of type ''table")
	assert(#list <= 1, "Expected list to be contain 1 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertInstancePatchStateFilterValue(v)
	end
end

--  
-- List of InstancePatchStateFilterValue objects
function M.InstancePatchStateFilterValues(list)
	M.AssertInstancePatchStateFilterValues(list)
	return list
end

function M.AssertInstanceIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceIdList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AssertInstanceId(v)
	end
end

--  
-- List of InstanceId objects
function M.InstanceIdList(list)
	M.AssertInstanceIdList(list)
	return list
end

function M.AssertCommandList(list)
	assert(list)
	assert(type(list) == "table", "Expected CommandList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCommand(v)
	end
end

--  
-- List of Command objects
function M.CommandList(list)
	M.AssertCommandList(list)
	return list
end

function M.AssertDocumentIdentifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected DocumentIdentifierList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDocumentIdentifier(v)
	end
end

--  
-- List of DocumentIdentifier objects
function M.DocumentIdentifierList(list)
	M.AssertDocumentIdentifierList(list)
	return list
end

function M.AssertParameterStringFilterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterStringFilterValueList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertParameterStringFilterValue(v)
	end
end

--  
-- List of ParameterStringFilterValue objects
function M.ParameterStringFilterValueList(list)
	M.AssertParameterStringFilterValueList(list)
	return list
end

function M.AssertInventoryFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected InventoryFilterList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertInventoryFilter(v)
	end
end

--  
-- List of InventoryFilter objects
function M.InventoryFilterList(list)
	M.AssertInventoryFilterList(list)
	return list
end

function M.AssertActivationList(list)
	assert(list)
	assert(type(list) == "table", "Expected ActivationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertActivation(v)
	end
end

--  
-- List of Activation objects
function M.ActivationList(list)
	M.AssertActivationList(list)
	return list
end

function M.AssertAssociationDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssociationDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAssociationDescription(v)
	end
end

--  
-- List of AssociationDescription objects
function M.AssociationDescriptionList(list)
	M.AssertAssociationDescriptionList(list)
	return list
end

function M.AssertPatchList(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPatch(v)
	end
end

--  
-- List of Patch objects
function M.PatchList(list)
	M.AssertPatchList(list)
	return list
end

function M.AssertInstanceInformationStringFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceInformationStringFilterList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceInformationStringFilter(v)
	end
end

--  
-- List of InstanceInformationStringFilter objects
function M.InstanceInformationStringFilterList(list)
	M.AssertInstanceInformationStringFilterList(list)
	return list
end

function M.AssertInventoryItemEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected InventoryItemEntryList to be of type ''table")
	assert(#list <= 10000, "Expected list to be contain 10000 elements")
	for _,v in ipairs(list) do
		M.AssertInventoryItemEntry(v)
	end
end

--  
-- List of InventoryItemEntry objects
function M.InventoryItemEntryList(list)
	M.AssertInventoryItemEntryList(list)
	return list
end

function M.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.StringList(list)
	M.AssertStringList(list)
	return list
end

function M.AssertCreateAssociationBatchRequestEntries(list)
	assert(list)
	assert(type(list) == "table", "Expected CreateAssociationBatchRequestEntries to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertCreateAssociationBatchRequestEntry(v)
	end
end

--  
-- List of CreateAssociationBatchRequestEntry objects
function M.CreateAssociationBatchRequestEntries(list)
	M.AssertCreateAssociationBatchRequestEntries(list)
	return list
end

function M.AssertNotificationEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected NotificationEventList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNotificationEvent(v)
	end
end

--  
-- List of NotificationEvent objects
function M.NotificationEventList(list)
	M.AssertNotificationEventList(list)
	return list
end

function M.AssertDocumentVersionList(list)
	assert(list)
	assert(type(list) == "table", "Expected DocumentVersionList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertDocumentVersionInfo(v)
	end
end

--  
-- List of DocumentVersionInfo objects
function M.DocumentVersionList(list)
	M.AssertDocumentVersionList(list)
	return list
end

function M.AssertMaintenanceWindowTargetList(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowTargetList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMaintenanceWindowTarget(v)
	end
end

--  
-- List of MaintenanceWindowTarget objects
function M.MaintenanceWindowTargetList(list)
	M.AssertMaintenanceWindowTargetList(list)
	return list
end

function M.AssertMaintenanceWindowFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowFilterList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		M.AssertMaintenanceWindowFilter(v)
	end
end

--  
-- List of MaintenanceWindowFilter objects
function M.MaintenanceWindowFilterList(list)
	M.AssertMaintenanceWindowFilterList(list)
	return list
end

function M.AssertMaintenanceWindowFilterValues(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowFilterValues to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMaintenanceWindowFilterValue(v)
	end
end

--  
-- List of MaintenanceWindowFilterValue objects
function M.MaintenanceWindowFilterValues(list)
	M.AssertMaintenanceWindowFilterValues(list)
	return list
end

function M.AssertMaintenanceWindowExecutionTaskInvocationIdentityList(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowExecutionTaskInvocationIdentityList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMaintenanceWindowExecutionTaskInvocationIdentity(v)
	end
end

--  
-- List of MaintenanceWindowExecutionTaskInvocationIdentity objects
function M.MaintenanceWindowExecutionTaskInvocationIdentityList(list)
	M.AssertMaintenanceWindowExecutionTaskInvocationIdentityList(list)
	return list
end

function M.AssertPatchBaselineIdentityList(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchBaselineIdentityList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPatchBaselineIdentity(v)
	end
end

--  
-- List of PatchBaselineIdentity objects
function M.PatchBaselineIdentityList(list)
	M.AssertPatchBaselineIdentityList(list)
	return list
end

function M.AssertInventoryFilterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected InventoryFilterValueList to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertInventoryFilterValue(v)
	end
end

--  
-- List of InventoryFilterValue objects
function M.InventoryFilterValueList(list)
	M.AssertInventoryFilterValueList(list)
	return list
end

function M.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	M.AssertTagList(list)
	return list
end

function M.AssertInstanceInformationFilterValueSet(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceInformationFilterValueSet to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertInstanceInformationFilterValue(v)
	end
end

--  
-- List of InstanceInformationFilterValue objects
function M.InstanceInformationFilterValueSet(list)
	M.AssertInstanceInformationFilterValueSet(list)
	return list
end

function M.AssertCommandFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected CommandFilterList to be of type ''table")
	assert(#list <= 3, "Expected list to be contain 3 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertCommandFilter(v)
	end
end

--  
-- List of CommandFilter objects
function M.CommandFilterList(list)
	M.AssertCommandFilterList(list)
	return list
end

function M.AssertAssociationFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssociationFilterList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertAssociationFilter(v)
	end
end

--  
-- List of AssociationFilter objects
function M.AssociationFilterList(list)
	M.AssertAssociationFilterList(list)
	return list
end

function M.AssertMaintenanceWindowExecutionTaskIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowExecutionTaskIdList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMaintenanceWindowExecutionTaskId(v)
	end
end

--  
-- List of MaintenanceWindowExecutionTaskId objects
function M.MaintenanceWindowExecutionTaskIdList(list)
	M.AssertMaintenanceWindowExecutionTaskIdList(list)
	return list
end

function M.AssertAutomationExecutionMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected AutomationExecutionMetadataList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AssertAutomationExecutionMetadata(v)
	end
end

--  
-- List of AutomationExecutionMetadata objects
function M.AutomationExecutionMetadataList(list)
	M.AssertAutomationExecutionMetadataList(list)
	return list
end

function M.AssertPatchComplianceDataList(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchComplianceDataList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPatchComplianceData(v)
	end
end

--  
-- List of PatchComplianceData objects
function M.PatchComplianceDataList(list)
	M.AssertPatchComplianceDataList(list)
	return list
end

function M.AssertParametersFilterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParametersFilterValueList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertParametersFilterValue(v)
	end
end

--  
-- List of ParametersFilterValue objects
function M.ParametersFilterValueList(list)
	M.AssertParametersFilterValueList(list)
	return list
end

function M.AssertStepExecutionList(list)
	assert(list)
	assert(type(list) == "table", "Expected StepExecutionList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		M.AssertStepExecution(v)
	end
end

--  
-- List of StepExecution objects
function M.StepExecutionList(list)
	M.AssertStepExecutionList(list)
	return list
end

function M.AssertPatchIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchIdList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AssertPatchId(v)
	end
end

--  
-- List of PatchId objects
function M.PatchIdList(list)
	M.AssertPatchIdList(list)
	return list
end

function M.AssertFailedCreateAssociationList(list)
	assert(list)
	assert(type(list) == "table", "Expected FailedCreateAssociationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFailedCreateAssociation(v)
	end
end

--  
-- List of FailedCreateAssociation objects
function M.FailedCreateAssociationList(list)
	M.AssertFailedCreateAssociationList(list)
	return list
end

function M.AssertTargets(list)
	assert(list)
	assert(type(list) == "table", "Expected Targets to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		M.AssertTarget(v)
	end
end

--  
-- List of Target objects
function M.Targets(list)
	M.AssertTargets(list)
	return list
end

function M.AssertMaintenanceWindowTaskParameterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowTaskParameterValueList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMaintenanceWindowTaskParameterValue(v)
	end
end

--  
-- List of MaintenanceWindowTaskParameterValue objects
function M.MaintenanceWindowTaskParameterValueList(list)
	M.AssertMaintenanceWindowTaskParameterValueList(list)
	return list
end

function M.AssertParameterMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterMetadataList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertParameterMetadata(v)
	end
end

--  
-- List of ParameterMetadata objects
function M.ParameterMetadataList(list)
	M.AssertParameterMetadataList(list)
	return list
end

function M.AssertInstancePatchStatesList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstancePatchStatesList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertInstancePatchState(v)
	end
end

--  
-- List of InstancePatchState objects
function M.InstancePatchStatesList(list)
	M.AssertInstancePatchStatesList(list)
	return list
end

function M.AssertResultAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResultAttributeList to be of type ''table")
	assert(#list <= 1, "Expected list to be contain 1 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertResultAttribute(v)
	end
end

--  
-- List of ResultAttribute objects
function M.ResultAttributeList(list)
	M.AssertResultAttributeList(list)
	return list
end

function M.AssertInstancePatchStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstancePatchStateList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstancePatchState(v)
	end
end

--  
-- List of InstancePatchState objects
function M.InstancePatchStateList(list)
	M.AssertInstancePatchStateList(list)
	return list
end

function M.AssertInventoryItemSchemaResultList(list)
	assert(list)
	assert(type(list) == "table", "Expected InventoryItemSchemaResultList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInventoryItemSchema(v)
	end
end

--  
-- List of InventoryItemSchema objects
function M.InventoryItemSchemaResultList(list)
	M.AssertInventoryItemSchemaResultList(list)
	return list
end

function M.AssertPlatformTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected PlatformTypeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPlatformType(v)
	end
end

--  
-- List of PlatformType objects
function M.PlatformTypeList(list)
	M.AssertPlatformTypeList(list)
	return list
end

function M.AssertPatchGroupPatchBaselineMappingList(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchGroupPatchBaselineMappingList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPatchGroupPatchBaselineMapping(v)
	end
end

--  
-- List of PatchGroupPatchBaselineMapping objects
function M.PatchGroupPatchBaselineMappingList(list)
	M.AssertPatchGroupPatchBaselineMappingList(list)
	return list
end

function M.AssertInstanceAssociationStatusInfos(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceAssociationStatusInfos to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceAssociationStatusInfo(v)
	end
end

--  
-- List of InstanceAssociationStatusInfo objects
function M.InstanceAssociationStatusInfos(list)
	M.AssertInstanceAssociationStatusInfos(list)
	return list
end

function M.AssertMaintenanceWindowExecutionList(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowExecutionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMaintenanceWindowExecution(v)
	end
end

--  
-- List of MaintenanceWindowExecution objects
function M.MaintenanceWindowExecutionList(list)
	M.AssertMaintenanceWindowExecutionList(list)
	return list
end

function M.AssertPatchFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected PatchFilterList to be of type ''table")
	assert(#list <= 4, "Expected list to be contain 4 elements")
	for _,v in ipairs(list) do
		M.AssertPatchFilter(v)
	end
end

--  
-- List of PatchFilter objects
function M.PatchFilterList(list)
	M.AssertPatchFilterList(list)
	return list
end

function M.AssertInstanceInformationFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstanceInformationFilterList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertInstanceInformationFilter(v)
	end
end

--  
-- List of InstanceInformationFilter objects
function M.InstanceInformationFilterList(list)
	M.AssertInstanceInformationFilterList(list)
	return list
end

function M.AssertAutomationExecutionFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected AutomationExecutionFilterList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertAutomationExecutionFilter(v)
	end
end

--  
-- List of AutomationExecutionFilter objects
function M.AutomationExecutionFilterList(list)
	M.AssertAutomationExecutionFilterList(list)
	return list
end

function M.AssertMaintenanceWindowTaskList(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowTaskList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMaintenanceWindowTask(v)
	end
end

--  
-- List of MaintenanceWindowTask objects
function M.MaintenanceWindowTaskList(list)
	M.AssertMaintenanceWindowTaskList(list)
	return list
end

function M.AssertCommandPluginList(list)
	assert(list)
	assert(type(list) == "table", "Expected CommandPluginList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCommandPlugin(v)
	end
end

--  
-- List of CommandPlugin objects
function M.CommandPluginList(list)
	M.AssertCommandPluginList(list)
	return list
end

function M.AssertKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected KeyList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.KeyList(list)
	M.AssertKeyList(list)
	return list
end

function M.AssertMaintenanceWindowTaskParametersList(list)
	assert(list)
	assert(type(list) == "table", "Expected MaintenanceWindowTaskParametersList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMaintenanceWindowTaskParameters(v)
	end
end

--  
-- List of MaintenanceWindowTaskParameters objects
function M.MaintenanceWindowTaskParametersList(list)
	M.AssertMaintenanceWindowTaskParametersList(list)
	return list
end

function M.AssertInstancePatchStateFilterList(list)
	assert(list)
	assert(type(list) == "table", "Expected InstancePatchStateFilterList to be of type ''table")
	assert(#list <= 4, "Expected list to be contain 4 elements")
	for _,v in ipairs(list) do
		M.AssertInstancePatchStateFilter(v)
	end
end

--  
-- List of InstancePatchStateFilter objects
function M.InstancePatchStateFilterList(list)
	M.AssertInstancePatchStateFilterList(list)
	return list
end

function M.AssertTargetValues(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetValues to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AssertTargetValue(v)
	end
end

--  
-- List of TargetValue objects
function M.TargetValues(list)
	M.AssertTargetValues(list)
	return list
end

function M.AssertParameterNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterNameList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertPSParameterName(v)
	end
end

--  
-- List of PSParameterName objects
function M.ParameterNameList(list)
	M.AssertParameterNameList(list)
	return list
end

function M.AssertParameterList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertParameter(v)
	end
end

--  
-- List of Parameter objects
function M.ParameterList(list)
	M.AssertParameterList(list)
	return list
end

function M.AssertParameterHistoryList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterHistoryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertParameterHistory(v)
	end
end

--  
-- List of ParameterHistory objects
function M.ParameterHistoryList(list)
	M.AssertParameterHistoryList(list)
	return list
end

function M.AssertCommandInvocationList(list)
	assert(list)
	assert(type(list) == "table", "Expected CommandInvocationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCommandInvocation(v)
	end
end

--  
-- List of CommandInvocation objects
function M.CommandInvocationList(list)
	M.AssertCommandInvocationList(list)
	return list
end

function M.AssertInventoryItemList(list)
	assert(list)
	assert(type(list) == "table", "Expected InventoryItemList to be of type ''table")
	assert(#list <= 30, "Expected list to be contain 30 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertInventoryItem(v)
	end
end

--  
-- List of InventoryItem objects
function M.InventoryItemList(list)
	M.AssertInventoryItemList(list)
	return list
end

function M.AssertParameterValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterValueList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertParameterValue(v)
	end
end

--  
-- List of ParameterValue objects
function M.ParameterValueList(list)
	M.AssertParameterValueList(list)
	return list
end

function M.AssertAssociationList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssociationList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAssociation(v)
	end
end

--  
-- List of Association objects
function M.AssociationList(list)
	M.AssertAssociationList(list)
	return list
end


local headers = require "aws-sdk.core.headers"
local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_handlers = require "aws-sdk.core.request_handlers"

local uri = ""


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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- DeleteActivation
-- @param DeleteActivationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteActivationAsync(DeleteActivationRequest, cb)
	assert(DeleteActivationRequest, "You must provide a DeleteActivationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeleteActivation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteActivationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdatePatchBaseline
-- @param UpdatePatchBaselineRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdatePatchBaselineAsync(UpdatePatchBaselineRequest, cb)
	assert(UpdatePatchBaselineRequest, "You must provide a UpdatePatchBaselineRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.UpdatePatchBaseline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdatePatchBaselineRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateMaintenanceWindow
-- @param CreateMaintenanceWindowRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateMaintenanceWindowAsync(CreateMaintenanceWindowRequest, cb)
	assert(CreateMaintenanceWindowRequest, "You must provide a CreateMaintenanceWindowRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.CreateMaintenanceWindow",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateMaintenanceWindowRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeregisterManagedInstance
-- @param DeregisterManagedInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterManagedInstanceAsync(DeregisterManagedInstanceRequest, cb)
	assert(DeregisterManagedInstanceRequest, "You must provide a DeregisterManagedInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeregisterManagedInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeregisterManagedInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreatePatchBaseline
-- @param CreatePatchBaselineRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreatePatchBaselineAsync(CreatePatchBaselineRequest, cb)
	assert(CreatePatchBaselineRequest, "You must provide a CreatePatchBaselineRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.CreatePatchBaseline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreatePatchBaselineRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDeployablePatchSnapshotForInstance
-- @param GetDeployablePatchSnapshotForInstanceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDeployablePatchSnapshotForInstanceAsync(GetDeployablePatchSnapshotForInstanceRequest, cb)
	assert(GetDeployablePatchSnapshotForInstanceRequest, "You must provide a GetDeployablePatchSnapshotForInstanceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetDeployablePatchSnapshotForInstance",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDeployablePatchSnapshotForInstanceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDocumentPermission
-- @param DescribeDocumentPermissionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDocumentPermissionAsync(DescribeDocumentPermissionRequest, cb)
	assert(DescribeDocumentPermissionRequest, "You must provide a DescribeDocumentPermissionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeDocumentPermission",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDocumentPermissionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeEffectivePatchesForPatchBaseline
-- @param DescribeEffectivePatchesForPatchBaselineRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEffectivePatchesForPatchBaselineAsync(DescribeEffectivePatchesForPatchBaselineRequest, cb)
	assert(DescribeEffectivePatchesForPatchBaselineRequest, "You must provide a DescribeEffectivePatchesForPatchBaselineRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeEffectivePatchesForPatchBaseline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEffectivePatchesForPatchBaselineRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAvailablePatches
-- @param DescribeAvailablePatchesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAvailablePatchesAsync(DescribeAvailablePatchesRequest, cb)
	assert(DescribeAvailablePatchesRequest, "You must provide a DescribeAvailablePatchesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeAvailablePatches",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAvailablePatchesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeInstancePatches
-- @param DescribeInstancePatchesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeInstancePatchesAsync(DescribeInstancePatchesRequest, cb)
	assert(DescribeInstancePatchesRequest, "You must provide a DescribeInstancePatchesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeInstancePatches",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeInstancePatchesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutParameter
-- @param PutParameterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutParameterAsync(PutParameterRequest, cb)
	assert(PutParameterRequest, "You must provide a PutParameterRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.PutParameter",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutParameterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterDefaultPatchBaseline
-- @param RegisterDefaultPatchBaselineRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterDefaultPatchBaselineAsync(RegisterDefaultPatchBaselineRequest, cb)
	assert(RegisterDefaultPatchBaselineRequest, "You must provide a RegisterDefaultPatchBaselineRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.RegisterDefaultPatchBaseline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterDefaultPatchBaselineRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDocumentVersions
-- @param ListDocumentVersionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDocumentVersionsAsync(ListDocumentVersionsRequest, cb)
	assert(ListDocumentVersionsRequest, "You must provide a ListDocumentVersionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.ListDocumentVersions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListDocumentVersionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetPatchBaselineForPatchGroup
-- @param GetPatchBaselineForPatchGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetPatchBaselineForPatchGroupAsync(GetPatchBaselineForPatchGroupRequest, cb)
	assert(GetPatchBaselineForPatchGroupRequest, "You must provide a GetPatchBaselineForPatchGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetPatchBaselineForPatchGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetPatchBaselineForPatchGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetAutomationExecution
-- @param GetAutomationExecutionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAutomationExecutionAsync(GetAutomationExecutionRequest, cb)
	assert(GetAutomationExecutionRequest, "You must provide a GetAutomationExecutionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetAutomationExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetAutomationExecutionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAssociations
-- @param ListAssociationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAssociationsAsync(ListAssociationsRequest, cb)
	assert(ListAssociationsRequest, "You must provide a ListAssociationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.ListAssociations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAssociationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeInstancePatchStates
-- @param DescribeInstancePatchStatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeInstancePatchStatesAsync(DescribeInstancePatchStatesRequest, cb)
	assert(DescribeInstancePatchStatesRequest, "You must provide a DescribeInstancePatchStatesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeInstancePatchStates",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeInstancePatchStatesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAssociation
-- @param DescribeAssociationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAssociationAsync(DescribeAssociationRequest, cb)
	assert(DescribeAssociationRequest, "You must provide a DescribeAssociationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeAssociation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAssociationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutInventory
-- @param PutInventoryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutInventoryAsync(PutInventoryRequest, cb)
	assert(PutInventoryRequest, "You must provide a PutInventoryRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.PutInventory",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutInventoryRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeInstancePatchStatesForPatchGroup
-- @param DescribeInstancePatchStatesForPatchGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeInstancePatchStatesForPatchGroupAsync(DescribeInstancePatchStatesForPatchGroupRequest, cb)
	assert(DescribeInstancePatchStatesForPatchGroupRequest, "You must provide a DescribeInstancePatchStatesForPatchGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeInstancePatchStatesForPatchGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeInstancePatchStatesForPatchGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDefaultPatchBaseline
-- @param GetDefaultPatchBaselineRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDefaultPatchBaselineAsync(GetDefaultPatchBaselineRequest, cb)
	assert(GetDefaultPatchBaselineRequest, "You must provide a GetDefaultPatchBaselineRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetDefaultPatchBaseline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDefaultPatchBaselineRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAutomationExecutions
-- @param DescribeAutomationExecutionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAutomationExecutionsAsync(DescribeAutomationExecutionsRequest, cb)
	assert(DescribeAutomationExecutionsRequest, "You must provide a DescribeAutomationExecutionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeAutomationExecutions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAutomationExecutionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetDocument
-- @param GetDocumentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetDocumentAsync(GetDocumentRequest, cb)
	assert(GetDocumentRequest, "You must provide a GetDocumentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetDocument",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetDocumentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetMaintenanceWindow
-- @param GetMaintenanceWindowRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetMaintenanceWindowAsync(GetMaintenanceWindowRequest, cb)
	assert(GetMaintenanceWindowRequest, "You must provide a GetMaintenanceWindowRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetMaintenanceWindow",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetMaintenanceWindowRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetParametersByPath
-- @param GetParametersByPathRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetParametersByPathAsync(GetParametersByPathRequest, cb)
	assert(GetParametersByPathRequest, "You must provide a GetParametersByPathRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetParametersByPath",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetParametersByPathRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateDocument
-- @param CreateDocumentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateDocumentAsync(CreateDocumentRequest, cb)
	assert(CreateDocumentRequest, "You must provide a CreateDocumentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.CreateDocument",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateDocumentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteAssociation
-- @param DeleteAssociationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAssociationAsync(DeleteAssociationRequest, cb)
	assert(DeleteAssociationRequest, "You must provide a DeleteAssociationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeleteAssociation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteAssociationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddTagsToResource
-- @param AddTagsToResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsToResourceAsync(AddTagsToResourceRequest, cb)
	assert(AddTagsToResourceRequest, "You must provide a AddTagsToResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.AddTagsToResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddTagsToResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateManagedInstanceRole
-- @param UpdateManagedInstanceRoleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateManagedInstanceRoleAsync(UpdateManagedInstanceRoleRequest, cb)
	assert(UpdateManagedInstanceRoleRequest, "You must provide a UpdateManagedInstanceRoleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.UpdateManagedInstanceRole",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateManagedInstanceRoleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribePatchBaselines
-- @param DescribePatchBaselinesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribePatchBaselinesAsync(DescribePatchBaselinesRequest, cb)
	assert(DescribePatchBaselinesRequest, "You must provide a DescribePatchBaselinesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribePatchBaselines",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribePatchBaselinesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateMaintenanceWindow
-- @param UpdateMaintenanceWindowRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateMaintenanceWindowAsync(UpdateMaintenanceWindowRequest, cb)
	assert(UpdateMaintenanceWindowRequest, "You must provide a UpdateMaintenanceWindowRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.UpdateMaintenanceWindow",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateMaintenanceWindowRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetPatchBaseline
-- @param GetPatchBaselineRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetPatchBaselineAsync(GetPatchBaselineRequest, cb)
	assert(GetPatchBaselineRequest, "You must provide a GetPatchBaselineRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetPatchBaseline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetPatchBaselineRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopAutomationExecution
-- @param StopAutomationExecutionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopAutomationExecutionAsync(StopAutomationExecutionRequest, cb)
	assert(StopAutomationExecutionRequest, "You must provide a StopAutomationExecutionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.StopAutomationExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopAutomationExecutionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetInventory
-- @param GetInventoryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInventoryAsync(GetInventoryRequest, cb)
	assert(GetInventoryRequest, "You must provide a GetInventoryRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetInventory",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetInventoryRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveTagsFromResource
-- @param RemoveTagsFromResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTagsFromResourceAsync(RemoveTagsFromResourceRequest, cb)
	assert(RemoveTagsFromResourceRequest, "You must provide a RemoveTagsFromResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.RemoveTagsFromResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveTagsFromResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeregisterTargetFromMaintenanceWindow
-- @param DeregisterTargetFromMaintenanceWindowRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterTargetFromMaintenanceWindowAsync(DeregisterTargetFromMaintenanceWindowRequest, cb)
	assert(DeregisterTargetFromMaintenanceWindowRequest, "You must provide a DeregisterTargetFromMaintenanceWindowRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeregisterTargetFromMaintenanceWindow",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeregisterTargetFromMaintenanceWindowRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SendCommand
-- @param SendCommandRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SendCommandAsync(SendCommandRequest, cb)
	assert(SendCommandRequest, "You must provide a SendCommandRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.SendCommand",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SendCommandRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeInstanceAssociationsStatus
-- @param DescribeInstanceAssociationsStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeInstanceAssociationsStatusAsync(DescribeInstanceAssociationsStatusRequest, cb)
	assert(DescribeInstanceAssociationsStatusRequest, "You must provide a DescribeInstanceAssociationsStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeInstanceAssociationsStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeInstanceAssociationsStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribePatchGroups
-- @param DescribePatchGroupsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribePatchGroupsAsync(DescribePatchGroupsRequest, cb)
	assert(DescribePatchGroupsRequest, "You must provide a DescribePatchGroupsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribePatchGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribePatchGroupsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetMaintenanceWindowExecutionTask
-- @param GetMaintenanceWindowExecutionTaskRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetMaintenanceWindowExecutionTaskAsync(GetMaintenanceWindowExecutionTaskRequest, cb)
	assert(GetMaintenanceWindowExecutionTaskRequest, "You must provide a GetMaintenanceWindowExecutionTaskRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetMaintenanceWindowExecutionTask",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetMaintenanceWindowExecutionTaskRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetInventorySchema
-- @param GetInventorySchemaRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetInventorySchemaAsync(GetInventorySchemaRequest, cb)
	assert(GetInventorySchemaRequest, "You must provide a GetInventorySchemaRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetInventorySchema",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetInventorySchemaRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CancelCommand
-- @param CancelCommandRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CancelCommandAsync(CancelCommandRequest, cb)
	assert(CancelCommandRequest, "You must provide a CancelCommandRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.CancelCommand",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CancelCommandRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetCommandInvocation
-- @param GetCommandInvocationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetCommandInvocationAsync(GetCommandInvocationRequest, cb)
	assert(GetCommandInvocationRequest, "You must provide a GetCommandInvocationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetCommandInvocation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetCommandInvocationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateAssociationStatus
-- @param UpdateAssociationStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAssociationStatusAsync(UpdateAssociationStatusRequest, cb)
	assert(UpdateAssociationStatusRequest, "You must provide a UpdateAssociationStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.UpdateAssociationStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateAssociationStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribePatchGroupState
-- @param DescribePatchGroupStateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribePatchGroupStateAsync(DescribePatchGroupStateRequest, cb)
	assert(DescribePatchGroupStateRequest, "You must provide a DescribePatchGroupStateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribePatchGroupState",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribePatchGroupStateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateAssociationBatch
-- @param CreateAssociationBatchRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAssociationBatchAsync(CreateAssociationBatchRequest, cb)
	assert(CreateAssociationBatchRequest, "You must provide a CreateAssociationBatchRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.CreateAssociationBatch",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateAssociationBatchRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetParameter
-- @param GetParameterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetParameterAsync(GetParameterRequest, cb)
	assert(GetParameterRequest, "You must provide a GetParameterRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetParameter",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetParameterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeMaintenanceWindowExecutionTasks
-- @param DescribeMaintenanceWindowExecutionTasksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeMaintenanceWindowExecutionTasksAsync(DescribeMaintenanceWindowExecutionTasksRequest, cb)
	assert(DescribeMaintenanceWindowExecutionTasksRequest, "You must provide a DescribeMaintenanceWindowExecutionTasksRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeMaintenanceWindowExecutionTasks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeMaintenanceWindowExecutionTasksRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetParameterHistory
-- @param GetParameterHistoryRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetParameterHistoryAsync(GetParameterHistoryRequest, cb)
	assert(GetParameterHistoryRequest, "You must provide a GetParameterHistoryRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetParameterHistory",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetParameterHistoryRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeregisterTaskFromMaintenanceWindow
-- @param DeregisterTaskFromMaintenanceWindowRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterTaskFromMaintenanceWindowAsync(DeregisterTaskFromMaintenanceWindowRequest, cb)
	assert(DeregisterTaskFromMaintenanceWindowRequest, "You must provide a DeregisterTaskFromMaintenanceWindowRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeregisterTaskFromMaintenanceWindow",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeregisterTaskFromMaintenanceWindowRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListCommandInvocations
-- @param ListCommandInvocationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListCommandInvocationsAsync(ListCommandInvocationsRequest, cb)
	assert(ListCommandInvocationsRequest, "You must provide a ListCommandInvocationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.ListCommandInvocations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListCommandInvocationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeParameters
-- @param DescribeParametersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeParametersAsync(DescribeParametersRequest, cb)
	assert(DescribeParametersRequest, "You must provide a DescribeParametersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeParametersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeMaintenanceWindowTasks
-- @param DescribeMaintenanceWindowTasksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeMaintenanceWindowTasksAsync(DescribeMaintenanceWindowTasksRequest, cb)
	assert(DescribeMaintenanceWindowTasksRequest, "You must provide a DescribeMaintenanceWindowTasksRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeMaintenanceWindowTasks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeMaintenanceWindowTasksRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteParameters
-- @param DeleteParametersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteParametersAsync(DeleteParametersRequest, cb)
	assert(DeleteParametersRequest, "You must provide a DeleteParametersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeleteParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteParametersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeMaintenanceWindowTargets
-- @param DescribeMaintenanceWindowTargetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeMaintenanceWindowTargetsAsync(DescribeMaintenanceWindowTargetsRequest, cb)
	assert(DescribeMaintenanceWindowTargetsRequest, "You must provide a DescribeMaintenanceWindowTargetsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeMaintenanceWindowTargets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeMaintenanceWindowTargetsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeInstanceInformation
-- @param DescribeInstanceInformationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeInstanceInformationAsync(DescribeInstanceInformationRequest, cb)
	assert(DescribeInstanceInformationRequest, "You must provide a DescribeInstanceInformationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeInstanceInformation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeInstanceInformationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateActivation
-- @param CreateActivationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateActivationAsync(CreateActivationRequest, cb)
	assert(CreateActivationRequest, "You must provide a CreateActivationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.CreateActivation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateActivationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterPatchBaselineForPatchGroup
-- @param RegisterPatchBaselineForPatchGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterPatchBaselineForPatchGroupAsync(RegisterPatchBaselineForPatchGroupRequest, cb)
	assert(RegisterPatchBaselineForPatchGroupRequest, "You must provide a RegisterPatchBaselineForPatchGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.RegisterPatchBaselineForPatchGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterPatchBaselineForPatchGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateDocument
-- @param UpdateDocumentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDocumentAsync(UpdateDocumentRequest, cb)
	assert(UpdateDocumentRequest, "You must provide a UpdateDocumentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.UpdateDocument",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateDocumentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeActivations
-- @param DescribeActivationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeActivationsAsync(DescribeActivationsRequest, cb)
	assert(DescribeActivationsRequest, "You must provide a DescribeActivationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeActivations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeActivationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateAssociation
-- @param CreateAssociationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAssociationAsync(CreateAssociationRequest, cb)
	assert(CreateAssociationRequest, "You must provide a CreateAssociationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.CreateAssociation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateAssociationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetMaintenanceWindowExecution
-- @param GetMaintenanceWindowExecutionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetMaintenanceWindowExecutionAsync(GetMaintenanceWindowExecutionRequest, cb)
	assert(GetMaintenanceWindowExecutionRequest, "You must provide a GetMaintenanceWindowExecutionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetMaintenanceWindowExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetMaintenanceWindowExecutionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteMaintenanceWindow
-- @param DeleteMaintenanceWindowRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteMaintenanceWindowAsync(DeleteMaintenanceWindowRequest, cb)
	assert(DeleteMaintenanceWindowRequest, "You must provide a DeleteMaintenanceWindowRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeleteMaintenanceWindow",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteMaintenanceWindowRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListCommands
-- @param ListCommandsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListCommandsAsync(ListCommandsRequest, cb)
	assert(ListCommandsRequest, "You must provide a ListCommandsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.ListCommands",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListCommandsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateAssociation
-- @param UpdateAssociationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAssociationAsync(UpdateAssociationRequest, cb)
	assert(UpdateAssociationRequest, "You must provide a UpdateAssociationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.UpdateAssociation",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateAssociationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDocument
-- @param DeleteDocumentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDocumentAsync(DeleteDocumentRequest, cb)
	assert(DeleteDocumentRequest, "You must provide a DeleteDocumentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeleteDocument",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDocumentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeEffectiveInstanceAssociations
-- @param DescribeEffectiveInstanceAssociationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeEffectiveInstanceAssociationsAsync(DescribeEffectiveInstanceAssociationsRequest, cb)
	assert(DescribeEffectiveInstanceAssociationsRequest, "You must provide a DescribeEffectiveInstanceAssociationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeEffectiveInstanceAssociations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeEffectiveInstanceAssociationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeMaintenanceWindows
-- @param DescribeMaintenanceWindowsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeMaintenanceWindowsAsync(DescribeMaintenanceWindowsRequest, cb)
	assert(DescribeMaintenanceWindowsRequest, "You must provide a DescribeMaintenanceWindowsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeMaintenanceWindows",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeMaintenanceWindowsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteParameter
-- @param DeleteParameterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteParameterAsync(DeleteParameterRequest, cb)
	assert(DeleteParameterRequest, "You must provide a DeleteParameterRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeleteParameter",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteParameterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeMaintenanceWindowExecutionTaskInvocations
-- @param DescribeMaintenanceWindowExecutionTaskInvocationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeMaintenanceWindowExecutionTaskInvocationsAsync(DescribeMaintenanceWindowExecutionTaskInvocationsRequest, cb)
	assert(DescribeMaintenanceWindowExecutionTaskInvocationsRequest, "You must provide a DescribeMaintenanceWindowExecutionTaskInvocationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeMaintenanceWindowExecutionTaskInvocations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeMaintenanceWindowExecutionTaskInvocationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ModifyDocumentPermission
-- @param ModifyDocumentPermissionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ModifyDocumentPermissionAsync(ModifyDocumentPermissionRequest, cb)
	assert(ModifyDocumentPermissionRequest, "You must provide a ModifyDocumentPermissionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.ModifyDocumentPermission",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ModifyDocumentPermissionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeMaintenanceWindowExecutions
-- @param DescribeMaintenanceWindowExecutionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeMaintenanceWindowExecutionsAsync(DescribeMaintenanceWindowExecutionsRequest, cb)
	assert(DescribeMaintenanceWindowExecutionsRequest, "You must provide a DescribeMaintenanceWindowExecutionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeMaintenanceWindowExecutions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeMaintenanceWindowExecutionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartAutomationExecution
-- @param StartAutomationExecutionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartAutomationExecutionAsync(StartAutomationExecutionRequest, cb)
	assert(StartAutomationExecutionRequest, "You must provide a StartAutomationExecutionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.StartAutomationExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartAutomationExecutionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDocument
-- @param DescribeDocumentRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDocumentAsync(DescribeDocumentRequest, cb)
	assert(DescribeDocumentRequest, "You must provide a DescribeDocumentRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DescribeDocument",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDocumentRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateDocumentDefaultVersion
-- @param UpdateDocumentDefaultVersionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateDocumentDefaultVersionAsync(UpdateDocumentDefaultVersionRequest, cb)
	assert(UpdateDocumentDefaultVersionRequest, "You must provide a UpdateDocumentDefaultVersionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.UpdateDocumentDefaultVersion",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateDocumentDefaultVersionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterTargetWithMaintenanceWindow
-- @param RegisterTargetWithMaintenanceWindowRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterTargetWithMaintenanceWindowAsync(RegisterTargetWithMaintenanceWindowRequest, cb)
	assert(RegisterTargetWithMaintenanceWindowRequest, "You must provide a RegisterTargetWithMaintenanceWindowRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.RegisterTargetWithMaintenanceWindow",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterTargetWithMaintenanceWindowRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeletePatchBaseline
-- @param DeletePatchBaselineRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeletePatchBaselineAsync(DeletePatchBaselineRequest, cb)
	assert(DeletePatchBaselineRequest, "You must provide a DeletePatchBaselineRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeletePatchBaseline",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeletePatchBaselineRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListInventoryEntries
-- @param ListInventoryEntriesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListInventoryEntriesAsync(ListInventoryEntriesRequest, cb)
	assert(ListInventoryEntriesRequest, "You must provide a ListInventoryEntriesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.ListInventoryEntries",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListInventoryEntriesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeregisterPatchBaselineForPatchGroup
-- @param DeregisterPatchBaselineForPatchGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeregisterPatchBaselineForPatchGroupAsync(DeregisterPatchBaselineForPatchGroupRequest, cb)
	assert(DeregisterPatchBaselineForPatchGroupRequest, "You must provide a DeregisterPatchBaselineForPatchGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.DeregisterPatchBaselineForPatchGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeregisterPatchBaselineForPatchGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTagsForResource
-- @param ListTagsForResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceRequest, cb)
	assert(ListTagsForResourceRequest, "You must provide a ListTagsForResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.ListTagsForResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTagsForResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterTaskWithMaintenanceWindow
-- @param RegisterTaskWithMaintenanceWindowRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterTaskWithMaintenanceWindowAsync(RegisterTaskWithMaintenanceWindowRequest, cb)
	assert(RegisterTaskWithMaintenanceWindowRequest, "You must provide a RegisterTaskWithMaintenanceWindowRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.RegisterTaskWithMaintenanceWindow",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterTaskWithMaintenanceWindowRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetParameters
-- @param GetParametersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetParametersAsync(GetParametersRequest, cb)
	assert(GetParametersRequest, "You must provide a GetParametersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.GetParameters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetParametersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListDocuments
-- @param ListDocumentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListDocumentsAsync(ListDocumentsRequest, cb)
	assert(ListDocumentsRequest, "You must provide a ListDocumentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonSSM.ListDocuments",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListDocumentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
