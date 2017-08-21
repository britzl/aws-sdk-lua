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

local keys = {}
local asserts = {}

keys.ListStackResourcesInput = { ["StackName"] = true, ["NextToken"] = true, nil }

function asserts.AssertListStackResourcesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStackResourcesInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then asserts.AssertStackName(struct["StackName"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStackResourcesInput[k], "ListStackResourcesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStackResourcesInput
-- <p>The input for the <a>ListStackResource</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [StackName] <p>The name or the unique stack ID that is associated with the stack, which are not always interchangeable:</p> <ul> <li> <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p> </li> <li> <p>Deleted stacks: You must specify the unique stack ID.</p> </li> </ul> <p>Default: There is no default value.</p>
-- * NextToken [NextToken] <p>A string that identifies the next page of stack resources that you want to retrieve.</p>
-- Required key: StackName
-- @return ListStackResourcesInput structure as a key-value pair table
function M.ListStackResourcesInput(args)
	assert(args, "You must provdide an argument table when creating ListStackResourcesInput")
	local t = { 
		["StackName"] = args["StackName"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListStackResourcesInput(t)
	return t
end

keys.ParameterConstraints = { ["AllowedValues"] = true, nil }

function asserts.AssertParameterConstraints(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterConstraints to be of type 'table'")
	if struct["AllowedValues"] then asserts.AssertAllowedValues(struct["AllowedValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParameterConstraints[k], "ParameterConstraints contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterConstraints
-- <p>A set of criteria that AWS CloudFormation uses to validate parameter values. Although other constraints might be defined in the stack template, AWS CloudFormation returns only the <code>AllowedValues</code> property.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AllowedValues [AllowedValues] <p>A list of values that are permitted for a parameter.</p>
-- @return ParameterConstraints structure as a key-value pair table
function M.ParameterConstraints(args)
	assert(args, "You must provdide an argument table when creating ParameterConstraints")
	local t = { 
		["AllowedValues"] = args["AllowedValues"],
	}
	asserts.AssertParameterConstraints(t)
	return t
end

keys.GetTemplateSummaryInput = { ["StackName"] = true, ["TemplateURL"] = true, ["TemplateBody"] = true, nil }

function asserts.AssertGetTemplateSummaryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTemplateSummaryInput to be of type 'table'")
	if struct["StackName"] then asserts.AssertStackNameOrId(struct["StackName"]) end
	if struct["TemplateURL"] then asserts.AssertTemplateURL(struct["TemplateURL"]) end
	if struct["TemplateBody"] then asserts.AssertTemplateBody(struct["TemplateBody"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTemplateSummaryInput[k], "GetTemplateSummaryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTemplateSummaryInput
-- <p>The input for the <a>GetTemplateSummary</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [StackNameOrId] <p>The name or the stack ID that is associated with the stack, which are not always interchangeable. For running stacks, you can specify either the stack's name or its unique stack ID. For deleted stack, you must specify the unique stack ID.</p> <p>Conditional: You must specify only one of the following parameters: <code>StackName</code>, <code>TemplateBody</code>, or <code>TemplateURL</code>.</p>
-- * TemplateURL [TemplateURL] <p>Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information about templates, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must specify only one of the following parameters: <code>StackName</code>, <code>TemplateBody</code>, or <code>TemplateURL</code>.</p>
-- * TemplateBody [TemplateBody] <p>Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information about templates, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must specify only one of the following parameters: <code>StackName</code>, <code>TemplateBody</code>, or <code>TemplateURL</code>.</p>
-- @return GetTemplateSummaryInput structure as a key-value pair table
function M.GetTemplateSummaryInput(args)
	assert(args, "You must provdide an argument table when creating GetTemplateSummaryInput")
	local t = { 
		["StackName"] = args["StackName"],
		["TemplateURL"] = args["TemplateURL"],
		["TemplateBody"] = args["TemplateBody"],
	}
	asserts.AssertGetTemplateSummaryInput(t)
	return t
end

keys.DescribeChangeSetInput = { ["StackName"] = true, ["NextToken"] = true, ["ChangeSetName"] = true, nil }

function asserts.AssertDescribeChangeSetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeChangeSetInput to be of type 'table'")
	assert(struct["ChangeSetName"], "Expected key ChangeSetName to exist in table")
	if struct["StackName"] then asserts.AssertStackNameOrId(struct["StackName"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ChangeSetName"] then asserts.AssertChangeSetNameOrId(struct["ChangeSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeChangeSetInput[k], "DescribeChangeSetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeChangeSetInput
-- <p>The input for the <a>DescribeChangeSet</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [StackNameOrId] <p>If you specified the name of a change set, specify the stack name or ID (ARN) of the change set you want to describe.</p>
-- * NextToken [NextToken] <p>A string (provided by the <a>DescribeChangeSet</a> response output) that identifies the next page of information that you want to retrieve.</p>
-- * ChangeSetName [ChangeSetNameOrId] <p>The name or Amazon Resource Name (ARN) of the change set that you want to describe.</p>
-- Required key: ChangeSetName
-- @return DescribeChangeSetInput structure as a key-value pair table
function M.DescribeChangeSetInput(args)
	assert(args, "You must provdide an argument table when creating DescribeChangeSetInput")
	local t = { 
		["StackName"] = args["StackName"],
		["NextToken"] = args["NextToken"],
		["ChangeSetName"] = args["ChangeSetName"],
	}
	asserts.AssertDescribeChangeSetInput(t)
	return t
end

keys.Change = { ["ResourceChange"] = true, ["Type"] = true, nil }

function asserts.AssertChange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Change to be of type 'table'")
	if struct["ResourceChange"] then asserts.AssertResourceChange(struct["ResourceChange"]) end
	if struct["Type"] then asserts.AssertChangeType(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.Change[k], "Change contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Change
-- <p>The <code>Change</code> structure describes the changes AWS CloudFormation will perform if you execute the change set.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceChange [ResourceChange] <p>A <code>ResourceChange</code> structure that describes the resource and action that AWS CloudFormation will perform.</p>
-- * Type [ChangeType] <p>The type of entity that AWS CloudFormation changes. Currently, the only entity type is <code>Resource</code>.</p>
-- @return Change structure as a key-value pair table
function M.Change(args)
	assert(args, "You must provdide an argument table when creating Change")
	local t = { 
		["ResourceChange"] = args["ResourceChange"],
		["Type"] = args["Type"],
	}
	asserts.AssertChange(t)
	return t
end

keys.StackSummary = { ["StackId"] = true, ["DeletionTime"] = true, ["TemplateDescription"] = true, ["StackStatusReason"] = true, ["CreationTime"] = true, ["StackName"] = true, ["StackStatus"] = true, ["LastUpdatedTime"] = true, nil }

function asserts.AssertStackSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackSummary to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	assert(struct["StackStatus"], "Expected key StackStatus to exist in table")
	if struct["StackId"] then asserts.AssertStackId(struct["StackId"]) end
	if struct["DeletionTime"] then asserts.AssertDeletionTime(struct["DeletionTime"]) end
	if struct["TemplateDescription"] then asserts.AssertTemplateDescription(struct["TemplateDescription"]) end
	if struct["StackStatusReason"] then asserts.AssertStackStatusReason(struct["StackStatusReason"]) end
	if struct["CreationTime"] then asserts.AssertCreationTime(struct["CreationTime"]) end
	if struct["StackName"] then asserts.AssertStackName(struct["StackName"]) end
	if struct["StackStatus"] then asserts.AssertStackStatus(struct["StackStatus"]) end
	if struct["LastUpdatedTime"] then asserts.AssertLastUpdatedTime(struct["LastUpdatedTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.StackSummary[k], "StackSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackSummary
-- <p>The StackSummary Data Type</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [StackId] <p>Unique stack identifier.</p>
-- * DeletionTime [DeletionTime] <p>The time the stack was deleted.</p>
-- * TemplateDescription [TemplateDescription] <p>The template description of the template used to create the stack.</p>
-- * StackStatusReason [StackStatusReason] <p>Success/Failure message associated with the stack status.</p>
-- * CreationTime [CreationTime] <p>The time the stack was created.</p>
-- * StackName [StackName] <p>The name associated with the stack.</p>
-- * StackStatus [StackStatus] <p>The current status of the stack.</p>
-- * LastUpdatedTime [LastUpdatedTime] <p>The time the stack was last updated. This field will only be returned if the stack has been updated at least once.</p>
-- Required key: StackName
-- Required key: CreationTime
-- Required key: StackStatus
-- @return StackSummary structure as a key-value pair table
function M.StackSummary(args)
	assert(args, "You must provdide an argument table when creating StackSummary")
	local t = { 
		["StackId"] = args["StackId"],
		["DeletionTime"] = args["DeletionTime"],
		["TemplateDescription"] = args["TemplateDescription"],
		["StackStatusReason"] = args["StackStatusReason"],
		["CreationTime"] = args["CreationTime"],
		["StackName"] = args["StackName"],
		["StackStatus"] = args["StackStatus"],
		["LastUpdatedTime"] = args["LastUpdatedTime"],
	}
	asserts.AssertStackSummary(t)
	return t
end

keys.TokenAlreadyExistsException = { nil }

function asserts.AssertTokenAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TokenAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TokenAlreadyExistsException[k], "TokenAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TokenAlreadyExistsException
-- <p>A client request token already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TokenAlreadyExistsException structure as a key-value pair table
function M.TokenAlreadyExistsException(args)
	assert(args, "You must provdide an argument table when creating TokenAlreadyExistsException")
	local t = { 
	}
	asserts.AssertTokenAlreadyExistsException(t)
	return t
end

keys.DescribeAccountLimitsInput = { ["NextToken"] = true, nil }

function asserts.AssertDescribeAccountLimitsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountLimitsInput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAccountLimitsInput[k], "DescribeAccountLimitsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountLimitsInput
-- <p>The input for the <a>DescribeAccountLimits</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>A string that identifies the next page of limits that you want to retrieve.</p>
-- @return DescribeAccountLimitsInput structure as a key-value pair table
function M.DescribeAccountLimitsInput(args)
	assert(args, "You must provdide an argument table when creating DescribeAccountLimitsInput")
	local t = { 
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeAccountLimitsInput(t)
	return t
end

keys.StackResourceDetail = { ["StackId"] = true, ["ResourceStatus"] = true, ["Description"] = true, ["ResourceType"] = true, ["ResourceStatusReason"] = true, ["LastUpdatedTimestamp"] = true, ["StackName"] = true, ["PhysicalResourceId"] = true, ["Metadata"] = true, ["LogicalResourceId"] = true, nil }

function asserts.AssertStackResourceDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackResourceDetail to be of type 'table'")
	assert(struct["LogicalResourceId"], "Expected key LogicalResourceId to exist in table")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["LastUpdatedTimestamp"], "Expected key LastUpdatedTimestamp to exist in table")
	assert(struct["ResourceStatus"], "Expected key ResourceStatus to exist in table")
	if struct["StackId"] then asserts.AssertStackId(struct["StackId"]) end
	if struct["ResourceStatus"] then asserts.AssertResourceStatus(struct["ResourceStatus"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["ResourceType"] then asserts.AssertResourceType(struct["ResourceType"]) end
	if struct["ResourceStatusReason"] then asserts.AssertResourceStatusReason(struct["ResourceStatusReason"]) end
	if struct["LastUpdatedTimestamp"] then asserts.AssertTimestamp(struct["LastUpdatedTimestamp"]) end
	if struct["StackName"] then asserts.AssertStackName(struct["StackName"]) end
	if struct["PhysicalResourceId"] then asserts.AssertPhysicalResourceId(struct["PhysicalResourceId"]) end
	if struct["Metadata"] then asserts.AssertMetadata(struct["Metadata"]) end
	if struct["LogicalResourceId"] then asserts.AssertLogicalResourceId(struct["LogicalResourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StackResourceDetail[k], "StackResourceDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackResourceDetail
-- <p>Contains detailed information about the specified stack resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [StackId] <p>Unique identifier of the stack.</p>
-- * ResourceStatus [ResourceStatus] <p>Current status of the resource.</p>
-- * Description [Description] <p>User defined description associated with the resource.</p>
-- * ResourceType [ResourceType] <p>Type of resource. ((For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html"> AWS Resource Types Reference</a> in the AWS CloudFormation User Guide.)</p>
-- * ResourceStatusReason [ResourceStatusReason] <p>Success/failure message associated with the resource.</p>
-- * LastUpdatedTimestamp [Timestamp] <p>Time the status was updated.</p>
-- * StackName [StackName] <p>The name associated with the stack.</p>
-- * PhysicalResourceId [PhysicalResourceId] <p>The name or unique identifier that corresponds to a physical instance ID of a resource supported by AWS CloudFormation.</p>
-- * Metadata [Metadata] <p>The content of the <code>Metadata</code> attribute declared for the resource. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-metadata.html">Metadata Attribute</a> in the AWS CloudFormation User Guide.</p>
-- * LogicalResourceId [LogicalResourceId] <p>The logical name of the resource specified in the template.</p>
-- Required key: LogicalResourceId
-- Required key: ResourceType
-- Required key: LastUpdatedTimestamp
-- Required key: ResourceStatus
-- @return StackResourceDetail structure as a key-value pair table
function M.StackResourceDetail(args)
	assert(args, "You must provdide an argument table when creating StackResourceDetail")
	local t = { 
		["StackId"] = args["StackId"],
		["ResourceStatus"] = args["ResourceStatus"],
		["Description"] = args["Description"],
		["ResourceType"] = args["ResourceType"],
		["ResourceStatusReason"] = args["ResourceStatusReason"],
		["LastUpdatedTimestamp"] = args["LastUpdatedTimestamp"],
		["StackName"] = args["StackName"],
		["PhysicalResourceId"] = args["PhysicalResourceId"],
		["Metadata"] = args["Metadata"],
		["LogicalResourceId"] = args["LogicalResourceId"],
	}
	asserts.AssertStackResourceDetail(t)
	return t
end

keys.ContinueUpdateRollbackOutput = { nil }

function asserts.AssertContinueUpdateRollbackOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContinueUpdateRollbackOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ContinueUpdateRollbackOutput[k], "ContinueUpdateRollbackOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContinueUpdateRollbackOutput
-- <p>The output for a <a>ContinueUpdateRollback</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ContinueUpdateRollbackOutput structure as a key-value pair table
function M.ContinueUpdateRollbackOutput(args)
	assert(args, "You must provdide an argument table when creating ContinueUpdateRollbackOutput")
	local t = { 
	}
	asserts.AssertContinueUpdateRollbackOutput(t)
	return t
end

keys.ListChangeSetsInput = { ["StackName"] = true, ["NextToken"] = true, nil }

function asserts.AssertListChangeSetsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListChangeSetsInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then asserts.AssertStackNameOrId(struct["StackName"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListChangeSetsInput[k], "ListChangeSetsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListChangeSetsInput
-- <p>The input for the <a>ListChangeSets</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [StackNameOrId] <p>The name or the Amazon Resource Name (ARN) of the stack for which you want to list change sets.</p>
-- * NextToken [NextToken] <p>A string (provided by the <a>ListChangeSets</a> response output) that identifies the next page of change sets that you want to retrieve.</p>
-- Required key: StackName
-- @return ListChangeSetsInput structure as a key-value pair table
function M.ListChangeSetsInput(args)
	assert(args, "You must provdide an argument table when creating ListChangeSetsInput")
	local t = { 
		["StackName"] = args["StackName"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListChangeSetsInput(t)
	return t
end

keys.DeleteStackInput = { ["StackName"] = true, ["RetainResources"] = true, ["RoleARN"] = true, ["ClientRequestToken"] = true, nil }

function asserts.AssertDeleteStackInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStackInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then asserts.AssertStackName(struct["StackName"]) end
	if struct["RetainResources"] then asserts.AssertRetainResources(struct["RetainResources"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestToken(struct["ClientRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteStackInput[k], "DeleteStackInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStackInput
-- <p>The input for <a>DeleteStack</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [StackName] <p>The name or the unique stack ID that is associated with the stack.</p>
-- * RetainResources [RetainResources] <p>For stacks in the <code>DELETE_FAILED</code> state, a list of resource logical IDs that are associated with the resources you want to retain. During deletion, AWS CloudFormation deletes the stack but does not delete the retained resources.</p> <p>Retaining resources is useful when you cannot delete a resource, such as a non-empty S3 bucket, but you want to delete the stack.</p>
-- * RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to delete the stack. AWS CloudFormation uses the role's credentials to make calls on your behalf.</p> <p>If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.</p>
-- * ClientRequestToken [ClientRequestToken] <p>A unique identifier for this <code>DeleteStack</code> request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to delete a stack with the same name. You might retry <code>DeleteStack</code> requests to ensure that AWS CloudFormation successfully received them.</p>
-- Required key: StackName
-- @return DeleteStackInput structure as a key-value pair table
function M.DeleteStackInput(args)
	assert(args, "You must provdide an argument table when creating DeleteStackInput")
	local t = { 
		["StackName"] = args["StackName"],
		["RetainResources"] = args["RetainResources"],
		["RoleARN"] = args["RoleARN"],
		["ClientRequestToken"] = args["ClientRequestToken"],
	}
	asserts.AssertDeleteStackInput(t)
	return t
end

keys.Tag = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	if struct["Value"] then asserts.AssertTagValue(struct["Value"]) end
	if struct["Key"] then asserts.AssertTagKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>The Tag type enables you to specify a key-value pair that can be used to store information about an AWS CloudFormation stack.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p> <i>Required</i>. A string containing the value for this tag. You can specify a maximum of 256 characters for a tag value.</p>
-- * Key [TagKey] <p> <i>Required</i>. A string used to identify this tag. You can specify a maximum of 128 characters for a tag key. Tags owned by Amazon Web Services (AWS) have the reserved prefix: <code>aws:</code>.</p>
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

keys.CreateChangeSetInput = { ["ChangeSetName"] = true, ["TemplateBody"] = true, ["Parameters"] = true, ["Tags"] = true, ["RoleARN"] = true, ["UsePreviousTemplate"] = true, ["Capabilities"] = true, ["StackName"] = true, ["NotificationARNs"] = true, ["ResourceTypes"] = true, ["ClientToken"] = true, ["TemplateURL"] = true, ["ChangeSetType"] = true, ["Description"] = true, nil }

function asserts.AssertCreateChangeSetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateChangeSetInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	assert(struct["ChangeSetName"], "Expected key ChangeSetName to exist in table")
	if struct["ChangeSetName"] then asserts.AssertChangeSetName(struct["ChangeSetName"]) end
	if struct["TemplateBody"] then asserts.AssertTemplateBody(struct["TemplateBody"]) end
	if struct["Parameters"] then asserts.AssertParameters(struct["Parameters"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["UsePreviousTemplate"] then asserts.AssertUsePreviousTemplate(struct["UsePreviousTemplate"]) end
	if struct["Capabilities"] then asserts.AssertCapabilities(struct["Capabilities"]) end
	if struct["StackName"] then asserts.AssertStackNameOrId(struct["StackName"]) end
	if struct["NotificationARNs"] then asserts.AssertNotificationARNs(struct["NotificationARNs"]) end
	if struct["ResourceTypes"] then asserts.AssertResourceTypes(struct["ResourceTypes"]) end
	if struct["ClientToken"] then asserts.AssertClientToken(struct["ClientToken"]) end
	if struct["TemplateURL"] then asserts.AssertTemplateURL(struct["TemplateURL"]) end
	if struct["ChangeSetType"] then asserts.AssertChangeSetType(struct["ChangeSetType"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateChangeSetInput[k], "CreateChangeSetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateChangeSetInput
-- <p>The input for the <a>CreateChangeSet</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ChangeSetName [ChangeSetName] <p>The name of the change set. The name must be unique among all change sets that are associated with the specified stack.</p> <p>A change set name can contain only alphanumeric, case sensitive characters and hyphens. It must start with an alphabetic character and cannot exceed 128 characters.</p>
-- * TemplateBody [TemplateBody] <p>A structure that contains the body of the revised template, with a minimum length of 1 byte and a maximum length of 51,200 bytes. AWS CloudFormation generates the change set by comparing this template with the template of the stack that you specified.</p> <p>Conditional: You must specify only <code>TemplateBody</code> or <code>TemplateURL</code>.</p>
-- * Parameters [Parameters] <p>A list of <code>Parameter</code> structures that specify input parameters for the change set. For more information, see the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html">Parameter</a> data type.</p>
-- * Tags [Tags] <p>Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to resources in the stack. You can specify a maximum of 10 tags.</p>
-- * RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes when executing the change set. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege.</p> <p>If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.</p>
-- * UsePreviousTemplate [UsePreviousTemplate] <p>Whether to reuse the template that is associated with the stack to create the change set.</p>
-- * Capabilities [Capabilities] <p>A list of values that you must specify before AWS CloudFormation can update certain stacks. Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter.</p> <p>The only valid values are <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>. The following resources require you to specify this parameter: <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html"> AWS::IAM::AccessKey</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html"> AWS::IAM::Group</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html"> AWS::IAM::InstanceProfile</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html"> AWS::IAM::Policy</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html"> AWS::IAM::Role</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html"> AWS::IAM::User</a>, and <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html"> AWS::IAM::UserToGroupAddition</a>. If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.</p> <p>If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify <code>CAPABILITY_NAMED_IAM</code>. If you don't specify this parameter, this action returns an <code>InsufficientCapabilities</code> error.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging IAM Resources in AWS CloudFormation Templates</a>.</p>
-- * StackName [StackNameOrId] <p>The name or the unique ID of the stack for which you are creating a change set. AWS CloudFormation generates the change set by comparing this stack's information with the information that you submit, such as a modified template or different parameter input values.</p>
-- * NotificationARNs [NotificationARNs] <p>The Amazon Resource Names (ARNs) of Amazon Simple Notification Service (Amazon SNS) topics that AWS CloudFormation associates with the stack. To remove all associated notification topics, specify an empty list.</p>
-- * ResourceTypes [ResourceTypes] <p>The template resource types that you have permissions to work with if you execute this change set, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or <code>Custom::MyCustomInstance</code>.</p> <p>If the list of resource types doesn't include a resource type that you're updating, the stack update fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for condition keys in IAM policies for AWS CloudFormation. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html">Controlling Access with AWS Identity and Access Management</a> in the AWS CloudFormation User Guide.</p>
-- * ClientToken [ClientToken] <p>A unique identifier for this <code>CreateChangeSet</code> request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create another change set with the same name. You might retry <code>CreateChangeSet</code> requests to ensure that AWS CloudFormation successfully received them.</p>
-- * TemplateURL [TemplateURL] <p>The location of the file that contains the revised template. The URL must point to a template (max size: 460,800 bytes) that is located in an S3 bucket. AWS CloudFormation generates the change set by comparing this template with the stack that you specified.</p> <p>Conditional: You must specify only <code>TemplateBody</code> or <code>TemplateURL</code>.</p>
-- * ChangeSetType [ChangeSetType] <p>The type of change set operation. To create a change set for a new stack, specify <code>CREATE</code>. To create a change set for an existing stack, specify <code>UPDATE</code>.</p> <p>If you create a change set for a new stack, AWS Cloudformation creates a stack with a unique stack ID, but no template or resources. The stack will be in the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-describing-stacks.html#d0e11995"> <code>REVIEW_IN_PROGRESS</code> </a> state until you execute the change set.</p> <p>By default, AWS CloudFormation specifies <code>UPDATE</code>. You can't use the <code>UPDATE</code> type to create a change set for a new stack or the <code>CREATE</code> type to create a change set for an existing stack.</p>
-- * Description [Description] <p>A description to help you identify this change set.</p>
-- Required key: StackName
-- Required key: ChangeSetName
-- @return CreateChangeSetInput structure as a key-value pair table
function M.CreateChangeSetInput(args)
	assert(args, "You must provdide an argument table when creating CreateChangeSetInput")
	local t = { 
		["ChangeSetName"] = args["ChangeSetName"],
		["TemplateBody"] = args["TemplateBody"],
		["Parameters"] = args["Parameters"],
		["Tags"] = args["Tags"],
		["RoleARN"] = args["RoleARN"],
		["UsePreviousTemplate"] = args["UsePreviousTemplate"],
		["Capabilities"] = args["Capabilities"],
		["StackName"] = args["StackName"],
		["NotificationARNs"] = args["NotificationARNs"],
		["ResourceTypes"] = args["ResourceTypes"],
		["ClientToken"] = args["ClientToken"],
		["TemplateURL"] = args["TemplateURL"],
		["ChangeSetType"] = args["ChangeSetType"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateChangeSetInput(t)
	return t
end

keys.DescribeStackEventsOutput = { ["StackEvents"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeStackEventsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackEventsOutput to be of type 'table'")
	if struct["StackEvents"] then asserts.AssertStackEvents(struct["StackEvents"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStackEventsOutput[k], "DescribeStackEventsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackEventsOutput
-- <p>The output for a <a>DescribeStackEvents</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackEvents [StackEvents] <p>A list of <code>StackEvents</code> structures.</p>
-- * NextToken [NextToken] <p>If the output exceeds 1 MB in size, a string that identifies the next page of events. If no additional page exists, this value is null.</p>
-- @return DescribeStackEventsOutput structure as a key-value pair table
function M.DescribeStackEventsOutput(args)
	assert(args, "You must provdide an argument table when creating DescribeStackEventsOutput")
	local t = { 
		["StackEvents"] = args["StackEvents"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeStackEventsOutput(t)
	return t
end

keys.ValidateTemplateOutput = { ["DeclaredTransforms"] = true, ["CapabilitiesReason"] = true, ["Description"] = true, ["Parameters"] = true, ["Capabilities"] = true, nil }

function asserts.AssertValidateTemplateOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidateTemplateOutput to be of type 'table'")
	if struct["DeclaredTransforms"] then asserts.AssertTransformsList(struct["DeclaredTransforms"]) end
	if struct["CapabilitiesReason"] then asserts.AssertCapabilitiesReason(struct["CapabilitiesReason"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["Parameters"] then asserts.AssertTemplateParameters(struct["Parameters"]) end
	if struct["Capabilities"] then asserts.AssertCapabilities(struct["Capabilities"]) end
	for k,_ in pairs(struct) do
		assert(keys.ValidateTemplateOutput[k], "ValidateTemplateOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidateTemplateOutput
-- <p>The output for <a>ValidateTemplate</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeclaredTransforms [TransformsList] <p>A list of the transforms that are declared in the template.</p>
-- * CapabilitiesReason [CapabilitiesReason] <p>The list of resources that generated the values in the <code>Capabilities</code> response element.</p>
-- * Description [Description] <p>The description found within the template.</p>
-- * Parameters [TemplateParameters] <p>A list of <code>TemplateParameter</code> structures.</p>
-- * Capabilities [Capabilities] <p>The capabilities found within the template. If your template contains IAM resources, you must specify the CAPABILITY_IAM or CAPABILITY_NAMED_IAM value for this parameter when you use the <a>CreateStack</a> or <a>UpdateStack</a> actions with your template; otherwise, those actions return an InsufficientCapabilities error.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging IAM Resources in AWS CloudFormation Templates</a>.</p>
-- @return ValidateTemplateOutput structure as a key-value pair table
function M.ValidateTemplateOutput(args)
	assert(args, "You must provdide an argument table when creating ValidateTemplateOutput")
	local t = { 
		["DeclaredTransforms"] = args["DeclaredTransforms"],
		["CapabilitiesReason"] = args["CapabilitiesReason"],
		["Description"] = args["Description"],
		["Parameters"] = args["Parameters"],
		["Capabilities"] = args["Capabilities"],
	}
	asserts.AssertValidateTemplateOutput(t)
	return t
end

keys.ResourceTargetDefinition = { ["Attribute"] = true, ["Name"] = true, ["RequiresRecreation"] = true, nil }

function asserts.AssertResourceTargetDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceTargetDefinition to be of type 'table'")
	if struct["Attribute"] then asserts.AssertResourceAttribute(struct["Attribute"]) end
	if struct["Name"] then asserts.AssertPropertyName(struct["Name"]) end
	if struct["RequiresRecreation"] then asserts.AssertRequiresRecreation(struct["RequiresRecreation"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceTargetDefinition[k], "ResourceTargetDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceTargetDefinition
-- <p>The field that AWS CloudFormation will change, such as the name of a resource's property, and whether the resource will be recreated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attribute [ResourceAttribute] <p>Indicates which resource attribute is triggering this update, such as a change in the resource attribute's <code>Metadata</code>, <code>Properties</code>, or <code>Tags</code>.</p>
-- * Name [PropertyName] <p>If the <code>Attribute</code> value is <code>Properties</code>, the name of the property. For all other attributes, the value is null.</p>
-- * RequiresRecreation [RequiresRecreation] <p>If the <code>Attribute</code> value is <code>Properties</code>, indicates whether a change to this property causes the resource to be recreated. The value can be <code>Never</code>, <code>Always</code>, or <code>Conditionally</code>. To determine the conditions for a <code>Conditionally</code> recreation, see the update behavior for that <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">property</a> in the AWS CloudFormation User Guide.</p>
-- @return ResourceTargetDefinition structure as a key-value pair table
function M.ResourceTargetDefinition(args)
	assert(args, "You must provdide an argument table when creating ResourceTargetDefinition")
	local t = { 
		["Attribute"] = args["Attribute"],
		["Name"] = args["Name"],
		["RequiresRecreation"] = args["RequiresRecreation"],
	}
	asserts.AssertResourceTargetDefinition(t)
	return t
end

keys.LimitExceededException = { nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>Quota for the resource has already been reached.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provdide an argument table when creating LimitExceededException")
	local t = { 
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.TemplateParameter = { ["DefaultValue"] = true, ["NoEcho"] = true, ["Description"] = true, ["ParameterKey"] = true, nil }

function asserts.AssertTemplateParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TemplateParameter to be of type 'table'")
	if struct["DefaultValue"] then asserts.AssertParameterValue(struct["DefaultValue"]) end
	if struct["NoEcho"] then asserts.AssertNoEcho(struct["NoEcho"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["ParameterKey"] then asserts.AssertParameterKey(struct["ParameterKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.TemplateParameter[k], "TemplateParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TemplateParameter
-- <p>The TemplateParameter data type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DefaultValue [ParameterValue] <p>The default value associated with the parameter.</p>
-- * NoEcho [NoEcho] <p>Flag indicating whether the parameter should be displayed as plain text in logs and UIs.</p>
-- * Description [Description] <p>User defined description associated with the parameter.</p>
-- * ParameterKey [ParameterKey] <p>The name associated with the parameter.</p>
-- @return TemplateParameter structure as a key-value pair table
function M.TemplateParameter(args)
	assert(args, "You must provdide an argument table when creating TemplateParameter")
	local t = { 
		["DefaultValue"] = args["DefaultValue"],
		["NoEcho"] = args["NoEcho"],
		["Description"] = args["Description"],
		["ParameterKey"] = args["ParameterKey"],
	}
	asserts.AssertTemplateParameter(t)
	return t
end

keys.ListStacksOutput = { ["StackSummaries"] = true, ["NextToken"] = true, nil }

function asserts.AssertListStacksOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStacksOutput to be of type 'table'")
	if struct["StackSummaries"] then asserts.AssertStackSummaries(struct["StackSummaries"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStacksOutput[k], "ListStacksOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStacksOutput
-- <p>The output for <a>ListStacks</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackSummaries [StackSummaries] <p>A list of <code>StackSummary</code> structures containing information about the specified stacks.</p>
-- * NextToken [NextToken] <p>If the output exceeds 1 MB in size, a string that identifies the next page of stacks. If no additional page exists, this value is null.</p>
-- @return ListStacksOutput structure as a key-value pair table
function M.ListStacksOutput(args)
	assert(args, "You must provdide an argument table when creating ListStacksOutput")
	local t = { 
		["StackSummaries"] = args["StackSummaries"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListStacksOutput(t)
	return t
end

keys.DescribeChangeSetOutput = { ["StackId"] = true, ["Status"] = true, ["ChangeSetName"] = true, ["Description"] = true, ["Parameters"] = true, ["Tags"] = true, ["Changes"] = true, ["CreationTime"] = true, ["StatusReason"] = true, ["StackName"] = true, ["NotificationARNs"] = true, ["Capabilities"] = true, ["ExecutionStatus"] = true, ["NextToken"] = true, ["ChangeSetId"] = true, nil }

function asserts.AssertDescribeChangeSetOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeChangeSetOutput to be of type 'table'")
	if struct["StackId"] then asserts.AssertStackId(struct["StackId"]) end
	if struct["Status"] then asserts.AssertChangeSetStatus(struct["Status"]) end
	if struct["ChangeSetName"] then asserts.AssertChangeSetName(struct["ChangeSetName"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["Parameters"] then asserts.AssertParameters(struct["Parameters"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["Changes"] then asserts.AssertChanges(struct["Changes"]) end
	if struct["CreationTime"] then asserts.AssertCreationTime(struct["CreationTime"]) end
	if struct["StatusReason"] then asserts.AssertChangeSetStatusReason(struct["StatusReason"]) end
	if struct["StackName"] then asserts.AssertStackName(struct["StackName"]) end
	if struct["NotificationARNs"] then asserts.AssertNotificationARNs(struct["NotificationARNs"]) end
	if struct["Capabilities"] then asserts.AssertCapabilities(struct["Capabilities"]) end
	if struct["ExecutionStatus"] then asserts.AssertExecutionStatus(struct["ExecutionStatus"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ChangeSetId"] then asserts.AssertChangeSetId(struct["ChangeSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeChangeSetOutput[k], "DescribeChangeSetOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeChangeSetOutput
-- <p>The output for the <a>DescribeChangeSet</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [StackId] <p>The ARN of the stack that is associated with the change set.</p>
-- * Status [ChangeSetStatus] <p>The current status of the change set, such as <code>CREATE_IN_PROGRESS</code>, <code>CREATE_COMPLETE</code>, or <code>FAILED</code>.</p>
-- * ChangeSetName [ChangeSetName] <p>The name of the change set.</p>
-- * Description [Description] <p>Information about the change set.</p>
-- * Parameters [Parameters] <p>A list of <code>Parameter</code> structures that describes the input parameters and their values used to create the change set. For more information, see the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html">Parameter</a> data type.</p>
-- * Tags [Tags] <p>If you execute the change set, the tags that will be associated with the stack.</p>
-- * Changes [Changes] <p>A list of <code>Change</code> structures that describes the resources AWS CloudFormation changes if you execute the change set.</p>
-- * CreationTime [CreationTime] <p>The start time when the change set was created, in UTC.</p>
-- * StatusReason [ChangeSetStatusReason] <p>A description of the change set's status. For example, if your attempt to create a change set failed, AWS CloudFormation shows the error message.</p>
-- * StackName [StackName] <p>The name of the stack that is associated with the change set.</p>
-- * NotificationARNs [NotificationARNs] <p>The ARNs of the Amazon Simple Notification Service (Amazon SNS) topics that will be associated with the stack if you execute the change set.</p>
-- * Capabilities [Capabilities] <p>If you execute the change set, the list of capabilities that were explicitly acknowledged when the change set was created.</p>
-- * ExecutionStatus [ExecutionStatus] <p>If the change set execution status is <code>AVAILABLE</code>, you can execute the change set. If you can’t execute the change set, the status indicates why. For example, a change set might be in an <code>UNAVAILABLE</code> state because AWS CloudFormation is still creating it or in an <code>OBSOLETE</code> state because the stack was already updated.</p>
-- * NextToken [NextToken] <p>If the output exceeds 1 MB, a string that identifies the next page of changes. If there is no additional page, this value is null.</p>
-- * ChangeSetId [ChangeSetId] <p>The ARN of the change set.</p>
-- @return DescribeChangeSetOutput structure as a key-value pair table
function M.DescribeChangeSetOutput(args)
	assert(args, "You must provdide an argument table when creating DescribeChangeSetOutput")
	local t = { 
		["StackId"] = args["StackId"],
		["Status"] = args["Status"],
		["ChangeSetName"] = args["ChangeSetName"],
		["Description"] = args["Description"],
		["Parameters"] = args["Parameters"],
		["Tags"] = args["Tags"],
		["Changes"] = args["Changes"],
		["CreationTime"] = args["CreationTime"],
		["StatusReason"] = args["StatusReason"],
		["StackName"] = args["StackName"],
		["NotificationARNs"] = args["NotificationARNs"],
		["Capabilities"] = args["Capabilities"],
		["ExecutionStatus"] = args["ExecutionStatus"],
		["NextToken"] = args["NextToken"],
		["ChangeSetId"] = args["ChangeSetId"],
	}
	asserts.AssertDescribeChangeSetOutput(t)
	return t
end

keys.UpdateStackInput = { ["Tags"] = true, ["StackPolicyDuringUpdateURL"] = true, ["Parameters"] = true, ["TemplateBody"] = true, ["StackPolicyURL"] = true, ["RoleARN"] = true, ["UsePreviousTemplate"] = true, ["StackPolicyBody"] = true, ["Capabilities"] = true, ["StackName"] = true, ["StackPolicyDuringUpdateBody"] = true, ["ResourceTypes"] = true, ["NotificationARNs"] = true, ["ClientRequestToken"] = true, ["TemplateURL"] = true, nil }

function asserts.AssertUpdateStackInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStackInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["StackPolicyDuringUpdateURL"] then asserts.AssertStackPolicyDuringUpdateURL(struct["StackPolicyDuringUpdateURL"]) end
	if struct["Parameters"] then asserts.AssertParameters(struct["Parameters"]) end
	if struct["TemplateBody"] then asserts.AssertTemplateBody(struct["TemplateBody"]) end
	if struct["StackPolicyURL"] then asserts.AssertStackPolicyURL(struct["StackPolicyURL"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["UsePreviousTemplate"] then asserts.AssertUsePreviousTemplate(struct["UsePreviousTemplate"]) end
	if struct["StackPolicyBody"] then asserts.AssertStackPolicyBody(struct["StackPolicyBody"]) end
	if struct["Capabilities"] then asserts.AssertCapabilities(struct["Capabilities"]) end
	if struct["StackName"] then asserts.AssertStackName(struct["StackName"]) end
	if struct["StackPolicyDuringUpdateBody"] then asserts.AssertStackPolicyDuringUpdateBody(struct["StackPolicyDuringUpdateBody"]) end
	if struct["ResourceTypes"] then asserts.AssertResourceTypes(struct["ResourceTypes"]) end
	if struct["NotificationARNs"] then asserts.AssertNotificationARNs(struct["NotificationARNs"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestToken(struct["ClientRequestToken"]) end
	if struct["TemplateURL"] then asserts.AssertTemplateURL(struct["TemplateURL"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateStackInput[k], "UpdateStackInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStackInput
-- <p>The input for an <a>UpdateStack</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [Tags] <p>Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to supported resources in the stack. You can specify a maximum number of 10 tags.</p> <p>If you don't specify this parameter, AWS CloudFormation doesn't modify the stack's tags. If you specify an empty value, AWS CloudFormation removes all associated tags.</p>
-- * StackPolicyDuringUpdateURL [StackPolicyDuringUpdateURL] <p>Location of a file containing the temporary overriding stack policy. The URL must point to a policy (max size: 16KB) located in an S3 bucket in the same region as the stack. You can specify either the <code>StackPolicyDuringUpdateBody</code> or the <code>StackPolicyDuringUpdateURL</code> parameter, but not both.</p> <p>If you want to update protected resources, specify a temporary overriding stack policy during this update. If you do not specify a stack policy, the current policy that is associated with the stack will be used.</p>
-- * Parameters [Parameters] <p>A list of <code>Parameter</code> structures that specify input parameters for the stack. For more information, see the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html">Parameter</a> data type.</p>
-- * TemplateBody [TemplateBody] <p>Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. (For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.)</p> <p>Conditional: You must specify only one of the following parameters: <code>TemplateBody</code>, <code>TemplateURL</code>, or set the <code>UsePreviousTemplate</code> to <code>true</code>.</p>
-- * StackPolicyURL [StackPolicyURL] <p>Location of a file containing the updated stack policy. The URL must point to a policy (max size: 16KB) located in an S3 bucket in the same region as the stack. You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but not both.</p> <p>You might update the stack policy, for example, in order to protect a new resource that you created during a stack update. If you do not specify a stack policy, the current policy that is associated with the stack is unchanged.</p>
-- * RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to update the stack. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation always uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege.</p> <p>If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.</p>
-- * UsePreviousTemplate [UsePreviousTemplate] <p>Reuse the existing template that is associated with the stack that you are updating.</p> <p>Conditional: You must specify only one of the following parameters: <code>TemplateBody</code>, <code>TemplateURL</code>, or set the <code>UsePreviousTemplate</code> to <code>true</code>.</p>
-- * StackPolicyBody [StackPolicyBody] <p>Structure containing a new stack policy body. You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but not both.</p> <p>You might update the stack policy, for example, in order to protect a new resource that you created during a stack update. If you do not specify a stack policy, the current policy that is associated with the stack is unchanged.</p>
-- * Capabilities [Capabilities] <p>A list of values that you must specify before AWS CloudFormation can update certain stacks. Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter.</p> <p>The only valid values are <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>. The following resources require you to specify this parameter: <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html"> AWS::IAM::AccessKey</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html"> AWS::IAM::Group</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html"> AWS::IAM::InstanceProfile</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html"> AWS::IAM::Policy</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html"> AWS::IAM::Role</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html"> AWS::IAM::User</a>, and <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html"> AWS::IAM::UserToGroupAddition</a>. If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.</p> <p>If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify <code>CAPABILITY_NAMED_IAM</code>. If you don't specify this parameter, this action returns an <code>InsufficientCapabilities</code> error.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging IAM Resources in AWS CloudFormation Templates</a>.</p>
-- * StackName [StackName] <p>The name or unique stack ID of the stack to update.</p>
-- * StackPolicyDuringUpdateBody [StackPolicyDuringUpdateBody] <p>Structure containing the temporary overriding stack policy body. You can specify either the <code>StackPolicyDuringUpdateBody</code> or the <code>StackPolicyDuringUpdateURL</code> parameter, but not both.</p> <p>If you want to update protected resources, specify a temporary overriding stack policy during this update. If you do not specify a stack policy, the current policy that is associated with the stack will be used.</p>
-- * ResourceTypes [ResourceTypes] <p>The template resource types that you have permissions to work with for this update stack action, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or <code>Custom::MyCustomInstance</code>.</p> <p>If the list of resource types doesn't include a resource that you're updating, the stack update fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for AWS CloudFormation-specific condition keys in IAM policies. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html">Controlling Access with AWS Identity and Access Management</a>.</p>
-- * NotificationARNs [NotificationARNs] <p>Amazon Simple Notification Service topic Amazon Resource Names (ARNs) that AWS CloudFormation associates with the stack. Specify an empty list to remove all notification topics.</p>
-- * ClientRequestToken [ClientRequestToken] <p>A unique identifier for this <code>UpdateStack</code> request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to update a stack with the same name. You might retry <code>UpdateStack</code> requests to ensure that AWS CloudFormation successfully received them.</p>
-- * TemplateURL [TemplateURL] <p>Location of file containing the template body. The URL must point to a template that is located in an Amazon S3 bucket. For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must specify only one of the following parameters: <code>TemplateBody</code>, <code>TemplateURL</code>, or set the <code>UsePreviousTemplate</code> to <code>true</code>.</p>
-- Required key: StackName
-- @return UpdateStackInput structure as a key-value pair table
function M.UpdateStackInput(args)
	assert(args, "You must provdide an argument table when creating UpdateStackInput")
	local t = { 
		["Tags"] = args["Tags"],
		["StackPolicyDuringUpdateURL"] = args["StackPolicyDuringUpdateURL"],
		["Parameters"] = args["Parameters"],
		["TemplateBody"] = args["TemplateBody"],
		["StackPolicyURL"] = args["StackPolicyURL"],
		["RoleARN"] = args["RoleARN"],
		["UsePreviousTemplate"] = args["UsePreviousTemplate"],
		["StackPolicyBody"] = args["StackPolicyBody"],
		["Capabilities"] = args["Capabilities"],
		["StackName"] = args["StackName"],
		["StackPolicyDuringUpdateBody"] = args["StackPolicyDuringUpdateBody"],
		["ResourceTypes"] = args["ResourceTypes"],
		["NotificationARNs"] = args["NotificationARNs"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["TemplateURL"] = args["TemplateURL"],
	}
	asserts.AssertUpdateStackInput(t)
	return t
end

keys.StackResource = { ["StackId"] = true, ["ResourceStatus"] = true, ["Description"] = true, ["ResourceType"] = true, ["Timestamp"] = true, ["ResourceStatusReason"] = true, ["StackName"] = true, ["PhysicalResourceId"] = true, ["LogicalResourceId"] = true, nil }

function asserts.AssertStackResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackResource to be of type 'table'")
	assert(struct["LogicalResourceId"], "Expected key LogicalResourceId to exist in table")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["Timestamp"], "Expected key Timestamp to exist in table")
	assert(struct["ResourceStatus"], "Expected key ResourceStatus to exist in table")
	if struct["StackId"] then asserts.AssertStackId(struct["StackId"]) end
	if struct["ResourceStatus"] then asserts.AssertResourceStatus(struct["ResourceStatus"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["ResourceType"] then asserts.AssertResourceType(struct["ResourceType"]) end
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	if struct["ResourceStatusReason"] then asserts.AssertResourceStatusReason(struct["ResourceStatusReason"]) end
	if struct["StackName"] then asserts.AssertStackName(struct["StackName"]) end
	if struct["PhysicalResourceId"] then asserts.AssertPhysicalResourceId(struct["PhysicalResourceId"]) end
	if struct["LogicalResourceId"] then asserts.AssertLogicalResourceId(struct["LogicalResourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StackResource[k], "StackResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackResource
-- <p>The StackResource data type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [StackId] <p>Unique identifier of the stack.</p>
-- * ResourceStatus [ResourceStatus] <p>Current status of the resource.</p>
-- * Description [Description] <p>User defined description associated with the resource.</p>
-- * ResourceType [ResourceType] <p>Type of resource. (For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html"> AWS Resource Types Reference</a> in the AWS CloudFormation User Guide.)</p>
-- * Timestamp [Timestamp] <p>Time the status was updated.</p>
-- * ResourceStatusReason [ResourceStatusReason] <p>Success/failure message associated with the resource.</p>
-- * StackName [StackName] <p>The name associated with the stack.</p>
-- * PhysicalResourceId [PhysicalResourceId] <p>The name or unique identifier that corresponds to a physical instance ID of a resource supported by AWS CloudFormation.</p>
-- * LogicalResourceId [LogicalResourceId] <p>The logical name of the resource specified in the template.</p>
-- Required key: LogicalResourceId
-- Required key: ResourceType
-- Required key: Timestamp
-- Required key: ResourceStatus
-- @return StackResource structure as a key-value pair table
function M.StackResource(args)
	assert(args, "You must provdide an argument table when creating StackResource")
	local t = { 
		["StackId"] = args["StackId"],
		["ResourceStatus"] = args["ResourceStatus"],
		["Description"] = args["Description"],
		["ResourceType"] = args["ResourceType"],
		["Timestamp"] = args["Timestamp"],
		["ResourceStatusReason"] = args["ResourceStatusReason"],
		["StackName"] = args["StackName"],
		["PhysicalResourceId"] = args["PhysicalResourceId"],
		["LogicalResourceId"] = args["LogicalResourceId"],
	}
	asserts.AssertStackResource(t)
	return t
end

keys.Parameter = { ["ParameterValue"] = true, ["UsePreviousValue"] = true, ["ParameterKey"] = true, nil }

function asserts.AssertParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Parameter to be of type 'table'")
	if struct["ParameterValue"] then asserts.AssertParameterValue(struct["ParameterValue"]) end
	if struct["UsePreviousValue"] then asserts.AssertUsePreviousValue(struct["UsePreviousValue"]) end
	if struct["ParameterKey"] then asserts.AssertParameterKey(struct["ParameterKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.Parameter[k], "Parameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Parameter
-- <p>The Parameter data type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterValue [ParameterValue] <p>The value associated with the parameter.</p>
-- * UsePreviousValue [UsePreviousValue] <p>During a stack update, use the existing parameter value that the stack is using for a given parameter key. If you specify <code>true</code>, do not specify a parameter value.</p>
-- * ParameterKey [ParameterKey] <p>The key associated with the parameter. If you don't specify a key and value for a particular parameter, AWS CloudFormation uses the default value that is specified in your template.</p>
-- @return Parameter structure as a key-value pair table
function M.Parameter(args)
	assert(args, "You must provdide an argument table when creating Parameter")
	local t = { 
		["ParameterValue"] = args["ParameterValue"],
		["UsePreviousValue"] = args["UsePreviousValue"],
		["ParameterKey"] = args["ParameterKey"],
	}
	asserts.AssertParameter(t)
	return t
end

keys.ListImportsOutput = { ["Imports"] = true, ["NextToken"] = true, nil }

function asserts.AssertListImportsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListImportsOutput to be of type 'table'")
	if struct["Imports"] then asserts.AssertImports(struct["Imports"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListImportsOutput[k], "ListImportsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListImportsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Imports [Imports] <p>A list of stack names that are importing the specified exported output value. </p>
-- * NextToken [NextToken] <p>A string that identifies the next page of exports. If there is no additional page, this value is null.</p>
-- @return ListImportsOutput structure as a key-value pair table
function M.ListImportsOutput(args)
	assert(args, "You must provdide an argument table when creating ListImportsOutput")
	local t = { 
		["Imports"] = args["Imports"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListImportsOutput(t)
	return t
end

keys.DescribeStackResourceOutput = { ["StackResourceDetail"] = true, nil }

function asserts.AssertDescribeStackResourceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackResourceOutput to be of type 'table'")
	if struct["StackResourceDetail"] then asserts.AssertStackResourceDetail(struct["StackResourceDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStackResourceOutput[k], "DescribeStackResourceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackResourceOutput
-- <p>The output for a <a>DescribeStackResource</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackResourceDetail [StackResourceDetail] <p>A <code>StackResourceDetail</code> structure containing the description of the specified resource in the specified stack.</p>
-- @return DescribeStackResourceOutput structure as a key-value pair table
function M.DescribeStackResourceOutput(args)
	assert(args, "You must provdide an argument table when creating DescribeStackResourceOutput")
	local t = { 
		["StackResourceDetail"] = args["StackResourceDetail"],
	}
	asserts.AssertDescribeStackResourceOutput(t)
	return t
end

keys.GetTemplateSummaryOutput = { ["CapabilitiesReason"] = true, ["Description"] = true, ["Parameters"] = true, ["Capabilities"] = true, ["ResourceTypes"] = true, ["Version"] = true, ["DeclaredTransforms"] = true, ["Metadata"] = true, nil }

function asserts.AssertGetTemplateSummaryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTemplateSummaryOutput to be of type 'table'")
	if struct["CapabilitiesReason"] then asserts.AssertCapabilitiesReason(struct["CapabilitiesReason"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["Parameters"] then asserts.AssertParameterDeclarations(struct["Parameters"]) end
	if struct["Capabilities"] then asserts.AssertCapabilities(struct["Capabilities"]) end
	if struct["ResourceTypes"] then asserts.AssertResourceTypes(struct["ResourceTypes"]) end
	if struct["Version"] then asserts.AssertVersion(struct["Version"]) end
	if struct["DeclaredTransforms"] then asserts.AssertTransformsList(struct["DeclaredTransforms"]) end
	if struct["Metadata"] then asserts.AssertMetadata(struct["Metadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTemplateSummaryOutput[k], "GetTemplateSummaryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTemplateSummaryOutput
-- <p>The output for the <a>GetTemplateSummary</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CapabilitiesReason [CapabilitiesReason] <p>The list of resources that generated the values in the <code>Capabilities</code> response element.</p>
-- * Description [Description] <p>The value that is defined in the <code>Description</code> property of the template.</p>
-- * Parameters [ParameterDeclarations] <p>A list of parameter declarations that describe various properties for each parameter.</p>
-- * Capabilities [Capabilities] <p>The capabilities found within the template. If your template contains IAM resources, you must specify the CAPABILITY_IAM or CAPABILITY_NAMED_IAM value for this parameter when you use the <a>CreateStack</a> or <a>UpdateStack</a> actions with your template; otherwise, those actions return an InsufficientCapabilities error.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging IAM Resources in AWS CloudFormation Templates</a>.</p>
-- * ResourceTypes [ResourceTypes] <p>A list of all the template resource types that are defined in the template, such as <code>AWS::EC2::Instance</code>, <code>AWS::Dynamo::Table</code>, and <code>Custom::MyCustomInstance</code>.</p>
-- * Version [Version] <p>The AWS template format version, which identifies the capabilities of the template.</p>
-- * DeclaredTransforms [TransformsList] <p>A list of the transforms that are declared in the template.</p>
-- * Metadata [Metadata] <p>The value that is defined for the <code>Metadata</code> property of the template.</p>
-- @return GetTemplateSummaryOutput structure as a key-value pair table
function M.GetTemplateSummaryOutput(args)
	assert(args, "You must provdide an argument table when creating GetTemplateSummaryOutput")
	local t = { 
		["CapabilitiesReason"] = args["CapabilitiesReason"],
		["Description"] = args["Description"],
		["Parameters"] = args["Parameters"],
		["Capabilities"] = args["Capabilities"],
		["ResourceTypes"] = args["ResourceTypes"],
		["Version"] = args["Version"],
		["DeclaredTransforms"] = args["DeclaredTransforms"],
		["Metadata"] = args["Metadata"],
	}
	asserts.AssertGetTemplateSummaryOutput(t)
	return t
end

keys.ResourceChangeDetail = { ["CausingEntity"] = true, ["ChangeSource"] = true, ["Evaluation"] = true, ["Target"] = true, nil }

function asserts.AssertResourceChangeDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceChangeDetail to be of type 'table'")
	if struct["CausingEntity"] then asserts.AssertCausingEntity(struct["CausingEntity"]) end
	if struct["ChangeSource"] then asserts.AssertChangeSource(struct["ChangeSource"]) end
	if struct["Evaluation"] then asserts.AssertEvaluationType(struct["Evaluation"]) end
	if struct["Target"] then asserts.AssertResourceTargetDefinition(struct["Target"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceChangeDetail[k], "ResourceChangeDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceChangeDetail
-- <p>For a resource with <code>Modify</code> as the action, the <code>ResourceChange</code> structure describes the changes AWS CloudFormation will make to that resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CausingEntity [CausingEntity] <p>The identity of the entity that triggered this change. This entity is a member of the group that is specified by the <code>ChangeSource</code> field. For example, if you modified the value of the <code>KeyPairName</code> parameter, the <code>CausingEntity</code> is the name of the parameter (<code>KeyPairName</code>).</p> <p>If the <code>ChangeSource</code> value is <code>DirectModification</code>, no value is given for <code>CausingEntity</code>.</p>
-- * ChangeSource [ChangeSource] <p>The group to which the <code>CausingEntity</code> value belongs. There are five entity groups:</p> <ul> <li> <p> <code>ResourceReference</code> entities are <code>Ref</code> intrinsic functions that refer to resources in the template, such as <code>{ "Ref" : "MyEC2InstanceResource" }</code>.</p> </li> <li> <p> <code>ParameterReference</code> entities are <code>Ref</code> intrinsic functions that get template parameter values, such as <code>{ "Ref" : "MyPasswordParameter" }</code>.</p> </li> <li> <p> <code>ResourceAttribute</code> entities are <code>Fn::GetAtt</code> intrinsic functions that get resource attribute values, such as <code>{ "Fn::GetAtt" : [ "MyEC2InstanceResource", "PublicDnsName" ] }</code>.</p> </li> <li> <p> <code>DirectModification</code> entities are changes that are made directly to the template.</p> </li> <li> <p> <code>Automatic</code> entities are <code>AWS::CloudFormation::Stack</code> resource types, which are also known as nested stacks. If you made no changes to the <code>AWS::CloudFormation::Stack</code> resource, AWS CloudFormation sets the <code>ChangeSource</code> to <code>Automatic</code> because the nested stack's template might have changed. Changes to a nested stack's template aren't visible to AWS CloudFormation until you run an update on the parent stack.</p> </li> </ul>
-- * Evaluation [EvaluationType] <p>Indicates whether AWS CloudFormation can determine the target value, and whether the target value will change before you execute a change set.</p> <p>For <code>Static</code> evaluations, AWS CloudFormation can determine that the target value will change, and its value. For example, if you directly modify the <code>InstanceType</code> property of an EC2 instance, AWS CloudFormation knows that this property value will change, and its value, so this is a <code>Static</code> evaluation.</p> <p>For <code>Dynamic</code> evaluations, cannot determine the target value because it depends on the result of an intrinsic function, such as a <code>Ref</code> or <code>Fn::GetAtt</code> intrinsic function, when the stack is updated. For example, if your template includes a reference to a resource that is conditionally recreated, the value of the reference (the physical ID of the resource) might change, depending on if the resource is recreated. If the resource is recreated, it will have a new physical ID, so all references to that resource will also be updated.</p>
-- * Target [ResourceTargetDefinition] <p>A <code>ResourceTargetDefinition</code> structure that describes the field that AWS CloudFormation will change and whether the resource will be recreated.</p>
-- @return ResourceChangeDetail structure as a key-value pair table
function M.ResourceChangeDetail(args)
	assert(args, "You must provdide an argument table when creating ResourceChangeDetail")
	local t = { 
		["CausingEntity"] = args["CausingEntity"],
		["ChangeSource"] = args["ChangeSource"],
		["Evaluation"] = args["Evaluation"],
		["Target"] = args["Target"],
	}
	asserts.AssertResourceChangeDetail(t)
	return t
end

keys.GetTemplateInput = { ["StackName"] = true, ["TemplateStage"] = true, ["ChangeSetName"] = true, nil }

function asserts.AssertGetTemplateInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTemplateInput to be of type 'table'")
	if struct["StackName"] then asserts.AssertStackName(struct["StackName"]) end
	if struct["TemplateStage"] then asserts.AssertTemplateStage(struct["TemplateStage"]) end
	if struct["ChangeSetName"] then asserts.AssertChangeSetNameOrId(struct["ChangeSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTemplateInput[k], "GetTemplateInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTemplateInput
-- <p>The input for a <a>GetTemplate</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [StackName] <p>The name or the unique stack ID that is associated with the stack, which are not always interchangeable:</p> <ul> <li> <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p> </li> <li> <p>Deleted stacks: You must specify the unique stack ID.</p> </li> </ul> <p>Default: There is no default value.</p>
-- * TemplateStage [TemplateStage] <p>For templates that include transforms, the stage of the template that AWS CloudFormation returns. To get the user-submitted template, specify <code>Original</code>. To get the template after AWS CloudFormation has processed all transforms, specify <code>Processed</code>. </p> <p>If the template doesn't include transforms, <code>Original</code> and <code>Processed</code> return the same template. By default, AWS CloudFormation specifies <code>Original</code>. </p>
-- * ChangeSetName [ChangeSetNameOrId] <p>The name or Amazon Resource Name (ARN) of a change set for which AWS CloudFormation returns the associated template. If you specify a name, you must also specify the <code>StackName</code>.</p>
-- @return GetTemplateInput structure as a key-value pair table
function M.GetTemplateInput(args)
	assert(args, "You must provdide an argument table when creating GetTemplateInput")
	local t = { 
		["StackName"] = args["StackName"],
		["TemplateStage"] = args["TemplateStage"],
		["ChangeSetName"] = args["ChangeSetName"],
	}
	asserts.AssertGetTemplateInput(t)
	return t
end

keys.ListImportsInput = { ["NextToken"] = true, ["ExportName"] = true, nil }

function asserts.AssertListImportsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListImportsInput to be of type 'table'")
	assert(struct["ExportName"], "Expected key ExportName to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["ExportName"] then asserts.AssertExportName(struct["ExportName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListImportsInput[k], "ListImportsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListImportsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>A string (provided by the <a>ListImports</a> response output) that identifies the next page of stacks that are importing the specified exported output value. </p>
-- * ExportName [ExportName] <p>The name of the exported output value. AWS CloudFormation returns the stack names that are importing this value. </p>
-- Required key: ExportName
-- @return ListImportsInput structure as a key-value pair table
function M.ListImportsInput(args)
	assert(args, "You must provdide an argument table when creating ListImportsInput")
	local t = { 
		["NextToken"] = args["NextToken"],
		["ExportName"] = args["ExportName"],
	}
	asserts.AssertListImportsInput(t)
	return t
end

keys.ListStackResourcesOutput = { ["NextToken"] = true, ["StackResourceSummaries"] = true, nil }

function asserts.AssertListStackResourcesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStackResourcesOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["StackResourceSummaries"] then asserts.AssertStackResourceSummaries(struct["StackResourceSummaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStackResourcesOutput[k], "ListStackResourcesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStackResourcesOutput
-- <p>The output for a <a>ListStackResources</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If the output exceeds 1 MB, a string that identifies the next page of stack resources. If no additional page exists, this value is null.</p>
-- * StackResourceSummaries [StackResourceSummaries] <p>A list of <code>StackResourceSummary</code> structures.</p>
-- @return ListStackResourcesOutput structure as a key-value pair table
function M.ListStackResourcesOutput(args)
	assert(args, "You must provdide an argument table when creating ListStackResourcesOutput")
	local t = { 
		["NextToken"] = args["NextToken"],
		["StackResourceSummaries"] = args["StackResourceSummaries"],
	}
	asserts.AssertListStackResourcesOutput(t)
	return t
end

keys.ResourceChange = { ["ResourceType"] = true, ["PhysicalResourceId"] = true, ["Details"] = true, ["Action"] = true, ["Scope"] = true, ["LogicalResourceId"] = true, ["Replacement"] = true, nil }

function asserts.AssertResourceChange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceChange to be of type 'table'")
	if struct["ResourceType"] then asserts.AssertResourceType(struct["ResourceType"]) end
	if struct["PhysicalResourceId"] then asserts.AssertPhysicalResourceId(struct["PhysicalResourceId"]) end
	if struct["Details"] then asserts.AssertResourceChangeDetails(struct["Details"]) end
	if struct["Action"] then asserts.AssertChangeAction(struct["Action"]) end
	if struct["Scope"] then asserts.AssertScope(struct["Scope"]) end
	if struct["LogicalResourceId"] then asserts.AssertLogicalResourceId(struct["LogicalResourceId"]) end
	if struct["Replacement"] then asserts.AssertReplacement(struct["Replacement"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceChange[k], "ResourceChange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceChange
-- <p>The <code>ResourceChange</code> structure describes the resource and the action that AWS CloudFormation will perform on it if you execute this change set.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [ResourceType] <p>The type of AWS CloudFormation resource, such as <code>AWS::S3::Bucket</code>.</p>
-- * PhysicalResourceId [PhysicalResourceId] <p>The resource's physical ID (resource name). Resources that you are adding don't have physical IDs because they haven't been created.</p>
-- * Details [ResourceChangeDetails] <p>For the <code>Modify</code> action, a list of <code>ResourceChangeDetail</code> structures that describes the changes that AWS CloudFormation will make to the resource. </p>
-- * Action [ChangeAction] <p>The action that AWS CloudFormation takes on the resource, such as <code>Add</code> (adds a new resource), <code>Modify</code> (changes a resource), or <code>Remove</code> (deletes a resource).</p>
-- * Scope [Scope] <p>For the <code>Modify</code> action, indicates which resource attribute is triggering this update, such as a change in the resource attribute's <code>Metadata</code>, <code>Properties</code>, or <code>Tags</code>.</p>
-- * LogicalResourceId [LogicalResourceId] <p>The resource's logical ID, which is defined in the stack's template.</p>
-- * Replacement [Replacement] <p>For the <code>Modify</code> action, indicates whether AWS CloudFormation will replace the resource by creating a new one and deleting the old one. This value depends on the value of the <code>RequiresRecreation</code> property in the <code>ResourceTargetDefinition</code> structure. For example, if the <code>RequiresRecreation</code> field is <code>Always</code> and the <code>Evaluation</code> field is <code>Static</code>, <code>Replacement</code> is <code>True</code>. If the <code>RequiresRecreation</code> field is <code>Always</code> and the <code>Evaluation</code> field is <code>Dynamic</code>, <code>Replacement</code> is <code>Conditionally</code>.</p> <p>If you have multiple changes with different <code>RequiresRecreation</code> values, the <code>Replacement</code> value depends on the change with the most impact. A <code>RequiresRecreation</code> value of <code>Always</code> has the most impact, followed by <code>Conditionally</code>, and then <code>Never</code>.</p>
-- @return ResourceChange structure as a key-value pair table
function M.ResourceChange(args)
	assert(args, "You must provdide an argument table when creating ResourceChange")
	local t = { 
		["ResourceType"] = args["ResourceType"],
		["PhysicalResourceId"] = args["PhysicalResourceId"],
		["Details"] = args["Details"],
		["Action"] = args["Action"],
		["Scope"] = args["Scope"],
		["LogicalResourceId"] = args["LogicalResourceId"],
		["Replacement"] = args["Replacement"],
	}
	asserts.AssertResourceChange(t)
	return t
end

keys.DescribeStackResourcesInput = { ["StackName"] = true, ["PhysicalResourceId"] = true, ["LogicalResourceId"] = true, nil }

function asserts.AssertDescribeStackResourcesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackResourcesInput to be of type 'table'")
	if struct["StackName"] then asserts.AssertStackName(struct["StackName"]) end
	if struct["PhysicalResourceId"] then asserts.AssertPhysicalResourceId(struct["PhysicalResourceId"]) end
	if struct["LogicalResourceId"] then asserts.AssertLogicalResourceId(struct["LogicalResourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStackResourcesInput[k], "DescribeStackResourcesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackResourcesInput
-- <p>The input for <a>DescribeStackResources</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [StackName] <p>The name or the unique stack ID that is associated with the stack, which are not always interchangeable:</p> <ul> <li> <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p> </li> <li> <p>Deleted stacks: You must specify the unique stack ID.</p> </li> </ul> <p>Default: There is no default value.</p> <p>Required: Conditional. If you do not specify <code>StackName</code>, you must specify <code>PhysicalResourceId</code>.</p>
-- * PhysicalResourceId [PhysicalResourceId] <p>The name or unique identifier that corresponds to a physical instance ID of a resource supported by AWS CloudFormation.</p> <p>For example, for an Amazon Elastic Compute Cloud (EC2) instance, <code>PhysicalResourceId</code> corresponds to the <code>InstanceId</code>. You can pass the EC2 <code>InstanceId</code> to <code>DescribeStackResources</code> to find which stack the instance belongs to and what other resources are part of the stack.</p> <p>Required: Conditional. If you do not specify <code>PhysicalResourceId</code>, you must specify <code>StackName</code>.</p> <p>Default: There is no default value.</p>
-- * LogicalResourceId [LogicalResourceId] <p>The logical name of the resource as specified in the template.</p> <p>Default: There is no default value.</p>
-- @return DescribeStackResourcesInput structure as a key-value pair table
function M.DescribeStackResourcesInput(args)
	assert(args, "You must provdide an argument table when creating DescribeStackResourcesInput")
	local t = { 
		["StackName"] = args["StackName"],
		["PhysicalResourceId"] = args["PhysicalResourceId"],
		["LogicalResourceId"] = args["LogicalResourceId"],
	}
	asserts.AssertDescribeStackResourcesInput(t)
	return t
end

keys.DeleteChangeSetInput = { ["StackName"] = true, ["ChangeSetName"] = true, nil }

function asserts.AssertDeleteChangeSetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteChangeSetInput to be of type 'table'")
	assert(struct["ChangeSetName"], "Expected key ChangeSetName to exist in table")
	if struct["StackName"] then asserts.AssertStackNameOrId(struct["StackName"]) end
	if struct["ChangeSetName"] then asserts.AssertChangeSetNameOrId(struct["ChangeSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteChangeSetInput[k], "DeleteChangeSetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteChangeSetInput
-- <p>The input for the <a>DeleteChangeSet</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [StackNameOrId] <p>If you specified the name of a change set to delete, specify the stack name or ID (ARN) that is associated with it.</p>
-- * ChangeSetName [ChangeSetNameOrId] <p>The name or Amazon Resource Name (ARN) of the change set that you want to delete.</p>
-- Required key: ChangeSetName
-- @return DeleteChangeSetInput structure as a key-value pair table
function M.DeleteChangeSetInput(args)
	assert(args, "You must provdide an argument table when creating DeleteChangeSetInput")
	local t = { 
		["StackName"] = args["StackName"],
		["ChangeSetName"] = args["ChangeSetName"],
	}
	asserts.AssertDeleteChangeSetInput(t)
	return t
end

keys.ExecuteChangeSetInput = { ["StackName"] = true, ["ChangeSetName"] = true, ["ClientRequestToken"] = true, nil }

function asserts.AssertExecuteChangeSetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecuteChangeSetInput to be of type 'table'")
	assert(struct["ChangeSetName"], "Expected key ChangeSetName to exist in table")
	if struct["StackName"] then asserts.AssertStackNameOrId(struct["StackName"]) end
	if struct["ChangeSetName"] then asserts.AssertChangeSetNameOrId(struct["ChangeSetName"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestToken(struct["ClientRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExecuteChangeSetInput[k], "ExecuteChangeSetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecuteChangeSetInput
-- <p>The input for the <a>ExecuteChangeSet</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [StackNameOrId] <p>If you specified the name of a change set, specify the stack name or ID (ARN) that is associated with the change set you want to execute.</p>
-- * ChangeSetName [ChangeSetNameOrId] <p>The name or ARN of the change set that you want use to update the specified stack.</p>
-- * ClientRequestToken [ClientRequestToken] <p>A unique identifier for this <code>ExecuteChangeSet</code> request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to execute a change set to update a stack with the same name. You might retry <code>ExecuteChangeSet</code> requests to ensure that AWS CloudFormation successfully received them.</p>
-- Required key: ChangeSetName
-- @return ExecuteChangeSetInput structure as a key-value pair table
function M.ExecuteChangeSetInput(args)
	assert(args, "You must provdide an argument table when creating ExecuteChangeSetInput")
	local t = { 
		["StackName"] = args["StackName"],
		["ChangeSetName"] = args["ChangeSetName"],
		["ClientRequestToken"] = args["ClientRequestToken"],
	}
	asserts.AssertExecuteChangeSetInput(t)
	return t
end

keys.ParameterDeclaration = { ["ParameterType"] = true, ["ParameterConstraints"] = true, ["Description"] = true, ["DefaultValue"] = true, ["NoEcho"] = true, ["ParameterKey"] = true, nil }

function asserts.AssertParameterDeclaration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ParameterDeclaration to be of type 'table'")
	if struct["ParameterType"] then asserts.AssertParameterType(struct["ParameterType"]) end
	if struct["ParameterConstraints"] then asserts.AssertParameterConstraints(struct["ParameterConstraints"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["DefaultValue"] then asserts.AssertParameterValue(struct["DefaultValue"]) end
	if struct["NoEcho"] then asserts.AssertNoEcho(struct["NoEcho"]) end
	if struct["ParameterKey"] then asserts.AssertParameterKey(struct["ParameterKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.ParameterDeclaration[k], "ParameterDeclaration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ParameterDeclaration
-- <p>The ParameterDeclaration data type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterType [ParameterType] <p>The type of parameter.</p>
-- * ParameterConstraints [ParameterConstraints] <p>The criteria that AWS CloudFormation uses to validate parameter values.</p>
-- * Description [Description] <p>The description that is associate with the parameter.</p>
-- * DefaultValue [ParameterValue] <p>The default value of the parameter.</p>
-- * NoEcho [NoEcho] <p>Flag that indicates whether the parameter value is shown as plain text in logs and in the AWS Management Console.</p>
-- * ParameterKey [ParameterKey] <p>The name that is associated with the parameter.</p>
-- @return ParameterDeclaration structure as a key-value pair table
function M.ParameterDeclaration(args)
	assert(args, "You must provdide an argument table when creating ParameterDeclaration")
	local t = { 
		["ParameterType"] = args["ParameterType"],
		["ParameterConstraints"] = args["ParameterConstraints"],
		["Description"] = args["Description"],
		["DefaultValue"] = args["DefaultValue"],
		["NoEcho"] = args["NoEcho"],
		["ParameterKey"] = args["ParameterKey"],
	}
	asserts.AssertParameterDeclaration(t)
	return t
end

keys.DescribeStacksInput = { ["StackName"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeStacksInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStacksInput to be of type 'table'")
	if struct["StackName"] then asserts.AssertStackName(struct["StackName"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStacksInput[k], "DescribeStacksInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStacksInput
-- <p>The input for <a>DescribeStacks</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [StackName] <p>The name or the unique stack ID that is associated with the stack, which are not always interchangeable:</p> <ul> <li> <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p> </li> <li> <p>Deleted stacks: You must specify the unique stack ID.</p> </li> </ul> <p>Default: There is no default value.</p>
-- * NextToken [NextToken] <p>A string that identifies the next page of stacks that you want to retrieve.</p>
-- @return DescribeStacksInput structure as a key-value pair table
function M.DescribeStacksInput(args)
	assert(args, "You must provdide an argument table when creating DescribeStacksInput")
	local t = { 
		["StackName"] = args["StackName"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeStacksInput(t)
	return t
end

keys.ExecuteChangeSetOutput = { nil }

function asserts.AssertExecuteChangeSetOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecuteChangeSetOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ExecuteChangeSetOutput[k], "ExecuteChangeSetOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecuteChangeSetOutput
-- <p>The output for the <a>ExecuteChangeSet</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ExecuteChangeSetOutput structure as a key-value pair table
function M.ExecuteChangeSetOutput(args)
	assert(args, "You must provdide an argument table when creating ExecuteChangeSetOutput")
	local t = { 
	}
	asserts.AssertExecuteChangeSetOutput(t)
	return t
end

keys.AlreadyExistsException = { nil }

function asserts.AssertAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AlreadyExistsException[k], "AlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AlreadyExistsException
-- <p>Resource with the name requested already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AlreadyExistsException structure as a key-value pair table
function M.AlreadyExistsException(args)
	assert(args, "You must provdide an argument table when creating AlreadyExistsException")
	local t = { 
	}
	asserts.AssertAlreadyExistsException(t)
	return t
end

keys.StackEvent = { ["StackId"] = true, ["EventId"] = true, ["ResourceStatus"] = true, ["ResourceType"] = true, ["Timestamp"] = true, ["ResourceStatusReason"] = true, ["StackName"] = true, ["ResourceProperties"] = true, ["PhysicalResourceId"] = true, ["ClientRequestToken"] = true, ["LogicalResourceId"] = true, nil }

function asserts.AssertStackEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackEvent to be of type 'table'")
	assert(struct["StackId"], "Expected key StackId to exist in table")
	assert(struct["EventId"], "Expected key EventId to exist in table")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	assert(struct["Timestamp"], "Expected key Timestamp to exist in table")
	if struct["StackId"] then asserts.AssertStackId(struct["StackId"]) end
	if struct["EventId"] then asserts.AssertEventId(struct["EventId"]) end
	if struct["ResourceStatus"] then asserts.AssertResourceStatus(struct["ResourceStatus"]) end
	if struct["ResourceType"] then asserts.AssertResourceType(struct["ResourceType"]) end
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	if struct["ResourceStatusReason"] then asserts.AssertResourceStatusReason(struct["ResourceStatusReason"]) end
	if struct["StackName"] then asserts.AssertStackName(struct["StackName"]) end
	if struct["ResourceProperties"] then asserts.AssertResourceProperties(struct["ResourceProperties"]) end
	if struct["PhysicalResourceId"] then asserts.AssertPhysicalResourceId(struct["PhysicalResourceId"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestToken(struct["ClientRequestToken"]) end
	if struct["LogicalResourceId"] then asserts.AssertLogicalResourceId(struct["LogicalResourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StackEvent[k], "StackEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackEvent
-- <p>The StackEvent data type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [StackId] <p>The unique ID name of the instance of the stack.</p>
-- * EventId [EventId] <p>The unique ID of this event.</p>
-- * ResourceStatus [ResourceStatus] <p>Current status of the resource.</p>
-- * ResourceType [ResourceType] <p>Type of resource. (For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html"> AWS Resource Types Reference</a> in the AWS CloudFormation User Guide.)</p>
-- * Timestamp [Timestamp] <p>Time the status was updated.</p>
-- * ResourceStatusReason [ResourceStatusReason] <p>Success/failure message associated with the resource.</p>
-- * StackName [StackName] <p>The name associated with a stack.</p>
-- * ResourceProperties [ResourceProperties] <p>BLOB of the properties used to create the resource.</p>
-- * PhysicalResourceId [PhysicalResourceId] <p>The name or unique identifier associated with the physical instance of the resource.</p>
-- * ClientRequestToken [ClientRequestToken] <p>The token passed to the operation that generated this event.</p> <p>For example, if you execute a <code>CreateStack</code> operation with the token <code>token1</code>, then all the <code>StackEvents</code> generated by that operation will have <code>ClientRequestToken</code> set as <code>token1</code>.</p>
-- * LogicalResourceId [LogicalResourceId] <p>The logical name of the resource specified in the template.</p>
-- Required key: StackId
-- Required key: EventId
-- Required key: StackName
-- Required key: Timestamp
-- @return StackEvent structure as a key-value pair table
function M.StackEvent(args)
	assert(args, "You must provdide an argument table when creating StackEvent")
	local t = { 
		["StackId"] = args["StackId"],
		["EventId"] = args["EventId"],
		["ResourceStatus"] = args["ResourceStatus"],
		["ResourceType"] = args["ResourceType"],
		["Timestamp"] = args["Timestamp"],
		["ResourceStatusReason"] = args["ResourceStatusReason"],
		["StackName"] = args["StackName"],
		["ResourceProperties"] = args["ResourceProperties"],
		["PhysicalResourceId"] = args["PhysicalResourceId"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["LogicalResourceId"] = args["LogicalResourceId"],
	}
	asserts.AssertStackEvent(t)
	return t
end

keys.ChangeSetSummary = { ["StackId"] = true, ["Status"] = true, ["ChangeSetName"] = true, ["Description"] = true, ["CreationTime"] = true, ["StatusReason"] = true, ["StackName"] = true, ["ExecutionStatus"] = true, ["ChangeSetId"] = true, nil }

function asserts.AssertChangeSetSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeSetSummary to be of type 'table'")
	if struct["StackId"] then asserts.AssertStackId(struct["StackId"]) end
	if struct["Status"] then asserts.AssertChangeSetStatus(struct["Status"]) end
	if struct["ChangeSetName"] then asserts.AssertChangeSetName(struct["ChangeSetName"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["CreationTime"] then asserts.AssertCreationTime(struct["CreationTime"]) end
	if struct["StatusReason"] then asserts.AssertChangeSetStatusReason(struct["StatusReason"]) end
	if struct["StackName"] then asserts.AssertStackName(struct["StackName"]) end
	if struct["ExecutionStatus"] then asserts.AssertExecutionStatus(struct["ExecutionStatus"]) end
	if struct["ChangeSetId"] then asserts.AssertChangeSetId(struct["ChangeSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChangeSetSummary[k], "ChangeSetSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeSetSummary
-- <p>The <code>ChangeSetSummary</code> structure describes a change set, its status, and the stack with which it's associated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [StackId] <p>The ID of the stack with which the change set is associated.</p>
-- * Status [ChangeSetStatus] <p>The state of the change set, such as <code>CREATE_IN_PROGRESS</code>, <code>CREATE_COMPLETE</code>, or <code>FAILED</code>.</p>
-- * ChangeSetName [ChangeSetName] <p>The name of the change set.</p>
-- * Description [Description] <p>Descriptive information about the change set.</p>
-- * CreationTime [CreationTime] <p>The start time when the change set was created, in UTC.</p>
-- * StatusReason [ChangeSetStatusReason] <p>A description of the change set's status. For example, if your change set is in the <code>FAILED</code> state, AWS CloudFormation shows the error message.</p>
-- * StackName [StackName] <p>The name of the stack with which the change set is associated.</p>
-- * ExecutionStatus [ExecutionStatus] <p>If the change set execution status is <code>AVAILABLE</code>, you can execute the change set. If you can’t execute the change set, the status indicates why. For example, a change set might be in an <code>UNAVAILABLE</code> state because AWS CloudFormation is still creating it or in an <code>OBSOLETE</code> state because the stack was already updated.</p>
-- * ChangeSetId [ChangeSetId] <p>The ID of the change set.</p>
-- @return ChangeSetSummary structure as a key-value pair table
function M.ChangeSetSummary(args)
	assert(args, "You must provdide an argument table when creating ChangeSetSummary")
	local t = { 
		["StackId"] = args["StackId"],
		["Status"] = args["Status"],
		["ChangeSetName"] = args["ChangeSetName"],
		["Description"] = args["Description"],
		["CreationTime"] = args["CreationTime"],
		["StatusReason"] = args["StatusReason"],
		["StackName"] = args["StackName"],
		["ExecutionStatus"] = args["ExecutionStatus"],
		["ChangeSetId"] = args["ChangeSetId"],
	}
	asserts.AssertChangeSetSummary(t)
	return t
end

keys.ValidateTemplateInput = { ["TemplateURL"] = true, ["TemplateBody"] = true, nil }

function asserts.AssertValidateTemplateInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidateTemplateInput to be of type 'table'")
	if struct["TemplateURL"] then asserts.AssertTemplateURL(struct["TemplateURL"]) end
	if struct["TemplateBody"] then asserts.AssertTemplateBody(struct["TemplateBody"]) end
	for k,_ in pairs(struct) do
		assert(keys.ValidateTemplateInput[k], "ValidateTemplateInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidateTemplateInput
-- <p>The input for <a>ValidateTemplate</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TemplateURL [TemplateURL] <p>Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must pass <code>TemplateURL</code> or <code>TemplateBody</code>. If both are passed, only <code>TemplateBody</code> is used.</p>
-- * TemplateBody [TemplateBody] <p>Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must pass <code>TemplateURL</code> or <code>TemplateBody</code>. If both are passed, only <code>TemplateBody</code> is used.</p>
-- @return ValidateTemplateInput structure as a key-value pair table
function M.ValidateTemplateInput(args)
	assert(args, "You must provdide an argument table when creating ValidateTemplateInput")
	local t = { 
		["TemplateURL"] = args["TemplateURL"],
		["TemplateBody"] = args["TemplateBody"],
	}
	asserts.AssertValidateTemplateInput(t)
	return t
end

keys.GetStackPolicyInput = { ["StackName"] = true, nil }

function asserts.AssertGetStackPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStackPolicyInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then asserts.AssertStackName(struct["StackName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetStackPolicyInput[k], "GetStackPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStackPolicyInput
-- <p>The input for the <a>GetStackPolicy</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [StackName] <p>The name or unique stack ID that is associated with the stack whose policy you want to get.</p>
-- Required key: StackName
-- @return GetStackPolicyInput structure as a key-value pair table
function M.GetStackPolicyInput(args)
	assert(args, "You must provdide an argument table when creating GetStackPolicyInput")
	local t = { 
		["StackName"] = args["StackName"],
	}
	asserts.AssertGetStackPolicyInput(t)
	return t
end

keys.GetStackPolicyOutput = { ["StackPolicyBody"] = true, nil }

function asserts.AssertGetStackPolicyOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetStackPolicyOutput to be of type 'table'")
	if struct["StackPolicyBody"] then asserts.AssertStackPolicyBody(struct["StackPolicyBody"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetStackPolicyOutput[k], "GetStackPolicyOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetStackPolicyOutput
-- <p>The output for the <a>GetStackPolicy</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackPolicyBody [StackPolicyBody] <p>Structure containing the stack policy body. (For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html"> Prevent Updates to Stack Resources</a> in the AWS CloudFormation User Guide.)</p>
-- @return GetStackPolicyOutput structure as a key-value pair table
function M.GetStackPolicyOutput(args)
	assert(args, "You must provdide an argument table when creating GetStackPolicyOutput")
	local t = { 
		["StackPolicyBody"] = args["StackPolicyBody"],
	}
	asserts.AssertGetStackPolicyOutput(t)
	return t
end

keys.DescribeAccountLimitsOutput = { ["NextToken"] = true, ["AccountLimits"] = true, nil }

function asserts.AssertDescribeAccountLimitsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAccountLimitsOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["AccountLimits"] then asserts.AssertAccountLimitList(struct["AccountLimits"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAccountLimitsOutput[k], "DescribeAccountLimitsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAccountLimitsOutput
-- <p>The output for the <a>DescribeAccountLimits</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If the output exceeds 1 MB in size, a string that identifies the next page of limits. If no additional page exists, this value is null.</p>
-- * AccountLimits [AccountLimitList] <p>An account limit structure that contain a list of AWS CloudFormation account limits and their values.</p>
-- @return DescribeAccountLimitsOutput structure as a key-value pair table
function M.DescribeAccountLimitsOutput(args)
	assert(args, "You must provdide an argument table when creating DescribeAccountLimitsOutput")
	local t = { 
		["NextToken"] = args["NextToken"],
		["AccountLimits"] = args["AccountLimits"],
	}
	asserts.AssertDescribeAccountLimitsOutput(t)
	return t
end

keys.CreateStackInput = { ["Tags"] = true, ["TemplateBody"] = true, ["Parameters"] = true, ["StackPolicyURL"] = true, ["RoleARN"] = true, ["TimeoutInMinutes"] = true, ["StackPolicyBody"] = true, ["Capabilities"] = true, ["OnFailure"] = true, ["StackName"] = true, ["NotificationARNs"] = true, ["ResourceTypes"] = true, ["ClientRequestToken"] = true, ["DisableRollback"] = true, ["TemplateURL"] = true, nil }

function asserts.AssertCreateStackInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStackInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["TemplateBody"] then asserts.AssertTemplateBody(struct["TemplateBody"]) end
	if struct["Parameters"] then asserts.AssertParameters(struct["Parameters"]) end
	if struct["StackPolicyURL"] then asserts.AssertStackPolicyURL(struct["StackPolicyURL"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["TimeoutInMinutes"] then asserts.AssertTimeoutMinutes(struct["TimeoutInMinutes"]) end
	if struct["StackPolicyBody"] then asserts.AssertStackPolicyBody(struct["StackPolicyBody"]) end
	if struct["Capabilities"] then asserts.AssertCapabilities(struct["Capabilities"]) end
	if struct["OnFailure"] then asserts.AssertOnFailure(struct["OnFailure"]) end
	if struct["StackName"] then asserts.AssertStackName(struct["StackName"]) end
	if struct["NotificationARNs"] then asserts.AssertNotificationARNs(struct["NotificationARNs"]) end
	if struct["ResourceTypes"] then asserts.AssertResourceTypes(struct["ResourceTypes"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestToken(struct["ClientRequestToken"]) end
	if struct["DisableRollback"] then asserts.AssertDisableRollback(struct["DisableRollback"]) end
	if struct["TemplateURL"] then asserts.AssertTemplateURL(struct["TemplateURL"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStackInput[k], "CreateStackInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStackInput
-- <p>The input for <a>CreateStack</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [Tags] <p>Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to the resources created in the stack. A maximum number of 10 tags can be specified.</p>
-- * TemplateBody [TemplateBody] <p>Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must specify either the <code>TemplateBody</code> or the <code>TemplateURL</code> parameter, but not both.</p>
-- * Parameters [Parameters] <p>A list of <code>Parameter</code> structures that specify input parameters for the stack. For more information, see the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html">Parameter</a> data type.</p>
-- * StackPolicyURL [StackPolicyURL] <p>Location of a file containing the stack policy. The URL must point to a policy (maximum size: 16 KB) located in an S3 bucket in the same region as the stack. You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but not both.</p>
-- * RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to create the stack. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation always uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege.</p> <p>If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.</p>
-- * TimeoutInMinutes [TimeoutMinutes] <p>The amount of time that can pass before the stack status becomes CREATE_FAILED; if <code>DisableRollback</code> is not set or is set to <code>false</code>, the stack will be rolled back.</p>
-- * StackPolicyBody [StackPolicyBody] <p>Structure containing the stack policy body. For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html"> Prevent Updates to Stack Resources</a> in the <i>AWS CloudFormation User Guide</i>. You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but not both.</p>
-- * Capabilities [Capabilities] <p>A list of values that you must specify before AWS CloudFormation can create certain stacks. Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter.</p> <p>The only valid values are <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>. The following resources require you to specify this parameter: <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html"> AWS::IAM::AccessKey</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html"> AWS::IAM::Group</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html"> AWS::IAM::InstanceProfile</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html"> AWS::IAM::Policy</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html"> AWS::IAM::Role</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html"> AWS::IAM::User</a>, and <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html"> AWS::IAM::UserToGroupAddition</a>. If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.</p> <p>If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify <code>CAPABILITY_NAMED_IAM</code>. If you don't specify this parameter, this action returns an <code>InsufficientCapabilities</code> error.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging IAM Resources in AWS CloudFormation Templates</a>.</p>
-- * OnFailure [OnFailure] <p>Determines what action will be taken if stack creation fails. This must be one of: DO_NOTHING, ROLLBACK, or DELETE. You can specify either <code>OnFailure</code> or <code>DisableRollback</code>, but not both.</p> <p>Default: <code>ROLLBACK</code> </p>
-- * StackName [StackName] <p>The name that is associated with the stack. The name must be unique in the region in which you are creating the stack.</p> <note> <p>A stack name can contain only alphanumeric characters (case sensitive) and hyphens. It must start with an alphabetic character and cannot be longer than 128 characters.</p> </note>
-- * NotificationARNs [NotificationARNs] <p>The Simple Notification Service (SNS) topic ARNs to publish stack related events. You can find your SNS topic ARNs using the SNS console or your Command Line Interface (CLI).</p>
-- * ResourceTypes [ResourceTypes] <p>The template resource types that you have permissions to work with for this create stack action, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or <code>Custom::MyCustomInstance</code>. Use the following syntax to describe template resource types: <code>AWS::*</code> (for all AWS resource), <code>Custom::*</code> (for all custom resources), <code>Custom::<i>logical_ID</i> </code> (for a specific custom resource), <code>AWS::<i>service_name</i>::*</code> (for all resources of a particular AWS service), and <code>AWS::<i>service_name</i>::<i>resource_logical_ID</i> </code> (for a specific AWS resource).</p> <p>If the list of resource types doesn't include a resource that you're creating, the stack creation fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for AWS CloudFormation-specific condition keys in IAM policies. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html">Controlling Access with AWS Identity and Access Management</a>.</p>
-- * ClientRequestToken [ClientRequestToken] <p>A unique identifier for this <code>CreateStack</code> request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create a stack with the same name. You might retry <code>CreateStack</code> requests to ensure that AWS CloudFormation successfully received them.</p>
-- * DisableRollback [DisableRollback] <p>Set to <code>true</code> to disable rollback of the stack if stack creation failed. You can specify either <code>DisableRollback</code> or <code>OnFailure</code>, but not both.</p> <p>Default: <code>false</code> </p>
-- * TemplateURL [TemplateURL] <p>Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information, go to the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must specify either the <code>TemplateBody</code> or the <code>TemplateURL</code> parameter, but not both.</p>
-- Required key: StackName
-- @return CreateStackInput structure as a key-value pair table
function M.CreateStackInput(args)
	assert(args, "You must provdide an argument table when creating CreateStackInput")
	local t = { 
		["Tags"] = args["Tags"],
		["TemplateBody"] = args["TemplateBody"],
		["Parameters"] = args["Parameters"],
		["StackPolicyURL"] = args["StackPolicyURL"],
		["RoleARN"] = args["RoleARN"],
		["TimeoutInMinutes"] = args["TimeoutInMinutes"],
		["StackPolicyBody"] = args["StackPolicyBody"],
		["Capabilities"] = args["Capabilities"],
		["OnFailure"] = args["OnFailure"],
		["StackName"] = args["StackName"],
		["NotificationARNs"] = args["NotificationARNs"],
		["ResourceTypes"] = args["ResourceTypes"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["DisableRollback"] = args["DisableRollback"],
		["TemplateURL"] = args["TemplateURL"],
	}
	asserts.AssertCreateStackInput(t)
	return t
end

keys.UpdateStackOutput = { ["StackId"] = true, nil }

function asserts.AssertUpdateStackOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStackOutput to be of type 'table'")
	if struct["StackId"] then asserts.AssertStackId(struct["StackId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateStackOutput[k], "UpdateStackOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStackOutput
-- <p>The output for an <a>UpdateStack</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [StackId] <p>Unique identifier of the stack.</p>
-- @return UpdateStackOutput structure as a key-value pair table
function M.UpdateStackOutput(args)
	assert(args, "You must provdide an argument table when creating UpdateStackOutput")
	local t = { 
		["StackId"] = args["StackId"],
	}
	asserts.AssertUpdateStackOutput(t)
	return t
end

keys.InsufficientCapabilitiesException = { nil }

function asserts.AssertInsufficientCapabilitiesException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientCapabilitiesException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InsufficientCapabilitiesException[k], "InsufficientCapabilitiesException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientCapabilitiesException
-- <p>The template contains resources with capabilities that were not specified in the Capabilities parameter.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InsufficientCapabilitiesException structure as a key-value pair table
function M.InsufficientCapabilitiesException(args)
	assert(args, "You must provdide an argument table when creating InsufficientCapabilitiesException")
	local t = { 
	}
	asserts.AssertInsufficientCapabilitiesException(t)
	return t
end

keys.ListExportsInput = { ["NextToken"] = true, nil }

function asserts.AssertListExportsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListExportsInput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListExportsInput[k], "ListExportsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListExportsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>A string (provided by the <a>ListExports</a> response output) that identifies the next page of exported output values that you asked to retrieve.</p>
-- @return ListExportsInput structure as a key-value pair table
function M.ListExportsInput(args)
	assert(args, "You must provdide an argument table when creating ListExportsInput")
	local t = { 
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListExportsInput(t)
	return t
end

keys.StackResourceSummary = { ["ResourceStatus"] = true, ["ResourceType"] = true, ["ResourceStatusReason"] = true, ["LastUpdatedTimestamp"] = true, ["PhysicalResourceId"] = true, ["LogicalResourceId"] = true, nil }

function asserts.AssertStackResourceSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackResourceSummary to be of type 'table'")
	assert(struct["LogicalResourceId"], "Expected key LogicalResourceId to exist in table")
	assert(struct["ResourceType"], "Expected key ResourceType to exist in table")
	assert(struct["LastUpdatedTimestamp"], "Expected key LastUpdatedTimestamp to exist in table")
	assert(struct["ResourceStatus"], "Expected key ResourceStatus to exist in table")
	if struct["ResourceStatus"] then asserts.AssertResourceStatus(struct["ResourceStatus"]) end
	if struct["ResourceType"] then asserts.AssertResourceType(struct["ResourceType"]) end
	if struct["ResourceStatusReason"] then asserts.AssertResourceStatusReason(struct["ResourceStatusReason"]) end
	if struct["LastUpdatedTimestamp"] then asserts.AssertTimestamp(struct["LastUpdatedTimestamp"]) end
	if struct["PhysicalResourceId"] then asserts.AssertPhysicalResourceId(struct["PhysicalResourceId"]) end
	if struct["LogicalResourceId"] then asserts.AssertLogicalResourceId(struct["LogicalResourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StackResourceSummary[k], "StackResourceSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackResourceSummary
-- <p>Contains high-level information about the specified stack resource.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceStatus [ResourceStatus] <p>Current status of the resource.</p>
-- * ResourceType [ResourceType] <p>Type of resource. (For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html"> AWS Resource Types Reference</a> in the AWS CloudFormation User Guide.)</p>
-- * ResourceStatusReason [ResourceStatusReason] <p>Success/failure message associated with the resource.</p>
-- * LastUpdatedTimestamp [Timestamp] <p>Time the status was updated.</p>
-- * PhysicalResourceId [PhysicalResourceId] <p>The name or unique identifier that corresponds to a physical instance ID of the resource.</p>
-- * LogicalResourceId [LogicalResourceId] <p>The logical name of the resource specified in the template.</p>
-- Required key: LogicalResourceId
-- Required key: ResourceType
-- Required key: LastUpdatedTimestamp
-- Required key: ResourceStatus
-- @return StackResourceSummary structure as a key-value pair table
function M.StackResourceSummary(args)
	assert(args, "You must provdide an argument table when creating StackResourceSummary")
	local t = { 
		["ResourceStatus"] = args["ResourceStatus"],
		["ResourceType"] = args["ResourceType"],
		["ResourceStatusReason"] = args["ResourceStatusReason"],
		["LastUpdatedTimestamp"] = args["LastUpdatedTimestamp"],
		["PhysicalResourceId"] = args["PhysicalResourceId"],
		["LogicalResourceId"] = args["LogicalResourceId"],
	}
	asserts.AssertStackResourceSummary(t)
	return t
end

keys.CreateStackOutput = { ["StackId"] = true, nil }

function asserts.AssertCreateStackOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStackOutput to be of type 'table'")
	if struct["StackId"] then asserts.AssertStackId(struct["StackId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStackOutput[k], "CreateStackOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStackOutput
-- <p>The output for a <a>CreateStack</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [StackId] <p>Unique identifier of the stack.</p>
-- @return CreateStackOutput structure as a key-value pair table
function M.CreateStackOutput(args)
	assert(args, "You must provdide an argument table when creating CreateStackOutput")
	local t = { 
		["StackId"] = args["StackId"],
	}
	asserts.AssertCreateStackOutput(t)
	return t
end

keys.ListExportsOutput = { ["Exports"] = true, ["NextToken"] = true, nil }

function asserts.AssertListExportsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListExportsOutput to be of type 'table'")
	if struct["Exports"] then asserts.AssertExports(struct["Exports"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListExportsOutput[k], "ListExportsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListExportsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Exports [Exports] <p>The output for the <a>ListExports</a> action.</p>
-- * NextToken [NextToken] <p>If the output exceeds 100 exported output values, a string that identifies the next page of exports. If there is no additional page, this value is null.</p>
-- @return ListExportsOutput structure as a key-value pair table
function M.ListExportsOutput(args)
	assert(args, "You must provdide an argument table when creating ListExportsOutput")
	local t = { 
		["Exports"] = args["Exports"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListExportsOutput(t)
	return t
end

keys.SetStackPolicyInput = { ["StackName"] = true, ["StackPolicyBody"] = true, ["StackPolicyURL"] = true, nil }

function asserts.AssertSetStackPolicyInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetStackPolicyInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then asserts.AssertStackName(struct["StackName"]) end
	if struct["StackPolicyBody"] then asserts.AssertStackPolicyBody(struct["StackPolicyBody"]) end
	if struct["StackPolicyURL"] then asserts.AssertStackPolicyURL(struct["StackPolicyURL"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetStackPolicyInput[k], "SetStackPolicyInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetStackPolicyInput
-- <p>The input for the <a>SetStackPolicy</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [StackName] <p>The name or unique stack ID that you want to associate a policy with.</p>
-- * StackPolicyBody [StackPolicyBody] <p>Structure containing the stack policy body. For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html"> Prevent Updates to Stack Resources</a> in the AWS CloudFormation User Guide. You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but not both.</p>
-- * StackPolicyURL [StackPolicyURL] <p>Location of a file containing the stack policy. The URL must point to a policy (maximum size: 16 KB) located in an S3 bucket in the same region as the stack. You can specify either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but not both.</p>
-- Required key: StackName
-- @return SetStackPolicyInput structure as a key-value pair table
function M.SetStackPolicyInput(args)
	assert(args, "You must provdide an argument table when creating SetStackPolicyInput")
	local t = { 
		["StackName"] = args["StackName"],
		["StackPolicyBody"] = args["StackPolicyBody"],
		["StackPolicyURL"] = args["StackPolicyURL"],
	}
	asserts.AssertSetStackPolicyInput(t)
	return t
end

keys.ContinueUpdateRollbackInput = { ["StackName"] = true, ["RoleARN"] = true, ["ClientRequestToken"] = true, ["ResourcesToSkip"] = true, nil }

function asserts.AssertContinueUpdateRollbackInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContinueUpdateRollbackInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then asserts.AssertStackNameOrId(struct["StackName"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestToken(struct["ClientRequestToken"]) end
	if struct["ResourcesToSkip"] then asserts.AssertResourcesToSkip(struct["ResourcesToSkip"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContinueUpdateRollbackInput[k], "ContinueUpdateRollbackInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContinueUpdateRollbackInput
-- <p>The input for the <a>ContinueUpdateRollback</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [StackNameOrId] <p>The name or the unique ID of the stack that you want to continue rolling back.</p> <note> <p>Don't specify the name of a nested stack (a stack that was created by using the <code>AWS::CloudFormation::Stack</code> resource). Instead, use this operation on the parent stack (the stack that contains the <code>AWS::CloudFormation::Stack</code> resource).</p> </note>
-- * RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes to roll back the stack. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation always uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege.</p> <p>If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.</p>
-- * ClientRequestToken [ClientRequestToken] <p>A unique identifier for this <code>ContinueUpdateRollback</code> request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to continue the rollback to a stack with the same name. You might retry <code>ContinueUpdateRollback</code> requests to ensure that AWS CloudFormation successfully received them.</p>
-- * ResourcesToSkip [ResourcesToSkip] <p>A list of the logical IDs of the resources that AWS CloudFormation skips during the continue update rollback operation. You can specify only resources that are in the <code>UPDATE_FAILED</code> state because a rollback failed. You can't specify resources that are in the <code>UPDATE_FAILED</code> state for other reasons, for example, because an update was canceled. To check why a resource update failed, use the <a>DescribeStackResources</a> action, and view the resource status reason. </p> <important> <p>Specify this property to skip rolling back resources that AWS CloudFormation can't successfully roll back. We recommend that you <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed"> troubleshoot</a> resources before skipping them. AWS CloudFormation sets the status of the specified resources to <code>UPDATE_COMPLETE</code> and continues to roll back the stack. After the rollback is complete, the state of the skipped resources will be inconsistent with the state of the resources in the stack template. Before performing another stack update, you must update the stack or resources to be consistent with each other. If you don't, subsequent stack updates might fail, and the stack will become unrecoverable. </p> </important> <p>Specify the minimum number of resources required to successfully roll back your stack. For example, a failed resource update might cause dependent resources to fail. In this case, it might not be necessary to skip the dependent resources. </p> <p>To specify resources in a nested stack, use the following format: <code>NestedStackName.ResourceLogicalID</code>. If the <code>ResourceLogicalID</code> is a stack resource (<code>Type: AWS::CloudFormation::Stack</code>), it must be in one of the following states: <code>DELETE_IN_PROGRESS</code>, <code>DELETE_COMPLETE</code>, or <code>DELETE_FAILED</code>. </p>
-- Required key: StackName
-- @return ContinueUpdateRollbackInput structure as a key-value pair table
function M.ContinueUpdateRollbackInput(args)
	assert(args, "You must provdide an argument table when creating ContinueUpdateRollbackInput")
	local t = { 
		["StackName"] = args["StackName"],
		["RoleARN"] = args["RoleARN"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["ResourcesToSkip"] = args["ResourcesToSkip"],
	}
	asserts.AssertContinueUpdateRollbackInput(t)
	return t
end

keys.DescribeStackEventsInput = { ["StackName"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeStackEventsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackEventsInput to be of type 'table'")
	if struct["StackName"] then asserts.AssertStackName(struct["StackName"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStackEventsInput[k], "DescribeStackEventsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackEventsInput
-- <p>The input for <a>DescribeStackEvents</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [StackName] <p>The name or the unique stack ID that is associated with the stack, which are not always interchangeable:</p> <ul> <li> <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p> </li> <li> <p>Deleted stacks: You must specify the unique stack ID.</p> </li> </ul> <p>Default: There is no default value.</p>
-- * NextToken [NextToken] <p>A string that identifies the next page of events that you want to retrieve.</p>
-- @return DescribeStackEventsInput structure as a key-value pair table
function M.DescribeStackEventsInput(args)
	assert(args, "You must provdide an argument table when creating DescribeStackEventsInput")
	local t = { 
		["StackName"] = args["StackName"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeStackEventsInput(t)
	return t
end

keys.DescribeStackResourcesOutput = { ["StackResources"] = true, nil }

function asserts.AssertDescribeStackResourcesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackResourcesOutput to be of type 'table'")
	if struct["StackResources"] then asserts.AssertStackResources(struct["StackResources"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStackResourcesOutput[k], "DescribeStackResourcesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackResourcesOutput
-- <p>The output for a <a>DescribeStackResources</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackResources [StackResources] <p>A list of <code>StackResource</code> structures.</p>
-- @return DescribeStackResourcesOutput structure as a key-value pair table
function M.DescribeStackResourcesOutput(args)
	assert(args, "You must provdide an argument table when creating DescribeStackResourcesOutput")
	local t = { 
		["StackResources"] = args["StackResources"],
	}
	asserts.AssertDescribeStackResourcesOutput(t)
	return t
end

keys.DescribeStackResourceInput = { ["StackName"] = true, ["LogicalResourceId"] = true, nil }

function asserts.AssertDescribeStackResourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackResourceInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	assert(struct["LogicalResourceId"], "Expected key LogicalResourceId to exist in table")
	if struct["StackName"] then asserts.AssertStackName(struct["StackName"]) end
	if struct["LogicalResourceId"] then asserts.AssertLogicalResourceId(struct["LogicalResourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStackResourceInput[k], "DescribeStackResourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackResourceInput
-- <p>The input for <a>DescribeStackResource</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [StackName] <p>The name or the unique stack ID that is associated with the stack, which are not always interchangeable:</p> <ul> <li> <p>Running stacks: You can specify either the stack's name or its unique stack ID.</p> </li> <li> <p>Deleted stacks: You must specify the unique stack ID.</p> </li> </ul> <p>Default: There is no default value.</p>
-- * LogicalResourceId [LogicalResourceId] <p>The logical name of the resource as specified in the template.</p> <p>Default: There is no default value.</p>
-- Required key: StackName
-- Required key: LogicalResourceId
-- @return DescribeStackResourceInput structure as a key-value pair table
function M.DescribeStackResourceInput(args)
	assert(args, "You must provdide an argument table when creating DescribeStackResourceInput")
	local t = { 
		["StackName"] = args["StackName"],
		["LogicalResourceId"] = args["LogicalResourceId"],
	}
	asserts.AssertDescribeStackResourceInput(t)
	return t
end

keys.CancelUpdateStackInput = { ["StackName"] = true, ["ClientRequestToken"] = true, nil }

function asserts.AssertCancelUpdateStackInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelUpdateStackInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then asserts.AssertStackName(struct["StackName"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestToken(struct["ClientRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelUpdateStackInput[k], "CancelUpdateStackInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelUpdateStackInput
-- <p>The input for the <a>CancelUpdateStack</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [StackName] <p>The name or the unique stack ID that is associated with the stack.</p>
-- * ClientRequestToken [ClientRequestToken] <p>A unique identifier for this <code>CancelUpdateStack</code> request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to cancel an update on a stack with the same name. You might retry <code>CancelUpdateStack</code> requests to ensure that AWS CloudFormation successfully received them.</p>
-- Required key: StackName
-- @return CancelUpdateStackInput structure as a key-value pair table
function M.CancelUpdateStackInput(args)
	assert(args, "You must provdide an argument table when creating CancelUpdateStackInput")
	local t = { 
		["StackName"] = args["StackName"],
		["ClientRequestToken"] = args["ClientRequestToken"],
	}
	asserts.AssertCancelUpdateStackInput(t)
	return t
end

keys.EstimateTemplateCostInput = { ["TemplateURL"] = true, ["Parameters"] = true, ["TemplateBody"] = true, nil }

function asserts.AssertEstimateTemplateCostInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EstimateTemplateCostInput to be of type 'table'")
	if struct["TemplateURL"] then asserts.AssertTemplateURL(struct["TemplateURL"]) end
	if struct["Parameters"] then asserts.AssertParameters(struct["Parameters"]) end
	if struct["TemplateBody"] then asserts.AssertTemplateBody(struct["TemplateBody"]) end
	for k,_ in pairs(struct) do
		assert(keys.EstimateTemplateCostInput[k], "EstimateTemplateCostInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EstimateTemplateCostInput
-- <p>The input for an <a>EstimateTemplateCost</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TemplateURL [TemplateURL] <p>Location of file containing the template body. The URL must point to a template that is located in an Amazon S3 bucket. For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must pass <code>TemplateURL</code> or <code>TemplateBody</code>. If both are passed, only <code>TemplateBody</code> is used.</p>
-- * Parameters [Parameters] <p>A list of <code>Parameter</code> structures that specify input parameters.</p>
-- * TemplateBody [TemplateBody] <p>Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. (For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.)</p> <p>Conditional: You must pass <code>TemplateBody</code> or <code>TemplateURL</code>. If both are passed, only <code>TemplateBody</code> is used.</p>
-- @return EstimateTemplateCostInput structure as a key-value pair table
function M.EstimateTemplateCostInput(args)
	assert(args, "You must provdide an argument table when creating EstimateTemplateCostInput")
	local t = { 
		["TemplateURL"] = args["TemplateURL"],
		["Parameters"] = args["Parameters"],
		["TemplateBody"] = args["TemplateBody"],
	}
	asserts.AssertEstimateTemplateCostInput(t)
	return t
end

keys.DeleteChangeSetOutput = { nil }

function asserts.AssertDeleteChangeSetOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteChangeSetOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteChangeSetOutput[k], "DeleteChangeSetOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteChangeSetOutput
-- <p>The output for the <a>DeleteChangeSet</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteChangeSetOutput structure as a key-value pair table
function M.DeleteChangeSetOutput(args)
	assert(args, "You must provdide an argument table when creating DeleteChangeSetOutput")
	local t = { 
	}
	asserts.AssertDeleteChangeSetOutput(t)
	return t
end

keys.AccountLimit = { ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertAccountLimit(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountLimit to be of type 'table'")
	if struct["Name"] then asserts.AssertLimitName(struct["Name"]) end
	if struct["Value"] then asserts.AssertLimitValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountLimit[k], "AccountLimit contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountLimit
-- <p>The AccountLimit data type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [LimitName] <p>The name of the account limit. Currently, the only account limit is <code>StackLimit</code>.</p>
-- * Value [LimitValue] <p>The value that is associated with the account limit name.</p>
-- @return AccountLimit structure as a key-value pair table
function M.AccountLimit(args)
	assert(args, "You must provdide an argument table when creating AccountLimit")
	local t = { 
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertAccountLimit(t)
	return t
end

keys.InvalidChangeSetStatusException = { nil }

function asserts.AssertInvalidChangeSetStatusException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidChangeSetStatusException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidChangeSetStatusException[k], "InvalidChangeSetStatusException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidChangeSetStatusException
-- <p>The specified change set cannot be used to update the stack. For example, the change set status might be <code>CREATE_IN_PROGRESS</code> or the stack status might be <code>UPDATE_IN_PROGRESS</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidChangeSetStatusException structure as a key-value pair table
function M.InvalidChangeSetStatusException(args)
	assert(args, "You must provdide an argument table when creating InvalidChangeSetStatusException")
	local t = { 
	}
	asserts.AssertInvalidChangeSetStatusException(t)
	return t
end

keys.ListStacksInput = { ["NextToken"] = true, ["StackStatusFilter"] = true, nil }

function asserts.AssertListStacksInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStacksInput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["StackStatusFilter"] then asserts.AssertStackStatusFilter(struct["StackStatusFilter"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStacksInput[k], "ListStacksInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStacksInput
-- <p>The input for <a>ListStacks</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>A string that identifies the next page of stacks that you want to retrieve.</p>
-- * StackStatusFilter [StackStatusFilter] <p>Stack status to use as a filter. Specify one or more stack status codes to list only stacks with the specified status codes. For a complete list of stack status codes, see the <code>StackStatus</code> parameter of the <a>Stack</a> data type.</p>
-- @return ListStacksInput structure as a key-value pair table
function M.ListStacksInput(args)
	assert(args, "You must provdide an argument table when creating ListStacksInput")
	local t = { 
		["NextToken"] = args["NextToken"],
		["StackStatusFilter"] = args["StackStatusFilter"],
	}
	asserts.AssertListStacksInput(t)
	return t
end

keys.DescribeStacksOutput = { ["NextToken"] = true, ["Stacks"] = true, nil }

function asserts.AssertDescribeStacksOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStacksOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Stacks"] then asserts.AssertStacks(struct["Stacks"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStacksOutput[k], "DescribeStacksOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStacksOutput
-- <p>The output for a <a>DescribeStacks</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If the output exceeds 1 MB in size, a string that identifies the next page of stacks. If no additional page exists, this value is null.</p>
-- * Stacks [Stacks] <p>A list of stack structures.</p>
-- @return DescribeStacksOutput structure as a key-value pair table
function M.DescribeStacksOutput(args)
	assert(args, "You must provdide an argument table when creating DescribeStacksOutput")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Stacks"] = args["Stacks"],
	}
	asserts.AssertDescribeStacksOutput(t)
	return t
end

keys.CreateChangeSetOutput = { ["StackId"] = true, ["Id"] = true, nil }

function asserts.AssertCreateChangeSetOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateChangeSetOutput to be of type 'table'")
	if struct["StackId"] then asserts.AssertStackId(struct["StackId"]) end
	if struct["Id"] then asserts.AssertChangeSetId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateChangeSetOutput[k], "CreateChangeSetOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateChangeSetOutput
-- <p>The output for the <a>CreateChangeSet</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [StackId] <p>The unique ID of the stack.</p>
-- * Id [ChangeSetId] <p>The Amazon Resource Name (ARN) of the change set.</p>
-- @return CreateChangeSetOutput structure as a key-value pair table
function M.CreateChangeSetOutput(args)
	assert(args, "You must provdide an argument table when creating CreateChangeSetOutput")
	local t = { 
		["StackId"] = args["StackId"],
		["Id"] = args["Id"],
	}
	asserts.AssertCreateChangeSetOutput(t)
	return t
end

keys.SignalResourceInput = { ["StackName"] = true, ["Status"] = true, ["UniqueId"] = true, ["LogicalResourceId"] = true, nil }

function asserts.AssertSignalResourceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SignalResourceInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	assert(struct["LogicalResourceId"], "Expected key LogicalResourceId to exist in table")
	assert(struct["UniqueId"], "Expected key UniqueId to exist in table")
	assert(struct["Status"], "Expected key Status to exist in table")
	if struct["StackName"] then asserts.AssertStackNameOrId(struct["StackName"]) end
	if struct["Status"] then asserts.AssertResourceSignalStatus(struct["Status"]) end
	if struct["UniqueId"] then asserts.AssertResourceSignalUniqueId(struct["UniqueId"]) end
	if struct["LogicalResourceId"] then asserts.AssertLogicalResourceId(struct["LogicalResourceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SignalResourceInput[k], "SignalResourceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SignalResourceInput
-- <p>The input for the <a>SignalResource</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [StackNameOrId] <p>The stack name or unique stack ID that includes the resource that you want to signal.</p>
-- * Status [ResourceSignalStatus] <p>The status of the signal, which is either success or failure. A failure signal causes AWS CloudFormation to immediately fail the stack creation or update.</p>
-- * UniqueId [ResourceSignalUniqueId] <p>A unique ID of the signal. When you signal Amazon EC2 instances or Auto Scaling groups, specify the instance ID that you are signaling as the unique ID. If you send multiple signals to a single resource (such as signaling a wait condition), each signal requires a different unique ID.</p>
-- * LogicalResourceId [LogicalResourceId] <p>The logical ID of the resource that you want to signal. The logical ID is the name of the resource that given in the template.</p>
-- Required key: StackName
-- Required key: LogicalResourceId
-- Required key: UniqueId
-- Required key: Status
-- @return SignalResourceInput structure as a key-value pair table
function M.SignalResourceInput(args)
	assert(args, "You must provdide an argument table when creating SignalResourceInput")
	local t = { 
		["StackName"] = args["StackName"],
		["Status"] = args["Status"],
		["UniqueId"] = args["UniqueId"],
		["LogicalResourceId"] = args["LogicalResourceId"],
	}
	asserts.AssertSignalResourceInput(t)
	return t
end

keys.Export = { ["ExportingStackId"] = true, ["Value"] = true, ["Name"] = true, nil }

function asserts.AssertExport(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Export to be of type 'table'")
	if struct["ExportingStackId"] then asserts.AssertStackId(struct["ExportingStackId"]) end
	if struct["Value"] then asserts.AssertExportValue(struct["Value"]) end
	if struct["Name"] then asserts.AssertExportName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Export[k], "Export contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Export
-- <p>The <code>Export</code> structure describes the exported output values for a stack.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExportingStackId [StackId] <p>The stack that contains the exported output name and value.</p>
-- * Value [ExportValue] <p>The value of the exported output, such as a resource physical ID. This value is defined in the <code>Export</code> field in the associated stack's <code>Outputs</code> section.</p>
-- * Name [ExportName] <p>The name of exported output value. Use this name and the <code>Fn::ImportValue</code> function to import the associated value into other stacks. The name is defined in the <code>Export</code> field in the associated stack's <code>Outputs</code> section.</p>
-- @return Export structure as a key-value pair table
function M.Export(args)
	assert(args, "You must provdide an argument table when creating Export")
	local t = { 
		["ExportingStackId"] = args["ExportingStackId"],
		["Value"] = args["Value"],
		["Name"] = args["Name"],
	}
	asserts.AssertExport(t)
	return t
end

keys.Stack = { ["StackId"] = true, ["TimeoutInMinutes"] = true, ["Description"] = true, ["Parameters"] = true, ["Tags"] = true, ["Outputs"] = true, ["RoleARN"] = true, ["StackStatusReason"] = true, ["CreationTime"] = true, ["Capabilities"] = true, ["StackName"] = true, ["NotificationARNs"] = true, ["StackStatus"] = true, ["DisableRollback"] = true, ["ChangeSetId"] = true, ["LastUpdatedTime"] = true, nil }

function asserts.AssertStack(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Stack to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	assert(struct["StackStatus"], "Expected key StackStatus to exist in table")
	if struct["StackId"] then asserts.AssertStackId(struct["StackId"]) end
	if struct["TimeoutInMinutes"] then asserts.AssertTimeoutMinutes(struct["TimeoutInMinutes"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["Parameters"] then asserts.AssertParameters(struct["Parameters"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["Outputs"] then asserts.AssertOutputs(struct["Outputs"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["StackStatusReason"] then asserts.AssertStackStatusReason(struct["StackStatusReason"]) end
	if struct["CreationTime"] then asserts.AssertCreationTime(struct["CreationTime"]) end
	if struct["Capabilities"] then asserts.AssertCapabilities(struct["Capabilities"]) end
	if struct["StackName"] then asserts.AssertStackName(struct["StackName"]) end
	if struct["NotificationARNs"] then asserts.AssertNotificationARNs(struct["NotificationARNs"]) end
	if struct["StackStatus"] then asserts.AssertStackStatus(struct["StackStatus"]) end
	if struct["DisableRollback"] then asserts.AssertDisableRollback(struct["DisableRollback"]) end
	if struct["ChangeSetId"] then asserts.AssertChangeSetId(struct["ChangeSetId"]) end
	if struct["LastUpdatedTime"] then asserts.AssertLastUpdatedTime(struct["LastUpdatedTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.Stack[k], "Stack contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Stack
-- <p>The Stack data type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [StackId] <p>Unique identifier of the stack.</p>
-- * TimeoutInMinutes [TimeoutMinutes] <p>The amount of time within which stack creation should complete.</p>
-- * Description [Description] <p>A user-defined description associated with the stack.</p>
-- * Parameters [Parameters] <p>A list of <code>Parameter</code> structures.</p>
-- * Tags [Tags] <p>A list of <code>Tag</code>s that specify information about the stack.</p>
-- * Outputs [Outputs] <p>A list of output structures.</p>
-- * RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that is associated with the stack. During a stack operation, AWS CloudFormation uses this role's credentials to make calls on your behalf.</p>
-- * StackStatusReason [StackStatusReason] <p>Success/failure message associated with the stack status.</p>
-- * CreationTime [CreationTime] <p>The time at which the stack was created.</p>
-- * Capabilities [Capabilities] <p>The capabilities allowed in the stack.</p>
-- * StackName [StackName] <p>The name associated with the stack.</p>
-- * NotificationARNs [NotificationARNs] <p>SNS topic ARNs to which stack related events are published.</p>
-- * StackStatus [StackStatus] <p>Current status of the stack.</p>
-- * DisableRollback [DisableRollback] <p>Boolean to enable or disable rollback on stack creation failures:</p> <ul> <li> <p> <code>true</code>: disable rollback</p> </li> <li> <p> <code>false</code>: enable rollback</p> </li> </ul>
-- * ChangeSetId [ChangeSetId] <p>The unique ID of the change set.</p>
-- * LastUpdatedTime [LastUpdatedTime] <p>The time the stack was last updated. This field will only be returned if the stack has been updated at least once.</p>
-- Required key: StackName
-- Required key: CreationTime
-- Required key: StackStatus
-- @return Stack structure as a key-value pair table
function M.Stack(args)
	assert(args, "You must provdide an argument table when creating Stack")
	local t = { 
		["StackId"] = args["StackId"],
		["TimeoutInMinutes"] = args["TimeoutInMinutes"],
		["Description"] = args["Description"],
		["Parameters"] = args["Parameters"],
		["Tags"] = args["Tags"],
		["Outputs"] = args["Outputs"],
		["RoleARN"] = args["RoleARN"],
		["StackStatusReason"] = args["StackStatusReason"],
		["CreationTime"] = args["CreationTime"],
		["Capabilities"] = args["Capabilities"],
		["StackName"] = args["StackName"],
		["NotificationARNs"] = args["NotificationARNs"],
		["StackStatus"] = args["StackStatus"],
		["DisableRollback"] = args["DisableRollback"],
		["ChangeSetId"] = args["ChangeSetId"],
		["LastUpdatedTime"] = args["LastUpdatedTime"],
	}
	asserts.AssertStack(t)
	return t
end

keys.ChangeSetNotFoundException = { nil }

function asserts.AssertChangeSetNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChangeSetNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ChangeSetNotFoundException[k], "ChangeSetNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChangeSetNotFoundException
-- <p>The specified change set name or ID doesn't exit. To view valid change sets for a stack, use the <code>ListChangeSets</code> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ChangeSetNotFoundException structure as a key-value pair table
function M.ChangeSetNotFoundException(args)
	assert(args, "You must provdide an argument table when creating ChangeSetNotFoundException")
	local t = { 
	}
	asserts.AssertChangeSetNotFoundException(t)
	return t
end

keys.Output = { ["Description"] = true, ["OutputKey"] = true, ["OutputValue"] = true, nil }

function asserts.AssertOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Output to be of type 'table'")
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["OutputKey"] then asserts.AssertOutputKey(struct["OutputKey"]) end
	if struct["OutputValue"] then asserts.AssertOutputValue(struct["OutputValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.Output[k], "Output contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Output
-- <p>The Output data type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Description [Description] <p>User defined description associated with the output.</p>
-- * OutputKey [OutputKey] <p>The key associated with the output.</p>
-- * OutputValue [OutputValue] <p>The value associated with the output.</p>
-- @return Output structure as a key-value pair table
function M.Output(args)
	assert(args, "You must provdide an argument table when creating Output")
	local t = { 
		["Description"] = args["Description"],
		["OutputKey"] = args["OutputKey"],
		["OutputValue"] = args["OutputValue"],
	}
	asserts.AssertOutput(t)
	return t
end

keys.EstimateTemplateCostOutput = { ["Url"] = true, nil }

function asserts.AssertEstimateTemplateCostOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EstimateTemplateCostOutput to be of type 'table'")
	if struct["Url"] then asserts.AssertUrl(struct["Url"]) end
	for k,_ in pairs(struct) do
		assert(keys.EstimateTemplateCostOutput[k], "EstimateTemplateCostOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EstimateTemplateCostOutput
-- <p>The output for a <a>EstimateTemplateCost</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Url [Url] <p>An AWS Simple Monthly Calculator URL with a query string that describes the resources required to run the template.</p>
-- @return EstimateTemplateCostOutput structure as a key-value pair table
function M.EstimateTemplateCostOutput(args)
	assert(args, "You must provdide an argument table when creating EstimateTemplateCostOutput")
	local t = { 
		["Url"] = args["Url"],
	}
	asserts.AssertEstimateTemplateCostOutput(t)
	return t
end

keys.GetTemplateOutput = { ["StagesAvailable"] = true, ["TemplateBody"] = true, nil }

function asserts.AssertGetTemplateOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTemplateOutput to be of type 'table'")
	if struct["StagesAvailable"] then asserts.AssertStageList(struct["StagesAvailable"]) end
	if struct["TemplateBody"] then asserts.AssertTemplateBody(struct["TemplateBody"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTemplateOutput[k], "GetTemplateOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTemplateOutput
-- <p>The output for <a>GetTemplate</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StagesAvailable [StageList] <p>The stage of the template that you can retrieve. For stacks, the <code>Original</code> and <code>Processed</code> templates are always available. For change sets, the <code>Original</code> template is always available. After AWS CloudFormation finishes creating the change set, the <code>Processed</code> template becomes available.</p>
-- * TemplateBody [TemplateBody] <p>Structure containing the template body. (For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.)</p> <p>AWS CloudFormation returns the same template that was used when the stack was created.</p>
-- @return GetTemplateOutput structure as a key-value pair table
function M.GetTemplateOutput(args)
	assert(args, "You must provdide an argument table when creating GetTemplateOutput")
	local t = { 
		["StagesAvailable"] = args["StagesAvailable"],
		["TemplateBody"] = args["TemplateBody"],
	}
	asserts.AssertGetTemplateOutput(t)
	return t
end

keys.ListChangeSetsOutput = { ["NextToken"] = true, ["Summaries"] = true, nil }

function asserts.AssertListChangeSetsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListChangeSetsOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Summaries"] then asserts.AssertChangeSetSummaries(struct["Summaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListChangeSetsOutput[k], "ListChangeSetsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListChangeSetsOutput
-- <p>The output for the <a>ListChangeSets</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If the output exceeds 1 MB, a string that identifies the next page of change sets. If there is no additional page, this value is null.</p>
-- * Summaries [ChangeSetSummaries] <p>A list of <code>ChangeSetSummary</code> structures that provides the ID and status of each change set for the specified stack.</p>
-- @return ListChangeSetsOutput structure as a key-value pair table
function M.ListChangeSetsOutput(args)
	assert(args, "You must provdide an argument table when creating ListChangeSetsOutput")
	local t = { 
		["NextToken"] = args["NextToken"],
		["Summaries"] = args["Summaries"],
	}
	asserts.AssertListChangeSetsOutput(t)
	return t
end

function asserts.AssertCausingEntity(str)
	assert(str)
	assert(type(str) == "string", "Expected CausingEntity to be of type 'string'")
end

--  
function M.CausingEntity(str)
	asserts.AssertCausingEntity(str)
	return str
end

function asserts.AssertStackId(str)
	assert(str)
	assert(type(str) == "string", "Expected StackId to be of type 'string'")
end

--  
function M.StackId(str)
	asserts.AssertStackId(str)
	return str
end

function asserts.AssertTemplateDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected TemplateDescription to be of type 'string'")
end

--  
function M.TemplateDescription(str)
	asserts.AssertTemplateDescription(str)
	return str
end

function asserts.AssertResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceType to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceType(str)
	asserts.AssertResourceType(str)
	return str
end

function asserts.AssertMetadata(str)
	assert(str)
	assert(type(str) == "string", "Expected Metadata to be of type 'string'")
end

--  
function M.Metadata(str)
	asserts.AssertMetadata(str)
	return str
end

function asserts.AssertCapabilitiesReason(str)
	assert(str)
	assert(type(str) == "string", "Expected CapabilitiesReason to be of type 'string'")
end

--  
function M.CapabilitiesReason(str)
	asserts.AssertCapabilitiesReason(str)
	return str
end

function asserts.AssertEvaluationType(str)
	assert(str)
	assert(type(str) == "string", "Expected EvaluationType to be of type 'string'")
end

--  
function M.EvaluationType(str)
	asserts.AssertEvaluationType(str)
	return str
end

function asserts.AssertTemplateURL(str)
	assert(str)
	assert(type(str) == "string", "Expected TemplateURL to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TemplateURL(str)
	asserts.AssertTemplateURL(str)
	return str
end

function asserts.AssertReplacement(str)
	assert(str)
	assert(type(str) == "string", "Expected Replacement to be of type 'string'")
end

--  
function M.Replacement(str)
	asserts.AssertReplacement(str)
	return str
end

function asserts.AssertResourceSignalStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceSignalStatus to be of type 'string'")
end

--  
function M.ResourceSignalStatus(str)
	asserts.AssertResourceSignalStatus(str)
	return str
end

function asserts.AssertStackStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected StackStatus to be of type 'string'")
end

--  
function M.StackStatus(str)
	asserts.AssertStackStatus(str)
	return str
end

function asserts.AssertTransformName(str)
	assert(str)
	assert(type(str) == "string", "Expected TransformName to be of type 'string'")
end

--  
function M.TransformName(str)
	asserts.AssertTransformName(str)
	return str
end

function asserts.AssertLimitName(str)
	assert(str)
	assert(type(str) == "string", "Expected LimitName to be of type 'string'")
end

--  
function M.LimitName(str)
	asserts.AssertLimitName(str)
	return str
end

function asserts.AssertChangeSetName(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeSetName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ChangeSetName(str)
	asserts.AssertChangeSetName(str)
	return str
end

function asserts.AssertExportName(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportName to be of type 'string'")
end

--  
function M.ExportName(str)
	asserts.AssertExportName(str)
	return str
end

function asserts.AssertResourceSignalUniqueId(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceSignalUniqueId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceSignalUniqueId(str)
	asserts.AssertResourceSignalUniqueId(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertChangeSetType(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeSetType to be of type 'string'")
end

--  
function M.ChangeSetType(str)
	asserts.AssertChangeSetType(str)
	return str
end

function asserts.AssertOutputKey(str)
	assert(str)
	assert(type(str) == "string", "Expected OutputKey to be of type 'string'")
end

--  
function M.OutputKey(str)
	asserts.AssertOutputKey(str)
	return str
end

function asserts.AssertResourceStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceStatus to be of type 'string'")
end

--  
function M.ResourceStatus(str)
	asserts.AssertResourceStatus(str)
	return str
end

function asserts.AssertChangeSetNameOrId(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeSetNameOrId to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ChangeSetNameOrId(str)
	asserts.AssertChangeSetNameOrId(str)
	return str
end

function asserts.AssertChangeAction(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeAction to be of type 'string'")
end

--  
function M.ChangeAction(str)
	asserts.AssertChangeAction(str)
	return str
end

function asserts.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
end

--  
function M.TagKey(str)
	asserts.AssertTagKey(str)
	return str
end

function asserts.AssertClientRequestToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientRequestToken to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ClientRequestToken(str)
	asserts.AssertClientRequestToken(str)
	return str
end

function asserts.AssertAllowedValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AllowedValue to be of type 'string'")
end

--  
function M.AllowedValue(str)
	asserts.AssertAllowedValue(str)
	return str
end

function asserts.AssertParameterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterKey to be of type 'string'")
end

--  
function M.ParameterKey(str)
	asserts.AssertParameterKey(str)
	return str
end

function asserts.AssertChangeType(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeType to be of type 'string'")
end

--  
function M.ChangeType(str)
	asserts.AssertChangeType(str)
	return str
end

function asserts.AssertStackNameOrId(str)
	assert(str)
	assert(type(str) == "string", "Expected StackNameOrId to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StackNameOrId(str)
	asserts.AssertStackNameOrId(str)
	return str
end

function asserts.AssertStackPolicyDuringUpdateBody(str)
	assert(str)
	assert(type(str) == "string", "Expected StackPolicyDuringUpdateBody to be of type 'string'")
	assert(#str <= 16384, "Expected string to be max 16384 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StackPolicyDuringUpdateBody(str)
	asserts.AssertStackPolicyDuringUpdateBody(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertResourceAttribute(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceAttribute to be of type 'string'")
end

--  
function M.ResourceAttribute(str)
	asserts.AssertResourceAttribute(str)
	return str
end

function asserts.AssertTemplateStage(str)
	assert(str)
	assert(type(str) == "string", "Expected TemplateStage to be of type 'string'")
end

--  
function M.TemplateStage(str)
	asserts.AssertTemplateStage(str)
	return str
end

function asserts.AssertStackPolicyBody(str)
	assert(str)
	assert(type(str) == "string", "Expected StackPolicyBody to be of type 'string'")
	assert(#str <= 16384, "Expected string to be max 16384 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StackPolicyBody(str)
	asserts.AssertStackPolicyBody(str)
	return str
end

function asserts.AssertExecutionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ExecutionStatus to be of type 'string'")
end

--  
function M.ExecutionStatus(str)
	asserts.AssertExecutionStatus(str)
	return str
end

function asserts.AssertPhysicalResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected PhysicalResourceId to be of type 'string'")
end

--  
function M.PhysicalResourceId(str)
	asserts.AssertPhysicalResourceId(str)
	return str
end

function asserts.AssertClientToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ClientToken to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ClientToken(str)
	asserts.AssertClientToken(str)
	return str
end

function asserts.AssertChangeSetStatusReason(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeSetStatusReason to be of type 'string'")
end

--  
function M.ChangeSetStatusReason(str)
	asserts.AssertChangeSetStatusReason(str)
	return str
end

function asserts.AssertOutputValue(str)
	assert(str)
	assert(type(str) == "string", "Expected OutputValue to be of type 'string'")
end

--  
function M.OutputValue(str)
	asserts.AssertOutputValue(str)
	return str
end

function asserts.AssertPropertyName(str)
	assert(str)
	assert(type(str) == "string", "Expected PropertyName to be of type 'string'")
end

--  
function M.PropertyName(str)
	asserts.AssertPropertyName(str)
	return str
end

function asserts.AssertStackPolicyDuringUpdateURL(str)
	assert(str)
	assert(type(str) == "string", "Expected StackPolicyDuringUpdateURL to be of type 'string'")
	assert(#str <= 1350, "Expected string to be max 1350 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StackPolicyDuringUpdateURL(str)
	asserts.AssertStackPolicyDuringUpdateURL(str)
	return str
end

function asserts.AssertOnFailure(str)
	assert(str)
	assert(type(str) == "string", "Expected OnFailure to be of type 'string'")
end

--  
function M.OnFailure(str)
	asserts.AssertOnFailure(str)
	return str
end

function asserts.AssertChangeSetId(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeSetId to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ChangeSetId(str)
	asserts.AssertChangeSetId(str)
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

function asserts.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
end

--  
function M.Version(str)
	asserts.AssertVersion(str)
	return str
end

function asserts.AssertChangeSetStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeSetStatus to be of type 'string'")
end

--  
function M.ChangeSetStatus(str)
	asserts.AssertChangeSetStatus(str)
	return str
end

function asserts.AssertRequiresRecreation(str)
	assert(str)
	assert(type(str) == "string", "Expected RequiresRecreation to be of type 'string'")
end

--  
function M.RequiresRecreation(str)
	asserts.AssertRequiresRecreation(str)
	return str
end

function asserts.AssertStackPolicyURL(str)
	assert(str)
	assert(type(str) == "string", "Expected StackPolicyURL to be of type 'string'")
	assert(#str <= 1350, "Expected string to be max 1350 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StackPolicyURL(str)
	asserts.AssertStackPolicyURL(str)
	return str
end

function asserts.AssertStackName(str)
	assert(str)
	assert(type(str) == "string", "Expected StackName to be of type 'string'")
end

--  
function M.StackName(str)
	asserts.AssertStackName(str)
	return str
end

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertExportValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportValue to be of type 'string'")
end

--  
function M.ExportValue(str)
	asserts.AssertExportValue(str)
	return str
end

function asserts.AssertNotificationARN(str)
	assert(str)
	assert(type(str) == "string", "Expected NotificationARN to be of type 'string'")
end

--  
function M.NotificationARN(str)
	asserts.AssertNotificationARN(str)
	return str
end

function asserts.AssertResourceStatusReason(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceStatusReason to be of type 'string'")
end

--  
function M.ResourceStatusReason(str)
	asserts.AssertResourceStatusReason(str)
	return str
end

function asserts.AssertEventId(str)
	assert(str)
	assert(type(str) == "string", "Expected EventId to be of type 'string'")
end

--  
function M.EventId(str)
	asserts.AssertEventId(str)
	return str
end

function asserts.AssertResourceToSkip(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceToSkip to be of type 'string'")
end

--  
function M.ResourceToSkip(str)
	asserts.AssertResourceToSkip(str)
	return str
end

function asserts.AssertStackStatusReason(str)
	assert(str)
	assert(type(str) == "string", "Expected StackStatusReason to be of type 'string'")
end

--  
function M.StackStatusReason(str)
	asserts.AssertStackStatusReason(str)
	return str
end

function asserts.AssertTemplateBody(str)
	assert(str)
	assert(type(str) == "string", "Expected TemplateBody to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TemplateBody(str)
	asserts.AssertTemplateBody(str)
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

function asserts.AssertRoleARN(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleARN to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 20, "Expected string to be min 20 characters")
end

--  
function M.RoleARN(str)
	asserts.AssertRoleARN(str)
	return str
end

function asserts.AssertCapability(str)
	assert(str)
	assert(type(str) == "string", "Expected Capability to be of type 'string'")
end

--  
function M.Capability(str)
	asserts.AssertCapability(str)
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

function asserts.AssertLogicalResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected LogicalResourceId to be of type 'string'")
end

--  
function M.LogicalResourceId(str)
	asserts.AssertLogicalResourceId(str)
	return str
end

function asserts.AssertResourceProperties(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceProperties to be of type 'string'")
end

--  
function M.ResourceProperties(str)
	asserts.AssertResourceProperties(str)
	return str
end

function asserts.AssertChangeSource(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeSource to be of type 'string'")
end

--  
function M.ChangeSource(str)
	asserts.AssertChangeSource(str)
	return str
end

function asserts.AssertTimeoutMinutes(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TimeoutMinutes to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.TimeoutMinutes(integer)
	asserts.AssertTimeoutMinutes(integer)
	return integer
end

function asserts.AssertLimitValue(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected LimitValue to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.LimitValue(integer)
	asserts.AssertLimitValue(integer)
	return integer
end

function asserts.AssertDisableRollback(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected DisableRollback to be of type 'boolean'")
end

function M.DisableRollback(boolean)
	asserts.AssertDisableRollback(boolean)
	return boolean
end

function asserts.AssertUsePreviousValue(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected UsePreviousValue to be of type 'boolean'")
end

function M.UsePreviousValue(boolean)
	asserts.AssertUsePreviousValue(boolean)
	return boolean
end

function asserts.AssertNoEcho(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected NoEcho to be of type 'boolean'")
end

function M.NoEcho(boolean)
	asserts.AssertNoEcho(boolean)
	return boolean
end

function asserts.AssertUsePreviousTemplate(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected UsePreviousTemplate to be of type 'boolean'")
end

function M.UsePreviousTemplate(boolean)
	asserts.AssertUsePreviousTemplate(boolean)
	return boolean
end

function asserts.AssertCreationTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected CreationTime to be of type 'string'")
end

function M.CreationTime(timestamp)
	asserts.AssertCreationTime(timestamp)
	return timestamp
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertLastUpdatedTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected LastUpdatedTime to be of type 'string'")
end

function M.LastUpdatedTime(timestamp)
	asserts.AssertLastUpdatedTime(timestamp)
	return timestamp
end

function asserts.AssertDeletionTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected DeletionTime to be of type 'string'")
end

function M.DeletionTime(timestamp)
	asserts.AssertDeletionTime(timestamp)
	return timestamp
end

function asserts.AssertNotificationARNs(list)
	assert(list)
	assert(type(list) == "table", "Expected NotificationARNs to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		asserts.AssertNotificationARN(v)
	end
end

--  
-- List of NotificationARN objects
function M.NotificationARNs(list)
	asserts.AssertNotificationARNs(list)
	return list
end

function asserts.AssertScope(list)
	assert(list)
	assert(type(list) == "table", "Expected Scope to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceAttribute(v)
	end
end

--  
-- List of ResourceAttribute objects
function M.Scope(list)
	asserts.AssertScope(list)
	return list
end

function asserts.AssertExports(list)
	assert(list)
	assert(type(list) == "table", "Expected Exports to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertExport(v)
	end
end

--  
-- List of Export objects
function M.Exports(list)
	asserts.AssertExports(list)
	return list
end

function asserts.AssertChangeSetSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected ChangeSetSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertChangeSetSummary(v)
	end
end

--  
-- List of ChangeSetSummary objects
function M.ChangeSetSummaries(list)
	asserts.AssertChangeSetSummaries(list)
	return list
end

function asserts.AssertStackEvents(list)
	assert(list)
	assert(type(list) == "table", "Expected StackEvents to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStackEvent(v)
	end
end

--  
-- List of StackEvent objects
function M.StackEvents(list)
	asserts.AssertStackEvents(list)
	return list
end

function asserts.AssertStackStatusFilter(list)
	assert(list)
	assert(type(list) == "table", "Expected StackStatusFilter to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStackStatus(v)
	end
end

--  
-- List of StackStatus objects
function M.StackStatusFilter(list)
	asserts.AssertStackStatusFilter(list)
	return list
end

function asserts.AssertParameters(list)
	assert(list)
	assert(type(list) == "table", "Expected Parameters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParameter(v)
	end
end

--  
-- List of Parameter objects
function M.Parameters(list)
	asserts.AssertParameters(list)
	return list
end

function asserts.AssertResourcesToSkip(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourcesToSkip to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceToSkip(v)
	end
end

--  
-- List of ResourceToSkip objects
function M.ResourcesToSkip(list)
	asserts.AssertResourcesToSkip(list)
	return list
end

function asserts.AssertChanges(list)
	assert(list)
	assert(type(list) == "table", "Expected Changes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertChange(v)
	end
end

--  
-- List of Change objects
function M.Changes(list)
	asserts.AssertChanges(list)
	return list
end

function asserts.AssertTransformsList(list)
	assert(list)
	assert(type(list) == "table", "Expected TransformsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTransformName(v)
	end
end

--  
-- List of TransformName objects
function M.TransformsList(list)
	asserts.AssertTransformsList(list)
	return list
end

function asserts.AssertStackResourceSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected StackResourceSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStackResourceSummary(v)
	end
end

--  
-- List of StackResourceSummary objects
function M.StackResourceSummaries(list)
	asserts.AssertStackResourceSummaries(list)
	return list
end

function asserts.AssertOutputs(list)
	assert(list)
	assert(type(list) == "table", "Expected Outputs to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOutput(v)
	end
end

--  
-- List of Output objects
function M.Outputs(list)
	asserts.AssertOutputs(list)
	return list
end

function asserts.AssertTags(list)
	assert(list)
	assert(type(list) == "table", "Expected Tags to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.Tags(list)
	asserts.AssertTags(list)
	return list
end

function asserts.AssertAllowedValues(list)
	assert(list)
	assert(type(list) == "table", "Expected AllowedValues to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAllowedValue(v)
	end
end

--  
-- List of AllowedValue objects
function M.AllowedValues(list)
	asserts.AssertAllowedValues(list)
	return list
end

function asserts.AssertStackResources(list)
	assert(list)
	assert(type(list) == "table", "Expected StackResources to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStackResource(v)
	end
end

--  
-- List of StackResource objects
function M.StackResources(list)
	asserts.AssertStackResources(list)
	return list
end

function asserts.AssertRetainResources(list)
	assert(list)
	assert(type(list) == "table", "Expected RetainResources to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLogicalResourceId(v)
	end
end

--  
-- List of LogicalResourceId objects
function M.RetainResources(list)
	asserts.AssertRetainResources(list)
	return list
end

function asserts.AssertStacks(list)
	assert(list)
	assert(type(list) == "table", "Expected Stacks to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStack(v)
	end
end

--  
-- List of Stack objects
function M.Stacks(list)
	asserts.AssertStacks(list)
	return list
end

function asserts.AssertStageList(list)
	assert(list)
	assert(type(list) == "table", "Expected StageList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTemplateStage(v)
	end
end

--  
-- List of TemplateStage objects
function M.StageList(list)
	asserts.AssertStageList(list)
	return list
end

function asserts.AssertImports(list)
	assert(list)
	assert(type(list) == "table", "Expected Imports to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStackName(v)
	end
end

--  
-- List of StackName objects
function M.Imports(list)
	asserts.AssertImports(list)
	return list
end

function asserts.AssertResourceTypes(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceTypes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceType(v)
	end
end

--  
-- List of ResourceType objects
function M.ResourceTypes(list)
	asserts.AssertResourceTypes(list)
	return list
end

function asserts.AssertStackSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected StackSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStackSummary(v)
	end
end

--  
-- List of StackSummary objects
function M.StackSummaries(list)
	asserts.AssertStackSummaries(list)
	return list
end

function asserts.AssertCapabilities(list)
	assert(list)
	assert(type(list) == "table", "Expected Capabilities to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCapability(v)
	end
end

--  
-- List of Capability objects
function M.Capabilities(list)
	asserts.AssertCapabilities(list)
	return list
end

function asserts.AssertResourceChangeDetails(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceChangeDetails to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceChangeDetail(v)
	end
end

--  
-- List of ResourceChangeDetail objects
function M.ResourceChangeDetails(list)
	asserts.AssertResourceChangeDetails(list)
	return list
end

function asserts.AssertAccountLimitList(list)
	assert(list)
	assert(type(list) == "table", "Expected AccountLimitList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAccountLimit(v)
	end
end

--  
-- List of AccountLimit objects
function M.AccountLimitList(list)
	asserts.AssertAccountLimitList(list)
	return list
end

function asserts.AssertTemplateParameters(list)
	assert(list)
	assert(type(list) == "table", "Expected TemplateParameters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTemplateParameter(v)
	end
end

--  
-- List of TemplateParameter objects
function M.TemplateParameters(list)
	asserts.AssertTemplateParameters(list)
	return list
end

function asserts.AssertParameterDeclarations(list)
	assert(list)
	assert(type(list) == "table", "Expected ParameterDeclarations to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertParameterDeclaration(v)
	end
end

--  
-- List of ParameterDeclaration objects
function M.ParameterDeclarations(list)
	asserts.AssertParameterDeclarations(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
	assert(config.region, "You must provide a region in the config table")

	settings.service = M.metadata.endpoint_prefix
	settings.protocol = M.metadata.protocol
	settings.region = config.region
	settings.endpoint = config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call DescribeStackResource asynchronously, invoking a callback when done
-- @param DescribeStackResourceInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeStackResourceAsync(DescribeStackResourceInput, cb)
	assert(DescribeStackResourceInput, "You must provide a DescribeStackResourceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeStackResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeStackResourceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeStackResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStackResourceInput
-- @return response
-- @return error_message
function M.DescribeStackResourceSync(DescribeStackResourceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStackResourceAsync(DescribeStackResourceInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListStackResources asynchronously, invoking a callback when done
-- @param ListStackResourcesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListStackResourcesAsync(ListStackResourcesInput, cb)
	assert(ListStackResourcesInput, "You must provide a ListStackResourcesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListStackResources",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListStackResourcesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListStackResources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListStackResourcesInput
-- @return response
-- @return error_message
function M.ListStackResourcesSync(ListStackResourcesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListStackResourcesAsync(ListStackResourcesInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ValidateTemplate asynchronously, invoking a callback when done
-- @param ValidateTemplateInput
-- @param cb Callback function accepting two args: response, error_message
function M.ValidateTemplateAsync(ValidateTemplateInput, cb)
	assert(ValidateTemplateInput, "You must provide a ValidateTemplateInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ValidateTemplate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ValidateTemplateInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ValidateTemplate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ValidateTemplateInput
-- @return response
-- @return error_message
function M.ValidateTemplateSync(ValidateTemplateInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ValidateTemplateAsync(ValidateTemplateInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStackResources asynchronously, invoking a callback when done
-- @param DescribeStackResourcesInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeStackResourcesAsync(DescribeStackResourcesInput, cb)
	assert(DescribeStackResourcesInput, "You must provide a DescribeStackResourcesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeStackResources",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeStackResourcesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeStackResources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStackResourcesInput
-- @return response
-- @return error_message
function M.DescribeStackResourcesSync(DescribeStackResourcesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStackResourcesAsync(DescribeStackResourcesInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListImports asynchronously, invoking a callback when done
-- @param ListImportsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListImportsAsync(ListImportsInput, cb)
	assert(ListImportsInput, "You must provide a ListImportsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListImports",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListImportsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListImports synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListImportsInput
-- @return response
-- @return error_message
function M.ListImportsSync(ListImportsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListImportsAsync(ListImportsInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStack asynchronously, invoking a callback when done
-- @param CreateStackInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateStackAsync(CreateStackInput, cb)
	assert(CreateStackInput, "You must provide a CreateStackInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateStackInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateStack synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateStackInput
-- @return response
-- @return error_message
function M.CreateStackSync(CreateStackInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStackAsync(CreateStackInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTemplateSummary asynchronously, invoking a callback when done
-- @param GetTemplateSummaryInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetTemplateSummaryAsync(GetTemplateSummaryInput, cb)
	assert(GetTemplateSummaryInput, "You must provide a GetTemplateSummaryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetTemplateSummary",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetTemplateSummaryInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTemplateSummary synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTemplateSummaryInput
-- @return response
-- @return error_message
function M.GetTemplateSummarySync(GetTemplateSummaryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTemplateSummaryAsync(GetTemplateSummaryInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelUpdateStack asynchronously, invoking a callback when done
-- @param CancelUpdateStackInput
-- @param cb Callback function accepting two args: response, error_message
function M.CancelUpdateStackAsync(CancelUpdateStackInput, cb)
	assert(CancelUpdateStackInput, "You must provide a CancelUpdateStackInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CancelUpdateStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CancelUpdateStackInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CancelUpdateStack synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelUpdateStackInput
-- @return response
-- @return error_message
function M.CancelUpdateStackSync(CancelUpdateStackInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelUpdateStackAsync(CancelUpdateStackInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ContinueUpdateRollback asynchronously, invoking a callback when done
-- @param ContinueUpdateRollbackInput
-- @param cb Callback function accepting two args: response, error_message
function M.ContinueUpdateRollbackAsync(ContinueUpdateRollbackInput, cb)
	assert(ContinueUpdateRollbackInput, "You must provide a ContinueUpdateRollbackInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ContinueUpdateRollback",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ContinueUpdateRollbackInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ContinueUpdateRollback synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ContinueUpdateRollbackInput
-- @return response
-- @return error_message
function M.ContinueUpdateRollbackSync(ContinueUpdateRollbackInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ContinueUpdateRollbackAsync(ContinueUpdateRollbackInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListChangeSets asynchronously, invoking a callback when done
-- @param ListChangeSetsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListChangeSetsAsync(ListChangeSetsInput, cb)
	assert(ListChangeSetsInput, "You must provide a ListChangeSetsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListChangeSets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListChangeSetsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListChangeSets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListChangeSetsInput
-- @return response
-- @return error_message
function M.ListChangeSetsSync(ListChangeSetsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListChangeSetsAsync(ListChangeSetsInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetStackPolicy asynchronously, invoking a callback when done
-- @param GetStackPolicyInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetStackPolicyAsync(GetStackPolicyInput, cb)
	assert(GetStackPolicyInput, "You must provide a GetStackPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetStackPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetStackPolicyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetStackPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetStackPolicyInput
-- @return response
-- @return error_message
function M.GetStackPolicySync(GetStackPolicyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetStackPolicyAsync(GetStackPolicyInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListExports asynchronously, invoking a callback when done
-- @param ListExportsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListExportsAsync(ListExportsInput, cb)
	assert(ListExportsInput, "You must provide a ListExportsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListExports",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListExportsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListExports synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListExportsInput
-- @return response
-- @return error_message
function M.ListExportsSync(ListExportsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListExportsAsync(ListExportsInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStackEvents asynchronously, invoking a callback when done
-- @param DescribeStackEventsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeStackEventsAsync(DescribeStackEventsInput, cb)
	assert(DescribeStackEventsInput, "You must provide a DescribeStackEventsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeStackEvents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeStackEventsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeStackEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStackEventsInput
-- @return response
-- @return error_message
function M.DescribeStackEventsSync(DescribeStackEventsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStackEventsAsync(DescribeStackEventsInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SignalResource asynchronously, invoking a callback when done
-- @param SignalResourceInput
-- @param cb Callback function accepting two args: response, error_message
function M.SignalResourceAsync(SignalResourceInput, cb)
	assert(SignalResourceInput, "You must provide a SignalResourceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SignalResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", SignalResourceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SignalResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SignalResourceInput
-- @return response
-- @return error_message
function M.SignalResourceSync(SignalResourceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SignalResourceAsync(SignalResourceInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTemplate asynchronously, invoking a callback when done
-- @param GetTemplateInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetTemplateAsync(GetTemplateInput, cb)
	assert(GetTemplateInput, "You must provide a GetTemplateInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetTemplate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetTemplateInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTemplate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTemplateInput
-- @return response
-- @return error_message
function M.GetTemplateSync(GetTemplateInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTemplateAsync(GetTemplateInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeChangeSet asynchronously, invoking a callback when done
-- @param DescribeChangeSetInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeChangeSetAsync(DescribeChangeSetInput, cb)
	assert(DescribeChangeSetInput, "You must provide a DescribeChangeSetInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeChangeSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeChangeSetInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeChangeSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeChangeSetInput
-- @return response
-- @return error_message
function M.DescribeChangeSetSync(DescribeChangeSetInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeChangeSetAsync(DescribeChangeSetInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteChangeSet asynchronously, invoking a callback when done
-- @param DeleteChangeSetInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteChangeSetAsync(DeleteChangeSetInput, cb)
	assert(DeleteChangeSetInput, "You must provide a DeleteChangeSetInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteChangeSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteChangeSetInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteChangeSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteChangeSetInput
-- @return response
-- @return error_message
function M.DeleteChangeSetSync(DeleteChangeSetInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteChangeSetAsync(DeleteChangeSetInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateChangeSet asynchronously, invoking a callback when done
-- @param CreateChangeSetInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateChangeSetAsync(CreateChangeSetInput, cb)
	assert(CreateChangeSetInput, "You must provide a CreateChangeSetInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateChangeSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateChangeSetInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateChangeSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateChangeSetInput
-- @return response
-- @return error_message
function M.CreateChangeSetSync(CreateChangeSetInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateChangeSetAsync(CreateChangeSetInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStacks asynchronously, invoking a callback when done
-- @param DescribeStacksInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeStacksAsync(DescribeStacksInput, cb)
	assert(DescribeStacksInput, "You must provide a DescribeStacksInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeStacks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeStacksInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeStacks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStacksInput
-- @return response
-- @return error_message
function M.DescribeStacksSync(DescribeStacksInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStacksAsync(DescribeStacksInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateStack asynchronously, invoking a callback when done
-- @param UpdateStackInput
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateStackAsync(UpdateStackInput, cb)
	assert(UpdateStackInput, "You must provide a UpdateStackInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateStackInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateStack synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateStackInput
-- @return response
-- @return error_message
function M.UpdateStackSync(UpdateStackInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateStackAsync(UpdateStackInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ExecuteChangeSet asynchronously, invoking a callback when done
-- @param ExecuteChangeSetInput
-- @param cb Callback function accepting two args: response, error_message
function M.ExecuteChangeSetAsync(ExecuteChangeSetInput, cb)
	assert(ExecuteChangeSetInput, "You must provide a ExecuteChangeSetInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ExecuteChangeSet",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ExecuteChangeSetInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ExecuteChangeSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ExecuteChangeSetInput
-- @return response
-- @return error_message
function M.ExecuteChangeSetSync(ExecuteChangeSetInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ExecuteChangeSetAsync(ExecuteChangeSetInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteStack asynchronously, invoking a callback when done
-- @param DeleteStackInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteStackAsync(DeleteStackInput, cb)
	assert(DeleteStackInput, "You must provide a DeleteStackInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteStack",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteStackInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteStack synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteStackInput
-- @return response
-- @return error_message
function M.DeleteStackSync(DeleteStackInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteStackAsync(DeleteStackInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetStackPolicy asynchronously, invoking a callback when done
-- @param SetStackPolicyInput
-- @param cb Callback function accepting two args: response, error_message
function M.SetStackPolicyAsync(SetStackPolicyInput, cb)
	assert(SetStackPolicyInput, "You must provide a SetStackPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetStackPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", SetStackPolicyInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetStackPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetStackPolicyInput
-- @return response
-- @return error_message
function M.SetStackPolicySync(SetStackPolicyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetStackPolicyAsync(SetStackPolicyInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListStacks asynchronously, invoking a callback when done
-- @param ListStacksInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListStacksAsync(ListStacksInput, cb)
	assert(ListStacksInput, "You must provide a ListStacksInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListStacks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListStacksInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListStacks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListStacksInput
-- @return response
-- @return error_message
function M.ListStacksSync(ListStacksInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListStacksAsync(ListStacksInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call EstimateTemplateCost asynchronously, invoking a callback when done
-- @param EstimateTemplateCostInput
-- @param cb Callback function accepting two args: response, error_message
function M.EstimateTemplateCostAsync(EstimateTemplateCostInput, cb)
	assert(EstimateTemplateCostInput, "You must provide a EstimateTemplateCostInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".EstimateTemplateCost",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", EstimateTemplateCostInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EstimateTemplateCost synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EstimateTemplateCostInput
-- @return response
-- @return error_message
function M.EstimateTemplateCostSync(EstimateTemplateCostInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EstimateTemplateCostAsync(EstimateTemplateCostInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAccountLimits asynchronously, invoking a callback when done
-- @param DescribeAccountLimitsInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAccountLimitsAsync(DescribeAccountLimitsInput, cb)
	assert(DescribeAccountLimitsInput, "You must provide a DescribeAccountLimitsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeAccountLimits",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAccountLimitsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAccountLimits synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAccountLimitsInput
-- @return response
-- @return error_message
function M.DescribeAccountLimitsSync(DescribeAccountLimitsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAccountLimitsAsync(DescribeAccountLimitsInput, function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
