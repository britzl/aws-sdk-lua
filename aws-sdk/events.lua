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

keys.LimitExceededException = { nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>You tried to create more rules or add more targets to a rule than is allowed.</p>
function M.LimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
	}
	asserts.AssertLimitExceededException(t)
	return t
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
-- @param _NextToken [NextToken] <p>Indicates whether there are additional results to retrieve. If there are no more results, the value is null.</p>
-- @param _Targets [TargetList] <p>The targets assigned to the rule.</p>
function M.ListTargetsByRuleResponse(_NextToken, _Targets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTargetsByRuleResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Targets"] = _Targets,
	}
	asserts.AssertListTargetsByRuleResponse(t)
	return t
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
-- @param _Source [String] <p>The source of the event.</p>
-- @param _DetailType [String] <p>Free-form string used to decide what fields to expect in the event detail.</p>
-- @param _Detail [String] <p>In the JSON sense, an object containing fields, which may also contain nested subobjects. No constraints are imposed on its contents.</p>
-- @param _Resources [EventResourceList] <p>AWS resources, identified by Amazon Resource Name (ARN), which the event primarily concerns. Any number, including zero, may be present.</p>
-- @param _Time [EventTime] <p>The timestamp of the event, per <a href="https://www.rfc-editor.org/rfc/rfc3339.txt">RFC3339</a>. If no timestamp is provided, the timestamp of the <a>PutEvents</a> call is used.</p>
function M.PutEventsRequestEntry(_Source, _DetailType, _Detail, _Resources, _Time, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutEventsRequestEntry")
	local t = { 
		["Source"] = _Source,
		["DetailType"] = _DetailType,
		["Detail"] = _Detail,
		["Resources"] = _Resources,
		["Time"] = _Time,
	}
	asserts.AssertPutEventsRequestEntry(t)
	return t
end

keys.ConcurrentModificationException = { nil }

function asserts.AssertConcurrentModificationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModificationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ConcurrentModificationException[k], "ConcurrentModificationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModificationException
-- <p>There is concurrent modification on a rule or target.</p>
function M.ConcurrentModificationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConcurrentModificationException")
	local t = { 
	}
	asserts.AssertConcurrentModificationException(t)
	return t
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
-- @param _Name [RuleName] <p>The name of the rule.</p>
-- Required parameter: Name
function M.DeleteRuleRequest(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRuleRequest")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertDeleteRuleRequest(t)
	return t
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
-- @param _InputTemplate [TransformerInput] <p>Input template where you can use the values of the keys from <code>InputPathsMap</code> to customize the data sent to the target.</p>
-- @param _InputPathsMap [TransformerPaths] <p>Map of JSON paths to be extracted from the event. These are key-value pairs, where each value is a JSON path. You must use JSON dot notation, not bracket notation.</p>
-- Required parameter: InputTemplate
function M.InputTransformer(_InputTemplate, _InputPathsMap, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InputTransformer")
	local t = { 
		["InputTemplate"] = _InputTemplate,
		["InputPathsMap"] = _InputPathsMap,
	}
	asserts.AssertInputTransformer(t)
	return t
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
-- @param _Values [RunCommandTargetValues] <p>If <code>Key</code> is <code>tag:</code> <i>tag-key</i>, <code>Values</code> is a list of tag values. If <code>Key</code> is <code>InstanceIds</code>, <code>Values</code> is a list of Amazon EC2 instance IDs.</p>
-- @param _Key [RunCommandTargetKey] <p>Can be either <code>tag:</code> <i>tag-key</i> or <code>InstanceIds</code>.</p>
-- Required parameter: Key
-- Required parameter: Values
function M.RunCommandTarget(_Values, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RunCommandTarget")
	local t = { 
		["Values"] = _Values,
		["Key"] = _Key,
	}
	asserts.AssertRunCommandTarget(t)
	return t
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
-- <p>This object enables you to specify a JSON path to extract from the event and use as the partition key for the Amazon Kinesis stream, so that you can control the shard to which the event goes. If you do not include this parameter, the default is to use the <code>eventId</code> as the partition key.</p>
-- @param _PartitionKeyPath [TargetPartitionKeyPath] <p>The JSON path to be extracted from the event and used as the partition key. For more information, see <a href="http://docs.aws.amazon.com/streams/latest/dev/key-concepts.html#partition-key">Amazon Kinesis Streams Key Concepts</a> in the <i>Amazon Kinesis Streams Developer Guide</i>.</p>
-- Required parameter: PartitionKeyPath
function M.KinesisParameters(_PartitionKeyPath, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KinesisParameters")
	local t = { 
		["PartitionKeyPath"] = _PartitionKeyPath,
	}
	asserts.AssertKinesisParameters(t)
	return t
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
-- @param _Rules [RuleResponseList] <p>The rules that match the specified criteria.</p>
-- @param _NextToken [NextToken] <p>Indicates whether there are additional results to retrieve. If there are no more results, the value is null.</p>
function M.ListRulesResponse(_Rules, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRulesResponse")
	local t = { 
		["Rules"] = _Rules,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListRulesResponse(t)
	return t
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
-- @param _Name [RuleName] <p>The name of the rule.</p>
-- Required parameter: Name
function M.DisableRuleRequest(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableRuleRequest")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertDisableRuleRequest(t)
	return t
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
-- @param _FailedEntries [PutTargetsResultEntryList] <p>The failed target entries.</p>
-- @param _FailedEntryCount [Integer] <p>The number of failed entries.</p>
function M.PutTargetsResponse(_FailedEntries, _FailedEntryCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutTargetsResponse")
	local t = { 
		["FailedEntries"] = _FailedEntries,
		["FailedEntryCount"] = _FailedEntryCount,
	}
	asserts.AssertPutTargetsResponse(t)
	return t
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
-- @param _TargetArn [TargetArn] <p>The Amazon Resource Name (ARN) of the target resource.</p>
-- @param _NextToken [NextToken] <p>The token returned by a previous call to retrieve the next set of results.</p>
-- @param _Limit [LimitMax100] <p>The maximum number of results to return.</p>
-- Required parameter: TargetArn
function M.ListRuleNamesByTargetRequest(_TargetArn, _NextToken, _Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRuleNamesByTargetRequest")
	local t = { 
		["TargetArn"] = _TargetArn,
		["NextToken"] = _NextToken,
		["Limit"] = _Limit,
	}
	asserts.AssertListRuleNamesByTargetRequest(t)
	return t
end

keys.Target = { ["RunCommandParameters"] = true, ["RoleArn"] = true, ["InputTransformer"] = true, ["EcsParameters"] = true, ["KinesisParameters"] = true, ["InputPath"] = true, ["Input"] = true, ["Id"] = true, ["Arn"] = true, nil }

function asserts.AssertTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Target to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	if struct["RunCommandParameters"] then asserts.AssertRunCommandParameters(struct["RunCommandParameters"]) end
	if struct["RoleArn"] then asserts.AssertRoleArn(struct["RoleArn"]) end
	if struct["InputTransformer"] then asserts.AssertInputTransformer(struct["InputTransformer"]) end
	if struct["EcsParameters"] then asserts.AssertEcsParameters(struct["EcsParameters"]) end
	if struct["KinesisParameters"] then asserts.AssertKinesisParameters(struct["KinesisParameters"]) end
	if struct["InputPath"] then asserts.AssertTargetInputPath(struct["InputPath"]) end
	if struct["Input"] then asserts.AssertTargetInput(struct["Input"]) end
	if struct["Id"] then asserts.AssertTargetId(struct["Id"]) end
	if struct["Arn"] then asserts.AssertTargetArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Target[k], "Target contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Target
-- <p>Targets are the resources to be invoked when a rule is triggered. Target types include EC2 instances, AWS Lambda functions, Amazon Kinesis streams, Amazon ECS tasks, AWS Step Functions state machines, Run Command, and built-in targets.</p>
-- @param _RunCommandParameters [RunCommandParameters] <p>Parameters used when you are using the rule to invoke Amazon EC2 Run Command.</p>
-- @param _RoleArn [RoleArn] <p>The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is triggered. If one rule triggers multiple targets, you can use a different IAM role for each target.</p>
-- @param _InputTransformer [InputTransformer] <p>Settings to enable you to provide custom input to a target based on certain event data. You can extract one or more key-value pairs from the event and then use that data to send customized input to the target.</p>
-- @param _EcsParameters [EcsParameters] <p>Contains the Amazon ECS task definition and task count to be used, if the event target is an Amazon ECS task. For more information about Amazon ECS tasks, see <a href="http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html">Task Definitions </a> in the <i>Amazon EC2 Container Service Developer Guide</i>.</p>
-- @param _KinesisParameters [KinesisParameters] <p>The custom parameter you can use to control shard assignment, when the target is an Amazon Kinesis stream. If you do not include this parameter, the default is to use the <code>eventId</code> as the partition key.</p>
-- @param _InputPath [TargetInputPath] <p>The value of the JSONPath that is used for extracting part of the matched event when passing it to the target. You must use JSON dot notation, not bracket notation. For more information about JSON paths, see <a href="http://goessner.net/articles/JsonPath/">JSONPath</a>.</p>
-- @param _Input [TargetInput] <p>Valid JSON text passed to the target. In this case, nothing from the event itself is passed to the target. You must use JSON dot notation, not bracket notation. For more information, see <a href="http://www.rfc-editor.org/rfc/rfc7159.txt">The JavaScript Object Notation (JSON) Data Interchange Format</a>.</p>
-- @param _Id [TargetId] <p>The ID of the target.</p>
-- @param _Arn [TargetArn] <p>The Amazon Resource Name (ARN) of the target.</p>
-- Required parameter: Id
-- Required parameter: Arn
function M.Target(_RunCommandParameters, _RoleArn, _InputTransformer, _EcsParameters, _KinesisParameters, _InputPath, _Input, _Id, _Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Target")
	local t = { 
		["RunCommandParameters"] = _RunCommandParameters,
		["RoleArn"] = _RoleArn,
		["InputTransformer"] = _InputTransformer,
		["EcsParameters"] = _EcsParameters,
		["KinesisParameters"] = _KinesisParameters,
		["InputPath"] = _InputPath,
		["Input"] = _Input,
		["Id"] = _Id,
		["Arn"] = _Arn,
	}
	asserts.AssertTarget(t)
	return t
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
-- @param _ScheduleExpression [ScheduleExpression] <p>The scheduling expression. For example, "cron(0 20 * * ? *)", "rate(5 minutes)".</p>
-- @param _Name [RuleName] <p>The name of the rule.</p>
-- @param _EventPattern [EventPattern] <p>The event pattern. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html">Events and Event Patterns</a> in the <i>Amazon CloudWatch Events User Guide</i>.</p>
-- @param _State [RuleState] <p>Specifies whether the rule is enabled or disabled.</p>
-- @param _RoleArn [RoleArn] <p>The Amazon Resource Name (ARN) of the IAM role associated with the rule.</p>
-- @param _Arn [RuleArn] <p>The Amazon Resource Name (ARN) of the rule.</p>
-- @param _Description [RuleDescription] <p>The description of the rule.</p>
function M.DescribeRuleResponse(_ScheduleExpression, _Name, _EventPattern, _State, _RoleArn, _Arn, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRuleResponse")
	local t = { 
		["ScheduleExpression"] = _ScheduleExpression,
		["Name"] = _Name,
		["EventPattern"] = _EventPattern,
		["State"] = _State,
		["RoleArn"] = _RoleArn,
		["Arn"] = _Arn,
		["Description"] = _Description,
	}
	asserts.AssertDescribeRuleResponse(t)
	return t
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
-- @param _RunCommandTargets [RunCommandTargets] <p>Currently, we support including only one RunCommandTarget block, which specifies either an array of InstanceIds or a tag.</p>
-- Required parameter: RunCommandTargets
function M.RunCommandParameters(_RunCommandTargets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RunCommandParameters")
	local t = { 
		["RunCommandTargets"] = _RunCommandTargets,
	}
	asserts.AssertRunCommandParameters(t)
	return t
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
-- @param _EventId [EventId] <p>The ID of the event.</p>
-- @param _ErrorCode [ErrorCode] <p>The error code that indicates why the event submission failed.</p>
-- @param _ErrorMessage [ErrorMessage] <p>The error message that explains why the event submission failed.</p>
function M.PutEventsResultEntry(_EventId, _ErrorCode, _ErrorMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutEventsResultEntry")
	local t = { 
		["EventId"] = _EventId,
		["ErrorCode"] = _ErrorCode,
		["ErrorMessage"] = _ErrorMessage,
	}
	asserts.AssertPutEventsResultEntry(t)
	return t
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
-- @param _FailedEntries [RemoveTargetsResultEntryList] <p>The failed target entries.</p>
-- @param _FailedEntryCount [Integer] <p>The number of failed entries.</p>
function M.RemoveTargetsResponse(_FailedEntries, _FailedEntryCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTargetsResponse")
	local t = { 
		["FailedEntries"] = _FailedEntries,
		["FailedEntryCount"] = _FailedEntryCount,
	}
	asserts.AssertRemoveTargetsResponse(t)
	return t
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
-- @param _Targets [TargetList] <p>The targets to update or add to the rule.</p>
-- @param _Rule [RuleName] <p>The name of the rule.</p>
-- Required parameter: Rule
-- Required parameter: Targets
function M.PutTargetsRequest(_Targets, _Rule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutTargetsRequest")
	local t = { 
		["Targets"] = _Targets,
		["Rule"] = _Rule,
	}
	asserts.AssertPutTargetsRequest(t)
	return t
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
-- @param _ErrorCode [ErrorCode] <p>The error code that indicates why the target removal failed. If the value is <code>ConcurrentModificationException</code>, too many requests were made at the same time.</p>
-- @param _ErrorMessage [ErrorMessage] <p>The error message that explains why the target removal failed.</p>
-- @param _TargetId [TargetId] <p>The ID of the target.</p>
function M.RemoveTargetsResultEntry(_ErrorCode, _ErrorMessage, _TargetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTargetsResultEntry")
	local t = { 
		["ErrorCode"] = _ErrorCode,
		["ErrorMessage"] = _ErrorMessage,
		["TargetId"] = _TargetId,
	}
	asserts.AssertRemoveTargetsResultEntry(t)
	return t
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
-- @param _ErrorCode [ErrorCode] <p>The error code that indicates why the target addition failed. If the value is <code>ConcurrentModificationException</code>, too many requests were made at the same time.</p>
-- @param _ErrorMessage [ErrorMessage] <p>The error message that explains why the target addition failed.</p>
-- @param _TargetId [TargetId] <p>The ID of the target.</p>
function M.PutTargetsResultEntry(_ErrorCode, _ErrorMessage, _TargetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutTargetsResultEntry")
	local t = { 
		["ErrorCode"] = _ErrorCode,
		["ErrorMessage"] = _ErrorMessage,
		["TargetId"] = _TargetId,
	}
	asserts.AssertPutTargetsResultEntry(t)
	return t
end

keys.EcsParameters = { ["TaskDefinitionArn"] = true, ["TaskCount"] = true, nil }

function asserts.AssertEcsParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EcsParameters to be of type 'table'")
	assert(struct["TaskDefinitionArn"], "Expected key TaskDefinitionArn to exist in table")
	if struct["TaskDefinitionArn"] then asserts.AssertArn(struct["TaskDefinitionArn"]) end
	if struct["TaskCount"] then asserts.AssertLimitMin1(struct["TaskCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.EcsParameters[k], "EcsParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EcsParameters
-- <p>The custom parameters to be used when the target is an Amazon ECS cluster.</p>
-- @param _TaskDefinitionArn [Arn] <p>The ARN of the task definition to use if the event target is an Amazon ECS cluster. </p>
-- @param _TaskCount [LimitMin1] <p>The number of tasks to create based on the <code>TaskDefinition</code>. The default is one.</p>
-- Required parameter: TaskDefinitionArn
function M.EcsParameters(_TaskDefinitionArn, _TaskCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EcsParameters")
	local t = { 
		["TaskDefinitionArn"] = _TaskDefinitionArn,
		["TaskCount"] = _TaskCount,
	}
	asserts.AssertEcsParameters(t)
	return t
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
-- @param _Ids [TargetIdList] <p>The IDs of the targets to remove from the rule.</p>
-- @param _Rule [RuleName] <p>The name of the rule.</p>
-- Required parameter: Rule
-- Required parameter: Ids
function M.RemoveTargetsRequest(_Ids, _Rule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTargetsRequest")
	local t = { 
		["Ids"] = _Ids,
		["Rule"] = _Rule,
	}
	asserts.AssertRemoveTargetsRequest(t)
	return t
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
-- @param _Name [RuleName] <p>The name of the rule.</p>
-- Required parameter: Name
function M.DescribeRuleRequest(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRuleRequest")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertDescribeRuleRequest(t)
	return t
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
-- @param _NextToken [NextToken] <p>The token returned by a previous call to retrieve the next set of results.</p>
-- @param _Limit [LimitMax100] <p>The maximum number of results to return.</p>
-- @param _NamePrefix [RuleName] <p>The prefix matching the rule name.</p>
function M.ListRulesRequest(_NextToken, _Limit, _NamePrefix, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRulesRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["Limit"] = _Limit,
		["NamePrefix"] = _NamePrefix,
	}
	asserts.AssertListRulesRequest(t)
	return t
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
-- @param _Name [RuleName] <p>The name of the rule.</p>
-- Required parameter: Name
function M.EnableRuleRequest(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableRuleRequest")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertEnableRuleRequest(t)
	return t
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
-- @param _NextToken [NextToken] <p>Indicates whether there are additional results to retrieve. If there are no more results, the value is null.</p>
-- @param _RuleNames [RuleNameList] <p>The names of the rules that can invoke the given target.</p>
function M.ListRuleNamesByTargetResponse(_NextToken, _RuleNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRuleNamesByTargetResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["RuleNames"] = _RuleNames,
	}
	asserts.AssertListRuleNamesByTargetResponse(t)
	return t
end

keys.InternalException = { nil }

function asserts.AssertInternalException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InternalException[k], "InternalException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalException
-- <p>This exception occurs due to unexpected causes.</p>
function M.InternalException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalException")
	local t = { 
	}
	asserts.AssertInternalException(t)
	return t
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
-- @param _NextToken [NextToken] <p>The token returned by a previous call to retrieve the next set of results.</p>
-- @param _Limit [LimitMax100] <p>The maximum number of results to return.</p>
-- @param _Rule [RuleName] <p>The name of the rule.</p>
-- Required parameter: Rule
function M.ListTargetsByRuleRequest(_NextToken, _Limit, _Rule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTargetsByRuleRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["Limit"] = _Limit,
		["Rule"] = _Rule,
	}
	asserts.AssertListTargetsByRuleRequest(t)
	return t
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
-- @param _RuleArn [RuleArn] <p>The Amazon Resource Name (ARN) of the rule.</p>
function M.PutRuleResponse(_RuleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRuleResponse")
	local t = { 
		["RuleArn"] = _RuleArn,
	}
	asserts.AssertPutRuleResponse(t)
	return t
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
-- @param _Result [Boolean] <p>Indicates whether the event matches the event pattern.</p>
function M.TestEventPatternResponse(_Result, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestEventPatternResponse")
	local t = { 
		["Result"] = _Result,
	}
	asserts.AssertTestEventPatternResponse(t)
	return t
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
-- @param _ScheduleExpression [ScheduleExpression] <p>The scheduling expression. For example, "cron(0 20 * * ? *)", "rate(5 minutes)".</p>
-- @param _Name [RuleName] <p>The name of the rule.</p>
-- @param _EventPattern [EventPattern] <p>The event pattern of the rule. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html">Events and Event Patterns</a> in the <i>Amazon CloudWatch Events User Guide</i>.</p>
-- @param _State [RuleState] <p>The state of the rule.</p>
-- @param _RoleArn [RoleArn] <p>The Amazon Resource Name (ARN) of the role that is used for target invocation.</p>
-- @param _Arn [RuleArn] <p>The Amazon Resource Name (ARN) of the rule.</p>
-- @param _Description [RuleDescription] <p>The description of the rule.</p>
function M.Rule(_ScheduleExpression, _Name, _EventPattern, _State, _RoleArn, _Arn, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Rule")
	local t = { 
		["ScheduleExpression"] = _ScheduleExpression,
		["Name"] = _Name,
		["EventPattern"] = _EventPattern,
		["State"] = _State,
		["RoleArn"] = _RoleArn,
		["Arn"] = _Arn,
		["Description"] = _Description,
	}
	asserts.AssertRule(t)
	return t
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
-- @param _Entries [PutEventsRequestEntryList] <p>The entry that defines an event in your system. You can specify several parameters for the entry such as the source and type of the event, resources associated with the event, and so on.</p>
-- Required parameter: Entries
function M.PutEventsRequest(_Entries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutEventsRequest")
	local t = { 
		["Entries"] = _Entries,
	}
	asserts.AssertPutEventsRequest(t)
	return t
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
-- @param _ScheduleExpression [ScheduleExpression] <p>The scheduling expression. For example, "cron(0 20 * * ? *)", "rate(5 minutes)".</p>
-- @param _Name [RuleName] <p>The name of the rule that you are creating or updating.</p>
-- @param _RoleArn [RoleArn] <p>The Amazon Resource Name (ARN) of the IAM role associated with the rule.</p>
-- @param _State [RuleState] <p>Indicates whether the rule is enabled or disabled.</p>
-- @param _EventPattern [EventPattern] <p>The event pattern. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html">Events and Event Patterns</a> in the <i>Amazon CloudWatch Events User Guide</i>.</p>
-- @param _Description [RuleDescription] <p>A description of the rule.</p>
-- Required parameter: Name
function M.PutRuleRequest(_ScheduleExpression, _Name, _RoleArn, _State, _EventPattern, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRuleRequest")
	local t = { 
		["ScheduleExpression"] = _ScheduleExpression,
		["Name"] = _Name,
		["RoleArn"] = _RoleArn,
		["State"] = _State,
		["EventPattern"] = _EventPattern,
		["Description"] = _Description,
	}
	asserts.AssertPutRuleRequest(t)
	return t
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
-- @param _FailedEntryCount [Integer] <p>The number of failed entries.</p>
-- @param _Entries [PutEventsResultEntryList] <p>The successfully and unsuccessfully ingested events results. If the ingestion was successful, the entry has the event ID in it. Otherwise, you can use the error code and error message to identify the problem with the entry.</p>
function M.PutEventsResponse(_FailedEntryCount, _Entries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutEventsResponse")
	local t = { 
		["FailedEntryCount"] = _FailedEntryCount,
		["Entries"] = _Entries,
	}
	asserts.AssertPutEventsResponse(t)
	return t
end

keys.InvalidEventPatternException = { nil }

function asserts.AssertInvalidEventPatternException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidEventPatternException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidEventPatternException[k], "InvalidEventPatternException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidEventPatternException
-- <p>The event pattern is not valid.</p>
function M.InvalidEventPatternException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidEventPatternException")
	local t = { 
	}
	asserts.AssertInvalidEventPatternException(t)
	return t
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
-- @param _EventPattern [EventPattern] <p>The event pattern. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html">Events and Event Patterns</a> in the <i>Amazon CloudWatch Events User Guide</i>.</p>
-- @param _Event [String] <p>The event, in JSON format, to test against the event pattern.</p>
-- Required parameter: EventPattern
-- Required parameter: Event
function M.TestEventPatternRequest(_EventPattern, _Event, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestEventPatternRequest")
	local t = { 
		["EventPattern"] = _EventPattern,
		["Event"] = _Event,
	}
	asserts.AssertTestEventPatternRequest(t)
	return t
end

keys.ResourceNotFoundException = { nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The rule does not exist.</p>
function M.ResourceNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
	}
	asserts.AssertResourceNotFoundException(t)
	return t
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

function asserts.AssertEventPattern(str)
	assert(str)
	assert(type(str) == "string", "Expected EventPattern to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.EventPattern(str)
	asserts.AssertEventPattern(str)
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

function asserts.AssertEventId(str)
	assert(str)
	assert(type(str) == "string", "Expected EventId to be of type 'string'")
end

--  
function M.EventId(str)
	asserts.AssertEventId(str)
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

function asserts.AssertRuleState(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleState to be of type 'string'")
end

--  
function M.RuleState(str)
	asserts.AssertRuleState(str)
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

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
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

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
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


local headers = require "aws-sdk.core.headers"
local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_handlers = require "aws-sdk.core.request_handlers"

local uri = ""


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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- Call PutEvents asynchronously, invoking a callback when done
-- @param PutEventsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutEventsAsync(PutEventsRequest, cb)
	assert(PutEventsRequest, "You must provide a PutEventsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSEvents.PutEvents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutEventsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call PutEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutEventsRequest
-- @return response
-- @return error_message
function M.PutEventsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutEventsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeRule asynchronously, invoking a callback when done
-- @param DescribeRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeRuleAsync(DescribeRuleRequest, cb)
	assert(DescribeRuleRequest, "You must provide a DescribeRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSEvents.DescribeRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeRuleRequest
-- @return response
-- @return error_message
function M.DescribeRuleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeRuleAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTargetsByRule asynchronously, invoking a callback when done
-- @param ListTargetsByRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTargetsByRuleAsync(ListTargetsByRuleRequest, cb)
	assert(ListTargetsByRuleRequest, "You must provide a ListTargetsByRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSEvents.ListTargetsByRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTargetsByRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListTargetsByRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTargetsByRuleRequest
-- @return response
-- @return error_message
function M.ListTargetsByRuleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTargetsByRuleAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutTargets asynchronously, invoking a callback when done
-- @param PutTargetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutTargetsAsync(PutTargetsRequest, cb)
	assert(PutTargetsRequest, "You must provide a PutTargetsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSEvents.PutTargets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutTargetsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call PutTargets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutTargetsRequest
-- @return response
-- @return error_message
function M.PutTargetsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutTargetsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRule asynchronously, invoking a callback when done
-- @param DeleteRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRuleAsync(DeleteRuleRequest, cb)
	assert(DeleteRuleRequest, "You must provide a DeleteRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSEvents.DeleteRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRuleRequest
-- @return response
-- @return error_message
function M.DeleteRuleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRuleAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRuleNamesByTarget asynchronously, invoking a callback when done
-- @param ListRuleNamesByTargetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListRuleNamesByTargetAsync(ListRuleNamesByTargetRequest, cb)
	assert(ListRuleNamesByTargetRequest, "You must provide a ListRuleNamesByTargetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSEvents.ListRuleNamesByTarget",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListRuleNamesByTargetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListRuleNamesByTarget synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListRuleNamesByTargetRequest
-- @return response
-- @return error_message
function M.ListRuleNamesByTargetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRuleNamesByTargetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call EnableRule asynchronously, invoking a callback when done
-- @param EnableRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.EnableRuleAsync(EnableRuleRequest, cb)
	assert(EnableRuleRequest, "You must provide a EnableRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSEvents.EnableRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", EnableRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call EnableRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param EnableRuleRequest
-- @return response
-- @return error_message
function M.EnableRuleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.EnableRuleAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call TestEventPattern asynchronously, invoking a callback when done
-- @param TestEventPatternRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TestEventPatternAsync(TestEventPatternRequest, cb)
	assert(TestEventPatternRequest, "You must provide a TestEventPatternRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSEvents.TestEventPattern",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", TestEventPatternRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call TestEventPattern synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TestEventPatternRequest
-- @return response
-- @return error_message
function M.TestEventPatternSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TestEventPatternAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRules asynchronously, invoking a callback when done
-- @param ListRulesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListRulesAsync(ListRulesRequest, cb)
	assert(ListRulesRequest, "You must provide a ListRulesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSEvents.ListRules",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListRulesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListRules synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListRulesRequest
-- @return response
-- @return error_message
function M.ListRulesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRulesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DisableRule asynchronously, invoking a callback when done
-- @param DisableRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DisableRuleAsync(DisableRuleRequest, cb)
	assert(DisableRuleRequest, "You must provide a DisableRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSEvents.DisableRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DisableRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DisableRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisableRuleRequest
-- @return response
-- @return error_message
function M.DisableRuleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisableRuleAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PutRule asynchronously, invoking a callback when done
-- @param PutRuleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutRuleAsync(PutRuleRequest, cb)
	assert(PutRuleRequest, "You must provide a PutRuleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSEvents.PutRule",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutRuleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call PutRule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutRuleRequest
-- @return response
-- @return error_message
function M.PutRuleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutRuleAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveTargets asynchronously, invoking a callback when done
-- @param RemoveTargetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTargetsAsync(RemoveTargetsRequest, cb)
	assert(RemoveTargetsRequest, "You must provide a RemoveTargetsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSEvents.RemoveTargets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveTargetsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveTargets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveTargetsRequest
-- @return response
-- @return error_message
function M.RemoveTargetsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTargetsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
