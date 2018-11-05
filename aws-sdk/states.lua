--- GENERATED CODE - DO NOT MODIFY
-- AWS Step Functions (states-2016-11-23)

local M = {}

M.metadata = {
	api_version = "2016-11-23",
	json_version = "1.0",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "states",
	service_abbreviation = "AWS SFN",
	service_full_name = "AWS Step Functions",
	signature_version = "v4",
	target_prefix = "AWSStepFunctions",
	timestamp_format = "",
	global_endpoint = "",
	uid = "states-2016-11-23",
}

local keys = {}
local asserts = {}

keys.ExecutionDoesNotExist = { ["message"] = true, nil }

function asserts.AssertExecutionDoesNotExist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionDoesNotExist to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExecutionDoesNotExist[k], "ExecutionDoesNotExist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionDoesNotExist
-- <p>The specified execution does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return ExecutionDoesNotExist structure as a key-value pair table
function M.ExecutionDoesNotExist(args)
	assert(args, "You must provide an argument table when creating ExecutionDoesNotExist")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertExecutionDoesNotExist(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartExecutionInput = { ["input"] = true, ["stateMachineArn"] = true, ["name"] = true, nil }

function asserts.AssertStartExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartExecutionInput to be of type 'table'")
	assert(struct["stateMachineArn"], "Expected key stateMachineArn to exist in table")
	if struct["input"] then asserts.AssertData(struct["input"]) end
	if struct["stateMachineArn"] then asserts.AssertArn(struct["stateMachineArn"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartExecutionInput[k], "StartExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartExecutionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * input [Data] <p>The string that contains the JSON input data for the execution, for example:</p> <p> <code>"input": "{\"first_name\" : \"test\"}"</code> </p> <note> <p>If you don't include any JSON input data, you still must include the two braces, for example: <code>"input": "{}"</code> </p> </note>
-- * stateMachineArn [Arn] <p>The Amazon Resource Name (ARN) of the state machine to execute.</p>
-- * name [Name] <p>The name of the execution. This name must be unique for your AWS account and region for 90 days. For more information, see <a href="http://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions"> Limits Related to State Machine Executions</a> in the <i>AWS Step Functions Developer Guide</i>.</p> <important> <p>An execution can't use the name of another execution for 90 days.</p> <p>When you make multiple <code>StartExecution</code> calls with the same name, the new execution doesn't run and the following rules apply:</p> <ul> <li> <p>When the original execution is open and the execution input from the new call is <i>different</i>, the <code>ExecutionAlreadyExists</code> message is returned.</p> </li> <li> <p>When the original execution is open and the execution input from the new call is <i>identical</i>, the <code>Success</code> message is returned.</p> </li> <li> <p>When the original execution is closed, the <code>ExecutionAlreadyExists</code> message is returned regardless of input.</p> </li> </ul> </important> <p>A name must <i>not</i> contain:</p> <ul> <li> <p>whitespace</p> </li> <li> <p>brackets <code>&lt; &gt; { } [ ]</code> </p> </li> <li> <p>wildcard characters <code>? *</code> </p> </li> <li> <p>special characters <code>" # % \ ^ | ~ ` $ &amp; , ; : /</code> </p> </li> <li> <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p> </li> </ul>
-- Required key: stateMachineArn
-- @return StartExecutionInput structure as a key-value pair table
function M.StartExecutionInput(args)
	assert(args, "You must provide an argument table when creating StartExecutionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["input"] = args["input"],
		["stateMachineArn"] = args["stateMachineArn"],
		["name"] = args["name"],
	}
	asserts.AssertStartExecutionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StateExitedEventDetails = { ["output"] = true, ["name"] = true, nil }

function asserts.AssertStateExitedEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StateExitedEventDetails to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["output"] then asserts.AssertData(struct["output"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StateExitedEventDetails[k], "StateExitedEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StateExitedEventDetails
-- <p>Contains details about an exit from a state during an execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * output [Data] <p>The JSON output data of the state.</p>
-- * name [Name] <p>The name of the state.</p> <p>A name must <i>not</i> contain:</p> <ul> <li> <p>whitespace</p> </li> <li> <p>brackets <code>&lt; &gt; { } [ ]</code> </p> </li> <li> <p>wildcard characters <code>? *</code> </p> </li> <li> <p>special characters <code>" # % \ ^ | ~ ` $ &amp; , ; : /</code> </p> </li> <li> <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p> </li> </ul>
-- Required key: name
-- @return StateExitedEventDetails structure as a key-value pair table
function M.StateExitedEventDetails(args)
	assert(args, "You must provide an argument table when creating StateExitedEventDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["output"] = args["output"],
		["name"] = args["name"],
	}
	asserts.AssertStateExitedEventDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActivityListItem = { ["creationDate"] = true, ["name"] = true, ["activityArn"] = true, nil }

function asserts.AssertActivityListItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityListItem to be of type 'table'")
	assert(struct["activityArn"], "Expected key activityArn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["creationDate"], "Expected key creationDate to exist in table")
	if struct["creationDate"] then asserts.AssertTimestamp(struct["creationDate"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["activityArn"] then asserts.AssertArn(struct["activityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityListItem[k], "ActivityListItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityListItem
-- <p>Contains details about an activity.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * creationDate [Timestamp] <p>The date the activity is created.</p>
-- * name [Name] <p>The name of the activity.</p> <p>A name must <i>not</i> contain:</p> <ul> <li> <p>whitespace</p> </li> <li> <p>brackets <code>&lt; &gt; { } [ ]</code> </p> </li> <li> <p>wildcard characters <code>? *</code> </p> </li> <li> <p>special characters <code>" # % \ ^ | ~ ` $ &amp; , ; : /</code> </p> </li> <li> <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p> </li> </ul>
-- * activityArn [Arn] <p>The Amazon Resource Name (ARN) that identifies the activity.</p>
-- Required key: activityArn
-- Required key: name
-- Required key: creationDate
-- @return ActivityListItem structure as a key-value pair table
function M.ActivityListItem(args)
	assert(args, "You must provide an argument table when creating ActivityListItem")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["creationDate"] = args["creationDate"],
		["name"] = args["name"],
		["activityArn"] = args["activityArn"],
	}
	asserts.AssertActivityListItem(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActivityStartedEventDetails = { ["workerName"] = true, nil }

function asserts.AssertActivityStartedEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityStartedEventDetails to be of type 'table'")
	if struct["workerName"] then asserts.AssertIdentity(struct["workerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityStartedEventDetails[k], "ActivityStartedEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityStartedEventDetails
-- <p>Contains details about the start of an activity during an execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * workerName [Identity] <p>The name of the worker that the task is assigned to. These names are provided by the workers when calling <a>GetActivityTask</a>.</p>
-- @return ActivityStartedEventDetails structure as a key-value pair table
function M.ActivityStartedEventDetails(args)
	assert(args, "You must provide an argument table when creating ActivityStartedEventDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["workerName"] = args["workerName"],
	}
	asserts.AssertActivityStartedEventDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListExecutionsInput = { ["statusFilter"] = true, ["nextToken"] = true, ["stateMachineArn"] = true, ["maxResults"] = true, nil }

function asserts.AssertListExecutionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListExecutionsInput to be of type 'table'")
	assert(struct["stateMachineArn"], "Expected key stateMachineArn to exist in table")
	if struct["statusFilter"] then asserts.AssertExecutionStatus(struct["statusFilter"]) end
	if struct["nextToken"] then asserts.AssertPageToken(struct["nextToken"]) end
	if struct["stateMachineArn"] then asserts.AssertArn(struct["stateMachineArn"]) end
	if struct["maxResults"] then asserts.AssertPageSize(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListExecutionsInput[k], "ListExecutionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListExecutionsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * statusFilter [ExecutionStatus] <p>If specified, only list the executions whose current execution status matches the given filter.</p>
-- * nextToken [PageToken] <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maxResults</code> determines how many results can be returned in a single call.</p>
-- * stateMachineArn [Arn] <p>The Amazon Resource Name (ARN) of the state machine whose executions is listed.</p>
-- * maxResults [PageSize] <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results. The default is 100 and the maximum allowed page size is 100. A value of 0 uses the default.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
-- Required key: stateMachineArn
-- @return ListExecutionsInput structure as a key-value pair table
function M.ListExecutionsInput(args)
	assert(args, "You must provide an argument table when creating ListExecutionsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["statusFilter"] = args["statusFilter"],
		["nextToken"] = args["nextToken"],
		["stateMachineArn"] = args["stateMachineArn"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListExecutionsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StateMachineLimitExceeded = { ["message"] = true, nil }

function asserts.AssertStateMachineLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StateMachineLimitExceeded to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.StateMachineLimitExceeded[k], "StateMachineLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StateMachineLimitExceeded
-- <p>The maximum number of state machines has been reached. Existing state machines must be deleted before a new state machine can be created.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return StateMachineLimitExceeded structure as a key-value pair table
function M.StateMachineLimitExceeded(args)
	assert(args, "You must provide an argument table when creating StateMachineLimitExceeded")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertStateMachineLimitExceeded(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateStateMachineOutput = { ["updateDate"] = true, nil }

function asserts.AssertUpdateStateMachineOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStateMachineOutput to be of type 'table'")
	assert(struct["updateDate"], "Expected key updateDate to exist in table")
	if struct["updateDate"] then asserts.AssertTimestamp(struct["updateDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateStateMachineOutput[k], "UpdateStateMachineOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStateMachineOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * updateDate [Timestamp] <p>The date and time the state machine was updated.</p>
-- Required key: updateDate
-- @return UpdateStateMachineOutput structure as a key-value pair table
function M.UpdateStateMachineOutput(args)
	assert(args, "You must provide an argument table when creating UpdateStateMachineOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["updateDate"] = args["updateDate"],
	}
	asserts.AssertUpdateStateMachineOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeStateMachineInput = { ["stateMachineArn"] = true, nil }

function asserts.AssertDescribeStateMachineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStateMachineInput to be of type 'table'")
	assert(struct["stateMachineArn"], "Expected key stateMachineArn to exist in table")
	if struct["stateMachineArn"] then asserts.AssertArn(struct["stateMachineArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStateMachineInput[k], "DescribeStateMachineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStateMachineInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * stateMachineArn [Arn] <p>The Amazon Resource Name (ARN) of the state machine to describe.</p>
-- Required key: stateMachineArn
-- @return DescribeStateMachineInput structure as a key-value pair table
function M.DescribeStateMachineInput(args)
	assert(args, "You must provide an argument table when creating DescribeStateMachineInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["stateMachineArn"] = args["stateMachineArn"],
	}
	asserts.AssertDescribeStateMachineInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateStateMachineInput = { ["definition"] = true, ["roleArn"] = true, ["name"] = true, nil }

function asserts.AssertCreateStateMachineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStateMachineInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["definition"], "Expected key definition to exist in table")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	if struct["definition"] then asserts.AssertDefinition(struct["definition"]) end
	if struct["roleArn"] then asserts.AssertArn(struct["roleArn"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStateMachineInput[k], "CreateStateMachineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStateMachineInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * definition [Definition] <p>The Amazon States Language definition of the state machine.</p>
-- * roleArn [Arn] <p>The Amazon Resource Name (ARN) of the IAM role to use for this state machine.</p>
-- * name [Name] <p>The name of the state machine. This name must be unique for your AWS account and region for 90 days. For more information, see <a href="http://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions"> Limits Related to State Machine Executions</a> in the <i>AWS Step Functions Developer Guide</i>.</p> <p>A name must <i>not</i> contain:</p> <ul> <li> <p>whitespace</p> </li> <li> <p>brackets <code>&lt; &gt; { } [ ]</code> </p> </li> <li> <p>wildcard characters <code>? *</code> </p> </li> <li> <p>special characters <code>" # % \ ^ | ~ ` $ &amp; , ; : /</code> </p> </li> <li> <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p> </li> </ul>
-- Required key: name
-- Required key: definition
-- Required key: roleArn
-- @return CreateStateMachineInput structure as a key-value pair table
function M.CreateStateMachineInput(args)
	assert(args, "You must provide an argument table when creating CreateStateMachineInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["definition"] = args["definition"],
		["roleArn"] = args["roleArn"],
		["name"] = args["name"],
	}
	asserts.AssertCreateStateMachineInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateStateMachineOutput = { ["creationDate"] = true, ["stateMachineArn"] = true, nil }

function asserts.AssertCreateStateMachineOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStateMachineOutput to be of type 'table'")
	assert(struct["stateMachineArn"], "Expected key stateMachineArn to exist in table")
	assert(struct["creationDate"], "Expected key creationDate to exist in table")
	if struct["creationDate"] then asserts.AssertTimestamp(struct["creationDate"]) end
	if struct["stateMachineArn"] then asserts.AssertArn(struct["stateMachineArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStateMachineOutput[k], "CreateStateMachineOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStateMachineOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * creationDate [Timestamp] <p>The date the state machine is created.</p>
-- * stateMachineArn [Arn] <p>The Amazon Resource Name (ARN) that identifies the created state machine.</p>
-- Required key: stateMachineArn
-- Required key: creationDate
-- @return CreateStateMachineOutput structure as a key-value pair table
function M.CreateStateMachineOutput(args)
	assert(args, "You must provide an argument table when creating CreateStateMachineOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["creationDate"] = args["creationDate"],
		["stateMachineArn"] = args["stateMachineArn"],
	}
	asserts.AssertCreateStateMachineOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeActivityInput = { ["activityArn"] = true, nil }

function asserts.AssertDescribeActivityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeActivityInput to be of type 'table'")
	assert(struct["activityArn"], "Expected key activityArn to exist in table")
	if struct["activityArn"] then asserts.AssertArn(struct["activityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeActivityInput[k], "DescribeActivityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeActivityInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * activityArn [Arn] <p>The Amazon Resource Name (ARN) of the activity to describe.</p>
-- Required key: activityArn
-- @return DescribeActivityInput structure as a key-value pair table
function M.DescribeActivityInput(args)
	assert(args, "You must provide an argument table when creating DescribeActivityInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["activityArn"] = args["activityArn"],
	}
	asserts.AssertDescribeActivityInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActivityLimitExceeded = { ["message"] = true, nil }

function asserts.AssertActivityLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityLimitExceeded to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityLimitExceeded[k], "ActivityLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityLimitExceeded
-- <p>The maximum number of activities has been reached. Existing activities must be deleted before a new activity can be created.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return ActivityLimitExceeded structure as a key-value pair table
function M.ActivityLimitExceeded(args)
	assert(args, "You must provide an argument table when creating ActivityLimitExceeded")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertActivityLimitExceeded(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetExecutionHistoryInput = { ["nextToken"] = true, ["reverseOrder"] = true, ["maxResults"] = true, ["executionArn"] = true, nil }

function asserts.AssertGetExecutionHistoryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetExecutionHistoryInput to be of type 'table'")
	assert(struct["executionArn"], "Expected key executionArn to exist in table")
	if struct["nextToken"] then asserts.AssertPageToken(struct["nextToken"]) end
	if struct["reverseOrder"] then asserts.AssertReverseOrder(struct["reverseOrder"]) end
	if struct["maxResults"] then asserts.AssertPageSize(struct["maxResults"]) end
	if struct["executionArn"] then asserts.AssertArn(struct["executionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetExecutionHistoryInput[k], "GetExecutionHistoryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetExecutionHistoryInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PageToken] <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maxResults</code> determines how many results can be returned in a single call.</p>
-- * reverseOrder [ReverseOrder] <p>Lists events in descending order of their <code>timeStamp</code>.</p>
-- * maxResults [PageSize] <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results. The default is 100 and the maximum allowed page size is 100. A value of 0 uses the default.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
-- * executionArn [Arn] <p>The Amazon Resource Name (ARN) of the execution.</p>
-- Required key: executionArn
-- @return GetExecutionHistoryInput structure as a key-value pair table
function M.GetExecutionHistoryInput(args)
	assert(args, "You must provide an argument table when creating GetExecutionHistoryInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["reverseOrder"] = args["reverseOrder"],
		["maxResults"] = args["maxResults"],
		["executionArn"] = args["executionArn"],
	}
	asserts.AssertGetExecutionHistoryInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopExecutionInput = { ["error"] = true, ["cause"] = true, ["executionArn"] = true, nil }

function asserts.AssertStopExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopExecutionInput to be of type 'table'")
	assert(struct["executionArn"], "Expected key executionArn to exist in table")
	if struct["error"] then asserts.AssertError(struct["error"]) end
	if struct["cause"] then asserts.AssertCause(struct["cause"]) end
	if struct["executionArn"] then asserts.AssertArn(struct["executionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopExecutionInput[k], "StopExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopExecutionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * error [Error] <p>An arbitrary error code that identifies the cause of the termination.</p>
-- * cause [Cause] <p>A more detailed explanation of the cause of the termination.</p>
-- * executionArn [Arn] <p>The Amazon Resource Name (ARN) of the execution to stop.</p>
-- Required key: executionArn
-- @return StopExecutionInput structure as a key-value pair table
function M.StopExecutionInput(args)
	assert(args, "You must provide an argument table when creating StopExecutionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["error"] = args["error"],
		["cause"] = args["cause"],
		["executionArn"] = args["executionArn"],
	}
	asserts.AssertStopExecutionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StateEnteredEventDetails = { ["input"] = true, ["name"] = true, nil }

function asserts.AssertStateEnteredEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StateEnteredEventDetails to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["input"] then asserts.AssertData(struct["input"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StateEnteredEventDetails[k], "StateEnteredEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StateEnteredEventDetails
-- <p>Contains details about a state entered during an execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * input [Data] <p>The string that contains the JSON input data for the state.</p>
-- * name [Name] <p>The name of the state.</p>
-- Required key: name
-- @return StateEnteredEventDetails structure as a key-value pair table
function M.StateEnteredEventDetails(args)
	assert(args, "You must provide an argument table when creating StateEnteredEventDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["input"] = args["input"],
		["name"] = args["name"],
	}
	asserts.AssertStateEnteredEventDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetActivityTaskInput = { ["workerName"] = true, ["activityArn"] = true, nil }

function asserts.AssertGetActivityTaskInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetActivityTaskInput to be of type 'table'")
	assert(struct["activityArn"], "Expected key activityArn to exist in table")
	if struct["workerName"] then asserts.AssertName(struct["workerName"]) end
	if struct["activityArn"] then asserts.AssertArn(struct["activityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetActivityTaskInput[k], "GetActivityTaskInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetActivityTaskInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * workerName [Name] <p>You can provide an arbitrary name in order to identify the worker that the task is assigned to. This name is used when it is logged in the execution history.</p>
-- * activityArn [Arn] <p>The Amazon Resource Name (ARN) of the activity to retrieve tasks from (assigned when you create the task using <a>CreateActivity</a>.)</p>
-- Required key: activityArn
-- @return GetActivityTaskInput structure as a key-value pair table
function M.GetActivityTaskInput(args)
	assert(args, "You must provide an argument table when creating GetActivityTaskInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["workerName"] = args["workerName"],
		["activityArn"] = args["activityArn"],
	}
	asserts.AssertGetActivityTaskInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListExecutionsOutput = { ["nextToken"] = true, ["executions"] = true, nil }

function asserts.AssertListExecutionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListExecutionsOutput to be of type 'table'")
	assert(struct["executions"], "Expected key executions to exist in table")
	if struct["nextToken"] then asserts.AssertPageToken(struct["nextToken"]) end
	if struct["executions"] then asserts.AssertExecutionList(struct["executions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListExecutionsOutput[k], "ListExecutionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListExecutionsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PageToken] <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maxResults</code> determines how many results can be returned in a single call.</p>
-- * executions [ExecutionList] <p>The list of matching executions.</p>
-- Required key: executions
-- @return ListExecutionsOutput structure as a key-value pair table
function M.ListExecutionsOutput(args)
	assert(args, "You must provide an argument table when creating ListExecutionsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["executions"] = args["executions"],
	}
	asserts.AssertListExecutionsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActivityFailedEventDetails = { ["cause"] = true, ["error"] = true, nil }

function asserts.AssertActivityFailedEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityFailedEventDetails to be of type 'table'")
	if struct["cause"] then asserts.AssertCause(struct["cause"]) end
	if struct["error"] then asserts.AssertError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityFailedEventDetails[k], "ActivityFailedEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityFailedEventDetails
-- <p>Contains details about an activity which failed during an execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cause [Cause] <p>A more detailed explanation of the cause of the failure.</p>
-- * error [Error] <p>The error code of the failure.</p>
-- @return ActivityFailedEventDetails structure as a key-value pair table
function M.ActivityFailedEventDetails(args)
	assert(args, "You must provide an argument table when creating ActivityFailedEventDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cause"] = args["cause"],
		["error"] = args["error"],
	}
	asserts.AssertActivityFailedEventDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListActivitiesInput = { ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListActivitiesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListActivitiesInput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPageToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertPageSize(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListActivitiesInput[k], "ListActivitiesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListActivitiesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PageToken] <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maxResults</code> determines how many results can be returned in a single call.</p>
-- * maxResults [PageSize] <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results. The default is 100 and the maximum allowed page size is 100. A value of 0 uses the default.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
-- @return ListActivitiesInput structure as a key-value pair table
function M.ListActivitiesInput(args)
	assert(args, "You must provide an argument table when creating ListActivitiesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListActivitiesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidToken = { ["message"] = true, nil }

function asserts.AssertInvalidToken(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidToken to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidToken[k], "InvalidToken contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidToken
-- <p>The provided token is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return InvalidToken structure as a key-value pair table
function M.InvalidToken(args)
	assert(args, "You must provide an argument table when creating InvalidToken")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidToken(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SendTaskHeartbeatInput = { ["taskToken"] = true, nil }

function asserts.AssertSendTaskHeartbeatInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendTaskHeartbeatInput to be of type 'table'")
	assert(struct["taskToken"], "Expected key taskToken to exist in table")
	if struct["taskToken"] then asserts.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendTaskHeartbeatInput[k], "SendTaskHeartbeatInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendTaskHeartbeatInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * taskToken [TaskToken] <p>The token that represents this task. Task tokens are generated by the service when the tasks are assigned to a worker (see <a>GetActivityTaskOutput$taskToken</a>).</p>
-- Required key: taskToken
-- @return SendTaskHeartbeatInput structure as a key-value pair table
function M.SendTaskHeartbeatInput(args)
	assert(args, "You must provide an argument table when creating SendTaskHeartbeatInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["taskToken"] = args["taskToken"],
	}
	asserts.AssertSendTaskHeartbeatInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStateMachinesInput = { ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListStateMachinesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStateMachinesInput to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPageToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertPageSize(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStateMachinesInput[k], "ListStateMachinesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStateMachinesInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PageToken] <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maxResults</code> determines how many results can be returned in a single call.</p>
-- * maxResults [PageSize] <p>The maximum number of results that are returned per call. You can use <code>nextToken</code> to obtain further pages of results. The default is 100 and the maximum allowed page size is 100. A value of 0 uses the default.</p> <p>This is only an upper limit. The actual number of results returned per call might be fewer than the specified maximum.</p>
-- @return ListStateMachinesInput structure as a key-value pair table
function M.ListStateMachinesInput(args)
	assert(args, "You must provide an argument table when creating ListStateMachinesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListStateMachinesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteStateMachineOutput = { nil }

function asserts.AssertDeleteStateMachineOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStateMachineOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteStateMachineOutput[k], "DeleteStateMachineOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStateMachineOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteStateMachineOutput structure as a key-value pair table
function M.DeleteStateMachineOutput(args)
	assert(args, "You must provide an argument table when creating DeleteStateMachineOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteStateMachineOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeExecutionInput = { ["executionArn"] = true, nil }

function asserts.AssertDescribeExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExecutionInput to be of type 'table'")
	assert(struct["executionArn"], "Expected key executionArn to exist in table")
	if struct["executionArn"] then asserts.AssertArn(struct["executionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeExecutionInput[k], "DescribeExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExecutionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * executionArn [Arn] <p>The Amazon Resource Name (ARN) of the execution to describe.</p>
-- Required key: executionArn
-- @return DescribeExecutionInput structure as a key-value pair table
function M.DescribeExecutionInput(args)
	assert(args, "You must provide an argument table when creating DescribeExecutionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["executionArn"] = args["executionArn"],
	}
	asserts.AssertDescribeExecutionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HistoryEvent = { ["lambdaFunctionSucceededEventDetails"] = true, ["lambdaFunctionTimedOutEventDetails"] = true, ["activityScheduleFailedEventDetails"] = true, ["lambdaFunctionStartFailedEventDetails"] = true, ["id"] = true, ["activityScheduledEventDetails"] = true, ["executionSucceededEventDetails"] = true, ["activitySucceededEventDetails"] = true, ["type"] = true, ["executionTimedOutEventDetails"] = true, ["timestamp"] = true, ["activityTimedOutEventDetails"] = true, ["executionFailedEventDetails"] = true, ["lambdaFunctionFailedEventDetails"] = true, ["executionAbortedEventDetails"] = true, ["stateEnteredEventDetails"] = true, ["previousEventId"] = true, ["activityStartedEventDetails"] = true, ["lambdaFunctionScheduleFailedEventDetails"] = true, ["activityFailedEventDetails"] = true, ["stateExitedEventDetails"] = true, ["executionStartedEventDetails"] = true, ["lambdaFunctionScheduledEventDetails"] = true, nil }

function asserts.AssertHistoryEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HistoryEvent to be of type 'table'")
	assert(struct["timestamp"], "Expected key timestamp to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["lambdaFunctionSucceededEventDetails"] then asserts.AssertLambdaFunctionSucceededEventDetails(struct["lambdaFunctionSucceededEventDetails"]) end
	if struct["lambdaFunctionTimedOutEventDetails"] then asserts.AssertLambdaFunctionTimedOutEventDetails(struct["lambdaFunctionTimedOutEventDetails"]) end
	if struct["activityScheduleFailedEventDetails"] then asserts.AssertActivityScheduleFailedEventDetails(struct["activityScheduleFailedEventDetails"]) end
	if struct["lambdaFunctionStartFailedEventDetails"] then asserts.AssertLambdaFunctionStartFailedEventDetails(struct["lambdaFunctionStartFailedEventDetails"]) end
	if struct["id"] then asserts.AssertEventId(struct["id"]) end
	if struct["activityScheduledEventDetails"] then asserts.AssertActivityScheduledEventDetails(struct["activityScheduledEventDetails"]) end
	if struct["executionSucceededEventDetails"] then asserts.AssertExecutionSucceededEventDetails(struct["executionSucceededEventDetails"]) end
	if struct["activitySucceededEventDetails"] then asserts.AssertActivitySucceededEventDetails(struct["activitySucceededEventDetails"]) end
	if struct["type"] then asserts.AssertHistoryEventType(struct["type"]) end
	if struct["executionTimedOutEventDetails"] then asserts.AssertExecutionTimedOutEventDetails(struct["executionTimedOutEventDetails"]) end
	if struct["timestamp"] then asserts.AssertTimestamp(struct["timestamp"]) end
	if struct["activityTimedOutEventDetails"] then asserts.AssertActivityTimedOutEventDetails(struct["activityTimedOutEventDetails"]) end
	if struct["executionFailedEventDetails"] then asserts.AssertExecutionFailedEventDetails(struct["executionFailedEventDetails"]) end
	if struct["lambdaFunctionFailedEventDetails"] then asserts.AssertLambdaFunctionFailedEventDetails(struct["lambdaFunctionFailedEventDetails"]) end
	if struct["executionAbortedEventDetails"] then asserts.AssertExecutionAbortedEventDetails(struct["executionAbortedEventDetails"]) end
	if struct["stateEnteredEventDetails"] then asserts.AssertStateEnteredEventDetails(struct["stateEnteredEventDetails"]) end
	if struct["previousEventId"] then asserts.AssertEventId(struct["previousEventId"]) end
	if struct["activityStartedEventDetails"] then asserts.AssertActivityStartedEventDetails(struct["activityStartedEventDetails"]) end
	if struct["lambdaFunctionScheduleFailedEventDetails"] then asserts.AssertLambdaFunctionScheduleFailedEventDetails(struct["lambdaFunctionScheduleFailedEventDetails"]) end
	if struct["activityFailedEventDetails"] then asserts.AssertActivityFailedEventDetails(struct["activityFailedEventDetails"]) end
	if struct["stateExitedEventDetails"] then asserts.AssertStateExitedEventDetails(struct["stateExitedEventDetails"]) end
	if struct["executionStartedEventDetails"] then asserts.AssertExecutionStartedEventDetails(struct["executionStartedEventDetails"]) end
	if struct["lambdaFunctionScheduledEventDetails"] then asserts.AssertLambdaFunctionScheduledEventDetails(struct["lambdaFunctionScheduledEventDetails"]) end
	for k,_ in pairs(struct) do
		assert(keys.HistoryEvent[k], "HistoryEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HistoryEvent
-- <p>Contains details about the events of an execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lambdaFunctionSucceededEventDetails [LambdaFunctionSucceededEventDetails] <p>Contains details about a lambda function which terminated successfully during an execution.</p>
-- * lambdaFunctionTimedOutEventDetails [LambdaFunctionTimedOutEventDetails] 
-- * activityScheduleFailedEventDetails [ActivityScheduleFailedEventDetails] <p>Contains details about an activity schedule event which failed during an execution.</p>
-- * lambdaFunctionStartFailedEventDetails [LambdaFunctionStartFailedEventDetails] <p>Contains details about a lambda function which failed to start during an execution.</p>
-- * id [EventId] <p>The id of the event. Events are numbered sequentially, starting at one.</p>
-- * activityScheduledEventDetails [ActivityScheduledEventDetails] 
-- * executionSucceededEventDetails [ExecutionSucceededEventDetails] 
-- * activitySucceededEventDetails [ActivitySucceededEventDetails] 
-- * type [HistoryEventType] <p>The type of the event.</p>
-- * executionTimedOutEventDetails [ExecutionTimedOutEventDetails] 
-- * timestamp [Timestamp] <p>The date the event occurred.</p>
-- * activityTimedOutEventDetails [ActivityTimedOutEventDetails] 
-- * executionFailedEventDetails [ExecutionFailedEventDetails] 
-- * lambdaFunctionFailedEventDetails [LambdaFunctionFailedEventDetails] 
-- * executionAbortedEventDetails [ExecutionAbortedEventDetails] 
-- * stateEnteredEventDetails [StateEnteredEventDetails] 
-- * previousEventId [EventId] <p>The id of the previous event.</p>
-- * activityStartedEventDetails [ActivityStartedEventDetails] 
-- * lambdaFunctionScheduleFailedEventDetails [LambdaFunctionScheduleFailedEventDetails] 
-- * activityFailedEventDetails [ActivityFailedEventDetails] 
-- * stateExitedEventDetails [StateExitedEventDetails] 
-- * executionStartedEventDetails [ExecutionStartedEventDetails] 
-- * lambdaFunctionScheduledEventDetails [LambdaFunctionScheduledEventDetails] 
-- Required key: timestamp
-- Required key: type
-- Required key: id
-- @return HistoryEvent structure as a key-value pair table
function M.HistoryEvent(args)
	assert(args, "You must provide an argument table when creating HistoryEvent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["lambdaFunctionSucceededEventDetails"] = args["lambdaFunctionSucceededEventDetails"],
		["lambdaFunctionTimedOutEventDetails"] = args["lambdaFunctionTimedOutEventDetails"],
		["activityScheduleFailedEventDetails"] = args["activityScheduleFailedEventDetails"],
		["lambdaFunctionStartFailedEventDetails"] = args["lambdaFunctionStartFailedEventDetails"],
		["id"] = args["id"],
		["activityScheduledEventDetails"] = args["activityScheduledEventDetails"],
		["executionSucceededEventDetails"] = args["executionSucceededEventDetails"],
		["activitySucceededEventDetails"] = args["activitySucceededEventDetails"],
		["type"] = args["type"],
		["executionTimedOutEventDetails"] = args["executionTimedOutEventDetails"],
		["timestamp"] = args["timestamp"],
		["activityTimedOutEventDetails"] = args["activityTimedOutEventDetails"],
		["executionFailedEventDetails"] = args["executionFailedEventDetails"],
		["lambdaFunctionFailedEventDetails"] = args["lambdaFunctionFailedEventDetails"],
		["executionAbortedEventDetails"] = args["executionAbortedEventDetails"],
		["stateEnteredEventDetails"] = args["stateEnteredEventDetails"],
		["previousEventId"] = args["previousEventId"],
		["activityStartedEventDetails"] = args["activityStartedEventDetails"],
		["lambdaFunctionScheduleFailedEventDetails"] = args["lambdaFunctionScheduleFailedEventDetails"],
		["activityFailedEventDetails"] = args["activityFailedEventDetails"],
		["stateExitedEventDetails"] = args["stateExitedEventDetails"],
		["executionStartedEventDetails"] = args["executionStartedEventDetails"],
		["lambdaFunctionScheduledEventDetails"] = args["lambdaFunctionScheduledEventDetails"],
	}
	asserts.AssertHistoryEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TaskTimedOut = { ["message"] = true, nil }

function asserts.AssertTaskTimedOut(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TaskTimedOut to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TaskTimedOut[k], "TaskTimedOut contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TaskTimedOut
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return TaskTimedOut structure as a key-value pair table
function M.TaskTimedOut(args)
	assert(args, "You must provide an argument table when creating TaskTimedOut")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertTaskTimedOut(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeActivityOutput = { ["creationDate"] = true, ["name"] = true, ["activityArn"] = true, nil }

function asserts.AssertDescribeActivityOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeActivityOutput to be of type 'table'")
	assert(struct["activityArn"], "Expected key activityArn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["creationDate"], "Expected key creationDate to exist in table")
	if struct["creationDate"] then asserts.AssertTimestamp(struct["creationDate"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["activityArn"] then asserts.AssertArn(struct["activityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeActivityOutput[k], "DescribeActivityOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeActivityOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * creationDate [Timestamp] <p>The date the activity is created.</p>
-- * name [Name] <p>The name of the activity.</p> <p>A name must <i>not</i> contain:</p> <ul> <li> <p>whitespace</p> </li> <li> <p>brackets <code>&lt; &gt; { } [ ]</code> </p> </li> <li> <p>wildcard characters <code>? *</code> </p> </li> <li> <p>special characters <code>" # % \ ^ | ~ ` $ &amp; , ; : /</code> </p> </li> <li> <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p> </li> </ul>
-- * activityArn [Arn] <p>The Amazon Resource Name (ARN) that identifies the activity.</p>
-- Required key: activityArn
-- Required key: name
-- Required key: creationDate
-- @return DescribeActivityOutput structure as a key-value pair table
function M.DescribeActivityOutput(args)
	assert(args, "You must provide an argument table when creating DescribeActivityOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["creationDate"] = args["creationDate"],
		["name"] = args["name"],
		["activityArn"] = args["activityArn"],
	}
	asserts.AssertDescribeActivityOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListActivitiesOutput = { ["activities"] = true, ["nextToken"] = true, nil }

function asserts.AssertListActivitiesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListActivitiesOutput to be of type 'table'")
	assert(struct["activities"], "Expected key activities to exist in table")
	if struct["activities"] then asserts.AssertActivityList(struct["activities"]) end
	if struct["nextToken"] then asserts.AssertPageToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListActivitiesOutput[k], "ListActivitiesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListActivitiesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * activities [ActivityList] <p>The list of activities.</p>
-- * nextToken [PageToken] <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maxResults</code> determines how many results can be returned in a single call.</p>
-- Required key: activities
-- @return ListActivitiesOutput structure as a key-value pair table
function M.ListActivitiesOutput(args)
	assert(args, "You must provide an argument table when creating ListActivitiesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["activities"] = args["activities"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListActivitiesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateActivityInput = { ["name"] = true, nil }

function asserts.AssertCreateActivityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateActivityInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateActivityInput[k], "CreateActivityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateActivityInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [Name] <p>The name of the activity to create. This name must be unique for your AWS account and region for 90 days. For more information, see <a href="http://docs.aws.amazon.com/step-functions/latest/dg/limits.html#service-limits-state-machine-executions"> Limits Related to State Machine Executions</a> in the <i>AWS Step Functions Developer Guide</i>.</p> <p>A name must <i>not</i> contain:</p> <ul> <li> <p>whitespace</p> </li> <li> <p>brackets <code>&lt; &gt; { } [ ]</code> </p> </li> <li> <p>wildcard characters <code>? *</code> </p> </li> <li> <p>special characters <code>" # % \ ^ | ~ ` $ &amp; , ; : /</code> </p> </li> <li> <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p> </li> </ul>
-- Required key: name
-- @return CreateActivityInput structure as a key-value pair table
function M.CreateActivityInput(args)
	assert(args, "You must provide an argument table when creating CreateActivityInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
	}
	asserts.AssertCreateActivityInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StateMachineDeleting = { ["message"] = true, nil }

function asserts.AssertStateMachineDeleting(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StateMachineDeleting to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.StateMachineDeleting[k], "StateMachineDeleting contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StateMachineDeleting
-- <p>The specified state machine is being deleted.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return StateMachineDeleting structure as a key-value pair table
function M.StateMachineDeleting(args)
	assert(args, "You must provide an argument table when creating StateMachineDeleting")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertStateMachineDeleting(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateActivityOutput = { ["creationDate"] = true, ["activityArn"] = true, nil }

function asserts.AssertCreateActivityOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateActivityOutput to be of type 'table'")
	assert(struct["activityArn"], "Expected key activityArn to exist in table")
	assert(struct["creationDate"], "Expected key creationDate to exist in table")
	if struct["creationDate"] then asserts.AssertTimestamp(struct["creationDate"]) end
	if struct["activityArn"] then asserts.AssertArn(struct["activityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateActivityOutput[k], "CreateActivityOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateActivityOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * creationDate [Timestamp] <p>The date the activity is created.</p>
-- * activityArn [Arn] <p>The Amazon Resource Name (ARN) that identifies the created activity.</p>
-- Required key: activityArn
-- Required key: creationDate
-- @return CreateActivityOutput structure as a key-value pair table
function M.CreateActivityOutput(args)
	assert(args, "You must provide an argument table when creating CreateActivityOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["creationDate"] = args["creationDate"],
		["activityArn"] = args["activityArn"],
	}
	asserts.AssertCreateActivityOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExecutionSucceededEventDetails = { ["output"] = true, nil }

function asserts.AssertExecutionSucceededEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionSucceededEventDetails to be of type 'table'")
	if struct["output"] then asserts.AssertData(struct["output"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExecutionSucceededEventDetails[k], "ExecutionSucceededEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionSucceededEventDetails
-- <p>Contains details about the successful termination of the execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * output [Data] <p>The JSON data output by the execution.</p>
-- @return ExecutionSucceededEventDetails structure as a key-value pair table
function M.ExecutionSucceededEventDetails(args)
	assert(args, "You must provide an argument table when creating ExecutionSucceededEventDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["output"] = args["output"],
	}
	asserts.AssertExecutionSucceededEventDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActivitySucceededEventDetails = { ["output"] = true, nil }

function asserts.AssertActivitySucceededEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivitySucceededEventDetails to be of type 'table'")
	if struct["output"] then asserts.AssertData(struct["output"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivitySucceededEventDetails[k], "ActivitySucceededEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivitySucceededEventDetails
-- <p>Contains details about an activity which successfully terminated during an execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * output [Data] <p>The JSON data output by the activity task.</p>
-- @return ActivitySucceededEventDetails structure as a key-value pair table
function M.ActivitySucceededEventDetails(args)
	assert(args, "You must provide an argument table when creating ActivitySucceededEventDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["output"] = args["output"],
	}
	asserts.AssertActivitySucceededEventDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopExecutionOutput = { ["stopDate"] = true, nil }

function asserts.AssertStopExecutionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopExecutionOutput to be of type 'table'")
	assert(struct["stopDate"], "Expected key stopDate to exist in table")
	if struct["stopDate"] then asserts.AssertTimestamp(struct["stopDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopExecutionOutput[k], "StopExecutionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopExecutionOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * stopDate [Timestamp] <p>The date the execution is stopped.</p>
-- Required key: stopDate
-- @return StopExecutionOutput structure as a key-value pair table
function M.StopExecutionOutput(args)
	assert(args, "You must provide an argument table when creating StopExecutionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["stopDate"] = args["stopDate"],
	}
	asserts.AssertStopExecutionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SendTaskFailureInput = { ["error"] = true, ["cause"] = true, ["taskToken"] = true, nil }

function asserts.AssertSendTaskFailureInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendTaskFailureInput to be of type 'table'")
	assert(struct["taskToken"], "Expected key taskToken to exist in table")
	if struct["error"] then asserts.AssertError(struct["error"]) end
	if struct["cause"] then asserts.AssertCause(struct["cause"]) end
	if struct["taskToken"] then asserts.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendTaskFailureInput[k], "SendTaskFailureInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendTaskFailureInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * error [Error] <p>An arbitrary error code that identifies the cause of the failure.</p>
-- * cause [Cause] <p>A more detailed explanation of the cause of the failure.</p>
-- * taskToken [TaskToken] <p>The token that represents this task. Task tokens are generated by the service when the tasks are assigned to a worker (see GetActivityTask::taskToken).</p>
-- Required key: taskToken
-- @return SendTaskFailureInput structure as a key-value pair table
function M.SendTaskFailureInput(args)
	assert(args, "You must provide an argument table when creating SendTaskFailureInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["error"] = args["error"],
		["cause"] = args["cause"],
		["taskToken"] = args["taskToken"],
	}
	asserts.AssertSendTaskFailureInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TaskDoesNotExist = { ["message"] = true, nil }

function asserts.AssertTaskDoesNotExist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TaskDoesNotExist to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TaskDoesNotExist[k], "TaskDoesNotExist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TaskDoesNotExist
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return TaskDoesNotExist structure as a key-value pair table
function M.TaskDoesNotExist(args)
	assert(args, "You must provide an argument table when creating TaskDoesNotExist")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertTaskDoesNotExist(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LambdaFunctionTimedOutEventDetails = { ["cause"] = true, ["error"] = true, nil }

function asserts.AssertLambdaFunctionTimedOutEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionTimedOutEventDetails to be of type 'table'")
	if struct["cause"] then asserts.AssertCause(struct["cause"]) end
	if struct["error"] then asserts.AssertError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaFunctionTimedOutEventDetails[k], "LambdaFunctionTimedOutEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionTimedOutEventDetails
-- <p>Contains details about a lambda function timeout which occurred during an execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cause [Cause] <p>A more detailed explanation of the cause of the timeout.</p>
-- * error [Error] <p>The error code of the failure.</p>
-- @return LambdaFunctionTimedOutEventDetails structure as a key-value pair table
function M.LambdaFunctionTimedOutEventDetails(args)
	assert(args, "You must provide an argument table when creating LambdaFunctionTimedOutEventDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cause"] = args["cause"],
		["error"] = args["error"],
	}
	asserts.AssertLambdaFunctionTimedOutEventDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExecutionAbortedEventDetails = { ["cause"] = true, ["error"] = true, nil }

function asserts.AssertExecutionAbortedEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionAbortedEventDetails to be of type 'table'")
	if struct["cause"] then asserts.AssertCause(struct["cause"]) end
	if struct["error"] then asserts.AssertError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExecutionAbortedEventDetails[k], "ExecutionAbortedEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionAbortedEventDetails
-- <p>Contains details about an abort of an execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cause [Cause] <p>A more detailed explanation of the cause of the failure.</p>
-- * error [Error] <p>The error code of the failure.</p>
-- @return ExecutionAbortedEventDetails structure as a key-value pair table
function M.ExecutionAbortedEventDetails(args)
	assert(args, "You must provide an argument table when creating ExecutionAbortedEventDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cause"] = args["cause"],
		["error"] = args["error"],
	}
	asserts.AssertExecutionAbortedEventDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActivityWorkerLimitExceeded = { ["message"] = true, nil }

function asserts.AssertActivityWorkerLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityWorkerLimitExceeded to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityWorkerLimitExceeded[k], "ActivityWorkerLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityWorkerLimitExceeded
-- <p>The maximum number of workers concurrently polling for activity tasks has been reached.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return ActivityWorkerLimitExceeded structure as a key-value pair table
function M.ActivityWorkerLimitExceeded(args)
	assert(args, "You must provide an argument table when creating ActivityWorkerLimitExceeded")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertActivityWorkerLimitExceeded(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidName = { ["message"] = true, nil }

function asserts.AssertInvalidName(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidName to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidName[k], "InvalidName contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidName
-- <p>The provided name is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return InvalidName structure as a key-value pair table
function M.InvalidName(args)
	assert(args, "You must provide an argument table when creating InvalidName")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidName(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExecutionStartedEventDetails = { ["input"] = true, ["roleArn"] = true, nil }

function asserts.AssertExecutionStartedEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionStartedEventDetails to be of type 'table'")
	if struct["input"] then asserts.AssertData(struct["input"]) end
	if struct["roleArn"] then asserts.AssertArn(struct["roleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExecutionStartedEventDetails[k], "ExecutionStartedEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionStartedEventDetails
-- <p>Contains details about the start of the execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * input [Data] <p>The JSON data input to the execution.</p>
-- * roleArn [Arn] <p>The Amazon Resource Name (ARN) of the IAM role used for executing AWS Lambda tasks.</p>
-- @return ExecutionStartedEventDetails structure as a key-value pair table
function M.ExecutionStartedEventDetails(args)
	assert(args, "You must provide an argument table when creating ExecutionStartedEventDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["input"] = args["input"],
		["roleArn"] = args["roleArn"],
	}
	asserts.AssertExecutionStartedEventDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SendTaskFailureOutput = { nil }

function asserts.AssertSendTaskFailureOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendTaskFailureOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SendTaskFailureOutput[k], "SendTaskFailureOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendTaskFailureOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SendTaskFailureOutput structure as a key-value pair table
function M.SendTaskFailureOutput(args)
	assert(args, "You must provide an argument table when creating SendTaskFailureOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSendTaskFailureOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LambdaFunctionSucceededEventDetails = { ["output"] = true, nil }

function asserts.AssertLambdaFunctionSucceededEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionSucceededEventDetails to be of type 'table'")
	if struct["output"] then asserts.AssertData(struct["output"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaFunctionSucceededEventDetails[k], "LambdaFunctionSucceededEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionSucceededEventDetails
-- <p>Contains details about a lambda function which successfully terminated during an execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * output [Data] <p>The JSON data output by the lambda function.</p>
-- @return LambdaFunctionSucceededEventDetails structure as a key-value pair table
function M.LambdaFunctionSucceededEventDetails(args)
	assert(args, "You must provide an argument table when creating LambdaFunctionSucceededEventDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["output"] = args["output"],
	}
	asserts.AssertLambdaFunctionSucceededEventDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActivityScheduleFailedEventDetails = { ["cause"] = true, ["error"] = true, nil }

function asserts.AssertActivityScheduleFailedEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityScheduleFailedEventDetails to be of type 'table'")
	if struct["cause"] then asserts.AssertCause(struct["cause"]) end
	if struct["error"] then asserts.AssertError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityScheduleFailedEventDetails[k], "ActivityScheduleFailedEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityScheduleFailedEventDetails
-- <p>Contains details about an activity schedule failure which occurred during an execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cause [Cause] <p>A more detailed explanation of the cause of the failure.</p>
-- * error [Error] <p>The error code of the failure.</p>
-- @return ActivityScheduleFailedEventDetails structure as a key-value pair table
function M.ActivityScheduleFailedEventDetails(args)
	assert(args, "You must provide an argument table when creating ActivityScheduleFailedEventDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cause"] = args["cause"],
		["error"] = args["error"],
	}
	asserts.AssertActivityScheduleFailedEventDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidOutput = { ["message"] = true, nil }

function asserts.AssertInvalidOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOutput to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidOutput[k], "InvalidOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOutput
-- <p>The provided JSON output data is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return InvalidOutput structure as a key-value pair table
function M.InvalidOutput(args)
	assert(args, "You must provide an argument table when creating InvalidOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetActivityTaskOutput = { ["input"] = true, ["taskToken"] = true, nil }

function asserts.AssertGetActivityTaskOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetActivityTaskOutput to be of type 'table'")
	if struct["input"] then asserts.AssertData(struct["input"]) end
	if struct["taskToken"] then asserts.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetActivityTaskOutput[k], "GetActivityTaskOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetActivityTaskOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * input [Data] <p>The string that contains the JSON input data for the task.</p>
-- * taskToken [TaskToken] <p>A token that identifies the scheduled task. This token must be copied and included in subsequent calls to <a>SendTaskHeartbeat</a>, <a>SendTaskSuccess</a> or <a>SendTaskFailure</a> in order to report the progress or completion of the task.</p>
-- @return GetActivityTaskOutput structure as a key-value pair table
function M.GetActivityTaskOutput(args)
	assert(args, "You must provide an argument table when creating GetActivityTaskOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["input"] = args["input"],
		["taskToken"] = args["taskToken"],
	}
	asserts.AssertGetActivityTaskOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidExecutionInput = { ["message"] = true, nil }

function asserts.AssertInvalidExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidExecutionInput to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidExecutionInput[k], "InvalidExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidExecutionInput
-- <p>The provided JSON input data is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return InvalidExecutionInput structure as a key-value pair table
function M.InvalidExecutionInput(args)
	assert(args, "You must provide an argument table when creating InvalidExecutionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidExecutionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StateMachineDoesNotExist = { ["message"] = true, nil }

function asserts.AssertStateMachineDoesNotExist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StateMachineDoesNotExist to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.StateMachineDoesNotExist[k], "StateMachineDoesNotExist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StateMachineDoesNotExist
-- <p>The specified state machine does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return StateMachineDoesNotExist structure as a key-value pair table
function M.StateMachineDoesNotExist(args)
	assert(args, "You must provide an argument table when creating StateMachineDoesNotExist")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertStateMachineDoesNotExist(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StateMachineAlreadyExists = { ["message"] = true, nil }

function asserts.AssertStateMachineAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StateMachineAlreadyExists to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.StateMachineAlreadyExists[k], "StateMachineAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StateMachineAlreadyExists
-- <p>A state machine with the same name but a different definition or role ARN already exists.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return StateMachineAlreadyExists structure as a key-value pair table
function M.StateMachineAlreadyExists(args)
	assert(args, "You must provide an argument table when creating StateMachineAlreadyExists")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertStateMachineAlreadyExists(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeStateMachineForExecutionInput = { ["executionArn"] = true, nil }

function asserts.AssertDescribeStateMachineForExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStateMachineForExecutionInput to be of type 'table'")
	assert(struct["executionArn"], "Expected key executionArn to exist in table")
	if struct["executionArn"] then asserts.AssertArn(struct["executionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStateMachineForExecutionInput[k], "DescribeStateMachineForExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStateMachineForExecutionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * executionArn [Arn] <p>The Amazon Resource Name (ARN) of the execution you want state machine information for.</p>
-- Required key: executionArn
-- @return DescribeStateMachineForExecutionInput structure as a key-value pair table
function M.DescribeStateMachineForExecutionInput(args)
	assert(args, "You must provide an argument table when creating DescribeStateMachineForExecutionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["executionArn"] = args["executionArn"],
	}
	asserts.AssertDescribeStateMachineForExecutionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MissingRequiredParameter = { ["message"] = true, nil }

function asserts.AssertMissingRequiredParameter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MissingRequiredParameter to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MissingRequiredParameter[k], "MissingRequiredParameter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MissingRequiredParameter
-- <p>Request is missing a required parameter. This error occurs if both <code>definition</code> and <code>roleArn</code> are not specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return MissingRequiredParameter structure as a key-value pair table
function M.MissingRequiredParameter(args)
	assert(args, "You must provide an argument table when creating MissingRequiredParameter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertMissingRequiredParameter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExecutionAlreadyExists = { ["message"] = true, nil }

function asserts.AssertExecutionAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionAlreadyExists to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExecutionAlreadyExists[k], "ExecutionAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionAlreadyExists
-- <p>The execution has the same <code>name</code> as another execution (but a different <code>input</code>).</p> <note> <p>Executions with the same <code>name</code> and <code>input</code> are considered idempotent.</p> </note>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return ExecutionAlreadyExists structure as a key-value pair table
function M.ExecutionAlreadyExists(args)
	assert(args, "You must provide an argument table when creating ExecutionAlreadyExists")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertExecutionAlreadyExists(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteActivityOutput = { nil }

function asserts.AssertDeleteActivityOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteActivityOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteActivityOutput[k], "DeleteActivityOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteActivityOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteActivityOutput structure as a key-value pair table
function M.DeleteActivityOutput(args)
	assert(args, "You must provide an argument table when creating DeleteActivityOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteActivityOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LambdaFunctionStartFailedEventDetails = { ["cause"] = true, ["error"] = true, nil }

function asserts.AssertLambdaFunctionStartFailedEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionStartFailedEventDetails to be of type 'table'")
	if struct["cause"] then asserts.AssertCause(struct["cause"]) end
	if struct["error"] then asserts.AssertError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaFunctionStartFailedEventDetails[k], "LambdaFunctionStartFailedEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionStartFailedEventDetails
-- <p>Contains details about a lambda function which failed to start during an execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cause [Cause] <p>A more detailed explanation of the cause of the failure.</p>
-- * error [Error] <p>The error code of the failure.</p>
-- @return LambdaFunctionStartFailedEventDetails structure as a key-value pair table
function M.LambdaFunctionStartFailedEventDetails(args)
	assert(args, "You must provide an argument table when creating LambdaFunctionStartFailedEventDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cause"] = args["cause"],
		["error"] = args["error"],
	}
	asserts.AssertLambdaFunctionStartFailedEventDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StateMachineListItem = { ["creationDate"] = true, ["stateMachineArn"] = true, ["name"] = true, nil }

function asserts.AssertStateMachineListItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StateMachineListItem to be of type 'table'")
	assert(struct["stateMachineArn"], "Expected key stateMachineArn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["creationDate"], "Expected key creationDate to exist in table")
	if struct["creationDate"] then asserts.AssertTimestamp(struct["creationDate"]) end
	if struct["stateMachineArn"] then asserts.AssertArn(struct["stateMachineArn"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StateMachineListItem[k], "StateMachineListItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StateMachineListItem
-- <p>Contains details about the state machine.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * creationDate [Timestamp] <p>The date the state machine is created.</p>
-- * stateMachineArn [Arn] <p>The Amazon Resource Name (ARN) that identifies the state machine.</p>
-- * name [Name] <p>The name of the state machine.</p> <p>A name must <i>not</i> contain:</p> <ul> <li> <p>whitespace</p> </li> <li> <p>brackets <code>&lt; &gt; { } [ ]</code> </p> </li> <li> <p>wildcard characters <code>? *</code> </p> </li> <li> <p>special characters <code>" # % \ ^ | ~ ` $ &amp; , ; : /</code> </p> </li> <li> <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p> </li> </ul>
-- Required key: stateMachineArn
-- Required key: name
-- Required key: creationDate
-- @return StateMachineListItem structure as a key-value pair table
function M.StateMachineListItem(args)
	assert(args, "You must provide an argument table when creating StateMachineListItem")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["creationDate"] = args["creationDate"],
		["stateMachineArn"] = args["stateMachineArn"],
		["name"] = args["name"],
	}
	asserts.AssertStateMachineListItem(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteStateMachineInput = { ["stateMachineArn"] = true, nil }

function asserts.AssertDeleteStateMachineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStateMachineInput to be of type 'table'")
	assert(struct["stateMachineArn"], "Expected key stateMachineArn to exist in table")
	if struct["stateMachineArn"] then asserts.AssertArn(struct["stateMachineArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteStateMachineInput[k], "DeleteStateMachineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStateMachineInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * stateMachineArn [Arn] <p>The Amazon Resource Name (ARN) of the state machine to delete.</p>
-- Required key: stateMachineArn
-- @return DeleteStateMachineInput structure as a key-value pair table
function M.DeleteStateMachineInput(args)
	assert(args, "You must provide an argument table when creating DeleteStateMachineInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["stateMachineArn"] = args["stateMachineArn"],
	}
	asserts.AssertDeleteStateMachineInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartExecutionOutput = { ["startDate"] = true, ["executionArn"] = true, nil }

function asserts.AssertStartExecutionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartExecutionOutput to be of type 'table'")
	assert(struct["executionArn"], "Expected key executionArn to exist in table")
	assert(struct["startDate"], "Expected key startDate to exist in table")
	if struct["startDate"] then asserts.AssertTimestamp(struct["startDate"]) end
	if struct["executionArn"] then asserts.AssertArn(struct["executionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartExecutionOutput[k], "StartExecutionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartExecutionOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startDate [Timestamp] <p>The date the execution is started.</p>
-- * executionArn [Arn] <p>The Amazon Resource Name (ARN) that identifies the execution.</p>
-- Required key: executionArn
-- Required key: startDate
-- @return StartExecutionOutput structure as a key-value pair table
function M.StartExecutionOutput(args)
	assert(args, "You must provide an argument table when creating StartExecutionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["startDate"] = args["startDate"],
		["executionArn"] = args["executionArn"],
	}
	asserts.AssertStartExecutionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeExecutionOutput = { ["status"] = true, ["startDate"] = true, ["name"] = true, ["executionArn"] = true, ["stateMachineArn"] = true, ["stopDate"] = true, ["output"] = true, ["input"] = true, nil }

function asserts.AssertDescribeExecutionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExecutionOutput to be of type 'table'")
	assert(struct["executionArn"], "Expected key executionArn to exist in table")
	assert(struct["stateMachineArn"], "Expected key stateMachineArn to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	assert(struct["startDate"], "Expected key startDate to exist in table")
	assert(struct["input"], "Expected key input to exist in table")
	if struct["status"] then asserts.AssertExecutionStatus(struct["status"]) end
	if struct["startDate"] then asserts.AssertTimestamp(struct["startDate"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["executionArn"] then asserts.AssertArn(struct["executionArn"]) end
	if struct["stateMachineArn"] then asserts.AssertArn(struct["stateMachineArn"]) end
	if struct["stopDate"] then asserts.AssertTimestamp(struct["stopDate"]) end
	if struct["output"] then asserts.AssertData(struct["output"]) end
	if struct["input"] then asserts.AssertData(struct["input"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeExecutionOutput[k], "DescribeExecutionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExecutionOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [ExecutionStatus] <p>The current status of the execution.</p>
-- * startDate [Timestamp] <p>The date the execution is started.</p>
-- * name [Name] <p>The name of the execution.</p> <p>A name must <i>not</i> contain:</p> <ul> <li> <p>whitespace</p> </li> <li> <p>brackets <code>&lt; &gt; { } [ ]</code> </p> </li> <li> <p>wildcard characters <code>? *</code> </p> </li> <li> <p>special characters <code>" # % \ ^ | ~ ` $ &amp; , ; : /</code> </p> </li> <li> <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p> </li> </ul>
-- * executionArn [Arn] <p>The Amazon Resource Name (ARN) that identifies the execution.</p>
-- * stateMachineArn [Arn] <p>The Amazon Resource Name (ARN) of the executed stated machine.</p>
-- * stopDate [Timestamp] <p>If the execution has already ended, the date the execution stopped.</p>
-- * output [Data] <p>The JSON output data of the execution.</p> <note> <p>This field is set only if the execution succeeds. If the execution fails, this field is null.</p> </note>
-- * input [Data] <p>The string that contains the JSON input data of the execution.</p>
-- Required key: executionArn
-- Required key: stateMachineArn
-- Required key: status
-- Required key: startDate
-- Required key: input
-- @return DescribeExecutionOutput structure as a key-value pair table
function M.DescribeExecutionOutput(args)
	assert(args, "You must provide an argument table when creating DescribeExecutionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["startDate"] = args["startDate"],
		["name"] = args["name"],
		["executionArn"] = args["executionArn"],
		["stateMachineArn"] = args["stateMachineArn"],
		["stopDate"] = args["stopDate"],
		["output"] = args["output"],
		["input"] = args["input"],
	}
	asserts.AssertDescribeExecutionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetExecutionHistoryOutput = { ["nextToken"] = true, ["events"] = true, nil }

function asserts.AssertGetExecutionHistoryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetExecutionHistoryOutput to be of type 'table'")
	assert(struct["events"], "Expected key events to exist in table")
	if struct["nextToken"] then asserts.AssertPageToken(struct["nextToken"]) end
	if struct["events"] then asserts.AssertHistoryEventList(struct["events"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetExecutionHistoryOutput[k], "GetExecutionHistoryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetExecutionHistoryOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PageToken] <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maxResults</code> determines how many results can be returned in a single call.</p>
-- * events [HistoryEventList] <p>The list of events that occurred in the execution.</p>
-- Required key: events
-- @return GetExecutionHistoryOutput structure as a key-value pair table
function M.GetExecutionHistoryOutput(args)
	assert(args, "You must provide an argument table when creating GetExecutionHistoryOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["events"] = args["events"],
	}
	asserts.AssertGetExecutionHistoryOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateStateMachineInput = { ["definition"] = true, ["roleArn"] = true, ["stateMachineArn"] = true, nil }

function asserts.AssertUpdateStateMachineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStateMachineInput to be of type 'table'")
	assert(struct["stateMachineArn"], "Expected key stateMachineArn to exist in table")
	if struct["definition"] then asserts.AssertDefinition(struct["definition"]) end
	if struct["roleArn"] then asserts.AssertArn(struct["roleArn"]) end
	if struct["stateMachineArn"] then asserts.AssertArn(struct["stateMachineArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateStateMachineInput[k], "UpdateStateMachineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStateMachineInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * definition [Definition] <p>The Amazon States Language definition of the state machine.</p>
-- * roleArn [Arn] <p>The Amazon Resource Name (ARN) of the IAM role of the state machine.</p>
-- * stateMachineArn [Arn] <p>The Amazon Resource Name (ARN) of the state machine.</p>
-- Required key: stateMachineArn
-- @return UpdateStateMachineInput structure as a key-value pair table
function M.UpdateStateMachineInput(args)
	assert(args, "You must provide an argument table when creating UpdateStateMachineInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["definition"] = args["definition"],
		["roleArn"] = args["roleArn"],
		["stateMachineArn"] = args["stateMachineArn"],
	}
	asserts.AssertUpdateStateMachineInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExecutionLimitExceeded = { ["message"] = true, nil }

function asserts.AssertExecutionLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionLimitExceeded to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExecutionLimitExceeded[k], "ExecutionLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionLimitExceeded
-- <p>The maximum number of running executions has been reached. Running executions must end or be stopped before a new execution can be started.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return ExecutionLimitExceeded structure as a key-value pair table
function M.ExecutionLimitExceeded(args)
	assert(args, "You must provide an argument table when creating ExecutionLimitExceeded")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertExecutionLimitExceeded(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LambdaFunctionScheduledEventDetails = { ["input"] = true, ["resource"] = true, ["timeoutInSeconds"] = true, nil }

function asserts.AssertLambdaFunctionScheduledEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionScheduledEventDetails to be of type 'table'")
	assert(struct["resource"], "Expected key resource to exist in table")
	if struct["input"] then asserts.AssertData(struct["input"]) end
	if struct["resource"] then asserts.AssertArn(struct["resource"]) end
	if struct["timeoutInSeconds"] then asserts.AssertTimeoutInSeconds(struct["timeoutInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaFunctionScheduledEventDetails[k], "LambdaFunctionScheduledEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionScheduledEventDetails
-- <p>Contains details about a lambda function scheduled during an execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * input [Data] <p>The JSON data input to the lambda function.</p>
-- * resource [Arn] <p>The Amazon Resource Name (ARN) of the scheduled lambda function.</p>
-- * timeoutInSeconds [TimeoutInSeconds] <p>The maximum allowed duration of the lambda function.</p>
-- Required key: resource
-- @return LambdaFunctionScheduledEventDetails structure as a key-value pair table
function M.LambdaFunctionScheduledEventDetails(args)
	assert(args, "You must provide an argument table when creating LambdaFunctionScheduledEventDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["input"] = args["input"],
		["resource"] = args["resource"],
		["timeoutInSeconds"] = args["timeoutInSeconds"],
	}
	asserts.AssertLambdaFunctionScheduledEventDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExecutionTimedOutEventDetails = { ["cause"] = true, ["error"] = true, nil }

function asserts.AssertExecutionTimedOutEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionTimedOutEventDetails to be of type 'table'")
	if struct["cause"] then asserts.AssertCause(struct["cause"]) end
	if struct["error"] then asserts.AssertError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExecutionTimedOutEventDetails[k], "ExecutionTimedOutEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionTimedOutEventDetails
-- <p>Contains details about the execution timeout which occurred during the execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cause [Cause] <p>A more detailed explanation of the cause of the timeout.</p>
-- * error [Error] <p>The error code of the failure.</p>
-- @return ExecutionTimedOutEventDetails structure as a key-value pair table
function M.ExecutionTimedOutEventDetails(args)
	assert(args, "You must provide an argument table when creating ExecutionTimedOutEventDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cause"] = args["cause"],
		["error"] = args["error"],
	}
	asserts.AssertExecutionTimedOutEventDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActivityTimedOutEventDetails = { ["cause"] = true, ["error"] = true, nil }

function asserts.AssertActivityTimedOutEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTimedOutEventDetails to be of type 'table'")
	if struct["cause"] then asserts.AssertCause(struct["cause"]) end
	if struct["error"] then asserts.AssertError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityTimedOutEventDetails[k], "ActivityTimedOutEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTimedOutEventDetails
-- <p>Contains details about an activity timeout which occurred during an execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cause [Cause] <p>A more detailed explanation of the cause of the timeout.</p>
-- * error [Error] <p>The error code of the failure.</p>
-- @return ActivityTimedOutEventDetails structure as a key-value pair table
function M.ActivityTimedOutEventDetails(args)
	assert(args, "You must provide an argument table when creating ActivityTimedOutEventDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cause"] = args["cause"],
		["error"] = args["error"],
	}
	asserts.AssertActivityTimedOutEventDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStateMachinesOutput = { ["stateMachines"] = true, ["nextToken"] = true, nil }

function asserts.AssertListStateMachinesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStateMachinesOutput to be of type 'table'")
	assert(struct["stateMachines"], "Expected key stateMachines to exist in table")
	if struct["stateMachines"] then asserts.AssertStateMachineList(struct["stateMachines"]) end
	if struct["nextToken"] then asserts.AssertPageToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStateMachinesOutput[k], "ListStateMachinesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStateMachinesOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * stateMachines [StateMachineList] 
-- * nextToken [PageToken] <p>If a <code>nextToken</code> is returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maxResults</code> determines how many results can be returned in a single call.</p>
-- Required key: stateMachines
-- @return ListStateMachinesOutput structure as a key-value pair table
function M.ListStateMachinesOutput(args)
	assert(args, "You must provide an argument table when creating ListStateMachinesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["stateMachines"] = args["stateMachines"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListStateMachinesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExecutionListItem = { ["status"] = true, ["startDate"] = true, ["name"] = true, ["executionArn"] = true, ["stateMachineArn"] = true, ["stopDate"] = true, nil }

function asserts.AssertExecutionListItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionListItem to be of type 'table'")
	assert(struct["executionArn"], "Expected key executionArn to exist in table")
	assert(struct["stateMachineArn"], "Expected key stateMachineArn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	assert(struct["startDate"], "Expected key startDate to exist in table")
	if struct["status"] then asserts.AssertExecutionStatus(struct["status"]) end
	if struct["startDate"] then asserts.AssertTimestamp(struct["startDate"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["executionArn"] then asserts.AssertArn(struct["executionArn"]) end
	if struct["stateMachineArn"] then asserts.AssertArn(struct["stateMachineArn"]) end
	if struct["stopDate"] then asserts.AssertTimestamp(struct["stopDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExecutionListItem[k], "ExecutionListItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionListItem
-- <p>Contains details about an execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [ExecutionStatus] <p>The current status of the execution.</p>
-- * startDate [Timestamp] <p>The date the execution started.</p>
-- * name [Name] <p>The name of the execution.</p> <p>A name must <i>not</i> contain:</p> <ul> <li> <p>whitespace</p> </li> <li> <p>brackets <code>&lt; &gt; { } [ ]</code> </p> </li> <li> <p>wildcard characters <code>? *</code> </p> </li> <li> <p>special characters <code>" # % \ ^ | ~ ` $ &amp; , ; : /</code> </p> </li> <li> <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p> </li> </ul>
-- * executionArn [Arn] <p>The Amazon Resource Name (ARN) that identifies the execution.</p>
-- * stateMachineArn [Arn] <p>The Amazon Resource Name (ARN) of the executed state machine.</p>
-- * stopDate [Timestamp] <p>If the execution already ended, the date the execution stopped.</p>
-- Required key: executionArn
-- Required key: stateMachineArn
-- Required key: name
-- Required key: status
-- Required key: startDate
-- @return ExecutionListItem structure as a key-value pair table
function M.ExecutionListItem(args)
	assert(args, "You must provide an argument table when creating ExecutionListItem")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["startDate"] = args["startDate"],
		["name"] = args["name"],
		["executionArn"] = args["executionArn"],
		["stateMachineArn"] = args["stateMachineArn"],
		["stopDate"] = args["stopDate"],
	}
	asserts.AssertExecutionListItem(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActivityScheduledEventDetails = { ["input"] = true, ["resource"] = true, ["heartbeatInSeconds"] = true, ["timeoutInSeconds"] = true, nil }

function asserts.AssertActivityScheduledEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityScheduledEventDetails to be of type 'table'")
	assert(struct["resource"], "Expected key resource to exist in table")
	if struct["input"] then asserts.AssertData(struct["input"]) end
	if struct["resource"] then asserts.AssertArn(struct["resource"]) end
	if struct["heartbeatInSeconds"] then asserts.AssertTimeoutInSeconds(struct["heartbeatInSeconds"]) end
	if struct["timeoutInSeconds"] then asserts.AssertTimeoutInSeconds(struct["timeoutInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityScheduledEventDetails[k], "ActivityScheduledEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityScheduledEventDetails
-- <p>Contains details about an activity scheduled during an execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * input [Data] <p>The JSON data input to the activity task.</p>
-- * resource [Arn] <p>The Amazon Resource Name (ARN) of the scheduled activity.</p>
-- * heartbeatInSeconds [TimeoutInSeconds] <p>The maximum allowed duration between two heartbeats for the activity task.</p>
-- * timeoutInSeconds [TimeoutInSeconds] <p>The maximum allowed duration of the activity task.</p>
-- Required key: resource
-- @return ActivityScheduledEventDetails structure as a key-value pair table
function M.ActivityScheduledEventDetails(args)
	assert(args, "You must provide an argument table when creating ActivityScheduledEventDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["input"] = args["input"],
		["resource"] = args["resource"],
		["heartbeatInSeconds"] = args["heartbeatInSeconds"],
		["timeoutInSeconds"] = args["timeoutInSeconds"],
	}
	asserts.AssertActivityScheduledEventDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LambdaFunctionScheduleFailedEventDetails = { ["cause"] = true, ["error"] = true, nil }

function asserts.AssertLambdaFunctionScheduleFailedEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionScheduleFailedEventDetails to be of type 'table'")
	if struct["cause"] then asserts.AssertCause(struct["cause"]) end
	if struct["error"] then asserts.AssertError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaFunctionScheduleFailedEventDetails[k], "LambdaFunctionScheduleFailedEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionScheduleFailedEventDetails
-- <p>Contains details about a failed lambda function schedule event which occurred during an execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cause [Cause] <p>A more detailed explanation of the cause of the failure.</p>
-- * error [Error] <p>The error code of the failure.</p>
-- @return LambdaFunctionScheduleFailedEventDetails structure as a key-value pair table
function M.LambdaFunctionScheduleFailedEventDetails(args)
	assert(args, "You must provide an argument table when creating LambdaFunctionScheduleFailedEventDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cause"] = args["cause"],
		["error"] = args["error"],
	}
	asserts.AssertLambdaFunctionScheduleFailedEventDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeStateMachineForExecutionOutput = { ["definition"] = true, ["roleArn"] = true, ["stateMachineArn"] = true, ["name"] = true, ["updateDate"] = true, nil }

function asserts.AssertDescribeStateMachineForExecutionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStateMachineForExecutionOutput to be of type 'table'")
	assert(struct["stateMachineArn"], "Expected key stateMachineArn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["definition"], "Expected key definition to exist in table")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["updateDate"], "Expected key updateDate to exist in table")
	if struct["definition"] then asserts.AssertDefinition(struct["definition"]) end
	if struct["roleArn"] then asserts.AssertArn(struct["roleArn"]) end
	if struct["stateMachineArn"] then asserts.AssertArn(struct["stateMachineArn"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["updateDate"] then asserts.AssertTimestamp(struct["updateDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStateMachineForExecutionOutput[k], "DescribeStateMachineForExecutionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStateMachineForExecutionOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * definition [Definition] <p>The Amazon States Language definition of the state machine.</p>
-- * roleArn [Arn] <p>The Amazon Resource Name (ARN) of the IAM role of the State Machine for the execution. </p>
-- * stateMachineArn [Arn] <p>The Amazon Resource Name (ARN) of the state machine associated with the execution.</p>
-- * name [Name] <p>The name of the state machine associated with the execution.</p>
-- * updateDate [Timestamp] <p>The date and time the state machine associated with an execution was updated. For a newly created state machine, this is the creation date.</p>
-- Required key: stateMachineArn
-- Required key: name
-- Required key: definition
-- Required key: roleArn
-- Required key: updateDate
-- @return DescribeStateMachineForExecutionOutput structure as a key-value pair table
function M.DescribeStateMachineForExecutionOutput(args)
	assert(args, "You must provide an argument table when creating DescribeStateMachineForExecutionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["definition"] = args["definition"],
		["roleArn"] = args["roleArn"],
		["stateMachineArn"] = args["stateMachineArn"],
		["name"] = args["name"],
		["updateDate"] = args["updateDate"],
	}
	asserts.AssertDescribeStateMachineForExecutionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidArn = { ["message"] = true, nil }

function asserts.AssertInvalidArn(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidArn to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidArn[k], "InvalidArn contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArn
-- <p>The provided Amazon Resource Name (ARN) is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return InvalidArn structure as a key-value pair table
function M.InvalidArn(args)
	assert(args, "You must provide an argument table when creating InvalidArn")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidArn(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ActivityDoesNotExist = { ["message"] = true, nil }

function asserts.AssertActivityDoesNotExist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityDoesNotExist to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityDoesNotExist[k], "ActivityDoesNotExist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityDoesNotExist
-- <p>The specified activity does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return ActivityDoesNotExist structure as a key-value pair table
function M.ActivityDoesNotExist(args)
	assert(args, "You must provide an argument table when creating ActivityDoesNotExist")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertActivityDoesNotExist(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeStateMachineOutput = { ["status"] = true, ["definition"] = true, ["name"] = true, ["roleArn"] = true, ["stateMachineArn"] = true, ["creationDate"] = true, nil }

function asserts.AssertDescribeStateMachineOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStateMachineOutput to be of type 'table'")
	assert(struct["stateMachineArn"], "Expected key stateMachineArn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["definition"], "Expected key definition to exist in table")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["creationDate"], "Expected key creationDate to exist in table")
	if struct["status"] then asserts.AssertStateMachineStatus(struct["status"]) end
	if struct["definition"] then asserts.AssertDefinition(struct["definition"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["roleArn"] then asserts.AssertArn(struct["roleArn"]) end
	if struct["stateMachineArn"] then asserts.AssertArn(struct["stateMachineArn"]) end
	if struct["creationDate"] then asserts.AssertTimestamp(struct["creationDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStateMachineOutput[k], "DescribeStateMachineOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStateMachineOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [StateMachineStatus] <p>The current status of the state machine.</p>
-- * definition [Definition] <p>The Amazon States Language definition of the state machine.</p>
-- * name [Name] <p>The name of the state machine.</p> <p>A name must <i>not</i> contain:</p> <ul> <li> <p>whitespace</p> </li> <li> <p>brackets <code>&lt; &gt; { } [ ]</code> </p> </li> <li> <p>wildcard characters <code>? *</code> </p> </li> <li> <p>special characters <code>" # % \ ^ | ~ ` $ &amp; , ; : /</code> </p> </li> <li> <p>control characters (<code>U+0000-001F</code>, <code>U+007F-009F</code>)</p> </li> </ul>
-- * roleArn [Arn] <p>The Amazon Resource Name (ARN) of the IAM role used when creating this state machine. (The IAM role maintains security by granting Step Functions access to AWS resources.)</p>
-- * stateMachineArn [Arn] <p>The Amazon Resource Name (ARN) that identifies the state machine.</p>
-- * creationDate [Timestamp] <p>The date the state machine is created.</p>
-- Required key: stateMachineArn
-- Required key: name
-- Required key: definition
-- Required key: roleArn
-- Required key: creationDate
-- @return DescribeStateMachineOutput structure as a key-value pair table
function M.DescribeStateMachineOutput(args)
	assert(args, "You must provide an argument table when creating DescribeStateMachineOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["definition"] = args["definition"],
		["name"] = args["name"],
		["roleArn"] = args["roleArn"],
		["stateMachineArn"] = args["stateMachineArn"],
		["creationDate"] = args["creationDate"],
	}
	asserts.AssertDescribeStateMachineOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SendTaskSuccessInput = { ["output"] = true, ["taskToken"] = true, nil }

function asserts.AssertSendTaskSuccessInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendTaskSuccessInput to be of type 'table'")
	assert(struct["taskToken"], "Expected key taskToken to exist in table")
	assert(struct["output"], "Expected key output to exist in table")
	if struct["output"] then asserts.AssertData(struct["output"]) end
	if struct["taskToken"] then asserts.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.SendTaskSuccessInput[k], "SendTaskSuccessInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendTaskSuccessInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * output [Data] <p>The JSON output of the task.</p>
-- * taskToken [TaskToken] <p>The token that represents this task. Task tokens are generated by the service when the tasks are assigned to a worker (see <a>GetActivityTaskOutput$taskToken</a>).</p>
-- Required key: taskToken
-- Required key: output
-- @return SendTaskSuccessInput structure as a key-value pair table
function M.SendTaskSuccessInput(args)
	assert(args, "You must provide an argument table when creating SendTaskSuccessInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["output"] = args["output"],
		["taskToken"] = args["taskToken"],
	}
	asserts.AssertSendTaskSuccessInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDefinition = { ["message"] = true, nil }

function asserts.AssertInvalidDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDefinition to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidDefinition[k], "InvalidDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDefinition
-- <p>The provided Amazon States Language definition is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return InvalidDefinition structure as a key-value pair table
function M.InvalidDefinition(args)
	assert(args, "You must provide an argument table when creating InvalidDefinition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidDefinition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SendTaskSuccessOutput = { nil }

function asserts.AssertSendTaskSuccessOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendTaskSuccessOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SendTaskSuccessOutput[k], "SendTaskSuccessOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendTaskSuccessOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SendTaskSuccessOutput structure as a key-value pair table
function M.SendTaskSuccessOutput(args)
	assert(args, "You must provide an argument table when creating SendTaskSuccessOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSendTaskSuccessOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExecutionFailedEventDetails = { ["cause"] = true, ["error"] = true, nil }

function asserts.AssertExecutionFailedEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionFailedEventDetails to be of type 'table'")
	if struct["cause"] then asserts.AssertCause(struct["cause"]) end
	if struct["error"] then asserts.AssertError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExecutionFailedEventDetails[k], "ExecutionFailedEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionFailedEventDetails
-- <p>Contains details about an execution failure event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cause [Cause] <p>A more detailed explanation of the cause of the failure.</p>
-- * error [Error] <p>The error code of the failure.</p>
-- @return ExecutionFailedEventDetails structure as a key-value pair table
function M.ExecutionFailedEventDetails(args)
	assert(args, "You must provide an argument table when creating ExecutionFailedEventDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cause"] = args["cause"],
		["error"] = args["error"],
	}
	asserts.AssertExecutionFailedEventDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SendTaskHeartbeatOutput = { nil }

function asserts.AssertSendTaskHeartbeatOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendTaskHeartbeatOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.SendTaskHeartbeatOutput[k], "SendTaskHeartbeatOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendTaskHeartbeatOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return SendTaskHeartbeatOutput structure as a key-value pair table
function M.SendTaskHeartbeatOutput(args)
	assert(args, "You must provide an argument table when creating SendTaskHeartbeatOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertSendTaskHeartbeatOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LambdaFunctionFailedEventDetails = { ["cause"] = true, ["error"] = true, nil }

function asserts.AssertLambdaFunctionFailedEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionFailedEventDetails to be of type 'table'")
	if struct["cause"] then asserts.AssertCause(struct["cause"]) end
	if struct["error"] then asserts.AssertError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaFunctionFailedEventDetails[k], "LambdaFunctionFailedEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionFailedEventDetails
-- <p>Contains details about a lambda function which failed during an execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cause [Cause] <p>A more detailed explanation of the cause of the failure.</p>
-- * error [Error] <p>The error code of the failure.</p>
-- @return LambdaFunctionFailedEventDetails structure as a key-value pair table
function M.LambdaFunctionFailedEventDetails(args)
	assert(args, "You must provide an argument table when creating LambdaFunctionFailedEventDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cause"] = args["cause"],
		["error"] = args["error"],
	}
	asserts.AssertLambdaFunctionFailedEventDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteActivityInput = { ["activityArn"] = true, nil }

function asserts.AssertDeleteActivityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteActivityInput to be of type 'table'")
	assert(struct["activityArn"], "Expected key activityArn to exist in table")
	if struct["activityArn"] then asserts.AssertArn(struct["activityArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteActivityInput[k], "DeleteActivityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteActivityInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * activityArn [Arn] <p>The Amazon Resource Name (ARN) of the activity to delete.</p>
-- Required key: activityArn
-- @return DeleteActivityInput structure as a key-value pair table
function M.DeleteActivityInput(args)
	assert(args, "You must provide an argument table when creating DeleteActivityInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["activityArn"] = args["activityArn"],
	}
	asserts.AssertDeleteActivityInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertError(str)
	assert(str)
	assert(type(str) == "string", "Expected Error to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.Error(str)
	asserts.AssertError(str)
	return str
end

function asserts.AssertHistoryEventType(str)
	assert(str)
	assert(type(str) == "string", "Expected HistoryEventType to be of type 'string'")
end

--  
function M.HistoryEventType(str)
	asserts.AssertHistoryEventType(str)
	return str
end

function asserts.AssertPageToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PageToken to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PageToken(str)
	asserts.AssertPageToken(str)
	return str
end

function asserts.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Arn(str)
	asserts.AssertArn(str)
	return str
end

function asserts.AssertStateMachineStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected StateMachineStatus to be of type 'string'")
end

--  
function M.StateMachineStatus(str)
	asserts.AssertStateMachineStatus(str)
	return str
end

function asserts.AssertData(str)
	assert(str)
	assert(type(str) == "string", "Expected Data to be of type 'string'")
	assert(#str <= 32768, "Expected string to be max 32768 characters")
end

--  
function M.Data(str)
	asserts.AssertData(str)
	return str
end

function asserts.AssertIdentity(str)
	assert(str)
	assert(type(str) == "string", "Expected Identity to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.Identity(str)
	asserts.AssertIdentity(str)
	return str
end

function asserts.AssertDefinition(str)
	assert(str)
	assert(type(str) == "string", "Expected Definition to be of type 'string'")
	assert(#str <= 1048576, "Expected string to be max 1048576 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Definition(str)
	asserts.AssertDefinition(str)
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

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertCause(str)
	assert(str)
	assert(type(str) == "string", "Expected Cause to be of type 'string'")
	assert(#str <= 32768, "Expected string to be max 32768 characters")
end

--  
function M.Cause(str)
	asserts.AssertCause(str)
	return str
end

function asserts.AssertTaskToken(str)
	assert(str)
	assert(type(str) == "string", "Expected TaskToken to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TaskToken(str)
	asserts.AssertTaskToken(str)
	return str
end

function asserts.AssertName(str)
	assert(str)
	assert(type(str) == "string", "Expected Name to be of type 'string'")
	assert(#str <= 80, "Expected string to be max 80 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Name(str)
	asserts.AssertName(str)
	return str
end

function asserts.AssertTimeoutInSeconds(long)
	assert(long)
	assert(type(long) == "number", "Expected TimeoutInSeconds to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.TimeoutInSeconds(long)
	asserts.AssertTimeoutInSeconds(long)
	return long
end

function asserts.AssertEventId(long)
	assert(long)
	assert(type(long) == "number", "Expected EventId to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.EventId(long)
	asserts.AssertEventId(long)
	return long
end

function asserts.AssertPageSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PageSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
end

function M.PageSize(integer)
	asserts.AssertPageSize(integer)
	return integer
end

function asserts.AssertReverseOrder(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ReverseOrder to be of type 'boolean'")
end

function M.ReverseOrder(boolean)
	asserts.AssertReverseOrder(boolean)
	return boolean
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertActivityList(list)
	assert(list)
	assert(type(list) == "table", "Expected ActivityList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertActivityListItem(v)
	end
end

--  
-- List of ActivityListItem objects
function M.ActivityList(list)
	asserts.AssertActivityList(list)
	return list
end

function asserts.AssertStateMachineList(list)
	assert(list)
	assert(type(list) == "table", "Expected StateMachineList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStateMachineListItem(v)
	end
end

--  
-- List of StateMachineListItem objects
function M.StateMachineList(list)
	asserts.AssertStateMachineList(list)
	return list
end

function asserts.AssertExecutionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ExecutionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertExecutionListItem(v)
	end
end

--  
-- List of ExecutionListItem objects
function M.ExecutionList(list)
	asserts.AssertExecutionList(list)
	return list
end

function asserts.AssertHistoryEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected HistoryEventList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHistoryEvent(v)
	end
end

-- <p>Contains details about the events which occurred during an execution.</p>
-- List of HistoryEvent objects
function M.HistoryEventList(list)
	asserts.AssertHistoryEventList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "states.amazonaws.com"
		end
	end
	local ss = { "states" }
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
--- Call StartExecution asynchronously, invoking a callback when done
-- @param StartExecutionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartExecutionAsync(StartExecutionInput, cb)
	assert(StartExecutionInput, "You must provide a StartExecutionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.StartExecution",
	}
	for header,value in pairs(StartExecutionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartExecutionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartExecutionInput
-- @return response
-- @return error_type
-- @return error_message
function M.StartExecutionSync(StartExecutionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartExecutionAsync(StartExecutionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListExecutions asynchronously, invoking a callback when done
-- @param ListExecutionsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListExecutionsAsync(ListExecutionsInput, cb)
	assert(ListExecutionsInput, "You must provide a ListExecutionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.ListExecutions",
	}
	for header,value in pairs(ListExecutionsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListExecutionsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListExecutions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListExecutionsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListExecutionsSync(ListExecutionsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListExecutionsAsync(ListExecutionsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStateMachineForExecution asynchronously, invoking a callback when done
-- @param DescribeStateMachineForExecutionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeStateMachineForExecutionAsync(DescribeStateMachineForExecutionInput, cb)
	assert(DescribeStateMachineForExecutionInput, "You must provide a DescribeStateMachineForExecutionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.DescribeStateMachineForExecution",
	}
	for header,value in pairs(DescribeStateMachineForExecutionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeStateMachineForExecutionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeStateMachineForExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStateMachineForExecutionInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeStateMachineForExecutionSync(DescribeStateMachineForExecutionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStateMachineForExecutionAsync(DescribeStateMachineForExecutionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopExecution asynchronously, invoking a callback when done
-- @param StopExecutionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopExecutionAsync(StopExecutionInput, cb)
	assert(StopExecutionInput, "You must provide a StopExecutionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.StopExecution",
	}
	for header,value in pairs(StopExecutionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopExecutionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopExecutionInput
-- @return response
-- @return error_type
-- @return error_message
function M.StopExecutionSync(StopExecutionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopExecutionAsync(StopExecutionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteActivity asynchronously, invoking a callback when done
-- @param DeleteActivityInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteActivityAsync(DeleteActivityInput, cb)
	assert(DeleteActivityInput, "You must provide a DeleteActivityInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.DeleteActivity",
	}
	for header,value in pairs(DeleteActivityInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteActivityInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteActivity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteActivityInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteActivitySync(DeleteActivityInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteActivityAsync(DeleteActivityInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SendTaskHeartbeat asynchronously, invoking a callback when done
-- @param SendTaskHeartbeatInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SendTaskHeartbeatAsync(SendTaskHeartbeatInput, cb)
	assert(SendTaskHeartbeatInput, "You must provide a SendTaskHeartbeatInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.SendTaskHeartbeat",
	}
	for header,value in pairs(SendTaskHeartbeatInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SendTaskHeartbeatInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SendTaskHeartbeat synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendTaskHeartbeatInput
-- @return response
-- @return error_type
-- @return error_message
function M.SendTaskHeartbeatSync(SendTaskHeartbeatInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendTaskHeartbeatAsync(SendTaskHeartbeatInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeExecution asynchronously, invoking a callback when done
-- @param DescribeExecutionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeExecutionAsync(DescribeExecutionInput, cb)
	assert(DescribeExecutionInput, "You must provide a DescribeExecutionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.DescribeExecution",
	}
	for header,value in pairs(DescribeExecutionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeExecutionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeExecutionInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeExecutionSync(DescribeExecutionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeExecutionAsync(DescribeExecutionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListStateMachines asynchronously, invoking a callback when done
-- @param ListStateMachinesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListStateMachinesAsync(ListStateMachinesInput, cb)
	assert(ListStateMachinesInput, "You must provide a ListStateMachinesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.ListStateMachines",
	}
	for header,value in pairs(ListStateMachinesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListStateMachinesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListStateMachines synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListStateMachinesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListStateMachinesSync(ListStateMachinesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListStateMachinesAsync(ListStateMachinesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetExecutionHistory asynchronously, invoking a callback when done
-- @param GetExecutionHistoryInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetExecutionHistoryAsync(GetExecutionHistoryInput, cb)
	assert(GetExecutionHistoryInput, "You must provide a GetExecutionHistoryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.GetExecutionHistory",
	}
	for header,value in pairs(GetExecutionHistoryInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetExecutionHistoryInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetExecutionHistory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetExecutionHistoryInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetExecutionHistorySync(GetExecutionHistoryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetExecutionHistoryAsync(GetExecutionHistoryInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetActivityTask asynchronously, invoking a callback when done
-- @param GetActivityTaskInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetActivityTaskAsync(GetActivityTaskInput, cb)
	assert(GetActivityTaskInput, "You must provide a GetActivityTaskInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.GetActivityTask",
	}
	for header,value in pairs(GetActivityTaskInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetActivityTaskInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetActivityTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetActivityTaskInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetActivityTaskSync(GetActivityTaskInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetActivityTaskAsync(GetActivityTaskInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListActivities asynchronously, invoking a callback when done
-- @param ListActivitiesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListActivitiesAsync(ListActivitiesInput, cb)
	assert(ListActivitiesInput, "You must provide a ListActivitiesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.ListActivities",
	}
	for header,value in pairs(ListActivitiesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListActivitiesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListActivities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListActivitiesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListActivitiesSync(ListActivitiesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListActivitiesAsync(ListActivitiesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStateMachine asynchronously, invoking a callback when done
-- @param CreateStateMachineInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateStateMachineAsync(CreateStateMachineInput, cb)
	assert(CreateStateMachineInput, "You must provide a CreateStateMachineInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.CreateStateMachine",
	}
	for header,value in pairs(CreateStateMachineInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateStateMachineInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateStateMachine synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateStateMachineInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateStateMachineSync(CreateStateMachineInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStateMachineAsync(CreateStateMachineInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStateMachine asynchronously, invoking a callback when done
-- @param DescribeStateMachineInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeStateMachineAsync(DescribeStateMachineInput, cb)
	assert(DescribeStateMachineInput, "You must provide a DescribeStateMachineInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.DescribeStateMachine",
	}
	for header,value in pairs(DescribeStateMachineInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeStateMachineInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeStateMachine synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStateMachineInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeStateMachineSync(DescribeStateMachineInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStateMachineAsync(DescribeStateMachineInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeActivity asynchronously, invoking a callback when done
-- @param DescribeActivityInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeActivityAsync(DescribeActivityInput, cb)
	assert(DescribeActivityInput, "You must provide a DescribeActivityInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.DescribeActivity",
	}
	for header,value in pairs(DescribeActivityInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeActivityInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeActivity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeActivityInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeActivitySync(DescribeActivityInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeActivityAsync(DescribeActivityInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteStateMachine asynchronously, invoking a callback when done
-- @param DeleteStateMachineInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteStateMachineAsync(DeleteStateMachineInput, cb)
	assert(DeleteStateMachineInput, "You must provide a DeleteStateMachineInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.DeleteStateMachine",
	}
	for header,value in pairs(DeleteStateMachineInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteStateMachineInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteStateMachine synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteStateMachineInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteStateMachineSync(DeleteStateMachineInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteStateMachineAsync(DeleteStateMachineInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateStateMachine asynchronously, invoking a callback when done
-- @param UpdateStateMachineInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateStateMachineAsync(UpdateStateMachineInput, cb)
	assert(UpdateStateMachineInput, "You must provide a UpdateStateMachineInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.UpdateStateMachine",
	}
	for header,value in pairs(UpdateStateMachineInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateStateMachineInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateStateMachine synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateStateMachineInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateStateMachineSync(UpdateStateMachineInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateStateMachineAsync(UpdateStateMachineInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateActivity asynchronously, invoking a callback when done
-- @param CreateActivityInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateActivityAsync(CreateActivityInput, cb)
	assert(CreateActivityInput, "You must provide a CreateActivityInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.CreateActivity",
	}
	for header,value in pairs(CreateActivityInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateActivityInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateActivity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateActivityInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateActivitySync(CreateActivityInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateActivityAsync(CreateActivityInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SendTaskFailure asynchronously, invoking a callback when done
-- @param SendTaskFailureInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SendTaskFailureAsync(SendTaskFailureInput, cb)
	assert(SendTaskFailureInput, "You must provide a SendTaskFailureInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.SendTaskFailure",
	}
	for header,value in pairs(SendTaskFailureInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SendTaskFailureInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SendTaskFailure synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendTaskFailureInput
-- @return response
-- @return error_type
-- @return error_message
function M.SendTaskFailureSync(SendTaskFailureInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendTaskFailureAsync(SendTaskFailureInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SendTaskSuccess asynchronously, invoking a callback when done
-- @param SendTaskSuccessInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SendTaskSuccessAsync(SendTaskSuccessInput, cb)
	assert(SendTaskSuccessInput, "You must provide a SendTaskSuccessInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.SendTaskSuccess",
	}
	for header,value in pairs(SendTaskSuccessInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SendTaskSuccessInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SendTaskSuccess synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendTaskSuccessInput
-- @return response
-- @return error_type
-- @return error_message
function M.SendTaskSuccessSync(SendTaskSuccessInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendTaskSuccessAsync(SendTaskSuccessInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
