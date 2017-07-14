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

local LimitExceededException_keys = { nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- &lt;p&gt;You tried to create more rules or add more targets to a rule than is allowed.&lt;/p&gt;
function M.LimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
	}
	M.AssertLimitExceededException(t)
	return t
end

local ListTargetsByRuleResponse_keys = { "NextToken" = true, "Targets" = true, nil }

function M.AssertListTargetsByRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTargetsByRuleResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Targets"] then M.AssertTargetList(struct["Targets"]) end
	for k,_ in pairs(struct) do
		assert(ListTargetsByRuleResponse_keys[k], "ListTargetsByRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTargetsByRuleResponse
--  
-- @param NextToken [NextToken] &lt;p&gt;Indicates whether there are additional results to retrieve. If there are no more results, the value is null.&lt;/p&gt;
-- @param Targets [TargetList] &lt;p&gt;The targets assigned to the rule.&lt;/p&gt;
function M.ListTargetsByRuleResponse(NextToken, Targets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTargetsByRuleResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Targets"] = Targets,
	}
	M.AssertListTargetsByRuleResponse(t)
	return t
end

local PutEventsRequestEntry_keys = { "Source" = true, "DetailType" = true, "Detail" = true, "Resources" = true, "Time" = true, nil }

function M.AssertPutEventsRequestEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEventsRequestEntry to be of type 'table'")
	if struct["Source"] then M.AssertString(struct["Source"]) end
	if struct["DetailType"] then M.AssertString(struct["DetailType"]) end
	if struct["Detail"] then M.AssertString(struct["Detail"]) end
	if struct["Resources"] then M.AssertEventResourceList(struct["Resources"]) end
	if struct["Time"] then M.AssertEventTime(struct["Time"]) end
	for k,_ in pairs(struct) do
		assert(PutEventsRequestEntry_keys[k], "PutEventsRequestEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEventsRequestEntry
-- &lt;p&gt;Represents an event to be submitted.&lt;/p&gt;
-- @param Source [String] &lt;p&gt;The source of the event.&lt;/p&gt;
-- @param DetailType [String] &lt;p&gt;Free-form string used to decide what fields to expect in the event detail.&lt;/p&gt;
-- @param Detail [String] &lt;p&gt;In the JSON sense, an object containing fields, which may also contain nested subobjects. No constraints are imposed on its contents.&lt;/p&gt;
-- @param Resources [EventResourceList] &lt;p&gt;AWS resources, identified by Amazon Resource Name (ARN), which the event primarily concerns. Any number, including zero, may be present.&lt;/p&gt;
-- @param Time [EventTime] &lt;p&gt;The timestamp of the event, per &lt;a href=&quot;https://www.rfc-editor.org/rfc/rfc3339.txt&quot;&gt;RFC3339&lt;/a&gt;. If no timestamp is provided, the timestamp of the &lt;a&gt;PutEvents&lt;/a&gt; call is used.&lt;/p&gt;
function M.PutEventsRequestEntry(Source, DetailType, Detail, Resources, Time, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutEventsRequestEntry")
	local t = { 
		["Source"] = Source,
		["DetailType"] = DetailType,
		["Detail"] = Detail,
		["Resources"] = Resources,
		["Time"] = Time,
	}
	M.AssertPutEventsRequestEntry(t)
	return t
end

local ConcurrentModificationException_keys = { nil }

function M.AssertConcurrentModificationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModificationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ConcurrentModificationException_keys[k], "ConcurrentModificationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModificationException
-- &lt;p&gt;There is concurrent modification on a rule or target.&lt;/p&gt;
function M.ConcurrentModificationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConcurrentModificationException")
	local t = { 
	}
	M.AssertConcurrentModificationException(t)
	return t
end

local DeleteRuleRequest_keys = { "Name" = true, nil }

function M.AssertDeleteRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRuleRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertRuleName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRuleRequest_keys[k], "DeleteRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRuleRequest
--  
-- @param Name [RuleName] &lt;p&gt;The name of the rule.&lt;/p&gt;
-- Required parameter: Name
function M.DeleteRuleRequest(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRuleRequest")
	local t = { 
		["Name"] = Name,
	}
	M.AssertDeleteRuleRequest(t)
	return t
end

local InputTransformer_keys = { "InputTemplate" = true, "InputPathsMap" = true, nil }

function M.AssertInputTransformer(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputTransformer to be of type 'table'")
	assert(struct["InputTemplate"], "Expected key InputTemplate to exist in table")
	if struct["InputTemplate"] then M.AssertTransformerInput(struct["InputTemplate"]) end
	if struct["InputPathsMap"] then M.AssertTransformerPaths(struct["InputPathsMap"]) end
	for k,_ in pairs(struct) do
		assert(InputTransformer_keys[k], "InputTransformer contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputTransformer
-- &lt;p&gt;Contains the parameters needed for you to provide custom input to a target based on one or more pieces of data extracted from the event.&lt;/p&gt;
-- @param InputTemplate [TransformerInput] &lt;p&gt;Input template where you can use the values of the keys from &lt;code&gt;InputPathsMap&lt;/code&gt; to customize the data sent to the target.&lt;/p&gt;
-- @param InputPathsMap [TransformerPaths] &lt;p&gt;Map of JSON paths to be extracted from the event. These are key-value pairs, where each value is a JSON path. You must use JSON dot notation, not bracket notation.&lt;/p&gt;
-- Required parameter: InputTemplate
function M.InputTransformer(InputTemplate, InputPathsMap, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InputTransformer")
	local t = { 
		["InputTemplate"] = InputTemplate,
		["InputPathsMap"] = InputPathsMap,
	}
	M.AssertInputTransformer(t)
	return t
end

local RunCommandTarget_keys = { "Values" = true, "Key" = true, nil }

function M.AssertRunCommandTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RunCommandTarget to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Values"] then M.AssertRunCommandTargetValues(struct["Values"]) end
	if struct["Key"] then M.AssertRunCommandTargetKey(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(RunCommandTarget_keys[k], "RunCommandTarget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RunCommandTarget
-- &lt;p&gt;Information about the EC2 instances that are to be sent the command, specified as key-value pairs. Each &lt;code&gt;RunCommandTarget&lt;/code&gt; block can include only one key, but this key may specify multiple values.&lt;/p&gt;
-- @param Values [RunCommandTargetValues] &lt;p&gt;If &lt;code&gt;Key&lt;/code&gt; is &lt;code&gt;tag:&lt;/code&gt; &lt;i&gt;tag-key&lt;/i&gt;, &lt;code&gt;Values&lt;/code&gt; is a list of tag values. If &lt;code&gt;Key&lt;/code&gt; is &lt;code&gt;InstanceIds&lt;/code&gt;, &lt;code&gt;Values&lt;/code&gt; is a list of Amazon EC2 instance IDs.&lt;/p&gt;
-- @param Key [RunCommandTargetKey] &lt;p&gt;Can be either &lt;code&gt;tag:&lt;/code&gt; &lt;i&gt;tag-key&lt;/i&gt; or &lt;code&gt;InstanceIds&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: Key
-- Required parameter: Values
function M.RunCommandTarget(Values, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RunCommandTarget")
	local t = { 
		["Values"] = Values,
		["Key"] = Key,
	}
	M.AssertRunCommandTarget(t)
	return t
end

local KinesisParameters_keys = { "PartitionKeyPath" = true, nil }

function M.AssertKinesisParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KinesisParameters to be of type 'table'")
	assert(struct["PartitionKeyPath"], "Expected key PartitionKeyPath to exist in table")
	if struct["PartitionKeyPath"] then M.AssertTargetPartitionKeyPath(struct["PartitionKeyPath"]) end
	for k,_ in pairs(struct) do
		assert(KinesisParameters_keys[k], "KinesisParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KinesisParameters
-- &lt;p&gt;This object enables you to specify a JSON path to extract from the event and use as the partition key for the Amazon Kinesis stream, so that you can control the shard to which the event goes. If you do not include this parameter, the default is to use the &lt;code&gt;eventId&lt;/code&gt; as the partition key.&lt;/p&gt;
-- @param PartitionKeyPath [TargetPartitionKeyPath] &lt;p&gt;The JSON path to be extracted from the event and used as the partition key. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/streams/latest/dev/key-concepts.html#partition-key&quot;&gt;Amazon Kinesis Streams Key Concepts&lt;/a&gt; in the &lt;i&gt;Amazon Kinesis Streams Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: PartitionKeyPath
function M.KinesisParameters(PartitionKeyPath, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating KinesisParameters")
	local t = { 
		["PartitionKeyPath"] = PartitionKeyPath,
	}
	M.AssertKinesisParameters(t)
	return t
end

local ListRulesResponse_keys = { "Rules" = true, "NextToken" = true, nil }

function M.AssertListRulesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRulesResponse to be of type 'table'")
	if struct["Rules"] then M.AssertRuleResponseList(struct["Rules"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListRulesResponse_keys[k], "ListRulesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRulesResponse
--  
-- @param Rules [RuleResponseList] &lt;p&gt;The rules that match the specified criteria.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;Indicates whether there are additional results to retrieve. If there are no more results, the value is null.&lt;/p&gt;
function M.ListRulesResponse(Rules, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRulesResponse")
	local t = { 
		["Rules"] = Rules,
		["NextToken"] = NextToken,
	}
	M.AssertListRulesResponse(t)
	return t
end

local DisableRuleRequest_keys = { "Name" = true, nil }

function M.AssertDisableRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisableRuleRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertRuleName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DisableRuleRequest_keys[k], "DisableRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisableRuleRequest
--  
-- @param Name [RuleName] &lt;p&gt;The name of the rule.&lt;/p&gt;
-- Required parameter: Name
function M.DisableRuleRequest(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DisableRuleRequest")
	local t = { 
		["Name"] = Name,
	}
	M.AssertDisableRuleRequest(t)
	return t
end

local PutTargetsResponse_keys = { "FailedEntries" = true, "FailedEntryCount" = true, nil }

function M.AssertPutTargetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutTargetsResponse to be of type 'table'")
	if struct["FailedEntries"] then M.AssertPutTargetsResultEntryList(struct["FailedEntries"]) end
	if struct["FailedEntryCount"] then M.AssertInteger(struct["FailedEntryCount"]) end
	for k,_ in pairs(struct) do
		assert(PutTargetsResponse_keys[k], "PutTargetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutTargetsResponse
--  
-- @param FailedEntries [PutTargetsResultEntryList] &lt;p&gt;The failed target entries.&lt;/p&gt;
-- @param FailedEntryCount [Integer] &lt;p&gt;The number of failed entries.&lt;/p&gt;
function M.PutTargetsResponse(FailedEntries, FailedEntryCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutTargetsResponse")
	local t = { 
		["FailedEntries"] = FailedEntries,
		["FailedEntryCount"] = FailedEntryCount,
	}
	M.AssertPutTargetsResponse(t)
	return t
end

local ListRuleNamesByTargetRequest_keys = { "TargetArn" = true, "NextToken" = true, "Limit" = true, nil }

function M.AssertListRuleNamesByTargetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRuleNamesByTargetRequest to be of type 'table'")
	assert(struct["TargetArn"], "Expected key TargetArn to exist in table")
	if struct["TargetArn"] then M.AssertTargetArn(struct["TargetArn"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Limit"] then M.AssertLimitMax100(struct["Limit"]) end
	for k,_ in pairs(struct) do
		assert(ListRuleNamesByTargetRequest_keys[k], "ListRuleNamesByTargetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRuleNamesByTargetRequest
--  
-- @param TargetArn [TargetArn] &lt;p&gt;The Amazon Resource Name (ARN) of the target resource.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The token returned by a previous call to retrieve the next set of results.&lt;/p&gt;
-- @param Limit [LimitMax100] &lt;p&gt;The maximum number of results to return.&lt;/p&gt;
-- Required parameter: TargetArn
function M.ListRuleNamesByTargetRequest(TargetArn, NextToken, Limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRuleNamesByTargetRequest")
	local t = { 
		["TargetArn"] = TargetArn,
		["NextToken"] = NextToken,
		["Limit"] = Limit,
	}
	M.AssertListRuleNamesByTargetRequest(t)
	return t
end

local Target_keys = { "RunCommandParameters" = true, "RoleArn" = true, "InputTransformer" = true, "EcsParameters" = true, "KinesisParameters" = true, "InputPath" = true, "Input" = true, "Id" = true, "Arn" = true, nil }

function M.AssertTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Target to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["Arn"], "Expected key Arn to exist in table")
	if struct["RunCommandParameters"] then M.AssertRunCommandParameters(struct["RunCommandParameters"]) end
	if struct["RoleArn"] then M.AssertRoleArn(struct["RoleArn"]) end
	if struct["InputTransformer"] then M.AssertInputTransformer(struct["InputTransformer"]) end
	if struct["EcsParameters"] then M.AssertEcsParameters(struct["EcsParameters"]) end
	if struct["KinesisParameters"] then M.AssertKinesisParameters(struct["KinesisParameters"]) end
	if struct["InputPath"] then M.AssertTargetInputPath(struct["InputPath"]) end
	if struct["Input"] then M.AssertTargetInput(struct["Input"]) end
	if struct["Id"] then M.AssertTargetId(struct["Id"]) end
	if struct["Arn"] then M.AssertTargetArn(struct["Arn"]) end
	for k,_ in pairs(struct) do
		assert(Target_keys[k], "Target contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Target
-- &lt;p&gt;Targets are the resources to be invoked when a rule is triggered. Target types include EC2 instances, AWS Lambda functions, Amazon Kinesis streams, Amazon ECS tasks, AWS Step Functions state machines, Run Command, and built-in targets.&lt;/p&gt;
-- @param RunCommandParameters [RunCommandParameters] &lt;p&gt;Parameters used when you are using the rule to invoke Amazon EC2 Run Command.&lt;/p&gt;
-- @param RoleArn [RoleArn] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is triggered. If one rule triggers multiple targets, you can use a different IAM role for each target.&lt;/p&gt;
-- @param InputTransformer [InputTransformer] &lt;p&gt;Settings to enable you to provide custom input to a target based on certain event data. You can extract one or more key-value pairs from the event and then use that data to send customized input to the target.&lt;/p&gt;
-- @param EcsParameters [EcsParameters] &lt;p&gt;Contains the Amazon ECS task definition and task count to be used, if the event target is an Amazon ECS task. For more information about Amazon ECS tasks, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_defintions.html&quot;&gt;Task Definitions &lt;/a&gt; in the &lt;i&gt;Amazon EC2 Container Service Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param KinesisParameters [KinesisParameters] &lt;p&gt;The custom parameter you can use to control shard assignment, when the target is an Amazon Kinesis stream. If you do not include this parameter, the default is to use the &lt;code&gt;eventId&lt;/code&gt; as the partition key.&lt;/p&gt;
-- @param InputPath [TargetInputPath] &lt;p&gt;The value of the JSONPath that is used for extracting part of the matched event when passing it to the target. You must use JSON dot notation, not bracket notation. For more information about JSON paths, see &lt;a href=&quot;http://goessner.net/articles/JsonPath/&quot;&gt;JSONPath&lt;/a&gt;.&lt;/p&gt;
-- @param Input [TargetInput] &lt;p&gt;Valid JSON text passed to the target. In this case, nothing from the event itself is passed to the target. You must use JSON dot notation, not bracket notation. For more information, see &lt;a href=&quot;http://www.rfc-editor.org/rfc/rfc7159.txt&quot;&gt;The JavaScript Object Notation (JSON) Data Interchange Format&lt;/a&gt;.&lt;/p&gt;
-- @param Id [TargetId] &lt;p&gt;The ID of the target.&lt;/p&gt;
-- @param Arn [TargetArn] &lt;p&gt;The Amazon Resource Name (ARN) of the target.&lt;/p&gt;
-- Required parameter: Id
-- Required parameter: Arn
function M.Target(RunCommandParameters, RoleArn, InputTransformer, EcsParameters, KinesisParameters, InputPath, Input, Id, Arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Target")
	local t = { 
		["RunCommandParameters"] = RunCommandParameters,
		["RoleArn"] = RoleArn,
		["InputTransformer"] = InputTransformer,
		["EcsParameters"] = EcsParameters,
		["KinesisParameters"] = KinesisParameters,
		["InputPath"] = InputPath,
		["Input"] = Input,
		["Id"] = Id,
		["Arn"] = Arn,
	}
	M.AssertTarget(t)
	return t
end

local DescribeRuleResponse_keys = { "ScheduleExpression" = true, "Name" = true, "EventPattern" = true, "State" = true, "RoleArn" = true, "Arn" = true, "Description" = true, nil }

function M.AssertDescribeRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRuleResponse to be of type 'table'")
	if struct["ScheduleExpression"] then M.AssertScheduleExpression(struct["ScheduleExpression"]) end
	if struct["Name"] then M.AssertRuleName(struct["Name"]) end
	if struct["EventPattern"] then M.AssertEventPattern(struct["EventPattern"]) end
	if struct["State"] then M.AssertRuleState(struct["State"]) end
	if struct["RoleArn"] then M.AssertRoleArn(struct["RoleArn"]) end
	if struct["Arn"] then M.AssertRuleArn(struct["Arn"]) end
	if struct["Description"] then M.AssertRuleDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(DescribeRuleResponse_keys[k], "DescribeRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRuleResponse
--  
-- @param ScheduleExpression [ScheduleExpression] &lt;p&gt;The scheduling expression. For example, &quot;cron(0 20 * * ? *)&quot;, &quot;rate(5 minutes)&quot;.&lt;/p&gt;
-- @param Name [RuleName] &lt;p&gt;The name of the rule.&lt;/p&gt;
-- @param EventPattern [EventPattern] &lt;p&gt;The event pattern. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html&quot;&gt;Events and Event Patterns&lt;/a&gt; in the &lt;i&gt;Amazon CloudWatch Events User Guide&lt;/i&gt;.&lt;/p&gt;
-- @param State [RuleState] &lt;p&gt;Specifies whether the rule is enabled or disabled.&lt;/p&gt;
-- @param RoleArn [RoleArn] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM role associated with the rule.&lt;/p&gt;
-- @param Arn [RuleArn] &lt;p&gt;The Amazon Resource Name (ARN) of the rule.&lt;/p&gt;
-- @param Description [RuleDescription] &lt;p&gt;The description of the rule.&lt;/p&gt;
function M.DescribeRuleResponse(ScheduleExpression, Name, EventPattern, State, RoleArn, Arn, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRuleResponse")
	local t = { 
		["ScheduleExpression"] = ScheduleExpression,
		["Name"] = Name,
		["EventPattern"] = EventPattern,
		["State"] = State,
		["RoleArn"] = RoleArn,
		["Arn"] = Arn,
		["Description"] = Description,
	}
	M.AssertDescribeRuleResponse(t)
	return t
end

local RunCommandParameters_keys = { "RunCommandTargets" = true, nil }

function M.AssertRunCommandParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RunCommandParameters to be of type 'table'")
	assert(struct["RunCommandTargets"], "Expected key RunCommandTargets to exist in table")
	if struct["RunCommandTargets"] then M.AssertRunCommandTargets(struct["RunCommandTargets"]) end
	for k,_ in pairs(struct) do
		assert(RunCommandParameters_keys[k], "RunCommandParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RunCommandParameters
-- &lt;p&gt;This parameter contains the criteria (either InstanceIds or a tag) used to specify which EC2 instances are to be sent the command. &lt;/p&gt;
-- @param RunCommandTargets [RunCommandTargets] &lt;p&gt;Currently, we support including only one RunCommandTarget block, which specifies either an array of InstanceIds or a tag.&lt;/p&gt;
-- Required parameter: RunCommandTargets
function M.RunCommandParameters(RunCommandTargets, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RunCommandParameters")
	local t = { 
		["RunCommandTargets"] = RunCommandTargets,
	}
	M.AssertRunCommandParameters(t)
	return t
end

local PutEventsResultEntry_keys = { "EventId" = true, "ErrorCode" = true, "ErrorMessage" = true, nil }

function M.AssertPutEventsResultEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEventsResultEntry to be of type 'table'")
	if struct["EventId"] then M.AssertEventId(struct["EventId"]) end
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then M.AssertErrorMessage(struct["ErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(PutEventsResultEntry_keys[k], "PutEventsResultEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEventsResultEntry
-- &lt;p&gt;Represents an event that failed to be submitted.&lt;/p&gt;
-- @param EventId [EventId] &lt;p&gt;The ID of the event.&lt;/p&gt;
-- @param ErrorCode [ErrorCode] &lt;p&gt;The error code that indicates why the event submission failed.&lt;/p&gt;
-- @param ErrorMessage [ErrorMessage] &lt;p&gt;The error message that explains why the event submission failed.&lt;/p&gt;
function M.PutEventsResultEntry(EventId, ErrorCode, ErrorMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutEventsResultEntry")
	local t = { 
		["EventId"] = EventId,
		["ErrorCode"] = ErrorCode,
		["ErrorMessage"] = ErrorMessage,
	}
	M.AssertPutEventsResultEntry(t)
	return t
end

local RemoveTargetsResponse_keys = { "FailedEntries" = true, "FailedEntryCount" = true, nil }

function M.AssertRemoveTargetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTargetsResponse to be of type 'table'")
	if struct["FailedEntries"] then M.AssertRemoveTargetsResultEntryList(struct["FailedEntries"]) end
	if struct["FailedEntryCount"] then M.AssertInteger(struct["FailedEntryCount"]) end
	for k,_ in pairs(struct) do
		assert(RemoveTargetsResponse_keys[k], "RemoveTargetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTargetsResponse
--  
-- @param FailedEntries [RemoveTargetsResultEntryList] &lt;p&gt;The failed target entries.&lt;/p&gt;
-- @param FailedEntryCount [Integer] &lt;p&gt;The number of failed entries.&lt;/p&gt;
function M.RemoveTargetsResponse(FailedEntries, FailedEntryCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTargetsResponse")
	local t = { 
		["FailedEntries"] = FailedEntries,
		["FailedEntryCount"] = FailedEntryCount,
	}
	M.AssertRemoveTargetsResponse(t)
	return t
end

local PutTargetsRequest_keys = { "Targets" = true, "Rule" = true, nil }

function M.AssertPutTargetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutTargetsRequest to be of type 'table'")
	assert(struct["Rule"], "Expected key Rule to exist in table")
	assert(struct["Targets"], "Expected key Targets to exist in table")
	if struct["Targets"] then M.AssertTargetList(struct["Targets"]) end
	if struct["Rule"] then M.AssertRuleName(struct["Rule"]) end
	for k,_ in pairs(struct) do
		assert(PutTargetsRequest_keys[k], "PutTargetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutTargetsRequest
--  
-- @param Targets [TargetList] &lt;p&gt;The targets to update or add to the rule.&lt;/p&gt;
-- @param Rule [RuleName] &lt;p&gt;The name of the rule.&lt;/p&gt;
-- Required parameter: Rule
-- Required parameter: Targets
function M.PutTargetsRequest(Targets, Rule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutTargetsRequest")
	local t = { 
		["Targets"] = Targets,
		["Rule"] = Rule,
	}
	M.AssertPutTargetsRequest(t)
	return t
end

local RemoveTargetsResultEntry_keys = { "ErrorCode" = true, "ErrorMessage" = true, "TargetId" = true, nil }

function M.AssertRemoveTargetsResultEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTargetsResultEntry to be of type 'table'")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then M.AssertErrorMessage(struct["ErrorMessage"]) end
	if struct["TargetId"] then M.AssertTargetId(struct["TargetId"]) end
	for k,_ in pairs(struct) do
		assert(RemoveTargetsResultEntry_keys[k], "RemoveTargetsResultEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTargetsResultEntry
-- &lt;p&gt;Represents a target that failed to be removed from a rule.&lt;/p&gt;
-- @param ErrorCode [ErrorCode] &lt;p&gt;The error code that indicates why the target removal failed. If the value is &lt;code&gt;ConcurrentModificationException&lt;/code&gt;, too many requests were made at the same time.&lt;/p&gt;
-- @param ErrorMessage [ErrorMessage] &lt;p&gt;The error message that explains why the target removal failed.&lt;/p&gt;
-- @param TargetId [TargetId] &lt;p&gt;The ID of the target.&lt;/p&gt;
function M.RemoveTargetsResultEntry(ErrorCode, ErrorMessage, TargetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTargetsResultEntry")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["ErrorMessage"] = ErrorMessage,
		["TargetId"] = TargetId,
	}
	M.AssertRemoveTargetsResultEntry(t)
	return t
end

local PutTargetsResultEntry_keys = { "ErrorCode" = true, "ErrorMessage" = true, "TargetId" = true, nil }

function M.AssertPutTargetsResultEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutTargetsResultEntry to be of type 'table'")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then M.AssertErrorMessage(struct["ErrorMessage"]) end
	if struct["TargetId"] then M.AssertTargetId(struct["TargetId"]) end
	for k,_ in pairs(struct) do
		assert(PutTargetsResultEntry_keys[k], "PutTargetsResultEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutTargetsResultEntry
-- &lt;p&gt;Represents a target that failed to be added to a rule.&lt;/p&gt;
-- @param ErrorCode [ErrorCode] &lt;p&gt;The error code that indicates why the target addition failed. If the value is &lt;code&gt;ConcurrentModificationException&lt;/code&gt;, too many requests were made at the same time.&lt;/p&gt;
-- @param ErrorMessage [ErrorMessage] &lt;p&gt;The error message that explains why the target addition failed.&lt;/p&gt;
-- @param TargetId [TargetId] &lt;p&gt;The ID of the target.&lt;/p&gt;
function M.PutTargetsResultEntry(ErrorCode, ErrorMessage, TargetId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutTargetsResultEntry")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["ErrorMessage"] = ErrorMessage,
		["TargetId"] = TargetId,
	}
	M.AssertPutTargetsResultEntry(t)
	return t
end

local EcsParameters_keys = { "TaskDefinitionArn" = true, "TaskCount" = true, nil }

function M.AssertEcsParameters(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EcsParameters to be of type 'table'")
	assert(struct["TaskDefinitionArn"], "Expected key TaskDefinitionArn to exist in table")
	if struct["TaskDefinitionArn"] then M.AssertArn(struct["TaskDefinitionArn"]) end
	if struct["TaskCount"] then M.AssertLimitMin1(struct["TaskCount"]) end
	for k,_ in pairs(struct) do
		assert(EcsParameters_keys[k], "EcsParameters contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EcsParameters
-- &lt;p&gt;The custom parameters to be used when the target is an Amazon ECS cluster.&lt;/p&gt;
-- @param TaskDefinitionArn [Arn] &lt;p&gt;The ARN of the task definition to use if the event target is an Amazon ECS cluster. &lt;/p&gt;
-- @param TaskCount [LimitMin1] &lt;p&gt;The number of tasks to create based on the &lt;code&gt;TaskDefinition&lt;/code&gt;. The default is one.&lt;/p&gt;
-- Required parameter: TaskDefinitionArn
function M.EcsParameters(TaskDefinitionArn, TaskCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EcsParameters")
	local t = { 
		["TaskDefinitionArn"] = TaskDefinitionArn,
		["TaskCount"] = TaskCount,
	}
	M.AssertEcsParameters(t)
	return t
end

local RemoveTargetsRequest_keys = { "Ids" = true, "Rule" = true, nil }

function M.AssertRemoveTargetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTargetsRequest to be of type 'table'")
	assert(struct["Rule"], "Expected key Rule to exist in table")
	assert(struct["Ids"], "Expected key Ids to exist in table")
	if struct["Ids"] then M.AssertTargetIdList(struct["Ids"]) end
	if struct["Rule"] then M.AssertRuleName(struct["Rule"]) end
	for k,_ in pairs(struct) do
		assert(RemoveTargetsRequest_keys[k], "RemoveTargetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTargetsRequest
--  
-- @param Ids [TargetIdList] &lt;p&gt;The IDs of the targets to remove from the rule.&lt;/p&gt;
-- @param Rule [RuleName] &lt;p&gt;The name of the rule.&lt;/p&gt;
-- Required parameter: Rule
-- Required parameter: Ids
function M.RemoveTargetsRequest(Ids, Rule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTargetsRequest")
	local t = { 
		["Ids"] = Ids,
		["Rule"] = Rule,
	}
	M.AssertRemoveTargetsRequest(t)
	return t
end

local DescribeRuleRequest_keys = { "Name" = true, nil }

function M.AssertDescribeRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRuleRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertRuleName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DescribeRuleRequest_keys[k], "DescribeRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRuleRequest
--  
-- @param Name [RuleName] &lt;p&gt;The name of the rule.&lt;/p&gt;
-- Required parameter: Name
function M.DescribeRuleRequest(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRuleRequest")
	local t = { 
		["Name"] = Name,
	}
	M.AssertDescribeRuleRequest(t)
	return t
end

local ListRulesRequest_keys = { "NextToken" = true, "Limit" = true, "NamePrefix" = true, nil }

function M.AssertListRulesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRulesRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Limit"] then M.AssertLimitMax100(struct["Limit"]) end
	if struct["NamePrefix"] then M.AssertRuleName(struct["NamePrefix"]) end
	for k,_ in pairs(struct) do
		assert(ListRulesRequest_keys[k], "ListRulesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRulesRequest
--  
-- @param NextToken [NextToken] &lt;p&gt;The token returned by a previous call to retrieve the next set of results.&lt;/p&gt;
-- @param Limit [LimitMax100] &lt;p&gt;The maximum number of results to return.&lt;/p&gt;
-- @param NamePrefix [RuleName] &lt;p&gt;The prefix matching the rule name.&lt;/p&gt;
function M.ListRulesRequest(NextToken, Limit, NamePrefix, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRulesRequest")
	local t = { 
		["NextToken"] = NextToken,
		["Limit"] = Limit,
		["NamePrefix"] = NamePrefix,
	}
	M.AssertListRulesRequest(t)
	return t
end

local EnableRuleRequest_keys = { "Name" = true, nil }

function M.AssertEnableRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EnableRuleRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertRuleName(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(EnableRuleRequest_keys[k], "EnableRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EnableRuleRequest
--  
-- @param Name [RuleName] &lt;p&gt;The name of the rule.&lt;/p&gt;
-- Required parameter: Name
function M.EnableRuleRequest(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EnableRuleRequest")
	local t = { 
		["Name"] = Name,
	}
	M.AssertEnableRuleRequest(t)
	return t
end

local ListRuleNamesByTargetResponse_keys = { "NextToken" = true, "RuleNames" = true, nil }

function M.AssertListRuleNamesByTargetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRuleNamesByTargetResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["RuleNames"] then M.AssertRuleNameList(struct["RuleNames"]) end
	for k,_ in pairs(struct) do
		assert(ListRuleNamesByTargetResponse_keys[k], "ListRuleNamesByTargetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRuleNamesByTargetResponse
--  
-- @param NextToken [NextToken] &lt;p&gt;Indicates whether there are additional results to retrieve. If there are no more results, the value is null.&lt;/p&gt;
-- @param RuleNames [RuleNameList] &lt;p&gt;The names of the rules that can invoke the given target.&lt;/p&gt;
function M.ListRuleNamesByTargetResponse(NextToken, RuleNames, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRuleNamesByTargetResponse")
	local t = { 
		["NextToken"] = NextToken,
		["RuleNames"] = RuleNames,
	}
	M.AssertListRuleNamesByTargetResponse(t)
	return t
end

local InternalException_keys = { nil }

function M.AssertInternalException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InternalException_keys[k], "InternalException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalException
-- &lt;p&gt;This exception occurs due to unexpected causes.&lt;/p&gt;
function M.InternalException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalException")
	local t = { 
	}
	M.AssertInternalException(t)
	return t
end

local ListTargetsByRuleRequest_keys = { "NextToken" = true, "Limit" = true, "Rule" = true, nil }

function M.AssertListTargetsByRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTargetsByRuleRequest to be of type 'table'")
	assert(struct["Rule"], "Expected key Rule to exist in table")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Limit"] then M.AssertLimitMax100(struct["Limit"]) end
	if struct["Rule"] then M.AssertRuleName(struct["Rule"]) end
	for k,_ in pairs(struct) do
		assert(ListTargetsByRuleRequest_keys[k], "ListTargetsByRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTargetsByRuleRequest
--  
-- @param NextToken [NextToken] &lt;p&gt;The token returned by a previous call to retrieve the next set of results.&lt;/p&gt;
-- @param Limit [LimitMax100] &lt;p&gt;The maximum number of results to return.&lt;/p&gt;
-- @param Rule [RuleName] &lt;p&gt;The name of the rule.&lt;/p&gt;
-- Required parameter: Rule
function M.ListTargetsByRuleRequest(NextToken, Limit, Rule, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTargetsByRuleRequest")
	local t = { 
		["NextToken"] = NextToken,
		["Limit"] = Limit,
		["Rule"] = Rule,
	}
	M.AssertListTargetsByRuleRequest(t)
	return t
end

local PutRuleResponse_keys = { "RuleArn" = true, nil }

function M.AssertPutRuleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRuleResponse to be of type 'table'")
	if struct["RuleArn"] then M.AssertRuleArn(struct["RuleArn"]) end
	for k,_ in pairs(struct) do
		assert(PutRuleResponse_keys[k], "PutRuleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRuleResponse
--  
-- @param RuleArn [RuleArn] &lt;p&gt;The Amazon Resource Name (ARN) of the rule.&lt;/p&gt;
function M.PutRuleResponse(RuleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRuleResponse")
	local t = { 
		["RuleArn"] = RuleArn,
	}
	M.AssertPutRuleResponse(t)
	return t
end

local TestEventPatternResponse_keys = { "Result" = true, nil }

function M.AssertTestEventPatternResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestEventPatternResponse to be of type 'table'")
	if struct["Result"] then M.AssertBoolean(struct["Result"]) end
	for k,_ in pairs(struct) do
		assert(TestEventPatternResponse_keys[k], "TestEventPatternResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestEventPatternResponse
--  
-- @param Result [Boolean] &lt;p&gt;Indicates whether the event matches the event pattern.&lt;/p&gt;
function M.TestEventPatternResponse(Result, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestEventPatternResponse")
	local t = { 
		["Result"] = Result,
	}
	M.AssertTestEventPatternResponse(t)
	return t
end

local Rule_keys = { "ScheduleExpression" = true, "Name" = true, "EventPattern" = true, "State" = true, "RoleArn" = true, "Arn" = true, "Description" = true, nil }

function M.AssertRule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Rule to be of type 'table'")
	if struct["ScheduleExpression"] then M.AssertScheduleExpression(struct["ScheduleExpression"]) end
	if struct["Name"] then M.AssertRuleName(struct["Name"]) end
	if struct["EventPattern"] then M.AssertEventPattern(struct["EventPattern"]) end
	if struct["State"] then M.AssertRuleState(struct["State"]) end
	if struct["RoleArn"] then M.AssertRoleArn(struct["RoleArn"]) end
	if struct["Arn"] then M.AssertRuleArn(struct["Arn"]) end
	if struct["Description"] then M.AssertRuleDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(Rule_keys[k], "Rule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Rule
-- &lt;p&gt;Contains information about a rule in Amazon CloudWatch Events.&lt;/p&gt;
-- @param ScheduleExpression [ScheduleExpression] &lt;p&gt;The scheduling expression. For example, &quot;cron(0 20 * * ? *)&quot;, &quot;rate(5 minutes)&quot;.&lt;/p&gt;
-- @param Name [RuleName] &lt;p&gt;The name of the rule.&lt;/p&gt;
-- @param EventPattern [EventPattern] &lt;p&gt;The event pattern of the rule. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html&quot;&gt;Events and Event Patterns&lt;/a&gt; in the &lt;i&gt;Amazon CloudWatch Events User Guide&lt;/i&gt;.&lt;/p&gt;
-- @param State [RuleState] &lt;p&gt;The state of the rule.&lt;/p&gt;
-- @param RoleArn [RoleArn] &lt;p&gt;The Amazon Resource Name (ARN) of the role that is used for target invocation.&lt;/p&gt;
-- @param Arn [RuleArn] &lt;p&gt;The Amazon Resource Name (ARN) of the rule.&lt;/p&gt;
-- @param Description [RuleDescription] &lt;p&gt;The description of the rule.&lt;/p&gt;
function M.Rule(ScheduleExpression, Name, EventPattern, State, RoleArn, Arn, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Rule")
	local t = { 
		["ScheduleExpression"] = ScheduleExpression,
		["Name"] = Name,
		["EventPattern"] = EventPattern,
		["State"] = State,
		["RoleArn"] = RoleArn,
		["Arn"] = Arn,
		["Description"] = Description,
	}
	M.AssertRule(t)
	return t
end

local PutEventsRequest_keys = { "Entries" = true, nil }

function M.AssertPutEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEventsRequest to be of type 'table'")
	assert(struct["Entries"], "Expected key Entries to exist in table")
	if struct["Entries"] then M.AssertPutEventsRequestEntryList(struct["Entries"]) end
	for k,_ in pairs(struct) do
		assert(PutEventsRequest_keys[k], "PutEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEventsRequest
--  
-- @param Entries [PutEventsRequestEntryList] &lt;p&gt;The entry that defines an event in your system. You can specify several parameters for the entry such as the source and type of the event, resources associated with the event, and so on.&lt;/p&gt;
-- Required parameter: Entries
function M.PutEventsRequest(Entries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutEventsRequest")
	local t = { 
		["Entries"] = Entries,
	}
	M.AssertPutEventsRequest(t)
	return t
end

local PutRuleRequest_keys = { "ScheduleExpression" = true, "Name" = true, "RoleArn" = true, "State" = true, "EventPattern" = true, "Description" = true, nil }

function M.AssertPutRuleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRuleRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["ScheduleExpression"] then M.AssertScheduleExpression(struct["ScheduleExpression"]) end
	if struct["Name"] then M.AssertRuleName(struct["Name"]) end
	if struct["RoleArn"] then M.AssertRoleArn(struct["RoleArn"]) end
	if struct["State"] then M.AssertRuleState(struct["State"]) end
	if struct["EventPattern"] then M.AssertEventPattern(struct["EventPattern"]) end
	if struct["Description"] then M.AssertRuleDescription(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(PutRuleRequest_keys[k], "PutRuleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRuleRequest
--  
-- @param ScheduleExpression [ScheduleExpression] &lt;p&gt;The scheduling expression. For example, &quot;cron(0 20 * * ? *)&quot;, &quot;rate(5 minutes)&quot;.&lt;/p&gt;
-- @param Name [RuleName] &lt;p&gt;The name of the rule that you are creating or updating.&lt;/p&gt;
-- @param RoleArn [RoleArn] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM role associated with the rule.&lt;/p&gt;
-- @param State [RuleState] &lt;p&gt;Indicates whether the rule is enabled or disabled.&lt;/p&gt;
-- @param EventPattern [EventPattern] &lt;p&gt;The event pattern. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html&quot;&gt;Events and Event Patterns&lt;/a&gt; in the &lt;i&gt;Amazon CloudWatch Events User Guide&lt;/i&gt;.&lt;/p&gt;
-- @param Description [RuleDescription] &lt;p&gt;A description of the rule.&lt;/p&gt;
-- Required parameter: Name
function M.PutRuleRequest(ScheduleExpression, Name, RoleArn, State, EventPattern, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRuleRequest")
	local t = { 
		["ScheduleExpression"] = ScheduleExpression,
		["Name"] = Name,
		["RoleArn"] = RoleArn,
		["State"] = State,
		["EventPattern"] = EventPattern,
		["Description"] = Description,
	}
	M.AssertPutRuleRequest(t)
	return t
end

local PutEventsResponse_keys = { "FailedEntryCount" = true, "Entries" = true, nil }

function M.AssertPutEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEventsResponse to be of type 'table'")
	if struct["FailedEntryCount"] then M.AssertInteger(struct["FailedEntryCount"]) end
	if struct["Entries"] then M.AssertPutEventsResultEntryList(struct["Entries"]) end
	for k,_ in pairs(struct) do
		assert(PutEventsResponse_keys[k], "PutEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEventsResponse
--  
-- @param FailedEntryCount [Integer] &lt;p&gt;The number of failed entries.&lt;/p&gt;
-- @param Entries [PutEventsResultEntryList] &lt;p&gt;The successfully and unsuccessfully ingested events results. If the ingestion was successful, the entry has the event ID in it. Otherwise, you can use the error code and error message to identify the problem with the entry.&lt;/p&gt;
function M.PutEventsResponse(FailedEntryCount, Entries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutEventsResponse")
	local t = { 
		["FailedEntryCount"] = FailedEntryCount,
		["Entries"] = Entries,
	}
	M.AssertPutEventsResponse(t)
	return t
end

local InvalidEventPatternException_keys = { nil }

function M.AssertInvalidEventPatternException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidEventPatternException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidEventPatternException_keys[k], "InvalidEventPatternException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidEventPatternException
-- &lt;p&gt;The event pattern is not valid.&lt;/p&gt;
function M.InvalidEventPatternException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidEventPatternException")
	local t = { 
	}
	M.AssertInvalidEventPatternException(t)
	return t
end

local TestEventPatternRequest_keys = { "EventPattern" = true, "Event" = true, nil }

function M.AssertTestEventPatternRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestEventPatternRequest to be of type 'table'")
	assert(struct["EventPattern"], "Expected key EventPattern to exist in table")
	assert(struct["Event"], "Expected key Event to exist in table")
	if struct["EventPattern"] then M.AssertEventPattern(struct["EventPattern"]) end
	if struct["Event"] then M.AssertString(struct["Event"]) end
	for k,_ in pairs(struct) do
		assert(TestEventPatternRequest_keys[k], "TestEventPatternRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestEventPatternRequest
--  
-- @param EventPattern [EventPattern] &lt;p&gt;The event pattern. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/AmazonCloudWatch/latest/events/CloudWatchEventsandEventPatterns.html&quot;&gt;Events and Event Patterns&lt;/a&gt; in the &lt;i&gt;Amazon CloudWatch Events User Guide&lt;/i&gt;.&lt;/p&gt;
-- @param Event [String] &lt;p&gt;The event, in JSON format, to test against the event pattern.&lt;/p&gt;
-- Required parameter: EventPattern
-- Required parameter: Event
function M.TestEventPatternRequest(EventPattern, Event, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestEventPatternRequest")
	local t = { 
		["EventPattern"] = EventPattern,
		["Event"] = Event,
	}
	M.AssertTestEventPatternRequest(t)
	return t
end

local ResourceNotFoundException_keys = { nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- &lt;p&gt;The rule does not exist.&lt;/p&gt;
function M.ResourceNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
	}
	M.AssertResourceNotFoundException(t)
	return t
end

function M.AssertRuleDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleDescription to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
end

--  
function M.RuleDescription(str)
	M.AssertRuleDescription(str)
	return str
end

function M.AssertRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleArn to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RoleArn(str)
	M.AssertRoleArn(str)
	return str
end

function M.AssertTargetInput(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetInput to be of type 'string'")
	assert(#str <= 8192, "Expected string to be max 8192 characters")
end

--  
function M.TargetInput(str)
	M.AssertTargetInput(str)
	return str
end

function M.AssertScheduleExpression(str)
	assert(str)
	assert(type(str) == "string", "Expected ScheduleExpression to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.ScheduleExpression(str)
	M.AssertScheduleExpression(str)
	return str
end

function M.AssertTargetArn(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetArn to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TargetArn(str)
	M.AssertTargetArn(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NextToken(str)
	M.AssertNextToken(str)
	return str
end

function M.AssertEventPattern(str)
	assert(str)
	assert(type(str) == "string", "Expected EventPattern to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.EventPattern(str)
	M.AssertEventPattern(str)
	return str
end

function M.AssertTargetInputPath(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetInputPath to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TargetInputPath(str)
	M.AssertTargetInputPath(str)
	return str
end

function M.AssertTargetId(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%.%-_A-Za-z0-9]+"), "Expected string to match pattern '[%.%-_A-Za-z0-9]+'")
end

--  
function M.TargetId(str)
	M.AssertTargetId(str)
	return str
end

function M.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
end

--  
function M.ErrorCode(str)
	M.AssertErrorCode(str)
	return str
end

function M.AssertRunCommandTargetValue(str)
	assert(str)
	assert(type(str) == "string", "Expected RunCommandTargetValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RunCommandTargetValue(str)
	M.AssertRunCommandTargetValue(str)
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

function M.AssertTransformerInput(str)
	assert(str)
	assert(type(str) == "string", "Expected TransformerInput to be of type 'string'")
	assert(#str <= 8192, "Expected string to be max 8192 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TransformerInput(str)
	M.AssertTransformerInput(str)
	return str
end

function M.AssertRuleState(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleState to be of type 'string'")
end

--  
function M.RuleState(str)
	M.AssertRuleState(str)
	return str
end

function M.AssertEventResource(str)
	assert(str)
	assert(type(str) == "string", "Expected EventResource to be of type 'string'")
end

--  
function M.EventResource(str)
	M.AssertEventResource(str)
	return str
end

function M.AssertRunCommandTargetKey(str)
	assert(str)
	assert(type(str) == "string", "Expected RunCommandTargetKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^[%p{L}%p{Z}%p{N}_.:/=+%-@]*$"), "Expected string to match pattern '^[%p{L}%p{Z}%p{N}_.:/=+%-@]*$'")
end

--  
function M.RunCommandTargetKey(str)
	M.AssertRunCommandTargetKey(str)
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

function M.AssertTargetPartitionKeyPath(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetPartitionKeyPath to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TargetPartitionKeyPath(str)
	M.AssertTargetPartitionKeyPath(str)
	return str
end

function M.AssertRuleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleArn to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RuleArn(str)
	M.AssertRuleArn(str)
	return str
end

function M.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	M.AssertErrorMessage(str)
	return str
end

function M.AssertInputTransformerPathKey(str)
	assert(str)
	assert(type(str) == "string", "Expected InputTransformerPathKey to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[A-Za-z0-9%_%-]+"), "Expected string to match pattern '[A-Za-z0-9%_%-]+'")
end

--  
function M.InputTransformerPathKey(str)
	M.AssertInputTransformerPathKey(str)
	return str
end

function M.AssertRuleName(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%.%-_A-Za-z0-9]+"), "Expected string to match pattern '[%.%-_A-Za-z0-9]+'")
end

--  
function M.RuleName(str)
	M.AssertRuleName(str)
	return str
end

function M.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
	assert(#str <= 1600, "Expected string to be max 1600 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Arn(str)
	M.AssertArn(str)
	return str
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

function M.AssertLimitMin1(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected LimitMin1 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.LimitMin1(integer)
	M.AssertLimitMin1(integer)
	return integer
end

function M.AssertLimitMax100(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected LimitMax100 to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 100, "Expected integer to be max 100")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.LimitMax100(integer)
	M.AssertLimitMax100(integer)
	return integer
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertTransformerPaths(map)
	assert(map)
	assert(type(map) == "table", "Expected TransformerPaths to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertInputTransformerPathKey(k)
		M.AssertTargetInputPath(v)
	end
end

function M.TransformerPaths(map)
	M.AssertTransformerPaths(map)
	return map
end

function M.AssertEventTime(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected EventTime to be of type 'string'")
end

function M.EventTime(timestamp)
	M.AssertEventTime(timestamp)
	return timestamp
end

function M.AssertTargetIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetIdList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertTargetId(v)
	end
end

--  
-- List of TargetId objects
function M.TargetIdList(list)
	M.AssertTargetIdList(list)
	return list
end

function M.AssertRunCommandTargetValues(list)
	assert(list)
	assert(type(list) == "table", "Expected RunCommandTargetValues to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertRunCommandTargetValue(v)
	end
end

--  
-- List of RunCommandTargetValue objects
function M.RunCommandTargetValues(list)
	M.AssertRunCommandTargetValues(list)
	return list
end

function M.AssertPutTargetsResultEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PutTargetsResultEntryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPutTargetsResultEntry(v)
	end
end

--  
-- List of PutTargetsResultEntry objects
function M.PutTargetsResultEntryList(list)
	M.AssertPutTargetsResultEntryList(list)
	return list
end

function M.AssertRunCommandTargets(list)
	assert(list)
	assert(type(list) == "table", "Expected RunCommandTargets to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertRunCommandTarget(v)
	end
end

--  
-- List of RunCommandTarget objects
function M.RunCommandTargets(list)
	M.AssertRunCommandTargets(list)
	return list
end

function M.AssertPutEventsRequestEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PutEventsRequestEntryList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertPutEventsRequestEntry(v)
	end
end

--  
-- List of PutEventsRequestEntry objects
function M.PutEventsRequestEntryList(list)
	M.AssertPutEventsRequestEntryList(list)
	return list
end

function M.AssertPutEventsResultEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected PutEventsResultEntryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPutEventsResultEntry(v)
	end
end

--  
-- List of PutEventsResultEntry objects
function M.PutEventsResultEntryList(list)
	M.AssertPutEventsResultEntryList(list)
	return list
end

function M.AssertRuleResponseList(list)
	assert(list)
	assert(type(list) == "table", "Expected RuleResponseList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRule(v)
	end
end

--  
-- List of Rule objects
function M.RuleResponseList(list)
	M.AssertRuleResponseList(list)
	return list
end

function M.AssertEventResourceList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventResourceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEventResource(v)
	end
end

--  
-- List of EventResource objects
function M.EventResourceList(list)
	M.AssertEventResourceList(list)
	return list
end

function M.AssertRuleNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected RuleNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRuleName(v)
	end
end

--  
-- List of RuleName objects
function M.RuleNameList(list)
	M.AssertRuleNameList(list)
	return list
end

function M.AssertRemoveTargetsResultEntryList(list)
	assert(list)
	assert(type(list) == "table", "Expected RemoveTargetsResultEntryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRemoveTargetsResultEntry(v)
	end
end

--  
-- List of RemoveTargetsResultEntry objects
function M.RemoveTargetsResultEntryList(list)
	M.AssertRemoveTargetsResultEntryList(list)
	return list
end

function M.AssertTargetList(list)
	assert(list)
	assert(type(list) == "table", "Expected TargetList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertTarget(v)
	end
end

--  
-- List of Target objects
function M.TargetList(list)
	M.AssertTargetList(list)
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
--- PutEvents
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

--- DescribeRule
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

--- ListTargetsByRule
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

--- PutTargets
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

--- DeleteRule
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

--- ListRuleNamesByTarget
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

--- EnableRule
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

--- TestEventPattern
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

--- ListRules
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

--- DisableRule
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

--- PutRule
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

--- RemoveTargets
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


return M
