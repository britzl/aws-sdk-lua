--- GENERATED CODE - DO NOT MODIFY
-- AWS CloudFormation (cloudformation-2010-05-15)

local M = {}

M.metadata = {
	api_version = "2010-05-15",
	json_version = "",
	protocol = "query",
	checksum_format = "",
	endpoint_prefix = "cloudformation",
	service_abbreviation = "",
	service_full_name = "AWS CloudFormation",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "cloudformation-2010-05-15",
}

local ListStackResourcesInput_keys = { "StackName" = true, "NextToken" = true, nil }

function M.AssertListStackResourcesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStackResourcesInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then M.AssertStackName(struct["StackName"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListStackResourcesInput_keys[k], "ListStackResourcesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStackResourcesInput
-- <p>The input for the <a>ListStackResource</a> action.</p>
-- @param StackName [StackName] <p>The name or the unique stack ID that is associated with the stack, which are not always interchangeable:</p> <ul> <li> <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p> </li> <li> <p>Deleted stacks: You must specify the unique stack ID.</p> </li> </ul> <p>Default: There is no default value.</p>
-- @param NextToken [NextToken] <p>A string that identifies the next page of stack resources that you want to retrieve.</p>
-- Required parameter: StackName
function M.ListStackResourcesInput(StackName, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStackResourcesInput")
	local t = { 
		["StackName"] = StackName,
		["NextToken"] = NextToken,
	}
	M.AssertListStackResourcesInput(t)
	return t
end

local ParameterConstraints_keys = { "AllowedValues" = true, nil }

function M.AssertParameterConstraints(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterConstraints to be of type 'table'")
	if struct["AllowedValues"] then M.AssertAllowedValues(struct["AllowedValues"]) end
	for k,_ in pairs(struct) do
		assert(ParameterConstraints_keys[k], "ParameterConstraints contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterConstraints
-- <p>A set of criteria that AWS CloudFormation uses to validate parameter values. Although other constraints might be defined in the stack template, AWS CloudFormation returns only the <code>AllowedValues</code> property.</p>
-- @param AllowedValues [AllowedValues] <p>A list of values that are permitted for a parameter.</p>
function M.ParameterConstraints(AllowedValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterConstraints")
	local t = { 
		["AllowedValues"] = AllowedValues,
	}
	M.AssertParameterConstraints(t)
	return t
end

local GetTemplateSummaryInput_keys = { "StackName" = true, "TemplateURL" = true, "TemplateBody" = true, nil }

function M.AssertGetTemplateSummaryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTemplateSummaryInput to be of type 'table'")
	if struct["StackName"] then M.AssertStackNameOrId(struct["StackName"]) end
	if struct["TemplateURL"] then M.AssertTemplateURL(struct["TemplateURL"]) end
	if struct["TemplateBody"] then M.AssertTemplateBody(struct["TemplateBody"]) end
	for k,_ in pairs(struct) do
		assert(GetTemplateSummaryInput_keys[k], "GetTemplateSummaryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTemplateSummaryInput
-- <p>The input for the <a>GetTemplateSummary</a> action.</p>
-- @param StackName [StackNameOrId] <p>The name or the stack ID that is associated with the stack, which are not always interchangeable. For running stacks, you can specify either the stack's name or its unique stack ID. For deleted stack, you must specify the unique stack ID.</p> <p>Conditional: You must specify only one of the following parameters: <code>StackName</code>, <code>TemplateBody</code>, or <code>TemplateURL</code>.</p>
-- @param TemplateURL [TemplateURL] <p>Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information about templates, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must specify only one of the following parameters: <code>StackName</code>, <code>TemplateBody</code>, or <code>TemplateURL</code>.</p>
-- @param TemplateBody [TemplateBody] <p>Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information about templates, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must specify only one of the following parameters: <code>StackName</code>, <code>TemplateBody</code>, or <code>TemplateURL</code>.</p>
function M.GetTemplateSummaryInput(StackName, TemplateURL, TemplateBody, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTemplateSummaryInput")
	local t = { 
		["StackName"] = StackName,
		["TemplateURL"] = TemplateURL,
		["TemplateBody"] = TemplateBody,
	}
	M.AssertGetTemplateSummaryInput(t)
	return t
end

local DescribeChangeSetInput_keys = { "StackName" = true, "NextToken" = true, "ChangeSetName" = true, nil }

function M.AssertDescribeChangeSetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeChangeSetInput to be of type 'table'")
	assert(struct["ChangeSetName"], "Expected key ChangeSetName to exist in table")
	if struct["StackName"] then M.AssertStackNameOrId(struct["StackName"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["ChangeSetName"] then M.AssertChangeSetNameOrId(struct["ChangeSetName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeChangeSetInput_keys[k], "DescribeChangeSetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeChangeSetInput
-- <p>The input for the <a>DescribeChangeSet</a> action.</p>
-- @param StackName [StackNameOrId] <p>If you specified the name of a change set, specify the stack name or ID (ARN) of the change set you want to describe.</p>
-- @param NextToken [NextToken] <p>A string (provided by the <a>DescribeChangeSet</a> response output) that identifies the next page of information that you want to retrieve.</p>
-- @param ChangeSetName [ChangeSetNameOrId] <p>The name or Amazon Resource Name (ARN) of the change set that you want to describe.</p>
-- Required parameter: ChangeSetName
function M.DescribeChangeSetInput(StackName, NextToken, ChangeSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeChangeSetInput")
	local t = { 
		["StackName"] = StackName,
		["NextToken"] = NextToken,
		["ChangeSetName"] = ChangeSetName,
	}
	M.AssertDescribeChangeSetInput(t)
	return t
end

local Change_keys = { "ResourceChange" = true, "Type" = true, nil }

function M.AssertChange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Change to be of type 'table'")
	if struct["ResourceChange"] then M.AssertResourceChange(struct["ResourceChange"]) end
	if struct["Type"] then M.AssertChangeType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(Change_keys[k], "Change contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Change
-- <p>The <code>Change</code> structure describes the changes AWS CloudFormation will perform if you execute the change set.</p>
-- @param ResourceChange [ResourceChange] <p>A <code>ResourceChange</code> structure that describes the resource and action that AWS CloudFormation will perform.</p>
-- @param Type [ChangeType] <p>The type of entity that AWS CloudFormation changes. Currently, the only entity type is <code>Resource</code>.</p>
function M.Change(ResourceChange, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Change")
	local t = { 
		["ResourceChange"] = ResourceChange,
		["Type"] = Type,
	}
	M.AssertChange(t)
	return t
end

local StackSummary_keys = { "StackId" = true, "DeletionTime" = true, "TemplateDescription" = true, "StackStatusReason" = true, "CreationTime" = true, "StackName" = true, "StackStatus" = true, "LastUpdatedTime" = true, nil }

function M.AssertStackSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackSummary to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	assert(struct["StackStatus"], "Expected key StackStatus to exist in table")
	if struct["StackId"] then M.AssertStackId(struct["StackId"]) end
	if struct["DeletionTime"] then M.AssertDeletionTime(struct["DeletionTime"]) end
	if struct["TemplateDescription"] then M.AssertTemplateDescription(struct["TemplateDescription"]) end
	if struct["StackStatusReason"] then M.AssertStackStatusReason(struct["StackStatusReason"]) end
	if struct["CreationTime"] then M.AssertCreationTime(struct["CreationTime"]) end
	if struct["StackName"] then M.AssertStackName(struct["StackName"]) end
	if struct["StackStatus"] then M.AssertStackStatus(struct["StackStatus"]) end
	if struct["LastUpdatedTime"] then M.AssertLastUpdatedTime(struct["LastUpdatedTime"]) end
	for k,_ in pairs(struct) do
		assert(StackSummary_keys[k], "StackSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackSummary
-- <p>The StackSummary Data Type</p>
-- @param StackId [StackId] <p>Unique stack identifier.</p>
-- @param DeletionTime [DeletionTime] <p>The time the stack was deleted.</p>
-- @param TemplateDescription [TemplateDescription] <p>The template description of the template used to create the stack.</p>
-- @param StackStatusReason [StackStatusReason] <p>Success/Failure message associated with the stack status.</p>
-- @param CreationTime [CreationTime] <p>The time the stack was created.</p>
-- @param StackName [StackName] <p>The name associated with the stack.</p>
-- @param StackStatus [StackStatus] <p>The current status of the stack.</p>
-- @param LastUpdatedTime [LastUpdatedTime] <p>The time the stack was last updated. This field will only be returned if the stack has been updated at least once.</p>
-- Required parameter: StackName
-- Required parameter: CreationTime
-- Required parameter: StackStatus
function M.StackSummary(StackId, DeletionTime, TemplateDescription, StackStatusReason, CreationTime, StackName, StackStatus, LastUpdatedTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StackSummary")
	local t = { 
		["StackId"] = StackId,
		["DeletionTime"] = DeletionTime,
		["TemplateDescription"] = TemplateDescription,
		["StackStatusReason"] = StackStatusReason,
		["CreationTime"] = CreationTime,
		["StackName"] = StackName,
		["StackStatus"] = StackStatus,
		["LastUpdatedTime"] = LastUpdatedTime,
	}
	M.AssertStackSummary(t)
	return t
end

local TokenAlreadyExistsException_keys = { nil }

function M.AssertTokenAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TokenAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TokenAlreadyExistsException_keys[k], "TokenAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TokenAlreadyExistsException
-- <p>A client request token already exists.</p>
function M.TokenAlreadyExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TokenAlreadyExistsException")
	local t = { 
	}
	M.AssertTokenAlreadyExistsException(t)
	return t
end

local DescribeAccountLimitsInput_keys = { "NextToken" = true, nil }

function M.AssertDescribeAccountLimitsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountLimitsInput to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAccountLimitsInput_keys[k], "DescribeAccountLimitsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountLimitsInput
-- <p>The input for the <a>DescribeAccountLimits</a> action.</p>
-- @param NextToken [NextToken] <p>A string that identifies the next page of limits that you want to retrieve.</p>
function M.DescribeAccountLimitsInput(NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAccountLimitsInput")
	local t = { 
		["NextToken"] = NextToken,
	}
	M.AssertDescribeAccountLimitsInput(t)
	return t
end

local StackResourceDetail_keys = { "StackId" = true, "ResourceStatus" = true, "Description" = true, "ResourceType" = true, "ResourceStatusReason" = true, "LastUpdatedTimestamp" = true, "StackName" = true, "PhysicalResourceId" = true, "Metadata" = true, "LogicalResourceId" = true, nil }

function M.AssertStackResourceDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackResourceDetail to be of type 'table'")
	assert(struct["LogicalResourceId"], "Expected key LogicalResourceId to exist in table")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["LastUpdatedTimestamp"], "Expected key LastUpdatedTimestamp to exist in table")
	assert(struct["ResourceStatus"], "Expected key ResourceStatus to exist in table")
	if struct["StackId"] then M.AssertStackId(struct["StackId"]) end
	if struct["ResourceStatus"] then M.AssertResourceStatus(struct["ResourceStatus"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["ResourceType"] then M.AssertResourceType(struct["ResourceType"]) end
	if struct["ResourceStatusReason"] then M.AssertResourceStatusReason(struct["ResourceStatusReason"]) end
	if struct["LastUpdatedTimestamp"] then M.AssertTimestamp(struct["LastUpdatedTimestamp"]) end
	if struct["StackName"] then M.AssertStackName(struct["StackName"]) end
	if struct["PhysicalResourceId"] then M.AssertPhysicalResourceId(struct["PhysicalResourceId"]) end
	if struct["Metadata"] then M.AssertMetadata(struct["Metadata"]) end
	if struct["LogicalResourceId"] then M.AssertLogicalResourceId(struct["LogicalResourceId"]) end
	for k,_ in pairs(struct) do
		assert(StackResourceDetail_keys[k], "StackResourceDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackResourceDetail
-- <p>Contains detailed information about the specified stack resource.</p>
-- @param StackId [StackId] <p>Unique identifier of the stack.</p>
-- @param ResourceStatus [ResourceStatus] <p>Current status of the resource.</p>
-- @param Description [Description] <p>User defined description associated with the resource.</p>
-- @param ResourceType [ResourceType] <p>Type of resource. ((For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html"> AWS Resource Types Reference</a> in the AWS CloudFormation User Guide.)</p>
-- @param ResourceStatusReason [ResourceStatusReason] <p>Success/failure message associated with the resource.</p>
-- @param LastUpdatedTimestamp [Timestamp] <p>Time the status was updated.</p>
-- @param StackName [StackName] <p>The name associated with the stack.</p>
-- @param PhysicalResourceId [PhysicalResourceId] <p>The name or unique identifier that corresponds to a physical instance ID of a resource supported by AWS CloudFormation.</p>
-- @param Metadata [Metadata] <p>The content of the <code>Metadata</code> attribute declared for the resource. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-metadata.html">Metadata Attribute</a> in the AWS CloudFormation User Guide.</p>
-- @param LogicalResourceId [LogicalResourceId] <p>The logical name of the resource specified in the template.</p>
-- Required parameter: LogicalResourceId
-- Required parameter: ResourceType
-- Required parameter: LastUpdatedTimestamp
-- Required parameter: ResourceStatus
function M.StackResourceDetail(StackId, ResourceStatus, Description, ResourceType, ResourceStatusReason, LastUpdatedTimestamp, StackName, PhysicalResourceId, Metadata, LogicalResourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StackResourceDetail")
	local t = { 
		["StackId"] = StackId,
		["ResourceStatus"] = ResourceStatus,
		["Description"] = Description,
		["ResourceType"] = ResourceType,
		["ResourceStatusReason"] = ResourceStatusReason,
		["LastUpdatedTimestamp"] = LastUpdatedTimestamp,
		["StackName"] = StackName,
		["PhysicalResourceId"] = PhysicalResourceId,
		["Metadata"] = Metadata,
		["LogicalResourceId"] = LogicalResourceId,
	}
	M.AssertStackResourceDetail(t)
	return t
end

local ContinueUpdateRollbackOutput_keys = { nil }

function M.AssertContinueUpdateRollbackOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContinueUpdateRollbackOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ContinueUpdateRollbackOutput_keys[k], "ContinueUpdateRollbackOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContinueUpdateRollbackOutput
-- <p>The output for a <a>ContinueUpdateRollback</a> action.</p>
function M.ContinueUpdateRollbackOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ContinueUpdateRollbackOutput")
	local t = { 
	}
	M.AssertContinueUpdateRollbackOutput(t)
	return t
end

local ListChangeSetsInput_keys = { "StackName" = true, "NextToken" = true, nil }

function M.AssertListChangeSetsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListChangeSetsInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then M.AssertStackNameOrId(struct["StackName"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListChangeSetsInput_keys[k], "ListChangeSetsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListChangeSetsInput
-- <p>The input for the <a>ListChangeSets</a> action.</p>
-- @param StackName [StackNameOrId] <p>The name or the Amazon Resource Name (ARN) of the stack for which you want to list change sets.</p>
-- @param NextToken [NextToken] <p>A string (provided by the <a>ListChangeSets</a> response output) that identifies the next page of change sets that you want to retrieve.</p>
-- Required parameter: StackName
function M.ListChangeSetsInput(StackName, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListChangeSetsInput")
	local t = { 
		["StackName"] = StackName,
		["NextToken"] = NextToken,
	}
	M.AssertListChangeSetsInput(t)
	return t
end

local DeleteStackInput_keys = { "StackName" = true, "RetainResources" = true, "RoleARN" = true, "ClientRequestToken" = true, nil }

function M.AssertDeleteStackInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStackInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then M.AssertStackName(struct["StackName"]) end
	if struct["RetainResources"] then M.AssertRetainResources(struct["RetainResources"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClientRequestToken"] then M.AssertClientRequestToken(struct["ClientRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(DeleteStackInput_keys[k], "DeleteStackInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStackInput
-- <p>The input for <a>DeleteStack</a> action.</p>
-- @param StackName [StackName] <p>The name or the unique stack ID that is associated with the stack.</p>
-- @param RetainResources [RetainResources] <p>For stacks in the <code>DELETE_FAILED</code> state, a list of resource logical IDs that are associated with the resources you want to retain. During deletion, AWS CloudFormation deletes the stack but does not delete the retained resources.</p> <p>Retaining resources is useful when you cannot delete a resource, such as a non-empty S3 bucket, but you want to delete the stack.</p>
-- @param RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to delete the stack. AWS CloudFormation uses the role's credentials to make calls on your behalf.</p> <p>If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.</p>
-- @param ClientRequestToken [ClientRequestToken] <p>A unique identifier for this <code>DeleteStack</code> request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to delete a stack with the same name. You might retry <code>DeleteStack</code> requests to ensure that AWS CloudFormation successfully received them.</p>
-- Required parameter: StackName
function M.DeleteStackInput(StackName, RetainResources, RoleARN, ClientRequestToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteStackInput")
	local t = { 
		["StackName"] = StackName,
		["RetainResources"] = RetainResources,
		["RoleARN"] = RoleARN,
		["ClientRequestToken"] = ClientRequestToken,
	}
	M.AssertDeleteStackInput(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	if struct["Value"] then M.AssertTagValue(struct["Value"]) end
	if struct["Key"] then M.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>The Tag type enables you to specify a key-value pair that can be used to store information about an AWS CloudFormation stack.</p>
-- @param Value [TagValue] <p> <i>Required</i>. A string containing the value for this tag. You can specify a maximum of 256 characters for a tag value.</p>
-- @param Key [TagKey] <p> <i>Required</i>. A string used to identify this tag. You can specify a maximum of 128 characters for a tag key. Tags owned by Amazon Web Services (AWS) have the reserved prefix: <code>aws:</code>.</p>
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local CreateChangeSetInput_keys = { "ChangeSetName" = true, "TemplateBody" = true, "Parameters" = true, "Tags" = true, "RoleARN" = true, "UsePreviousTemplate" = true, "Capabilities" = true, "StackName" = true, "NotificationARNs" = true, "ResourceTypes" = true, "ClientToken" = true, "TemplateURL" = true, "ChangeSetType" = true, "Description" = true, nil }

function M.AssertCreateChangeSetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateChangeSetInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	assert(struct["ChangeSetName"], "Expected key ChangeSetName to exist in table")
	if struct["ChangeSetName"] then M.AssertChangeSetName(struct["ChangeSetName"]) end
	if struct["TemplateBody"] then M.AssertTemplateBody(struct["TemplateBody"]) end
	if struct["Parameters"] then M.AssertParameters(struct["Parameters"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["UsePreviousTemplate"] then M.AssertUsePreviousTemplate(struct["UsePreviousTemplate"]) end
	if struct["Capabilities"] then M.AssertCapabilities(struct["Capabilities"]) end
	if struct["StackName"] then M.AssertStackNameOrId(struct["StackName"]) end
	if struct["NotificationARNs"] then M.AssertNotificationARNs(struct["NotificationARNs"]) end
	if struct["ResourceTypes"] then M.AssertResourceTypes(struct["ResourceTypes"]) end
	if struct["ClientToken"] then M.AssertClientToken(struct["ClientToken"]) end
	if struct["TemplateURL"] then M.AssertTemplateURL(struct["TemplateURL"]) end
	if struct["ChangeSetType"] then M.AssertChangeSetType(struct["ChangeSetType"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(CreateChangeSetInput_keys[k], "CreateChangeSetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateChangeSetInput
-- <p>The input for the <a>CreateChangeSet</a> action.</p>
-- @param ChangeSetName [ChangeSetName] <p>The name of the change set. The name must be unique among all change sets that are associated with the specified stack.</p> <p>A change set name can contain only alphanumeric, case sensitive characters and hyphens. It must start with an alphabetic character and cannot exceed 128 characters.</p>
-- @param TemplateBody [TemplateBody] <p>A structure that contains the body of the revised template, with a minimum length of 1 byte and a maximum length of 51,200 bytes. AWS CloudFormation generates the change set by comparing this template with the template of the stack that you specified.</p> <p>Conditional: You must specify only <code>TemplateBody</code> or <code>TemplateURL</code>.</p>
-- @param Parameters [Parameters] <p>A list of <code>Parameter</code> structures that specify input parameters for the change set. For more information, see the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html">Parameter</a> data type.</p>
-- @param Tags [Tags] <p>Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to resources in the stack. You can specify a maximum of 10 tags.</p>
-- @param RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes when executing the change set. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege.</p> <p>If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.</p>
-- @param UsePreviousTemplate [UsePreviousTemplate] <p>Whether to reuse the template that is associated with the stack to create the change set.</p>
-- @param Capabilities [Capabilities] <p>A list of values that you must specify before AWS CloudFormation can update certain stacks. Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter.</p> <p>The only valid values are <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>. The following resources require you to specify this parameter: <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html"> AWS::IAM::AccessKey</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html"> AWS::IAM::Group</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html"> AWS::IAM::InstanceProfile</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html"> AWS::IAM::Policy</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html"> AWS::IAM::Role</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html"> AWS::IAM::User</a>, and <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html"> AWS::IAM::UserToGroupAddition</a>. If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.</p> <p>If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify <code>CAPABILITY_NAMED_IAM</code>. If you don't specify this parameter, this action returns an <code>InsufficientCapabilities</code> error.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging IAM Resources in AWS CloudFormation Templates</a>.</p>
-- @param StackName [StackNameOrId] <p>The name or the unique ID of the stack for which you are creating a change set. AWS CloudFormation generates the change set by comparing this stack's information with the information that you submit, such as a modified template or different parameter input values.</p>
-- @param NotificationARNs [NotificationARNs] <p>The Amazon Resource Names (ARNs) of Amazon Simple Notification Service (Amazon SNS) topics that AWS CloudFormation associates with the stack. To remove all associated notification topics, specify an empty list.</p>
-- @param ResourceTypes [ResourceTypes] <p>The template resource types that you have permissions to work with if you execute this change set, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or <code>Custom::MyCustomInstance</code>.</p> <p>If the list of resource types doesn't include a resource type that you're updating, the stack update fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for condition keys in IAM policies for AWS CloudFormation. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html">Controlling Access with AWS Identity and Access Management</a> in the AWS CloudFormation User Guide.</p>
-- @param ClientToken [ClientToken] <p>A unique identifier for this <code>CreateChangeSet</code> request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create another change set with the same name. You might retry <code>CreateChangeSet</code> requests to ensure that AWS CloudFormation successfully received them.</p>
-- @param TemplateURL [TemplateURL] <p>The location of the file that contains the revised template. The URL must point to a template (max size: 460,800 bytes) that is located in an S3 bucket. AWS CloudFormation generates the change set by comparing this template with the stack that you specified.</p> <p>Conditional: You must specify only <code>TemplateBody</code> or <code>TemplateURL</code>.</p>
-- @param ChangeSetType [ChangeSetType] <p>The type of change set operation. To create a change set for a new stack, specify <code>CREATE</code>. To create a change set for an existing stack, specify <code>UPDATE</code>.</p> <p>If you create a change set for a new stack, AWS Cloudformation creates a stack with a unique stack ID, but no template or resources. The stack will be in the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-describing-stacks.html#d0e11995"> <code>REVIEW_IN_PROGRESS</code> </a> state until you execute the change set.</p> <p>By default, AWS CloudFormation specifies <code>UPDATE</code>. You can't use the <code>UPDATE</code> type to create a change set for a new stack or the <code>CREATE</code> type to create a change set for an existing stack.</p>
-- @param Description [Description] <p>A description to help you identify this change set.</p>
-- Required parameter: StackName
-- Required parameter: ChangeSetName
function M.CreateChangeSetInput(ChangeSetName, TemplateBody, Parameters, Tags, RoleARN, UsePreviousTemplate, Capabilities, StackName, NotificationARNs, ResourceTypes, ClientToken, TemplateURL, ChangeSetType, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateChangeSetInput")
	local t = { 
		["ChangeSetName"] = ChangeSetName,
		["TemplateBody"] = TemplateBody,
		["Parameters"] = Parameters,
		["Tags"] = Tags,
		["RoleARN"] = RoleARN,
		["UsePreviousTemplate"] = UsePreviousTemplate,
		["Capabilities"] = Capabilities,
		["StackName"] = StackName,
		["NotificationARNs"] = NotificationARNs,
		["ResourceTypes"] = ResourceTypes,
		["ClientToken"] = ClientToken,
		["TemplateURL"] = TemplateURL,
		["ChangeSetType"] = ChangeSetType,
		["Description"] = Description,
	}
	M.AssertCreateChangeSetInput(t)
	return t
end

local DescribeStackEventsOutput_keys = { "StackEvents" = true, "NextToken" = true, nil }

function M.AssertDescribeStackEventsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackEventsOutput to be of type 'table'")
	if struct["StackEvents"] then M.AssertStackEvents(struct["StackEvents"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStackEventsOutput_keys[k], "DescribeStackEventsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackEventsOutput
-- <p>The output for a <a>DescribeStackEvents</a> action.</p>
-- @param StackEvents [StackEvents] <p>A list of <code>StackEvents</code> structures.</p>
-- @param NextToken [NextToken] <p>If the output exceeds 1 MB in size, a string that identifies the next page of events. If no additional page exists, this value is null.</p>
function M.DescribeStackEventsOutput(StackEvents, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStackEventsOutput")
	local t = { 
		["StackEvents"] = StackEvents,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeStackEventsOutput(t)
	return t
end

local ValidateTemplateOutput_keys = { "DeclaredTransforms" = true, "CapabilitiesReason" = true, "Description" = true, "Parameters" = true, "Capabilities" = true, nil }

function M.AssertValidateTemplateOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidateTemplateOutput to be of type 'table'")
	if struct["DeclaredTransforms"] then M.AssertTransformsList(struct["DeclaredTransforms"]) end
	if struct["CapabilitiesReason"] then M.AssertCapabilitiesReason(struct["CapabilitiesReason"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["Parameters"] then M.AssertTemplateParameters(struct["Parameters"]) end
	if struct["Capabilities"] then M.AssertCapabilities(struct["Capabilities"]) end
	for k,_ in pairs(struct) do
		assert(ValidateTemplateOutput_keys[k], "ValidateTemplateOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidateTemplateOutput
-- <p>The output for <a>ValidateTemplate</a> action.</p>
-- @param DeclaredTransforms [TransformsList] <p>A list of the transforms that are declared in the template.</p>
-- @param CapabilitiesReason [CapabilitiesReason] <p>The list of resources that generated the values in the <code>Capabilities</code> response element.</p>
-- @param Description [Description] <p>The description found within the template.</p>
-- @param Parameters [TemplateParameters] <p>A list of <code>TemplateParameter</code> structures.</p>
-- @param Capabilities [Capabilities] <p>The capabilities found within the template. If your template contains IAM resources, you must specify the CAPABILITY_IAM or CAPABILITY_NAMED_IAM value for this parameter when you use the <a>CreateStack</a> or <a>UpdateStack</a> actions with your template; otherwise, those actions return an InsufficientCapabilities error.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging IAM Resources in AWS CloudFormation Templates</a>.</p>
function M.ValidateTemplateOutput(DeclaredTransforms, CapabilitiesReason, Description, Parameters, Capabilities, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidateTemplateOutput")
	local t = { 
		["DeclaredTransforms"] = DeclaredTransforms,
		["CapabilitiesReason"] = CapabilitiesReason,
		["Description"] = Description,
		["Parameters"] = Parameters,
		["Capabilities"] = Capabilities,
	}
	M.AssertValidateTemplateOutput(t)
	return t
end

local ResourceTargetDefinition_keys = { "Attribute" = true, "Name" = true, "RequiresRecreation" = true, nil }

function M.AssertResourceTargetDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceTargetDefinition to be of type 'table'")
	if struct["Attribute"] then M.AssertResourceAttribute(struct["Attribute"]) end
	if struct["Name"] then M.AssertPropertyName(struct["Name"]) end
	if struct["RequiresRecreation"] then M.AssertRequiresRecreation(struct["RequiresRecreation"]) end
	for k,_ in pairs(struct) do
		assert(ResourceTargetDefinition_keys[k], "ResourceTargetDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceTargetDefinition
-- <p>The field that AWS CloudFormation will change, such as the name of a resource's property, and whether the resource will be recreated.</p>
-- @param Attribute [ResourceAttribute] <p>Indicates which resource attribute is triggering this update, such as a change in the resource attribute's <code>Metadata</code>, <code>Properties</code>, or <code>Tags</code>.</p>
-- @param Name [PropertyName] <p>If the <code>Attribute</code> value is <code>Properties</code>, the name of the property. For all other attributes, the value is null.</p>
-- @param RequiresRecreation [RequiresRecreation] <p>If the <code>Attribute</code> value is <code>Properties</code>, indicates whether a change to this property causes the resource to be recreated. The value can be <code>Never</code>, <code>Always</code>, or <code>Conditionally</code>. To determine the conditions for a <code>Conditionally</code> recreation, see the update behavior for that <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">property</a> in the AWS CloudFormation User Guide.</p>
function M.ResourceTargetDefinition(Attribute, Name, RequiresRecreation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceTargetDefinition")
	local t = { 
		["Attribute"] = Attribute,
		["Name"] = Name,
		["RequiresRecreation"] = RequiresRecreation,
	}
	M.AssertResourceTargetDefinition(t)
	return t
end

local LimitExceededException_keys = { nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>Quota for the resource has already been reached.</p>
function M.LimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
	}
	M.AssertLimitExceededException(t)
	return t
end

local TemplateParameter_keys = { "DefaultValue" = true, "NoEcho" = true, "Description" = true, "ParameterKey" = true, nil }

function M.AssertTemplateParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TemplateParameter to be of type 'table'")
	if struct["DefaultValue"] then M.AssertParameterValue(struct["DefaultValue"]) end
	if struct["NoEcho"] then M.AssertNoEcho(struct["NoEcho"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["ParameterKey"] then M.AssertParameterKey(struct["ParameterKey"]) end
	for k,_ in pairs(struct) do
		assert(TemplateParameter_keys[k], "TemplateParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TemplateParameter
-- <p>The TemplateParameter data type.</p>
-- @param DefaultValue [ParameterValue] <p>The default value associated with the parameter.</p>
-- @param NoEcho [NoEcho] <p>Flag indicating whether the parameter should be displayed as plain text in logs and UIs.</p>
-- @param Description [Description] <p>User defined description associated with the parameter.</p>
-- @param ParameterKey [ParameterKey] <p>The name associated with the parameter.</p>
function M.TemplateParameter(DefaultValue, NoEcho, Description, ParameterKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TemplateParameter")
	local t = { 
		["DefaultValue"] = DefaultValue,
		["NoEcho"] = NoEcho,
		["Description"] = Description,
		["ParameterKey"] = ParameterKey,
	}
	M.AssertTemplateParameter(t)
	return t
end

local ListStacksOutput_keys = { "StackSummaries" = true, "NextToken" = true, nil }

function M.AssertListStacksOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStacksOutput to be of type 'table'")
	if struct["StackSummaries"] then M.AssertStackSummaries(struct["StackSummaries"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListStacksOutput_keys[k], "ListStacksOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStacksOutput
-- <p>The output for <a>ListStacks</a> action.</p>
-- @param StackSummaries [StackSummaries] <p>A list of <code>StackSummary</code> structures containing information about the specified stacks.</p>
-- @param NextToken [NextToken] <p>If the output exceeds 1 MB in size, a string that identifies the next page of stacks. If no additional page exists, this value is null.</p>
function M.ListStacksOutput(StackSummaries, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStacksOutput")
	local t = { 
		["StackSummaries"] = StackSummaries,
		["NextToken"] = NextToken,
	}
	M.AssertListStacksOutput(t)
	return t
end

local DescribeChangeSetOutput_keys = { "StackId" = true, "Status" = true, "ChangeSetName" = true, "Description" = true, "Parameters" = true, "Tags" = true, "Changes" = true, "CreationTime" = true, "StatusReason" = true, "StackName" = true, "NotificationARNs" = true, "Capabilities" = true, "ExecutionStatus" = true, "NextToken" = true, "ChangeSetId" = true, nil }

function M.AssertDescribeChangeSetOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeChangeSetOutput to be of type 'table'")
	if struct["StackId"] then M.AssertStackId(struct["StackId"]) end
	if struct["Status"] then M.AssertChangeSetStatus(struct["Status"]) end
	if struct["ChangeSetName"] then M.AssertChangeSetName(struct["ChangeSetName"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["Parameters"] then M.AssertParameters(struct["Parameters"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	if struct["Changes"] then M.AssertChanges(struct["Changes"]) end
	if struct["CreationTime"] then M.AssertCreationTime(struct["CreationTime"]) end
	if struct["StatusReason"] then M.AssertChangeSetStatusReason(struct["StatusReason"]) end
	if struct["StackName"] then M.AssertStackName(struct["StackName"]) end
	if struct["NotificationARNs"] then M.AssertNotificationARNs(struct["NotificationARNs"]) end
	if struct["Capabilities"] then M.AssertCapabilities(struct["Capabilities"]) end
	if struct["ExecutionStatus"] then M.AssertExecutionStatus(struct["ExecutionStatus"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["ChangeSetId"] then M.AssertChangeSetId(struct["ChangeSetId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeChangeSetOutput_keys[k], "DescribeChangeSetOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeChangeSetOutput
-- <p>The output for the <a>DescribeChangeSet</a> action.</p>
-- @param StackId [StackId] <p>The ARN of the stack that is associated with the change set.</p>
-- @param Status [ChangeSetStatus] <p>The current status of the change set, such as <code>CREATE_IN_PROGRESS</code>, <code>CREATE_COMPLETE</code>, or <code>FAILED</code>.</p>
-- @param ChangeSetName [ChangeSetName] <p>The name of the change set.</p>
-- @param Description [Description] <p>Information about the change set.</p>
-- @param Parameters [Parameters] <p>A list of <code>Parameter</code> structures that describes the input parameters and their values used to create the change set. For more information, see the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html">Parameter</a> data type.</p>
-- @param Tags [Tags] <p>If you execute the change set, the tags that will be associated with the stack.</p>
-- @param Changes [Changes] <p>A list of <code>Change</code> structures that describes the resources AWS CloudFormation changes if you execute the change set.</p>
-- @param CreationTime [CreationTime] <p>The start time when the change set was created, in UTC.</p>
-- @param StatusReason [ChangeSetStatusReason] <p>A description of the change set's status. For example, if your attempt to create a change set failed, AWS CloudFormation shows the error message.</p>
-- @param StackName [StackName] <p>The name of the stack that is associated with the change set.</p>
-- @param NotificationARNs [NotificationARNs] <p>The ARNs of the Amazon Simple Notification Service (Amazon SNS) topics that will be associated with the stack if you execute the change set.</p>
-- @param Capabilities [Capabilities] <p>If you execute the change set, the list of capabilities that were explicitly acknowledged when the change set was created.</p>
-- @param ExecutionStatus [ExecutionStatus] <p>If the change set execution status is <code>AVAILABLE</code>, you can execute the change set. If you can’t execute the change set, the status indicates why. For example, a change set might be in an <code>UNAVAILABLE</code> state because AWS CloudFormation is still creating it or in an <code>OBSOLETE</code> state because the stack was already updated.</p>
-- @param NextToken [NextToken] <p>If the output exceeds 1 MB, a string that identifies the next page of changes. If there is no additional page, this value is null.</p>
-- @param ChangeSetId [ChangeSetId] <p>The ARN of the change set.</p>
function M.DescribeChangeSetOutput(StackId, Status, ChangeSetName, Description, Parameters, Tags, Changes, CreationTime, StatusReason, StackName, NotificationARNs, Capabilities, ExecutionStatus, NextToken, ChangeSetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeChangeSetOutput")
	local t = { 
		["StackId"] = StackId,
		["Status"] = Status,
		["ChangeSetName"] = ChangeSetName,
		["Description"] = Description,
		["Parameters"] = Parameters,
		["Tags"] = Tags,
		["Changes"] = Changes,
		["CreationTime"] = CreationTime,
		["StatusReason"] = StatusReason,
		["StackName"] = StackName,
		["NotificationARNs"] = NotificationARNs,
		["Capabilities"] = Capabilities,
		["ExecutionStatus"] = ExecutionStatus,
		["NextToken"] = NextToken,
		["ChangeSetId"] = ChangeSetId,
	}
	M.AssertDescribeChangeSetOutput(t)
	return t
end

local UpdateStackInput_keys = { "Tags" = true, "StackPolicyDuringUpdateURL" = true, "Parameters" = true, "TemplateBody" = true, "StackPolicyURL" = true, "RoleARN" = true, "UsePreviousTemplate" = true, "StackPolicyBody" = true, "Capabilities" = true, "StackName" = true, "StackPolicyDuringUpdateBody" = true, "ResourceTypes" = true, "NotificationARNs" = true, "ClientRequestToken" = true, "TemplateURL" = true, nil }

function M.AssertUpdateStackInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStackInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	if struct["StackPolicyDuringUpdateURL"] then M.AssertStackPolicyDuringUpdateURL(struct["StackPolicyDuringUpdateURL"]) end
	if struct["Parameters"] then M.AssertParameters(struct["Parameters"]) end
	if struct["TemplateBody"] then M.AssertTemplateBody(struct["TemplateBody"]) end
	if struct["StackPolicyURL"] then M.AssertStackPolicyURL(struct["StackPolicyURL"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["UsePreviousTemplate"] then M.AssertUsePreviousTemplate(struct["UsePreviousTemplate"]) end
	if struct["StackPolicyBody"] then M.AssertStackPolicyBody(struct["StackPolicyBody"]) end
	if struct["Capabilities"] then M.AssertCapabilities(struct["Capabilities"]) end
	if struct["StackName"] then M.AssertStackName(struct["StackName"]) end
	if struct["StackPolicyDuringUpdateBody"] then M.AssertStackPolicyDuringUpdateBody(struct["StackPolicyDuringUpdateBody"]) end
	if struct["ResourceTypes"] then M.AssertResourceTypes(struct["ResourceTypes"]) end
	if struct["NotificationARNs"] then M.AssertNotificationARNs(struct["NotificationARNs"]) end
	if struct["ClientRequestToken"] then M.AssertClientRequestToken(struct["ClientRequestToken"]) end
	if struct["TemplateURL"] then M.AssertTemplateURL(struct["TemplateURL"]) end
	for k,_ in pairs(struct) do
		assert(UpdateStackInput_keys[k], "UpdateStackInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStackInput
-- <p>The input for an <a>UpdateStack</a> action.</p>
-- @param Tags [Tags] <p>Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to supported resources in the stack. You can specify a maximum number of 10 tags.</p> <p>If you don't specify this parameter, AWS CloudFormation doesn't modify the stack's tags. If you specify an empty value, AWS CloudFormation removes all associated tags.</p>
-- @param StackPolicyDuringUpdateURL [StackPolicyDuringUpdateURL] <p>Location of a file containing the temporary overriding stack policy. The URL must point to a policy (max size: 16KB) located in an S3 bucket in the same region as the stack. You can specify either the <code>StackPolicyDuringUpdateBody</code> or the <code>StackPolicyDuringUpdateURL</code> parameter, but not both.</p> <p>If you want to update protected resources, specify a temporary overriding stack policy during this update. If you do not specify a stack policy, the current policy that is associated with the stack will be used.</p>
-- @param Parameters [Parameters] <p>A list of <code>Parameter</code> structures that specify input parameters for the stack. For more information, see the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html">Parameter</a> data type.</p>
-- @param TemplateBody [TemplateBody] <p>Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. (For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.)</p> <p>Conditional: You must specify only one of the following parameters: <code>TemplateBody</code>, <code>TemplateURL</code>, or set the <code>UsePreviousTemplate</code> to <code>true</code>.</p>
-- @param StackPolicyURL [StackPolicyURL] <p>Location of a file containing the updated stack policy. The URL must point to a policy (max size: 16KB) located in an S3 bucket in the same region as the stack. You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but not both.</p> <p>You might update the stack policy, for example, in order to protect a new resource that you created during a stack update. If you do not specify a stack policy, the current policy that is associated with the stack is unchanged.</p>
-- @param RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to update the stack. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation always uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege.</p> <p>If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.</p>
-- @param UsePreviousTemplate [UsePreviousTemplate] <p>Reuse the existing template that is associated with the stack that you are updating.</p> <p>Conditional: You must specify only one of the following parameters: <code>TemplateBody</code>, <code>TemplateURL</code>, or set the <code>UsePreviousTemplate</code> to <code>true</code>.</p>
-- @param StackPolicyBody [StackPolicyBody] <p>Structure containing a new stack policy body. You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but not both.</p> <p>You might update the stack policy, for example, in order to protect a new resource that you created during a stack update. If you do not specify a stack policy, the current policy that is associated with the stack is unchanged.</p>
-- @param Capabilities [Capabilities] <p>A list of values that you must specify before AWS CloudFormation can update certain stacks. Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter.</p> <p>The only valid values are <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>. The following resources require you to specify this parameter: <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html"> AWS::IAM::AccessKey</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html"> AWS::IAM::Group</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html"> AWS::IAM::InstanceProfile</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html"> AWS::IAM::Policy</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html"> AWS::IAM::Role</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html"> AWS::IAM::User</a>, and <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html"> AWS::IAM::UserToGroupAddition</a>. If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.</p> <p>If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify <code>CAPABILITY_NAMED_IAM</code>. If you don't specify this parameter, this action returns an <code>InsufficientCapabilities</code> error.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging IAM Resources in AWS CloudFormation Templates</a>.</p>
-- @param StackName [StackName] <p>The name or unique stack ID of the stack to update.</p>
-- @param StackPolicyDuringUpdateBody [StackPolicyDuringUpdateBody] <p>Structure containing the temporary overriding stack policy body. You can specify either the <code>StackPolicyDuringUpdateBody</code> or the <code>StackPolicyDuringUpdateURL</code> parameter, but not both.</p> <p>If you want to update protected resources, specify a temporary overriding stack policy during this update. If you do not specify a stack policy, the current policy that is associated with the stack will be used.</p>
-- @param ResourceTypes [ResourceTypes] <p>The template resource types that you have permissions to work with for this update stack action, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or <code>Custom::MyCustomInstance</code>.</p> <p>If the list of resource types doesn't include a resource that you're updating, the stack update fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for AWS CloudFormation-specific condition keys in IAM policies. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html">Controlling Access with AWS Identity and Access Management</a>.</p>
-- @param NotificationARNs [NotificationARNs] <p>Amazon Simple Notification Service topic Amazon Resource Names (ARNs) that AWS CloudFormation associates with the stack. Specify an empty list to remove all notification topics.</p>
-- @param ClientRequestToken [ClientRequestToken] <p>A unique identifier for this <code>UpdateStack</code> request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to update a stack with the same name. You might retry <code>UpdateStack</code> requests to ensure that AWS CloudFormation successfully received them.</p>
-- @param TemplateURL [TemplateURL] <p>Location of file containing the template body. The URL must point to a template that is located in an Amazon S3 bucket. For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must specify only one of the following parameters: <code>TemplateBody</code>, <code>TemplateURL</code>, or set the <code>UsePreviousTemplate</code> to <code>true</code>.</p>
-- Required parameter: StackName
function M.UpdateStackInput(Tags, StackPolicyDuringUpdateURL, Parameters, TemplateBody, StackPolicyURL, RoleARN, UsePreviousTemplate, StackPolicyBody, Capabilities, StackName, StackPolicyDuringUpdateBody, ResourceTypes, NotificationARNs, ClientRequestToken, TemplateURL, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateStackInput")
	local t = { 
		["Tags"] = Tags,
		["StackPolicyDuringUpdateURL"] = StackPolicyDuringUpdateURL,
		["Parameters"] = Parameters,
		["TemplateBody"] = TemplateBody,
		["StackPolicyURL"] = StackPolicyURL,
		["RoleARN"] = RoleARN,
		["UsePreviousTemplate"] = UsePreviousTemplate,
		["StackPolicyBody"] = StackPolicyBody,
		["Capabilities"] = Capabilities,
		["StackName"] = StackName,
		["StackPolicyDuringUpdateBody"] = StackPolicyDuringUpdateBody,
		["ResourceTypes"] = ResourceTypes,
		["NotificationARNs"] = NotificationARNs,
		["ClientRequestToken"] = ClientRequestToken,
		["TemplateURL"] = TemplateURL,
	}
	M.AssertUpdateStackInput(t)
	return t
end

local StackResource_keys = { "StackId" = true, "ResourceStatus" = true, "Description" = true, "ResourceType" = true, "Timestamp" = true, "ResourceStatusReason" = true, "StackName" = true, "PhysicalResourceId" = true, "LogicalResourceId" = true, nil }

function M.AssertStackResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackResource to be of type 'table'")
	assert(struct["LogicalResourceId"], "Expected key LogicalResourceId to exist in table")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["Timestamp"], "Expected key Timestamp to exist in table")
	assert(struct["ResourceStatus"], "Expected key ResourceStatus to exist in table")
	if struct["StackId"] then M.AssertStackId(struct["StackId"]) end
	if struct["ResourceStatus"] then M.AssertResourceStatus(struct["ResourceStatus"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["ResourceType"] then M.AssertResourceType(struct["ResourceType"]) end
	if struct["Timestamp"] then M.AssertTimestamp(struct["Timestamp"]) end
	if struct["ResourceStatusReason"] then M.AssertResourceStatusReason(struct["ResourceStatusReason"]) end
	if struct["StackName"] then M.AssertStackName(struct["StackName"]) end
	if struct["PhysicalResourceId"] then M.AssertPhysicalResourceId(struct["PhysicalResourceId"]) end
	if struct["LogicalResourceId"] then M.AssertLogicalResourceId(struct["LogicalResourceId"]) end
	for k,_ in pairs(struct) do
		assert(StackResource_keys[k], "StackResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackResource
-- <p>The StackResource data type.</p>
-- @param StackId [StackId] <p>Unique identifier of the stack.</p>
-- @param ResourceStatus [ResourceStatus] <p>Current status of the resource.</p>
-- @param Description [Description] <p>User defined description associated with the resource.</p>
-- @param ResourceType [ResourceType] <p>Type of resource. (For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html"> AWS Resource Types Reference</a> in the AWS CloudFormation User Guide.)</p>
-- @param Timestamp [Timestamp] <p>Time the status was updated.</p>
-- @param ResourceStatusReason [ResourceStatusReason] <p>Success/failure message associated with the resource.</p>
-- @param StackName [StackName] <p>The name associated with the stack.</p>
-- @param PhysicalResourceId [PhysicalResourceId] <p>The name or unique identifier that corresponds to a physical instance ID of a resource supported by AWS CloudFormation.</p>
-- @param LogicalResourceId [LogicalResourceId] <p>The logical name of the resource specified in the template.</p>
-- Required parameter: LogicalResourceId
-- Required parameter: ResourceType
-- Required parameter: Timestamp
-- Required parameter: ResourceStatus
function M.StackResource(StackId, ResourceStatus, Description, ResourceType, Timestamp, ResourceStatusReason, StackName, PhysicalResourceId, LogicalResourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StackResource")
	local t = { 
		["StackId"] = StackId,
		["ResourceStatus"] = ResourceStatus,
		["Description"] = Description,
		["ResourceType"] = ResourceType,
		["Timestamp"] = Timestamp,
		["ResourceStatusReason"] = ResourceStatusReason,
		["StackName"] = StackName,
		["PhysicalResourceId"] = PhysicalResourceId,
		["LogicalResourceId"] = LogicalResourceId,
	}
	M.AssertStackResource(t)
	return t
end

local Parameter_keys = { "ParameterValue" = true, "UsePreviousValue" = true, "ParameterKey" = true, nil }

function M.AssertParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Parameter to be of type 'table'")
	if struct["ParameterValue"] then M.AssertParameterValue(struct["ParameterValue"]) end
	if struct["UsePreviousValue"] then M.AssertUsePreviousValue(struct["UsePreviousValue"]) end
	if struct["ParameterKey"] then M.AssertParameterKey(struct["ParameterKey"]) end
	for k,_ in pairs(struct) do
		assert(Parameter_keys[k], "Parameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Parameter
-- <p>The Parameter data type.</p>
-- @param ParameterValue [ParameterValue] <p>The value associated with the parameter.</p>
-- @param UsePreviousValue [UsePreviousValue] <p>During a stack update, use the existing parameter value that the stack is using for a given parameter key. If you specify <code>true</code>, do not specify a parameter value.</p>
-- @param ParameterKey [ParameterKey] <p>The key associated with the parameter. If you don't specify a key and value for a particular parameter, AWS CloudFormation uses the default value that is specified in your template.</p>
function M.Parameter(ParameterValue, UsePreviousValue, ParameterKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Parameter")
	local t = { 
		["ParameterValue"] = ParameterValue,
		["UsePreviousValue"] = UsePreviousValue,
		["ParameterKey"] = ParameterKey,
	}
	M.AssertParameter(t)
	return t
end

local ListImportsOutput_keys = { "Imports" = true, "NextToken" = true, nil }

function M.AssertListImportsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListImportsOutput to be of type 'table'")
	if struct["Imports"] then M.AssertImports(struct["Imports"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListImportsOutput_keys[k], "ListImportsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListImportsOutput
--  
-- @param Imports [Imports] <p>A list of stack names that are importing the specified exported output value. </p>
-- @param NextToken [NextToken] <p>A string that identifies the next page of exports. If there is no additional page, this value is null.</p>
function M.ListImportsOutput(Imports, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListImportsOutput")
	local t = { 
		["Imports"] = Imports,
		["NextToken"] = NextToken,
	}
	M.AssertListImportsOutput(t)
	return t
end

local DescribeStackResourceOutput_keys = { "StackResourceDetail" = true, nil }

function M.AssertDescribeStackResourceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackResourceOutput to be of type 'table'")
	if struct["StackResourceDetail"] then M.AssertStackResourceDetail(struct["StackResourceDetail"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStackResourceOutput_keys[k], "DescribeStackResourceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackResourceOutput
-- <p>The output for a <a>DescribeStackResource</a> action.</p>
-- @param StackResourceDetail [StackResourceDetail] <p>A <code>StackResourceDetail</code> structure containing the description of the specified resource in the specified stack.</p>
function M.DescribeStackResourceOutput(StackResourceDetail, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStackResourceOutput")
	local t = { 
		["StackResourceDetail"] = StackResourceDetail,
	}
	M.AssertDescribeStackResourceOutput(t)
	return t
end

local GetTemplateSummaryOutput_keys = { "CapabilitiesReason" = true, "Description" = true, "Parameters" = true, "Capabilities" = true, "ResourceTypes" = true, "Version" = true, "DeclaredTransforms" = true, "Metadata" = true, nil }

function M.AssertGetTemplateSummaryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTemplateSummaryOutput to be of type 'table'")
	if struct["CapabilitiesReason"] then M.AssertCapabilitiesReason(struct["CapabilitiesReason"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["Parameters"] then M.AssertParameterDeclarations(struct["Parameters"]) end
	if struct["Capabilities"] then M.AssertCapabilities(struct["Capabilities"]) end
	if struct["ResourceTypes"] then M.AssertResourceTypes(struct["ResourceTypes"]) end
	if struct["Version"] then M.AssertVersion(struct["Version"]) end
	if struct["DeclaredTransforms"] then M.AssertTransformsList(struct["DeclaredTransforms"]) end
	if struct["Metadata"] then M.AssertMetadata(struct["Metadata"]) end
	for k,_ in pairs(struct) do
		assert(GetTemplateSummaryOutput_keys[k], "GetTemplateSummaryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTemplateSummaryOutput
-- <p>The output for the <a>GetTemplateSummary</a> action.</p>
-- @param CapabilitiesReason [CapabilitiesReason] <p>The list of resources that generated the values in the <code>Capabilities</code> response element.</p>
-- @param Description [Description] <p>The value that is defined in the <code>Description</code> property of the template.</p>
-- @param Parameters [ParameterDeclarations] <p>A list of parameter declarations that describe various properties for each parameter.</p>
-- @param Capabilities [Capabilities] <p>The capabilities found within the template. If your template contains IAM resources, you must specify the CAPABILITY_IAM or CAPABILITY_NAMED_IAM value for this parameter when you use the <a>CreateStack</a> or <a>UpdateStack</a> actions with your template; otherwise, those actions return an InsufficientCapabilities error.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging IAM Resources in AWS CloudFormation Templates</a>.</p>
-- @param ResourceTypes [ResourceTypes] <p>A list of all the template resource types that are defined in the template, such as <code>AWS::EC2::Instance</code>, <code>AWS::Dynamo::Table</code>, and <code>Custom::MyCustomInstance</code>.</p>
-- @param Version [Version] <p>The AWS template format version, which identifies the capabilities of the template.</p>
-- @param DeclaredTransforms [TransformsList] <p>A list of the transforms that are declared in the template.</p>
-- @param Metadata [Metadata] <p>The value that is defined for the <code>Metadata</code> property of the template.</p>
function M.GetTemplateSummaryOutput(CapabilitiesReason, Description, Parameters, Capabilities, ResourceTypes, Version, DeclaredTransforms, Metadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTemplateSummaryOutput")
	local t = { 
		["CapabilitiesReason"] = CapabilitiesReason,
		["Description"] = Description,
		["Parameters"] = Parameters,
		["Capabilities"] = Capabilities,
		["ResourceTypes"] = ResourceTypes,
		["Version"] = Version,
		["DeclaredTransforms"] = DeclaredTransforms,
		["Metadata"] = Metadata,
	}
	M.AssertGetTemplateSummaryOutput(t)
	return t
end

local ResourceChangeDetail_keys = { "CausingEntity" = true, "ChangeSource" = true, "Evaluation" = true, "Target" = true, nil }

function M.AssertResourceChangeDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceChangeDetail to be of type 'table'")
	if struct["CausingEntity"] then M.AssertCausingEntity(struct["CausingEntity"]) end
	if struct["ChangeSource"] then M.AssertChangeSource(struct["ChangeSource"]) end
	if struct["Evaluation"] then M.AssertEvaluationType(struct["Evaluation"]) end
	if struct["Target"] then M.AssertResourceTargetDefinition(struct["Target"]) end
	for k,_ in pairs(struct) do
		assert(ResourceChangeDetail_keys[k], "ResourceChangeDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceChangeDetail
-- <p>For a resource with <code>Modify</code> as the action, the <code>ResourceChange</code> structure describes the changes AWS CloudFormation will make to that resource.</p>
-- @param CausingEntity [CausingEntity] <p>The identity of the entity that triggered this change. This entity is a member of the group that is specified by the <code>ChangeSource</code> field. For example, if you modified the value of the <code>KeyPairName</code> parameter, the <code>CausingEntity</code> is the name of the parameter (<code>KeyPairName</code>).</p> <p>If the <code>ChangeSource</code> value is <code>DirectModification</code>, no value is given for <code>CausingEntity</code>.</p>
-- @param ChangeSource [ChangeSource] <p>The group to which the <code>CausingEntity</code> value belongs. There are five entity groups:</p> <ul> <li> <p> <code>ResourceReference</code> entities are <code>Ref</code> intrinsic functions that refer to resources in the template, such as <code>{ "Ref" : "MyEC2InstanceResource" }</code>.</p> </li> <li> <p> <code>ParameterReference</code> entities are <code>Ref</code> intrinsic functions that get template parameter values, such as <code>{ "Ref" : "MyPasswordParameter" }</code>.</p> </li> <li> <p> <code>ResourceAttribute</code> entities are <code>Fn::GetAtt</code> intrinsic functions that get resource attribute values, such as <code>{ "Fn::GetAtt" : [ "MyEC2InstanceResource", "PublicDnsName" ] }</code>.</p> </li> <li> <p> <code>DirectModification</code> entities are changes that are made directly to the template.</p> </li> <li> <p> <code>Automatic</code> entities are <code>AWS::CloudFormation::Stack</code> resource types, which are also known as nested stacks. If you made no changes to the <code>AWS::CloudFormation::Stack</code> resource, AWS CloudFormation sets the <code>ChangeSource</code> to <code>Automatic</code> because the nested stack's template might have changed. Changes to a nested stack's template aren't visible to AWS CloudFormation until you run an update on the parent stack.</p> </li> </ul>
-- @param Evaluation [EvaluationType] <p>Indicates whether AWS CloudFormation can determine the target value, and whether the target value will change before you execute a change set.</p> <p>For <code>Static</code> evaluations, AWS CloudFormation can determine that the target value will change, and its value. For example, if you directly modify the <code>InstanceType</code> property of an EC2 instance, AWS CloudFormation knows that this property value will change, and its value, so this is a <code>Static</code> evaluation.</p> <p>For <code>Dynamic</code> evaluations, cannot determine the target value because it depends on the result of an intrinsic function, such as a <code>Ref</code> or <code>Fn::GetAtt</code> intrinsic function, when the stack is updated. For example, if your template includes a reference to a resource that is conditionally recreated, the value of the reference (the physical ID of the resource) might change, depending on if the resource is recreated. If the resource is recreated, it will have a new physical ID, so all references to that resource will also be updated.</p>
-- @param Target [ResourceTargetDefinition] <p>A <code>ResourceTargetDefinition</code> structure that describes the field that AWS CloudFormation will change and whether the resource will be recreated.</p>
function M.ResourceChangeDetail(CausingEntity, ChangeSource, Evaluation, Target, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceChangeDetail")
	local t = { 
		["CausingEntity"] = CausingEntity,
		["ChangeSource"] = ChangeSource,
		["Evaluation"] = Evaluation,
		["Target"] = Target,
	}
	M.AssertResourceChangeDetail(t)
	return t
end

local GetTemplateInput_keys = { "StackName" = true, "TemplateStage" = true, "ChangeSetName" = true, nil }

function M.AssertGetTemplateInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTemplateInput to be of type 'table'")
	if struct["StackName"] then M.AssertStackName(struct["StackName"]) end
	if struct["TemplateStage"] then M.AssertTemplateStage(struct["TemplateStage"]) end
	if struct["ChangeSetName"] then M.AssertChangeSetNameOrId(struct["ChangeSetName"]) end
	for k,_ in pairs(struct) do
		assert(GetTemplateInput_keys[k], "GetTemplateInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTemplateInput
-- <p>The input for a <a>GetTemplate</a> action.</p>
-- @param StackName [StackName] <p>The name or the unique stack ID that is associated with the stack, which are not always interchangeable:</p> <ul> <li> <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p> </li> <li> <p>Deleted stacks: You must specify the unique stack ID.</p> </li> </ul> <p>Default: There is no default value.</p>
-- @param TemplateStage [TemplateStage] <p>For templates that include transforms, the stage of the template that AWS CloudFormation returns. To get the user-submitted template, specify <code>Original</code>. To get the template after AWS CloudFormation has processed all transforms, specify <code>Processed</code>. </p> <p>If the template doesn't include transforms, <code>Original</code> and <code>Processed</code> return the same template. By default, AWS CloudFormation specifies <code>Original</code>. </p>
-- @param ChangeSetName [ChangeSetNameOrId] <p>The name or Amazon Resource Name (ARN) of a change set for which AWS CloudFormation returns the associated template. If you specify a name, you must also specify the <code>StackName</code>.</p>
function M.GetTemplateInput(StackName, TemplateStage, ChangeSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTemplateInput")
	local t = { 
		["StackName"] = StackName,
		["TemplateStage"] = TemplateStage,
		["ChangeSetName"] = ChangeSetName,
	}
	M.AssertGetTemplateInput(t)
	return t
end

local ListImportsInput_keys = { "NextToken" = true, "ExportName" = true, nil }

function M.AssertListImportsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListImportsInput to be of type 'table'")
	assert(struct["ExportName"], "Expected key ExportName to exist in table")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["ExportName"] then M.AssertExportName(struct["ExportName"]) end
	for k,_ in pairs(struct) do
		assert(ListImportsInput_keys[k], "ListImportsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListImportsInput
--  
-- @param NextToken [NextToken] <p>A string (provided by the <a>ListImports</a> response output) that identifies the next page of stacks that are importing the specified exported output value. </p>
-- @param ExportName [ExportName] <p>The name of the exported output value. AWS CloudFormation returns the stack names that are importing this value. </p>
-- Required parameter: ExportName
function M.ListImportsInput(NextToken, ExportName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListImportsInput")
	local t = { 
		["NextToken"] = NextToken,
		["ExportName"] = ExportName,
	}
	M.AssertListImportsInput(t)
	return t
end

local ListStackResourcesOutput_keys = { "NextToken" = true, "StackResourceSummaries" = true, nil }

function M.AssertListStackResourcesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStackResourcesOutput to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["StackResourceSummaries"] then M.AssertStackResourceSummaries(struct["StackResourceSummaries"]) end
	for k,_ in pairs(struct) do
		assert(ListStackResourcesOutput_keys[k], "ListStackResourcesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStackResourcesOutput
-- <p>The output for a <a>ListStackResources</a> action.</p>
-- @param NextToken [NextToken] <p>If the output exceeds 1 MB, a string that identifies the next page of stack resources. If no additional page exists, this value is null.</p>
-- @param StackResourceSummaries [StackResourceSummaries] <p>A list of <code>StackResourceSummary</code> structures.</p>
function M.ListStackResourcesOutput(NextToken, StackResourceSummaries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStackResourcesOutput")
	local t = { 
		["NextToken"] = NextToken,
		["StackResourceSummaries"] = StackResourceSummaries,
	}
	M.AssertListStackResourcesOutput(t)
	return t
end

local ResourceChange_keys = { "ResourceType" = true, "PhysicalResourceId" = true, "Details" = true, "Action" = true, "Scope" = true, "LogicalResourceId" = true, "Replacement" = true, nil }

function M.AssertResourceChange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceChange to be of type 'table'")
	if struct["ResourceType"] then M.AssertResourceType(struct["ResourceType"]) end
	if struct["PhysicalResourceId"] then M.AssertPhysicalResourceId(struct["PhysicalResourceId"]) end
	if struct["Details"] then M.AssertResourceChangeDetails(struct["Details"]) end
	if struct["Action"] then M.AssertChangeAction(struct["Action"]) end
	if struct["Scope"] then M.AssertScope(struct["Scope"]) end
	if struct["LogicalResourceId"] then M.AssertLogicalResourceId(struct["LogicalResourceId"]) end
	if struct["Replacement"] then M.AssertReplacement(struct["Replacement"]) end
	for k,_ in pairs(struct) do
		assert(ResourceChange_keys[k], "ResourceChange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceChange
-- <p>The <code>ResourceChange</code> structure describes the resource and the action that AWS CloudFormation will perform on it if you execute this change set.</p>
-- @param ResourceType [ResourceType] <p>The type of AWS CloudFormation resource, such as <code>AWS::S3::Bucket</code>.</p>
-- @param PhysicalResourceId [PhysicalResourceId] <p>The resource's physical ID (resource name). Resources that you are adding don't have physical IDs because they haven't been created.</p>
-- @param Details [ResourceChangeDetails] <p>For the <code>Modify</code> action, a list of <code>ResourceChangeDetail</code> structures that describes the changes that AWS CloudFormation will make to the resource. </p>
-- @param Action [ChangeAction] <p>The action that AWS CloudFormation takes on the resource, such as <code>Add</code> (adds a new resource), <code>Modify</code> (changes a resource), or <code>Remove</code> (deletes a resource).</p>
-- @param Scope [Scope] <p>For the <code>Modify</code> action, indicates which resource attribute is triggering this update, such as a change in the resource attribute's <code>Metadata</code>, <code>Properties</code>, or <code>Tags</code>.</p>
-- @param LogicalResourceId [LogicalResourceId] <p>The resource's logical ID, which is defined in the stack's template.</p>
-- @param Replacement [Replacement] <p>For the <code>Modify</code> action, indicates whether AWS CloudFormation will replace the resource by creating a new one and deleting the old one. This value depends on the value of the <code>RequiresRecreation</code> property in the <code>ResourceTargetDefinition</code> structure. For example, if the <code>RequiresRecreation</code> field is <code>Always</code> and the <code>Evaluation</code> field is <code>Static</code>, <code>Replacement</code> is <code>True</code>. If the <code>RequiresRecreation</code> field is <code>Always</code> and the <code>Evaluation</code> field is <code>Dynamic</code>, <code>Replacement</code> is <code>Conditionally</code>.</p> <p>If you have multiple changes with different <code>RequiresRecreation</code> values, the <code>Replacement</code> value depends on the change with the most impact. A <code>RequiresRecreation</code> value of <code>Always</code> has the most impact, followed by <code>Conditionally</code>, and then <code>Never</code>.</p>
function M.ResourceChange(ResourceType, PhysicalResourceId, Details, Action, Scope, LogicalResourceId, Replacement, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceChange")
	local t = { 
		["ResourceType"] = ResourceType,
		["PhysicalResourceId"] = PhysicalResourceId,
		["Details"] = Details,
		["Action"] = Action,
		["Scope"] = Scope,
		["LogicalResourceId"] = LogicalResourceId,
		["Replacement"] = Replacement,
	}
	M.AssertResourceChange(t)
	return t
end

local DescribeStackResourcesInput_keys = { "StackName" = true, "PhysicalResourceId" = true, "LogicalResourceId" = true, nil }

function M.AssertDescribeStackResourcesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackResourcesInput to be of type 'table'")
	if struct["StackName"] then M.AssertStackName(struct["StackName"]) end
	if struct["PhysicalResourceId"] then M.AssertPhysicalResourceId(struct["PhysicalResourceId"]) end
	if struct["LogicalResourceId"] then M.AssertLogicalResourceId(struct["LogicalResourceId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStackResourcesInput_keys[k], "DescribeStackResourcesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackResourcesInput
-- <p>The input for <a>DescribeStackResources</a> action.</p>
-- @param StackName [StackName] <p>The name or the unique stack ID that is associated with the stack, which are not always interchangeable:</p> <ul> <li> <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p> </li> <li> <p>Deleted stacks: You must specify the unique stack ID.</p> </li> </ul> <p>Default: There is no default value.</p> <p>Required: Conditional. If you do not specify <code>StackName</code>, you must specify <code>PhysicalResourceId</code>.</p>
-- @param PhysicalResourceId [PhysicalResourceId] <p>The name or unique identifier that corresponds to a physical instance ID of a resource supported by AWS CloudFormation.</p> <p>For example, for an Amazon Elastic Compute Cloud (EC2) instance, <code>PhysicalResourceId</code> corresponds to the <code>InstanceId</code>. You can pass the EC2 <code>InstanceId</code> to <code>DescribeStackResources</code> to find which stack the instance belongs to and what other resources are part of the stack.</p> <p>Required: Conditional. If you do not specify <code>PhysicalResourceId</code>, you must specify <code>StackName</code>.</p> <p>Default: There is no default value.</p>
-- @param LogicalResourceId [LogicalResourceId] <p>The logical name of the resource as specified in the template.</p> <p>Default: There is no default value.</p>
function M.DescribeStackResourcesInput(StackName, PhysicalResourceId, LogicalResourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStackResourcesInput")
	local t = { 
		["StackName"] = StackName,
		["PhysicalResourceId"] = PhysicalResourceId,
		["LogicalResourceId"] = LogicalResourceId,
	}
	M.AssertDescribeStackResourcesInput(t)
	return t
end

local DeleteChangeSetInput_keys = { "StackName" = true, "ChangeSetName" = true, nil }

function M.AssertDeleteChangeSetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteChangeSetInput to be of type 'table'")
	assert(struct["ChangeSetName"], "Expected key ChangeSetName to exist in table")
	if struct["StackName"] then M.AssertStackNameOrId(struct["StackName"]) end
	if struct["ChangeSetName"] then M.AssertChangeSetNameOrId(struct["ChangeSetName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteChangeSetInput_keys[k], "DeleteChangeSetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteChangeSetInput
-- <p>The input for the <a>DeleteChangeSet</a> action.</p>
-- @param StackName [StackNameOrId] <p>If you specified the name of a change set to delete, specify the stack name or ID (ARN) that is associated with it.</p>
-- @param ChangeSetName [ChangeSetNameOrId] <p>The name or Amazon Resource Name (ARN) of the change set that you want to delete.</p>
-- Required parameter: ChangeSetName
function M.DeleteChangeSetInput(StackName, ChangeSetName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteChangeSetInput")
	local t = { 
		["StackName"] = StackName,
		["ChangeSetName"] = ChangeSetName,
	}
	M.AssertDeleteChangeSetInput(t)
	return t
end

local ExecuteChangeSetInput_keys = { "StackName" = true, "ChangeSetName" = true, "ClientRequestToken" = true, nil }

function M.AssertExecuteChangeSetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecuteChangeSetInput to be of type 'table'")
	assert(struct["ChangeSetName"], "Expected key ChangeSetName to exist in table")
	if struct["StackName"] then M.AssertStackNameOrId(struct["StackName"]) end
	if struct["ChangeSetName"] then M.AssertChangeSetNameOrId(struct["ChangeSetName"]) end
	if struct["ClientRequestToken"] then M.AssertClientRequestToken(struct["ClientRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(ExecuteChangeSetInput_keys[k], "ExecuteChangeSetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecuteChangeSetInput
-- <p>The input for the <a>ExecuteChangeSet</a> action.</p>
-- @param StackName [StackNameOrId] <p>If you specified the name of a change set, specify the stack name or ID (ARN) that is associated with the change set you want to execute.</p>
-- @param ChangeSetName [ChangeSetNameOrId] <p>The name or ARN of the change set that you want use to update the specified stack.</p>
-- @param ClientRequestToken [ClientRequestToken] <p>A unique identifier for this <code>ExecuteChangeSet</code> request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to execute a change set to update a stack with the same name. You might retry <code>ExecuteChangeSet</code> requests to ensure that AWS CloudFormation successfully received them.</p>
-- Required parameter: ChangeSetName
function M.ExecuteChangeSetInput(StackName, ChangeSetName, ClientRequestToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecuteChangeSetInput")
	local t = { 
		["StackName"] = StackName,
		["ChangeSetName"] = ChangeSetName,
		["ClientRequestToken"] = ClientRequestToken,
	}
	M.AssertExecuteChangeSetInput(t)
	return t
end

local ParameterDeclaration_keys = { "ParameterType" = true, "ParameterConstraints" = true, "Description" = true, "DefaultValue" = true, "NoEcho" = true, "ParameterKey" = true, nil }

function M.AssertParameterDeclaration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterDeclaration to be of type 'table'")
	if struct["ParameterType"] then M.AssertParameterType(struct["ParameterType"]) end
	if struct["ParameterConstraints"] then M.AssertParameterConstraints(struct["ParameterConstraints"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["DefaultValue"] then M.AssertParameterValue(struct["DefaultValue"]) end
	if struct["NoEcho"] then M.AssertNoEcho(struct["NoEcho"]) end
	if struct["ParameterKey"] then M.AssertParameterKey(struct["ParameterKey"]) end
	for k,_ in pairs(struct) do
		assert(ParameterDeclaration_keys[k], "ParameterDeclaration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterDeclaration
-- <p>The ParameterDeclaration data type.</p>
-- @param ParameterType [ParameterType] <p>The type of parameter.</p>
-- @param ParameterConstraints [ParameterConstraints] <p>The criteria that AWS CloudFormation uses to validate parameter values.</p>
-- @param Description [Description] <p>The description that is associate with the parameter.</p>
-- @param DefaultValue [ParameterValue] <p>The default value of the parameter.</p>
-- @param NoEcho [NoEcho] <p>Flag that indicates whether the parameter value is shown as plain text in logs and in the AWS Management Console.</p>
-- @param ParameterKey [ParameterKey] <p>The name that is associated with the parameter.</p>
function M.ParameterDeclaration(ParameterType, ParameterConstraints, Description, DefaultValue, NoEcho, ParameterKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ParameterDeclaration")
	local t = { 
		["ParameterType"] = ParameterType,
		["ParameterConstraints"] = ParameterConstraints,
		["Description"] = Description,
		["DefaultValue"] = DefaultValue,
		["NoEcho"] = NoEcho,
		["ParameterKey"] = ParameterKey,
	}
	M.AssertParameterDeclaration(t)
	return t
end

local DescribeStacksInput_keys = { "StackName" = true, "NextToken" = true, nil }

function M.AssertDescribeStacksInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStacksInput to be of type 'table'")
	if struct["StackName"] then M.AssertStackName(struct["StackName"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStacksInput_keys[k], "DescribeStacksInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStacksInput
-- <p>The input for <a>DescribeStacks</a> action.</p>
-- @param StackName [StackName] <p>The name or the unique stack ID that is associated with the stack, which are not always interchangeable:</p> <ul> <li> <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p> </li> <li> <p>Deleted stacks: You must specify the unique stack ID.</p> </li> </ul> <p>Default: There is no default value.</p>
-- @param NextToken [NextToken] <p>A string that identifies the next page of stacks that you want to retrieve.</p>
function M.DescribeStacksInput(StackName, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStacksInput")
	local t = { 
		["StackName"] = StackName,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeStacksInput(t)
	return t
end

local ExecuteChangeSetOutput_keys = { nil }

function M.AssertExecuteChangeSetOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecuteChangeSetOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ExecuteChangeSetOutput_keys[k], "ExecuteChangeSetOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecuteChangeSetOutput
-- <p>The output for the <a>ExecuteChangeSet</a> action.</p>
function M.ExecuteChangeSetOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecuteChangeSetOutput")
	local t = { 
	}
	M.AssertExecuteChangeSetOutput(t)
	return t
end

local AlreadyExistsException_keys = { nil }

function M.AssertAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AlreadyExistsException_keys[k], "AlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlreadyExistsException
-- <p>Resource with the name requested already exists.</p>
function M.AlreadyExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AlreadyExistsException")
	local t = { 
	}
	M.AssertAlreadyExistsException(t)
	return t
end

local StackEvent_keys = { "StackId" = true, "EventId" = true, "ResourceStatus" = true, "ResourceType" = true, "Timestamp" = true, "ResourceStatusReason" = true, "StackName" = true, "ResourceProperties" = true, "PhysicalResourceId" = true, "ClientRequestToken" = true, "LogicalResourceId" = true, nil }

function M.AssertStackEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackEvent to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	assert(struct["EventId"], "Expected key EventId to exist in table")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	assert(struct["Timestamp"], "Expected key Timestamp to exist in table")
	if struct["StackId"] then M.AssertStackId(struct["StackId"]) end
	if struct["EventId"] then M.AssertEventId(struct["EventId"]) end
	if struct["ResourceStatus"] then M.AssertResourceStatus(struct["ResourceStatus"]) end
	if struct["ResourceType"] then M.AssertResourceType(struct["ResourceType"]) end
	if struct["Timestamp"] then M.AssertTimestamp(struct["Timestamp"]) end
	if struct["ResourceStatusReason"] then M.AssertResourceStatusReason(struct["ResourceStatusReason"]) end
	if struct["StackName"] then M.AssertStackName(struct["StackName"]) end
	if struct["ResourceProperties"] then M.AssertResourceProperties(struct["ResourceProperties"]) end
	if struct["PhysicalResourceId"] then M.AssertPhysicalResourceId(struct["PhysicalResourceId"]) end
	if struct["ClientRequestToken"] then M.AssertClientRequestToken(struct["ClientRequestToken"]) end
	if struct["LogicalResourceId"] then M.AssertLogicalResourceId(struct["LogicalResourceId"]) end
	for k,_ in pairs(struct) do
		assert(StackEvent_keys[k], "StackEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackEvent
-- <p>The StackEvent data type.</p>
-- @param StackId [StackId] <p>The unique ID name of the instance of the stack.</p>
-- @param EventId [EventId] <p>The unique ID of this event.</p>
-- @param ResourceStatus [ResourceStatus] <p>Current status of the resource.</p>
-- @param ResourceType [ResourceType] <p>Type of resource. (For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html"> AWS Resource Types Reference</a> in the AWS CloudFormation User Guide.)</p>
-- @param Timestamp [Timestamp] <p>Time the status was updated.</p>
-- @param ResourceStatusReason [ResourceStatusReason] <p>Success/failure message associated with the resource.</p>
-- @param StackName [StackName] <p>The name associated with a stack.</p>
-- @param ResourceProperties [ResourceProperties] <p>BLOB of the properties used to create the resource.</p>
-- @param PhysicalResourceId [PhysicalResourceId] <p>The name or unique identifier associated with the physical instance of the resource.</p>
-- @param ClientRequestToken [ClientRequestToken] <p>The token passed to the operation that generated this event.</p> <p>For example, if you execute a <code>CreateStack</code> operation with the token <code>token1</code>, then all the <code>StackEvents</code> generated by that operation will have <code>ClientRequestToken</code> set as <code>token1</code>.</p>
-- @param LogicalResourceId [LogicalResourceId] <p>The logical name of the resource specified in the template.</p>
-- Required parameter: StackId
-- Required parameter: EventId
-- Required parameter: StackName
-- Required parameter: Timestamp
function M.StackEvent(StackId, EventId, ResourceStatus, ResourceType, Timestamp, ResourceStatusReason, StackName, ResourceProperties, PhysicalResourceId, ClientRequestToken, LogicalResourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StackEvent")
	local t = { 
		["StackId"] = StackId,
		["EventId"] = EventId,
		["ResourceStatus"] = ResourceStatus,
		["ResourceType"] = ResourceType,
		["Timestamp"] = Timestamp,
		["ResourceStatusReason"] = ResourceStatusReason,
		["StackName"] = StackName,
		["ResourceProperties"] = ResourceProperties,
		["PhysicalResourceId"] = PhysicalResourceId,
		["ClientRequestToken"] = ClientRequestToken,
		["LogicalResourceId"] = LogicalResourceId,
	}
	M.AssertStackEvent(t)
	return t
end

local ChangeSetSummary_keys = { "StackId" = true, "Status" = true, "ChangeSetName" = true, "Description" = true, "CreationTime" = true, "StatusReason" = true, "StackName" = true, "ExecutionStatus" = true, "ChangeSetId" = true, nil }

function M.AssertChangeSetSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeSetSummary to be of type 'table'")
	if struct["StackId"] then M.AssertStackId(struct["StackId"]) end
	if struct["Status"] then M.AssertChangeSetStatus(struct["Status"]) end
	if struct["ChangeSetName"] then M.AssertChangeSetName(struct["ChangeSetName"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["CreationTime"] then M.AssertCreationTime(struct["CreationTime"]) end
	if struct["StatusReason"] then M.AssertChangeSetStatusReason(struct["StatusReason"]) end
	if struct["StackName"] then M.AssertStackName(struct["StackName"]) end
	if struct["ExecutionStatus"] then M.AssertExecutionStatus(struct["ExecutionStatus"]) end
	if struct["ChangeSetId"] then M.AssertChangeSetId(struct["ChangeSetId"]) end
	for k,_ in pairs(struct) do
		assert(ChangeSetSummary_keys[k], "ChangeSetSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeSetSummary
-- <p>The <code>ChangeSetSummary</code> structure describes a change set, its status, and the stack with which it's associated.</p>
-- @param StackId [StackId] <p>The ID of the stack with which the change set is associated.</p>
-- @param Status [ChangeSetStatus] <p>The state of the change set, such as <code>CREATE_IN_PROGRESS</code>, <code>CREATE_COMPLETE</code>, or <code>FAILED</code>.</p>
-- @param ChangeSetName [ChangeSetName] <p>The name of the change set.</p>
-- @param Description [Description] <p>Descriptive information about the change set.</p>
-- @param CreationTime [CreationTime] <p>The start time when the change set was created, in UTC.</p>
-- @param StatusReason [ChangeSetStatusReason] <p>A description of the change set's status. For example, if your change set is in the <code>FAILED</code> state, AWS CloudFormation shows the error message.</p>
-- @param StackName [StackName] <p>The name of the stack with which the change set is associated.</p>
-- @param ExecutionStatus [ExecutionStatus] <p>If the change set execution status is <code>AVAILABLE</code>, you can execute the change set. If you can’t execute the change set, the status indicates why. For example, a change set might be in an <code>UNAVAILABLE</code> state because AWS CloudFormation is still creating it or in an <code>OBSOLETE</code> state because the stack was already updated.</p>
-- @param ChangeSetId [ChangeSetId] <p>The ID of the change set.</p>
function M.ChangeSetSummary(StackId, Status, ChangeSetName, Description, CreationTime, StatusReason, StackName, ExecutionStatus, ChangeSetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangeSetSummary")
	local t = { 
		["StackId"] = StackId,
		["Status"] = Status,
		["ChangeSetName"] = ChangeSetName,
		["Description"] = Description,
		["CreationTime"] = CreationTime,
		["StatusReason"] = StatusReason,
		["StackName"] = StackName,
		["ExecutionStatus"] = ExecutionStatus,
		["ChangeSetId"] = ChangeSetId,
	}
	M.AssertChangeSetSummary(t)
	return t
end

local ValidateTemplateInput_keys = { "TemplateURL" = true, "TemplateBody" = true, nil }

function M.AssertValidateTemplateInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidateTemplateInput to be of type 'table'")
	if struct["TemplateURL"] then M.AssertTemplateURL(struct["TemplateURL"]) end
	if struct["TemplateBody"] then M.AssertTemplateBody(struct["TemplateBody"]) end
	for k,_ in pairs(struct) do
		assert(ValidateTemplateInput_keys[k], "ValidateTemplateInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidateTemplateInput
-- <p>The input for <a>ValidateTemplate</a> action.</p>
-- @param TemplateURL [TemplateURL] <p>Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must pass <code>TemplateURL</code> or <code>TemplateBody</code>. If both are passed, only <code>TemplateBody</code> is used.</p>
-- @param TemplateBody [TemplateBody] <p>Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must pass <code>TemplateURL</code> or <code>TemplateBody</code>. If both are passed, only <code>TemplateBody</code> is used.</p>
function M.ValidateTemplateInput(TemplateURL, TemplateBody, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidateTemplateInput")
	local t = { 
		["TemplateURL"] = TemplateURL,
		["TemplateBody"] = TemplateBody,
	}
	M.AssertValidateTemplateInput(t)
	return t
end

local GetStackPolicyInput_keys = { "StackName" = true, nil }

function M.AssertGetStackPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStackPolicyInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then M.AssertStackName(struct["StackName"]) end
	for k,_ in pairs(struct) do
		assert(GetStackPolicyInput_keys[k], "GetStackPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStackPolicyInput
-- <p>The input for the <a>GetStackPolicy</a> action.</p>
-- @param StackName [StackName] <p>The name or unique stack ID that is associated with the stack whose policy you want to get.</p>
-- Required parameter: StackName
function M.GetStackPolicyInput(StackName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStackPolicyInput")
	local t = { 
		["StackName"] = StackName,
	}
	M.AssertGetStackPolicyInput(t)
	return t
end

local GetStackPolicyOutput_keys = { "StackPolicyBody" = true, nil }

function M.AssertGetStackPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStackPolicyOutput to be of type 'table'")
	if struct["StackPolicyBody"] then M.AssertStackPolicyBody(struct["StackPolicyBody"]) end
	for k,_ in pairs(struct) do
		assert(GetStackPolicyOutput_keys[k], "GetStackPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStackPolicyOutput
-- <p>The output for the <a>GetStackPolicy</a> action.</p>
-- @param StackPolicyBody [StackPolicyBody] <p>Structure containing the stack policy body. (For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html"> Prevent Updates to Stack Resources</a> in the AWS CloudFormation User Guide.)</p>
function M.GetStackPolicyOutput(StackPolicyBody, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetStackPolicyOutput")
	local t = { 
		["StackPolicyBody"] = StackPolicyBody,
	}
	M.AssertGetStackPolicyOutput(t)
	return t
end

local DescribeAccountLimitsOutput_keys = { "NextToken" = true, "AccountLimits" = true, nil }

function M.AssertDescribeAccountLimitsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountLimitsOutput to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["AccountLimits"] then M.AssertAccountLimitList(struct["AccountLimits"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAccountLimitsOutput_keys[k], "DescribeAccountLimitsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountLimitsOutput
-- <p>The output for the <a>DescribeAccountLimits</a> action.</p>
-- @param NextToken [NextToken] <p>If the output exceeds 1 MB in size, a string that identifies the next page of limits. If no additional page exists, this value is null.</p>
-- @param AccountLimits [AccountLimitList] <p>An account limit structure that contain a list of AWS CloudFormation account limits and their values.</p>
function M.DescribeAccountLimitsOutput(NextToken, AccountLimits, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAccountLimitsOutput")
	local t = { 
		["NextToken"] = NextToken,
		["AccountLimits"] = AccountLimits,
	}
	M.AssertDescribeAccountLimitsOutput(t)
	return t
end

local CreateStackInput_keys = { "Tags" = true, "TemplateBody" = true, "Parameters" = true, "StackPolicyURL" = true, "RoleARN" = true, "TimeoutInMinutes" = true, "StackPolicyBody" = true, "Capabilities" = true, "OnFailure" = true, "StackName" = true, "NotificationARNs" = true, "ResourceTypes" = true, "ClientRequestToken" = true, "DisableRollback" = true, "TemplateURL" = true, nil }

function M.AssertCreateStackInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStackInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	if struct["TemplateBody"] then M.AssertTemplateBody(struct["TemplateBody"]) end
	if struct["Parameters"] then M.AssertParameters(struct["Parameters"]) end
	if struct["StackPolicyURL"] then M.AssertStackPolicyURL(struct["StackPolicyURL"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["TimeoutInMinutes"] then M.AssertTimeoutMinutes(struct["TimeoutInMinutes"]) end
	if struct["StackPolicyBody"] then M.AssertStackPolicyBody(struct["StackPolicyBody"]) end
	if struct["Capabilities"] then M.AssertCapabilities(struct["Capabilities"]) end
	if struct["OnFailure"] then M.AssertOnFailure(struct["OnFailure"]) end
	if struct["StackName"] then M.AssertStackName(struct["StackName"]) end
	if struct["NotificationARNs"] then M.AssertNotificationARNs(struct["NotificationARNs"]) end
	if struct["ResourceTypes"] then M.AssertResourceTypes(struct["ResourceTypes"]) end
	if struct["ClientRequestToken"] then M.AssertClientRequestToken(struct["ClientRequestToken"]) end
	if struct["DisableRollback"] then M.AssertDisableRollback(struct["DisableRollback"]) end
	if struct["TemplateURL"] then M.AssertTemplateURL(struct["TemplateURL"]) end
	for k,_ in pairs(struct) do
		assert(CreateStackInput_keys[k], "CreateStackInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStackInput
-- <p>The input for <a>CreateStack</a> action.</p>
-- @param Tags [Tags] <p>Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to the resources created in the stack. A maximum number of 10 tags can be specified.</p>
-- @param TemplateBody [TemplateBody] <p>Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must specify either the <code>TemplateBody</code> or the <code>TemplateURL</code> parameter, but not both.</p>
-- @param Parameters [Parameters] <p>A list of <code>Parameter</code> structures that specify input parameters for the stack. For more information, see the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html">Parameter</a> data type.</p>
-- @param StackPolicyURL [StackPolicyURL] <p>Location of a file containing the stack policy. The URL must point to a policy (maximum size: 16 KB) located in an S3 bucket in the same region as the stack. You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but not both.</p>
-- @param RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to create the stack. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation always uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege.</p> <p>If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.</p>
-- @param TimeoutInMinutes [TimeoutMinutes] <p>The amount of time that can pass before the stack status becomes CREATE_FAILED; if <code>DisableRollback</code> is not set or is set to <code>false</code>, the stack will be rolled back.</p>
-- @param StackPolicyBody [StackPolicyBody] <p>Structure containing the stack policy body. For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html"> Prevent Updates to Stack Resources</a> in the <i>AWS CloudFormation User Guide</i>. You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but not both.</p>
-- @param Capabilities [Capabilities] <p>A list of values that you must specify before AWS CloudFormation can create certain stacks. Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter.</p> <p>The only valid values are <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>. The following resources require you to specify this parameter: <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html"> AWS::IAM::AccessKey</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html"> AWS::IAM::Group</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html"> AWS::IAM::InstanceProfile</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html"> AWS::IAM::Policy</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html"> AWS::IAM::Role</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html"> AWS::IAM::User</a>, and <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html"> AWS::IAM::UserToGroupAddition</a>. If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.</p> <p>If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify <code>CAPABILITY_NAMED_IAM</code>. If you don't specify this parameter, this action returns an <code>InsufficientCapabilities</code> error.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging IAM Resources in AWS CloudFormation Templates</a>.</p>
-- @param OnFailure [OnFailure] <p>Determines what action will be taken if stack creation fails. This must be one of: DO_NOTHING, ROLLBACK, or DELETE. You can specify either <code>OnFailure</code> or <code>DisableRollback</code>, but not both.</p> <p>Default: <code>ROLLBACK</code> </p>
-- @param StackName [StackName] <p>The name that is associated with the stack. The name must be unique in the region in which you are creating the stack.</p> <note> <p>A stack name can contain only alphanumeric characters (case sensitive) and hyphens. It must start with an alphabetic character and cannot be longer than 128 characters.</p> </note>
-- @param NotificationARNs [NotificationARNs] <p>The Simple Notification Service (SNS) topic ARNs to publish stack related events. You can find your SNS topic ARNs using the SNS console or your Command Line Interface (CLI).</p>
-- @param ResourceTypes [ResourceTypes] <p>The template resource types that you have permissions to work with for this create stack action, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or <code>Custom::MyCustomInstance</code>. Use the following syntax to describe template resource types: <code>AWS::*</code> (for all AWS resource), <code>Custom::*</code> (for all custom resources), <code>Custom::<i>logical_ID</i> </code> (for a specific custom resource), <code>AWS::<i>service_name</i>::*</code> (for all resources of a particular AWS service), and <code>AWS::<i>service_name</i>::<i>resource_logical_ID</i> </code> (for a specific AWS resource).</p> <p>If the list of resource types doesn't include a resource that you're creating, the stack creation fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for AWS CloudFormation-specific condition keys in IAM policies. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html">Controlling Access with AWS Identity and Access Management</a>.</p>
-- @param ClientRequestToken [ClientRequestToken] <p>A unique identifier for this <code>CreateStack</code> request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create a stack with the same name. You might retry <code>CreateStack</code> requests to ensure that AWS CloudFormation successfully received them.</p>
-- @param DisableRollback [DisableRollback] <p>Set to <code>true</code> to disable rollback of the stack if stack creation failed. You can specify either <code>DisableRollback</code> or <code>OnFailure</code>, but not both.</p> <p>Default: <code>false</code> </p>
-- @param TemplateURL [TemplateURL] <p>Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information, go to the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must specify either the <code>TemplateBody</code> or the <code>TemplateURL</code> parameter, but not both.</p>
-- Required parameter: StackName
function M.CreateStackInput(Tags, TemplateBody, Parameters, StackPolicyURL, RoleARN, TimeoutInMinutes, StackPolicyBody, Capabilities, OnFailure, StackName, NotificationARNs, ResourceTypes, ClientRequestToken, DisableRollback, TemplateURL, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStackInput")
	local t = { 
		["Tags"] = Tags,
		["TemplateBody"] = TemplateBody,
		["Parameters"] = Parameters,
		["StackPolicyURL"] = StackPolicyURL,
		["RoleARN"] = RoleARN,
		["TimeoutInMinutes"] = TimeoutInMinutes,
		["StackPolicyBody"] = StackPolicyBody,
		["Capabilities"] = Capabilities,
		["OnFailure"] = OnFailure,
		["StackName"] = StackName,
		["NotificationARNs"] = NotificationARNs,
		["ResourceTypes"] = ResourceTypes,
		["ClientRequestToken"] = ClientRequestToken,
		["DisableRollback"] = DisableRollback,
		["TemplateURL"] = TemplateURL,
	}
	M.AssertCreateStackInput(t)
	return t
end

local UpdateStackOutput_keys = { "StackId" = true, nil }

function M.AssertUpdateStackOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStackOutput to be of type 'table'")
	if struct["StackId"] then M.AssertStackId(struct["StackId"]) end
	for k,_ in pairs(struct) do
		assert(UpdateStackOutput_keys[k], "UpdateStackOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStackOutput
-- <p>The output for an <a>UpdateStack</a> action.</p>
-- @param StackId [StackId] <p>Unique identifier of the stack.</p>
function M.UpdateStackOutput(StackId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateStackOutput")
	local t = { 
		["StackId"] = StackId,
	}
	M.AssertUpdateStackOutput(t)
	return t
end

local InsufficientCapabilitiesException_keys = { nil }

function M.AssertInsufficientCapabilitiesException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientCapabilitiesException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InsufficientCapabilitiesException_keys[k], "InsufficientCapabilitiesException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientCapabilitiesException
-- <p>The template contains resources with capabilities that were not specified in the Capabilities parameter.</p>
function M.InsufficientCapabilitiesException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientCapabilitiesException")
	local t = { 
	}
	M.AssertInsufficientCapabilitiesException(t)
	return t
end

local ListExportsInput_keys = { "NextToken" = true, nil }

function M.AssertListExportsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListExportsInput to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListExportsInput_keys[k], "ListExportsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListExportsInput
--  
-- @param NextToken [NextToken] <p>A string (provided by the <a>ListExports</a> response output) that identifies the next page of exported output values that you asked to retrieve.</p>
function M.ListExportsInput(NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListExportsInput")
	local t = { 
		["NextToken"] = NextToken,
	}
	M.AssertListExportsInput(t)
	return t
end

local StackResourceSummary_keys = { "ResourceStatus" = true, "ResourceType" = true, "ResourceStatusReason" = true, "LastUpdatedTimestamp" = true, "PhysicalResourceId" = true, "LogicalResourceId" = true, nil }

function M.AssertStackResourceSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackResourceSummary to be of type 'table'")
	assert(struct["LogicalResourceId"], "Expected key LogicalResourceId to exist in table")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["LastUpdatedTimestamp"], "Expected key LastUpdatedTimestamp to exist in table")
	assert(struct["ResourceStatus"], "Expected key ResourceStatus to exist in table")
	if struct["ResourceStatus"] then M.AssertResourceStatus(struct["ResourceStatus"]) end
	if struct["ResourceType"] then M.AssertResourceType(struct["ResourceType"]) end
	if struct["ResourceStatusReason"] then M.AssertResourceStatusReason(struct["ResourceStatusReason"]) end
	if struct["LastUpdatedTimestamp"] then M.AssertTimestamp(struct["LastUpdatedTimestamp"]) end
	if struct["PhysicalResourceId"] then M.AssertPhysicalResourceId(struct["PhysicalResourceId"]) end
	if struct["LogicalResourceId"] then M.AssertLogicalResourceId(struct["LogicalResourceId"]) end
	for k,_ in pairs(struct) do
		assert(StackResourceSummary_keys[k], "StackResourceSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackResourceSummary
-- <p>Contains high-level information about the specified stack resource.</p>
-- @param ResourceStatus [ResourceStatus] <p>Current status of the resource.</p>
-- @param ResourceType [ResourceType] <p>Type of resource. (For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html"> AWS Resource Types Reference</a> in the AWS CloudFormation User Guide.)</p>
-- @param ResourceStatusReason [ResourceStatusReason] <p>Success/failure message associated with the resource.</p>
-- @param LastUpdatedTimestamp [Timestamp] <p>Time the status was updated.</p>
-- @param PhysicalResourceId [PhysicalResourceId] <p>The name or unique identifier that corresponds to a physical instance ID of the resource.</p>
-- @param LogicalResourceId [LogicalResourceId] <p>The logical name of the resource specified in the template.</p>
-- Required parameter: LogicalResourceId
-- Required parameter: ResourceType
-- Required parameter: LastUpdatedTimestamp
-- Required parameter: ResourceStatus
function M.StackResourceSummary(ResourceStatus, ResourceType, ResourceStatusReason, LastUpdatedTimestamp, PhysicalResourceId, LogicalResourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StackResourceSummary")
	local t = { 
		["ResourceStatus"] = ResourceStatus,
		["ResourceType"] = ResourceType,
		["ResourceStatusReason"] = ResourceStatusReason,
		["LastUpdatedTimestamp"] = LastUpdatedTimestamp,
		["PhysicalResourceId"] = PhysicalResourceId,
		["LogicalResourceId"] = LogicalResourceId,
	}
	M.AssertStackResourceSummary(t)
	return t
end

local CreateStackOutput_keys = { "StackId" = true, nil }

function M.AssertCreateStackOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStackOutput to be of type 'table'")
	if struct["StackId"] then M.AssertStackId(struct["StackId"]) end
	for k,_ in pairs(struct) do
		assert(CreateStackOutput_keys[k], "CreateStackOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStackOutput
-- <p>The output for a <a>CreateStack</a> action.</p>
-- @param StackId [StackId] <p>Unique identifier of the stack.</p>
function M.CreateStackOutput(StackId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStackOutput")
	local t = { 
		["StackId"] = StackId,
	}
	M.AssertCreateStackOutput(t)
	return t
end

local ListExportsOutput_keys = { "Exports" = true, "NextToken" = true, nil }

function M.AssertListExportsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListExportsOutput to be of type 'table'")
	if struct["Exports"] then M.AssertExports(struct["Exports"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListExportsOutput_keys[k], "ListExportsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListExportsOutput
--  
-- @param Exports [Exports] <p>The output for the <a>ListExports</a> action.</p>
-- @param NextToken [NextToken] <p>If the output exceeds 100 exported output values, a string that identifies the next page of exports. If there is no additional page, this value is null.</p>
function M.ListExportsOutput(Exports, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListExportsOutput")
	local t = { 
		["Exports"] = Exports,
		["NextToken"] = NextToken,
	}
	M.AssertListExportsOutput(t)
	return t
end

local SetStackPolicyInput_keys = { "StackName" = true, "StackPolicyBody" = true, "StackPolicyURL" = true, nil }

function M.AssertSetStackPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetStackPolicyInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then M.AssertStackName(struct["StackName"]) end
	if struct["StackPolicyBody"] then M.AssertStackPolicyBody(struct["StackPolicyBody"]) end
	if struct["StackPolicyURL"] then M.AssertStackPolicyURL(struct["StackPolicyURL"]) end
	for k,_ in pairs(struct) do
		assert(SetStackPolicyInput_keys[k], "SetStackPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetStackPolicyInput
-- <p>The input for the <a>SetStackPolicy</a> action.</p>
-- @param StackName [StackName] <p>The name or unique stack ID that you want to associate a policy with.</p>
-- @param StackPolicyBody [StackPolicyBody] <p>Structure containing the stack policy body. For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html"> Prevent Updates to Stack Resources</a> in the AWS CloudFormation User Guide. You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but not both.</p>
-- @param StackPolicyURL [StackPolicyURL] <p>Location of a file containing the stack policy. The URL must point to a policy (maximum size: 16 KB) located in an S3 bucket in the same region as the stack. You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but not both.</p>
-- Required parameter: StackName
function M.SetStackPolicyInput(StackName, StackPolicyBody, StackPolicyURL, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetStackPolicyInput")
	local t = { 
		["StackName"] = StackName,
		["StackPolicyBody"] = StackPolicyBody,
		["StackPolicyURL"] = StackPolicyURL,
	}
	M.AssertSetStackPolicyInput(t)
	return t
end

local ContinueUpdateRollbackInput_keys = { "StackName" = true, "RoleARN" = true, "ClientRequestToken" = true, "ResourcesToSkip" = true, nil }

function M.AssertContinueUpdateRollbackInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContinueUpdateRollbackInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then M.AssertStackNameOrId(struct["StackName"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClientRequestToken"] then M.AssertClientRequestToken(struct["ClientRequestToken"]) end
	if struct["ResourcesToSkip"] then M.AssertResourcesToSkip(struct["ResourcesToSkip"]) end
	for k,_ in pairs(struct) do
		assert(ContinueUpdateRollbackInput_keys[k], "ContinueUpdateRollbackInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContinueUpdateRollbackInput
-- <p>The input for the <a>ContinueUpdateRollback</a> action.</p>
-- @param StackName [StackNameOrId] <p>The name or the unique ID of the stack that you want to continue rolling back.</p> <note> <p>Don't specify the name of a nested stack (a stack that was created by using the <code>AWS::CloudFormation::Stack</code> resource). Instead, use this operation on the parent stack (the stack that contains the <code>AWS::CloudFormation::Stack</code> resource).</p> </note>
-- @param RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to roll back the stack. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation always uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege.</p> <p>If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.</p>
-- @param ClientRequestToken [ClientRequestToken] <p>A unique identifier for this <code>ContinueUpdateRollback</code> request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to continue the rollback to a stack with the same name. You might retry <code>ContinueUpdateRollback</code> requests to ensure that AWS CloudFormation successfully received them.</p>
-- @param ResourcesToSkip [ResourcesToSkip] <p>A list of the logical IDs of the resources that AWS CloudFormation skips during the continue update rollback operation. You can specify only resources that are in the <code>UPDATE_FAILED</code> state because a rollback failed. You can't specify resources that are in the <code>UPDATE_FAILED</code> state for other reasons, for example, because an update was canceled. To check why a resource update failed, use the <a>DescribeStackResources</a> action, and view the resource status reason. </p> <important> <p>Specify this property to skip rolling back resources that AWS CloudFormation can't successfully roll back. We recommend that you <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed"> troubleshoot</a> resources before skipping them. AWS CloudFormation sets the status of the specified resources to <code>UPDATE_COMPLETE</code> and continues to roll back the stack. After the rollback is complete, the state of the skipped resources will be inconsistent with the state of the resources in the stack template. Before performing another stack update, you must update the stack or resources to be consistent with each other. If you don't, subsequent stack updates might fail, and the stack will become unrecoverable. </p> </important> <p>Specify the minimum number of resources required to successfully roll back your stack. For example, a failed resource update might cause dependent resources to fail. In this case, it might not be necessary to skip the dependent resources. </p> <p>To specify resources in a nested stack, use the following format: <code>NestedStackName.ResourceLogicalID</code>. If the <code>ResourceLogicalID</code> is a stack resource (<code>Type: AWS::CloudFormation::Stack</code>), it must be in one of the following states: <code>DELETE_IN_PROGRESS</code>, <code>DELETE_COMPLETE</code>, or <code>DELETE_FAILED</code>. </p>
-- Required parameter: StackName
function M.ContinueUpdateRollbackInput(StackName, RoleARN, ClientRequestToken, ResourcesToSkip, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ContinueUpdateRollbackInput")
	local t = { 
		["StackName"] = StackName,
		["RoleARN"] = RoleARN,
		["ClientRequestToken"] = ClientRequestToken,
		["ResourcesToSkip"] = ResourcesToSkip,
	}
	M.AssertContinueUpdateRollbackInput(t)
	return t
end

local DescribeStackEventsInput_keys = { "StackName" = true, "NextToken" = true, nil }

function M.AssertDescribeStackEventsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackEventsInput to be of type 'table'")
	if struct["StackName"] then M.AssertStackName(struct["StackName"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStackEventsInput_keys[k], "DescribeStackEventsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackEventsInput
-- <p>The input for <a>DescribeStackEvents</a> action.</p>
-- @param StackName [StackName] <p>The name or the unique stack ID that is associated with the stack, which are not always interchangeable:</p> <ul> <li> <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p> </li> <li> <p>Deleted stacks: You must specify the unique stack ID.</p> </li> </ul> <p>Default: There is no default value.</p>
-- @param NextToken [NextToken] <p>A string that identifies the next page of events that you want to retrieve.</p>
function M.DescribeStackEventsInput(StackName, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStackEventsInput")
	local t = { 
		["StackName"] = StackName,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeStackEventsInput(t)
	return t
end

local DescribeStackResourcesOutput_keys = { "StackResources" = true, nil }

function M.AssertDescribeStackResourcesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackResourcesOutput to be of type 'table'")
	if struct["StackResources"] then M.AssertStackResources(struct["StackResources"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStackResourcesOutput_keys[k], "DescribeStackResourcesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackResourcesOutput
-- <p>The output for a <a>DescribeStackResources</a> action.</p>
-- @param StackResources [StackResources] <p>A list of <code>StackResource</code> structures.</p>
function M.DescribeStackResourcesOutput(StackResources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStackResourcesOutput")
	local t = { 
		["StackResources"] = StackResources,
	}
	M.AssertDescribeStackResourcesOutput(t)
	return t
end

local DescribeStackResourceInput_keys = { "StackName" = true, "LogicalResourceId" = true, nil }

function M.AssertDescribeStackResourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackResourceInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	assert(struct["LogicalResourceId"], "Expected key LogicalResourceId to exist in table")
	if struct["StackName"] then M.AssertStackName(struct["StackName"]) end
	if struct["LogicalResourceId"] then M.AssertLogicalResourceId(struct["LogicalResourceId"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStackResourceInput_keys[k], "DescribeStackResourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackResourceInput
-- <p>The input for <a>DescribeStackResource</a> action.</p>
-- @param StackName [StackName] <p>The name or the unique stack ID that is associated with the stack, which are not always interchangeable:</p> <ul> <li> <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p> </li> <li> <p>Deleted stacks: You must specify the unique stack ID.</p> </li> </ul> <p>Default: There is no default value.</p>
-- @param LogicalResourceId [LogicalResourceId] <p>The logical name of the resource as specified in the template.</p> <p>Default: There is no default value.</p>
-- Required parameter: StackName
-- Required parameter: LogicalResourceId
function M.DescribeStackResourceInput(StackName, LogicalResourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStackResourceInput")
	local t = { 
		["StackName"] = StackName,
		["LogicalResourceId"] = LogicalResourceId,
	}
	M.AssertDescribeStackResourceInput(t)
	return t
end

local CancelUpdateStackInput_keys = { "StackName" = true, "ClientRequestToken" = true, nil }

function M.AssertCancelUpdateStackInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelUpdateStackInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then M.AssertStackName(struct["StackName"]) end
	if struct["ClientRequestToken"] then M.AssertClientRequestToken(struct["ClientRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(CancelUpdateStackInput_keys[k], "CancelUpdateStackInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelUpdateStackInput
-- <p>The input for the <a>CancelUpdateStack</a> action.</p>
-- @param StackName [StackName] <p>The name or the unique stack ID that is associated with the stack.</p>
-- @param ClientRequestToken [ClientRequestToken] <p>A unique identifier for this <code>CancelUpdateStack</code> request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to cancel an update on a stack with the same name. You might retry <code>CancelUpdateStack</code> requests to ensure that AWS CloudFormation successfully received them.</p>
-- Required parameter: StackName
function M.CancelUpdateStackInput(StackName, ClientRequestToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelUpdateStackInput")
	local t = { 
		["StackName"] = StackName,
		["ClientRequestToken"] = ClientRequestToken,
	}
	M.AssertCancelUpdateStackInput(t)
	return t
end

local EstimateTemplateCostInput_keys = { "TemplateURL" = true, "Parameters" = true, "TemplateBody" = true, nil }

function M.AssertEstimateTemplateCostInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EstimateTemplateCostInput to be of type 'table'")
	if struct["TemplateURL"] then M.AssertTemplateURL(struct["TemplateURL"]) end
	if struct["Parameters"] then M.AssertParameters(struct["Parameters"]) end
	if struct["TemplateBody"] then M.AssertTemplateBody(struct["TemplateBody"]) end
	for k,_ in pairs(struct) do
		assert(EstimateTemplateCostInput_keys[k], "EstimateTemplateCostInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EstimateTemplateCostInput
-- <p>The input for an <a>EstimateTemplateCost</a> action.</p>
-- @param TemplateURL [TemplateURL] <p>Location of file containing the template body. The URL must point to a template that is located in an Amazon S3 bucket. For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must pass <code>TemplateURL</code> or <code>TemplateBody</code>. If both are passed, only <code>TemplateBody</code> is used.</p>
-- @param Parameters [Parameters] <p>A list of <code>Parameter</code> structures that specify input parameters.</p>
-- @param TemplateBody [TemplateBody] <p>Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. (For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.)</p> <p>Conditional: You must pass <code>TemplateBody</code> or <code>TemplateURL</code>. If both are passed, only <code>TemplateBody</code> is used.</p>
function M.EstimateTemplateCostInput(TemplateURL, Parameters, TemplateBody, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EstimateTemplateCostInput")
	local t = { 
		["TemplateURL"] = TemplateURL,
		["Parameters"] = Parameters,
		["TemplateBody"] = TemplateBody,
	}
	M.AssertEstimateTemplateCostInput(t)
	return t
end

local DeleteChangeSetOutput_keys = { nil }

function M.AssertDeleteChangeSetOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteChangeSetOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteChangeSetOutput_keys[k], "DeleteChangeSetOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteChangeSetOutput
-- <p>The output for the <a>DeleteChangeSet</a> action.</p>
function M.DeleteChangeSetOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteChangeSetOutput")
	local t = { 
	}
	M.AssertDeleteChangeSetOutput(t)
	return t
end

local AccountLimit_keys = { "Name" = true, "Value" = true, nil }

function M.AssertAccountLimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountLimit to be of type 'table'")
	if struct["Name"] then M.AssertLimitName(struct["Name"]) end
	if struct["Value"] then M.AssertLimitValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(AccountLimit_keys[k], "AccountLimit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountLimit
-- <p>The AccountLimit data type.</p>
-- @param Name [LimitName] <p>The name of the account limit. Currently, the only account limit is <code>StackLimit</code>.</p>
-- @param Value [LimitValue] <p>The value that is associated with the account limit name.</p>
function M.AccountLimit(Name, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccountLimit")
	local t = { 
		["Name"] = Name,
		["Value"] = Value,
	}
	M.AssertAccountLimit(t)
	return t
end

local InvalidChangeSetStatusException_keys = { nil }

function M.AssertInvalidChangeSetStatusException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidChangeSetStatusException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidChangeSetStatusException_keys[k], "InvalidChangeSetStatusException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidChangeSetStatusException
-- <p>The specified change set cannot be used to update the stack. For example, the change set status might be <code>CREATE_IN_PROGRESS</code> or the stack status might be <code>UPDATE_IN_PROGRESS</code>.</p>
function M.InvalidChangeSetStatusException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidChangeSetStatusException")
	local t = { 
	}
	M.AssertInvalidChangeSetStatusException(t)
	return t
end

local ListStacksInput_keys = { "NextToken" = true, "StackStatusFilter" = true, nil }

function M.AssertListStacksInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStacksInput to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["StackStatusFilter"] then M.AssertStackStatusFilter(struct["StackStatusFilter"]) end
	for k,_ in pairs(struct) do
		assert(ListStacksInput_keys[k], "ListStacksInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStacksInput
-- <p>The input for <a>ListStacks</a> action.</p>
-- @param NextToken [NextToken] <p>A string that identifies the next page of stacks that you want to retrieve.</p>
-- @param StackStatusFilter [StackStatusFilter] <p>Stack status to use as a filter. Specify one or more stack status codes to list only stacks with the specified status codes. For a complete list of stack status codes, see the <code>StackStatus</code> parameter of the <a>Stack</a> data type.</p>
function M.ListStacksInput(NextToken, StackStatusFilter, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStacksInput")
	local t = { 
		["NextToken"] = NextToken,
		["StackStatusFilter"] = StackStatusFilter,
	}
	M.AssertListStacksInput(t)
	return t
end

local DescribeStacksOutput_keys = { "NextToken" = true, "Stacks" = true, nil }

function M.AssertDescribeStacksOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStacksOutput to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Stacks"] then M.AssertStacks(struct["Stacks"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStacksOutput_keys[k], "DescribeStacksOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStacksOutput
-- <p>The output for a <a>DescribeStacks</a> action.</p>
-- @param NextToken [NextToken] <p>If the output exceeds 1 MB in size, a string that identifies the next page of stacks. If no additional page exists, this value is null.</p>
-- @param Stacks [Stacks] <p>A list of stack structures.</p>
function M.DescribeStacksOutput(NextToken, Stacks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStacksOutput")
	local t = { 
		["NextToken"] = NextToken,
		["Stacks"] = Stacks,
	}
	M.AssertDescribeStacksOutput(t)
	return t
end

local CreateChangeSetOutput_keys = { "StackId" = true, "Id" = true, nil }

function M.AssertCreateChangeSetOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateChangeSetOutput to be of type 'table'")
	if struct["StackId"] then M.AssertStackId(struct["StackId"]) end
	if struct["Id"] then M.AssertChangeSetId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(CreateChangeSetOutput_keys[k], "CreateChangeSetOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateChangeSetOutput
-- <p>The output for the <a>CreateChangeSet</a> action.</p>
-- @param StackId [StackId] <p>The unique ID of the stack.</p>
-- @param Id [ChangeSetId] <p>The Amazon Resource Name (ARN) of the change set.</p>
function M.CreateChangeSetOutput(StackId, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateChangeSetOutput")
	local t = { 
		["StackId"] = StackId,
		["Id"] = Id,
	}
	M.AssertCreateChangeSetOutput(t)
	return t
end

local SignalResourceInput_keys = { "StackName" = true, "Status" = true, "UniqueId" = true, "LogicalResourceId" = true, nil }

function M.AssertSignalResourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SignalResourceInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	assert(struct["LogicalResourceId"], "Expected key LogicalResourceId to exist in table")
	assert(struct["UniqueId"], "Expected key UniqueId to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["StackName"] then M.AssertStackNameOrId(struct["StackName"]) end
	if struct["Status"] then M.AssertResourceSignalStatus(struct["Status"]) end
	if struct["UniqueId"] then M.AssertResourceSignalUniqueId(struct["UniqueId"]) end
	if struct["LogicalResourceId"] then M.AssertLogicalResourceId(struct["LogicalResourceId"]) end
	for k,_ in pairs(struct) do
		assert(SignalResourceInput_keys[k], "SignalResourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SignalResourceInput
-- <p>The input for the <a>SignalResource</a> action.</p>
-- @param StackName [StackNameOrId] <p>The stack name or unique stack ID that includes the resource that you want to signal.</p>
-- @param Status [ResourceSignalStatus] <p>The status of the signal, which is either success or failure. A failure signal causes AWS CloudFormation to immediately fail the stack creation or update.</p>
-- @param UniqueId [ResourceSignalUniqueId] <p>A unique ID of the signal. When you signal Amazon EC2 instances or Auto Scaling groups, specify the instance ID that you are signaling as the unique ID. If you send multiple signals to a single resource (such as signaling a wait condition), each signal requires a different unique ID.</p>
-- @param LogicalResourceId [LogicalResourceId] <p>The logical ID of the resource that you want to signal. The logical ID is the name of the resource that given in the template.</p>
-- Required parameter: StackName
-- Required parameter: LogicalResourceId
-- Required parameter: UniqueId
-- Required parameter: Status
function M.SignalResourceInput(StackName, Status, UniqueId, LogicalResourceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SignalResourceInput")
	local t = { 
		["StackName"] = StackName,
		["Status"] = Status,
		["UniqueId"] = UniqueId,
		["LogicalResourceId"] = LogicalResourceId,
	}
	M.AssertSignalResourceInput(t)
	return t
end

local Export_keys = { "ExportingStackId" = true, "Value" = true, "Name" = true, nil }

function M.AssertExport(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Export to be of type 'table'")
	if struct["ExportingStackId"] then M.AssertStackId(struct["ExportingStackId"]) end
	if struct["Value"] then M.AssertExportValue(struct["Value"]) end
	if struct["Name"] then M.AssertExportName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(Export_keys[k], "Export contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Export
-- <p>The <code>Export</code> structure describes the exported output values for a stack.</p>
-- @param ExportingStackId [StackId] <p>The stack that contains the exported output name and value.</p>
-- @param Value [ExportValue] <p>The value of the exported output, such as a resource physical ID. This value is defined in the <code>Export</code> field in the associated stack's <code>Outputs</code> section.</p>
-- @param Name [ExportName] <p>The name of exported output value. Use this name and the <code>Fn::ImportValue</code> function to import the associated value into other stacks. The name is defined in the <code>Export</code> field in the associated stack's <code>Outputs</code> section.</p>
function M.Export(ExportingStackId, Value, Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Export")
	local t = { 
		["ExportingStackId"] = ExportingStackId,
		["Value"] = Value,
		["Name"] = Name,
	}
	M.AssertExport(t)
	return t
end

local Stack_keys = { "StackId" = true, "TimeoutInMinutes" = true, "Description" = true, "Parameters" = true, "Tags" = true, "Outputs" = true, "RoleARN" = true, "StackStatusReason" = true, "CreationTime" = true, "Capabilities" = true, "StackName" = true, "NotificationARNs" = true, "StackStatus" = true, "DisableRollback" = true, "ChangeSetId" = true, "LastUpdatedTime" = true, nil }

function M.AssertStack(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Stack to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	assert(struct["StackStatus"], "Expected key StackStatus to exist in table")
	if struct["StackId"] then M.AssertStackId(struct["StackId"]) end
	if struct["TimeoutInMinutes"] then M.AssertTimeoutMinutes(struct["TimeoutInMinutes"]) end
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["Parameters"] then M.AssertParameters(struct["Parameters"]) end
	if struct["Tags"] then M.AssertTags(struct["Tags"]) end
	if struct["Outputs"] then M.AssertOutputs(struct["Outputs"]) end
	if struct["RoleARN"] then M.AssertRoleARN(struct["RoleARN"]) end
	if struct["StackStatusReason"] then M.AssertStackStatusReason(struct["StackStatusReason"]) end
	if struct["CreationTime"] then M.AssertCreationTime(struct["CreationTime"]) end
	if struct["Capabilities"] then M.AssertCapabilities(struct["Capabilities"]) end
	if struct["StackName"] then M.AssertStackName(struct["StackName"]) end
	if struct["NotificationARNs"] then M.AssertNotificationARNs(struct["NotificationARNs"]) end
	if struct["StackStatus"] then M.AssertStackStatus(struct["StackStatus"]) end
	if struct["DisableRollback"] then M.AssertDisableRollback(struct["DisableRollback"]) end
	if struct["ChangeSetId"] then M.AssertChangeSetId(struct["ChangeSetId"]) end
	if struct["LastUpdatedTime"] then M.AssertLastUpdatedTime(struct["LastUpdatedTime"]) end
	for k,_ in pairs(struct) do
		assert(Stack_keys[k], "Stack contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Stack
-- <p>The Stack data type.</p>
-- @param StackId [StackId] <p>Unique identifier of the stack.</p>
-- @param TimeoutInMinutes [TimeoutMinutes] <p>The amount of time within which stack creation should complete.</p>
-- @param Description [Description] <p>A user-defined description associated with the stack.</p>
-- @param Parameters [Parameters] <p>A list of <code>Parameter</code> structures.</p>
-- @param Tags [Tags] <p>A list of <code>Tag</code>s that specify information about the stack.</p>
-- @param Outputs [Outputs] <p>A list of output structures.</p>
-- @param RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that is associated with the stack. During a stack operation, AWS CloudFormation uses this role's credentials to make calls on your behalf.</p>
-- @param StackStatusReason [StackStatusReason] <p>Success/failure message associated with the stack status.</p>
-- @param CreationTime [CreationTime] <p>The time at which the stack was created.</p>
-- @param Capabilities [Capabilities] <p>The capabilities allowed in the stack.</p>
-- @param StackName [StackName] <p>The name associated with the stack.</p>
-- @param NotificationARNs [NotificationARNs] <p>SNS topic ARNs to which stack related events are published.</p>
-- @param StackStatus [StackStatus] <p>Current status of the stack.</p>
-- @param DisableRollback [DisableRollback] <p>Boolean to enable or disable rollback on stack creation failures:</p> <ul> <li> <p> <code>true</code>: disable rollback</p> </li> <li> <p> <code>false</code>: enable rollback</p> </li> </ul>
-- @param ChangeSetId [ChangeSetId] <p>The unique ID of the change set.</p>
-- @param LastUpdatedTime [LastUpdatedTime] <p>The time the stack was last updated. This field will only be returned if the stack has been updated at least once.</p>
-- Required parameter: StackName
-- Required parameter: CreationTime
-- Required parameter: StackStatus
function M.Stack(StackId, TimeoutInMinutes, Description, Parameters, Tags, Outputs, RoleARN, StackStatusReason, CreationTime, Capabilities, StackName, NotificationARNs, StackStatus, DisableRollback, ChangeSetId, LastUpdatedTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Stack")
	local t = { 
		["StackId"] = StackId,
		["TimeoutInMinutes"] = TimeoutInMinutes,
		["Description"] = Description,
		["Parameters"] = Parameters,
		["Tags"] = Tags,
		["Outputs"] = Outputs,
		["RoleARN"] = RoleARN,
		["StackStatusReason"] = StackStatusReason,
		["CreationTime"] = CreationTime,
		["Capabilities"] = Capabilities,
		["StackName"] = StackName,
		["NotificationARNs"] = NotificationARNs,
		["StackStatus"] = StackStatus,
		["DisableRollback"] = DisableRollback,
		["ChangeSetId"] = ChangeSetId,
		["LastUpdatedTime"] = LastUpdatedTime,
	}
	M.AssertStack(t)
	return t
end

local ChangeSetNotFoundException_keys = { nil }

function M.AssertChangeSetNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeSetNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ChangeSetNotFoundException_keys[k], "ChangeSetNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeSetNotFoundException
-- <p>The specified change set name or ID doesn't exit. To view valid change sets for a stack, use the <code>ListChangeSets</code> action.</p>
function M.ChangeSetNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChangeSetNotFoundException")
	local t = { 
	}
	M.AssertChangeSetNotFoundException(t)
	return t
end

local Output_keys = { "Description" = true, "OutputKey" = true, "OutputValue" = true, nil }

function M.AssertOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Output to be of type 'table'")
	if struct["Description"] then M.AssertDescription(struct["Description"]) end
	if struct["OutputKey"] then M.AssertOutputKey(struct["OutputKey"]) end
	if struct["OutputValue"] then M.AssertOutputValue(struct["OutputValue"]) end
	for k,_ in pairs(struct) do
		assert(Output_keys[k], "Output contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Output
-- <p>The Output data type.</p>
-- @param Description [Description] <p>User defined description associated with the output.</p>
-- @param OutputKey [OutputKey] <p>The key associated with the output.</p>
-- @param OutputValue [OutputValue] <p>The value associated with the output.</p>
function M.Output(Description, OutputKey, OutputValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Output")
	local t = { 
		["Description"] = Description,
		["OutputKey"] = OutputKey,
		["OutputValue"] = OutputValue,
	}
	M.AssertOutput(t)
	return t
end

local EstimateTemplateCostOutput_keys = { "Url" = true, nil }

function M.AssertEstimateTemplateCostOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EstimateTemplateCostOutput to be of type 'table'")
	if struct["Url"] then M.AssertUrl(struct["Url"]) end
	for k,_ in pairs(struct) do
		assert(EstimateTemplateCostOutput_keys[k], "EstimateTemplateCostOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EstimateTemplateCostOutput
-- <p>The output for a <a>EstimateTemplateCost</a> action.</p>
-- @param Url [Url] <p>An AWS Simple Monthly Calculator URL with a query string that describes the resources required to run the template.</p>
function M.EstimateTemplateCostOutput(Url, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EstimateTemplateCostOutput")
	local t = { 
		["Url"] = Url,
	}
	M.AssertEstimateTemplateCostOutput(t)
	return t
end

local GetTemplateOutput_keys = { "StagesAvailable" = true, "TemplateBody" = true, nil }

function M.AssertGetTemplateOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTemplateOutput to be of type 'table'")
	if struct["StagesAvailable"] then M.AssertStageList(struct["StagesAvailable"]) end
	if struct["TemplateBody"] then M.AssertTemplateBody(struct["TemplateBody"]) end
	for k,_ in pairs(struct) do
		assert(GetTemplateOutput_keys[k], "GetTemplateOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTemplateOutput
-- <p>The output for <a>GetTemplate</a> action.</p>
-- @param StagesAvailable [StageList] <p>The stage of the template that you can retrieve. For stacks, the <code>Original</code> and <code>Processed</code> templates are always available. For change sets, the <code>Original</code> template is always available. After AWS CloudFormation finishes creating the change set, the <code>Processed</code> template becomes available.</p>
-- @param TemplateBody [TemplateBody] <p>Structure containing the template body. (For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.)</p> <p>AWS CloudFormation returns the same template that was used when the stack was created.</p>
function M.GetTemplateOutput(StagesAvailable, TemplateBody, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTemplateOutput")
	local t = { 
		["StagesAvailable"] = StagesAvailable,
		["TemplateBody"] = TemplateBody,
	}
	M.AssertGetTemplateOutput(t)
	return t
end

local ListChangeSetsOutput_keys = { "NextToken" = true, "Summaries" = true, nil }

function M.AssertListChangeSetsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListChangeSetsOutput to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Summaries"] then M.AssertChangeSetSummaries(struct["Summaries"]) end
	for k,_ in pairs(struct) do
		assert(ListChangeSetsOutput_keys[k], "ListChangeSetsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListChangeSetsOutput
-- <p>The output for the <a>ListChangeSets</a> action.</p>
-- @param NextToken [NextToken] <p>If the output exceeds 1 MB, a string that identifies the next page of change sets. If there is no additional page, this value is null.</p>
-- @param Summaries [ChangeSetSummaries] <p>A list of <code>ChangeSetSummary</code> structures that provides the ID and status of each change set for the specified stack.</p>
function M.ListChangeSetsOutput(NextToken, Summaries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListChangeSetsOutput")
	local t = { 
		["NextToken"] = NextToken,
		["Summaries"] = Summaries,
	}
	M.AssertListChangeSetsOutput(t)
	return t
end

function M.AssertCausingEntity(str)
	assert(str)
	assert(type(str) == "string", "Expected CausingEntity to be of type 'string'")
end

--  
function M.CausingEntity(str)
	M.AssertCausingEntity(str)
	return str
end

function M.AssertStackId(str)
	assert(str)
	assert(type(str) == "string", "Expected StackId to be of type 'string'")
end

--  
function M.StackId(str)
	M.AssertStackId(str)
	return str
end

function M.AssertTemplateDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected TemplateDescription to be of type 'string'")
end

--  
function M.TemplateDescription(str)
	M.AssertTemplateDescription(str)
	return str
end

function M.AssertResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceType(str)
	M.AssertResourceType(str)
	return str
end

function M.AssertMetadata(str)
	assert(str)
	assert(type(str) == "string", "Expected Metadata to be of type 'string'")
end

--  
function M.Metadata(str)
	M.AssertMetadata(str)
	return str
end

function M.AssertCapabilitiesReason(str)
	assert(str)
	assert(type(str) == "string", "Expected CapabilitiesReason to be of type 'string'")
end

--  
function M.CapabilitiesReason(str)
	M.AssertCapabilitiesReason(str)
	return str
end

function M.AssertEvaluationType(str)
	assert(str)
	assert(type(str) == "string", "Expected EvaluationType to be of type 'string'")
end

--  
function M.EvaluationType(str)
	M.AssertEvaluationType(str)
	return str
end

function M.AssertTemplateURL(str)
	assert(str)
	assert(type(str) == "string", "Expected TemplateURL to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TemplateURL(str)
	M.AssertTemplateURL(str)
	return str
end

function M.AssertReplacement(str)
	assert(str)
	assert(type(str) == "string", "Expected Replacement to be of type 'string'")
end

--  
function M.Replacement(str)
	M.AssertReplacement(str)
	return str
end

function M.AssertResourceSignalStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceSignalStatus to be of type 'string'")
end

--  
function M.ResourceSignalStatus(str)
	M.AssertResourceSignalStatus(str)
	return str
end

function M.AssertStackStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected StackStatus to be of type 'string'")
end

--  
function M.StackStatus(str)
	M.AssertStackStatus(str)
	return str
end

function M.AssertTransformName(str)
	assert(str)
	assert(type(str) == "string", "Expected TransformName to be of type 'string'")
end

--  
function M.TransformName(str)
	M.AssertTransformName(str)
	return str
end

function M.AssertLimitName(str)
	assert(str)
	assert(type(str) == "string", "Expected LimitName to be of type 'string'")
end

--  
function M.LimitName(str)
	M.AssertLimitName(str)
	return str
end

function M.AssertChangeSetName(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeSetName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z][-a-zA-Z0-9]*"), "Expected string to match pattern '[a-zA-Z][-a-zA-Z0-9]*'")
end

--  
function M.ChangeSetName(str)
	M.AssertChangeSetName(str)
	return str
end

function M.AssertExportName(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportName to be of type 'string'")
end

--  
function M.ExportName(str)
	M.AssertExportName(str)
	return str
end

function M.AssertResourceSignalUniqueId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceSignalUniqueId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceSignalUniqueId(str)
	M.AssertResourceSignalUniqueId(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NextToken(str)
	M.AssertNextToken(str)
	return str
end

function M.AssertChangeSetType(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeSetType to be of type 'string'")
end

--  
function M.ChangeSetType(str)
	M.AssertChangeSetType(str)
	return str
end

function M.AssertOutputKey(str)
	assert(str)
	assert(type(str) == "string", "Expected OutputKey to be of type 'string'")
end

--  
function M.OutputKey(str)
	M.AssertOutputKey(str)
	return str
end

function M.AssertResourceStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceStatus to be of type 'string'")
end

--  
function M.ResourceStatus(str)
	M.AssertResourceStatus(str)
	return str
end

function M.AssertChangeSetNameOrId(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeSetNameOrId to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z][-a-zA-Z0-9]*|arn:[-a-zA-Z0-9:/]*"), "Expected string to match pattern '[a-zA-Z][-a-zA-Z0-9]*|arn:[-a-zA-Z0-9:/]*'")
end

--  
function M.ChangeSetNameOrId(str)
	M.AssertChangeSetNameOrId(str)
	return str
end

function M.AssertChangeAction(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeAction to be of type 'string'")
end

--  
function M.ChangeAction(str)
	M.AssertChangeAction(str)
	return str
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertClientRequestToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientRequestToken to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z][-a-zA-Z0-9]*"), "Expected string to match pattern '[a-zA-Z][-a-zA-Z0-9]*'")
end

--  
function M.ClientRequestToken(str)
	M.AssertClientRequestToken(str)
	return str
end

function M.AssertAllowedValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AllowedValue to be of type 'string'")
end

--  
function M.AllowedValue(str)
	M.AssertAllowedValue(str)
	return str
end

function M.AssertParameterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterKey to be of type 'string'")
end

--  
function M.ParameterKey(str)
	M.AssertParameterKey(str)
	return str
end

function M.AssertChangeType(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeType to be of type 'string'")
end

--  
function M.ChangeType(str)
	M.AssertChangeType(str)
	return str
end

function M.AssertStackNameOrId(str)
	assert(str)
	assert(type(str) == "string", "Expected StackNameOrId to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("([a-zA-Z][-a-zA-Z0-9]*)|(arn:%b(aws|aws-us-gov|aws-cn)%b:[-a-zA-Z0-9:/._+]*)"), "Expected string to match pattern '([a-zA-Z][-a-zA-Z0-9]*)|(arn:%b(aws|aws-us-gov|aws-cn)%b:[-a-zA-Z0-9:/._+]*)'")
end

--  
function M.StackNameOrId(str)
	M.AssertStackNameOrId(str)
	return str
end

function M.AssertStackPolicyDuringUpdateBody(str)
	assert(str)
	assert(type(str) == "string", "Expected StackPolicyDuringUpdateBody to be of type 'string'")
	assert(#str <= 16384, "Expected string to be max 16384 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StackPolicyDuringUpdateBody(str)
	M.AssertStackPolicyDuringUpdateBody(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertResourceAttribute(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceAttribute to be of type 'string'")
end

--  
function M.ResourceAttribute(str)
	M.AssertResourceAttribute(str)
	return str
end

function M.AssertTemplateStage(str)
	assert(str)
	assert(type(str) == "string", "Expected TemplateStage to be of type 'string'")
end

--  
function M.TemplateStage(str)
	M.AssertTemplateStage(str)
	return str
end

function M.AssertStackPolicyBody(str)
	assert(str)
	assert(type(str) == "string", "Expected StackPolicyBody to be of type 'string'")
	assert(#str <= 16384, "Expected string to be max 16384 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StackPolicyBody(str)
	M.AssertStackPolicyBody(str)
	return str
end

function M.AssertExecutionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ExecutionStatus to be of type 'string'")
end

--  
function M.ExecutionStatus(str)
	M.AssertExecutionStatus(str)
	return str
end

function M.AssertPhysicalResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected PhysicalResourceId to be of type 'string'")
end

--  
function M.PhysicalResourceId(str)
	M.AssertPhysicalResourceId(str)
	return str
end

function M.AssertClientToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientToken to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ClientToken(str)
	M.AssertClientToken(str)
	return str
end

function M.AssertChangeSetStatusReason(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeSetStatusReason to be of type 'string'")
end

--  
function M.ChangeSetStatusReason(str)
	M.AssertChangeSetStatusReason(str)
	return str
end

function M.AssertOutputValue(str)
	assert(str)
	assert(type(str) == "string", "Expected OutputValue to be of type 'string'")
end

--  
function M.OutputValue(str)
	M.AssertOutputValue(str)
	return str
end

function M.AssertPropertyName(str)
	assert(str)
	assert(type(str) == "string", "Expected PropertyName to be of type 'string'")
end

--  
function M.PropertyName(str)
	M.AssertPropertyName(str)
	return str
end

function M.AssertStackPolicyDuringUpdateURL(str)
	assert(str)
	assert(type(str) == "string", "Expected StackPolicyDuringUpdateURL to be of type 'string'")
	assert(#str <= 1350, "Expected string to be max 1350 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StackPolicyDuringUpdateURL(str)
	M.AssertStackPolicyDuringUpdateURL(str)
	return str
end

function M.AssertOnFailure(str)
	assert(str)
	assert(type(str) == "string", "Expected OnFailure to be of type 'string'")
end

--  
function M.OnFailure(str)
	M.AssertOnFailure(str)
	return str
end

function M.AssertChangeSetId(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeSetId to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("arn:[-a-zA-Z0-9:/]*"), "Expected string to match pattern 'arn:[-a-zA-Z0-9:/]*'")
end

--  
function M.ChangeSetId(str)
	M.AssertChangeSetId(str)
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

function M.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
end

--  
function M.Version(str)
	M.AssertVersion(str)
	return str
end

function M.AssertChangeSetStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeSetStatus to be of type 'string'")
end

--  
function M.ChangeSetStatus(str)
	M.AssertChangeSetStatus(str)
	return str
end

function M.AssertRequiresRecreation(str)
	assert(str)
	assert(type(str) == "string", "Expected RequiresRecreation to be of type 'string'")
end

--  
function M.RequiresRecreation(str)
	M.AssertRequiresRecreation(str)
	return str
end

function M.AssertStackPolicyURL(str)
	assert(str)
	assert(type(str) == "string", "Expected StackPolicyURL to be of type 'string'")
	assert(#str <= 1350, "Expected string to be max 1350 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StackPolicyURL(str)
	M.AssertStackPolicyURL(str)
	return str
end

function M.AssertStackName(str)
	assert(str)
	assert(type(str) == "string", "Expected StackName to be of type 'string'")
end

--  
function M.StackName(str)
	M.AssertStackName(str)
	return str
end

function M.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Description(str)
	M.AssertDescription(str)
	return str
end

function M.AssertExportValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportValue to be of type 'string'")
end

--  
function M.ExportValue(str)
	M.AssertExportValue(str)
	return str
end

function M.AssertNotificationARN(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationARN to be of type 'string'")
end

--  
function M.NotificationARN(str)
	M.AssertNotificationARN(str)
	return str
end

function M.AssertResourceStatusReason(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceStatusReason to be of type 'string'")
end

--  
function M.ResourceStatusReason(str)
	M.AssertResourceStatusReason(str)
	return str
end

function M.AssertEventId(str)
	assert(str)
	assert(type(str) == "string", "Expected EventId to be of type 'string'")
end

--  
function M.EventId(str)
	M.AssertEventId(str)
	return str
end

function M.AssertResourceToSkip(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceToSkip to be of type 'string'")
	assert(str:match("[a-zA-Z0-9]+|[a-zA-Z][-a-zA-Z0-9]*%.[a-zA-Z0-9]+"), "Expected string to match pattern '[a-zA-Z0-9]+|[a-zA-Z][-a-zA-Z0-9]*%.[a-zA-Z0-9]+'")
end

--  
function M.ResourceToSkip(str)
	M.AssertResourceToSkip(str)
	return str
end

function M.AssertStackStatusReason(str)
	assert(str)
	assert(type(str) == "string", "Expected StackStatusReason to be of type 'string'")
end

--  
function M.StackStatusReason(str)
	M.AssertStackStatusReason(str)
	return str
end

function M.AssertTemplateBody(str)
	assert(str)
	assert(type(str) == "string", "Expected TemplateBody to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TemplateBody(str)
	M.AssertTemplateBody(str)
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

function M.AssertRoleARN(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleARN to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.RoleARN(str)
	M.AssertRoleARN(str)
	return str
end

function M.AssertCapability(str)
	assert(str)
	assert(type(str) == "string", "Expected Capability to be of type 'string'")
end

--  
function M.Capability(str)
	M.AssertCapability(str)
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

function M.AssertLogicalResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected LogicalResourceId to be of type 'string'")
end

--  
function M.LogicalResourceId(str)
	M.AssertLogicalResourceId(str)
	return str
end

function M.AssertResourceProperties(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceProperties to be of type 'string'")
end

--  
function M.ResourceProperties(str)
	M.AssertResourceProperties(str)
	return str
end

function M.AssertChangeSource(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeSource to be of type 'string'")
end

--  
function M.ChangeSource(str)
	M.AssertChangeSource(str)
	return str
end

function M.AssertTimeoutMinutes(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TimeoutMinutes to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.TimeoutMinutes(integer)
	M.AssertTimeoutMinutes(integer)
	return integer
end

function M.AssertLimitValue(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected LimitValue to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.LimitValue(integer)
	M.AssertLimitValue(integer)
	return integer
end

function M.AssertDisableRollback(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected DisableRollback to be of type 'boolean'")
end

function M.DisableRollback(boolean)
	M.AssertDisableRollback(boolean)
	return boolean
end

function M.AssertUsePreviousValue(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected UsePreviousValue to be of type 'boolean'")
end

function M.UsePreviousValue(boolean)
	M.AssertUsePreviousValue(boolean)
	return boolean
end

function M.AssertNoEcho(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected NoEcho to be of type 'boolean'")
end

function M.NoEcho(boolean)
	M.AssertNoEcho(boolean)
	return boolean
end

function M.AssertUsePreviousTemplate(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected UsePreviousTemplate to be of type 'boolean'")
end

function M.UsePreviousTemplate(boolean)
	M.AssertUsePreviousTemplate(boolean)
	return boolean
end

function M.AssertCreationTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreationTime to be of type 'string'")
end

function M.CreationTime(timestamp)
	M.AssertCreationTime(timestamp)
	return timestamp
end

function M.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	M.AssertTimestamp(timestamp)
	return timestamp
end

function M.AssertLastUpdatedTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastUpdatedTime to be of type 'string'")
end

function M.LastUpdatedTime(timestamp)
	M.AssertLastUpdatedTime(timestamp)
	return timestamp
end

function M.AssertDeletionTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DeletionTime to be of type 'string'")
end

function M.DeletionTime(timestamp)
	M.AssertDeletionTime(timestamp)
	return timestamp
end

function M.AssertNotificationARNs(list)
	assert(list)
	assert(type(list) == "table", "Expected NotificationARNs to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		M.AssertNotificationARN(v)
	end
end

--  
-- List of NotificationARN objects
function M.NotificationARNs(list)
	M.AssertNotificationARNs(list)
	return list
end

function M.AssertScope(list)
	assert(list)
	assert(type(list) == "table", "Expected Scope to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceAttribute(v)
	end
end

--  
-- List of ResourceAttribute objects
function M.Scope(list)
	M.AssertScope(list)
	return list
end

function M.AssertExports(list)
	assert(list)
	assert(type(list) == "table", "Expected Exports to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertExport(v)
	end
end

--  
-- List of Export objects
function M.Exports(list)
	M.AssertExports(list)
	return list
end

function M.AssertChangeSetSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected ChangeSetSummaries to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertChangeSetSummary(v)
	end
end

--  
-- List of ChangeSetSummary objects
function M.ChangeSetSummaries(list)
	M.AssertChangeSetSummaries(list)
	return list
end

function M.AssertStackEvents(list)
	assert(list)
	assert(type(list) == "table", "Expected StackEvents to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStackEvent(v)
	end
end

--  
-- List of StackEvent objects
function M.StackEvents(list)
	M.AssertStackEvents(list)
	return list
end

function M.AssertStackStatusFilter(list)
	assert(list)
	assert(type(list) == "table", "Expected StackStatusFilter to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStackStatus(v)
	end
end

--  
-- List of StackStatus objects
function M.StackStatusFilter(list)
	M.AssertStackStatusFilter(list)
	return list
end

function M.AssertParameters(list)
	assert(list)
	assert(type(list) == "table", "Expected Parameters to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertParameter(v)
	end
end

--  
-- List of Parameter objects
function M.Parameters(list)
	M.AssertParameters(list)
	return list
end

function M.AssertResourcesToSkip(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourcesToSkip to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceToSkip(v)
	end
end

--  
-- List of ResourceToSkip objects
function M.ResourcesToSkip(list)
	M.AssertResourcesToSkip(list)
	return list
end

function M.AssertChanges(list)
	assert(list)
	assert(type(list) == "table", "Expected Changes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertChange(v)
	end
end

--  
-- List of Change objects
function M.Changes(list)
	M.AssertChanges(list)
	return list
end

function M.AssertTransformsList(list)
	assert(list)
	assert(type(list) == "table", "Expected TransformsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTransformName(v)
	end
end

--  
-- List of TransformName objects
function M.TransformsList(list)
	M.AssertTransformsList(list)
	return list
end

function M.AssertStackResourceSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected StackResourceSummaries to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStackResourceSummary(v)
	end
end

--  
-- List of StackResourceSummary objects
function M.StackResourceSummaries(list)
	M.AssertStackResourceSummaries(list)
	return list
end

function M.AssertOutputs(list)
	assert(list)
	assert(type(list) == "table", "Expected Outputs to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOutput(v)
	end
end

--  
-- List of Output objects
function M.Outputs(list)
	M.AssertOutputs(list)
	return list
end

function M.AssertTags(list)
	assert(list)
	assert(type(list) == "table", "Expected Tags to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.Tags(list)
	M.AssertTags(list)
	return list
end

function M.AssertAllowedValues(list)
	assert(list)
	assert(type(list) == "table", "Expected AllowedValues to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAllowedValue(v)
	end
end

--  
-- List of AllowedValue objects
function M.AllowedValues(list)
	M.AssertAllowedValues(list)
	return list
end

function M.AssertStackResources(list)
	assert(list)
	assert(type(list) == "table", "Expected StackResources to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStackResource(v)
	end
end

--  
-- List of StackResource objects
function M.StackResources(list)
	M.AssertStackResources(list)
	return list
end

function M.AssertRetainResources(list)
	assert(list)
	assert(type(list) == "table", "Expected RetainResources to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLogicalResourceId(v)
	end
end

--  
-- List of LogicalResourceId objects
function M.RetainResources(list)
	M.AssertRetainResources(list)
	return list
end

function M.AssertStacks(list)
	assert(list)
	assert(type(list) == "table", "Expected Stacks to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStack(v)
	end
end

--  
-- List of Stack objects
function M.Stacks(list)
	M.AssertStacks(list)
	return list
end

function M.AssertStageList(list)
	assert(list)
	assert(type(list) == "table", "Expected StageList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTemplateStage(v)
	end
end

--  
-- List of TemplateStage objects
function M.StageList(list)
	M.AssertStageList(list)
	return list
end

function M.AssertImports(list)
	assert(list)
	assert(type(list) == "table", "Expected Imports to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStackName(v)
	end
end

--  
-- List of StackName objects
function M.Imports(list)
	M.AssertImports(list)
	return list
end

function M.AssertResourceTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceTypes to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceType(v)
	end
end

--  
-- List of ResourceType objects
function M.ResourceTypes(list)
	M.AssertResourceTypes(list)
	return list
end

function M.AssertStackSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected StackSummaries to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStackSummary(v)
	end
end

--  
-- List of StackSummary objects
function M.StackSummaries(list)
	M.AssertStackSummaries(list)
	return list
end

function M.AssertCapabilities(list)
	assert(list)
	assert(type(list) == "table", "Expected Capabilities to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertCapability(v)
	end
end

--  
-- List of Capability objects
function M.Capabilities(list)
	M.AssertCapabilities(list)
	return list
end

function M.AssertResourceChangeDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceChangeDetails to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceChangeDetail(v)
	end
end

--  
-- List of ResourceChangeDetail objects
function M.ResourceChangeDetails(list)
	M.AssertResourceChangeDetails(list)
	return list
end

function M.AssertAccountLimitList(list)
	assert(list)
	assert(type(list) == "table", "Expected AccountLimitList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAccountLimit(v)
	end
end

--  
-- List of AccountLimit objects
function M.AccountLimitList(list)
	M.AssertAccountLimitList(list)
	return list
end

function M.AssertTemplateParameters(list)
	assert(list)
	assert(type(list) == "table", "Expected TemplateParameters to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTemplateParameter(v)
	end
end

--  
-- List of TemplateParameter objects
function M.TemplateParameters(list)
	M.AssertTemplateParameters(list)
	return list
end

function M.AssertParameterDeclarations(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterDeclarations to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertParameterDeclaration(v)
	end
end

--  
-- List of ParameterDeclaration objects
function M.ParameterDeclarations(list)
	M.AssertParameterDeclarations(list)
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
			return "cloudformation.amazonaws.com"
		end
	end
	local ss = { "cloudformation" }
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
--- DescribeStackResource
-- @param DescribeStackResourceInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeStackResourceAsync(DescribeStackResourceInput, cb)
	assert(DescribeStackResourceInput, "You must provide a DescribeStackResourceInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeStackResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeStackResourceInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListStackResources
-- @param ListStackResourcesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListStackResourcesAsync(ListStackResourcesInput, cb)
	assert(ListStackResourcesInput, "You must provide a ListStackResourcesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListStackResources",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListStackResourcesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ValidateTemplate
-- @param ValidateTemplateInput
-- @param cb Callback function accepting two args: response, error_message
function M.ValidateTemplateAsync(ValidateTemplateInput, cb)
	assert(ValidateTemplateInput, "You must provide a ValidateTemplateInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ValidateTemplate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ValidateTemplateInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeStackResources
-- @param DescribeStackResourcesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeStackResourcesAsync(DescribeStackResourcesInput, cb)
	assert(DescribeStackResourcesInput, "You must provide a DescribeStackResourcesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeStackResources",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeStackResourcesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListImports
-- @param ListImportsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListImportsAsync(ListImportsInput, cb)
	assert(ListImportsInput, "You must provide a ListImportsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListImports",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListImportsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateStack
-- @param CreateStackInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateStackAsync(CreateStackInput, cb)
	assert(CreateStackInput, "You must provide a CreateStackInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateStackInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetTemplateSummary
-- @param GetTemplateSummaryInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetTemplateSummaryAsync(GetTemplateSummaryInput, cb)
	assert(GetTemplateSummaryInput, "You must provide a GetTemplateSummaryInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetTemplateSummary",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetTemplateSummaryInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CancelUpdateStack
-- @param CancelUpdateStackInput
-- @param cb Callback function accepting two args: response, error_message
function M.CancelUpdateStackAsync(CancelUpdateStackInput, cb)
	assert(CancelUpdateStackInput, "You must provide a CancelUpdateStackInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CancelUpdateStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CancelUpdateStackInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ContinueUpdateRollback
-- @param ContinueUpdateRollbackInput
-- @param cb Callback function accepting two args: response, error_message
function M.ContinueUpdateRollbackAsync(ContinueUpdateRollbackInput, cb)
	assert(ContinueUpdateRollbackInput, "You must provide a ContinueUpdateRollbackInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ContinueUpdateRollback",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ContinueUpdateRollbackInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListChangeSets
-- @param ListChangeSetsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListChangeSetsAsync(ListChangeSetsInput, cb)
	assert(ListChangeSetsInput, "You must provide a ListChangeSetsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListChangeSets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListChangeSetsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetStackPolicy
-- @param GetStackPolicyInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetStackPolicyAsync(GetStackPolicyInput, cb)
	assert(GetStackPolicyInput, "You must provide a GetStackPolicyInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetStackPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetStackPolicyInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListExports
-- @param ListExportsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListExportsAsync(ListExportsInput, cb)
	assert(ListExportsInput, "You must provide a ListExportsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListExports",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListExportsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeStackEvents
-- @param DescribeStackEventsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeStackEventsAsync(DescribeStackEventsInput, cb)
	assert(DescribeStackEventsInput, "You must provide a DescribeStackEventsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeStackEvents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeStackEventsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SignalResource
-- @param SignalResourceInput
-- @param cb Callback function accepting two args: response, error_message
function M.SignalResourceAsync(SignalResourceInput, cb)
	assert(SignalResourceInput, "You must provide a SignalResourceInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SignalResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SignalResourceInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetTemplate
-- @param GetTemplateInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetTemplateAsync(GetTemplateInput, cb)
	assert(GetTemplateInput, "You must provide a GetTemplateInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetTemplate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetTemplateInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeChangeSet
-- @param DescribeChangeSetInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeChangeSetAsync(DescribeChangeSetInput, cb)
	assert(DescribeChangeSetInput, "You must provide a DescribeChangeSetInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeChangeSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeChangeSetInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteChangeSet
-- @param DeleteChangeSetInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteChangeSetAsync(DeleteChangeSetInput, cb)
	assert(DeleteChangeSetInput, "You must provide a DeleteChangeSetInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteChangeSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteChangeSetInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateChangeSet
-- @param CreateChangeSetInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateChangeSetAsync(CreateChangeSetInput, cb)
	assert(CreateChangeSetInput, "You must provide a CreateChangeSetInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".CreateChangeSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateChangeSetInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeStacks
-- @param DescribeStacksInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeStacksAsync(DescribeStacksInput, cb)
	assert(DescribeStacksInput, "You must provide a DescribeStacksInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeStacks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeStacksInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateStack
-- @param UpdateStackInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateStackAsync(UpdateStackInput, cb)
	assert(UpdateStackInput, "You must provide a UpdateStackInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateStackInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ExecuteChangeSet
-- @param ExecuteChangeSetInput
-- @param cb Callback function accepting two args: response, error_message
function M.ExecuteChangeSetAsync(ExecuteChangeSetInput, cb)
	assert(ExecuteChangeSetInput, "You must provide a ExecuteChangeSetInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ExecuteChangeSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ExecuteChangeSetInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteStack
-- @param DeleteStackInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteStackAsync(DeleteStackInput, cb)
	assert(DeleteStackInput, "You must provide a DeleteStackInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteStackInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetStackPolicy
-- @param SetStackPolicyInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetStackPolicyAsync(SetStackPolicyInput, cb)
	assert(SetStackPolicyInput, "You must provide a SetStackPolicyInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".SetStackPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetStackPolicyInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListStacks
-- @param ListStacksInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListStacksAsync(ListStacksInput, cb)
	assert(ListStacksInput, "You must provide a ListStacksInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".ListStacks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListStacksInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- EstimateTemplateCost
-- @param EstimateTemplateCostInput
-- @param cb Callback function accepting two args: response, error_message
function M.EstimateTemplateCostAsync(EstimateTemplateCostInput, cb)
	assert(EstimateTemplateCostInput, "You must provide a EstimateTemplateCostInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".EstimateTemplateCost",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EstimateTemplateCostInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAccountLimits
-- @param DescribeAccountLimitsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAccountLimitsAsync(DescribeAccountLimitsInput, cb)
	assert(DescribeAccountLimitsInput, "You must provide a DescribeAccountLimitsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DescribeAccountLimits",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAccountLimitsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
