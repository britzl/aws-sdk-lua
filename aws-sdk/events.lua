--- GENERATED CODE - DO NOT MODIFY
-- Amazon CloudWatch Events (events-2015-10-07)

local M = {}

M.metadata = {
	api_version = "2015-10-07",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "events",
	service_abbreviation = "",
	service_full_name = "Amazon CloudWatch Events",
	signature_version = "v4",
	target_prefix = "AWSEvents",
	timestamp_format = "",
	global_endpoint = "",
	uid = "events-2015-10-07",
}

local keys = {}
local asserts = {}

keys.PutPermissionRequest = { ["Action"] = true, ["StatementId"] = true, ["Condition"] = true, ["Principal"] = true, nil }

function asserts.AssertPutPermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutPermissionRequest to be of type 'table'")
	assert(struct["Action"], "Expected key Action to exist in table")
	assert(struct["Principal"], "Expected key Principal to exist in table")
	assert(struct["StatementId"], "Expected key StatementId to exist in table")
	if struct["Action"] then asserts.AssertAction(struct["Action"]) end
	if struct["StatementId"] then asserts.AssertStatementId(struct["StatementId"]) end
	if struct["Condition"] then asserts.AssertCondition(struct["Condition"]) end
	if struct["Principal"] then asserts.AssertPrincipal(struct["Principal"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutPermissionRequest[k], "PutPermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutPermissionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Action [Action] <p>The action that you are enabling the other account to perform. Currently, this must be <code>events:PutEvents</code>.</p>
-- * StatementId [StatementId] <p>An identifier string for the external account that you are granting permissions to. If you later want to revoke the permission for this external account, specify this <code>StatementId</code> when you run <a>RemovePermission</a>.</p>
-- * Condition [Condition] <p>This parameter enables you to limit the permission to accounts that fulfill a certain condition, such as being a member of a certain AWS organization. For more information about AWS Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html">What Is AWS Organizations</a> in the <i>AWS Organizations User Guide</i>.</p> <p>If you specify <code>Condition</code> with an AWS organization ID, and specify "*" as the value for <code>Principal</code>, you grant permission to all the accounts in the named organization.</p> <p>The <code>Condition</code> is a JSON string which must contain <code>Type</code>, <code>Key</code>, and <code>Value</code> fields.</p>
-- * Principal [Principal] <p>The 12-digit AWS account ID that you are permitting to put events to your default event bus. Specify "*" to permit any account to put events to your default event bus.</p> <p>If you specify "*" without specifying <code>Condition</code>, avoid creating rules that may match undesirable events. To create more secure rules, make sure that the event pattern for each rule contains an <code>account</code> field with a specific account ID from which to receive events. Rules with an account field do not match any events sent from other accounts.</p>
-- Required key: Action
-- Required key: Principal
-- Required key: StatementId
-- @return PutPermissionRequest structure as a key-value pair table
function M.PutPermissionRequest(args)
	assert(args, "You must provide an argument table when creating PutPermissionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Action"] = args["Action"],
		["StatementId"] = args["StatementId"],
		["Condition"] = args["Condition"],
		["Principal"] = args["Principal"],
	}
	asserts.AssertPutPermissionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRuleRequest = { ["Name"] = true, nil }

function asserts.AssertDeleteRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRuleRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertRuleName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRuleRequest[k], "DeleteRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRuleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [RuleName] <p>The name of the rule.</p>
-- Required key: Name
-- @return DeleteRuleRequest structure as a key-value pair table
function M.DeleteRuleRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutTargetsResponse = { ["FailedEntries"] = true, ["FailedEntryCount"] = true, nil }

function asserts.AssertPutTargetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutTargetsResponse to be of type 'table'")
	if struct["FailedEntries"] then asserts.AssertPutTargetsResultEntryList(struct["FailedEntries"]) end
	if struct["FailedEntryCount"] then asserts.AssertInteger(struct["FailedEntryCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutTargetsResponse[k], "PutTargetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutTargetsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailedEntries [PutTargetsResultEntryList] <p>The failed target entries.</p>
-- * FailedEntryCount [Integer] <p>The number of failed entries.</p>
-- @return PutTargetsResponse structure as a key-value pair table
function M.PutTargetsResponse(args)
	assert(args, "You must provide an argument table when creating PutTargetsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FailedEntries"] = args["FailedEntries"],
		["FailedEntryCount"] = args["FailedEntryCount"],
	}
	asserts.AssertPutTargetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRuleNamesByTargetRequest = { ["TargetArn"] = true, ["NextToken"] = true, ["Limit"] = true, nil }

function asserts.AssertListRuleNamesByTargetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRuleNamesByTargetRequest to be of type 'table'")
	assert(struct["TargetArn"], "Expected key TargetArn to exist in table")
	if struct["TargetArn"] then asserts.AssertTargetArn(struct["TargetArn"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertLimitMax100(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRuleNamesByTargetRequest[k], "ListRuleNamesByTargetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRuleNamesByTargetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetArn [TargetArn] <p>The Amazon Resource Name (ARN) of the target resource.</p>
-- * NextToken [NextToken] <p>The token returned by a previous call to retrieve the next set of results.</p>
-- * Limit [LimitMax100] <p>The maximum number of results to return.</p>
-- Required key: TargetArn
-- @return ListRuleNamesByTargetRequest structure as a key-value pair table
function M.ListRuleNamesByTargetRequest(args)
	assert(args, "You must provide an argument table when creating ListRuleNamesByTargetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetArn"] = args["TargetArn"],
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
	}
	asserts.AssertListRuleNamesByTargetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutTargetsRequest = { ["Targets"] = true, ["Rule"] = true, nil }

function asserts.AssertPutTargetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutTargetsRequest to be of type 'table'")
	assert(struct["Rule"], "Expected key Rule to exist in table")
	assert(struct["Targets"], "Expected key Targets to exist in table")
	if struct["Targets"] then asserts.AssertTargetList(struct["Targets"]) end
	if struct["Rule"] then asserts.AssertRuleName(struct["Rule"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutTargetsRequest[k], "PutTargetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutTargetsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Targets [TargetList] <p>The targets to update or add to the rule.</p>
-- * Rule [RuleName] <p>The name of the rule.</p>
-- Required key: Rule
-- Required key: Targets
-- @return PutTargetsRequest structure as a key-value pair table
function M.PutTargetsRequest(args)
	assert(args, "You must provide an argument table when creating PutTargetsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Targets"] = args["Targets"],
		["Rule"] = args["Rule"],
	}
	asserts.AssertPutTargetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EnableRuleRequest = { ["Name"] = true, nil }

function asserts.AssertEnableRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableRuleRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertRuleName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.EnableRuleRequest[k], "EnableRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableRuleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [RuleName] <p>The name of the rule.</p>
-- Required key: Name
-- @return EnableRuleRequest structure as a key-value pair table
function M.EnableRuleRequest(args)
	assert(args, "You must provide an argument table when creating EnableRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertEnableRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RunCommandTarget = { ["Values"] = true, ["Key"] = true, nil }

function asserts.AssertRunCommandTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RunCommandTarget to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Values"] then asserts.AssertRunCommandTargetValues(struct["Values"]) end
	if struct["Key"] then asserts.AssertRunCommandTargetKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.RunCommandTarget[k], "RunCommandTarget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RunCommandTarget
-- <p>Information about the EC2 instances that are to be sent the command, specified as key-value pairs. Each <code>RunCommandTarget</code> block can include only one key, but this key may specify multiple values.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [RunCommandTargetValues] <p>If <code>Key</code> is <code>tag:</code> <i>tag-key</i>, <code>Values</code> is a list of tag values. If <code>Key</code> is <code>InstanceIds</code>, <code>Values</code> is a list of Amazon EC2 instance IDs.</p>
-- * Key [RunCommandTargetKey] <p>Can be either <code>tag:</code> <i>tag-key</i> or <code>InstanceIds</code>.</p>
-- Required key: Key
-- Required key: Values
-- @return RunCommandTarget structure as a key-value pair table
function M.RunCommandTarget(args)
	assert(args, "You must provide an argument table when creating RunCommandTarget")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Values"] = args["Values"],
		["Key"] = args["Key"],
	}
	asserts.AssertRunCommandTarget(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveTargetsResultEntry = { ["ErrorCode"] = true, ["ErrorMessage"] = true, ["TargetId"] = true, nil }

function asserts.AssertRemoveTargetsResultEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTargetsResultEntry to be of type 'table'")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then asserts.AssertErrorMessage(struct["ErrorMessage"]) end
	if struct["TargetId"] then asserts.AssertTargetId(struct["TargetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTargetsResultEntry[k], "RemoveTargetsResultEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTargetsResultEntry
-- <p>Represents a target that failed to be removed from a rule.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] <p>The error code that indicates why the target removal failed. If the value is <code>ConcurrentModificationException</code>, too many requests were made at the same time.</p>
-- * ErrorMessage [ErrorMessage] <p>The error message that explains why the target removal failed.</p>
-- * TargetId [TargetId] <p>The ID of the target.</p>
-- @return RemoveTargetsResultEntry structure as a key-value pair table
function M.RemoveTargetsResultEntry(args)
	assert(args, "You must provide an argument table when creating RemoveTargetsResultEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["ErrorMessage"] = args["ErrorMessage"],
		["TargetId"] = args["TargetId"],
	}
	asserts.AssertRemoveTargetsResultEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InputTransformer = { ["InputTemplate"] = true, ["InputPathsMap"] = true, nil }

function asserts.AssertInputTransformer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputTransformer to be of type 'table'")
	assert(struct["InputTemplate"], "Expected key InputTemplate to exist in table")
	if struct["InputTemplate"] then asserts.AssertTransformerInput(struct["InputTemplate"]) end
	if struct["InputPathsMap"] then asserts.AssertTransformerPaths(struct["InputPathsMap"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputTransformer[k], "InputTransformer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputTransformer
-- <p>Contains the parameters needed for you to provide custom input to a target based on one or more pieces of data extracted from the event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * InputTemplate [TransformerInput] <p>Input template where you specify placeholders that will be filled with the values of the keys from <code>InputPathsMap</code> to customize the data sent to the target. Enclose each <code>InputPathsMaps</code> value in brackets: &lt;<i>value</i>&gt; The InputTemplate must be valid JSON.</p> <p>If <code>InputTemplate</code> is a JSON object (surrounded by curly braces), the following restrictions apply:</p> <ul> <li> <p>The placeholder cannot be used as an object key.</p> </li> <li> <p>Object values cannot include quote marks.</p> </li> </ul> <p>The following example shows the syntax for using <code>InputPathsMap</code> and <code>InputTemplate</code>.</p> <p> <code> "InputTransformer":</code> </p> <p> <code>{</code> </p> <p> <code>"InputPathsMap": {"instance": "$.detail.instance","status": "$.detail.status"},</code> </p> <p> <code>"InputTemplate": "&lt;instance&gt; is in state &lt;status&gt;"</code> </p> <p> <code>}</code> </p> <p>To have the <code>InputTemplate</code> include quote marks within a JSON string, escape each quote marks with a slash, as in the following example:</p> <p> <code> "InputTransformer":</code> </p> <p> <code>{</code> </p> <p> <code>"InputPathsMap": {"instance": "$.detail.instance","status": "$.detail.status"},</code> </p> <p> <code>"InputTemplate": "&lt;instance&gt; is in state \"&lt;status&gt;\""</code> </p> <p> <code>}</code> </p>
-- * InputPathsMap [TransformerPaths] <p>Map of JSON paths to be extracted from the event. You can then insert these in the template in <code>InputTemplate</code> to produce the output you want to be sent to the target.</p> <p> <code>InputPathsMap</code> is an array key-value pairs, where each value is a valid JSON path. You can have as many as 10 key-value pairs. You must use JSON dot notation, not bracket notation.</p> <p>The keys cannot start with "AWS." </p>
-- Required key: InputTemplate
-- @return InputTransformer structure as a key-value pair table
function M.InputTransformer(args)
	assert(args, "You must provide an argument table when creating InputTransformer")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["InputTemplate"] = args["InputTemplate"],
		["InputPathsMap"] = args["InputPathsMap"],
	}
	asserts.AssertInputTransformer(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TestEventPatternRequest = { ["EventPattern"] = true, ["Event"] = true, nil }

function asserts.AssertTestEventPatternRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestEventPatternRequest to be of type 'table'")
	assert(struct["EventPattern"], "Expected key EventPattern to exist in table")
	assert(struct["Event"], "Expected key Event to exist in table")
	if struct["EventPattern"] then asserts.AssertEventPattern(struct["EventPattern"]) end
	if struct["Event"] then asserts.AssertString(struct["Event"]) end
	for k,_ in pairs(struct) do
		assert(keys.TestEventPatternRequest[k], "TestEventPatternRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestEventPatternRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventPattern [EventPattern] <p>The event pattern. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html">Events and Event Patterns</a> in the <i>Amazon CloudWatch Events User Guide</i>.</p>
-- * Event [String] <p>The event, in JSON format, to test against the event pattern.</p>
-- Required key: EventPattern
-- Required key: Event
-- @return TestEventPatternRequest structure as a key-value pair table
function M.TestEventPatternRequest(args)
	assert(args, "You must provide an argument table when creating TestEventPatternRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventPattern"] = args["EventPattern"],
		["Event"] = args["Event"],
	}
	asserts.AssertTestEventPatternRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchParameters = { ["JobName"] = true, ["RetryStrategy"] = true, ["ArrayProperties"] = true, ["JobDefinition"] = true, nil }

function asserts.AssertBatchParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchParameters to be of type 'table'")
	assert(struct["JobDefinition"], "Expected key JobDefinition to exist in table")
	assert(struct["JobName"], "Expected key JobName to exist in table")
	if struct["JobName"] then asserts.AssertString(struct["JobName"]) end
	if struct["RetryStrategy"] then asserts.AssertBatchRetryStrategy(struct["RetryStrategy"]) end
	if struct["ArrayProperties"] then asserts.AssertBatchArrayProperties(struct["ArrayProperties"]) end
	if struct["JobDefinition"] then asserts.AssertString(struct["JobDefinition"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchParameters[k], "BatchParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchParameters
-- <p>The custom parameters to be used when the target is an AWS Batch job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobName [String] <p>The name to use for this execution of the job, if the target is an AWS Batch job.</p>
-- * RetryStrategy [BatchRetryStrategy] <p>The retry strategy to use for failed jobs, if the target is an AWS Batch job. The retry strategy is the number of times to retry the failed job execution. Valid values are 1–10. When you specify a retry strategy here, it overrides the retry strategy defined in the job definition.</p>
-- * ArrayProperties [BatchArrayProperties] <p>The array properties for the submitted job, such as the size of the array. The array size can be between 2 and 10,000. If you specify array properties for a job, it becomes an array job. This parameter is used only if the target is an AWS Batch job.</p>
-- * JobDefinition [String] <p>The ARN or name of the job definition to use if the event target is an AWS Batch job. This job definition must already exist.</p>
-- Required key: JobDefinition
-- Required key: JobName
-- @return BatchParameters structure as a key-value pair table
function M.BatchParameters(args)
	assert(args, "You must provide an argument table when creating BatchParameters")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobName"] = args["JobName"],
		["RetryStrategy"] = args["RetryStrategy"],
		["ArrayProperties"] = args["ArrayProperties"],
		["JobDefinition"] = args["JobDefinition"],
	}
	asserts.AssertBatchParameters(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveTargetsRequest = { ["Ids"] = true, ["Rule"] = true, nil }

function asserts.AssertRemoveTargetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTargetsRequest to be of type 'table'")
	assert(struct["Rule"], "Expected key Rule to exist in table")
	assert(struct["Ids"], "Expected key Ids to exist in table")
	if struct["Ids"] then asserts.AssertTargetIdList(struct["Ids"]) end
	if struct["Rule"] then asserts.AssertRuleName(struct["Rule"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTargetsRequest[k], "RemoveTargetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTargetsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Ids [TargetIdList] <p>The IDs of the targets to remove from the rule.</p>
-- * Rule [RuleName] <p>The name of the rule.</p>
-- Required key: Rule
-- Required key: Ids
-- @return RemoveTargetsRequest structure as a key-value pair table
function M.RemoveTargetsRequest(args)
	assert(args, "You must provide an argument table when creating RemoveTargetsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Ids"] = args["Ids"],
		["Rule"] = args["Rule"],
	}
	asserts.AssertRemoveTargetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeRuleResponse = { ["ScheduleExpression"] = true, ["Name"] = true, ["EventPattern"] = true, ["State"] = true, ["RoleArn"] = true, ["Arn"] = true, ["Description"] = true, nil }

function asserts.AssertDescribeRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRuleResponse to be of type 'table'")
	if struct["ScheduleExpression"] then asserts.AssertScheduleExpression(struct["ScheduleExpression"]) end
	if struct["Name"] then asserts.AssertRuleName(struct["Name"]) end
	if struct["EventPattern"] then asserts.AssertEventPattern(struct["EventPattern"]) end
	if struct["State"] then asserts.AssertRuleState(struct["State"]) end
	if struct["RoleArn"] then asserts.AssertRoleArn(struct["RoleArn"]) end
	if struct["Arn"] then asserts.AssertRuleArn(struct["Arn"]) end
	if struct["Description"] then asserts.AssertRuleDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRuleResponse[k], "DescribeRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRuleResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScheduleExpression [ScheduleExpression] <p>The scheduling expression. For example, "cron(0 20 * * ? *)", "rate(5 minutes)".</p>
-- * Name [RuleName] <p>The name of the rule.</p>
-- * EventPattern [EventPattern] <p>The event pattern. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html">Events and Event Patterns</a> in the <i>Amazon CloudWatch Events User Guide</i>.</p>
-- * State [RuleState] <p>Specifies whether the rule is enabled or disabled.</p>
-- * RoleArn [RoleArn] <p>The Amazon Resource Name (ARN) of the IAM role associated with the rule.</p>
-- * Arn [RuleArn] <p>The Amazon Resource Name (ARN) of the rule.</p>
-- * Description [RuleDescription] <p>The description of the rule.</p>
-- @return DescribeRuleResponse structure as a key-value pair table
function M.DescribeRuleResponse(args)
	assert(args, "You must provide an argument table when creating DescribeRuleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScheduleExpression"] = args["ScheduleExpression"],
		["Name"] = args["Name"],
		["EventPattern"] = args["EventPattern"],
		["State"] = args["State"],
		["RoleArn"] = args["RoleArn"],
		["Arn"] = args["Arn"],
		["Description"] = args["Description"],
	}
	asserts.AssertDescribeRuleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RunCommandParameters = { ["RunCommandTargets"] = true, nil }

function asserts.AssertRunCommandParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RunCommandParameters to be of type 'table'")
	assert(struct["RunCommandTargets"], "Expected key RunCommandTargets to exist in table")
	if struct["RunCommandTargets"] then asserts.AssertRunCommandTargets(struct["RunCommandTargets"]) end
	for k,_ in pairs(struct) do
		assert(keys.RunCommandParameters[k], "RunCommandParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RunCommandParameters
-- <p>This parameter contains the criteria (either InstanceIds or a tag) used to specify which EC2 instances are to be sent the command. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RunCommandTargets [RunCommandTargets] <p>Currently, we support including only one RunCommandTarget block, which specifies either an array of InstanceIds or a tag.</p>
-- Required key: RunCommandTargets
-- @return RunCommandParameters structure as a key-value pair table
function M.RunCommandParameters(args)
	assert(args, "You must provide an argument table when creating RunCommandParameters")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RunCommandTargets"] = args["RunCommandTargets"],
	}
	asserts.AssertRunCommandParameters(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AwsVpcConfiguration = { ["Subnets"] = true, ["SecurityGroups"] = true, ["AssignPublicIp"] = true, nil }

function asserts.AssertAwsVpcConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AwsVpcConfiguration to be of type 'table'")
	assert(struct["Subnets"], "Expected key Subnets to exist in table")
	if struct["Subnets"] then asserts.AssertStringList(struct["Subnets"]) end
	if struct["SecurityGroups"] then asserts.AssertStringList(struct["SecurityGroups"]) end
	if struct["AssignPublicIp"] then asserts.AssertAssignPublicIp(struct["AssignPublicIp"]) end
	for k,_ in pairs(struct) do
		assert(keys.AwsVpcConfiguration[k], "AwsVpcConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AwsVpcConfiguration
-- <p>This structure specifies the VPC subnets and security groups for the task, and whether a public IP address is to be used. This structure is relevant only for ECS tasks that use the <code>awsvpc</code> network mode.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Subnets [StringList] <p>Specifies the subnets associated with the task. These subnets must all be in the same VPC. You can specify as many as 16 subnets.</p>
-- * SecurityGroups [StringList] <p>Specifies the security groups associated with the task. These security groups must all be in the same VPC. You can specify as many as five security groups. If you do not specify a security group, the default security group for the VPC is used.</p>
-- * AssignPublicIp [AssignPublicIp] <p>Specifies whether the task's elastic network interface receives a public IP address. You can specify <code>ENABLED</code> only when <code>LaunchType</code> in <code>EcsParameters</code> is set to <code>FARGATE</code>.</p>
-- Required key: Subnets
-- @return AwsVpcConfiguration structure as a key-value pair table
function M.AwsVpcConfiguration(args)
	assert(args, "You must provide an argument table when creating AwsVpcConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Subnets"] = args["Subnets"],
		["SecurityGroups"] = args["SecurityGroups"],
		["AssignPublicIp"] = args["AssignPublicIp"],
	}
	asserts.AssertAwsVpcConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeRuleRequest = { ["Name"] = true, nil }

function asserts.AssertDescribeRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRuleRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertRuleName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRuleRequest[k], "DescribeRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRuleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [RuleName] <p>The name of the rule.</p>
-- Required key: Name
-- @return DescribeRuleRequest structure as a key-value pair table
function M.DescribeRuleRequest(args)
	assert(args, "You must provide an argument table when creating DescribeRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDescribeRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Target = { ["RunCommandParameters"] = true, ["RoleArn"] = true, ["BatchParameters"] = true, ["InputTransformer"] = true, ["EcsParameters"] = true, ["KinesisParameters"] = true, ["InputPath"] = true, ["Input"] = true, ["SqsParameters"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Target to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	if struct["RunCommandParameters"] then asserts.AssertRunCommandParameters(struct["RunCommandParameters"]) end
	if struct["RoleArn"] then asserts.AssertRoleArn(struct["RoleArn"]) end
	if struct["BatchParameters"] then asserts.AssertBatchParameters(struct["BatchParameters"]) end
	if struct["InputTransformer"] then asserts.AssertInputTransformer(struct["InputTransformer"]) end
	if struct["EcsParameters"] then asserts.AssertEcsParameters(struct["EcsParameters"]) end
	if struct["KinesisParameters"] then asserts.AssertKinesisParameters(struct["KinesisParameters"]) end
	if struct["InputPath"] then asserts.AssertTargetInputPath(struct["InputPath"]) end
	if struct["Input"] then asserts.AssertTargetInput(struct["Input"]) end
	if struct["SqsParameters"] then asserts.AssertSqsParameters(struct["SqsParameters"]) end
	if struct["Id"] then asserts.AssertTargetId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertTargetArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Target[k], "Target contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Target
-- <p>Targets are the resources to be invoked when a rule is triggered. For a complete list of services and resources that can be set as a target, see <a>PutTargets</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RunCommandParameters [RunCommandParameters] <p>Parameters used when you are using the rule to invoke Amazon EC2 Run Command.</p>
-- * RoleArn [RoleArn] <p>The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is triggered. If one rule triggers multiple targets, you can use a different IAM role for each target.</p>
-- * BatchParameters [BatchParameters] <p>If the event target is an AWS Batch job, this contains the job definition, job name, and other parameters. For more information, see <a href="http://docs.aws.amazon.com/batch/latest/userguide/jobs.html">Jobs</a> in the <i>AWS Batch User Guide</i>.</p>
-- * InputTransformer [InputTransformer] <p>Settings to enable you to provide custom input to a target based on certain event data. You can extract one or more key-value pairs from the event and then use that data to send customized input to the target.</p>
-- * EcsParameters [EcsParameters] <p>Contains the Amazon ECS task definition and task count to be used, if the event target is an Amazon ECS task. For more information about Amazon ECS tasks, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html">Task Definitions </a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- * KinesisParameters [KinesisParameters] <p>The custom parameter you can use to control the shard assignment, when the target is a Kinesis data stream. If you do not include this parameter, the default is to use the <code>eventId</code> as the partition key.</p>
-- * InputPath [TargetInputPath] <p>The value of the JSONPath that is used for extracting part of the matched event when passing it to the target. You must use JSON dot notation, not bracket notation. For more information about JSON paths, see <a href="http://goessner.net/articles/JsonPath/">JSONPath</a>.</p>
-- * Input [TargetInput] <p>Valid JSON text passed to the target. In this case, nothing from the event itself is passed to the target. For more information, see <a href="http://www.rfc-editor.org/rfc/rfc7159.txt">The JavaScript Object Notation (JSON) Data Interchange Format</a>.</p>
-- * SqsParameters [SqsParameters] <p>Contains the message group ID to use when the target is a FIFO queue.</p> <p>If you specify an SQS FIFO queue as a target, the queue must have content-based deduplication enabled.</p>
-- * Id [TargetId] <p>The ID of the target.</p>
-- * Arn [TargetArn] <p>The Amazon Resource Name (ARN) of the target.</p>
-- Required key: Id
-- Required key: Arn
-- @return Target structure as a key-value pair table
function M.Target(args)
	assert(args, "You must provide an argument table when creating Target")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RunCommandParameters"] = args["RunCommandParameters"],
		["RoleArn"] = args["RoleArn"],
		["BatchParameters"] = args["BatchParameters"],
		["InputTransformer"] = args["InputTransformer"],
		["EcsParameters"] = args["EcsParameters"],
		["KinesisParameters"] = args["KinesisParameters"],
		["InputPath"] = args["InputPath"],
		["Input"] = args["Input"],
		["SqsParameters"] = args["SqsParameters"],
		["Id"] = args["Id"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertTarget(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRuleNamesByTargetResponse = { ["NextToken"] = true, ["RuleNames"] = true, nil }

function asserts.AssertListRuleNamesByTargetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRuleNamesByTargetResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["RuleNames"] then asserts.AssertRuleNameList(struct["RuleNames"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRuleNamesByTargetResponse[k], "ListRuleNamesByTargetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRuleNamesByTargetResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>Indicates whether there are additional results to retrieve. If there are no more results, the value is null.</p>
-- * RuleNames [RuleNameList] <p>The names of the rules that can invoke the given target.</p>
-- @return ListRuleNamesByTargetResponse structure as a key-value pair table
function M.ListRuleNamesByTargetResponse(args)
	assert(args, "You must provide an argument table when creating ListRuleNamesByTargetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["RuleNames"] = args["RuleNames"],
	}
	asserts.AssertListRuleNamesByTargetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemovePermissionRequest = { ["StatementId"] = true, nil }

function asserts.AssertRemovePermissionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemovePermissionRequest to be of type 'table'")
	assert(struct["StatementId"], "Expected key StatementId to exist in table")
	if struct["StatementId"] then asserts.AssertStatementId(struct["StatementId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemovePermissionRequest[k], "RemovePermissionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemovePermissionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StatementId [StatementId] <p>The statement ID corresponding to the account that is no longer allowed to put events to the default event bus.</p>
-- Required key: StatementId
-- @return RemovePermissionRequest structure as a key-value pair table
function M.RemovePermissionRequest(args)
	assert(args, "You must provide an argument table when creating RemovePermissionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StatementId"] = args["StatementId"],
	}
	asserts.AssertRemovePermissionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchRetryStrategy = { ["Attempts"] = true, nil }

function asserts.AssertBatchRetryStrategy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchRetryStrategy to be of type 'table'")
	if struct["Attempts"] then asserts.AssertInteger(struct["Attempts"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchRetryStrategy[k], "BatchRetryStrategy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchRetryStrategy
-- <p>The retry strategy to use for failed jobs, if the target is an AWS Batch job. If you specify a retry strategy here, it overrides the retry strategy defined in the job definition.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attempts [Integer] <p>The number of times to attempt to retry, if the job fails. Valid values are 1–10.</p>
-- @return BatchRetryStrategy structure as a key-value pair table
function M.BatchRetryStrategy(args)
	assert(args, "You must provide an argument table when creating BatchRetryStrategy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attempts"] = args["Attempts"],
	}
	asserts.AssertBatchRetryStrategy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutEventsRequestEntry = { ["Source"] = true, ["DetailType"] = true, ["Detail"] = true, ["Resources"] = true, ["Time"] = true, nil }

function asserts.AssertPutEventsRequestEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEventsRequestEntry to be of type 'table'")
	if struct["Source"] then asserts.AssertString(struct["Source"]) end
	if struct["DetailType"] then asserts.AssertString(struct["DetailType"]) end
	if struct["Detail"] then asserts.AssertString(struct["Detail"]) end
	if struct["Resources"] then asserts.AssertEventResourceList(struct["Resources"]) end
	if struct["Time"] then asserts.AssertEventTime(struct["Time"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutEventsRequestEntry[k], "PutEventsRequestEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEventsRequestEntry
-- <p>Represents an event to be submitted.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Source [String] <p>The source of the event. This field is required.</p>
-- * DetailType [String] <p>Free-form string used to decide what fields to expect in the event detail.</p>
-- * Detail [String] <p>A valid JSON string. There is no other schema imposed. The JSON string may contain fields and nested subobjects.</p>
-- * Resources [EventResourceList] <p>AWS resources, identified by Amazon Resource Name (ARN), which the event primarily concerns. Any number, including zero, may be present.</p>
-- * Time [EventTime] <p>The time stamp of the event, per <a href="https://www.rfc-editor.org/rfc/rfc3339.txt">RFC3339</a>. If no time stamp is provided, the time stamp of the <a>PutEvents</a> call is used.</p>
-- @return PutEventsRequestEntry structure as a key-value pair table
function M.PutEventsRequestEntry(args)
	assert(args, "You must provide an argument table when creating PutEventsRequestEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Source"] = args["Source"],
		["DetailType"] = args["DetailType"],
		["Detail"] = args["Detail"],
		["Resources"] = args["Resources"],
		["Time"] = args["Time"],
	}
	asserts.AssertPutEventsRequestEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchArrayProperties = { ["Size"] = true, nil }

function asserts.AssertBatchArrayProperties(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchArrayProperties to be of type 'table'")
	if struct["Size"] then asserts.AssertInteger(struct["Size"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchArrayProperties[k], "BatchArrayProperties contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchArrayProperties
-- <p>The array properties for the submitted job, such as the size of the array. The array size can be between 2 and 10,000. If you specify array properties for a job, it becomes an array job. This parameter is used only if the target is an AWS Batch job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Size [Integer] <p>The size of the array, if this is an array batch job. Valid values are integers between 2 and 10,000.</p>
-- @return BatchArrayProperties structure as a key-value pair table
function M.BatchArrayProperties(args)
	assert(args, "You must provide an argument table when creating BatchArrayProperties")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Size"] = args["Size"],
	}
	asserts.AssertBatchArrayProperties(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRulesRequest = { ["NextToken"] = true, ["Limit"] = true, ["NamePrefix"] = true, nil }

function asserts.AssertListRulesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRulesRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertLimitMax100(struct["Limit"]) end
	if struct["NamePrefix"] then asserts.AssertRuleName(struct["NamePrefix"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRulesRequest[k], "ListRulesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRulesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token returned by a previous call to retrieve the next set of results.</p>
-- * Limit [LimitMax100] <p>The maximum number of results to return.</p>
-- * NamePrefix [RuleName] <p>The prefix matching the rule name.</p>
-- @return ListRulesRequest structure as a key-value pair table
function M.ListRulesRequest(args)
	assert(args, "You must provide an argument table when creating ListRulesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
		["NamePrefix"] = args["NamePrefix"],
	}
	asserts.AssertListRulesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutTargetsResultEntry = { ["ErrorCode"] = true, ["ErrorMessage"] = true, ["TargetId"] = true, nil }

function asserts.AssertPutTargetsResultEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutTargetsResultEntry to be of type 'table'")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then asserts.AssertErrorMessage(struct["ErrorMessage"]) end
	if struct["TargetId"] then asserts.AssertTargetId(struct["TargetId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutTargetsResultEntry[k], "PutTargetsResultEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutTargetsResultEntry
-- <p>Represents a target that failed to be added to a rule.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] <p>The error code that indicates why the target addition failed. If the value is <code>ConcurrentModificationException</code>, too many requests were made at the same time.</p>
-- * ErrorMessage [ErrorMessage] <p>The error message that explains why the target addition failed.</p>
-- * TargetId [TargetId] <p>The ID of the target.</p>
-- @return PutTargetsResultEntry structure as a key-value pair table
function M.PutTargetsResultEntry(args)
	assert(args, "You must provide an argument table when creating PutTargetsResultEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["ErrorMessage"] = args["ErrorMessage"],
		["TargetId"] = args["TargetId"],
	}
	asserts.AssertPutTargetsResultEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EcsParameters = { ["NetworkConfiguration"] = true, ["LaunchType"] = true, ["Group"] = true, ["TaskCount"] = true, ["PlatformVersion"] = true, ["TaskDefinitionArn"] = true, nil }

function asserts.AssertEcsParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EcsParameters to be of type 'table'")
	assert(struct["TaskDefinitionArn"], "Expected key TaskDefinitionArn to exist in table")
	if struct["NetworkConfiguration"] then asserts.AssertNetworkConfiguration(struct["NetworkConfiguration"]) end
	if struct["LaunchType"] then asserts.AssertLaunchType(struct["LaunchType"]) end
	if struct["Group"] then asserts.AssertString(struct["Group"]) end
	if struct["TaskCount"] then asserts.AssertLimitMin1(struct["TaskCount"]) end
	if struct["PlatformVersion"] then asserts.AssertString(struct["PlatformVersion"]) end
	if struct["TaskDefinitionArn"] then asserts.AssertArn(struct["TaskDefinitionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.EcsParameters[k], "EcsParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EcsParameters
-- <p>The custom parameters to be used when the target is an Amazon ECS task.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NetworkConfiguration [NetworkConfiguration] <p>Use this structure if the ECS task uses the <code>awsvpc</code> network mode. This structure specifies the VPC subnets and security groups associated with the task, and whether a public IP address is to be used. This structure is required if <code>LaunchType</code> is <code>FARGATE</code> because the <code>awsvpc</code> mode is required for Fargate tasks.</p> <p>If you specify <code>NetworkConfiguration</code> when the target ECS task does not use the <code>awsvpc</code> network mode, the task fails.</p>
-- * LaunchType [LaunchType] <p>Specifies the launch type on which your task is running. The launch type that you specify here must match one of the launch type (compatibilities) of the target task. The <code>FARGATE</code> value is supported only in the Regions where AWS Fargate with Amazon ECS is supported. For more information, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/AWS-Fargate.html">AWS Fargate on Amazon ECS</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
-- * Group [String] <p>Specifies an ECS task group for the task. The maximum length is 255 characters.</p>
-- * TaskCount [LimitMin1] <p>The number of tasks to create based on <code>TaskDefinition</code>. The default is 1.</p>
-- * PlatformVersion [String] <p>Specifies the platform version for the task. Specify only the numeric portion of the platform version, such as <code>1.1.0</code>.</p> <p>This structure is used only if <code>LaunchType</code> is <code>FARGATE</code>. For more information about valid platform versions, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html">AWS Fargate Platform Versions</a> in the <i>Amazon Elastic Container Service Developer Guide</i>.</p>
-- * TaskDefinitionArn [Arn] <p>The ARN of the task definition to use if the event target is an Amazon ECS task. </p>
-- Required key: TaskDefinitionArn
-- @return EcsParameters structure as a key-value pair table
function M.EcsParameters(args)
	assert(args, "You must provide an argument table when creating EcsParameters")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NetworkConfiguration"] = args["NetworkConfiguration"],
		["LaunchType"] = args["LaunchType"],
		["Group"] = args["Group"],
		["TaskCount"] = args["TaskCount"],
		["PlatformVersion"] = args["PlatformVersion"],
		["TaskDefinitionArn"] = args["TaskDefinitionArn"],
	}
	asserts.AssertEcsParameters(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SqsParameters = { ["MessageGroupId"] = true, nil }

function asserts.AssertSqsParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SqsParameters to be of type 'table'")
	if struct["MessageGroupId"] then asserts.AssertMessageGroupId(struct["MessageGroupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SqsParameters[k], "SqsParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SqsParameters
-- <p>This structure includes the custom parameter to be used when the target is an SQS FIFO queue.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MessageGroupId [MessageGroupId] <p>The FIFO message group ID to use as the target.</p>
-- @return SqsParameters structure as a key-value pair table
function M.SqsParameters(args)
	assert(args, "You must provide an argument table when creating SqsParameters")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MessageGroupId"] = args["MessageGroupId"],
	}
	asserts.AssertSqsParameters(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Condition = { ["Type"] = true, ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertCondition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Condition to be of type 'table'")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	if struct["Value"] then asserts.AssertString(struct["Value"]) end
	if struct["Key"] then asserts.AssertString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Condition[k], "Condition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Condition
-- <p>A JSON string which you can use to limit the event bus permissions you are granting to only accounts that fulfill the condition. Currently, the only supported condition is membership in a certain AWS organization. The string must contain <code>Type</code>, <code>Key</code>, and <code>Value</code> fields. The <code>Value</code> field specifies the ID of the AWS organization. Following is an example value for <code>Condition</code>:</p> <p> <code>'{"Type" : "StringEquals", "Key": "aws:PrincipalOrgID", "Value": "o-1234567890"}'</code> </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Type [String] <p>Specifies the type of condition. Currently the only supported value is <code>StringEquals</code>.</p>
-- * Value [String] <p>Specifies the value for the key. Currently, this must be the ID of the organization.</p>
-- * Key [String] <p>Specifies the key for the condition. Currently the only supported key is <code>aws:PrincipalOrgID</code>.</p>
-- Required key: Type
-- Required key: Key
-- Required key: Value
-- @return Condition structure as a key-value pair table
function M.Condition(args)
	assert(args, "You must provide an argument table when creating Condition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Type"] = args["Type"],
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertCondition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutEventsResultEntry = { ["EventId"] = true, ["ErrorCode"] = true, ["ErrorMessage"] = true, nil }

function asserts.AssertPutEventsResultEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEventsResultEntry to be of type 'table'")
	if struct["EventId"] then asserts.AssertEventId(struct["EventId"]) end
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then asserts.AssertErrorMessage(struct["ErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutEventsResultEntry[k], "PutEventsResultEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEventsResultEntry
-- <p>Represents an event that failed to be submitted.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventId [EventId] <p>The ID of the event.</p>
-- * ErrorCode [ErrorCode] <p>The error code that indicates why the event submission failed.</p>
-- * ErrorMessage [ErrorMessage] <p>The error message that explains why the event submission failed.</p>
-- @return PutEventsResultEntry structure as a key-value pair table
function M.PutEventsResultEntry(args)
	assert(args, "You must provide an argument table when creating PutEventsResultEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventId"] = args["EventId"],
		["ErrorCode"] = args["ErrorCode"],
		["ErrorMessage"] = args["ErrorMessage"],
	}
	asserts.AssertPutEventsResultEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TestEventPatternResponse = { ["Result"] = true, nil }

function asserts.AssertTestEventPatternResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestEventPatternResponse to be of type 'table'")
	if struct["Result"] then asserts.AssertBoolean(struct["Result"]) end
	for k,_ in pairs(struct) do
		assert(keys.TestEventPatternResponse[k], "TestEventPatternResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestEventPatternResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Result [Boolean] <p>Indicates whether the event matches the event pattern.</p>
-- @return TestEventPatternResponse structure as a key-value pair table
function M.TestEventPatternResponse(args)
	assert(args, "You must provide an argument table when creating TestEventPatternResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Result"] = args["Result"],
	}
	asserts.AssertTestEventPatternResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Rule = { ["ScheduleExpression"] = true, ["Name"] = true, ["EventPattern"] = true, ["State"] = true, ["RoleArn"] = true, ["Arn"] = true, ["Description"] = true, nil }

function asserts.AssertRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Rule to be of type 'table'")
	if struct["ScheduleExpression"] then asserts.AssertScheduleExpression(struct["ScheduleExpression"]) end
	if struct["Name"] then asserts.AssertRuleName(struct["Name"]) end
	if struct["EventPattern"] then asserts.AssertEventPattern(struct["EventPattern"]) end
	if struct["State"] then asserts.AssertRuleState(struct["State"]) end
	if struct["RoleArn"] then asserts.AssertRoleArn(struct["RoleArn"]) end
	if struct["Arn"] then asserts.AssertRuleArn(struct["Arn"]) end
	if struct["Description"] then asserts.AssertRuleDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.Rule[k], "Rule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Rule
-- <p>Contains information about a rule in Amazon CloudWatch Events.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScheduleExpression [ScheduleExpression] <p>The scheduling expression. For example, "cron(0 20 * * ? *)", "rate(5 minutes)".</p>
-- * Name [RuleName] <p>The name of the rule.</p>
-- * EventPattern [EventPattern] <p>The event pattern of the rule. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html">Events and Event Patterns</a> in the <i>Amazon CloudWatch Events User Guide</i>.</p>
-- * State [RuleState] <p>The state of the rule.</p>
-- * RoleArn [RoleArn] <p>The Amazon Resource Name (ARN) of the role that is used for target invocation.</p>
-- * Arn [RuleArn] <p>The Amazon Resource Name (ARN) of the rule.</p>
-- * Description [RuleDescription] <p>The description of the rule.</p>
-- @return Rule structure as a key-value pair table
function M.Rule(args)
	assert(args, "You must provide an argument table when creating Rule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScheduleExpression"] = args["ScheduleExpression"],
		["Name"] = args["Name"],
		["EventPattern"] = args["EventPattern"],
		["State"] = args["State"],
		["RoleArn"] = args["RoleArn"],
		["Arn"] = args["Arn"],
		["Description"] = args["Description"],
	}
	asserts.AssertRule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutRuleResponse = { ["RuleArn"] = true, nil }

function asserts.AssertPutRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRuleResponse to be of type 'table'")
	if struct["RuleArn"] then asserts.AssertRuleArn(struct["RuleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRuleResponse[k], "PutRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRuleResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RuleArn [RuleArn] <p>The Amazon Resource Name (ARN) of the rule.</p>
-- @return PutRuleResponse structure as a key-value pair table
function M.PutRuleResponse(args)
	assert(args, "You must provide an argument table when creating PutRuleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RuleArn"] = args["RuleArn"],
	}
	asserts.AssertPutRuleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutRuleRequest = { ["ScheduleExpression"] = true, ["Name"] = true, ["RoleArn"] = true, ["State"] = true, ["EventPattern"] = true, ["Description"] = true, nil }

function asserts.AssertPutRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRuleRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["ScheduleExpression"] then asserts.AssertScheduleExpression(struct["ScheduleExpression"]) end
	if struct["Name"] then asserts.AssertRuleName(struct["Name"]) end
	if struct["RoleArn"] then asserts.AssertRoleArn(struct["RoleArn"]) end
	if struct["State"] then asserts.AssertRuleState(struct["State"]) end
	if struct["EventPattern"] then asserts.AssertEventPattern(struct["EventPattern"]) end
	if struct["Description"] then asserts.AssertRuleDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRuleRequest[k], "PutRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRuleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScheduleExpression [ScheduleExpression] <p>The scheduling expression. For example, "cron(0 20 * * ? *)" or "rate(5 minutes)".</p>
-- * Name [RuleName] <p>The name of the rule that you are creating or updating.</p>
-- * RoleArn [RoleArn] <p>The Amazon Resource Name (ARN) of the IAM role associated with the rule.</p>
-- * State [RuleState] <p>Indicates whether the rule is enabled or disabled.</p>
-- * EventPattern [EventPattern] <p>The event pattern. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html">Events and Event Patterns</a> in the <i>Amazon CloudWatch Events User Guide</i>.</p>
-- * Description [RuleDescription] <p>A description of the rule.</p>
-- Required key: Name
-- @return PutRuleRequest structure as a key-value pair table
function M.PutRuleRequest(args)
	assert(args, "You must provide an argument table when creating PutRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScheduleExpression"] = args["ScheduleExpression"],
		["Name"] = args["Name"],
		["RoleArn"] = args["RoleArn"],
		["State"] = args["State"],
		["EventPattern"] = args["EventPattern"],
		["Description"] = args["Description"],
	}
	asserts.AssertPutRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NetworkConfiguration = { ["awsvpcConfiguration"] = true, nil }

function asserts.AssertNetworkConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NetworkConfiguration to be of type 'table'")
	if struct["awsvpcConfiguration"] then asserts.AssertAwsVpcConfiguration(struct["awsvpcConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.NetworkConfiguration[k], "NetworkConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NetworkConfiguration
-- <p>This structure specifies the network configuration for an ECS task.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * awsvpcConfiguration [AwsVpcConfiguration] <p>Use this structure to specify the VPC subnets and security groups for the task, and whether a public IP address is to be used. This structure is relevant only for ECS tasks that use the <code>awsvpc</code> network mode.</p>
-- @return NetworkConfiguration structure as a key-value pair table
function M.NetworkConfiguration(args)
	assert(args, "You must provide an argument table when creating NetworkConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["awsvpcConfiguration"] = args["awsvpcConfiguration"],
	}
	asserts.AssertNetworkConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEventBusResponse = { ["Policy"] = true, ["Name"] = true, ["Arn"] = true, nil }

function asserts.AssertDescribeEventBusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventBusResponse to be of type 'table'")
	if struct["Policy"] then asserts.AssertString(struct["Policy"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Arn"] then asserts.AssertString(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventBusResponse[k], "DescribeEventBusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventBusResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Policy [String] <p>The policy that enables the external account to send events to your account.</p>
-- * Name [String] <p>The name of the event bus. Currently, this is always <code>default</code>.</p>
-- * Arn [String] <p>The Amazon Resource Name (ARN) of the account permitted to write events to the current account.</p>
-- @return DescribeEventBusResponse structure as a key-value pair table
function M.DescribeEventBusResponse(args)
	assert(args, "You must provide an argument table when creating DescribeEventBusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Policy"] = args["Policy"],
		["Name"] = args["Name"],
		["Arn"] = args["Arn"],
	}
	asserts.AssertDescribeEventBusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutEventsResponse = { ["FailedEntryCount"] = true, ["Entries"] = true, nil }

function asserts.AssertPutEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEventsResponse to be of type 'table'")
	if struct["FailedEntryCount"] then asserts.AssertInteger(struct["FailedEntryCount"]) end
	if struct["Entries"] then asserts.AssertPutEventsResultEntryList(struct["Entries"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutEventsResponse[k], "PutEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEventsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailedEntryCount [Integer] <p>The number of failed entries.</p>
-- * Entries [PutEventsResultEntryList] <p>The successfully and unsuccessfully ingested events results. If the ingestion was successful, the entry has the event ID in it. Otherwise, you can use the error code and error message to identify the problem with the entry.</p>
-- @return PutEventsResponse structure as a key-value pair table
function M.PutEventsResponse(args)
	assert(args, "You must provide an argument table when creating PutEventsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FailedEntryCount"] = args["FailedEntryCount"],
		["Entries"] = args["Entries"],
	}
	asserts.AssertPutEventsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTargetsByRuleResponse = { ["NextToken"] = true, ["Targets"] = true, nil }

function asserts.AssertListTargetsByRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTargetsByRuleResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Targets"] then asserts.AssertTargetList(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTargetsByRuleResponse[k], "ListTargetsByRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTargetsByRuleResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>Indicates whether there are additional results to retrieve. If there are no more results, the value is null.</p>
-- * Targets [TargetList] <p>The targets assigned to the rule.</p>
-- @return ListTargetsByRuleResponse structure as a key-value pair table
function M.ListTargetsByRuleResponse(args)
	assert(args, "You must provide an argument table when creating ListTargetsByRuleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Targets"] = args["Targets"],
	}
	asserts.AssertListTargetsByRuleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveTargetsResponse = { ["FailedEntries"] = true, ["FailedEntryCount"] = true, nil }

function asserts.AssertRemoveTargetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTargetsResponse to be of type 'table'")
	if struct["FailedEntries"] then asserts.AssertRemoveTargetsResultEntryList(struct["FailedEntries"]) end
	if struct["FailedEntryCount"] then asserts.AssertInteger(struct["FailedEntryCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTargetsResponse[k], "RemoveTargetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTargetsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FailedEntries [RemoveTargetsResultEntryList] <p>The failed target entries.</p>
-- * FailedEntryCount [Integer] <p>The number of failed entries.</p>
-- @return RemoveTargetsResponse structure as a key-value pair table
function M.RemoveTargetsResponse(args)
	assert(args, "You must provide an argument table when creating RemoveTargetsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FailedEntries"] = args["FailedEntries"],
		["FailedEntryCount"] = args["FailedEntryCount"],
	}
	asserts.AssertRemoveTargetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.KinesisParameters = { ["PartitionKeyPath"] = true, nil }

function asserts.AssertKinesisParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisParameters to be of type 'table'")
	assert(struct["PartitionKeyPath"], "Expected key PartitionKeyPath to exist in table")
	if struct["PartitionKeyPath"] then asserts.AssertTargetPartitionKeyPath(struct["PartitionKeyPath"]) end
	for k,_ in pairs(struct) do
		assert(keys.KinesisParameters[k], "KinesisParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisParameters
-- <p>This object enables you to specify a JSON path to extract from the event and use as the partition key for the Amazon Kinesis data stream, so that you can control the shard to which the event goes. If you do not include this parameter, the default is to use the <code>eventId</code> as the partition key.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PartitionKeyPath [TargetPartitionKeyPath] <p>The JSON path to be extracted from the event and used as the partition key. For more information, see <a href="http://docs.aws.amazon.com/streams/latest/dev/key-concepts.html#partition-key">Amazon Kinesis Streams Key Concepts</a> in the <i>Amazon Kinesis Streams Developer Guide</i>.</p>
-- Required key: PartitionKeyPath
-- @return KinesisParameters structure as a key-value pair table
function M.KinesisParameters(args)
	assert(args, "You must provide an argument table when creating KinesisParameters")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PartitionKeyPath"] = args["PartitionKeyPath"],
	}
	asserts.AssertKinesisParameters(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListRulesResponse = { ["Rules"] = true, ["NextToken"] = true, nil }

function asserts.AssertListRulesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRulesResponse to be of type 'table'")
	if struct["Rules"] then asserts.AssertRuleResponseList(struct["Rules"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRulesResponse[k], "ListRulesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRulesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rules [RuleResponseList] <p>The rules that match the specified criteria.</p>
-- * NextToken [NextToken] <p>Indicates whether there are additional results to retrieve. If there are no more results, the value is null.</p>
-- @return ListRulesResponse structure as a key-value pair table
function M.ListRulesResponse(args)
	assert(args, "You must provide an argument table when creating ListRulesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rules"] = args["Rules"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListRulesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisableRuleRequest = { ["Name"] = true, nil }

function asserts.AssertDisableRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableRuleRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertRuleName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisableRuleRequest[k], "DisableRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableRuleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [RuleName] <p>The name of the rule.</p>
-- Required key: Name
-- @return DisableRuleRequest structure as a key-value pair table
function M.DisableRuleRequest(args)
	assert(args, "You must provide an argument table when creating DisableRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDisableRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTargetsByRuleRequest = { ["NextToken"] = true, ["Limit"] = true, ["Rule"] = true, nil }

function asserts.AssertListTargetsByRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTargetsByRuleRequest to be of type 'table'")
	assert(struct["Rule"], "Expected key Rule to exist in table")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Limit"] then asserts.AssertLimitMax100(struct["Limit"]) end
	if struct["Rule"] then asserts.AssertRuleName(struct["Rule"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTargetsByRuleRequest[k], "ListTargetsByRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTargetsByRuleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token returned by a previous call to retrieve the next set of results.</p>
-- * Limit [LimitMax100] <p>The maximum number of results to return.</p>
-- * Rule [RuleName] <p>The name of the rule.</p>
-- Required key: Rule
-- @return ListTargetsByRuleRequest structure as a key-value pair table
function M.ListTargetsByRuleRequest(args)
	assert(args, "You must provide an argument table when creating ListTargetsByRuleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Limit"] = args["Limit"],
		["Rule"] = args["Rule"],
	}
	asserts.AssertListTargetsByRuleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutEventsRequest = { ["Entries"] = true, nil }

function asserts.AssertPutEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEventsRequest to be of type 'table'")
	assert(struct["Entries"], "Expected key Entries to exist in table")
	if struct["Entries"] then asserts.AssertPutEventsRequestEntryList(struct["Entries"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutEventsRequest[k], "PutEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEventsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Entries [PutEventsRequestEntryList] <p>The entry that defines an event in your system. You can specify several parameters for the entry such as the source and type of the event, resources associated with the event, and so on.</p>
-- Required key: Entries
-- @return PutEventsRequest structure as a key-value pair table
function M.PutEventsRequest(args)
	assert(args, "You must provide an argument table when creating PutEventsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Entries"] = args["Entries"],
	}
	asserts.AssertPutEventsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeEventBusRequest = { nil }

function asserts.AssertDescribeEventBusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeEventBusRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DescribeEventBusRequest[k], "DescribeEventBusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeEventBusRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DescribeEventBusRequest structure as a key-value pair table
function M.DescribeEventBusRequest(args)
	assert(args, "You must provide an argument table when creating DescribeEventBusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDescribeEventBusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertAction(str)
	assert(str)
	assert(type(str) == "string", "Expected Action to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Action(str)
	asserts.AssertAction(str)
	return str
end

function asserts.AssertEventPattern(str)
	assert(str)
	assert(type(str) == "string", "Expected EventPattern to be of type 'string'")
end

--  
function M.EventPattern(str)
	asserts.AssertEventPattern(str)
	return str
end

function asserts.AssertMessageGroupId(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageGroupId to be of type 'string'")
end

--  
function M.MessageGroupId(str)
	asserts.AssertMessageGroupId(str)
	return str
end

function asserts.AssertTargetInput(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetInput to be of type 'string'")
	assert(#str <= 8192, "Expected string to be max 8192 characters")
end

--  
function M.TargetInput(str)
	asserts.AssertTargetInput(str)
	return str
end

function asserts.AssertTransformerInput(str)
	assert(str)
	assert(type(str) == "string", "Expected TransformerInput to be of type 'string'")
	assert(#str <= 8192, "Expected string to be max 8192 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TransformerInput(str)
	asserts.AssertTransformerInput(str)
	return str
end

function asserts.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Arn(str)
	asserts.AssertArn(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertRuleDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleDescription to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
end

--  
function M.RuleDescription(str)
	asserts.AssertRuleDescription(str)
	return str
end

function asserts.AssertLaunchType(str)
	assert(str)
	assert(type(str) == "string", "Expected LaunchType to be of type 'string'")
end

--  
function M.LaunchType(str)
	asserts.AssertLaunchType(str)
	return str
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertTargetInputPath(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetInputPath to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TargetInputPath(str)
	asserts.AssertTargetInputPath(str)
	return str
end

function asserts.AssertAssignPublicIp(str)
	assert(str)
	assert(type(str) == "string", "Expected AssignPublicIp to be of type 'string'")
end

--  
function M.AssignPublicIp(str)
	asserts.AssertAssignPublicIp(str)
	return str
end

function asserts.AssertTargetArn(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetArn to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TargetArn(str)
	asserts.AssertTargetArn(str)
	return str
end

function asserts.AssertTargetPartitionKeyPath(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetPartitionKeyPath to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TargetPartitionKeyPath(str)
	asserts.AssertTargetPartitionKeyPath(str)
	return str
end

function asserts.AssertRunCommandTargetKey(str)
	assert(str)
	assert(type(str) == "string", "Expected RunCommandTargetKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RunCommandTargetKey(str)
	asserts.AssertRunCommandTargetKey(str)
	return str
end

function asserts.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
end

--  
function M.ErrorCode(str)
	asserts.AssertErrorCode(str)
	return str
end

function asserts.AssertRunCommandTargetValue(str)
	assert(str)
	assert(type(str) == "string", "Expected RunCommandTargetValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RunCommandTargetValue(str)
	asserts.AssertRunCommandTargetValue(str)
	return str
end

function asserts.AssertRuleState(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleState to be of type 'string'")
end

--  
function M.RuleState(str)
	asserts.AssertRuleState(str)
	return str
end

function asserts.AssertRuleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleArn to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RuleArn(str)
	asserts.AssertRuleArn(str)
	return str
end

function asserts.AssertInputTransformerPathKey(str)
	assert(str)
	assert(type(str) == "string", "Expected InputTransformerPathKey to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.InputTransformerPathKey(str)
	asserts.AssertInputTransformerPathKey(str)
	return str
end

function asserts.AssertStatementId(str)
	assert(str)
	assert(type(str) == "string", "Expected StatementId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StatementId(str)
	asserts.AssertStatementId(str)
	return str
end

function asserts.AssertRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleArn to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RoleArn(str)
	asserts.AssertRoleArn(str)
	return str
end

function asserts.AssertScheduleExpression(str)
	assert(str)
	assert(type(str) == "string", "Expected ScheduleExpression to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.ScheduleExpression(str)
	asserts.AssertScheduleExpression(str)
	return str
end

function asserts.AssertTargetId(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TargetId(str)
	asserts.AssertTargetId(str)
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

function asserts.AssertEventResource(str)
	assert(str)
	assert(type(str) == "string", "Expected EventResource to be of type 'string'")
end

--  
function M.EventResource(str)
	asserts.AssertEventResource(str)
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

function asserts.AssertRuleName(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RuleName(str)
	asserts.AssertRuleName(str)
	return str
end

function asserts.AssertPrincipal(str)
	assert(str)
	assert(type(str) == "string", "Expected Principal to be of type 'string'")
	assert(#str <= 12, "Expected string to be max 12 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Principal(str)
	asserts.AssertPrincipal(str)
	return str
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

function asserts.AssertLimitMin1(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected LimitMin1 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.LimitMin1(integer)
	asserts.AssertLimitMin1(integer)
	return integer
end

function asserts.AssertLimitMax100(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected LimitMax100 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.LimitMax100(integer)
	asserts.AssertLimitMax100(integer)
	return integer
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertTransformerPaths(map)
	assert(map)
	assert(type(map) == "table", "Expected TransformerPaths to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertInputTransformerPathKey(k)
		asserts.AssertTargetInputPath(v)
	end
end

function M.TransformerPaths(map)
	asserts.AssertTransformerPaths(map)
	return map
end

function asserts.AssertEventTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected EventTime to be of type 'string'")
end

function M.EventTime(timestamp)
	asserts.AssertEventTime(timestamp)
	return timestamp
end

function asserts.AssertRuleResponseList(list)
	assert(list)
	assert(type(list) == "table", "Expected RuleResponseList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRule(v)
	end
end

--  
-- List of Rule objects
function M.RuleResponseList(list)
	asserts.AssertRuleResponseList(list)
	return list
end

function asserts.AssertRunCommandTargets(list)
	assert(list)
	assert(type(list) == "table", "Expected RunCommandTargets to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertRunCommandTarget(v)
	end
end

--  
-- List of RunCommandTarget objects
function M.RunCommandTargets(list)
	asserts.AssertRunCommandTargets(list)
	return list
end

function asserts.AssertPutEventsRequestEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PutEventsRequestEntryList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertPutEventsRequestEntry(v)
	end
end

--  
-- List of PutEventsRequestEntry objects
function M.PutEventsRequestEntryList(list)
	asserts.AssertPutEventsRequestEntryList(list)
	return list
end

function asserts.AssertRuleNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected RuleNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRuleName(v)
	end
end

--  
-- List of RuleName objects
function M.RuleNameList(list)
	asserts.AssertRuleNameList(list)
	return list
end

function asserts.AssertTargetIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetIdList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertTargetId(v)
	end
end

--  
-- List of TargetId objects
function M.TargetIdList(list)
	asserts.AssertTargetIdList(list)
	return list
end

function asserts.AssertEventResourceList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventResourceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventResource(v)
	end
end

--  
-- List of EventResource objects
function M.EventResourceList(list)
	asserts.AssertEventResourceList(list)
	return list
end

function asserts.AssertPutTargetsResultEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PutTargetsResultEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPutTargetsResultEntry(v)
	end
end

--  
-- List of PutTargetsResultEntry objects
function M.PutTargetsResultEntryList(list)
	asserts.AssertPutTargetsResultEntryList(list)
	return list
end

function asserts.AssertRunCommandTargetValues(list)
	assert(list)
	assert(type(list) == "table", "Expected RunCommandTargetValues to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertRunCommandTargetValue(v)
	end
end

--  
-- List of RunCommandTargetValue objects
function M.RunCommandTargetValues(list)
	asserts.AssertRunCommandTargetValues(list)
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

function asserts.AssertPutEventsResultEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PutEventsResultEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPutEventsResultEntry(v)
	end
end

--  
-- List of PutEventsResultEntry objects
function M.PutEventsResultEntryList(list)
	asserts.AssertPutEventsResultEntryList(list)
	return list
end

function asserts.AssertRemoveTargetsResultEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected RemoveTargetsResultEntryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRemoveTargetsResultEntry(v)
	end
end

--  
-- List of RemoveTargetsResultEntry objects
function M.RemoveTargetsResultEntryList(list)
	asserts.AssertRemoveTargetsResultEntryList(list)
	return list
end

function asserts.AssertTargetList(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertTarget(v)
	end
end

--  
-- List of Target objects
function M.TargetList(list)
	asserts.AssertTargetList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "events.amazonaws.com"
		end
	end
	local ss = { "events" }
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
--- Call PutEvents asynchronously, invoking a callback when done
-- @param PutEventsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutEventsAsync(PutEventsRequest, cb)
	assert(PutEventsRequest, "You must provide a PutEventsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSEvents.PutEvents",
	}
	for header,value in pairs(PutEventsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutEventsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutEventsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutEventsSync(PutEventsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutEventsAsync(PutEventsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableRule asynchronously, invoking a callback when done
-- @param EnableRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.EnableRuleAsync(EnableRuleRequest, cb)
	assert(EnableRuleRequest, "You must provide a EnableRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSEvents.EnableRule",
	}
	for header,value in pairs(EnableRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", EnableRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call EnableRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.EnableRuleSync(EnableRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableRuleAsync(EnableRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeRule asynchronously, invoking a callback when done
-- @param DescribeRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeRuleAsync(DescribeRuleRequest, cb)
	assert(DescribeRuleRequest, "You must provide a DescribeRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSEvents.DescribeRule",
	}
	for header,value in pairs(DescribeRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeRuleSync(DescribeRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeRuleAsync(DescribeRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTargetsByRule asynchronously, invoking a callback when done
-- @param ListTargetsByRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTargetsByRuleAsync(ListTargetsByRuleRequest, cb)
	assert(ListTargetsByRuleRequest, "You must provide a ListTargetsByRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSEvents.ListTargetsByRule",
	}
	for header,value in pairs(ListTargetsByRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTargetsByRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTargetsByRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTargetsByRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTargetsByRuleSync(ListTargetsByRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTargetsByRuleAsync(ListTargetsByRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutPermission asynchronously, invoking a callback when done
-- @param PutPermissionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutPermissionAsync(PutPermissionRequest, cb)
	assert(PutPermissionRequest, "You must provide a PutPermissionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSEvents.PutPermission",
	}
	for header,value in pairs(PutPermissionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutPermissionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutPermission synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutPermissionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutPermissionSync(PutPermissionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutPermissionAsync(PutPermissionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutTargets asynchronously, invoking a callback when done
-- @param PutTargetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutTargetsAsync(PutTargetsRequest, cb)
	assert(PutTargetsRequest, "You must provide a PutTargetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSEvents.PutTargets",
	}
	for header,value in pairs(PutTargetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutTargetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutTargets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutTargetsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutTargetsSync(PutTargetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutTargetsAsync(PutTargetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRule asynchronously, invoking a callback when done
-- @param DeleteRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRuleAsync(DeleteRuleRequest, cb)
	assert(DeleteRuleRequest, "You must provide a DeleteRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSEvents.DeleteRule",
	}
	for header,value in pairs(DeleteRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRuleSync(DeleteRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRuleAsync(DeleteRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRuleNamesByTarget asynchronously, invoking a callback when done
-- @param ListRuleNamesByTargetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListRuleNamesByTargetAsync(ListRuleNamesByTargetRequest, cb)
	assert(ListRuleNamesByTargetRequest, "You must provide a ListRuleNamesByTargetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSEvents.ListRuleNamesByTarget",
	}
	for header,value in pairs(ListRuleNamesByTargetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListRuleNamesByTargetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListRuleNamesByTarget synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListRuleNamesByTargetRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListRuleNamesByTargetSync(ListRuleNamesByTargetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRuleNamesByTargetAsync(ListRuleNamesByTargetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeEventBus asynchronously, invoking a callback when done
-- @param DescribeEventBusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeEventBusAsync(DescribeEventBusRequest, cb)
	assert(DescribeEventBusRequest, "You must provide a DescribeEventBusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSEvents.DescribeEventBus",
	}
	for header,value in pairs(DescribeEventBusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeEventBusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeEventBus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeEventBusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeEventBusSync(DescribeEventBusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeEventBusAsync(DescribeEventBusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TestEventPattern asynchronously, invoking a callback when done
-- @param TestEventPatternRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TestEventPatternAsync(TestEventPatternRequest, cb)
	assert(TestEventPatternRequest, "You must provide a TestEventPatternRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSEvents.TestEventPattern",
	}
	for header,value in pairs(TestEventPatternRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TestEventPatternRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TestEventPattern synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TestEventPatternRequest
-- @return response
-- @return error_type
-- @return error_message
function M.TestEventPatternSync(TestEventPatternRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TestEventPatternAsync(TestEventPatternRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemovePermission asynchronously, invoking a callback when done
-- @param RemovePermissionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemovePermissionAsync(RemovePermissionRequest, cb)
	assert(RemovePermissionRequest, "You must provide a RemovePermissionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSEvents.RemovePermission",
	}
	for header,value in pairs(RemovePermissionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RemovePermissionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemovePermission synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemovePermissionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RemovePermissionSync(RemovePermissionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemovePermissionAsync(RemovePermissionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRules asynchronously, invoking a callback when done
-- @param ListRulesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListRulesAsync(ListRulesRequest, cb)
	assert(ListRulesRequest, "You must provide a ListRulesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSEvents.ListRules",
	}
	for header,value in pairs(ListRulesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListRulesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListRules synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListRulesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListRulesSync(ListRulesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRulesAsync(ListRulesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableRule asynchronously, invoking a callback when done
-- @param DisableRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisableRuleAsync(DisableRuleRequest, cb)
	assert(DisableRuleRequest, "You must provide a DisableRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSEvents.DisableRule",
	}
	for header,value in pairs(DisableRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisableRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisableRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisableRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisableRuleSync(DisableRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableRuleAsync(DisableRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutRule asynchronously, invoking a callback when done
-- @param PutRuleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutRuleAsync(PutRuleRequest, cb)
	assert(PutRuleRequest, "You must provide a PutRuleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSEvents.PutRule",
	}
	for header,value in pairs(PutRuleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutRuleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutRuleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutRuleSync(PutRuleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutRuleAsync(PutRuleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveTargets asynchronously, invoking a callback when done
-- @param RemoveTargetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveTargetsAsync(RemoveTargetsRequest, cb)
	assert(RemoveTargetsRequest, "You must provide a RemoveTargetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSEvents.RemoveTargets",
	}
	for header,value in pairs(RemoveTargetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveTargetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveTargets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveTargetsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RemoveTargetsSync(RemoveTargetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTargetsAsync(RemoveTargetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
