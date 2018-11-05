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

keys.CreateStackSetInput = { ["StackSetName"] = true, ["Parameters"] = true, ["Tags"] = true, ["Capabilities"] = true, ["AdministrationRoleARN"] = true, ["ClientRequestToken"] = true, ["ExecutionRoleName"] = true, ["TemplateBody"] = true, ["TemplateURL"] = true, ["Description"] = true, nil }

function asserts.AssertCreateStackSetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStackSetInput to be of type 'table'")
	assert(struct["StackSetName"], "Expected key StackSetName to exist in table")
	if struct["StackSetName"] then asserts.AssertStackSetName(struct["StackSetName"]) end
	if struct["Parameters"] then asserts.AssertParameters(struct["Parameters"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["Capabilities"] then asserts.AssertCapabilities(struct["Capabilities"]) end
	if struct["AdministrationRoleARN"] then asserts.AssertRoleARN(struct["AdministrationRoleARN"]) end
	if struct["ClientRequestToken"] then asserts.AssertClientRequestToken(struct["ClientRequestToken"]) end
	if struct["ExecutionRoleName"] then asserts.AssertExecutionRoleName(struct["ExecutionRoleName"]) end
	if struct["TemplateBody"] then asserts.AssertTemplateBody(struct["TemplateBody"]) end
	if struct["TemplateURL"] then asserts.AssertTemplateURL(struct["TemplateURL"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStackSetInput[k], "CreateStackSetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStackSetInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackSetName [StackSetName] <p>The name to associate with the stack set. The name must be unique in the region where you create your stack set.</p> <note> <p>A stack name can contain only alphanumeric characters (case-sensitive) and hyphens. It must start with an alphabetic character and can't be longer than 128 characters.</p> </note>
-- * Parameters [Parameters] <p>The input parameters for the stack set template. </p>
-- * Tags [Tags] <p>The key-value pairs to associate with this stack set and the stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the stacks. A maximum number of 50 tags can be specified.</p> <p>If you specify tags as part of a <code>CreateStackSet</code> action, AWS CloudFormation checks to see if you have the required IAM permission to tag resources. If you don't, the entire <code>CreateStackSet</code> action fails with an <code>access denied</code> error, and the stack set is not created.</p>
-- * Capabilities [Capabilities] <p>A list of values that you must specify before AWS CloudFormation can create certain stack sets. Some stack set templates might include resources that can affect permissions in your AWS account—for example, by creating new AWS Identity and Access Management (IAM) users. For those stack sets, you must explicitly acknowledge their capabilities by specifying this parameter.</p> <p>The only valid values are CAPABILITY_IAM and CAPABILITY_NAMED_IAM. The following resources require you to specify this parameter: </p> <ul> <li> <p>AWS::IAM::AccessKey</p> </li> <li> <p>AWS::IAM::Group</p> </li> <li> <p>AWS::IAM::InstanceProfile</p> </li> <li> <p>AWS::IAM::Policy</p> </li> <li> <p>AWS::IAM::Role</p> </li> <li> <p>AWS::IAM::User</p> </li> <li> <p>AWS::IAM::UserToGroupAddition</p> </li> </ul> <p>If your stack template contains these resources, we recommend that you review all permissions that are associated with them and edit their permissions if necessary.</p> <p>If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify CAPABILITY_NAMED_IAM. If you don't specify this parameter, this action returns an <code>InsufficientCapabilities</code> error.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging IAM Resources in AWS CloudFormation Templates.</a> </p>
-- * AdministrationRoleARN [RoleARN] <p>The Amazon Resource Number (ARN) of the IAM role to use to create this stack set. </p> <p>Specify an IAM role only if you are using customized administrator roles to control which users or groups can manage specific stack sets within the same administrator account. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html">Prerequisites: Granting Permissions for Stack Set Operations</a> in the <i>AWS CloudFormation User Guide</i>.</p>
-- * ClientRequestToken [ClientRequestToken] <p>A unique identifier for this <code>CreateStackSet</code> request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create another stack set with the same name. You might retry <code>CreateStackSet</code> requests to ensure that AWS CloudFormation successfully received them.</p> <p>If you don't specify an operation ID, the SDK generates one automatically. </p>
-- * ExecutionRoleName [ExecutionRoleName] <p>The name of the IAM execution role to use to create the stack set. If you do not specify an execution role, AWS CloudFormation uses the <code>AWSCloudFormationStackSetExecutionRole</code> role for the stack set operation.</p> <p>Specify an IAM role only if you are using customized execution roles to control which stack resources users and groups can include in their stack sets. </p>
-- * TemplateBody [TemplateBody] <p>The structure that contains the template body, with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must specify either the TemplateBody or the TemplateURL parameter, but not both.</p>
-- * TemplateURL [TemplateURL] <p>The location of the file that contains the template body. The URL must point to a template (maximum size: 460,800 bytes) that's located in an Amazon S3 bucket. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must specify either the TemplateBody or the TemplateURL parameter, but not both.</p>
-- * Description [Description] <p>A description of the stack set. You can use the description to identify the stack set's purpose or other important information.</p>
-- Required key: StackSetName
-- @return CreateStackSetInput structure as a key-value pair table
function M.CreateStackSetInput(args)
	assert(args, "You must provide an argument table when creating CreateStackSetInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackSetName"] = args["StackSetName"],
		["Parameters"] = args["Parameters"],
		["Tags"] = args["Tags"],
		["Capabilities"] = args["Capabilities"],
		["AdministrationRoleARN"] = args["AdministrationRoleARN"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["ExecutionRoleName"] = args["ExecutionRoleName"],
		["TemplateBody"] = args["TemplateBody"],
		["TemplateURL"] = args["TemplateURL"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateStackSetInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStackSetOperationResultsInput = { ["NextToken"] = true, ["StackSetName"] = true, ["MaxResults"] = true, ["OperationId"] = true, nil }

function asserts.AssertListStackSetOperationResultsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStackSetOperationResultsInput to be of type 'table'")
	assert(struct["StackSetName"], "Expected key StackSetName to exist in table")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["StackSetName"] then asserts.AssertStackSetName(struct["StackSetName"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["OperationId"] then asserts.AssertClientRequestToken(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStackSetOperationResultsInput[k], "ListStackSetOperationResultsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStackSetOperationResultsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If the previous request didn't return all of the remaining results, the response object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListStackSetOperationResults</code> again and assign that token to the request object's <code>NextToken</code> parameter. If there are no remaining results, the previous response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
-- * StackSetName [StackSetName] <p>The name or unique ID of the stack set that you want to get operation results for.</p>
-- * MaxResults [MaxResults] <p>The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code> request parameter to get the next set of results.</p>
-- * OperationId [ClientRequestToken] <p>The ID of the stack set operation.</p>
-- Required key: StackSetName
-- Required key: OperationId
-- @return ListStackSetOperationResultsInput structure as a key-value pair table
function M.ListStackSetOperationResultsInput(args)
	assert(args, "You must provide an argument table when creating ListStackSetOperationResultsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["StackSetName"] = args["StackSetName"],
		["MaxResults"] = args["MaxResults"],
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertListStackSetOperationResultsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

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
	assert(args, "You must provide an argument table when creating ListStackResourcesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListStackResourcesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ParameterConstraints")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AllowedValues"] = args["AllowedValues"],
	}
	asserts.AssertParameterConstraints(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTemplateSummaryInput = { ["StackName"] = true, ["TemplateURL"] = true, ["StackSetName"] = true, ["TemplateBody"] = true, nil }

function asserts.AssertGetTemplateSummaryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTemplateSummaryInput to be of type 'table'")
	if struct["StackName"] then asserts.AssertStackNameOrId(struct["StackName"]) end
	if struct["TemplateURL"] then asserts.AssertTemplateURL(struct["TemplateURL"]) end
	if struct["StackSetName"] then asserts.AssertStackSetNameOrId(struct["StackSetName"]) end
	if struct["TemplateBody"] then asserts.AssertTemplateBody(struct["TemplateBody"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTemplateSummaryInput[k], "GetTemplateSummaryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTemplateSummaryInput
-- <p>The input for the <a>GetTemplateSummary</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [StackNameOrId] <p>The name or the stack ID that is associated with the stack, which are not always interchangeable. For running stacks, you can specify either the stack's name or its unique stack ID. For deleted stack, you must specify the unique stack ID.</p> <p>Conditional: You must specify only one of the following parameters: <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or <code>TemplateURL</code>.</p>
-- * TemplateURL [TemplateURL] <p>Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information about templates, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must specify only one of the following parameters: <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or <code>TemplateURL</code>.</p>
-- * StackSetName [StackSetNameOrId] <p>The name or unique ID of the stack set from which the stack was created.</p> <p>Conditional: You must specify only one of the following parameters: <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or <code>TemplateURL</code>.</p>
-- * TemplateBody [TemplateBody] <p>Structure containing the template body with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information about templates, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must specify only one of the following parameters: <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or <code>TemplateURL</code>.</p>
-- @return GetTemplateSummaryInput structure as a key-value pair table
function M.GetTemplateSummaryInput(args)
	assert(args, "You must provide an argument table when creating GetTemplateSummaryInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["TemplateURL"] = args["TemplateURL"],
		["StackSetName"] = args["StackSetName"],
		["TemplateBody"] = args["TemplateBody"],
	}
	asserts.AssertGetTemplateSummaryInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeStackInstanceInput = { ["StackInstanceRegion"] = true, ["StackSetName"] = true, ["StackInstanceAccount"] = true, nil }

function asserts.AssertDescribeStackInstanceInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackInstanceInput to be of type 'table'")
	assert(struct["StackSetName"], "Expected key StackSetName to exist in table")
	assert(struct["StackInstanceAccount"], "Expected key StackInstanceAccount to exist in table")
	assert(struct["StackInstanceRegion"], "Expected key StackInstanceRegion to exist in table")
	if struct["StackInstanceRegion"] then asserts.AssertRegion(struct["StackInstanceRegion"]) end
	if struct["StackSetName"] then asserts.AssertStackSetName(struct["StackSetName"]) end
	if struct["StackInstanceAccount"] then asserts.AssertAccount(struct["StackInstanceAccount"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStackInstanceInput[k], "DescribeStackInstanceInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackInstanceInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackInstanceRegion [Region] <p>The name of a region that's associated with this stack instance.</p>
-- * StackSetName [StackSetName] <p>The name or the unique stack ID of the stack set that you want to get stack instance information for.</p>
-- * StackInstanceAccount [Account] <p>The ID of an AWS account that's associated with this stack instance.</p>
-- Required key: StackSetName
-- Required key: StackInstanceAccount
-- Required key: StackInstanceRegion
-- @return DescribeStackInstanceInput structure as a key-value pair table
function M.DescribeStackInstanceInput(args)
	assert(args, "You must provide an argument table when creating DescribeStackInstanceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackInstanceRegion"] = args["StackInstanceRegion"],
		["StackSetName"] = args["StackSetName"],
		["StackInstanceAccount"] = args["StackInstanceAccount"],
	}
	asserts.AssertDescribeStackInstanceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeChangeSetInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["NextToken"] = args["NextToken"],
		["ChangeSetName"] = args["ChangeSetName"],
	}
	asserts.AssertDescribeChangeSetInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating Change")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceChange"] = args["ResourceChange"],
		["Type"] = args["Type"],
	}
	asserts.AssertChange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStackInstancesOutput = { ["NextToken"] = true, ["Summaries"] = true, nil }

function asserts.AssertListStackInstancesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStackInstancesOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Summaries"] then asserts.AssertStackInstanceSummaries(struct["Summaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStackInstancesOutput[k], "ListStackInstancesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStackInstancesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If the request doesn't return all of the remaining results, <code>NextToken</code> is set to a token. To retrieve the next set of results, call <code>ListStackInstances</code> again and assign that token to the request object's <code>NextToken</code> parameter. If the request returns all results, <code>NextToken</code> is set to <code>null</code>.</p>
-- * Summaries [StackInstanceSummaries] <p>A list of <code>StackInstanceSummary</code> structures that contain information about the specified stack instances.</p>
-- @return ListStackInstancesOutput structure as a key-value pair table
function M.ListStackInstancesOutput(args)
	assert(args, "You must provide an argument table when creating ListStackInstancesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Summaries"] = args["Summaries"],
	}
	asserts.AssertListStackInstancesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateStackInstancesOutput = { ["OperationId"] = true, nil }

function asserts.AssertCreateStackInstancesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStackInstancesOutput to be of type 'table'")
	if struct["OperationId"] then asserts.AssertClientRequestToken(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStackInstancesOutput[k], "CreateStackInstancesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStackInstancesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperationId [ClientRequestToken] <p>The unique identifier for this stack set operation.</p>
-- @return CreateStackInstancesOutput structure as a key-value pair table
function M.CreateStackInstancesOutput(args)
	assert(args, "You must provide an argument table when creating CreateStackInstancesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertCreateStackInstancesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StaleRequestException = { nil }

function asserts.AssertStaleRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StaleRequestException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StaleRequestException[k], "StaleRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StaleRequestException
-- <p>Another operation has been performed on this stack set since the specified operation was performed. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StaleRequestException structure as a key-value pair table
function M.StaleRequestException(args)
	assert(args, "You must provide an argument table when creating StaleRequestException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStaleRequestException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StackSummary = { ["StackId"] = true, ["RootId"] = true, ["DeletionTime"] = true, ["TemplateDescription"] = true, ["StackStatusReason"] = true, ["CreationTime"] = true, ["StackName"] = true, ["StackStatus"] = true, ["ParentId"] = true, ["LastUpdatedTime"] = true, nil }

function asserts.AssertStackSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackSummary to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	assert(struct["StackStatus"], "Expected key StackStatus to exist in table")
	if struct["StackId"] then asserts.AssertStackId(struct["StackId"]) end
	if struct["RootId"] then asserts.AssertStackId(struct["RootId"]) end
	if struct["DeletionTime"] then asserts.AssertDeletionTime(struct["DeletionTime"]) end
	if struct["TemplateDescription"] then asserts.AssertTemplateDescription(struct["TemplateDescription"]) end
	if struct["StackStatusReason"] then asserts.AssertStackStatusReason(struct["StackStatusReason"]) end
	if struct["CreationTime"] then asserts.AssertCreationTime(struct["CreationTime"]) end
	if struct["StackName"] then asserts.AssertStackName(struct["StackName"]) end
	if struct["StackStatus"] then asserts.AssertStackStatus(struct["StackStatus"]) end
	if struct["ParentId"] then asserts.AssertStackId(struct["ParentId"]) end
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
-- * RootId [StackId] <p>For nested stacks--stacks created as resources for another stack--the stack ID of the the top-level stack to which the nested stack ultimately belongs.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">Working with Nested Stacks</a> in the <i>AWS CloudFormation User Guide</i>.</p>
-- * DeletionTime [DeletionTime] <p>The time the stack was deleted.</p>
-- * TemplateDescription [TemplateDescription] <p>The template description of the template used to create the stack.</p>
-- * StackStatusReason [StackStatusReason] <p>Success/Failure message associated with the stack status.</p>
-- * CreationTime [CreationTime] <p>The time the stack was created.</p>
-- * StackName [StackName] <p>The name associated with the stack.</p>
-- * StackStatus [StackStatus] <p>The current status of the stack.</p>
-- * ParentId [StackId] <p>For nested stacks--stacks created as resources for another stack--the stack ID of the direct parent of this stack. For the first level of nested stacks, the root stack is also the parent stack.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">Working with Nested Stacks</a> in the <i>AWS CloudFormation User Guide</i>.</p>
-- * LastUpdatedTime [LastUpdatedTime] <p>The time the stack was last updated. This field will only be returned if the stack has been updated at least once.</p>
-- Required key: StackName
-- Required key: CreationTime
-- Required key: StackStatus
-- @return StackSummary structure as a key-value pair table
function M.StackSummary(args)
	assert(args, "You must provide an argument table when creating StackSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["RootId"] = args["RootId"],
		["DeletionTime"] = args["DeletionTime"],
		["TemplateDescription"] = args["TemplateDescription"],
		["StackStatusReason"] = args["StackStatusReason"],
		["CreationTime"] = args["CreationTime"],
		["StackName"] = args["StackName"],
		["StackStatus"] = args["StackStatus"],
		["ParentId"] = args["ParentId"],
		["LastUpdatedTime"] = args["LastUpdatedTime"],
	}
	asserts.AssertStackSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating TokenAlreadyExistsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTokenAlreadyExistsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeAccountLimitsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeAccountLimitsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteStackInstancesOutput = { ["OperationId"] = true, nil }

function asserts.AssertDeleteStackInstancesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStackInstancesOutput to be of type 'table'")
	if struct["OperationId"] then asserts.AssertClientRequestToken(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteStackInstancesOutput[k], "DeleteStackInstancesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStackInstancesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperationId [ClientRequestToken] <p>The unique identifier for this stack set operation.</p>
-- @return DeleteStackInstancesOutput structure as a key-value pair table
function M.DeleteStackInstancesOutput(args)
	assert(args, "You must provide an argument table when creating DeleteStackInstancesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertDeleteStackInstancesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating StackResourceDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
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
	asserts.AssertStackResourceDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StackSetOperation = { ["Status"] = true, ["AdministrationRoleARN"] = true, ["OperationPreferences"] = true, ["RetainStacks"] = true, ["ExecutionRoleName"] = true, ["EndTimestamp"] = true, ["Action"] = true, ["CreationTimestamp"] = true, ["StackSetId"] = true, ["OperationId"] = true, nil }

function asserts.AssertStackSetOperation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackSetOperation to be of type 'table'")
	if struct["Status"] then asserts.AssertStackSetOperationStatus(struct["Status"]) end
	if struct["AdministrationRoleARN"] then asserts.AssertRoleARN(struct["AdministrationRoleARN"]) end
	if struct["OperationPreferences"] then asserts.AssertStackSetOperationPreferences(struct["OperationPreferences"]) end
	if struct["RetainStacks"] then asserts.AssertRetainStacksNullable(struct["RetainStacks"]) end
	if struct["ExecutionRoleName"] then asserts.AssertExecutionRoleName(struct["ExecutionRoleName"]) end
	if struct["EndTimestamp"] then asserts.AssertTimestamp(struct["EndTimestamp"]) end
	if struct["Action"] then asserts.AssertStackSetOperationAction(struct["Action"]) end
	if struct["CreationTimestamp"] then asserts.AssertTimestamp(struct["CreationTimestamp"]) end
	if struct["StackSetId"] then asserts.AssertStackSetId(struct["StackSetId"]) end
	if struct["OperationId"] then asserts.AssertClientRequestToken(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StackSetOperation[k], "StackSetOperation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackSetOperation
-- <p>The structure that contains information about a stack set operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [StackSetOperationStatus] <p>The status of the operation. </p> <ul> <li> <p> <code>FAILED</code>: The operation exceeded the specified failure tolerance. The failure tolerance value that you've set for an operation is applied for each region during stack create and update operations. If the number of failed stacks within a region exceeds the failure tolerance, the status of the operation in the region is set to <code>FAILED</code>. This in turn sets the status of the operation as a whole to <code>FAILED</code>, and AWS CloudFormation cancels the operation in any remaining regions.</p> </li> <li> <p> <code>RUNNING</code>: The operation is currently being performed.</p> </li> <li> <p> <code>STOPPED</code>: The user has cancelled the operation.</p> </li> <li> <p> <code>STOPPING</code>: The operation is in the process of stopping, at user request. </p> </li> <li> <p> <code>SUCCEEDED</code>: The operation completed creating or updating all the specified stacks without exceeding the failure tolerance for the operation.</p> </li> </ul>
-- * AdministrationRoleARN [RoleARN] <p>The Amazon Resource Number (ARN) of the IAM role used to perform this stack set operation. </p> <p>Use customized administrator roles to control which users or groups can manage specific stack sets within the same administrator account. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html">Define Permissions for Multiple Administrators</a> in the <i>AWS CloudFormation User Guide</i>.</p>
-- * OperationPreferences [StackSetOperationPreferences] <p>The preferences for how AWS CloudFormation performs this stack set operation.</p>
-- * RetainStacks [RetainStacksNullable] <p>For stack set operations of action type <code>DELETE</code>, specifies whether to remove the stack instances from the specified stack set, but doesn't delete the stacks. You can't reassociate a retained stack, or add an existing, saved stack to a new stack set.</p>
-- * ExecutionRoleName [ExecutionRoleName] <p>The name of the IAM execution role used to create or update the stack set.</p> <p>Use customized execution roles to control which stack resources users and groups can include in their stack sets. </p>
-- * EndTimestamp [Timestamp] <p>The time at which the stack set operation ended, across all accounts and regions specified. Note that this doesn't necessarily mean that the stack set operation was successful, or even attempted, in each account or region.</p>
-- * Action [StackSetOperationAction] <p>The type of stack set operation: <code>CREATE</code>, <code>UPDATE</code>, or <code>DELETE</code>. Create and delete operations affect only the specified stack set instances that are associated with the specified stack set. Update operations affect both the stack set itself, as well as <i>all</i> associated stack set instances.</p>
-- * CreationTimestamp [Timestamp] <p>The time at which the operation was initiated. Note that the creation times for the stack set operation might differ from the creation time of the individual stacks themselves. This is because AWS CloudFormation needs to perform preparatory work for the operation, such as dispatching the work to the requested regions, before actually creating the first stacks.</p>
-- * StackSetId [StackSetId] <p>The ID of the stack set.</p>
-- * OperationId [ClientRequestToken] <p>The unique ID of a stack set operation.</p>
-- @return StackSetOperation structure as a key-value pair table
function M.StackSetOperation(args)
	assert(args, "You must provide an argument table when creating StackSetOperation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["AdministrationRoleARN"] = args["AdministrationRoleARN"],
		["OperationPreferences"] = args["OperationPreferences"],
		["RetainStacks"] = args["RetainStacks"],
		["ExecutionRoleName"] = args["ExecutionRoleName"],
		["EndTimestamp"] = args["EndTimestamp"],
		["Action"] = args["Action"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["StackSetId"] = args["StackSetId"],
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertStackSetOperation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ContinueUpdateRollbackOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertContinueUpdateRollbackOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ListChangeSetsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListChangeSetsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * ClientRequestToken [ClientRequestToken] <p>A unique identifier for this <code>DeleteStack</code> request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to delete a stack with the same name. You might retry <code>DeleteStack</code> requests to ensure that AWS CloudFormation successfully received them.</p> <p>All events triggered by a given stack operation are assigned the same client request token, which you can use to track operations. For example, if you execute a <code>CreateStack</code> operation with the token <code>token1</code>, then all the <code>StackEvents</code> generated by that operation will have <code>ClientRequestToken</code> set as <code>token1</code>.</p> <p>In the console, stack operations display the client request token on the Events tab. Stack operations that are initiated from the console use the token format <i>Console-StackOperation-ID</i>, which helps you easily identify the stack operation . For example, if you create a stack using the console, each stack event would be assigned the same token in the following format: <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>. </p>
-- Required key: StackName
-- @return DeleteStackInput structure as a key-value pair table
function M.DeleteStackInput(args)
	assert(args, "You must provide an argument table when creating DeleteStackInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["RetainResources"] = args["RetainResources"],
		["RoleARN"] = args["RoleARN"],
		["ClientRequestToken"] = args["ClientRequestToken"],
	}
	asserts.AssertDeleteStackInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The Tag type enables you to specify a key-value pair that can be used to store information about an AWS CloudFormation stack.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [TagValue] <p> <i>Required</i>. A string containing the value for this tag. You can specify a maximum of 256 characters for a tag value.</p>
-- * Key [TagKey] <p> <i>Required</i>. A string used to identify this tag. You can specify a maximum of 128 characters for a tag key. Tags owned by Amazon Web Services (AWS) have the reserved prefix: <code>aws:</code>.</p>
-- Required key: Key
-- Required key: Value
-- @return Tag structure as a key-value pair table
function M.Tag(args)
	assert(args, "You must provide an argument table when creating Tag")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateChangeSetInput = { ["ChangeSetName"] = true, ["TemplateBody"] = true, ["Parameters"] = true, ["Tags"] = true, ["RoleARN"] = true, ["UsePreviousTemplate"] = true, ["Capabilities"] = true, ["StackName"] = true, ["NotificationARNs"] = true, ["ResourceTypes"] = true, ["ClientToken"] = true, ["Description"] = true, ["TemplateURL"] = true, ["ChangeSetType"] = true, ["RollbackConfiguration"] = true, nil }

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
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["TemplateURL"] then asserts.AssertTemplateURL(struct["TemplateURL"]) end
	if struct["ChangeSetType"] then asserts.AssertChangeSetType(struct["ChangeSetType"]) end
	if struct["RollbackConfiguration"] then asserts.AssertRollbackConfiguration(struct["RollbackConfiguration"]) end
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
-- * Tags [Tags] <p>Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to resources in the stack. You can specify a maximum of 50 tags.</p>
-- * RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that AWS CloudFormation assumes when executing the change set. AWS CloudFormation uses the role's credentials to make calls on your behalf. AWS CloudFormation uses this role for all future operations on the stack. As long as users have permission to operate on the stack, AWS CloudFormation uses this role even if the users don't have permission to pass it. Ensure that the role grants least privilege.</p> <p>If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials.</p>
-- * UsePreviousTemplate [UsePreviousTemplate] <p>Whether to reuse the template that is associated with the stack to create the change set.</p>
-- * Capabilities [Capabilities] <p>A list of values that you must specify before AWS CloudFormation can update certain stacks. Some stack templates might include resources that can affect permissions in your AWS account, for example, by creating new AWS Identity and Access Management (IAM) users. For those stacks, you must explicitly acknowledge their capabilities by specifying this parameter.</p> <p>The only valid values are <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>. The following resources require you to specify this parameter: <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html"> AWS::IAM::AccessKey</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html"> AWS::IAM::Group</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html"> AWS::IAM::InstanceProfile</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html"> AWS::IAM::Policy</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html"> AWS::IAM::Role</a>, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html"> AWS::IAM::User</a>, and <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html"> AWS::IAM::UserToGroupAddition</a>. If your stack template contains these resources, we recommend that you review all permissions associated with them and edit their permissions if necessary.</p> <p>If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify <code>CAPABILITY_NAMED_IAM</code>. If you don't specify this parameter, this action returns an <code>InsufficientCapabilities</code> error.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging IAM Resources in AWS CloudFormation Templates</a>.</p>
-- * StackName [StackNameOrId] <p>The name or the unique ID of the stack for which you are creating a change set. AWS CloudFormation generates the change set by comparing this stack's information with the information that you submit, such as a modified template or different parameter input values.</p>
-- * NotificationARNs [NotificationARNs] <p>The Amazon Resource Names (ARNs) of Amazon Simple Notification Service (Amazon SNS) topics that AWS CloudFormation associates with the stack. To remove all associated notification topics, specify an empty list.</p>
-- * ResourceTypes [ResourceTypes] <p>The template resource types that you have permissions to work with if you execute this change set, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or <code>Custom::MyCustomInstance</code>.</p> <p>If the list of resource types doesn't include a resource type that you're updating, the stack update fails. By default, AWS CloudFormation grants permissions to all resource types. AWS Identity and Access Management (IAM) uses this parameter for condition keys in IAM policies for AWS CloudFormation. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html">Controlling Access with AWS Identity and Access Management</a> in the AWS CloudFormation User Guide.</p>
-- * ClientToken [ClientToken] <p>A unique identifier for this <code>CreateChangeSet</code> request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create another change set with the same name. You might retry <code>CreateChangeSet</code> requests to ensure that AWS CloudFormation successfully received them.</p>
-- * Description [Description] <p>A description to help you identify this change set.</p>
-- * TemplateURL [TemplateURL] <p>The location of the file that contains the revised template. The URL must point to a template (max size: 460,800 bytes) that is located in an S3 bucket. AWS CloudFormation generates the change set by comparing this template with the stack that you specified.</p> <p>Conditional: You must specify only <code>TemplateBody</code> or <code>TemplateURL</code>.</p>
-- * ChangeSetType [ChangeSetType] <p>The type of change set operation. To create a change set for a new stack, specify <code>CREATE</code>. To create a change set for an existing stack, specify <code>UPDATE</code>.</p> <p>If you create a change set for a new stack, AWS Cloudformation creates a stack with a unique stack ID, but no template or resources. The stack will be in the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-describing-stacks.html#d0e11995"> <code>REVIEW_IN_PROGRESS</code> </a> state until you execute the change set.</p> <p>By default, AWS CloudFormation specifies <code>UPDATE</code>. You can't use the <code>UPDATE</code> type to create a change set for a new stack or the <code>CREATE</code> type to create a change set for an existing stack.</p>
-- * RollbackConfiguration [RollbackConfiguration] <p>The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.</p>
-- Required key: StackName
-- Required key: ChangeSetName
-- @return CreateChangeSetInput structure as a key-value pair table
function M.CreateChangeSetInput(args)
	assert(args, "You must provide an argument table when creating CreateChangeSetInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
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
		["Description"] = args["Description"],
		["TemplateURL"] = args["TemplateURL"],
		["ChangeSetType"] = args["ChangeSetType"],
		["RollbackConfiguration"] = args["RollbackConfiguration"],
	}
	asserts.AssertCreateChangeSetInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ChangeSetNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertChangeSetNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeStackEventsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackEvents"] = args["StackEvents"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeStackEventsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ValidateTemplateOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeclaredTransforms"] = args["DeclaredTransforms"],
		["CapabilitiesReason"] = args["CapabilitiesReason"],
		["Description"] = args["Description"],
		["Parameters"] = args["Parameters"],
		["Capabilities"] = args["Capabilities"],
	}
	asserts.AssertValidateTemplateOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ResourceTargetDefinition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attribute"] = args["Attribute"],
		["Name"] = args["Name"],
		["RequiresRecreation"] = args["RequiresRecreation"],
	}
	asserts.AssertResourceTargetDefinition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The quota for the resource has already been reached.</p> <p>For information on stack set limitations, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-limitations.html">Limitations of StackSets</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provide an argument table when creating LimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateStackInstancesInput = { ["StackSetName"] = true, ["OperationPreferences"] = true, ["ParameterOverrides"] = true, ["Regions"] = true, ["Accounts"] = true, ["OperationId"] = true, nil }

function asserts.AssertUpdateStackInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStackInstancesInput to be of type 'table'")
	assert(struct["StackSetName"], "Expected key StackSetName to exist in table")
	assert(struct["Accounts"], "Expected key Accounts to exist in table")
	assert(struct["Regions"], "Expected key Regions to exist in table")
	if struct["StackSetName"] then asserts.AssertStackSetNameOrId(struct["StackSetName"]) end
	if struct["OperationPreferences"] then asserts.AssertStackSetOperationPreferences(struct["OperationPreferences"]) end
	if struct["ParameterOverrides"] then asserts.AssertParameters(struct["ParameterOverrides"]) end
	if struct["Regions"] then asserts.AssertRegionList(struct["Regions"]) end
	if struct["Accounts"] then asserts.AssertAccountList(struct["Accounts"]) end
	if struct["OperationId"] then asserts.AssertClientRequestToken(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateStackInstancesInput[k], "UpdateStackInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStackInstancesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackSetName [StackSetNameOrId] <p>The name or unique ID of the stack set associated with the stack instances.</p>
-- * OperationPreferences [StackSetOperationPreferences] <p>Preferences for how AWS CloudFormation performs this stack set operation.</p>
-- * ParameterOverrides [Parameters] <p> A list of input parameters whose values you want to update for the specified stack instances. </p> <p>Any overridden parameter values will be applied to all stack instances in the specified accounts and regions. When specifying parameters and their values, be aware of how AWS CloudFormation sets parameter values during stack instance update operations:</p> <ul> <li> <p>To override the current value for a parameter, include the parameter and specify its value.</p> </li> <li> <p>To leave a parameter set to its present value, you can do one of the following:</p> <ul> <li> <p>Do not include the parameter in the list.</p> </li> <li> <p>Include the parameter and specify <code>UsePreviousValue</code> as <code>true</code>. (You cannot specify both a value and set <code>UsePreviousValue</code> to <code>true</code>.)</p> </li> </ul> </li> <li> <p>To set all overridden parameter back to the values specified in the stack set, specify a parameter list but do not include any parameters.</p> </li> <li> <p>To leave all parameters set to their present values, do not specify this property at all.</p> </li> </ul> <p>During stack set updates, any parameter values overridden for a stack instance are not updated, but retain their overridden value.</p> <p>You can only override the parameter <i>values</i> that are specified in the stack set; to add or delete a parameter itself, use <code>UpdateStackSet</code> to update the stack set template. If you add a parameter to a template, before you can override the parameter value specified in the stack set you must first use <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html">UpdateStackSet</a> to update all stack instances with the updated template and parameter value specified in the stack set. Once a stack instance has been updated with the new parameter, you can then override the parameter value using <code>UpdateStackInstances</code>.</p>
-- * Regions [RegionList] <p>The names of one or more regions in which you want to update parameter values for stack instances. The overridden parameter values will be applied to all stack instances in the specified accounts and regions.</p>
-- * Accounts [AccountList] <p>The names of one or more AWS accounts for which you want to update parameter values for stack instances. The overridden parameter values will be applied to all stack instances in the specified accounts and regions.</p>
-- * OperationId [ClientRequestToken] <p>The unique identifier for this stack set operation. </p> <p>The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You might retry stack set operation requests to ensure that AWS CloudFormation successfully received them.</p> <p>If you don't specify an operation ID, the SDK generates one automatically. </p>
-- Required key: StackSetName
-- Required key: Accounts
-- Required key: Regions
-- @return UpdateStackInstancesInput structure as a key-value pair table
function M.UpdateStackInstancesInput(args)
	assert(args, "You must provide an argument table when creating UpdateStackInstancesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackSetName"] = args["StackSetName"],
		["OperationPreferences"] = args["OperationPreferences"],
		["ParameterOverrides"] = args["ParameterOverrides"],
		["Regions"] = args["Regions"],
		["Accounts"] = args["Accounts"],
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertUpdateStackInstancesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteStackInstancesInput = { ["StackSetName"] = true, ["OperationPreferences"] = true, ["RetainStacks"] = true, ["Regions"] = true, ["Accounts"] = true, ["OperationId"] = true, nil }

function asserts.AssertDeleteStackInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStackInstancesInput to be of type 'table'")
	assert(struct["StackSetName"], "Expected key StackSetName to exist in table")
	assert(struct["Accounts"], "Expected key Accounts to exist in table")
	assert(struct["Regions"], "Expected key Regions to exist in table")
	assert(struct["RetainStacks"], "Expected key RetainStacks to exist in table")
	if struct["StackSetName"] then asserts.AssertStackSetName(struct["StackSetName"]) end
	if struct["OperationPreferences"] then asserts.AssertStackSetOperationPreferences(struct["OperationPreferences"]) end
	if struct["RetainStacks"] then asserts.AssertRetainStacks(struct["RetainStacks"]) end
	if struct["Regions"] then asserts.AssertRegionList(struct["Regions"]) end
	if struct["Accounts"] then asserts.AssertAccountList(struct["Accounts"]) end
	if struct["OperationId"] then asserts.AssertClientRequestToken(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteStackInstancesInput[k], "DeleteStackInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStackInstancesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackSetName [StackSetName] <p>The name or unique ID of the stack set that you want to delete stack instances for.</p>
-- * OperationPreferences [StackSetOperationPreferences] <p>Preferences for how AWS CloudFormation performs this stack set operation.</p>
-- * RetainStacks [RetainStacks] <p>Removes the stack instances from the specified stack set, but doesn't delete the stacks. You can't reassociate a retained stack or add an existing, saved stack to a new stack set.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options">Stack set operation options</a>.</p>
-- * Regions [RegionList] <p>The regions where you want to delete stack set instances. </p>
-- * Accounts [AccountList] <p>The names of the AWS accounts that you want to delete stack instances for.</p>
-- * OperationId [ClientRequestToken] <p>The unique identifier for this stack set operation. </p> <p>If you don't specify an operation ID, the SDK generates one automatically. </p> <p>The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You can retry stack set operation requests to ensure that AWS CloudFormation successfully received them.</p> <p>Repeating this stack set operation with a new operation ID retries all stack instances whose status is <code>OUTDATED</code>. </p>
-- Required key: StackSetName
-- Required key: Accounts
-- Required key: Regions
-- Required key: RetainStacks
-- @return DeleteStackInstancesInput structure as a key-value pair table
function M.DeleteStackInstancesInput(args)
	assert(args, "You must provide an argument table when creating DeleteStackInstancesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackSetName"] = args["StackSetName"],
		["OperationPreferences"] = args["OperationPreferences"],
		["RetainStacks"] = args["RetainStacks"],
		["Regions"] = args["Regions"],
		["Accounts"] = args["Accounts"],
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertDeleteStackInstancesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatedButModifiedException = { nil }

function asserts.AssertCreatedButModifiedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatedButModifiedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreatedButModifiedException[k], "CreatedButModifiedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatedButModifiedException
-- <p>The specified resource exists, but has been changed.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreatedButModifiedException structure as a key-value pair table
function M.CreatedButModifiedException(args)
	assert(args, "You must provide an argument table when creating CreatedButModifiedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreatedButModifiedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating TemplateParameter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DefaultValue"] = args["DefaultValue"],
		["NoEcho"] = args["NoEcho"],
		["Description"] = args["Description"],
		["ParameterKey"] = args["ParameterKey"],
	}
	asserts.AssertTemplateParameter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ListStacksOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackSummaries"] = args["StackSummaries"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListStacksOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeChangeSetOutput = { ["StackId"] = true, ["Status"] = true, ["ChangeSetName"] = true, ["Description"] = true, ["Parameters"] = true, ["Tags"] = true, ["Changes"] = true, ["CreationTime"] = true, ["StatusReason"] = true, ["StackName"] = true, ["NotificationARNs"] = true, ["Capabilities"] = true, ["ExecutionStatus"] = true, ["NextToken"] = true, ["ChangeSetId"] = true, ["RollbackConfiguration"] = true, nil }

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
	if struct["RollbackConfiguration"] then asserts.AssertRollbackConfiguration(struct["RollbackConfiguration"]) end
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
-- * RollbackConfiguration [RollbackConfiguration] <p>The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.</p>
-- @return DescribeChangeSetOutput structure as a key-value pair table
function M.DescribeChangeSetOutput(args)
	assert(args, "You must provide an argument table when creating DescribeChangeSetOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
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
		["RollbackConfiguration"] = args["RollbackConfiguration"],
	}
	asserts.AssertDescribeChangeSetOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OperationIdAlreadyExistsException = { nil }

function asserts.AssertOperationIdAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationIdAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.OperationIdAlreadyExistsException[k], "OperationIdAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationIdAlreadyExistsException
-- <p>The specified operation ID already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return OperationIdAlreadyExistsException structure as a key-value pair table
function M.OperationIdAlreadyExistsException(args)
	assert(args, "You must provide an argument table when creating OperationIdAlreadyExistsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertOperationIdAlreadyExistsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateStackInput = { ["Tags"] = true, ["StackPolicyDuringUpdateURL"] = true, ["Parameters"] = true, ["TemplateBody"] = true, ["StackPolicyURL"] = true, ["RoleARN"] = true, ["UsePreviousTemplate"] = true, ["StackPolicyBody"] = true, ["Capabilities"] = true, ["StackName"] = true, ["StackPolicyDuringUpdateBody"] = true, ["ResourceTypes"] = true, ["NotificationARNs"] = true, ["ClientRequestToken"] = true, ["TemplateURL"] = true, ["RollbackConfiguration"] = true, nil }

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
	if struct["RollbackConfiguration"] then asserts.AssertRollbackConfiguration(struct["RollbackConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateStackInput[k], "UpdateStackInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStackInput
-- <p>The input for an <a>UpdateStack</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [Tags] <p>Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to supported resources in the stack. You can specify a maximum number of 50 tags.</p> <p>If you don't specify this parameter, AWS CloudFormation doesn't modify the stack's tags. If you specify an empty value, AWS CloudFormation removes all associated tags.</p>
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
-- * ClientRequestToken [ClientRequestToken] <p>A unique identifier for this <code>UpdateStack</code> request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to update a stack with the same name. You might retry <code>UpdateStack</code> requests to ensure that AWS CloudFormation successfully received them.</p> <p>All events triggered by a given stack operation are assigned the same client request token, which you can use to track operations. For example, if you execute a <code>CreateStack</code> operation with the token <code>token1</code>, then all the <code>StackEvents</code> generated by that operation will have <code>ClientRequestToken</code> set as <code>token1</code>.</p> <p>In the console, stack operations display the client request token on the Events tab. Stack operations that are initiated from the console use the token format <i>Console-StackOperation-ID</i>, which helps you easily identify the stack operation . For example, if you create a stack using the console, each stack event would be assigned the same token in the following format: <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>. </p>
-- * TemplateURL [TemplateURL] <p>Location of file containing the template body. The URL must point to a template that is located in an Amazon S3 bucket. For more information, go to <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must specify only one of the following parameters: <code>TemplateBody</code>, <code>TemplateURL</code>, or set the <code>UsePreviousTemplate</code> to <code>true</code>.</p>
-- * RollbackConfiguration [RollbackConfiguration] <p>The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.</p>
-- Required key: StackName
-- @return UpdateStackInput structure as a key-value pair table
function M.UpdateStackInput(args)
	assert(args, "You must provide an argument table when creating UpdateStackInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
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
		["RollbackConfiguration"] = args["RollbackConfiguration"],
	}
	asserts.AssertUpdateStackInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteStackSetOutput = { nil }

function asserts.AssertDeleteStackSetOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStackSetOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteStackSetOutput[k], "DeleteStackSetOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStackSetOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteStackSetOutput structure as a key-value pair table
function M.DeleteStackSetOutput(args)
	assert(args, "You must provide an argument table when creating DeleteStackSetOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteStackSetOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating StackResource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
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
	asserts.AssertStackResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Parameter = { ["ParameterValue"] = true, ["UsePreviousValue"] = true, ["ParameterKey"] = true, ["ResolvedValue"] = true, nil }

function asserts.AssertParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Parameter to be of type 'table'")
	if struct["ParameterValue"] then asserts.AssertParameterValue(struct["ParameterValue"]) end
	if struct["UsePreviousValue"] then asserts.AssertUsePreviousValue(struct["UsePreviousValue"]) end
	if struct["ParameterKey"] then asserts.AssertParameterKey(struct["ParameterKey"]) end
	if struct["ResolvedValue"] then asserts.AssertParameterValue(struct["ResolvedValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.Parameter[k], "Parameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Parameter
-- <p>The Parameter data type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ParameterValue [ParameterValue] <p>The input value associated with the parameter.</p>
-- * UsePreviousValue [UsePreviousValue] <p>During a stack update, use the existing parameter value that the stack is using for a given parameter key. If you specify <code>true</code>, do not specify a parameter value.</p>
-- * ParameterKey [ParameterKey] <p>The key associated with the parameter. If you don't specify a key and value for a particular parameter, AWS CloudFormation uses the default value that is specified in your template.</p>
-- * ResolvedValue [ParameterValue] <p>Read-only. The value that corresponds to a Systems Manager parameter key. This field is returned only for <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/parameters-section-structure.html#aws-ssm-parameter-types"> <code>SSM</code> parameter types</a> in the template.</p>
-- @return Parameter structure as a key-value pair table
function M.Parameter(args)
	assert(args, "You must provide an argument table when creating Parameter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParameterValue"] = args["ParameterValue"],
		["UsePreviousValue"] = args["UsePreviousValue"],
		["ParameterKey"] = args["ParameterKey"],
		["ResolvedValue"] = args["ResolvedValue"],
	}
	asserts.AssertParameter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ListImportsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Imports"] = args["Imports"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListImportsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateStackSetOutput = { ["StackSetId"] = true, nil }

function asserts.AssertCreateStackSetOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStackSetOutput to be of type 'table'")
	if struct["StackSetId"] then asserts.AssertStackSetId(struct["StackSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStackSetOutput[k], "CreateStackSetOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStackSetOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackSetId [StackSetId] <p>The ID of the stack set that you're creating.</p>
-- @return CreateStackSetOutput structure as a key-value pair table
function M.CreateStackSetOutput(args)
	assert(args, "You must provide an argument table when creating CreateStackSetOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackSetId"] = args["StackSetId"],
	}
	asserts.AssertCreateStackSetOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeStackResourceOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackResourceDetail"] = args["StackResourceDetail"],
	}
	asserts.AssertDescribeStackResourceOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating GetTemplateSummaryOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CapabilitiesReason"] = args["CapabilitiesReason"],
		["Description"] = args["Description"],
		["Parameters"] = args["Parameters"],
		["Capabilities"] = args["Capabilities"],
		["ResourceTypes"] = args["ResourceTypes"],
		["Version"] = args["Version"],
		["DeclaredTransforms"] = args["DeclaredTransforms"],
		["Metadata"] = args["Metadata"],
	}
	asserts.AssertGetTemplateSummaryOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ResourceChangeDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CausingEntity"] = args["CausingEntity"],
		["ChangeSource"] = args["ChangeSource"],
		["Evaluation"] = args["Evaluation"],
		["Target"] = args["Target"],
	}
	asserts.AssertResourceChangeDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccountGateResult = { ["Status"] = true, ["StatusReason"] = true, nil }

function asserts.AssertAccountGateResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountGateResult to be of type 'table'")
	if struct["Status"] then asserts.AssertAccountGateStatus(struct["Status"]) end
	if struct["StatusReason"] then asserts.AssertAccountGateStatusReason(struct["StatusReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountGateResult[k], "AccountGateResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountGateResult
-- <p>Structure that contains the results of the account gate function which AWS CloudFormation invokes, if present, before proceeding with a stack set operation in an account and region.</p> <p>For each account and region, AWS CloudFormation lets you specify a Lamdba function that encapsulates any requirements that must be met before CloudFormation can proceed with a stack set operation in that account and region. CloudFormation invokes the function each time a stack set operation is requested for that account and region; if the function returns <code>FAILED</code>, CloudFormation cancels the operation in that account and region, and sets the stack set operation result status for that account and region to <code>FAILED</code>. </p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-account-gating.html">Configuring a target account gate</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [AccountGateStatus] <p>The status of the account gate function.</p> <ul> <li> <p> <code>SUCCEEDED</code>: The account gate function has determined that the account and region passes any requirements for a stack set operation to occur. AWS CloudFormation proceeds with the stack operation in that account and region. </p> </li> <li> <p> <code>FAILED</code>: The account gate function has determined that the account and region does not meet the requirements for a stack set operation to occur. AWS CloudFormation cancels the stack set operation in that account and region, and sets the stack set operation result status for that account and region to <code>FAILED</code>. </p> </li> <li> <p> <code>SKIPPED</code>: AWS CloudFormation has skipped calling the account gate function for this account and region, for one of the following reasons:</p> <ul> <li> <p>An account gate function has not been specified for the account and region. AWS CloudFormation proceeds with the stack set operation in this account and region.</p> </li> <li> <p>The <code>AWSCloudFormationStackSetExecutionRole</code> of the stack set adminstration account lacks permissions to invoke the function. AWS CloudFormation proceeds with the stack set operation in this account and region.</p> </li> <li> <p>Either no action is necessary, or no action is possible, on the stack. AWS CloudFormation skips the stack set operation in this account and region.</p> </li> </ul> </li> </ul>
-- * StatusReason [AccountGateStatusReason] <p>The reason for the account gate status assigned to this account and region for the stack set operation.</p>
-- @return AccountGateResult structure as a key-value pair table
function M.AccountGateResult(args)
	assert(args, "You must provide an argument table when creating AccountGateResult")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["StatusReason"] = args["StatusReason"],
	}
	asserts.AssertAccountGateResult(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating GetTemplateInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["TemplateStage"] = args["TemplateStage"],
		["ChangeSetName"] = args["ChangeSetName"],
	}
	asserts.AssertGetTemplateInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StackSetSummary = { ["Status"] = true, ["Description"] = true, ["StackSetName"] = true, ["StackSetId"] = true, nil }

function asserts.AssertStackSetSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackSetSummary to be of type 'table'")
	if struct["Status"] then asserts.AssertStackSetStatus(struct["Status"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["StackSetName"] then asserts.AssertStackSetName(struct["StackSetName"]) end
	if struct["StackSetId"] then asserts.AssertStackSetId(struct["StackSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StackSetSummary[k], "StackSetSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackSetSummary
-- <p>The structures that contain summary information about the specified stack set.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [StackSetStatus] <p>The status of the stack set.</p>
-- * Description [Description] <p>A description of the stack set that you specify when the stack set is created or updated.</p>
-- * StackSetName [StackSetName] <p>The name of the stack set.</p>
-- * StackSetId [StackSetId] <p>The ID of the stack set.</p>
-- @return StackSetSummary structure as a key-value pair table
function M.StackSetSummary(args)
	assert(args, "You must provide an argument table when creating StackSetSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Description"] = args["Description"],
		["StackSetName"] = args["StackSetName"],
		["StackSetId"] = args["StackSetId"],
	}
	asserts.AssertStackSetSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteStackSetInput = { ["StackSetName"] = true, nil }

function asserts.AssertDeleteStackSetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStackSetInput to be of type 'table'")
	assert(struct["StackSetName"], "Expected key StackSetName to exist in table")
	if struct["StackSetName"] then asserts.AssertStackSetName(struct["StackSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteStackSetInput[k], "DeleteStackSetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStackSetInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackSetName [StackSetName] <p>The name or unique ID of the stack set that you're deleting. You can obtain this value by running <a>ListStackSets</a>.</p>
-- Required key: StackSetName
-- @return DeleteStackSetInput structure as a key-value pair table
function M.DeleteStackSetInput(args)
	assert(args, "You must provide an argument table when creating DeleteStackSetInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackSetName"] = args["StackSetName"],
	}
	asserts.AssertDeleteStackSetInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ListImportsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ExportName"] = args["ExportName"],
	}
	asserts.AssertListImportsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ListStackResourcesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["StackResourceSummaries"] = args["StackResourceSummaries"],
	}
	asserts.AssertListStackResourcesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeStackResourcesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["PhysicalResourceId"] = args["PhysicalResourceId"],
		["LogicalResourceId"] = args["LogicalResourceId"],
	}
	asserts.AssertDescribeStackResourcesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeStackInstanceOutput = { ["StackInstance"] = true, nil }

function asserts.AssertDescribeStackInstanceOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackInstanceOutput to be of type 'table'")
	if struct["StackInstance"] then asserts.AssertStackInstance(struct["StackInstance"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStackInstanceOutput[k], "DescribeStackInstanceOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackInstanceOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackInstance [StackInstance] <p>The stack instance that matches the specified request parameters.</p>
-- @return DescribeStackInstanceOutput structure as a key-value pair table
function M.DescribeStackInstanceOutput(args)
	assert(args, "You must provide an argument table when creating DescribeStackInstanceOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackInstance"] = args["StackInstance"],
	}
	asserts.AssertDescribeStackInstanceOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DeleteChangeSetInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["ChangeSetName"] = args["ChangeSetName"],
	}
	asserts.AssertDeleteChangeSetInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ExecuteChangeSetInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["ChangeSetName"] = args["ChangeSetName"],
		["ClientRequestToken"] = args["ClientRequestToken"],
	}
	asserts.AssertExecuteChangeSetInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ParameterDeclaration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ParameterType"] = args["ParameterType"],
		["ParameterConstraints"] = args["ParameterConstraints"],
		["Description"] = args["Description"],
		["DefaultValue"] = args["DefaultValue"],
		["NoEcho"] = args["NoEcho"],
		["ParameterKey"] = args["ParameterKey"],
	}
	asserts.AssertParameterDeclaration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StackInstance = { ["StackId"] = true, ["Status"] = true, ["Account"] = true, ["Region"] = true, ["ParameterOverrides"] = true, ["StatusReason"] = true, ["StackSetId"] = true, nil }

function asserts.AssertStackInstance(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackInstance to be of type 'table'")
	if struct["StackId"] then asserts.AssertStackId(struct["StackId"]) end
	if struct["Status"] then asserts.AssertStackInstanceStatus(struct["Status"]) end
	if struct["Account"] then asserts.AssertAccount(struct["Account"]) end
	if struct["Region"] then asserts.AssertRegion(struct["Region"]) end
	if struct["ParameterOverrides"] then asserts.AssertParameters(struct["ParameterOverrides"]) end
	if struct["StatusReason"] then asserts.AssertReason(struct["StatusReason"]) end
	if struct["StackSetId"] then asserts.AssertStackSetId(struct["StackSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StackInstance[k], "StackInstance contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackInstance
-- <p>An AWS CloudFormation stack, in a specific account and region, that's part of a stack set operation. A stack instance is a reference to an attempted or actual stack in a given account within a given region. A stack instance can exist without a stack—for example, if the stack couldn't be created for some reason. A stack instance is associated with only one stack set. Each stack instance contains the ID of its associated stack set, as well as the ID of the actual stack and the stack status.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [StackId] <p>The ID of the stack instance.</p>
-- * Status [StackInstanceStatus] <p>The status of the stack instance, in terms of its synchronization with its associated stack set.</p> <ul> <li> <p> <code>INOPERABLE</code>: A <code>DeleteStackInstances</code> operation has failed and left the stack in an unstable state. Stacks in this state are excluded from further <code>UpdateStackSet</code> operations. You might need to perform a <code>DeleteStackInstances</code> operation, with <code>RetainStacks</code> set to <code>true</code>, to delete the stack instance, and then delete the stack manually.</p> </li> <li> <p> <code>OUTDATED</code>: The stack isn't currently up to date with the stack set because:</p> <ul> <li> <p>The associated stack failed during a <code>CreateStackSet</code> or <code>UpdateStackSet</code> operation. </p> </li> <li> <p>The stack was part of a <code>CreateStackSet</code> or <code>UpdateStackSet</code> operation that failed or was stopped before the stack was created or updated. </p> </li> </ul> </li> <li> <p> <code>CURRENT</code>: The stack is currently up to date with the stack set.</p> </li> </ul>
-- * Account [Account] <p>The name of the AWS account that the stack instance is associated with.</p>
-- * Region [Region] <p>The name of the AWS region that the stack instance is associated with.</p>
-- * ParameterOverrides [Parameters] <p>A list of parameters from the stack set template whose values have been overridden in this stack instance.</p>
-- * StatusReason [Reason] <p>The explanation for the specific status code that is assigned to this stack instance.</p>
-- * StackSetId [StackSetId] <p>The name or unique ID of the stack set that the stack instance is associated with.</p>
-- @return StackInstance structure as a key-value pair table
function M.StackInstance(args)
	assert(args, "You must provide an argument table when creating StackInstance")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["Status"] = args["Status"],
		["Account"] = args["Account"],
		["Region"] = args["Region"],
		["ParameterOverrides"] = args["ParameterOverrides"],
		["StatusReason"] = args["StatusReason"],
		["StackSetId"] = args["StackSetId"],
	}
	asserts.AssertStackInstance(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OperationInProgressException = { nil }

function asserts.AssertOperationInProgressException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationInProgressException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.OperationInProgressException[k], "OperationInProgressException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationInProgressException
-- <p>Another operation is currently in progress for this stack set. Only one operation can be performed for a stack set at a given time.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return OperationInProgressException structure as a key-value pair table
function M.OperationInProgressException(args)
	assert(args, "You must provide an argument table when creating OperationInProgressException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertOperationInProgressException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RollbackConfiguration = { ["RollbackTriggers"] = true, ["MonitoringTimeInMinutes"] = true, nil }

function asserts.AssertRollbackConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RollbackConfiguration to be of type 'table'")
	if struct["RollbackTriggers"] then asserts.AssertRollbackTriggers(struct["RollbackTriggers"]) end
	if struct["MonitoringTimeInMinutes"] then asserts.AssertMonitoringTimeInMinutes(struct["MonitoringTimeInMinutes"]) end
	for k,_ in pairs(struct) do
		assert(keys.RollbackConfiguration[k], "RollbackConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RollbackConfiguration
-- <p>Structure containing the rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.</p> <p>Rollback triggers enable you to have AWS CloudFormation monitor the state of your application during stack creation and updating, and to roll back that operation if the application breaches the threshold of any of the alarms you've specified. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-rollback-triggers.html">Monitor and Roll Back Stack Operations</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RollbackTriggers [RollbackTriggers] <p>The triggers to monitor during stack creation or update actions. </p> <p>By default, AWS CloudFormation saves the rollback triggers specified for a stack and applies them to any subsequent update operations for the stack, unless you specify otherwise. If you do specify rollback triggers for this parameter, those triggers replace any list of triggers previously specified for the stack. This means:</p> <ul> <li> <p>To use the rollback triggers previously specified for this stack, if any, don't specify this parameter.</p> </li> <li> <p>To specify new or updated rollback triggers, you must specify <i>all</i> the triggers that you want used for this stack, even triggers you've specifed before (for example, when creating the stack or during a previous stack update). Any triggers that you don't include in the updated list of triggers are no longer applied to the stack.</p> </li> <li> <p>To remove all currently specified triggers, specify an empty list for this parameter.</p> </li> </ul> <p>If a specified trigger is missing, the entire stack operation fails and is rolled back. </p>
-- * MonitoringTimeInMinutes [MonitoringTimeInMinutes] <p>The amount of time, in minutes, during which CloudFormation should monitor all the rollback triggers after the stack creation or update operation deploys all necessary resources.</p> <p>The default is 0 minutes.</p> <p>If you specify a monitoring period but do not specify any rollback triggers, CloudFormation still waits the specified period of time before cleaning up old resources after update operations. You can use this monitoring period to perform any manual stack validation desired, and manually cancel the stack creation or update (using <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CancelUpdateStack.html">CancelUpdateStack</a>, for example) as necessary.</p> <p>If you specify 0 for this parameter, CloudFormation still monitors the specified rollback triggers during stack creation and update operations. Then, for update operations, it begins disposing of old resources immediately once the operation completes.</p>
-- @return RollbackConfiguration structure as a key-value pair table
function M.RollbackConfiguration(args)
	assert(args, "You must provide an argument table when creating RollbackConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RollbackTriggers"] = args["RollbackTriggers"],
		["MonitoringTimeInMinutes"] = args["MonitoringTimeInMinutes"],
	}
	asserts.AssertRollbackConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeStacksInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeStacksInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StackSetOperationSummary = { ["Action"] = true, ["Status"] = true, ["CreationTimestamp"] = true, ["EndTimestamp"] = true, ["OperationId"] = true, nil }

function asserts.AssertStackSetOperationSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackSetOperationSummary to be of type 'table'")
	if struct["Action"] then asserts.AssertStackSetOperationAction(struct["Action"]) end
	if struct["Status"] then asserts.AssertStackSetOperationStatus(struct["Status"]) end
	if struct["CreationTimestamp"] then asserts.AssertTimestamp(struct["CreationTimestamp"]) end
	if struct["EndTimestamp"] then asserts.AssertTimestamp(struct["EndTimestamp"]) end
	if struct["OperationId"] then asserts.AssertClientRequestToken(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StackSetOperationSummary[k], "StackSetOperationSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackSetOperationSummary
-- <p>The structures that contain summary information about the specified operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Action [StackSetOperationAction] <p>The type of operation: <code>CREATE</code>, <code>UPDATE</code>, or <code>DELETE</code>. Create and delete operations affect only the specified stack instances that are associated with the specified stack set. Update operations affect both the stack set itself as well as <i>all</i> associated stack set instances.</p>
-- * Status [StackSetOperationStatus] <p>The overall status of the operation.</p> <ul> <li> <p> <code>FAILED</code>: The operation exceeded the specified failure tolerance. The failure tolerance value that you've set for an operation is applied for each region during stack create and update operations. If the number of failed stacks within a region exceeds the failure tolerance, the status of the operation in the region is set to <code>FAILED</code>. This in turn sets the status of the operation as a whole to <code>FAILED</code>, and AWS CloudFormation cancels the operation in any remaining regions.</p> </li> <li> <p> <code>RUNNING</code>: The operation is currently being performed.</p> </li> <li> <p> <code>STOPPED</code>: The user has cancelled the operation.</p> </li> <li> <p> <code>STOPPING</code>: The operation is in the process of stopping, at user request. </p> </li> <li> <p> <code>SUCCEEDED</code>: The operation completed creating or updating all the specified stacks without exceeding the failure tolerance for the operation.</p> </li> </ul>
-- * CreationTimestamp [Timestamp] <p>The time at which the operation was initiated. Note that the creation times for the stack set operation might differ from the creation time of the individual stacks themselves. This is because AWS CloudFormation needs to perform preparatory work for the operation, such as dispatching the work to the requested regions, before actually creating the first stacks.</p>
-- * EndTimestamp [Timestamp] <p>The time at which the stack set operation ended, across all accounts and regions specified. Note that this doesn't necessarily mean that the stack set operation was successful, or even attempted, in each account or region.</p>
-- * OperationId [ClientRequestToken] <p>The unique ID of the stack set operation.</p>
-- @return StackSetOperationSummary structure as a key-value pair table
function M.StackSetOperationSummary(args)
	assert(args, "You must provide an argument table when creating StackSetOperationSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Action"] = args["Action"],
		["Status"] = args["Status"],
		["CreationTimestamp"] = args["CreationTimestamp"],
		["EndTimestamp"] = args["EndTimestamp"],
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertStackSetOperationSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StackSet = { ["Status"] = true, ["Description"] = true, ["Parameters"] = true, ["Tags"] = true, ["ExecutionRoleName"] = true, ["Capabilities"] = true, ["AdministrationRoleARN"] = true, ["StackSetARN"] = true, ["TemplateBody"] = true, ["StackSetId"] = true, ["StackSetName"] = true, nil }

function asserts.AssertStackSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackSet to be of type 'table'")
	if struct["Status"] then asserts.AssertStackSetStatus(struct["Status"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["Parameters"] then asserts.AssertParameters(struct["Parameters"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["ExecutionRoleName"] then asserts.AssertExecutionRoleName(struct["ExecutionRoleName"]) end
	if struct["Capabilities"] then asserts.AssertCapabilities(struct["Capabilities"]) end
	if struct["AdministrationRoleARN"] then asserts.AssertRoleARN(struct["AdministrationRoleARN"]) end
	if struct["StackSetARN"] then asserts.AssertStackSetARN(struct["StackSetARN"]) end
	if struct["TemplateBody"] then asserts.AssertTemplateBody(struct["TemplateBody"]) end
	if struct["StackSetId"] then asserts.AssertStackSetId(struct["StackSetId"]) end
	if struct["StackSetName"] then asserts.AssertStackSetName(struct["StackSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StackSet[k], "StackSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackSet
-- <p>A structure that contains information about a stack set. A stack set enables you to provision stacks into AWS accounts and across regions by using a single CloudFormation template. In the stack set, you specify the template to use, as well as any parameters and capabilities that the template requires. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [StackSetStatus] <p>The status of the stack set.</p>
-- * Description [Description] <p>A description of the stack set that you specify when the stack set is created or updated.</p>
-- * Parameters [Parameters] <p>A list of input parameters for a stack set.</p>
-- * Tags [Tags] <p>A list of tags that specify information about the stack set. A maximum number of 50 tags can be specified.</p>
-- * ExecutionRoleName [ExecutionRoleName] <p>The name of the IAM execution role used to create or update the stack set. </p> <p>Use customized execution roles to control which stack resources users and groups can include in their stack sets. </p>
-- * Capabilities [Capabilities] <p>The capabilities that are allowed in the stack set. Some stack set templates might include resources that can affect permissions in your AWS account—for example, by creating new AWS Identity and Access Management (IAM) users. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging IAM Resources in AWS CloudFormation Templates.</a> </p>
-- * AdministrationRoleARN [RoleARN] <p>The Amazon Resource Number (ARN) of the IAM role used to create or update the stack set.</p> <p>Use customized administrator roles to control which users or groups can manage specific stack sets within the same administrator account. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html">Prerequisites: Granting Permissions for Stack Set Operations</a> in the <i>AWS CloudFormation User Guide</i>.</p>
-- * StackSetARN [StackSetARN] <p>The Amazon Resource Number (ARN) of the stack set.</p>
-- * TemplateBody [TemplateBody] <p>The structure that contains the body of the template that was used to create or update the stack set.</p>
-- * StackSetId [StackSetId] <p>The ID of the stack set.</p>
-- * StackSetName [StackSetName] <p>The name that's associated with the stack set.</p>
-- @return StackSet structure as a key-value pair table
function M.StackSet(args)
	assert(args, "You must provide an argument table when creating StackSet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Description"] = args["Description"],
		["Parameters"] = args["Parameters"],
		["Tags"] = args["Tags"],
		["ExecutionRoleName"] = args["ExecutionRoleName"],
		["Capabilities"] = args["Capabilities"],
		["AdministrationRoleARN"] = args["AdministrationRoleARN"],
		["StackSetARN"] = args["StackSetARN"],
		["TemplateBody"] = args["TemplateBody"],
		["StackSetId"] = args["StackSetId"],
		["StackSetName"] = args["StackSetName"],
	}
	asserts.AssertStackSet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ListExportsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListExportsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ExecuteChangeSetOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertExecuteChangeSetOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The resource with the name requested already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AlreadyExistsException structure as a key-value pair table
function M.AlreadyExistsException(args)
	assert(args, "You must provide an argument table when creating AlreadyExistsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAlreadyExistsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OperationNotFoundException = { nil }

function asserts.AssertOperationNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.OperationNotFoundException[k], "OperationNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationNotFoundException
-- <p>The specified ID refers to an operation that doesn't exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return OperationNotFoundException structure as a key-value pair table
function M.OperationNotFoundException(args)
	assert(args, "You must provide an argument table when creating OperationNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertOperationNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StackSetOperationPreferences = { ["FailureToleranceCount"] = true, ["MaxConcurrentCount"] = true, ["FailureTolerancePercentage"] = true, ["MaxConcurrentPercentage"] = true, ["RegionOrder"] = true, nil }

function asserts.AssertStackSetOperationPreferences(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackSetOperationPreferences to be of type 'table'")
	if struct["FailureToleranceCount"] then asserts.AssertFailureToleranceCount(struct["FailureToleranceCount"]) end
	if struct["MaxConcurrentCount"] then asserts.AssertMaxConcurrentCount(struct["MaxConcurrentCount"]) end
	if struct["FailureTolerancePercentage"] then asserts.AssertFailureTolerancePercentage(struct["FailureTolerancePercentage"]) end
	if struct["MaxConcurrentPercentage"] then asserts.AssertMaxConcurrentPercentage(struct["MaxConcurrentPercentage"]) end
	if struct["RegionOrder"] then asserts.AssertRegionList(struct["RegionOrder"]) end
	for k,_ in pairs(struct) do
		assert(keys.StackSetOperationPreferences[k], "StackSetOperationPreferences contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackSetOperationPreferences
-- <p>The user-specified preferences for how AWS CloudFormation performs a stack set operation. </p> <p>For more information on maximum concurrent accounts and failure tolerance, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options">Stack set operation options</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailureToleranceCount [FailureToleranceCount] <p>The number of accounts, per region, for which this operation can fail before AWS CloudFormation stops the operation in that region. If the operation is stopped in a region, AWS CloudFormation doesn't attempt the operation in any subsequent regions.</p> <p>Conditional: You must specify either <code>FailureToleranceCount</code> or <code>FailureTolerancePercentage</code> (but not both).</p>
-- * MaxConcurrentCount [MaxConcurrentCount] <p>The maximum number of accounts in which to perform this operation at one time. This is dependent on the value of <code>FailureToleranceCount</code>—<code>MaxConcurrentCount</code> is at most one more than the <code>FailureToleranceCount</code> .</p> <p>Note that this setting lets you specify the <i>maximum</i> for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p> <p>Conditional: You must specify either <code>MaxConcurrentCount</code> or <code>MaxConcurrentPercentage</code>, but not both.</p>
-- * FailureTolerancePercentage [FailureTolerancePercentage] <p>The percentage of accounts, per region, for which this stack operation can fail before AWS CloudFormation stops the operation in that region. If the operation is stopped in a region, AWS CloudFormation doesn't attempt the operation in any subsequent regions.</p> <p>When calculating the number of accounts based on the specified percentage, AWS CloudFormation rounds <i>down</i> to the next whole number.</p> <p>Conditional: You must specify either <code>FailureToleranceCount</code> or <code>FailureTolerancePercentage</code>, but not both.</p>
-- * MaxConcurrentPercentage [MaxConcurrentPercentage] <p>The maximum percentage of accounts in which to perform this operation at one time.</p> <p>When calculating the number of accounts based on the specified percentage, AWS CloudFormation rounds down to the next whole number. This is true except in cases where rounding down would result is zero. In this case, CloudFormation sets the number as one instead.</p> <p>Note that this setting lets you specify the <i>maximum</i> for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling.</p> <p>Conditional: You must specify either <code>MaxConcurrentCount</code> or <code>MaxConcurrentPercentage</code>, but not both.</p>
-- * RegionOrder [RegionList] <p>The order of the regions in where you want to perform the stack operation.</p>
-- @return StackSetOperationPreferences structure as a key-value pair table
function M.StackSetOperationPreferences(args)
	assert(args, "You must provide an argument table when creating StackSetOperationPreferences")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FailureToleranceCount"] = args["FailureToleranceCount"],
		["MaxConcurrentCount"] = args["MaxConcurrentCount"],
		["FailureTolerancePercentage"] = args["FailureTolerancePercentage"],
		["MaxConcurrentPercentage"] = args["MaxConcurrentPercentage"],
		["RegionOrder"] = args["RegionOrder"],
	}
	asserts.AssertStackSetOperationPreferences(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * ClientRequestToken [ClientRequestToken] <p>The token passed to the operation that generated this event.</p> <p>All events triggered by a given stack operation are assigned the same client request token, which you can use to track operations. For example, if you execute a <code>CreateStack</code> operation with the token <code>token1</code>, then all the <code>StackEvents</code> generated by that operation will have <code>ClientRequestToken</code> set as <code>token1</code>.</p> <p>In the console, stack operations display the client request token on the Events tab. Stack operations that are initiated from the console use the token format <i>Console-StackOperation-ID</i>, which helps you easily identify the stack operation . For example, if you create a stack using the console, each stack event would be assigned the same token in the following format: <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>. </p>
-- * LogicalResourceId [LogicalResourceId] <p>The logical name of the resource specified in the template.</p>
-- Required key: StackId
-- Required key: EventId
-- Required key: StackName
-- Required key: Timestamp
-- @return StackEvent structure as a key-value pair table
function M.StackEvent(args)
	assert(args, "You must provide an argument table when creating StackEvent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
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
	asserts.AssertStackEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ChangeSetSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
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
	asserts.AssertChangeSetSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ValidateTemplateInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TemplateURL"] = args["TemplateURL"],
		["TemplateBody"] = args["TemplateBody"],
	}
	asserts.AssertValidateTemplateInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ResourceChange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceType"] = args["ResourceType"],
		["PhysicalResourceId"] = args["PhysicalResourceId"],
		["Details"] = args["Details"],
		["Action"] = args["Action"],
		["Scope"] = args["Scope"],
		["LogicalResourceId"] = args["LogicalResourceId"],
		["Replacement"] = args["Replacement"],
	}
	asserts.AssertResourceChange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating GetStackPolicyInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
	}
	asserts.AssertGetStackPolicyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating GetStackPolicyOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackPolicyBody"] = args["StackPolicyBody"],
	}
	asserts.AssertGetStackPolicyOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeAccountLimitsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["AccountLimits"] = args["AccountLimits"],
	}
	asserts.AssertDescribeAccountLimitsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateStackInput = { ["Tags"] = true, ["EnableTerminationProtection"] = true, ["TemplateBody"] = true, ["Parameters"] = true, ["StackPolicyURL"] = true, ["RoleARN"] = true, ["TimeoutInMinutes"] = true, ["StackPolicyBody"] = true, ["Capabilities"] = true, ["OnFailure"] = true, ["StackName"] = true, ["NotificationARNs"] = true, ["ResourceTypes"] = true, ["ClientRequestToken"] = true, ["DisableRollback"] = true, ["TemplateURL"] = true, ["RollbackConfiguration"] = true, nil }

function asserts.AssertCreateStackInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStackInput to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["EnableTerminationProtection"] then asserts.AssertEnableTerminationProtection(struct["EnableTerminationProtection"]) end
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
	if struct["RollbackConfiguration"] then asserts.AssertRollbackConfiguration(struct["RollbackConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStackInput[k], "CreateStackInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStackInput
-- <p>The input for <a>CreateStack</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Tags [Tags] <p>Key-value pairs to associate with this stack. AWS CloudFormation also propagates these tags to the resources created in the stack. A maximum number of 50 tags can be specified.</p>
-- * EnableTerminationProtection [EnableTerminationProtection] <p>Whether to enable termination protection on the specified stack. If a user attempts to delete a stack with termination protection enabled, the operation fails and the stack remains unchanged. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html">Protecting a Stack From Being Deleted</a> in the <i>AWS CloudFormation User Guide</i>. Termination protection is disabled on stacks by default. </p> <p> For <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">nested stacks</a>, termination protection is set on the root stack and cannot be changed directly on the nested stack.</p>
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
-- * ClientRequestToken [ClientRequestToken] <p>A unique identifier for this <code>CreateStack</code> request. Specify this token if you plan to retry requests so that AWS CloudFormation knows that you're not attempting to create a stack with the same name. You might retry <code>CreateStack</code> requests to ensure that AWS CloudFormation successfully received them.</p> <p>All events triggered by a given stack operation are assigned the same client request token, which you can use to track operations. For example, if you execute a <code>CreateStack</code> operation with the token <code>token1</code>, then all the <code>StackEvents</code> generated by that operation will have <code>ClientRequestToken</code> set as <code>token1</code>.</p> <p>In the console, stack operations display the client request token on the Events tab. Stack operations that are initiated from the console use the token format <i>Console-StackOperation-ID</i>, which helps you easily identify the stack operation . For example, if you create a stack using the console, each stack event would be assigned the same token in the following format: <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>. </p>
-- * DisableRollback [DisableRollback] <p>Set to <code>true</code> to disable rollback of the stack if stack creation failed. You can specify either <code>DisableRollback</code> or <code>OnFailure</code>, but not both.</p> <p>Default: <code>false</code> </p>
-- * TemplateURL [TemplateURL] <p>Location of file containing the template body. The URL must point to a template (max size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information, go to the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must specify either the <code>TemplateBody</code> or the <code>TemplateURL</code> parameter, but not both.</p>
-- * RollbackConfiguration [RollbackConfiguration] <p>The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.</p>
-- Required key: StackName
-- @return CreateStackInput structure as a key-value pair table
function M.CreateStackInput(args)
	assert(args, "You must provide an argument table when creating CreateStackInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Tags"] = args["Tags"],
		["EnableTerminationProtection"] = args["EnableTerminationProtection"],
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
		["RollbackConfiguration"] = args["RollbackConfiguration"],
	}
	asserts.AssertCreateStackInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStackSetsOutput = { ["NextToken"] = true, ["Summaries"] = true, nil }

function asserts.AssertListStackSetsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStackSetsOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Summaries"] then asserts.AssertStackSetSummaries(struct["Summaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStackSetsOutput[k], "ListStackSetsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStackSetsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If the request doesn't return all of the remaining results, <code>NextToken</code> is set to a token. To retrieve the next set of results, call <code>ListStackInstances</code> again and assign that token to the request object's <code>NextToken</code> parameter. If the request returns all results, <code>NextToken</code> is set to <code>null</code>.</p>
-- * Summaries [StackSetSummaries] <p>A list of <code>StackSetSummary</code> structures that contain information about the user's stack sets.</p>
-- @return ListStackSetsOutput structure as a key-value pair table
function M.ListStackSetsOutput(args)
	assert(args, "You must provide an argument table when creating ListStackSetsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Summaries"] = args["Summaries"],
	}
	asserts.AssertListStackSetsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidOperationException = { nil }

function asserts.AssertInvalidOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOperationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidOperationException[k], "InvalidOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOperationException
-- <p>The specified operation isn't valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidOperationException structure as a key-value pair table
function M.InvalidOperationException(args)
	assert(args, "You must provide an argument table when creating InvalidOperationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidOperationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeStackSetOperationInput = { ["StackSetName"] = true, ["OperationId"] = true, nil }

function asserts.AssertDescribeStackSetOperationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackSetOperationInput to be of type 'table'")
	assert(struct["StackSetName"], "Expected key StackSetName to exist in table")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["StackSetName"] then asserts.AssertStackSetName(struct["StackSetName"]) end
	if struct["OperationId"] then asserts.AssertClientRequestToken(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStackSetOperationInput[k], "DescribeStackSetOperationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackSetOperationInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackSetName [StackSetName] <p>The name or the unique stack ID of the stack set for the stack operation.</p>
-- * OperationId [ClientRequestToken] <p>The unique ID of the stack set operation. </p>
-- Required key: StackSetName
-- Required key: OperationId
-- @return DescribeStackSetOperationInput structure as a key-value pair table
function M.DescribeStackSetOperationInput(args)
	assert(args, "You must provide an argument table when creating DescribeStackSetOperationInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackSetName"] = args["StackSetName"],
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertDescribeStackSetOperationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating UpdateStackOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
	}
	asserts.AssertUpdateStackOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The template contains resources with capabilities that weren't specified in the Capabilities parameter.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InsufficientCapabilitiesException structure as a key-value pair table
function M.InsufficientCapabilitiesException(args)
	assert(args, "You must provide an argument table when creating InsufficientCapabilitiesException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInsufficientCapabilitiesException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateStackSetInput = { ["StackSetName"] = true, ["Parameters"] = true, ["Tags"] = true, ["UsePreviousTemplate"] = true, ["Capabilities"] = true, ["AdministrationRoleARN"] = true, ["Regions"] = true, ["OperationPreferences"] = true, ["Accounts"] = true, ["ExecutionRoleName"] = true, ["TemplateBody"] = true, ["TemplateURL"] = true, ["OperationId"] = true, ["Description"] = true, nil }

function asserts.AssertUpdateStackSetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStackSetInput to be of type 'table'")
	assert(struct["StackSetName"], "Expected key StackSetName to exist in table")
	if struct["StackSetName"] then asserts.AssertStackSetName(struct["StackSetName"]) end
	if struct["Parameters"] then asserts.AssertParameters(struct["Parameters"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["UsePreviousTemplate"] then asserts.AssertUsePreviousTemplate(struct["UsePreviousTemplate"]) end
	if struct["Capabilities"] then asserts.AssertCapabilities(struct["Capabilities"]) end
	if struct["AdministrationRoleARN"] then asserts.AssertRoleARN(struct["AdministrationRoleARN"]) end
	if struct["Regions"] then asserts.AssertRegionList(struct["Regions"]) end
	if struct["OperationPreferences"] then asserts.AssertStackSetOperationPreferences(struct["OperationPreferences"]) end
	if struct["Accounts"] then asserts.AssertAccountList(struct["Accounts"]) end
	if struct["ExecutionRoleName"] then asserts.AssertExecutionRoleName(struct["ExecutionRoleName"]) end
	if struct["TemplateBody"] then asserts.AssertTemplateBody(struct["TemplateBody"]) end
	if struct["TemplateURL"] then asserts.AssertTemplateURL(struct["TemplateURL"]) end
	if struct["OperationId"] then asserts.AssertClientRequestToken(struct["OperationId"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateStackSetInput[k], "UpdateStackSetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStackSetInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackSetName [StackSetName] <p>The name or unique ID of the stack set that you want to update.</p>
-- * Parameters [Parameters] <p>A list of input parameters for the stack set template. </p>
-- * Tags [Tags] <p>The key-value pairs to associate with this stack set and the stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the stacks. You can specify a maximum number of 50 tags.</p> <p>If you specify tags for this parameter, those tags replace any list of tags that are currently associated with this stack set. This means:</p> <ul> <li> <p>If you don't specify this parameter, AWS CloudFormation doesn't modify the stack's tags. </p> </li> <li> <p>If you specify <i>any</i> tags using this parameter, you must specify <i>all</i> the tags that you want associated with this stack set, even tags you've specifed before (for example, when creating the stack set or during a previous update of the stack set.). Any tags that you don't include in the updated list of tags are removed from the stack set, and therefore from the stacks and resources as well. </p> </li> <li> <p>If you specify an empty value, AWS CloudFormation removes all currently associated tags.</p> </li> </ul> <p>If you specify new tags as part of an <code>UpdateStackSet</code> action, AWS CloudFormation checks to see if you have the required IAM permission to tag resources. If you omit tags that are currently associated with the stack set from the list of tags you specify, AWS CloudFormation assumes that you want to remove those tags from the stack set, and checks to see if you have permission to untag resources. If you don't have the necessary permission(s), the entire <code>UpdateStackSet</code> action fails with an <code>access denied</code> error, and the stack set is not updated.</p>
-- * UsePreviousTemplate [UsePreviousTemplate] <p>Use the existing template that's associated with the stack set that you're updating.</p> <p>Conditional: You must specify only one of the following parameters: <code>TemplateBody</code> or <code>TemplateURL</code>—or set <code>UsePreviousTemplate</code> to true. </p>
-- * Capabilities [Capabilities] <p>A list of values that you must specify before AWS CloudFormation can create certain stack sets. Some stack set templates might include resources that can affect permissions in your AWS account—for example, by creating new AWS Identity and Access Management (IAM) users. For those stack sets, you must explicitly acknowledge their capabilities by specifying this parameter.</p> <p>The only valid values are CAPABILITY_IAM and CAPABILITY_NAMED_IAM. The following resources require you to specify this parameter: </p> <ul> <li> <p>AWS::IAM::AccessKey</p> </li> <li> <p>AWS::IAM::Group</p> </li> <li> <p>AWS::IAM::InstanceProfile</p> </li> <li> <p>AWS::IAM::Policy</p> </li> <li> <p>AWS::IAM::Role</p> </li> <li> <p>AWS::IAM::User</p> </li> <li> <p>AWS::IAM::UserToGroupAddition</p> </li> </ul> <p>If your stack template contains these resources, we recommend that you review all permissions that are associated with them and edit their permissions if necessary.</p> <p>If you have IAM resources, you can specify either capability. If you have IAM resources with custom names, you must specify CAPABILITY_NAMED_IAM. If you don't specify this parameter, this action returns an <code>InsufficientCapabilities</code> error.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging IAM Resources in AWS CloudFormation Templates.</a> </p>
-- * AdministrationRoleARN [RoleARN] <p>The Amazon Resource Number (ARN) of the IAM role to use to update this stack set.</p> <p>Specify an IAM role only if you are using customized administrator roles to control which users or groups can manage specific stack sets within the same administrator account. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html">Define Permissions for Multiple Administrators</a> in the <i>AWS CloudFormation User Guide</i>.</p> <p> If you specify a customized administrator role, AWS CloudFormation uses that role to update the stack. If you do not specify a customized administrator role, AWS CloudFormation performs the update using the role previously associated with the stack set, so long as you have permissions to perform operations on the stack set.</p>
-- * Regions [RegionList] <p>The regions in which to update associated stack instances. If you specify regions, you must also specify accounts in which to update stack set instances.</p> <p>To update <i>all</i> the stack instances associated with this stack set, do not specify the <code>Accounts</code> or <code>Regions</code> properties.</p> <p>If the stack set update includes changes to the template (that is, if the <code>TemplateBody</code> or <code>TemplateURL</code> properties are specified), or the <code>Parameters</code> property, AWS CloudFormation marks all stack instances with a status of <code>OUTDATED</code> prior to updating the stack instances in the specified accounts and regions. If the stack set update does not include changes to the template or parameters, AWS CloudFormation updates the stack instances in the specified accounts and regions, while leaving all other stack instances with their existing stack instance status. </p>
-- * OperationPreferences [StackSetOperationPreferences] <p>Preferences for how AWS CloudFormation performs this stack set operation.</p>
-- * Accounts [AccountList] <p>The accounts in which to update associated stack instances. If you specify accounts, you must also specify the regions in which to update stack set instances.</p> <p>To update <i>all</i> the stack instances associated with this stack set, do not specify the <code>Accounts</code> or <code>Regions</code> properties.</p> <p>If the stack set update includes changes to the template (that is, if the <code>TemplateBody</code> or <code>TemplateURL</code> properties are specified), or the <code>Parameters</code> property, AWS CloudFormation marks all stack instances with a status of <code>OUTDATED</code> prior to updating the stack instances in the specified accounts and regions. If the stack set update does not include changes to the template or parameters, AWS CloudFormation updates the stack instances in the specified accounts and regions, while leaving all other stack instances with their existing stack instance status. </p>
-- * ExecutionRoleName [ExecutionRoleName] <p>The name of the IAM execution role to use to update the stack set. If you do not specify an execution role, AWS CloudFormation uses the <code>AWSCloudFormationStackSetExecutionRole</code> role for the stack set operation.</p> <p>Specify an IAM role only if you are using customized execution roles to control which stack resources users and groups can include in their stack sets. </p> <p> If you specify a customized execution role, AWS CloudFormation uses that role to update the stack. If you do not specify a customized execution role, AWS CloudFormation performs the update using the role previously associated with the stack set, so long as you have permissions to perform operations on the stack set.</p>
-- * TemplateBody [TemplateBody] <p>The structure that contains the template body, with a minimum length of 1 byte and a maximum length of 51,200 bytes. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must specify only one of the following parameters: <code>TemplateBody</code> or <code>TemplateURL</code>—or set <code>UsePreviousTemplate</code> to true.</p>
-- * TemplateURL [TemplateURL] <p>The location of the file that contains the template body. The URL must point to a template (maximum size: 460,800 bytes) that is located in an Amazon S3 bucket. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the AWS CloudFormation User Guide.</p> <p>Conditional: You must specify only one of the following parameters: <code>TemplateBody</code> or <code>TemplateURL</code>—or set <code>UsePreviousTemplate</code> to true. </p>
-- * OperationId [ClientRequestToken] <p>The unique ID for this stack set operation. </p> <p>The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You might retry stack set operation requests to ensure that AWS CloudFormation successfully received them.</p> <p>If you don't specify an operation ID, AWS CloudFormation generates one automatically.</p> <p>Repeating this stack set operation with a new operation ID retries all stack instances whose status is <code>OUTDATED</code>. </p>
-- * Description [Description] <p>A brief description of updates that you are making.</p>
-- Required key: StackSetName
-- @return UpdateStackSetInput structure as a key-value pair table
function M.UpdateStackSetInput(args)
	assert(args, "You must provide an argument table when creating UpdateStackSetInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackSetName"] = args["StackSetName"],
		["Parameters"] = args["Parameters"],
		["Tags"] = args["Tags"],
		["UsePreviousTemplate"] = args["UsePreviousTemplate"],
		["Capabilities"] = args["Capabilities"],
		["AdministrationRoleARN"] = args["AdministrationRoleARN"],
		["Regions"] = args["Regions"],
		["OperationPreferences"] = args["OperationPreferences"],
		["Accounts"] = args["Accounts"],
		["ExecutionRoleName"] = args["ExecutionRoleName"],
		["TemplateBody"] = args["TemplateBody"],
		["TemplateURL"] = args["TemplateURL"],
		["OperationId"] = args["OperationId"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdateStackSetInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating StackResourceSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceStatus"] = args["ResourceStatus"],
		["ResourceType"] = args["ResourceType"],
		["ResourceStatusReason"] = args["ResourceStatusReason"],
		["LastUpdatedTimestamp"] = args["LastUpdatedTimestamp"],
		["PhysicalResourceId"] = args["PhysicalResourceId"],
		["LogicalResourceId"] = args["LogicalResourceId"],
	}
	asserts.AssertStackResourceSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating CreateStackOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
	}
	asserts.AssertCreateStackOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopStackSetOperationOutput = { nil }

function asserts.AssertStopStackSetOperationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopStackSetOperationOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StopStackSetOperationOutput[k], "StopStackSetOperationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopStackSetOperationOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StopStackSetOperationOutput structure as a key-value pair table
function M.StopStackSetOperationOutput(args)
	assert(args, "You must provide an argument table when creating StopStackSetOperationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStopStackSetOperationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StackSetOperationResultSummary = { ["Status"] = true, ["Account"] = true, ["AccountGateResult"] = true, ["Region"] = true, ["StatusReason"] = true, nil }

function asserts.AssertStackSetOperationResultSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackSetOperationResultSummary to be of type 'table'")
	if struct["Status"] then asserts.AssertStackSetOperationResultStatus(struct["Status"]) end
	if struct["Account"] then asserts.AssertAccount(struct["Account"]) end
	if struct["AccountGateResult"] then asserts.AssertAccountGateResult(struct["AccountGateResult"]) end
	if struct["Region"] then asserts.AssertRegion(struct["Region"]) end
	if struct["StatusReason"] then asserts.AssertReason(struct["StatusReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.StackSetOperationResultSummary[k], "StackSetOperationResultSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackSetOperationResultSummary
-- <p>The structure that contains information about a specified operation's results for a given account in a given region.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [StackSetOperationResultStatus] <p>The result status of the stack set operation for the given account in the given region.</p> <ul> <li> <p> <code>CANCELLED</code>: The operation in the specified account and region has been cancelled. This is either because a user has stopped the stack set operation, or because the failure tolerance of the stack set operation has been exceeded.</p> </li> <li> <p> <code>FAILED</code>: The operation in the specified account and region failed. </p> <p>If the stack set operation fails in enough accounts within a region, the failure tolerance for the stack set operation as a whole might be exceeded. </p> </li> <li> <p> <code>RUNNING</code>: The operation in the specified account and region is currently in progress.</p> </li> <li> <p> <code>PENDING</code>: The operation in the specified account and region has yet to start. </p> </li> <li> <p> <code>SUCCEEDED</code>: The operation in the specified account and region completed successfully.</p> </li> </ul>
-- * Account [Account] <p>The name of the AWS account for this operation result.</p>
-- * AccountGateResult [AccountGateResult] <p>The results of the account gate function AWS CloudFormation invokes, if present, before proceeding with stack set operations in an account</p>
-- * Region [Region] <p>The name of the AWS region for this operation result.</p>
-- * StatusReason [Reason] <p>The reason for the assigned result status.</p>
-- @return StackSetOperationResultSummary structure as a key-value pair table
function M.StackSetOperationResultSummary(args)
	assert(args, "You must provide an argument table when creating StackSetOperationResultSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Account"] = args["Account"],
		["AccountGateResult"] = args["AccountGateResult"],
		["Region"] = args["Region"],
		["StatusReason"] = args["StatusReason"],
	}
	asserts.AssertStackSetOperationResultSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ListExportsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Exports"] = args["Exports"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListExportsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating SetStackPolicyInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["StackPolicyBody"] = args["StackPolicyBody"],
		["StackPolicyURL"] = args["StackPolicyURL"],
	}
	asserts.AssertSetStackPolicyInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- * ResourcesToSkip [ResourcesToSkip] <p>A list of the logical IDs of the resources that AWS CloudFormation skips during the continue update rollback operation. You can specify only resources that are in the <code>UPDATE_FAILED</code> state because a rollback failed. You can't specify resources that are in the <code>UPDATE_FAILED</code> state for other reasons, for example, because an update was cancelled. To check why a resource update failed, use the <a>DescribeStackResources</a> action, and view the resource status reason. </p> <important> <p>Specify this property to skip rolling back resources that AWS CloudFormation can't successfully roll back. We recommend that you <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed"> troubleshoot</a> resources before skipping them. AWS CloudFormation sets the status of the specified resources to <code>UPDATE_COMPLETE</code> and continues to roll back the stack. After the rollback is complete, the state of the skipped resources will be inconsistent with the state of the resources in the stack template. Before performing another stack update, you must update the stack or resources to be consistent with each other. If you don't, subsequent stack updates might fail, and the stack will become unrecoverable. </p> </important> <p>Specify the minimum number of resources required to successfully roll back your stack. For example, a failed resource update might cause dependent resources to fail. In this case, it might not be necessary to skip the dependent resources. </p> <p>To skip resources that are part of nested stacks, use the following format: <code>NestedStackName.ResourceLogicalID</code>. If you want to specify the logical ID of a stack resource (<code>Type: AWS::CloudFormation::Stack</code>) in the <code>ResourcesToSkip</code> list, then its corresponding embedded stack must be in one of the following states: <code>DELETE_IN_PROGRESS</code>, <code>DELETE_COMPLETE</code>, or <code>DELETE_FAILED</code>. </p> <note> <p>Don't confuse a child stack's name with its corresponding logical ID defined in the parent stack. For an example of a continue update rollback operation with nested stacks, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html#nested-stacks">Using ResourcesToSkip to recover a nested stacks hierarchy</a>. </p> </note>
-- Required key: StackName
-- @return ContinueUpdateRollbackInput structure as a key-value pair table
function M.ContinueUpdateRollbackInput(args)
	assert(args, "You must provide an argument table when creating ContinueUpdateRollbackInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["RoleARN"] = args["RoleARN"],
		["ClientRequestToken"] = args["ClientRequestToken"],
		["ResourcesToSkip"] = args["ResourcesToSkip"],
	}
	asserts.AssertContinueUpdateRollbackInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeStackEventsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeStackEventsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTerminationProtectionInput = { ["StackName"] = true, ["EnableTerminationProtection"] = true, nil }

function asserts.AssertUpdateTerminationProtectionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTerminationProtectionInput to be of type 'table'")
	assert(struct["EnableTerminationProtection"], "Expected key EnableTerminationProtection to exist in table")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	if struct["StackName"] then asserts.AssertStackNameOrId(struct["StackName"]) end
	if struct["EnableTerminationProtection"] then asserts.AssertEnableTerminationProtection(struct["EnableTerminationProtection"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTerminationProtectionInput[k], "UpdateTerminationProtectionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTerminationProtectionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackName [StackNameOrId] <p>The name or unique ID of the stack for which you want to set termination protection.</p>
-- * EnableTerminationProtection [EnableTerminationProtection] <p>Whether to enable termination protection on the specified stack.</p>
-- Required key: EnableTerminationProtection
-- Required key: StackName
-- @return UpdateTerminationProtectionInput structure as a key-value pair table
function M.UpdateTerminationProtectionInput(args)
	assert(args, "You must provide an argument table when creating UpdateTerminationProtectionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["EnableTerminationProtection"] = args["EnableTerminationProtection"],
	}
	asserts.AssertUpdateTerminationProtectionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeStackResourcesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackResources"] = args["StackResources"],
	}
	asserts.AssertDescribeStackResourcesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStackSetOperationsOutput = { ["NextToken"] = true, ["Summaries"] = true, nil }

function asserts.AssertListStackSetOperationsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStackSetOperationsOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Summaries"] then asserts.AssertStackSetOperationSummaries(struct["Summaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStackSetOperationsOutput[k], "ListStackSetOperationsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStackSetOperationsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If the request doesn't return all results, <code>NextToken</code> is set to a token. To retrieve the next set of results, call <code>ListOperationResults</code> again and assign that token to the request object's <code>NextToken</code> parameter. If there are no remaining results, <code>NextToken</code> is set to <code>null</code>.</p>
-- * Summaries [StackSetOperationSummaries] <p>A list of <code>StackSetOperationSummary</code> structures that contain summary information about operations for the specified stack set.</p>
-- @return ListStackSetOperationsOutput structure as a key-value pair table
function M.ListStackSetOperationsOutput(args)
	assert(args, "You must provide an argument table when creating ListStackSetOperationsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Summaries"] = args["Summaries"],
	}
	asserts.AssertListStackSetOperationsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStackInstancesInput = { ["StackInstanceAccount"] = true, ["StackInstanceRegion"] = true, ["NextToken"] = true, ["StackSetName"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListStackInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStackInstancesInput to be of type 'table'")
	assert(struct["StackSetName"], "Expected key StackSetName to exist in table")
	if struct["StackInstanceAccount"] then asserts.AssertAccount(struct["StackInstanceAccount"]) end
	if struct["StackInstanceRegion"] then asserts.AssertRegion(struct["StackInstanceRegion"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["StackSetName"] then asserts.AssertStackSetName(struct["StackSetName"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStackInstancesInput[k], "ListStackInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStackInstancesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackInstanceAccount [Account] <p>The name of the AWS account that you want to list stack instances for.</p>
-- * StackInstanceRegion [Region] <p>The name of the region where you want to list stack instances. </p>
-- * NextToken [NextToken] <p>If the previous request didn't return all of the remaining results, the response's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListStackInstances</code> again and assign that token to the request object's <code>NextToken</code> parameter. If there are no remaining results, the previous response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
-- * StackSetName [StackSetName] <p>The name or unique ID of the stack set that you want to list stack instances for.</p>
-- * MaxResults [MaxResults] <p>The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code> request parameter to get the next set of results.</p>
-- Required key: StackSetName
-- @return ListStackInstancesInput structure as a key-value pair table
function M.ListStackInstancesInput(args)
	assert(args, "You must provide an argument table when creating ListStackInstancesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackInstanceAccount"] = args["StackInstanceAccount"],
		["StackInstanceRegion"] = args["StackInstanceRegion"],
		["NextToken"] = args["NextToken"],
		["StackSetName"] = args["StackSetName"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListStackInstancesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeStackResourceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["LogicalResourceId"] = args["LogicalResourceId"],
	}
	asserts.AssertDescribeStackResourceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NameAlreadyExistsException = { nil }

function asserts.AssertNameAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NameAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.NameAlreadyExistsException[k], "NameAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NameAlreadyExistsException
-- <p>The specified name is already in use.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return NameAlreadyExistsException structure as a key-value pair table
function M.NameAlreadyExistsException(args)
	assert(args, "You must provide an argument table when creating NameAlreadyExistsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertNameAlreadyExistsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStackSetOperationResultsOutput = { ["NextToken"] = true, ["Summaries"] = true, nil }

function asserts.AssertListStackSetOperationResultsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStackSetOperationResultsOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Summaries"] then asserts.AssertStackSetOperationResultSummaries(struct["Summaries"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStackSetOperationResultsOutput[k], "ListStackSetOperationResultsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStackSetOperationResultsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If the request doesn't return all results, <code>NextToken</code> is set to a token. To retrieve the next set of results, call <code>ListOperationResults</code> again and assign that token to the request object's <code>NextToken</code> parameter. If there are no remaining results, <code>NextToken</code> is set to <code>null</code>.</p>
-- * Summaries [StackSetOperationResultSummaries] <p>A list of <code>StackSetOperationResultSummary</code> structures that contain information about the specified operation results, for accounts and regions that are included in the operation.</p>
-- @return ListStackSetOperationResultsOutput structure as a key-value pair table
function M.ListStackSetOperationResultsOutput(args)
	assert(args, "You must provide an argument table when creating ListStackSetOperationResultsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Summaries"] = args["Summaries"],
	}
	asserts.AssertListStackSetOperationResultsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating CancelUpdateStackInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["ClientRequestToken"] = args["ClientRequestToken"],
	}
	asserts.AssertCancelUpdateStackInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateStackSetOutput = { ["OperationId"] = true, nil }

function asserts.AssertUpdateStackSetOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStackSetOutput to be of type 'table'")
	if struct["OperationId"] then asserts.AssertClientRequestToken(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateStackSetOutput[k], "UpdateStackSetOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStackSetOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperationId [ClientRequestToken] <p>The unique ID for this stack set operation.</p>
-- @return UpdateStackSetOutput structure as a key-value pair table
function M.UpdateStackSetOutput(args)
	assert(args, "You must provide an argument table when creating UpdateStackSetOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertUpdateStackSetOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StackSetNotFoundException = { nil }

function asserts.AssertStackSetNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackSetNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StackSetNotFoundException[k], "StackSetNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackSetNotFoundException
-- <p>The specified stack set doesn't exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StackSetNotFoundException structure as a key-value pair table
function M.StackSetNotFoundException(args)
	assert(args, "You must provide an argument table when creating StackSetNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStackSetNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating EstimateTemplateCostInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TemplateURL"] = args["TemplateURL"],
		["Parameters"] = args["Parameters"],
		["TemplateBody"] = args["TemplateBody"],
	}
	asserts.AssertEstimateTemplateCostInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DeleteChangeSetOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteChangeSetOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StackSetNotEmptyException = { nil }

function asserts.AssertStackSetNotEmptyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackSetNotEmptyException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StackSetNotEmptyException[k], "StackSetNotEmptyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackSetNotEmptyException
-- <p>You can't yet delete this stack set, because it still contains one or more stack instances. Delete all stack instances from the stack set before deleting the stack set.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StackSetNotEmptyException structure as a key-value pair table
function M.StackSetNotEmptyException(args)
	assert(args, "You must provide an argument table when creating StackSetNotEmptyException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStackSetNotEmptyException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating AccountLimit")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertAccountLimit(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The specified change set can't be used to update the stack. For example, the change set status might be <code>CREATE_IN_PROGRESS</code>, or the stack status might be <code>UPDATE_IN_PROGRESS</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return InvalidChangeSetStatusException structure as a key-value pair table
function M.InvalidChangeSetStatusException(args)
	assert(args, "You must provide an argument table when creating InvalidChangeSetStatusException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertInvalidChangeSetStatusException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ListStacksInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["StackStatusFilter"] = args["StackStatusFilter"],
	}
	asserts.AssertListStacksInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating DescribeStacksOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Stacks"] = args["Stacks"],
	}
	asserts.AssertDescribeStacksOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating CreateChangeSetOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["Id"] = args["Id"],
	}
	asserts.AssertCreateChangeSetOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StackInstanceSummary = { ["StackId"] = true, ["Status"] = true, ["Account"] = true, ["Region"] = true, ["StatusReason"] = true, ["StackSetId"] = true, nil }

function asserts.AssertStackInstanceSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackInstanceSummary to be of type 'table'")
	if struct["StackId"] then asserts.AssertStackId(struct["StackId"]) end
	if struct["Status"] then asserts.AssertStackInstanceStatus(struct["Status"]) end
	if struct["Account"] then asserts.AssertAccount(struct["Account"]) end
	if struct["Region"] then asserts.AssertRegion(struct["Region"]) end
	if struct["StatusReason"] then asserts.AssertReason(struct["StatusReason"]) end
	if struct["StackSetId"] then asserts.AssertStackSetId(struct["StackSetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StackInstanceSummary[k], "StackInstanceSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackInstanceSummary
-- <p>The structure that contains summary information about a stack instance.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [StackId] <p>The ID of the stack instance.</p>
-- * Status [StackInstanceStatus] <p>The status of the stack instance, in terms of its synchronization with its associated stack set.</p> <ul> <li> <p> <code>INOPERABLE</code>: A <code>DeleteStackInstances</code> operation has failed and left the stack in an unstable state. Stacks in this state are excluded from further <code>UpdateStackSet</code> operations. You might need to perform a <code>DeleteStackInstances</code> operation, with <code>RetainStacks</code> set to <code>true</code>, to delete the stack instance, and then delete the stack manually.</p> </li> <li> <p> <code>OUTDATED</code>: The stack isn't currently up to date with the stack set because:</p> <ul> <li> <p>The associated stack failed during a <code>CreateStackSet</code> or <code>UpdateStackSet</code> operation. </p> </li> <li> <p>The stack was part of a <code>CreateStackSet</code> or <code>UpdateStackSet</code> operation that failed or was stopped before the stack was created or updated. </p> </li> </ul> </li> <li> <p> <code>CURRENT</code>: The stack is currently up to date with the stack set.</p> </li> </ul>
-- * Account [Account] <p>The name of the AWS account that the stack instance is associated with.</p>
-- * Region [Region] <p>The name of the AWS region that the stack instance is associated with.</p>
-- * StatusReason [Reason] <p>The explanation for the specific status code assigned to this stack instance.</p>
-- * StackSetId [StackSetId] <p>The name or unique ID of the stack set that the stack instance is associated with.</p>
-- @return StackInstanceSummary structure as a key-value pair table
function M.StackInstanceSummary(args)
	assert(args, "You must provide an argument table when creating StackInstanceSummary")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["Status"] = args["Status"],
		["Account"] = args["Account"],
		["Region"] = args["Region"],
		["StatusReason"] = args["StatusReason"],
		["StackSetId"] = args["StackSetId"],
	}
	asserts.AssertStackInstanceSummary(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStackSetsInput = { ["Status"] = true, ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListStackSetsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStackSetsInput to be of type 'table'")
	if struct["Status"] then asserts.AssertStackSetStatus(struct["Status"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStackSetsInput[k], "ListStackSetsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStackSetsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [StackSetStatus] <p>The status of the stack sets that you want to get summary information about.</p>
-- * NextToken [NextToken] <p>If the previous paginated request didn't return all of the remaining results, the response object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListStackSets</code> again and assign that token to the request object's <code>NextToken</code> parameter. If there are no remaining results, the previous response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
-- * MaxResults [MaxResults] <p>The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code> request parameter to get the next set of results.</p>
-- @return ListStackSetsInput structure as a key-value pair table
function M.ListStackSetsInput(args)
	assert(args, "You must provide an argument table when creating ListStackSetsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListStackSetsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStackSetOperationsInput = { ["NextToken"] = true, ["StackSetName"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListStackSetOperationsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStackSetOperationsInput to be of type 'table'")
	assert(struct["StackSetName"], "Expected key StackSetName to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["StackSetName"] then asserts.AssertStackSetName(struct["StackSetName"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStackSetOperationsInput[k], "ListStackSetOperationsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStackSetOperationsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If the previous paginated request didn't return all of the remaining results, the response object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set of results, call <code>ListStackSetOperations</code> again and assign that token to the request object's <code>NextToken</code> parameter. If there are no remaining results, the previous response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
-- * StackSetName [StackSetName] <p>The name or unique ID of the stack set that you want to get operation summaries for.</p>
-- * MaxResults [MaxResults] <p>The maximum number of results to be returned with a single call. If the number of available results exceeds this maximum, the response includes a <code>NextToken</code> value that you can assign to the <code>NextToken</code> request parameter to get the next set of results.</p>
-- Required key: StackSetName
-- @return ListStackSetOperationsInput structure as a key-value pair table
function M.ListStackSetOperationsInput(args)
	assert(args, "You must provide an argument table when creating ListStackSetOperationsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["StackSetName"] = args["StackSetName"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertListStackSetOperationsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateStackInstancesOutput = { ["OperationId"] = true, nil }

function asserts.AssertUpdateStackInstancesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStackInstancesOutput to be of type 'table'")
	if struct["OperationId"] then asserts.AssertClientRequestToken(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateStackInstancesOutput[k], "UpdateStackInstancesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStackInstancesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OperationId [ClientRequestToken] <p>The unique identifier for this stack set operation. </p>
-- @return UpdateStackInstancesOutput structure as a key-value pair table
function M.UpdateStackInstancesOutput(args)
	assert(args, "You must provide an argument table when creating UpdateStackInstancesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertUpdateStackInstancesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeStackSetOutput = { ["StackSet"] = true, nil }

function asserts.AssertDescribeStackSetOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackSetOutput to be of type 'table'")
	if struct["StackSet"] then asserts.AssertStackSet(struct["StackSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStackSetOutput[k], "DescribeStackSetOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackSetOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackSet [StackSet] <p>The specified stack set.</p>
-- @return DescribeStackSetOutput structure as a key-value pair table
function M.DescribeStackSetOutput(args)
	assert(args, "You must provide an argument table when creating DescribeStackSetOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackSet"] = args["StackSet"],
	}
	asserts.AssertDescribeStackSetOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating SignalResourceInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackName"] = args["StackName"],
		["Status"] = args["Status"],
		["UniqueId"] = args["UniqueId"],
		["LogicalResourceId"] = args["LogicalResourceId"],
	}
	asserts.AssertSignalResourceInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating ListChangeSetsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Summaries"] = args["Summaries"],
	}
	asserts.AssertListChangeSetsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Stack = { ["StackId"] = true, ["RootId"] = true, ["TimeoutInMinutes"] = true, ["Description"] = true, ["Parameters"] = true, ["Tags"] = true, ["EnableTerminationProtection"] = true, ["Outputs"] = true, ["RoleARN"] = true, ["StackStatusReason"] = true, ["CreationTime"] = true, ["Capabilities"] = true, ["StackName"] = true, ["NotificationARNs"] = true, ["StackStatus"] = true, ["LastUpdatedTime"] = true, ["DisableRollback"] = true, ["RollbackConfiguration"] = true, ["ChangeSetId"] = true, ["ParentId"] = true, ["DeletionTime"] = true, nil }

function asserts.AssertStack(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Stack to be of type 'table'")
	assert(struct["StackName"], "Expected key StackName to exist in table")
	assert(struct["CreationTime"], "Expected key CreationTime to exist in table")
	assert(struct["StackStatus"], "Expected key StackStatus to exist in table")
	if struct["StackId"] then asserts.AssertStackId(struct["StackId"]) end
	if struct["RootId"] then asserts.AssertStackId(struct["RootId"]) end
	if struct["TimeoutInMinutes"] then asserts.AssertTimeoutMinutes(struct["TimeoutInMinutes"]) end
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["Parameters"] then asserts.AssertParameters(struct["Parameters"]) end
	if struct["Tags"] then asserts.AssertTags(struct["Tags"]) end
	if struct["EnableTerminationProtection"] then asserts.AssertEnableTerminationProtection(struct["EnableTerminationProtection"]) end
	if struct["Outputs"] then asserts.AssertOutputs(struct["Outputs"]) end
	if struct["RoleARN"] then asserts.AssertRoleARN(struct["RoleARN"]) end
	if struct["StackStatusReason"] then asserts.AssertStackStatusReason(struct["StackStatusReason"]) end
	if struct["CreationTime"] then asserts.AssertCreationTime(struct["CreationTime"]) end
	if struct["Capabilities"] then asserts.AssertCapabilities(struct["Capabilities"]) end
	if struct["StackName"] then asserts.AssertStackName(struct["StackName"]) end
	if struct["NotificationARNs"] then asserts.AssertNotificationARNs(struct["NotificationARNs"]) end
	if struct["StackStatus"] then asserts.AssertStackStatus(struct["StackStatus"]) end
	if struct["LastUpdatedTime"] then asserts.AssertLastUpdatedTime(struct["LastUpdatedTime"]) end
	if struct["DisableRollback"] then asserts.AssertDisableRollback(struct["DisableRollback"]) end
	if struct["RollbackConfiguration"] then asserts.AssertRollbackConfiguration(struct["RollbackConfiguration"]) end
	if struct["ChangeSetId"] then asserts.AssertChangeSetId(struct["ChangeSetId"]) end
	if struct["ParentId"] then asserts.AssertStackId(struct["ParentId"]) end
	if struct["DeletionTime"] then asserts.AssertDeletionTime(struct["DeletionTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.Stack[k], "Stack contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Stack
-- <p>The Stack data type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [StackId] <p>Unique identifier of the stack.</p>
-- * RootId [StackId] <p>For nested stacks--stacks created as resources for another stack--the stack ID of the the top-level stack to which the nested stack ultimately belongs.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">Working with Nested Stacks</a> in the <i>AWS CloudFormation User Guide</i>.</p>
-- * TimeoutInMinutes [TimeoutMinutes] <p>The amount of time within which stack creation should complete.</p>
-- * Description [Description] <p>A user-defined description associated with the stack.</p>
-- * Parameters [Parameters] <p>A list of <code>Parameter</code> structures.</p>
-- * Tags [Tags] <p>A list of <code>Tag</code>s that specify information about the stack.</p>
-- * EnableTerminationProtection [EnableTerminationProtection] <p>Whether termination protection is enabled for the stack.</p> <p> For <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">nested stacks</a>, termination protection is set on the root stack and cannot be changed directly on the nested stack. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html">Protecting a Stack From Being Deleted</a> in the <i>AWS CloudFormation User Guide</i>.</p>
-- * Outputs [Outputs] <p>A list of output structures.</p>
-- * RoleARN [RoleARN] <p>The Amazon Resource Name (ARN) of an AWS Identity and Access Management (IAM) role that is associated with the stack. During a stack operation, AWS CloudFormation uses this role's credentials to make calls on your behalf.</p>
-- * StackStatusReason [StackStatusReason] <p>Success/failure message associated with the stack status.</p>
-- * CreationTime [CreationTime] <p>The time at which the stack was created.</p>
-- * Capabilities [Capabilities] <p>The capabilities allowed in the stack.</p>
-- * StackName [StackName] <p>The name associated with the stack.</p>
-- * NotificationARNs [NotificationARNs] <p>SNS topic ARNs to which stack related events are published.</p>
-- * StackStatus [StackStatus] <p>Current status of the stack.</p>
-- * LastUpdatedTime [LastUpdatedTime] <p>The time the stack was last updated. This field will only be returned if the stack has been updated at least once.</p>
-- * DisableRollback [DisableRollback] <p>Boolean to enable or disable rollback on stack creation failures:</p> <ul> <li> <p> <code>true</code>: disable rollback</p> </li> <li> <p> <code>false</code>: enable rollback</p> </li> </ul>
-- * RollbackConfiguration [RollbackConfiguration] <p>The rollback triggers for AWS CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.</p>
-- * ChangeSetId [ChangeSetId] <p>The unique ID of the change set.</p>
-- * ParentId [StackId] <p>For nested stacks--stacks created as resources for another stack--the stack ID of the direct parent of this stack. For the first level of nested stacks, the root stack is also the parent stack.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">Working with Nested Stacks</a> in the <i>AWS CloudFormation User Guide</i>.</p>
-- * DeletionTime [DeletionTime] <p>The time the stack was deleted.</p>
-- Required key: StackName
-- Required key: CreationTime
-- Required key: StackStatus
-- @return Stack structure as a key-value pair table
function M.Stack(args)
	assert(args, "You must provide an argument table when creating Stack")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
		["RootId"] = args["RootId"],
		["TimeoutInMinutes"] = args["TimeoutInMinutes"],
		["Description"] = args["Description"],
		["Parameters"] = args["Parameters"],
		["Tags"] = args["Tags"],
		["EnableTerminationProtection"] = args["EnableTerminationProtection"],
		["Outputs"] = args["Outputs"],
		["RoleARN"] = args["RoleARN"],
		["StackStatusReason"] = args["StackStatusReason"],
		["CreationTime"] = args["CreationTime"],
		["Capabilities"] = args["Capabilities"],
		["StackName"] = args["StackName"],
		["NotificationARNs"] = args["NotificationARNs"],
		["StackStatus"] = args["StackStatus"],
		["LastUpdatedTime"] = args["LastUpdatedTime"],
		["DisableRollback"] = args["DisableRollback"],
		["RollbackConfiguration"] = args["RollbackConfiguration"],
		["ChangeSetId"] = args["ChangeSetId"],
		["ParentId"] = args["ParentId"],
		["DeletionTime"] = args["DeletionTime"],
	}
	asserts.AssertStack(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeStackSetOperationOutput = { ["StackSetOperation"] = true, nil }

function asserts.AssertDescribeStackSetOperationOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackSetOperationOutput to be of type 'table'")
	if struct["StackSetOperation"] then asserts.AssertStackSetOperation(struct["StackSetOperation"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStackSetOperationOutput[k], "DescribeStackSetOperationOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackSetOperationOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackSetOperation [StackSetOperation] <p>The specified stack set operation.</p>
-- @return DescribeStackSetOperationOutput structure as a key-value pair table
function M.DescribeStackSetOperationOutput(args)
	assert(args, "You must provide an argument table when creating DescribeStackSetOperationOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackSetOperation"] = args["StackSetOperation"],
	}
	asserts.AssertDescribeStackSetOperationOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTerminationProtectionOutput = { ["StackId"] = true, nil }

function asserts.AssertUpdateTerminationProtectionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTerminationProtectionOutput to be of type 'table'")
	if struct["StackId"] then asserts.AssertStackId(struct["StackId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTerminationProtectionOutput[k], "UpdateTerminationProtectionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTerminationProtectionOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackId [StackId] <p>The unique ID of the stack.</p>
-- @return UpdateTerminationProtectionOutput structure as a key-value pair table
function M.UpdateTerminationProtectionOutput(args)
	assert(args, "You must provide an argument table when creating UpdateTerminationProtectionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackId"] = args["StackId"],
	}
	asserts.AssertUpdateTerminationProtectionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateStackInstancesInput = { ["StackSetName"] = true, ["OperationPreferences"] = true, ["ParameterOverrides"] = true, ["Regions"] = true, ["Accounts"] = true, ["OperationId"] = true, nil }

function asserts.AssertCreateStackInstancesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStackInstancesInput to be of type 'table'")
	assert(struct["StackSetName"], "Expected key StackSetName to exist in table")
	assert(struct["Accounts"], "Expected key Accounts to exist in table")
	assert(struct["Regions"], "Expected key Regions to exist in table")
	if struct["StackSetName"] then asserts.AssertStackSetName(struct["StackSetName"]) end
	if struct["OperationPreferences"] then asserts.AssertStackSetOperationPreferences(struct["OperationPreferences"]) end
	if struct["ParameterOverrides"] then asserts.AssertParameters(struct["ParameterOverrides"]) end
	if struct["Regions"] then asserts.AssertRegionList(struct["Regions"]) end
	if struct["Accounts"] then asserts.AssertAccountList(struct["Accounts"]) end
	if struct["OperationId"] then asserts.AssertClientRequestToken(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStackInstancesInput[k], "CreateStackInstancesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStackInstancesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackSetName [StackSetName] <p>The name or unique ID of the stack set that you want to create stack instances from.</p>
-- * OperationPreferences [StackSetOperationPreferences] <p>Preferences for how AWS CloudFormation performs this stack set operation.</p>
-- * ParameterOverrides [Parameters] <p>A list of stack set parameters whose values you want to override in the selected stack instances.</p> <p>Any overridden parameter values will be applied to all stack instances in the specified accounts and regions. When specifying parameters and their values, be aware of how AWS CloudFormation sets parameter values during stack instance operations:</p> <ul> <li> <p>To override the current value for a parameter, include the parameter and specify its value.</p> </li> <li> <p>To leave a parameter set to its present value, you can do one of the following:</p> <ul> <li> <p>Do not include the parameter in the list.</p> </li> <li> <p>Include the parameter and specify <code>UsePreviousValue</code> as <code>true</code>. (You cannot specify both a value and set <code>UsePreviousValue</code> to <code>true</code>.)</p> </li> </ul> </li> <li> <p>To set all overridden parameter back to the values specified in the stack set, specify a parameter list but do not include any parameters.</p> </li> <li> <p>To leave all parameters set to their present values, do not specify this property at all.</p> </li> </ul> <p>During stack set updates, any parameter values overridden for a stack instance are not updated, but retain their overridden value.</p> <p>You can only override the parameter <i>values</i> that are specified in the stack set; to add or delete a parameter itself, use <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html">UpdateStackSet</a> to update the stack set template.</p>
-- * Regions [RegionList] <p>The names of one or more regions where you want to create stack instances using the specified AWS account(s). </p>
-- * Accounts [AccountList] <p>The names of one or more AWS accounts that you want to create stack instances in the specified region(s) for.</p>
-- * OperationId [ClientRequestToken] <p>The unique identifier for this stack set operation. </p> <p>The operation ID also functions as an idempotency token, to ensure that AWS CloudFormation performs the stack set operation only once, even if you retry the request multiple times. You might retry stack set operation requests to ensure that AWS CloudFormation successfully received them.</p> <p>If you don't specify an operation ID, the SDK generates one automatically. </p> <p>Repeating this stack set operation with a new operation ID retries all stack instances whose status is <code>OUTDATED</code>. </p>
-- Required key: StackSetName
-- Required key: Accounts
-- Required key: Regions
-- @return CreateStackInstancesInput structure as a key-value pair table
function M.CreateStackInstancesInput(args)
	assert(args, "You must provide an argument table when creating CreateStackInstancesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackSetName"] = args["StackSetName"],
		["OperationPreferences"] = args["OperationPreferences"],
		["ParameterOverrides"] = args["ParameterOverrides"],
		["Regions"] = args["Regions"],
		["Accounts"] = args["Accounts"],
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertCreateStackInstancesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Output = { ["Description"] = true, ["ExportName"] = true, ["OutputKey"] = true, ["OutputValue"] = true, nil }

function asserts.AssertOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Output to be of type 'table'")
	if struct["Description"] then asserts.AssertDescription(struct["Description"]) end
	if struct["ExportName"] then asserts.AssertExportName(struct["ExportName"]) end
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
-- * ExportName [ExportName] <p>The name of the export associated with the output.</p>
-- * OutputKey [OutputKey] <p>The key associated with the output.</p>
-- * OutputValue [OutputValue] <p>The value associated with the output.</p>
-- @return Output structure as a key-value pair table
function M.Output(args)
	assert(args, "You must provide an argument table when creating Output")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Description"] = args["Description"],
		["ExportName"] = args["ExportName"],
		["OutputKey"] = args["OutputKey"],
		["OutputValue"] = args["OutputValue"],
	}
	asserts.AssertOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopStackSetOperationInput = { ["StackSetName"] = true, ["OperationId"] = true, nil }

function asserts.AssertStopStackSetOperationInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopStackSetOperationInput to be of type 'table'")
	assert(struct["StackSetName"], "Expected key StackSetName to exist in table")
	assert(struct["OperationId"], "Expected key OperationId to exist in table")
	if struct["StackSetName"] then asserts.AssertStackSetName(struct["StackSetName"]) end
	if struct["OperationId"] then asserts.AssertClientRequestToken(struct["OperationId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopStackSetOperationInput[k], "StopStackSetOperationInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopStackSetOperationInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackSetName [StackSetName] <p>The name or unique ID of the stack set that you want to stop the operation for.</p>
-- * OperationId [ClientRequestToken] <p>The ID of the stack operation. </p>
-- Required key: StackSetName
-- Required key: OperationId
-- @return StopStackSetOperationInput structure as a key-value pair table
function M.StopStackSetOperationInput(args)
	assert(args, "You must provide an argument table when creating StopStackSetOperationInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackSetName"] = args["StackSetName"],
		["OperationId"] = args["OperationId"],
	}
	asserts.AssertStopStackSetOperationInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StackInstanceNotFoundException = { nil }

function asserts.AssertStackInstanceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StackInstanceNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StackInstanceNotFoundException[k], "StackInstanceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StackInstanceNotFoundException
-- <p>The specified stack instance doesn't exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StackInstanceNotFoundException structure as a key-value pair table
function M.StackInstanceNotFoundException(args)
	assert(args, "You must provide an argument table when creating StackInstanceNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStackInstanceNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating EstimateTemplateCostOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Url"] = args["Url"],
	}
	asserts.AssertEstimateTemplateCostOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating GetTemplateOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StagesAvailable"] = args["StagesAvailable"],
		["TemplateBody"] = args["TemplateBody"],
	}
	asserts.AssertGetTemplateOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeStackSetInput = { ["StackSetName"] = true, nil }

function asserts.AssertDescribeStackSetInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStackSetInput to be of type 'table'")
	assert(struct["StackSetName"], "Expected key StackSetName to exist in table")
	if struct["StackSetName"] then asserts.AssertStackSetName(struct["StackSetName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStackSetInput[k], "DescribeStackSetInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStackSetInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StackSetName [StackSetName] <p>The name or unique ID of the stack set whose description you want.</p>
-- Required key: StackSetName
-- @return DescribeStackSetInput structure as a key-value pair table
function M.DescribeStackSetInput(args)
	assert(args, "You must provide an argument table when creating DescribeStackSetInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StackSetName"] = args["StackSetName"],
	}
	asserts.AssertDescribeStackSetInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	assert(args, "You must provide an argument table when creating Export")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExportingStackId"] = args["ExportingStackId"],
		["Value"] = args["Value"],
		["Name"] = args["Name"],
	}
	asserts.AssertExport(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RollbackTrigger = { ["Type"] = true, ["Arn"] = true, nil }

function asserts.AssertRollbackTrigger(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RollbackTrigger to be of type 'table'")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Type"] then asserts.AssertType(struct["Type"]) end
	if struct["Arn"] then asserts.AssertArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.RollbackTrigger[k], "RollbackTrigger contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RollbackTrigger
-- <p>A rollback trigger AWS CloudFormation monitors during creation and updating of stacks. If any of the alarms you specify goes to ALARM state during the stack operation or within the specified monitoring period afterwards, CloudFormation rolls back the entire stack operation. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [Type] <p>The resource type of the rollback trigger. Currently, <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html">AWS::CloudWatch::Alarm</a> is the only supported resource type.</p>
-- * Arn [Arn] <p>The Amazon Resource Name (ARN) of the rollback trigger.</p> <p>If a specified trigger is missing, the entire stack operation fails and is rolled back. </p>
-- Required key: Arn
-- Required key: Type
-- @return RollbackTrigger structure as a key-value pair table
function M.RollbackTrigger(args)
	assert(args, "You must provide an argument table when creating RollbackTrigger")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertRollbackTrigger(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

function asserts.AssertStackInstanceStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected StackInstanceStatus to be of type 'string'")
end

--  
function M.StackInstanceStatus(str)
	asserts.AssertStackInstanceStatus(str)
	return str
end

function asserts.AssertStackSetOperationAction(str)
	assert(str)
	assert(type(str) == "string", "Expected StackSetOperationAction to be of type 'string'")
end

--  
function M.StackSetOperationAction(str)
	asserts.AssertStackSetOperationAction(str)
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

function asserts.AssertExecutionStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ExecutionStatus to be of type 'string'")
end

--  
function M.ExecutionStatus(str)
	asserts.AssertExecutionStatus(str)
	return str
end

function asserts.AssertAccountGateStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountGateStatus to be of type 'string'")
end

--  
function M.AccountGateStatus(str)
	asserts.AssertAccountGateStatus(str)
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

function asserts.AssertStackSetOperationResultStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected StackSetOperationResultStatus to be of type 'string'")
end

--  
function M.StackSetOperationResultStatus(str)
	asserts.AssertStackSetOperationResultStatus(str)
	return str
end

function asserts.AssertStackSetId(str)
	assert(str)
	assert(type(str) == "string", "Expected StackSetId to be of type 'string'")
end

--  
function M.StackSetId(str)
	asserts.AssertStackSetId(str)
	return str
end

function asserts.AssertReason(str)
	assert(str)
	assert(type(str) == "string", "Expected Reason to be of type 'string'")
end

--  
function M.Reason(str)
	asserts.AssertReason(str)
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

function asserts.AssertAccount(str)
	assert(str)
	assert(type(str) == "string", "Expected Account to be of type 'string'")
end

--  
function M.Account(str)
	asserts.AssertAccount(str)
	return str
end

function asserts.AssertRegion(str)
	assert(str)
	assert(type(str) == "string", "Expected Region to be of type 'string'")
end

--  
function M.Region(str)
	asserts.AssertRegion(str)
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

function asserts.AssertStackStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected StackStatus to be of type 'string'")
end

--  
function M.StackStatus(str)
	asserts.AssertStackStatus(str)
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

function asserts.AssertStackSetStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected StackSetStatus to be of type 'string'")
end

--  
function M.StackSetStatus(str)
	asserts.AssertStackSetStatus(str)
	return str
end

function asserts.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
end

--  
function M.Arn(str)
	asserts.AssertArn(str)
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

function asserts.AssertStackSetNameOrId(str)
	assert(str)
	assert(type(str) == "string", "Expected StackSetNameOrId to be of type 'string'")
end

--  
function M.StackSetNameOrId(str)
	asserts.AssertStackSetNameOrId(str)
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

function asserts.AssertTransformName(str)
	assert(str)
	assert(type(str) == "string", "Expected TransformName to be of type 'string'")
end

--  
function M.TransformName(str)
	asserts.AssertTransformName(str)
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

function asserts.AssertStackSetName(str)
	assert(str)
	assert(type(str) == "string", "Expected StackSetName to be of type 'string'")
end

--  
function M.StackSetName(str)
	asserts.AssertStackSetName(str)
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
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
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

function asserts.AssertAccountGateStatusReason(str)
	assert(str)
	assert(type(str) == "string", "Expected AccountGateStatusReason to be of type 'string'")
end

--  
function M.AccountGateStatusReason(str)
	asserts.AssertAccountGateStatusReason(str)
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

function asserts.AssertParameterKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ParameterKey to be of type 'string'")
end

--  
function M.ParameterKey(str)
	asserts.AssertParameterKey(str)
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

function asserts.AssertLogicalResourceId(str)
	assert(str)
	assert(type(str) == "string", "Expected LogicalResourceId to be of type 'string'")
end

--  
function M.LogicalResourceId(str)
	asserts.AssertLogicalResourceId(str)
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

function asserts.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
end

--  
function M.Version(str)
	asserts.AssertVersion(str)
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

function asserts.AssertStackSetARN(str)
	assert(str)
	assert(type(str) == "string", "Expected StackSetARN to be of type 'string'")
end

--  
function M.StackSetARN(str)
	asserts.AssertStackSetARN(str)
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

function asserts.AssertType(str)
	assert(str)
	assert(type(str) == "string", "Expected Type to be of type 'string'")
end

--  
function M.Type(str)
	asserts.AssertType(str)
	return str
end

function asserts.AssertStackSetOperationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected StackSetOperationStatus to be of type 'string'")
end

--  
function M.StackSetOperationStatus(str)
	asserts.AssertStackSetOperationStatus(str)
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

function asserts.AssertResourceSignalStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceSignalStatus to be of type 'string'")
end

--  
function M.ResourceSignalStatus(str)
	asserts.AssertResourceSignalStatus(str)
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

function asserts.AssertExecutionRoleName(str)
	assert(str)
	assert(type(str) == "string", "Expected ExecutionRoleName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ExecutionRoleName(str)
	asserts.AssertExecutionRoleName(str)
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

function asserts.AssertChangeSetStatusReason(str)
	assert(str)
	assert(type(str) == "string", "Expected ChangeSetStatusReason to be of type 'string'")
end

--  
function M.ChangeSetStatusReason(str)
	asserts.AssertChangeSetStatusReason(str)
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

function asserts.AssertMaxConcurrentPercentage(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxConcurrentPercentage to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxConcurrentPercentage(integer)
	asserts.AssertMaxConcurrentPercentage(integer)
	return integer
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertFailureToleranceCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected FailureToleranceCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.FailureToleranceCount(integer)
	asserts.AssertFailureToleranceCount(integer)
	return integer
end

function asserts.AssertMaxConcurrentCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxConcurrentCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxConcurrentCount(integer)
	asserts.AssertMaxConcurrentCount(integer)
	return integer
end

function asserts.AssertMonitoringTimeInMinutes(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MonitoringTimeInMinutes to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 180, "Expected integer to be max 180")
end

function M.MonitoringTimeInMinutes(integer)
	asserts.AssertMonitoringTimeInMinutes(integer)
	return integer
end

function asserts.AssertFailureTolerancePercentage(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected FailureTolerancePercentage to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
end

function M.FailureTolerancePercentage(integer)
	asserts.AssertFailureTolerancePercentage(integer)
	return integer
end

function asserts.AssertRetainStacks(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected RetainStacks to be of type 'boolean'")
end

function M.RetainStacks(boolean)
	asserts.AssertRetainStacks(boolean)
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

function asserts.AssertUsePreviousValue(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected UsePreviousValue to be of type 'boolean'")
end

function M.UsePreviousValue(boolean)
	asserts.AssertUsePreviousValue(boolean)
	return boolean
end

function asserts.AssertRetainStacksNullable(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected RetainStacksNullable to be of type 'boolean'")
end

function M.RetainStacksNullable(boolean)
	asserts.AssertRetainStacksNullable(boolean)
	return boolean
end

function asserts.AssertDisableRollback(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected DisableRollback to be of type 'boolean'")
end

function M.DisableRollback(boolean)
	asserts.AssertDisableRollback(boolean)
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

function asserts.AssertEnableTerminationProtection(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected EnableTerminationProtection to be of type 'boolean'")
end

function M.EnableTerminationProtection(boolean)
	asserts.AssertEnableTerminationProtection(boolean)
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

function asserts.AssertStackSetOperationSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected StackSetOperationSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStackSetOperationSummary(v)
	end
end

--  
-- List of StackSetOperationSummary objects
function M.StackSetOperationSummaries(list)
	asserts.AssertStackSetOperationSummaries(list)
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

function asserts.AssertAccountList(list)
	assert(list)
	assert(type(list) == "table", "Expected AccountList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAccount(v)
	end
end

--  
-- List of Account objects
function M.AccountList(list)
	asserts.AssertAccountList(list)
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

function asserts.AssertStackInstanceSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected StackInstanceSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStackInstanceSummary(v)
	end
end

--  
-- List of StackInstanceSummary objects
function M.StackInstanceSummaries(list)
	asserts.AssertStackInstanceSummaries(list)
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

function asserts.AssertRegionList(list)
	assert(list)
	assert(type(list) == "table", "Expected RegionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRegion(v)
	end
end

--  
-- List of Region objects
function M.RegionList(list)
	asserts.AssertRegionList(list)
	return list
end

function asserts.AssertTags(list)
	assert(list)
	assert(type(list) == "table", "Expected Tags to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
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

function asserts.AssertStackSetOperationResultSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected StackSetOperationResultSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStackSetOperationResultSummary(v)
	end
end

--  
-- List of StackSetOperationResultSummary objects
function M.StackSetOperationResultSummaries(list)
	asserts.AssertStackSetOperationResultSummaries(list)
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

function asserts.AssertRollbackTriggers(list)
	assert(list)
	assert(type(list) == "table", "Expected RollbackTriggers to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		asserts.AssertRollbackTrigger(v)
	end
end

--  
-- List of RollbackTrigger objects
function M.RollbackTriggers(list)
	asserts.AssertRollbackTriggers(list)
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

function asserts.AssertStackSetSummaries(list)
	assert(list)
	assert(type(list) == "table", "Expected StackSetSummaries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStackSetSummary(v)
	end
end

--  
-- List of StackSetSummary objects
function M.StackSetSummaries(list)
	asserts.AssertStackSetSummaries(list)
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
	settings.signature_version = M.metadata.signature_version
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call DescribeStackResource asynchronously, invoking a callback when done
-- @param DescribeStackResourceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeStackResourceAsync(DescribeStackResourceInput, cb)
	assert(DescribeStackResourceInput, "You must provide a DescribeStackResourceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeStackResource",
	}
	for header,value in pairs(DescribeStackResourceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeStackResourceSync(DescribeStackResourceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStackResourceAsync(DescribeStackResourceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStackInstance asynchronously, invoking a callback when done
-- @param DescribeStackInstanceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeStackInstanceAsync(DescribeStackInstanceInput, cb)
	assert(DescribeStackInstanceInput, "You must provide a DescribeStackInstanceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeStackInstance",
	}
	for header,value in pairs(DescribeStackInstanceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeStackInstanceInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeStackInstance synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStackInstanceInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeStackInstanceSync(DescribeStackInstanceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStackInstanceAsync(DescribeStackInstanceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateStackSet asynchronously, invoking a callback when done
-- @param UpdateStackSetInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateStackSetAsync(UpdateStackSetInput, cb)
	assert(UpdateStackSetInput, "You must provide a UpdateStackSetInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateStackSet",
	}
	for header,value in pairs(UpdateStackSetInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateStackSetInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateStackSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateStackSetInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateStackSetSync(UpdateStackSetInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateStackSetAsync(UpdateStackSetInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStackInstances asynchronously, invoking a callback when done
-- @param CreateStackInstancesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateStackInstancesAsync(CreateStackInstancesInput, cb)
	assert(CreateStackInstancesInput, "You must provide a CreateStackInstancesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateStackInstances",
	}
	for header,value in pairs(CreateStackInstancesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateStackInstancesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateStackInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateStackInstancesInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateStackInstancesSync(CreateStackInstancesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStackInstancesAsync(CreateStackInstancesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateTerminationProtection asynchronously, invoking a callback when done
-- @param UpdateTerminationProtectionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateTerminationProtectionAsync(UpdateTerminationProtectionInput, cb)
	assert(UpdateTerminationProtectionInput, "You must provide a UpdateTerminationProtectionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateTerminationProtection",
	}
	for header,value in pairs(UpdateTerminationProtectionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateTerminationProtectionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateTerminationProtection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateTerminationProtectionInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateTerminationProtectionSync(UpdateTerminationProtectionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateTerminationProtectionAsync(UpdateTerminationProtectionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ValidateTemplate asynchronously, invoking a callback when done
-- @param ValidateTemplateInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ValidateTemplateAsync(ValidateTemplateInput, cb)
	assert(ValidateTemplateInput, "You must provide a ValidateTemplateInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ValidateTemplate",
	}
	for header,value in pairs(ValidateTemplateInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ValidateTemplateSync(ValidateTemplateInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ValidateTemplateAsync(ValidateTemplateInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStackResources asynchronously, invoking a callback when done
-- @param DescribeStackResourcesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeStackResourcesAsync(DescribeStackResourcesInput, cb)
	assert(DescribeStackResourcesInput, "You must provide a DescribeStackResourcesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeStackResources",
	}
	for header,value in pairs(DescribeStackResourcesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeStackResourcesSync(DescribeStackResourcesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStackResourcesAsync(DescribeStackResourcesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListStackSetOperations asynchronously, invoking a callback when done
-- @param ListStackSetOperationsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListStackSetOperationsAsync(ListStackSetOperationsInput, cb)
	assert(ListStackSetOperationsInput, "You must provide a ListStackSetOperationsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListStackSetOperations",
	}
	for header,value in pairs(ListStackSetOperationsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListStackSetOperationsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListStackSetOperations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListStackSetOperationsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListStackSetOperationsSync(ListStackSetOperationsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListStackSetOperationsAsync(ListStackSetOperationsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListChangeSets asynchronously, invoking a callback when done
-- @param ListChangeSetsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListChangeSetsAsync(ListChangeSetsInput, cb)
	assert(ListChangeSetsInput, "You must provide a ListChangeSetsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListChangeSets",
	}
	for header,value in pairs(ListChangeSetsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ListChangeSetsSync(ListChangeSetsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListChangeSetsAsync(ListChangeSetsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStack asynchronously, invoking a callback when done
-- @param CreateStackInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateStackAsync(CreateStackInput, cb)
	assert(CreateStackInput, "You must provide a CreateStackInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateStack",
	}
	for header,value in pairs(CreateStackInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateStackSync(CreateStackInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStackAsync(CreateStackInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTemplateSummary asynchronously, invoking a callback when done
-- @param GetTemplateSummaryInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetTemplateSummaryAsync(GetTemplateSummaryInput, cb)
	assert(GetTemplateSummaryInput, "You must provide a GetTemplateSummaryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetTemplateSummary",
	}
	for header,value in pairs(GetTemplateSummaryInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.GetTemplateSummarySync(GetTemplateSummaryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTemplateSummaryAsync(GetTemplateSummaryInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelUpdateStack asynchronously, invoking a callback when done
-- @param CancelUpdateStackInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CancelUpdateStackAsync(CancelUpdateStackInput, cb)
	assert(CancelUpdateStackInput, "You must provide a CancelUpdateStackInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CancelUpdateStack",
	}
	for header,value in pairs(CancelUpdateStackInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.CancelUpdateStackSync(CancelUpdateStackInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelUpdateStackAsync(CancelUpdateStackInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateStackInstances asynchronously, invoking a callback when done
-- @param UpdateStackInstancesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateStackInstancesAsync(UpdateStackInstancesInput, cb)
	assert(UpdateStackInstancesInput, "You must provide a UpdateStackInstancesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateStackInstances",
	}
	for header,value in pairs(UpdateStackInstancesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateStackInstancesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateStackInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateStackInstancesInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateStackInstancesSync(UpdateStackInstancesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateStackInstancesAsync(UpdateStackInstancesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ContinueUpdateRollback asynchronously, invoking a callback when done
-- @param ContinueUpdateRollbackInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ContinueUpdateRollbackAsync(ContinueUpdateRollbackInput, cb)
	assert(ContinueUpdateRollbackInput, "You must provide a ContinueUpdateRollbackInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ContinueUpdateRollback",
	}
	for header,value in pairs(ContinueUpdateRollbackInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ContinueUpdateRollbackSync(ContinueUpdateRollbackInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ContinueUpdateRollbackAsync(ContinueUpdateRollbackInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListImports asynchronously, invoking a callback when done
-- @param ListImportsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListImportsAsync(ListImportsInput, cb)
	assert(ListImportsInput, "You must provide a ListImportsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListImports",
	}
	for header,value in pairs(ListImportsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ListImportsSync(ListImportsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListImportsAsync(ListImportsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetStackPolicy asynchronously, invoking a callback when done
-- @param GetStackPolicyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetStackPolicyAsync(GetStackPolicyInput, cb)
	assert(GetStackPolicyInput, "You must provide a GetStackPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetStackPolicy",
	}
	for header,value in pairs(GetStackPolicyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.GetStackPolicySync(GetStackPolicyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetStackPolicyAsync(GetStackPolicyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListStackSets asynchronously, invoking a callback when done
-- @param ListStackSetsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListStackSetsAsync(ListStackSetsInput, cb)
	assert(ListStackSetsInput, "You must provide a ListStackSetsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListStackSets",
	}
	for header,value in pairs(ListStackSetsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListStackSetsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListStackSets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListStackSetsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListStackSetsSync(ListStackSetsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListStackSetsAsync(ListStackSetsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListExports asynchronously, invoking a callback when done
-- @param ListExportsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListExportsAsync(ListExportsInput, cb)
	assert(ListExportsInput, "You must provide a ListExportsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListExports",
	}
	for header,value in pairs(ListExportsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ListExportsSync(ListExportsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListExportsAsync(ListExportsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteStackSet asynchronously, invoking a callback when done
-- @param DeleteStackSetInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteStackSetAsync(DeleteStackSetInput, cb)
	assert(DeleteStackSetInput, "You must provide a DeleteStackSetInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteStackSet",
	}
	for header,value in pairs(DeleteStackSetInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteStackSetInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteStackSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteStackSetInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteStackSetSync(DeleteStackSetInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteStackSetAsync(DeleteStackSetInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStackSet asynchronously, invoking a callback when done
-- @param DescribeStackSetInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeStackSetAsync(DescribeStackSetInput, cb)
	assert(DescribeStackSetInput, "You must provide a DescribeStackSetInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeStackSet",
	}
	for header,value in pairs(DescribeStackSetInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeStackSetInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeStackSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStackSetInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeStackSetSync(DescribeStackSetInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStackSetAsync(DescribeStackSetInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStackSetOperation asynchronously, invoking a callback when done
-- @param DescribeStackSetOperationInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeStackSetOperationAsync(DescribeStackSetOperationInput, cb)
	assert(DescribeStackSetOperationInput, "You must provide a DescribeStackSetOperationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeStackSetOperation",
	}
	for header,value in pairs(DescribeStackSetOperationInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeStackSetOperationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeStackSetOperation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStackSetOperationInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeStackSetOperationSync(DescribeStackSetOperationInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStackSetOperationAsync(DescribeStackSetOperationInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListStackResources asynchronously, invoking a callback when done
-- @param ListStackResourcesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListStackResourcesAsync(ListStackResourcesInput, cb)
	assert(ListStackResourcesInput, "You must provide a ListStackResourcesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListStackResources",
	}
	for header,value in pairs(ListStackResourcesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ListStackResourcesSync(ListStackResourcesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListStackResourcesAsync(ListStackResourcesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStackEvents asynchronously, invoking a callback when done
-- @param DescribeStackEventsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeStackEventsAsync(DescribeStackEventsInput, cb)
	assert(DescribeStackEventsInput, "You must provide a DescribeStackEventsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeStackEvents",
	}
	for header,value in pairs(DescribeStackEventsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeStackEventsSync(DescribeStackEventsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStackEventsAsync(DescribeStackEventsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStackSet asynchronously, invoking a callback when done
-- @param CreateStackSetInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateStackSetAsync(CreateStackSetInput, cb)
	assert(CreateStackSetInput, "You must provide a CreateStackSetInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateStackSet",
	}
	for header,value in pairs(CreateStackSetInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateStackSetInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateStackSet synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateStackSetInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateStackSetSync(CreateStackSetInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStackSetAsync(CreateStackSetInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SignalResource asynchronously, invoking a callback when done
-- @param SignalResourceInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SignalResourceAsync(SignalResourceInput, cb)
	assert(SignalResourceInput, "You must provide a SignalResourceInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SignalResource",
	}
	for header,value in pairs(SignalResourceInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.SignalResourceSync(SignalResourceInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SignalResourceAsync(SignalResourceInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTemplate asynchronously, invoking a callback when done
-- @param GetTemplateInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetTemplateAsync(GetTemplateInput, cb)
	assert(GetTemplateInput, "You must provide a GetTemplateInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetTemplate",
	}
	for header,value in pairs(GetTemplateInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.GetTemplateSync(GetTemplateInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTemplateAsync(GetTemplateInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeChangeSet asynchronously, invoking a callback when done
-- @param DescribeChangeSetInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeChangeSetAsync(DescribeChangeSetInput, cb)
	assert(DescribeChangeSetInput, "You must provide a DescribeChangeSetInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeChangeSet",
	}
	for header,value in pairs(DescribeChangeSetInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeChangeSetSync(DescribeChangeSetInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeChangeSetAsync(DescribeChangeSetInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteChangeSet asynchronously, invoking a callback when done
-- @param DeleteChangeSetInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteChangeSetAsync(DeleteChangeSetInput, cb)
	assert(DeleteChangeSetInput, "You must provide a DeleteChangeSetInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteChangeSet",
	}
	for header,value in pairs(DeleteChangeSetInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteChangeSetSync(DeleteChangeSetInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteChangeSetAsync(DeleteChangeSetInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateChangeSet asynchronously, invoking a callback when done
-- @param CreateChangeSetInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateChangeSetAsync(CreateChangeSetInput, cb)
	assert(CreateChangeSetInput, "You must provide a CreateChangeSetInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateChangeSet",
	}
	for header,value in pairs(CreateChangeSetInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateChangeSetSync(CreateChangeSetInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateChangeSetAsync(CreateChangeSetInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStacks asynchronously, invoking a callback when done
-- @param DescribeStacksInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeStacksAsync(DescribeStacksInput, cb)
	assert(DescribeStacksInput, "You must provide a DescribeStacksInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeStacks",
	}
	for header,value in pairs(DescribeStacksInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeStacksSync(DescribeStacksInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStacksAsync(DescribeStacksInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateStack asynchronously, invoking a callback when done
-- @param UpdateStackInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateStackAsync(UpdateStackInput, cb)
	assert(UpdateStackInput, "You must provide a UpdateStackInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateStack",
	}
	for header,value in pairs(UpdateStackInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.UpdateStackSync(UpdateStackInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateStackAsync(UpdateStackInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopStackSetOperation asynchronously, invoking a callback when done
-- @param StopStackSetOperationInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopStackSetOperationAsync(StopStackSetOperationInput, cb)
	assert(StopStackSetOperationInput, "You must provide a StopStackSetOperationInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".StopStackSetOperation",
	}
	for header,value in pairs(StopStackSetOperationInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopStackSetOperationInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopStackSetOperation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopStackSetOperationInput
-- @return response
-- @return error_type
-- @return error_message
function M.StopStackSetOperationSync(StopStackSetOperationInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopStackSetOperationAsync(StopStackSetOperationInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListStackInstances asynchronously, invoking a callback when done
-- @param ListStackInstancesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListStackInstancesAsync(ListStackInstancesInput, cb)
	assert(ListStackInstancesInput, "You must provide a ListStackInstancesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListStackInstances",
	}
	for header,value in pairs(ListStackInstancesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListStackInstancesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListStackInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListStackInstancesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListStackInstancesSync(ListStackInstancesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListStackInstancesAsync(ListStackInstancesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteStackInstances asynchronously, invoking a callback when done
-- @param DeleteStackInstancesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteStackInstancesAsync(DeleteStackInstancesInput, cb)
	assert(DeleteStackInstancesInput, "You must provide a DeleteStackInstancesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteStackInstances",
	}
	for header,value in pairs(DeleteStackInstancesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteStackInstancesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteStackInstances synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteStackInstancesInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteStackInstancesSync(DeleteStackInstancesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteStackInstancesAsync(DeleteStackInstancesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ExecuteChangeSet asynchronously, invoking a callback when done
-- @param ExecuteChangeSetInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ExecuteChangeSetAsync(ExecuteChangeSetInput, cb)
	assert(ExecuteChangeSetInput, "You must provide a ExecuteChangeSetInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ExecuteChangeSet",
	}
	for header,value in pairs(ExecuteChangeSetInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ExecuteChangeSetSync(ExecuteChangeSetInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ExecuteChangeSetAsync(ExecuteChangeSetInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteStack asynchronously, invoking a callback when done
-- @param DeleteStackInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteStackAsync(DeleteStackInput, cb)
	assert(DeleteStackInput, "You must provide a DeleteStackInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteStack",
	}
	for header,value in pairs(DeleteStackInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteStackSync(DeleteStackInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteStackAsync(DeleteStackInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListStackSetOperationResults asynchronously, invoking a callback when done
-- @param ListStackSetOperationResultsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListStackSetOperationResultsAsync(ListStackSetOperationResultsInput, cb)
	assert(ListStackSetOperationResultsInput, "You must provide a ListStackSetOperationResultsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListStackSetOperationResults",
	}
	for header,value in pairs(ListStackSetOperationResultsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListStackSetOperationResultsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListStackSetOperationResults synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListStackSetOperationResultsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListStackSetOperationResultsSync(ListStackSetOperationResultsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListStackSetOperationResultsAsync(ListStackSetOperationResultsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetStackPolicy asynchronously, invoking a callback when done
-- @param SetStackPolicyInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetStackPolicyAsync(SetStackPolicyInput, cb)
	assert(SetStackPolicyInput, "You must provide a SetStackPolicyInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".SetStackPolicy",
	}
	for header,value in pairs(SetStackPolicyInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.SetStackPolicySync(SetStackPolicyInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetStackPolicyAsync(SetStackPolicyInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListStacks asynchronously, invoking a callback when done
-- @param ListStacksInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListStacksAsync(ListStacksInput, cb)
	assert(ListStacksInput, "You must provide a ListStacksInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListStacks",
	}
	for header,value in pairs(ListStacksInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.ListStacksSync(ListStacksInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListStacksAsync(ListStacksInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EstimateTemplateCost asynchronously, invoking a callback when done
-- @param EstimateTemplateCostInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EstimateTemplateCostAsync(EstimateTemplateCostInput, cb)
	assert(EstimateTemplateCostInput, "You must provide a EstimateTemplateCostInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".EstimateTemplateCost",
	}
	for header,value in pairs(EstimateTemplateCostInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.EstimateTemplateCostSync(EstimateTemplateCostInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EstimateTemplateCostAsync(EstimateTemplateCostInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAccountLimits asynchronously, invoking a callback when done
-- @param DescribeAccountLimitsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAccountLimitsAsync(DescribeAccountLimitsInput, cb)
	assert(DescribeAccountLimitsInput, "You must provide a DescribeAccountLimitsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeAccountLimits",
	}
	for header,value in pairs(DescribeAccountLimitsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("query", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeAccountLimitsSync(DescribeAccountLimitsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAccountLimitsAsync(DescribeAccountLimitsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
