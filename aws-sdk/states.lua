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

local ExecutionDoesNotExist_keys = { "message" = true, nil }

function M.AssertExecutionDoesNotExist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionDoesNotExist to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ExecutionDoesNotExist_keys[k], "ExecutionDoesNotExist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionDoesNotExist
-- &lt;p&gt;The specified execution does not exist.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The specified execution does not exist.&lt;/p&gt;
function M.ExecutionDoesNotExist(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionDoesNotExist")
	local t = { 
		["message"] = message,
	}
	M.AssertExecutionDoesNotExist(t)
	return t
end

local StartExecutionInput_keys = { "input" = true, "stateMachineArn" = true, "name" = true, nil }

function M.AssertStartExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartExecutionInput to be of type 'table'")
	assert(struct["stateMachineArn"], "Expected key stateMachineArn to exist in table")
	if struct["input"] then M.AssertData(struct["input"]) end
	if struct["stateMachineArn"] then M.AssertArn(struct["stateMachineArn"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(StartExecutionInput_keys[k], "StartExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartExecutionInput
--  
-- @param input [Data] &lt;p&gt;The JSON input data for the execution.&lt;/p&gt;
-- @param stateMachineArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the state machine to execute.&lt;/p&gt;
-- @param name [Name] &lt;p&gt;The name of the execution. This name must be unique for your AWS account and region.&lt;/p&gt;
-- Required parameter: stateMachineArn
function M.StartExecutionInput(input, stateMachineArn, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartExecutionInput")
	local t = { 
		["input"] = input,
		["stateMachineArn"] = stateMachineArn,
		["name"] = name,
	}
	M.AssertStartExecutionInput(t)
	return t
end

local StateExitedEventDetails_keys = { "output" = true, "name" = true, nil }

function M.AssertStateExitedEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StateExitedEventDetails to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["output"] then M.AssertData(struct["output"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(StateExitedEventDetails_keys[k], "StateExitedEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StateExitedEventDetails
--  
-- @param output [Data] &lt;p&gt;The JSON output data of the state.&lt;/p&gt;
-- @param name [Name] &lt;p&gt;The name of the state.&lt;/p&gt;
-- Required parameter: name
function M.StateExitedEventDetails(output, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StateExitedEventDetails")
	local t = { 
		["output"] = output,
		["name"] = name,
	}
	M.AssertStateExitedEventDetails(t)
	return t
end

local ActivityListItem_keys = { "creationDate" = true, "name" = true, "activityArn" = true, nil }

function M.AssertActivityListItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityListItem to be of type 'table'")
	assert(struct["activityArn"], "Expected key activityArn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["creationDate"], "Expected key creationDate to exist in table")
	if struct["creationDate"] then M.AssertTimestamp(struct["creationDate"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["activityArn"] then M.AssertArn(struct["activityArn"]) end
	for k,_ in pairs(struct) do
		assert(ActivityListItem_keys[k], "ActivityListItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityListItem
--  
-- @param creationDate [Timestamp] &lt;p&gt;The date the activity was created.&lt;/p&gt;
-- @param name [Name] &lt;p&gt;The name of the activity.&lt;/p&gt;
-- @param activityArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that identifies the activity.&lt;/p&gt;
-- Required parameter: activityArn
-- Required parameter: name
-- Required parameter: creationDate
function M.ActivityListItem(creationDate, name, activityArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityListItem")
	local t = { 
		["creationDate"] = creationDate,
		["name"] = name,
		["activityArn"] = activityArn,
	}
	M.AssertActivityListItem(t)
	return t
end

local ActivityStartedEventDetails_keys = { "workerName" = true, nil }

function M.AssertActivityStartedEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityStartedEventDetails to be of type 'table'")
	if struct["workerName"] then M.AssertIdentity(struct["workerName"]) end
	for k,_ in pairs(struct) do
		assert(ActivityStartedEventDetails_keys[k], "ActivityStartedEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityStartedEventDetails
--  
-- @param workerName [Identity] &lt;p&gt;The name of the worker that the task was assigned to. These names are provided by the workers when calling &lt;a&gt;GetActivityTask&lt;/a&gt;.&lt;/p&gt;
function M.ActivityStartedEventDetails(workerName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityStartedEventDetails")
	local t = { 
		["workerName"] = workerName,
	}
	M.AssertActivityStartedEventDetails(t)
	return t
end

local ListExecutionsInput_keys = { "statusFilter" = true, "nextToken" = true, "stateMachineArn" = true, "maxResults" = true, nil }

function M.AssertListExecutionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListExecutionsInput to be of type 'table'")
	assert(struct["stateMachineArn"], "Expected key stateMachineArn to exist in table")
	if struct["statusFilter"] then M.AssertExecutionStatus(struct["statusFilter"]) end
	if struct["nextToken"] then M.AssertPageToken(struct["nextToken"]) end
	if struct["stateMachineArn"] then M.AssertArn(struct["stateMachineArn"]) end
	if struct["maxResults"] then M.AssertPageSize(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListExecutionsInput_keys[k], "ListExecutionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListExecutionsInput
--  
-- @param statusFilter [ExecutionStatus] &lt;p&gt;If specified, only list the executions whose current execution status matches the given filter.&lt;/p&gt;
-- @param nextToken [PageToken] &lt;p&gt;If a &lt;code&gt;nextToken&lt;/code&gt; was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in &lt;code&gt;nextToken&lt;/code&gt;. Keep all other arguments unchanged.&lt;/p&gt; &lt;p&gt;The configured &lt;code&gt;maxResults&lt;/code&gt; determines how many results can be returned in a single call.&lt;/p&gt;
-- @param stateMachineArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the state machine whose executions will be listed.&lt;/p&gt;
-- @param maxResults [PageSize] &lt;p&gt;The maximum number of results that will be returned per call. &lt;code&gt;nextToken&lt;/code&gt; can be used to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000.&lt;/p&gt; &lt;p&gt;This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.&lt;/p&gt;
-- Required parameter: stateMachineArn
function M.ListExecutionsInput(statusFilter, nextToken, stateMachineArn, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListExecutionsInput")
	local t = { 
		["statusFilter"] = statusFilter,
		["nextToken"] = nextToken,
		["stateMachineArn"] = stateMachineArn,
		["maxResults"] = maxResults,
	}
	M.AssertListExecutionsInput(t)
	return t
end

local StateMachineLimitExceeded_keys = { "message" = true, nil }

function M.AssertStateMachineLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StateMachineLimitExceeded to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(StateMachineLimitExceeded_keys[k], "StateMachineLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StateMachineLimitExceeded
-- &lt;p&gt;The maximum number of state machines has been reached. Existing state machines must be deleted before a new state machine can be created.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The maximum number of state machines has been reached. Existing state machines must be deleted before a new state machine can be created.&lt;/p&gt;
function M.StateMachineLimitExceeded(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StateMachineLimitExceeded")
	local t = { 
		["message"] = message,
	}
	M.AssertStateMachineLimitExceeded(t)
	return t
end

local DescribeStateMachineInput_keys = { "stateMachineArn" = true, nil }

function M.AssertDescribeStateMachineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStateMachineInput to be of type 'table'")
	assert(struct["stateMachineArn"], "Expected key stateMachineArn to exist in table")
	if struct["stateMachineArn"] then M.AssertArn(struct["stateMachineArn"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStateMachineInput_keys[k], "DescribeStateMachineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStateMachineInput
--  
-- @param stateMachineArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the state machine to describe.&lt;/p&gt;
-- Required parameter: stateMachineArn
function M.DescribeStateMachineInput(stateMachineArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStateMachineInput")
	local t = { 
		["stateMachineArn"] = stateMachineArn,
	}
	M.AssertDescribeStateMachineInput(t)
	return t
end

local CreateStateMachineInput_keys = { "definition" = true, "roleArn" = true, "name" = true, nil }

function M.AssertCreateStateMachineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStateMachineInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["definition"], "Expected key definition to exist in table")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	if struct["definition"] then M.AssertDefinition(struct["definition"]) end
	if struct["roleArn"] then M.AssertArn(struct["roleArn"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(CreateStateMachineInput_keys[k], "CreateStateMachineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStateMachineInput
--  
-- @param definition [Definition] &lt;p&gt;The Amazon States Language definition of the state machine.&lt;/p&gt;
-- @param roleArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM role to use for this state machine.&lt;/p&gt;
-- @param name [Name] &lt;p&gt;The name of the state machine. This name must be unique for your AWS account and region.&lt;/p&gt;
-- Required parameter: name
-- Required parameter: definition
-- Required parameter: roleArn
function M.CreateStateMachineInput(definition, roleArn, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStateMachineInput")
	local t = { 
		["definition"] = definition,
		["roleArn"] = roleArn,
		["name"] = name,
	}
	M.AssertCreateStateMachineInput(t)
	return t
end

local CreateStateMachineOutput_keys = { "creationDate" = true, "stateMachineArn" = true, nil }

function M.AssertCreateStateMachineOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStateMachineOutput to be of type 'table'")
	assert(struct["stateMachineArn"], "Expected key stateMachineArn to exist in table")
	assert(struct["creationDate"], "Expected key creationDate to exist in table")
	if struct["creationDate"] then M.AssertTimestamp(struct["creationDate"]) end
	if struct["stateMachineArn"] then M.AssertArn(struct["stateMachineArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateStateMachineOutput_keys[k], "CreateStateMachineOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStateMachineOutput
--  
-- @param creationDate [Timestamp] &lt;p&gt;The date the state machine was created.&lt;/p&gt;
-- @param stateMachineArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that identifies the created state machine.&lt;/p&gt;
-- Required parameter: stateMachineArn
-- Required parameter: creationDate
function M.CreateStateMachineOutput(creationDate, stateMachineArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStateMachineOutput")
	local t = { 
		["creationDate"] = creationDate,
		["stateMachineArn"] = stateMachineArn,
	}
	M.AssertCreateStateMachineOutput(t)
	return t
end

local DescribeActivityInput_keys = { "activityArn" = true, nil }

function M.AssertDescribeActivityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeActivityInput to be of type 'table'")
	assert(struct["activityArn"], "Expected key activityArn to exist in table")
	if struct["activityArn"] then M.AssertArn(struct["activityArn"]) end
	for k,_ in pairs(struct) do
		assert(DescribeActivityInput_keys[k], "DescribeActivityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeActivityInput
--  
-- @param activityArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the activity to describe.&lt;/p&gt;
-- Required parameter: activityArn
function M.DescribeActivityInput(activityArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeActivityInput")
	local t = { 
		["activityArn"] = activityArn,
	}
	M.AssertDescribeActivityInput(t)
	return t
end

local ActivityLimitExceeded_keys = { "message" = true, nil }

function M.AssertActivityLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityLimitExceeded to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ActivityLimitExceeded_keys[k], "ActivityLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityLimitExceeded
-- &lt;p&gt;The maximum number of activities has been reached. Existing activities must be deleted before a new activity can be created.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The maximum number of activities has been reached. Existing activities must be deleted before a new activity can be created.&lt;/p&gt;
function M.ActivityLimitExceeded(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityLimitExceeded")
	local t = { 
		["message"] = message,
	}
	M.AssertActivityLimitExceeded(t)
	return t
end

local GetExecutionHistoryInput_keys = { "nextToken" = true, "reverseOrder" = true, "maxResults" = true, "executionArn" = true, nil }

function M.AssertGetExecutionHistoryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetExecutionHistoryInput to be of type 'table'")
	assert(struct["executionArn"], "Expected key executionArn to exist in table")
	if struct["nextToken"] then M.AssertPageToken(struct["nextToken"]) end
	if struct["reverseOrder"] then M.AssertReverseOrder(struct["reverseOrder"]) end
	if struct["maxResults"] then M.AssertPageSize(struct["maxResults"]) end
	if struct["executionArn"] then M.AssertArn(struct["executionArn"]) end
	for k,_ in pairs(struct) do
		assert(GetExecutionHistoryInput_keys[k], "GetExecutionHistoryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetExecutionHistoryInput
--  
-- @param nextToken [PageToken] &lt;p&gt;If a &lt;code&gt;nextToken&lt;/code&gt; was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in &lt;code&gt;nextToken&lt;/code&gt;. Keep all other arguments unchanged.&lt;/p&gt; &lt;p&gt;The configured &lt;code&gt;maxResults&lt;/code&gt; determines how many results can be returned in a single call.&lt;/p&gt;
-- @param reverseOrder [ReverseOrder] &lt;p&gt;Lists events in descending order of their &lt;code&gt;timeStamp&lt;/code&gt;.&lt;/p&gt;
-- @param maxResults [PageSize] &lt;p&gt;The maximum number of results that will be returned per call. &lt;code&gt;nextToken&lt;/code&gt; can be used to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000.&lt;/p&gt; &lt;p&gt;This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.&lt;/p&gt;
-- @param executionArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the execution.&lt;/p&gt;
-- Required parameter: executionArn
function M.GetExecutionHistoryInput(nextToken, reverseOrder, maxResults, executionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetExecutionHistoryInput")
	local t = { 
		["nextToken"] = nextToken,
		["reverseOrder"] = reverseOrder,
		["maxResults"] = maxResults,
		["executionArn"] = executionArn,
	}
	M.AssertGetExecutionHistoryInput(t)
	return t
end

local StopExecutionInput_keys = { "error" = true, "cause" = true, "executionArn" = true, nil }

function M.AssertStopExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopExecutionInput to be of type 'table'")
	assert(struct["executionArn"], "Expected key executionArn to exist in table")
	if struct["error"] then M.AssertError(struct["error"]) end
	if struct["cause"] then M.AssertCause(struct["cause"]) end
	if struct["executionArn"] then M.AssertArn(struct["executionArn"]) end
	for k,_ in pairs(struct) do
		assert(StopExecutionInput_keys[k], "StopExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopExecutionInput
--  
-- @param error [Error] &lt;p&gt;An arbitrary error code that identifies the cause of the termination.&lt;/p&gt;
-- @param cause [Cause] &lt;p&gt;A more detailed explanation of the cause of the termination.&lt;/p&gt;
-- @param executionArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the execution to stop.&lt;/p&gt;
-- Required parameter: executionArn
function M.StopExecutionInput(error, cause, executionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopExecutionInput")
	local t = { 
		["error"] = error,
		["cause"] = cause,
		["executionArn"] = executionArn,
	}
	M.AssertStopExecutionInput(t)
	return t
end

local StateEnteredEventDetails_keys = { "input" = true, "name" = true, nil }

function M.AssertStateEnteredEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StateEnteredEventDetails to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["input"] then M.AssertData(struct["input"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(StateEnteredEventDetails_keys[k], "StateEnteredEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StateEnteredEventDetails
--  
-- @param input [Data] &lt;p&gt;The JSON input data to the state.&lt;/p&gt;
-- @param name [Name] &lt;p&gt;The name of the state.&lt;/p&gt;
-- Required parameter: name
function M.StateEnteredEventDetails(input, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StateEnteredEventDetails")
	local t = { 
		["input"] = input,
		["name"] = name,
	}
	M.AssertStateEnteredEventDetails(t)
	return t
end

local GetActivityTaskInput_keys = { "workerName" = true, "activityArn" = true, nil }

function M.AssertGetActivityTaskInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetActivityTaskInput to be of type 'table'")
	assert(struct["activityArn"], "Expected key activityArn to exist in table")
	if struct["workerName"] then M.AssertName(struct["workerName"]) end
	if struct["activityArn"] then M.AssertArn(struct["activityArn"]) end
	for k,_ in pairs(struct) do
		assert(GetActivityTaskInput_keys[k], "GetActivityTaskInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetActivityTaskInput
--  
-- @param workerName [Name] &lt;p&gt;An arbitrary name may be provided in order to identify the worker that the task is assigned to. This name will be used when it is logged in the execution history.&lt;/p&gt;
-- @param activityArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the activity to retrieve tasks from.&lt;/p&gt;
-- Required parameter: activityArn
function M.GetActivityTaskInput(workerName, activityArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetActivityTaskInput")
	local t = { 
		["workerName"] = workerName,
		["activityArn"] = activityArn,
	}
	M.AssertGetActivityTaskInput(t)
	return t
end

local ListExecutionsOutput_keys = { "nextToken" = true, "executions" = true, nil }

function M.AssertListExecutionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListExecutionsOutput to be of type 'table'")
	assert(struct["executions"], "Expected key executions to exist in table")
	if struct["nextToken"] then M.AssertPageToken(struct["nextToken"]) end
	if struct["executions"] then M.AssertExecutionList(struct["executions"]) end
	for k,_ in pairs(struct) do
		assert(ListExecutionsOutput_keys[k], "ListExecutionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListExecutionsOutput
--  
-- @param nextToken [PageToken] &lt;p&gt;If a &lt;code&gt;nextToken&lt;/code&gt; is returned, there are more results available. To retrieve the next page of results, make the call again using the returned token in &lt;code&gt;nextToken&lt;/code&gt;. Keep all other arguments unchanged.&lt;/p&gt; &lt;p&gt;The configured &lt;code&gt;maxResults&lt;/code&gt; determines how many results can be returned in a single call.&lt;/p&gt;
-- @param executions [ExecutionList] &lt;p&gt;The list of matching executions.&lt;/p&gt;
-- Required parameter: executions
function M.ListExecutionsOutput(nextToken, executions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListExecutionsOutput")
	local t = { 
		["nextToken"] = nextToken,
		["executions"] = executions,
	}
	M.AssertListExecutionsOutput(t)
	return t
end

local ActivityFailedEventDetails_keys = { "cause" = true, "error" = true, nil }

function M.AssertActivityFailedEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityFailedEventDetails to be of type 'table'")
	if struct["cause"] then M.AssertCause(struct["cause"]) end
	if struct["error"] then M.AssertError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(ActivityFailedEventDetails_keys[k], "ActivityFailedEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityFailedEventDetails
--  
-- @param cause [Cause] &lt;p&gt;A more detailed explanation of the cause of the failure.&lt;/p&gt;
-- @param error [Error] &lt;p&gt;The error code of the failure.&lt;/p&gt;
function M.ActivityFailedEventDetails(cause, error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityFailedEventDetails")
	local t = { 
		["cause"] = cause,
		["error"] = error,
	}
	M.AssertActivityFailedEventDetails(t)
	return t
end

local ListActivitiesInput_keys = { "nextToken" = true, "maxResults" = true, nil }

function M.AssertListActivitiesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListActivitiesInput to be of type 'table'")
	if struct["nextToken"] then M.AssertPageToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertPageSize(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListActivitiesInput_keys[k], "ListActivitiesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListActivitiesInput
--  
-- @param nextToken [PageToken] &lt;p&gt;If a &lt;code&gt;nextToken&lt;/code&gt; was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in &lt;code&gt;nextToken&lt;/code&gt;. Keep all other arguments unchanged.&lt;/p&gt; &lt;p&gt;The configured &lt;code&gt;maxResults&lt;/code&gt; determines how many results can be returned in a single call.&lt;/p&gt;
-- @param maxResults [PageSize] &lt;p&gt;The maximum number of results that will be returned per call. &lt;code&gt;nextToken&lt;/code&gt; can be used to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000.&lt;/p&gt; &lt;p&gt;This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.&lt;/p&gt;
function M.ListActivitiesInput(nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListActivitiesInput")
	local t = { 
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertListActivitiesInput(t)
	return t
end

local InvalidToken_keys = { "message" = true, nil }

function M.AssertInvalidToken(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidToken to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidToken_keys[k], "InvalidToken contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidToken
-- &lt;p&gt;The provided token is invalid.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The provided token is invalid.&lt;/p&gt;
function M.InvalidToken(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidToken")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidToken(t)
	return t
end

local SendTaskHeartbeatInput_keys = { "taskToken" = true, nil }

function M.AssertSendTaskHeartbeatInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendTaskHeartbeatInput to be of type 'table'")
	assert(struct["taskToken"], "Expected key taskToken to exist in table")
	if struct["taskToken"] then M.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(SendTaskHeartbeatInput_keys[k], "SendTaskHeartbeatInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendTaskHeartbeatInput
--  
-- @param taskToken [TaskToken] &lt;p&gt;The token that represents this task. Task tokens are generated by the service when the tasks are assigned to a worker (see GetActivityTask::taskToken).&lt;/p&gt;
-- Required parameter: taskToken
function M.SendTaskHeartbeatInput(taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendTaskHeartbeatInput")
	local t = { 
		["taskToken"] = taskToken,
	}
	M.AssertSendTaskHeartbeatInput(t)
	return t
end

local ListStateMachinesInput_keys = { "nextToken" = true, "maxResults" = true, nil }

function M.AssertListStateMachinesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStateMachinesInput to be of type 'table'")
	if struct["nextToken"] then M.AssertPageToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertPageSize(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListStateMachinesInput_keys[k], "ListStateMachinesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStateMachinesInput
--  
-- @param nextToken [PageToken] &lt;p&gt;If a &lt;code&gt;nextToken&lt;/code&gt; was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in &lt;code&gt;nextToken&lt;/code&gt;. Keep all other arguments unchanged.&lt;/p&gt; &lt;p&gt;The configured &lt;code&gt;maxResults&lt;/code&gt; determines how many results can be returned in a single call.&lt;/p&gt;
-- @param maxResults [PageSize] &lt;p&gt;The maximum number of results that will be returned per call. &lt;code&gt;nextToken&lt;/code&gt; can be used to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000.&lt;/p&gt; &lt;p&gt;This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.&lt;/p&gt;
function M.ListStateMachinesInput(nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStateMachinesInput")
	local t = { 
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertListStateMachinesInput(t)
	return t
end

local DeleteStateMachineOutput_keys = { nil }

function M.AssertDeleteStateMachineOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStateMachineOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteStateMachineOutput_keys[k], "DeleteStateMachineOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStateMachineOutput
--  
function M.DeleteStateMachineOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteStateMachineOutput")
	local t = { 
	}
	M.AssertDeleteStateMachineOutput(t)
	return t
end

local DescribeExecutionInput_keys = { "executionArn" = true, nil }

function M.AssertDescribeExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExecutionInput to be of type 'table'")
	assert(struct["executionArn"], "Expected key executionArn to exist in table")
	if struct["executionArn"] then M.AssertArn(struct["executionArn"]) end
	for k,_ in pairs(struct) do
		assert(DescribeExecutionInput_keys[k], "DescribeExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExecutionInput
--  
-- @param executionArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the execution to describe.&lt;/p&gt;
-- Required parameter: executionArn
function M.DescribeExecutionInput(executionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeExecutionInput")
	local t = { 
		["executionArn"] = executionArn,
	}
	M.AssertDescribeExecutionInput(t)
	return t
end

local HistoryEvent_keys = { "lambdaFunctionSucceededEventDetails" = true, "lambdaFunctionTimedOutEventDetails" = true, "activityScheduleFailedEventDetails" = true, "lambdaFunctionStartFailedEventDetails" = true, "id" = true, "activityScheduledEventDetails" = true, "executionSucceededEventDetails" = true, "activitySucceededEventDetails" = true, "type" = true, "executionTimedOutEventDetails" = true, "timestamp" = true, "activityTimedOutEventDetails" = true, "executionFailedEventDetails" = true, "lambdaFunctionFailedEventDetails" = true, "executionAbortedEventDetails" = true, "stateEnteredEventDetails" = true, "previousEventId" = true, "activityStartedEventDetails" = true, "lambdaFunctionScheduleFailedEventDetails" = true, "activityFailedEventDetails" = true, "stateExitedEventDetails" = true, "executionStartedEventDetails" = true, "lambdaFunctionScheduledEventDetails" = true, nil }

function M.AssertHistoryEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HistoryEvent to be of type 'table'")
	assert(struct["timestamp"], "Expected key timestamp to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["lambdaFunctionSucceededEventDetails"] then M.AssertLambdaFunctionSucceededEventDetails(struct["lambdaFunctionSucceededEventDetails"]) end
	if struct["lambdaFunctionTimedOutEventDetails"] then M.AssertLambdaFunctionTimedOutEventDetails(struct["lambdaFunctionTimedOutEventDetails"]) end
	if struct["activityScheduleFailedEventDetails"] then M.AssertActivityScheduleFailedEventDetails(struct["activityScheduleFailedEventDetails"]) end
	if struct["lambdaFunctionStartFailedEventDetails"] then M.AssertLambdaFunctionStartFailedEventDetails(struct["lambdaFunctionStartFailedEventDetails"]) end
	if struct["id"] then M.AssertEventId(struct["id"]) end
	if struct["activityScheduledEventDetails"] then M.AssertActivityScheduledEventDetails(struct["activityScheduledEventDetails"]) end
	if struct["executionSucceededEventDetails"] then M.AssertExecutionSucceededEventDetails(struct["executionSucceededEventDetails"]) end
	if struct["activitySucceededEventDetails"] then M.AssertActivitySucceededEventDetails(struct["activitySucceededEventDetails"]) end
	if struct["type"] then M.AssertHistoryEventType(struct["type"]) end
	if struct["executionTimedOutEventDetails"] then M.AssertExecutionTimedOutEventDetails(struct["executionTimedOutEventDetails"]) end
	if struct["timestamp"] then M.AssertTimestamp(struct["timestamp"]) end
	if struct["activityTimedOutEventDetails"] then M.AssertActivityTimedOutEventDetails(struct["activityTimedOutEventDetails"]) end
	if struct["executionFailedEventDetails"] then M.AssertExecutionFailedEventDetails(struct["executionFailedEventDetails"]) end
	if struct["lambdaFunctionFailedEventDetails"] then M.AssertLambdaFunctionFailedEventDetails(struct["lambdaFunctionFailedEventDetails"]) end
	if struct["executionAbortedEventDetails"] then M.AssertExecutionAbortedEventDetails(struct["executionAbortedEventDetails"]) end
	if struct["stateEnteredEventDetails"] then M.AssertStateEnteredEventDetails(struct["stateEnteredEventDetails"]) end
	if struct["previousEventId"] then M.AssertEventId(struct["previousEventId"]) end
	if struct["activityStartedEventDetails"] then M.AssertActivityStartedEventDetails(struct["activityStartedEventDetails"]) end
	if struct["lambdaFunctionScheduleFailedEventDetails"] then M.AssertLambdaFunctionScheduleFailedEventDetails(struct["lambdaFunctionScheduleFailedEventDetails"]) end
	if struct["activityFailedEventDetails"] then M.AssertActivityFailedEventDetails(struct["activityFailedEventDetails"]) end
	if struct["stateExitedEventDetails"] then M.AssertStateExitedEventDetails(struct["stateExitedEventDetails"]) end
	if struct["executionStartedEventDetails"] then M.AssertExecutionStartedEventDetails(struct["executionStartedEventDetails"]) end
	if struct["lambdaFunctionScheduledEventDetails"] then M.AssertLambdaFunctionScheduledEventDetails(struct["lambdaFunctionScheduledEventDetails"]) end
	for k,_ in pairs(struct) do
		assert(HistoryEvent_keys[k], "HistoryEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HistoryEvent
--  
-- @param lambdaFunctionSucceededEventDetails [LambdaFunctionSucceededEventDetails]  
-- @param lambdaFunctionTimedOutEventDetails [LambdaFunctionTimedOutEventDetails]  
-- @param activityScheduleFailedEventDetails [ActivityScheduleFailedEventDetails]  
-- @param lambdaFunctionStartFailedEventDetails [LambdaFunctionStartFailedEventDetails]  
-- @param id [EventId] &lt;p&gt;The id of the event. Events are numbered sequentially, starting at one.&lt;/p&gt;
-- @param activityScheduledEventDetails [ActivityScheduledEventDetails]  
-- @param executionSucceededEventDetails [ExecutionSucceededEventDetails]  
-- @param activitySucceededEventDetails [ActivitySucceededEventDetails]  
-- @param type [HistoryEventType] &lt;p&gt;The type of the event.&lt;/p&gt;
-- @param executionTimedOutEventDetails [ExecutionTimedOutEventDetails]  
-- @param timestamp [Timestamp] &lt;p&gt;The date the event occured.&lt;/p&gt;
-- @param activityTimedOutEventDetails [ActivityTimedOutEventDetails]  
-- @param executionFailedEventDetails [ExecutionFailedEventDetails]  
-- @param lambdaFunctionFailedEventDetails [LambdaFunctionFailedEventDetails]  
-- @param executionAbortedEventDetails [ExecutionAbortedEventDetails]  
-- @param stateEnteredEventDetails [StateEnteredEventDetails]  
-- @param previousEventId [EventId] &lt;p&gt;The id of the previous event.&lt;/p&gt;
-- @param activityStartedEventDetails [ActivityStartedEventDetails]  
-- @param lambdaFunctionScheduleFailedEventDetails [LambdaFunctionScheduleFailedEventDetails]  
-- @param activityFailedEventDetails [ActivityFailedEventDetails]  
-- @param stateExitedEventDetails [StateExitedEventDetails]  
-- @param executionStartedEventDetails [ExecutionStartedEventDetails]  
-- @param lambdaFunctionScheduledEventDetails [LambdaFunctionScheduledEventDetails]  
-- Required parameter: timestamp
-- Required parameter: type
-- Required parameter: id
function M.HistoryEvent(lambdaFunctionSucceededEventDetails, lambdaFunctionTimedOutEventDetails, activityScheduleFailedEventDetails, lambdaFunctionStartFailedEventDetails, id, activityScheduledEventDetails, executionSucceededEventDetails, activitySucceededEventDetails, type, executionTimedOutEventDetails, timestamp, activityTimedOutEventDetails, executionFailedEventDetails, lambdaFunctionFailedEventDetails, executionAbortedEventDetails, stateEnteredEventDetails, previousEventId, activityStartedEventDetails, lambdaFunctionScheduleFailedEventDetails, activityFailedEventDetails, stateExitedEventDetails, executionStartedEventDetails, lambdaFunctionScheduledEventDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HistoryEvent")
	local t = { 
		["lambdaFunctionSucceededEventDetails"] = lambdaFunctionSucceededEventDetails,
		["lambdaFunctionTimedOutEventDetails"] = lambdaFunctionTimedOutEventDetails,
		["activityScheduleFailedEventDetails"] = activityScheduleFailedEventDetails,
		["lambdaFunctionStartFailedEventDetails"] = lambdaFunctionStartFailedEventDetails,
		["id"] = id,
		["activityScheduledEventDetails"] = activityScheduledEventDetails,
		["executionSucceededEventDetails"] = executionSucceededEventDetails,
		["activitySucceededEventDetails"] = activitySucceededEventDetails,
		["type"] = type,
		["executionTimedOutEventDetails"] = executionTimedOutEventDetails,
		["timestamp"] = timestamp,
		["activityTimedOutEventDetails"] = activityTimedOutEventDetails,
		["executionFailedEventDetails"] = executionFailedEventDetails,
		["lambdaFunctionFailedEventDetails"] = lambdaFunctionFailedEventDetails,
		["executionAbortedEventDetails"] = executionAbortedEventDetails,
		["stateEnteredEventDetails"] = stateEnteredEventDetails,
		["previousEventId"] = previousEventId,
		["activityStartedEventDetails"] = activityStartedEventDetails,
		["lambdaFunctionScheduleFailedEventDetails"] = lambdaFunctionScheduleFailedEventDetails,
		["activityFailedEventDetails"] = activityFailedEventDetails,
		["stateExitedEventDetails"] = stateExitedEventDetails,
		["executionStartedEventDetails"] = executionStartedEventDetails,
		["lambdaFunctionScheduledEventDetails"] = lambdaFunctionScheduledEventDetails,
	}
	M.AssertHistoryEvent(t)
	return t
end

local TaskTimedOut_keys = { "message" = true, nil }

function M.AssertTaskTimedOut(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TaskTimedOut to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TaskTimedOut_keys[k], "TaskTimedOut contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TaskTimedOut
--  
-- @param message [ErrorMessage]  
function M.TaskTimedOut(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TaskTimedOut")
	local t = { 
		["message"] = message,
	}
	M.AssertTaskTimedOut(t)
	return t
end

local DescribeActivityOutput_keys = { "creationDate" = true, "name" = true, "activityArn" = true, nil }

function M.AssertDescribeActivityOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeActivityOutput to be of type 'table'")
	assert(struct["activityArn"], "Expected key activityArn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["creationDate"], "Expected key creationDate to exist in table")
	if struct["creationDate"] then M.AssertTimestamp(struct["creationDate"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["activityArn"] then M.AssertArn(struct["activityArn"]) end
	for k,_ in pairs(struct) do
		assert(DescribeActivityOutput_keys[k], "DescribeActivityOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeActivityOutput
--  
-- @param creationDate [Timestamp] &lt;p&gt;The date the activity was created.&lt;/p&gt;
-- @param name [Name] &lt;p&gt;The name of the activity.&lt;/p&gt;
-- @param activityArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that identifies the activity.&lt;/p&gt;
-- Required parameter: activityArn
-- Required parameter: name
-- Required parameter: creationDate
function M.DescribeActivityOutput(creationDate, name, activityArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeActivityOutput")
	local t = { 
		["creationDate"] = creationDate,
		["name"] = name,
		["activityArn"] = activityArn,
	}
	M.AssertDescribeActivityOutput(t)
	return t
end

local ListActivitiesOutput_keys = { "activities" = true, "nextToken" = true, nil }

function M.AssertListActivitiesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListActivitiesOutput to be of type 'table'")
	assert(struct["activities"], "Expected key activities to exist in table")
	if struct["activities"] then M.AssertActivityList(struct["activities"]) end
	if struct["nextToken"] then M.AssertPageToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListActivitiesOutput_keys[k], "ListActivitiesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListActivitiesOutput
--  
-- @param activities [ActivityList] &lt;p&gt;The list of activities.&lt;/p&gt;
-- @param nextToken [PageToken] &lt;p&gt;If a &lt;code&gt;nextToken&lt;/code&gt; is returned, there are more results available. To retrieve the next page of results, make the call again using the returned token in &lt;code&gt;nextToken&lt;/code&gt;. Keep all other arguments unchanged.&lt;/p&gt; &lt;p&gt;The configured &lt;code&gt;maxResults&lt;/code&gt; determines how many results can be returned in a single call.&lt;/p&gt;
-- Required parameter: activities
function M.ListActivitiesOutput(activities, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListActivitiesOutput")
	local t = { 
		["activities"] = activities,
		["nextToken"] = nextToken,
	}
	M.AssertListActivitiesOutput(t)
	return t
end

local CreateActivityInput_keys = { "name" = true, nil }

function M.AssertCreateActivityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateActivityInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then M.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(CreateActivityInput_keys[k], "CreateActivityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateActivityInput
--  
-- @param name [Name] &lt;p&gt;The name of the activity to create. This name must be unique for your AWS account and region.&lt;/p&gt;
-- Required parameter: name
function M.CreateActivityInput(name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateActivityInput")
	local t = { 
		["name"] = name,
	}
	M.AssertCreateActivityInput(t)
	return t
end

local StateMachineDeleting_keys = { "message" = true, nil }

function M.AssertStateMachineDeleting(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StateMachineDeleting to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(StateMachineDeleting_keys[k], "StateMachineDeleting contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StateMachineDeleting
-- &lt;p&gt;The specified state machine is being deleted.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The specified state machine is being deleted.&lt;/p&gt;
function M.StateMachineDeleting(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StateMachineDeleting")
	local t = { 
		["message"] = message,
	}
	M.AssertStateMachineDeleting(t)
	return t
end

local CreateActivityOutput_keys = { "creationDate" = true, "activityArn" = true, nil }

function M.AssertCreateActivityOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateActivityOutput to be of type 'table'")
	assert(struct["activityArn"], "Expected key activityArn to exist in table")
	assert(struct["creationDate"], "Expected key creationDate to exist in table")
	if struct["creationDate"] then M.AssertTimestamp(struct["creationDate"]) end
	if struct["activityArn"] then M.AssertArn(struct["activityArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateActivityOutput_keys[k], "CreateActivityOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateActivityOutput
--  
-- @param creationDate [Timestamp] &lt;p&gt;The date the activity was created.&lt;/p&gt;
-- @param activityArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that identifies the created activity.&lt;/p&gt;
-- Required parameter: activityArn
-- Required parameter: creationDate
function M.CreateActivityOutput(creationDate, activityArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateActivityOutput")
	local t = { 
		["creationDate"] = creationDate,
		["activityArn"] = activityArn,
	}
	M.AssertCreateActivityOutput(t)
	return t
end

local ExecutionSucceededEventDetails_keys = { "output" = true, nil }

function M.AssertExecutionSucceededEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionSucceededEventDetails to be of type 'table'")
	if struct["output"] then M.AssertData(struct["output"]) end
	for k,_ in pairs(struct) do
		assert(ExecutionSucceededEventDetails_keys[k], "ExecutionSucceededEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionSucceededEventDetails
--  
-- @param output [Data] &lt;p&gt;The JSON data output by the execution.&lt;/p&gt;
function M.ExecutionSucceededEventDetails(output, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionSucceededEventDetails")
	local t = { 
		["output"] = output,
	}
	M.AssertExecutionSucceededEventDetails(t)
	return t
end

local ActivitySucceededEventDetails_keys = { "output" = true, nil }

function M.AssertActivitySucceededEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivitySucceededEventDetails to be of type 'table'")
	if struct["output"] then M.AssertData(struct["output"]) end
	for k,_ in pairs(struct) do
		assert(ActivitySucceededEventDetails_keys[k], "ActivitySucceededEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivitySucceededEventDetails
--  
-- @param output [Data] &lt;p&gt;The JSON data output by the activity task.&lt;/p&gt;
function M.ActivitySucceededEventDetails(output, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivitySucceededEventDetails")
	local t = { 
		["output"] = output,
	}
	M.AssertActivitySucceededEventDetails(t)
	return t
end

local StopExecutionOutput_keys = { "stopDate" = true, nil }

function M.AssertStopExecutionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopExecutionOutput to be of type 'table'")
	assert(struct["stopDate"], "Expected key stopDate to exist in table")
	if struct["stopDate"] then M.AssertTimestamp(struct["stopDate"]) end
	for k,_ in pairs(struct) do
		assert(StopExecutionOutput_keys[k], "StopExecutionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopExecutionOutput
--  
-- @param stopDate [Timestamp] &lt;p&gt;The date the execution was stopped.&lt;/p&gt;
-- Required parameter: stopDate
function M.StopExecutionOutput(stopDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopExecutionOutput")
	local t = { 
		["stopDate"] = stopDate,
	}
	M.AssertStopExecutionOutput(t)
	return t
end

local SendTaskFailureInput_keys = { "error" = true, "cause" = true, "taskToken" = true, nil }

function M.AssertSendTaskFailureInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendTaskFailureInput to be of type 'table'")
	assert(struct["taskToken"], "Expected key taskToken to exist in table")
	if struct["error"] then M.AssertError(struct["error"]) end
	if struct["cause"] then M.AssertCause(struct["cause"]) end
	if struct["taskToken"] then M.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(SendTaskFailureInput_keys[k], "SendTaskFailureInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendTaskFailureInput
--  
-- @param error [Error] &lt;p&gt;An arbitrary error code that identifies the cause of the failure.&lt;/p&gt;
-- @param cause [Cause] &lt;p&gt;A more detailed explanation of the cause of the failure.&lt;/p&gt;
-- @param taskToken [TaskToken] &lt;p&gt;The token that represents this task. Task tokens are generated by the service when the tasks are assigned to a worker (see GetActivityTask::taskToken).&lt;/p&gt;
-- Required parameter: taskToken
function M.SendTaskFailureInput(error, cause, taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendTaskFailureInput")
	local t = { 
		["error"] = error,
		["cause"] = cause,
		["taskToken"] = taskToken,
	}
	M.AssertSendTaskFailureInput(t)
	return t
end

local TaskDoesNotExist_keys = { "message" = true, nil }

function M.AssertTaskDoesNotExist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TaskDoesNotExist to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TaskDoesNotExist_keys[k], "TaskDoesNotExist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TaskDoesNotExist
--  
-- @param message [ErrorMessage]  
function M.TaskDoesNotExist(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TaskDoesNotExist")
	local t = { 
		["message"] = message,
	}
	M.AssertTaskDoesNotExist(t)
	return t
end

local LambdaFunctionTimedOutEventDetails_keys = { "cause" = true, "error" = true, nil }

function M.AssertLambdaFunctionTimedOutEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionTimedOutEventDetails to be of type 'table'")
	if struct["cause"] then M.AssertCause(struct["cause"]) end
	if struct["error"] then M.AssertError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(LambdaFunctionTimedOutEventDetails_keys[k], "LambdaFunctionTimedOutEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionTimedOutEventDetails
--  
-- @param cause [Cause] &lt;p&gt;A more detailed explanation of the cause of the timeout.&lt;/p&gt;
-- @param error [Error] &lt;p&gt;The error code of the failure.&lt;/p&gt;
function M.LambdaFunctionTimedOutEventDetails(cause, error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionTimedOutEventDetails")
	local t = { 
		["cause"] = cause,
		["error"] = error,
	}
	M.AssertLambdaFunctionTimedOutEventDetails(t)
	return t
end

local ExecutionAbortedEventDetails_keys = { "cause" = true, "error" = true, nil }

function M.AssertExecutionAbortedEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionAbortedEventDetails to be of type 'table'")
	if struct["cause"] then M.AssertCause(struct["cause"]) end
	if struct["error"] then M.AssertError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(ExecutionAbortedEventDetails_keys[k], "ExecutionAbortedEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionAbortedEventDetails
--  
-- @param cause [Cause] &lt;p&gt;A more detailed explanation of the cause of the failure.&lt;/p&gt;
-- @param error [Error] &lt;p&gt;The error code of the failure.&lt;/p&gt;
function M.ExecutionAbortedEventDetails(cause, error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionAbortedEventDetails")
	local t = { 
		["cause"] = cause,
		["error"] = error,
	}
	M.AssertExecutionAbortedEventDetails(t)
	return t
end

local ActivityWorkerLimitExceeded_keys = { "message" = true, nil }

function M.AssertActivityWorkerLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityWorkerLimitExceeded to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ActivityWorkerLimitExceeded_keys[k], "ActivityWorkerLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityWorkerLimitExceeded
-- &lt;p&gt;The maximum number of workers concurrently polling for activity tasks has been reached.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The maximum number of workers concurrently polling for activity tasks has been reached.&lt;/p&gt;
function M.ActivityWorkerLimitExceeded(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityWorkerLimitExceeded")
	local t = { 
		["message"] = message,
	}
	M.AssertActivityWorkerLimitExceeded(t)
	return t
end

local InvalidName_keys = { "message" = true, nil }

function M.AssertInvalidName(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidName to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidName_keys[k], "InvalidName contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidName
-- &lt;p&gt;The provided name is invalid.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The provided name is invalid.&lt;/p&gt;
function M.InvalidName(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidName")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidName(t)
	return t
end

local ExecutionStartedEventDetails_keys = { "input" = true, "roleArn" = true, nil }

function M.AssertExecutionStartedEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionStartedEventDetails to be of type 'table'")
	if struct["input"] then M.AssertData(struct["input"]) end
	if struct["roleArn"] then M.AssertArn(struct["roleArn"]) end
	for k,_ in pairs(struct) do
		assert(ExecutionStartedEventDetails_keys[k], "ExecutionStartedEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionStartedEventDetails
--  
-- @param input [Data] &lt;p&gt;The JSON data input to the execution.&lt;/p&gt;
-- @param roleArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM role used for executing AWS Lambda tasks.&lt;/p&gt;
function M.ExecutionStartedEventDetails(input, roleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionStartedEventDetails")
	local t = { 
		["input"] = input,
		["roleArn"] = roleArn,
	}
	M.AssertExecutionStartedEventDetails(t)
	return t
end

local SendTaskFailureOutput_keys = { nil }

function M.AssertSendTaskFailureOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendTaskFailureOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SendTaskFailureOutput_keys[k], "SendTaskFailureOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendTaskFailureOutput
--  
function M.SendTaskFailureOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendTaskFailureOutput")
	local t = { 
	}
	M.AssertSendTaskFailureOutput(t)
	return t
end

local LambdaFunctionSucceededEventDetails_keys = { "output" = true, nil }

function M.AssertLambdaFunctionSucceededEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionSucceededEventDetails to be of type 'table'")
	if struct["output"] then M.AssertData(struct["output"]) end
	for k,_ in pairs(struct) do
		assert(LambdaFunctionSucceededEventDetails_keys[k], "LambdaFunctionSucceededEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionSucceededEventDetails
--  
-- @param output [Data] &lt;p&gt;The JSON data output by the lambda function.&lt;/p&gt;
function M.LambdaFunctionSucceededEventDetails(output, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionSucceededEventDetails")
	local t = { 
		["output"] = output,
	}
	M.AssertLambdaFunctionSucceededEventDetails(t)
	return t
end

local ActivityScheduleFailedEventDetails_keys = { "cause" = true, "error" = true, nil }

function M.AssertActivityScheduleFailedEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityScheduleFailedEventDetails to be of type 'table'")
	if struct["cause"] then M.AssertCause(struct["cause"]) end
	if struct["error"] then M.AssertError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(ActivityScheduleFailedEventDetails_keys[k], "ActivityScheduleFailedEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityScheduleFailedEventDetails
--  
-- @param cause [Cause] &lt;p&gt;A more detailed explanation of the cause of the failure.&lt;/p&gt;
-- @param error [Error] &lt;p&gt;The error code of the failure.&lt;/p&gt;
function M.ActivityScheduleFailedEventDetails(cause, error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityScheduleFailedEventDetails")
	local t = { 
		["cause"] = cause,
		["error"] = error,
	}
	M.AssertActivityScheduleFailedEventDetails(t)
	return t
end

local InvalidOutput_keys = { "message" = true, nil }

function M.AssertInvalidOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOutput to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidOutput_keys[k], "InvalidOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOutput
-- &lt;p&gt;The provided JSON output data is invalid.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The provided JSON output data is invalid.&lt;/p&gt;
function M.InvalidOutput(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOutput")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidOutput(t)
	return t
end

local GetActivityTaskOutput_keys = { "input" = true, "taskToken" = true, nil }

function M.AssertGetActivityTaskOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetActivityTaskOutput to be of type 'table'")
	if struct["input"] then M.AssertData(struct["input"]) end
	if struct["taskToken"] then M.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(GetActivityTaskOutput_keys[k], "GetActivityTaskOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetActivityTaskOutput
--  
-- @param input [Data] &lt;p&gt;The JSON input data for the task.&lt;/p&gt;
-- @param taskToken [TaskToken] &lt;p&gt;A token that identifies the scheduled task. This token must be copied and included in subsequent calls to &lt;a&gt;SendTaskHeartbeat&lt;/a&gt;, &lt;a&gt;SendTaskSuccess&lt;/a&gt; or &lt;a&gt;SendTaskFailure&lt;/a&gt; in order to report the progress or completion of the task.&lt;/p&gt;
function M.GetActivityTaskOutput(input, taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetActivityTaskOutput")
	local t = { 
		["input"] = input,
		["taskToken"] = taskToken,
	}
	M.AssertGetActivityTaskOutput(t)
	return t
end

local InvalidExecutionInput_keys = { "message" = true, nil }

function M.AssertInvalidExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidExecutionInput to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidExecutionInput_keys[k], "InvalidExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidExecutionInput
-- &lt;p&gt;The provided JSON input data is invalid.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The provided JSON input data is invalid.&lt;/p&gt;
function M.InvalidExecutionInput(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidExecutionInput")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidExecutionInput(t)
	return t
end

local StateMachineDoesNotExist_keys = { "message" = true, nil }

function M.AssertStateMachineDoesNotExist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StateMachineDoesNotExist to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(StateMachineDoesNotExist_keys[k], "StateMachineDoesNotExist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StateMachineDoesNotExist
-- &lt;p&gt;The specified state machine does not exist.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The specified state machine does not exist.&lt;/p&gt;
function M.StateMachineDoesNotExist(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StateMachineDoesNotExist")
	local t = { 
		["message"] = message,
	}
	M.AssertStateMachineDoesNotExist(t)
	return t
end

local StateMachineAlreadyExists_keys = { "message" = true, nil }

function M.AssertStateMachineAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StateMachineAlreadyExists to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(StateMachineAlreadyExists_keys[k], "StateMachineAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StateMachineAlreadyExists
-- &lt;p&gt;A state machine with the same name but a different definition or role ARN already exists.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;A state machine with the same name but a different definition or role ARN already exists.&lt;/p&gt;
function M.StateMachineAlreadyExists(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StateMachineAlreadyExists")
	local t = { 
		["message"] = message,
	}
	M.AssertStateMachineAlreadyExists(t)
	return t
end

local ExecutionAlreadyExists_keys = { "message" = true, nil }

function M.AssertExecutionAlreadyExists(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionAlreadyExists to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ExecutionAlreadyExists_keys[k], "ExecutionAlreadyExists contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionAlreadyExists
-- &lt;p&gt;An execution with the same name already exists.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;An execution with the same name already exists.&lt;/p&gt;
function M.ExecutionAlreadyExists(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionAlreadyExists")
	local t = { 
		["message"] = message,
	}
	M.AssertExecutionAlreadyExists(t)
	return t
end

local DeleteActivityOutput_keys = { nil }

function M.AssertDeleteActivityOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteActivityOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteActivityOutput_keys[k], "DeleteActivityOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteActivityOutput
--  
function M.DeleteActivityOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteActivityOutput")
	local t = { 
	}
	M.AssertDeleteActivityOutput(t)
	return t
end

local LambdaFunctionStartFailedEventDetails_keys = { "cause" = true, "error" = true, nil }

function M.AssertLambdaFunctionStartFailedEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionStartFailedEventDetails to be of type 'table'")
	if struct["cause"] then M.AssertCause(struct["cause"]) end
	if struct["error"] then M.AssertError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(LambdaFunctionStartFailedEventDetails_keys[k], "LambdaFunctionStartFailedEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionStartFailedEventDetails
--  
-- @param cause [Cause] &lt;p&gt;A more detailed explanation of the cause of the failure.&lt;/p&gt;
-- @param error [Error] &lt;p&gt;The error code of the failure.&lt;/p&gt;
function M.LambdaFunctionStartFailedEventDetails(cause, error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionStartFailedEventDetails")
	local t = { 
		["cause"] = cause,
		["error"] = error,
	}
	M.AssertLambdaFunctionStartFailedEventDetails(t)
	return t
end

local StateMachineListItem_keys = { "creationDate" = true, "stateMachineArn" = true, "name" = true, nil }

function M.AssertStateMachineListItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StateMachineListItem to be of type 'table'")
	assert(struct["stateMachineArn"], "Expected key stateMachineArn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["creationDate"], "Expected key creationDate to exist in table")
	if struct["creationDate"] then M.AssertTimestamp(struct["creationDate"]) end
	if struct["stateMachineArn"] then M.AssertArn(struct["stateMachineArn"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(StateMachineListItem_keys[k], "StateMachineListItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StateMachineListItem
--  
-- @param creationDate [Timestamp] &lt;p&gt;The date the state machine was created.&lt;/p&gt;
-- @param stateMachineArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that identifies the state machine.&lt;/p&gt;
-- @param name [Name] &lt;p&gt;The name of the state machine.&lt;/p&gt;
-- Required parameter: stateMachineArn
-- Required parameter: name
-- Required parameter: creationDate
function M.StateMachineListItem(creationDate, stateMachineArn, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StateMachineListItem")
	local t = { 
		["creationDate"] = creationDate,
		["stateMachineArn"] = stateMachineArn,
		["name"] = name,
	}
	M.AssertStateMachineListItem(t)
	return t
end

local DeleteStateMachineInput_keys = { "stateMachineArn" = true, nil }

function M.AssertDeleteStateMachineInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStateMachineInput to be of type 'table'")
	assert(struct["stateMachineArn"], "Expected key stateMachineArn to exist in table")
	if struct["stateMachineArn"] then M.AssertArn(struct["stateMachineArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteStateMachineInput_keys[k], "DeleteStateMachineInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStateMachineInput
--  
-- @param stateMachineArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the state machine to delete.&lt;/p&gt;
-- Required parameter: stateMachineArn
function M.DeleteStateMachineInput(stateMachineArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteStateMachineInput")
	local t = { 
		["stateMachineArn"] = stateMachineArn,
	}
	M.AssertDeleteStateMachineInput(t)
	return t
end

local StartExecutionOutput_keys = { "startDate" = true, "executionArn" = true, nil }

function M.AssertStartExecutionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartExecutionOutput to be of type 'table'")
	assert(struct["executionArn"], "Expected key executionArn to exist in table")
	assert(struct["startDate"], "Expected key startDate to exist in table")
	if struct["startDate"] then M.AssertTimestamp(struct["startDate"]) end
	if struct["executionArn"] then M.AssertArn(struct["executionArn"]) end
	for k,_ in pairs(struct) do
		assert(StartExecutionOutput_keys[k], "StartExecutionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartExecutionOutput
--  
-- @param startDate [Timestamp] &lt;p&gt;The date the execution was started.&lt;/p&gt;
-- @param executionArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that identifies the execution.&lt;/p&gt;
-- Required parameter: executionArn
-- Required parameter: startDate
function M.StartExecutionOutput(startDate, executionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartExecutionOutput")
	local t = { 
		["startDate"] = startDate,
		["executionArn"] = executionArn,
	}
	M.AssertStartExecutionOutput(t)
	return t
end

local DescribeExecutionOutput_keys = { "status" = true, "startDate" = true, "name" = true, "executionArn" = true, "stateMachineArn" = true, "stopDate" = true, "output" = true, "input" = true, nil }

function M.AssertDescribeExecutionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExecutionOutput to be of type 'table'")
	assert(struct["executionArn"], "Expected key executionArn to exist in table")
	assert(struct["stateMachineArn"], "Expected key stateMachineArn to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	assert(struct["startDate"], "Expected key startDate to exist in table")
	assert(struct["input"], "Expected key input to exist in table")
	if struct["status"] then M.AssertExecutionStatus(struct["status"]) end
	if struct["startDate"] then M.AssertTimestamp(struct["startDate"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["executionArn"] then M.AssertArn(struct["executionArn"]) end
	if struct["stateMachineArn"] then M.AssertArn(struct["stateMachineArn"]) end
	if struct["stopDate"] then M.AssertTimestamp(struct["stopDate"]) end
	if struct["output"] then M.AssertData(struct["output"]) end
	if struct["input"] then M.AssertData(struct["input"]) end
	for k,_ in pairs(struct) do
		assert(DescribeExecutionOutput_keys[k], "DescribeExecutionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExecutionOutput
--  
-- @param status [ExecutionStatus] &lt;p&gt;The current status of the execution.&lt;/p&gt;
-- @param startDate [Timestamp] &lt;p&gt;The date the execution was started.&lt;/p&gt;
-- @param name [Name] &lt;p&gt;The name of the execution.&lt;/p&gt;
-- @param executionArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that identifies the execution.&lt;/p&gt;
-- @param stateMachineArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the executed stated machine.&lt;/p&gt;
-- @param stopDate [Timestamp] &lt;p&gt;If the execution has already ended, the date the execution stopped.&lt;/p&gt;
-- @param output [Data] &lt;p&gt;The JSON output data of the execution.&lt;/p&gt;
-- @param input [Data] &lt;p&gt;The JSON input data of the execution.&lt;/p&gt;
-- Required parameter: executionArn
-- Required parameter: stateMachineArn
-- Required parameter: status
-- Required parameter: startDate
-- Required parameter: input
function M.DescribeExecutionOutput(status, startDate, name, executionArn, stateMachineArn, stopDate, output, input, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeExecutionOutput")
	local t = { 
		["status"] = status,
		["startDate"] = startDate,
		["name"] = name,
		["executionArn"] = executionArn,
		["stateMachineArn"] = stateMachineArn,
		["stopDate"] = stopDate,
		["output"] = output,
		["input"] = input,
	}
	M.AssertDescribeExecutionOutput(t)
	return t
end

local GetExecutionHistoryOutput_keys = { "nextToken" = true, "events" = true, nil }

function M.AssertGetExecutionHistoryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetExecutionHistoryOutput to be of type 'table'")
	assert(struct["events"], "Expected key events to exist in table")
	if struct["nextToken"] then M.AssertPageToken(struct["nextToken"]) end
	if struct["events"] then M.AssertHistoryEventList(struct["events"]) end
	for k,_ in pairs(struct) do
		assert(GetExecutionHistoryOutput_keys[k], "GetExecutionHistoryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetExecutionHistoryOutput
--  
-- @param nextToken [PageToken] &lt;p&gt;If a &lt;code&gt;nextToken&lt;/code&gt; is returned, there are more results available. To retrieve the next page of results, make the call again using the returned token in &lt;code&gt;nextToken&lt;/code&gt;. Keep all other arguments unchanged.&lt;/p&gt; &lt;p&gt;The configured &lt;code&gt;maxResults&lt;/code&gt; determines how many results can be returned in a single call.&lt;/p&gt;
-- @param events [HistoryEventList] &lt;p&gt;The list of events that occurred in the execution.&lt;/p&gt;
-- Required parameter: events
function M.GetExecutionHistoryOutput(nextToken, events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetExecutionHistoryOutput")
	local t = { 
		["nextToken"] = nextToken,
		["events"] = events,
	}
	M.AssertGetExecutionHistoryOutput(t)
	return t
end

local ExecutionLimitExceeded_keys = { "message" = true, nil }

function M.AssertExecutionLimitExceeded(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionLimitExceeded to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ExecutionLimitExceeded_keys[k], "ExecutionLimitExceeded contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionLimitExceeded
-- &lt;p&gt;The maximum number of running executions has been reached. Running executions must end or be stopped before a new execution can be started.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The maximum number of running executions has been reached. Running executions must end or be stopped before a new execution can be started.&lt;/p&gt;
function M.ExecutionLimitExceeded(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionLimitExceeded")
	local t = { 
		["message"] = message,
	}
	M.AssertExecutionLimitExceeded(t)
	return t
end

local LambdaFunctionScheduledEventDetails_keys = { "input" = true, "resource" = true, "timeoutInSeconds" = true, nil }

function M.AssertLambdaFunctionScheduledEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionScheduledEventDetails to be of type 'table'")
	assert(struct["resource"], "Expected key resource to exist in table")
	if struct["input"] then M.AssertData(struct["input"]) end
	if struct["resource"] then M.AssertArn(struct["resource"]) end
	if struct["timeoutInSeconds"] then M.AssertTimeoutInSeconds(struct["timeoutInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(LambdaFunctionScheduledEventDetails_keys[k], "LambdaFunctionScheduledEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionScheduledEventDetails
--  
-- @param input [Data] &lt;p&gt;The JSON data input to the lambda function.&lt;/p&gt;
-- @param resource [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the scheduled lambda function.&lt;/p&gt;
-- @param timeoutInSeconds [TimeoutInSeconds] &lt;p&gt;The maximum allowed duration of the lambda function.&lt;/p&gt;
-- Required parameter: resource
function M.LambdaFunctionScheduledEventDetails(input, resource, timeoutInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionScheduledEventDetails")
	local t = { 
		["input"] = input,
		["resource"] = resource,
		["timeoutInSeconds"] = timeoutInSeconds,
	}
	M.AssertLambdaFunctionScheduledEventDetails(t)
	return t
end

local ExecutionTimedOutEventDetails_keys = { "cause" = true, "error" = true, nil }

function M.AssertExecutionTimedOutEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionTimedOutEventDetails to be of type 'table'")
	if struct["cause"] then M.AssertCause(struct["cause"]) end
	if struct["error"] then M.AssertError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(ExecutionTimedOutEventDetails_keys[k], "ExecutionTimedOutEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionTimedOutEventDetails
--  
-- @param cause [Cause] &lt;p&gt;A more detailed explanation of the cause of the timeout.&lt;/p&gt;
-- @param error [Error] &lt;p&gt;The error code of the failure.&lt;/p&gt;
function M.ExecutionTimedOutEventDetails(cause, error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionTimedOutEventDetails")
	local t = { 
		["cause"] = cause,
		["error"] = error,
	}
	M.AssertExecutionTimedOutEventDetails(t)
	return t
end

local ActivityTimedOutEventDetails_keys = { "cause" = true, "error" = true, nil }

function M.AssertActivityTimedOutEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTimedOutEventDetails to be of type 'table'")
	if struct["cause"] then M.AssertCause(struct["cause"]) end
	if struct["error"] then M.AssertError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(ActivityTimedOutEventDetails_keys[k], "ActivityTimedOutEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTimedOutEventDetails
--  
-- @param cause [Cause] &lt;p&gt;A more detailed explanation of the cause of the timeout.&lt;/p&gt;
-- @param error [Error] &lt;p&gt;The error code of the failure.&lt;/p&gt;
function M.ActivityTimedOutEventDetails(cause, error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTimedOutEventDetails")
	local t = { 
		["cause"] = cause,
		["error"] = error,
	}
	M.AssertActivityTimedOutEventDetails(t)
	return t
end

local ListStateMachinesOutput_keys = { "stateMachines" = true, "nextToken" = true, nil }

function M.AssertListStateMachinesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStateMachinesOutput to be of type 'table'")
	assert(struct["stateMachines"], "Expected key stateMachines to exist in table")
	if struct["stateMachines"] then M.AssertStateMachineList(struct["stateMachines"]) end
	if struct["nextToken"] then M.AssertPageToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListStateMachinesOutput_keys[k], "ListStateMachinesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStateMachinesOutput
--  
-- @param stateMachines [StateMachineList]  
-- @param nextToken [PageToken] &lt;p&gt;If a &lt;code&gt;nextToken&lt;/code&gt; is returned, there are more results available. To retrieve the next page of results, make the call again using the returned token in &lt;code&gt;nextToken&lt;/code&gt;. Keep all other arguments unchanged.&lt;/p&gt; &lt;p&gt;The configured &lt;code&gt;maxResults&lt;/code&gt; determines how many results can be returned in a single call.&lt;/p&gt;
-- Required parameter: stateMachines
function M.ListStateMachinesOutput(stateMachines, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStateMachinesOutput")
	local t = { 
		["stateMachines"] = stateMachines,
		["nextToken"] = nextToken,
	}
	M.AssertListStateMachinesOutput(t)
	return t
end

local ExecutionListItem_keys = { "status" = true, "startDate" = true, "name" = true, "executionArn" = true, "stateMachineArn" = true, "stopDate" = true, nil }

function M.AssertExecutionListItem(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionListItem to be of type 'table'")
	assert(struct["executionArn"], "Expected key executionArn to exist in table")
	assert(struct["stateMachineArn"], "Expected key stateMachineArn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	assert(struct["startDate"], "Expected key startDate to exist in table")
	if struct["status"] then M.AssertExecutionStatus(struct["status"]) end
	if struct["startDate"] then M.AssertTimestamp(struct["startDate"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["executionArn"] then M.AssertArn(struct["executionArn"]) end
	if struct["stateMachineArn"] then M.AssertArn(struct["stateMachineArn"]) end
	if struct["stopDate"] then M.AssertTimestamp(struct["stopDate"]) end
	for k,_ in pairs(struct) do
		assert(ExecutionListItem_keys[k], "ExecutionListItem contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionListItem
--  
-- @param status [ExecutionStatus] &lt;p&gt;The current status of the execution.&lt;/p&gt;
-- @param startDate [Timestamp] &lt;p&gt;The date the execution started.&lt;/p&gt;
-- @param name [Name] &lt;p&gt;The name of the execution.&lt;/p&gt;
-- @param executionArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that identifies the execution.&lt;/p&gt;
-- @param stateMachineArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the executed state machine.&lt;/p&gt;
-- @param stopDate [Timestamp] &lt;p&gt;If the execution already ended, the date the execution stopped.&lt;/p&gt;
-- Required parameter: executionArn
-- Required parameter: stateMachineArn
-- Required parameter: name
-- Required parameter: status
-- Required parameter: startDate
function M.ExecutionListItem(status, startDate, name, executionArn, stateMachineArn, stopDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionListItem")
	local t = { 
		["status"] = status,
		["startDate"] = startDate,
		["name"] = name,
		["executionArn"] = executionArn,
		["stateMachineArn"] = stateMachineArn,
		["stopDate"] = stopDate,
	}
	M.AssertExecutionListItem(t)
	return t
end

local ActivityScheduledEventDetails_keys = { "input" = true, "resource" = true, "heartbeatInSeconds" = true, "timeoutInSeconds" = true, nil }

function M.AssertActivityScheduledEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityScheduledEventDetails to be of type 'table'")
	assert(struct["resource"], "Expected key resource to exist in table")
	if struct["input"] then M.AssertData(struct["input"]) end
	if struct["resource"] then M.AssertArn(struct["resource"]) end
	if struct["heartbeatInSeconds"] then M.AssertTimeoutInSeconds(struct["heartbeatInSeconds"]) end
	if struct["timeoutInSeconds"] then M.AssertTimeoutInSeconds(struct["timeoutInSeconds"]) end
	for k,_ in pairs(struct) do
		assert(ActivityScheduledEventDetails_keys[k], "ActivityScheduledEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityScheduledEventDetails
--  
-- @param input [Data] &lt;p&gt;The JSON data input to the activity task.&lt;/p&gt;
-- @param resource [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the scheduled activity.&lt;/p&gt;
-- @param heartbeatInSeconds [TimeoutInSeconds] &lt;p&gt;The maximum allowed duration between two heartbeats for the activity task.&lt;/p&gt;
-- @param timeoutInSeconds [TimeoutInSeconds] &lt;p&gt;The maximum allowed duration of the activity task.&lt;/p&gt;
-- Required parameter: resource
function M.ActivityScheduledEventDetails(input, resource, heartbeatInSeconds, timeoutInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityScheduledEventDetails")
	local t = { 
		["input"] = input,
		["resource"] = resource,
		["heartbeatInSeconds"] = heartbeatInSeconds,
		["timeoutInSeconds"] = timeoutInSeconds,
	}
	M.AssertActivityScheduledEventDetails(t)
	return t
end

local LambdaFunctionScheduleFailedEventDetails_keys = { "cause" = true, "error" = true, nil }

function M.AssertLambdaFunctionScheduleFailedEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionScheduleFailedEventDetails to be of type 'table'")
	if struct["cause"] then M.AssertCause(struct["cause"]) end
	if struct["error"] then M.AssertError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(LambdaFunctionScheduleFailedEventDetails_keys[k], "LambdaFunctionScheduleFailedEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionScheduleFailedEventDetails
--  
-- @param cause [Cause] &lt;p&gt;A more detailed explanation of the cause of the failure.&lt;/p&gt;
-- @param error [Error] &lt;p&gt;The error code of the failure.&lt;/p&gt;
function M.LambdaFunctionScheduleFailedEventDetails(cause, error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionScheduleFailedEventDetails")
	local t = { 
		["cause"] = cause,
		["error"] = error,
	}
	M.AssertLambdaFunctionScheduleFailedEventDetails(t)
	return t
end

local InvalidArn_keys = { "message" = true, nil }

function M.AssertInvalidArn(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidArn to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidArn_keys[k], "InvalidArn contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArn
-- &lt;p&gt;The provided Amazon Resource Name (ARN) is invalid.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The provided Amazon Resource Name (ARN) is invalid.&lt;/p&gt;
function M.InvalidArn(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidArn")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidArn(t)
	return t
end

local ActivityDoesNotExist_keys = { "message" = true, nil }

function M.AssertActivityDoesNotExist(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityDoesNotExist to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ActivityDoesNotExist_keys[k], "ActivityDoesNotExist contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityDoesNotExist
-- &lt;p&gt;The specified activity does not exist.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The specified activity does not exist.&lt;/p&gt;
function M.ActivityDoesNotExist(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityDoesNotExist")
	local t = { 
		["message"] = message,
	}
	M.AssertActivityDoesNotExist(t)
	return t
end

local DescribeStateMachineOutput_keys = { "status" = true, "definition" = true, "name" = true, "roleArn" = true, "stateMachineArn" = true, "creationDate" = true, nil }

function M.AssertDescribeStateMachineOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStateMachineOutput to be of type 'table'")
	assert(struct["stateMachineArn"], "Expected key stateMachineArn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["definition"], "Expected key definition to exist in table")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["creationDate"], "Expected key creationDate to exist in table")
	if struct["status"] then M.AssertStateMachineStatus(struct["status"]) end
	if struct["definition"] then M.AssertDefinition(struct["definition"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["roleArn"] then M.AssertArn(struct["roleArn"]) end
	if struct["stateMachineArn"] then M.AssertArn(struct["stateMachineArn"]) end
	if struct["creationDate"] then M.AssertTimestamp(struct["creationDate"]) end
	for k,_ in pairs(struct) do
		assert(DescribeStateMachineOutput_keys[k], "DescribeStateMachineOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStateMachineOutput
--  
-- @param status [StateMachineStatus] &lt;p&gt;The current status of the state machine.&lt;/p&gt;
-- @param definition [Definition] &lt;p&gt;The Amazon States Language definition of the state machine.&lt;/p&gt;
-- @param name [Name] &lt;p&gt;The name of the state machine.&lt;/p&gt;
-- @param roleArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the IAM role used for executing this state machine.&lt;/p&gt;
-- @param stateMachineArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) that identifies the state machine.&lt;/p&gt;
-- @param creationDate [Timestamp] &lt;p&gt;The date the state machine was created.&lt;/p&gt;
-- Required parameter: stateMachineArn
-- Required parameter: name
-- Required parameter: definition
-- Required parameter: roleArn
-- Required parameter: creationDate
function M.DescribeStateMachineOutput(status, definition, name, roleArn, stateMachineArn, creationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStateMachineOutput")
	local t = { 
		["status"] = status,
		["definition"] = definition,
		["name"] = name,
		["roleArn"] = roleArn,
		["stateMachineArn"] = stateMachineArn,
		["creationDate"] = creationDate,
	}
	M.AssertDescribeStateMachineOutput(t)
	return t
end

local SendTaskSuccessInput_keys = { "output" = true, "taskToken" = true, nil }

function M.AssertSendTaskSuccessInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendTaskSuccessInput to be of type 'table'")
	assert(struct["taskToken"], "Expected key taskToken to exist in table")
	assert(struct["output"], "Expected key output to exist in table")
	if struct["output"] then M.AssertData(struct["output"]) end
	if struct["taskToken"] then M.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(SendTaskSuccessInput_keys[k], "SendTaskSuccessInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendTaskSuccessInput
--  
-- @param output [Data] &lt;p&gt;The JSON output of the task.&lt;/p&gt;
-- @param taskToken [TaskToken] &lt;p&gt;The token that represents this task. Task tokens are generated by the service when the tasks are assigned to a worker (see GetActivityTask::taskToken).&lt;/p&gt;
-- Required parameter: taskToken
-- Required parameter: output
function M.SendTaskSuccessInput(output, taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendTaskSuccessInput")
	local t = { 
		["output"] = output,
		["taskToken"] = taskToken,
	}
	M.AssertSendTaskSuccessInput(t)
	return t
end

local InvalidDefinition_keys = { "message" = true, nil }

function M.AssertInvalidDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDefinition to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidDefinition_keys[k], "InvalidDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDefinition
-- &lt;p&gt;The provided Amazon States Language definition is invalid.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The provided Amazon States Language definition is invalid.&lt;/p&gt;
function M.InvalidDefinition(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDefinition")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidDefinition(t)
	return t
end

local SendTaskSuccessOutput_keys = { nil }

function M.AssertSendTaskSuccessOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendTaskSuccessOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SendTaskSuccessOutput_keys[k], "SendTaskSuccessOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendTaskSuccessOutput
--  
function M.SendTaskSuccessOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendTaskSuccessOutput")
	local t = { 
	}
	M.AssertSendTaskSuccessOutput(t)
	return t
end

local ExecutionFailedEventDetails_keys = { "cause" = true, "error" = true, nil }

function M.AssertExecutionFailedEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionFailedEventDetails to be of type 'table'")
	if struct["cause"] then M.AssertCause(struct["cause"]) end
	if struct["error"] then M.AssertError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(ExecutionFailedEventDetails_keys[k], "ExecutionFailedEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionFailedEventDetails
--  
-- @param cause [Cause] &lt;p&gt;A more detailed explanation of the cause of the failure.&lt;/p&gt;
-- @param error [Error] &lt;p&gt;The error code of the failure.&lt;/p&gt;
function M.ExecutionFailedEventDetails(cause, error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionFailedEventDetails")
	local t = { 
		["cause"] = cause,
		["error"] = error,
	}
	M.AssertExecutionFailedEventDetails(t)
	return t
end

local SendTaskHeartbeatOutput_keys = { nil }

function M.AssertSendTaskHeartbeatOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SendTaskHeartbeatOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(SendTaskHeartbeatOutput_keys[k], "SendTaskHeartbeatOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SendTaskHeartbeatOutput
--  
function M.SendTaskHeartbeatOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendTaskHeartbeatOutput")
	local t = { 
	}
	M.AssertSendTaskHeartbeatOutput(t)
	return t
end

local LambdaFunctionFailedEventDetails_keys = { "cause" = true, "error" = true, nil }

function M.AssertLambdaFunctionFailedEventDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionFailedEventDetails to be of type 'table'")
	if struct["cause"] then M.AssertCause(struct["cause"]) end
	if struct["error"] then M.AssertError(struct["error"]) end
	for k,_ in pairs(struct) do
		assert(LambdaFunctionFailedEventDetails_keys[k], "LambdaFunctionFailedEventDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionFailedEventDetails
--  
-- @param cause [Cause] &lt;p&gt;A more detailed explanation of the cause of the failure.&lt;/p&gt;
-- @param error [Error] &lt;p&gt;The error code of the failure.&lt;/p&gt;
function M.LambdaFunctionFailedEventDetails(cause, error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionFailedEventDetails")
	local t = { 
		["cause"] = cause,
		["error"] = error,
	}
	M.AssertLambdaFunctionFailedEventDetails(t)
	return t
end

local DeleteActivityInput_keys = { "activityArn" = true, nil }

function M.AssertDeleteActivityInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteActivityInput to be of type 'table'")
	assert(struct["activityArn"], "Expected key activityArn to exist in table")
	if struct["activityArn"] then M.AssertArn(struct["activityArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteActivityInput_keys[k], "DeleteActivityInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteActivityInput
--  
-- @param activityArn [Arn] &lt;p&gt;The Amazon Resource Name (ARN) of the activity to delete.&lt;/p&gt;
-- Required parameter: activityArn
function M.DeleteActivityInput(activityArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteActivityInput")
	local t = { 
		["activityArn"] = activityArn,
	}
	M.AssertDeleteActivityInput(t)
	return t
end

function M.AssertError(str)
	assert(str)
	assert(type(str) == "string", "Expected Error to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.Error(str)
	M.AssertError(str)
	return str
end

function M.AssertHistoryEventType(str)
	assert(str)
	assert(type(str) == "string", "Expected HistoryEventType to be of type 'string'")
end

--  
function M.HistoryEventType(str)
	M.AssertHistoryEventType(str)
	return str
end

function M.AssertPageToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PageToken to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PageToken(str)
	M.AssertPageToken(str)
	return str
end

function M.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Arn(str)
	M.AssertArn(str)
	return str
end

function M.AssertStateMachineStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected StateMachineStatus to be of type 'string'")
end

--  
function M.StateMachineStatus(str)
	M.AssertStateMachineStatus(str)
	return str
end

function M.AssertData(str)
	assert(str)
	assert(type(str) == "string", "Expected Data to be of type 'string'")
	assert(#str <= 32768, "Expected string to be max 32768 characters")
end

--  
function M.Data(str)
	M.AssertData(str)
	return str
end

function M.AssertIdentity(str)
	assert(str)
	assert(type(str) == "string", "Expected Identity to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.Identity(str)
	M.AssertIdentity(str)
	return str
end

function M.AssertDefinition(str)
	assert(str)
	assert(type(str) == "string", "Expected Definition to be of type 'string'")
	assert(#str <= 1048576, "Expected string to be max 1048576 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Definition(str)
	M.AssertDefinition(str)
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

function M.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	M.AssertErrorMessage(str)
	return str
end

function M.AssertCause(str)
	assert(str)
	assert(type(str) == "string", "Expected Cause to be of type 'string'")
	assert(#str <= 32768, "Expected string to be max 32768 characters")
end

--  
function M.Cause(str)
	M.AssertCause(str)
	return str
end

function M.AssertTaskToken(str)
	assert(str)
	assert(type(str) == "string", "Expected TaskToken to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TaskToken(str)
	M.AssertTaskToken(str)
	return str
end

function M.AssertName(str)
	assert(str)
	assert(type(str) == "string", "Expected Name to be of type 'string'")
	assert(#str <= 80, "Expected string to be max 80 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Name(str)
	M.AssertName(str)
	return str
end

function M.AssertTimeoutInSeconds(long)
	assert(long)
	assert(type(long) == "number", "Expected TimeoutInSeconds to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.TimeoutInSeconds(long)
	M.AssertTimeoutInSeconds(long)
	return long
end

function M.AssertEventId(long)
	assert(long)
	assert(type(long) == "number", "Expected EventId to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.EventId(long)
	M.AssertEventId(long)
	return long
end

function M.AssertPageSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PageSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
end

function M.PageSize(integer)
	M.AssertPageSize(integer)
	return integer
end

function M.AssertReverseOrder(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected ReverseOrder to be of type 'boolean'")
end

function M.ReverseOrder(boolean)
	M.AssertReverseOrder(boolean)
	return boolean
end

function M.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	M.AssertTimestamp(timestamp)
	return timestamp
end

function M.AssertActivityList(list)
	assert(list)
	assert(type(list) == "table", "Expected ActivityList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertActivityListItem(v)
	end
end

--  
-- List of ActivityListItem objects
function M.ActivityList(list)
	M.AssertActivityList(list)
	return list
end

function M.AssertStateMachineList(list)
	assert(list)
	assert(type(list) == "table", "Expected StateMachineList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertStateMachineListItem(v)
	end
end

--  
-- List of StateMachineListItem objects
function M.StateMachineList(list)
	M.AssertStateMachineList(list)
	return list
end

function M.AssertExecutionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ExecutionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertExecutionListItem(v)
	end
end

--  
-- List of ExecutionListItem objects
function M.ExecutionList(list)
	M.AssertExecutionList(list)
	return list
end

function M.AssertHistoryEventList(list)
	assert(list)
	assert(type(list) == "table", "Expected HistoryEventList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertHistoryEvent(v)
	end
end

--  
-- List of HistoryEvent objects
function M.HistoryEventList(list)
	M.AssertHistoryEventList(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- StartExecution
-- @param StartExecutionInput
-- @param cb Callback function accepting two args: response, error_message
function M.StartExecutionAsync(StartExecutionInput, cb)
	assert(StartExecutionInput, "You must provide a StartExecutionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.StartExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartExecutionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListExecutions
-- @param ListExecutionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListExecutionsAsync(ListExecutionsInput, cb)
	assert(ListExecutionsInput, "You must provide a ListExecutionsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.ListExecutions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListExecutionsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopExecution
-- @param StopExecutionInput
-- @param cb Callback function accepting two args: response, error_message
function M.StopExecutionAsync(StopExecutionInput, cb)
	assert(StopExecutionInput, "You must provide a StopExecutionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.StopExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopExecutionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteActivity
-- @param DeleteActivityInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteActivityAsync(DeleteActivityInput, cb)
	assert(DeleteActivityInput, "You must provide a DeleteActivityInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.DeleteActivity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteActivityInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SendTaskHeartbeat
-- @param SendTaskHeartbeatInput
-- @param cb Callback function accepting two args: response, error_message
function M.SendTaskHeartbeatAsync(SendTaskHeartbeatInput, cb)
	assert(SendTaskHeartbeatInput, "You must provide a SendTaskHeartbeatInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.SendTaskHeartbeat",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SendTaskHeartbeatInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeExecution
-- @param DescribeExecutionInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeExecutionAsync(DescribeExecutionInput, cb)
	assert(DescribeExecutionInput, "You must provide a DescribeExecutionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.DescribeExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeExecutionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListStateMachines
-- @param ListStateMachinesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListStateMachinesAsync(ListStateMachinesInput, cb)
	assert(ListStateMachinesInput, "You must provide a ListStateMachinesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.ListStateMachines",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListStateMachinesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetExecutionHistory
-- @param GetExecutionHistoryInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetExecutionHistoryAsync(GetExecutionHistoryInput, cb)
	assert(GetExecutionHistoryInput, "You must provide a GetExecutionHistoryInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.GetExecutionHistory",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetExecutionHistoryInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetActivityTask
-- @param GetActivityTaskInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetActivityTaskAsync(GetActivityTaskInput, cb)
	assert(GetActivityTaskInput, "You must provide a GetActivityTaskInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.GetActivityTask",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetActivityTaskInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListActivities
-- @param ListActivitiesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListActivitiesAsync(ListActivitiesInput, cb)
	assert(ListActivitiesInput, "You must provide a ListActivitiesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.ListActivities",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListActivitiesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateStateMachine
-- @param CreateStateMachineInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateStateMachineAsync(CreateStateMachineInput, cb)
	assert(CreateStateMachineInput, "You must provide a CreateStateMachineInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.CreateStateMachine",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateStateMachineInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeStateMachine
-- @param DescribeStateMachineInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeStateMachineAsync(DescribeStateMachineInput, cb)
	assert(DescribeStateMachineInput, "You must provide a DescribeStateMachineInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.DescribeStateMachine",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeStateMachineInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeActivity
-- @param DescribeActivityInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeActivityAsync(DescribeActivityInput, cb)
	assert(DescribeActivityInput, "You must provide a DescribeActivityInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.DescribeActivity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeActivityInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteStateMachine
-- @param DeleteStateMachineInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteStateMachineAsync(DeleteStateMachineInput, cb)
	assert(DeleteStateMachineInput, "You must provide a DeleteStateMachineInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.DeleteStateMachine",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteStateMachineInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateActivity
-- @param CreateActivityInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateActivityAsync(CreateActivityInput, cb)
	assert(CreateActivityInput, "You must provide a CreateActivityInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.CreateActivity",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateActivityInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SendTaskFailure
-- @param SendTaskFailureInput
-- @param cb Callback function accepting two args: response, error_message
function M.SendTaskFailureAsync(SendTaskFailureInput, cb)
	assert(SendTaskFailureInput, "You must provide a SendTaskFailureInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.SendTaskFailure",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SendTaskFailureInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SendTaskSuccess
-- @param SendTaskSuccessInput
-- @param cb Callback function accepting two args: response, error_message
function M.SendTaskSuccessAsync(SendTaskSuccessInput, cb)
	assert(SendTaskSuccessInput, "You must provide a SendTaskSuccessInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSStepFunctions.SendTaskSuccess",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SendTaskSuccessInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
