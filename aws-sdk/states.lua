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
-- @param _message [ErrorMessage] 
function M.ExecutionDoesNotExist(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionDoesNotExist")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertExecutionDoesNotExist(t)
	return t
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
-- @param _input [Data] <p>The JSON input data for the execution.</p>
-- @param _stateMachineArn [Arn] <p>The Amazon Resource Name (ARN) of the state machine to execute.</p>
-- @param _name [Name] <p>The name of the execution. This name must be unique for your AWS account and region.</p>
-- Required parameter: stateMachineArn
function M.StartExecutionInput(_input, _stateMachineArn, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartExecutionInput")
	local t = { 
		["input"] = _input,
		["stateMachineArn"] = _stateMachineArn,
		["name"] = _name,
	}
	asserts.AssertStartExecutionInput(t)
	return t
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
--  
-- @param _output [Data] <p>The JSON output data of the state.</p>
-- @param _name [Name] <p>The name of the state.</p>
-- Required parameter: name
function M.StateExitedEventDetails(_output, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StateExitedEventDetails")
	local t = { 
		["output"] = _output,
		["name"] = _name,
	}
	asserts.AssertStateExitedEventDetails(t)
	return t
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
--  
-- @param _creationDate [Timestamp] <p>The date the activity was created.</p>
-- @param _name [Name] <p>The name of the activity.</p>
-- @param _activityArn [Arn] <p>The Amazon Resource Name (ARN) that identifies the activity.</p>
-- Required parameter: activityArn
-- Required parameter: name
-- Required parameter: creationDate
function M.ActivityListItem(_creationDate, _name, _activityArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityListItem")
	local t = { 
		["creationDate"] = _creationDate,
		["name"] = _name,
		["activityArn"] = _activityArn,
	}
	asserts.AssertActivityListItem(t)
	return t
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
--  
-- @param _workerName [Identity] <p>The name of the worker that the task was assigned to. These names are provided by the workers when calling <a>GetActivityTask</a>.</p>
function M.ActivityStartedEventDetails(_workerName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityStartedEventDetails")
	local t = { 
		["workerName"] = _workerName,
	}
	asserts.AssertActivityStartedEventDetails(t)
	return t
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
-- @param _statusFilter [ExecutionStatus] <p>If specified, only list the executions whose current execution status matches the given filter.</p>
-- @param _nextToken [PageToken] <p>If a <code>nextToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maxResults</code> determines how many results can be returned in a single call.</p>
-- @param _stateMachineArn [Arn] <p>The Amazon Resource Name (ARN) of the state machine whose executions will be listed.</p>
-- @param _maxResults [PageSize] <p>The maximum number of results that will be returned per call. <code>nextToken</code> can be used to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000.</p> <p>This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.</p>
-- Required parameter: stateMachineArn
function M.ListExecutionsInput(_statusFilter, _nextToken, _stateMachineArn, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListExecutionsInput")
	local t = { 
		["statusFilter"] = _statusFilter,
		["nextToken"] = _nextToken,
		["stateMachineArn"] = _stateMachineArn,
		["maxResults"] = _maxResults,
	}
	asserts.AssertListExecutionsInput(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.StateMachineLimitExceeded(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StateMachineLimitExceeded")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertStateMachineLimitExceeded(t)
	return t
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
-- @param _stateMachineArn [Arn] <p>The Amazon Resource Name (ARN) of the state machine to describe.</p>
-- Required parameter: stateMachineArn
function M.DescribeStateMachineInput(_stateMachineArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStateMachineInput")
	local t = { 
		["stateMachineArn"] = _stateMachineArn,
	}
	asserts.AssertDescribeStateMachineInput(t)
	return t
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
-- @param _definition [Definition] <p>The Amazon States Language definition of the state machine.</p>
-- @param _roleArn [Arn] <p>The Amazon Resource Name (ARN) of the IAM role to use for this state machine.</p>
-- @param _name [Name] <p>The name of the state machine. This name must be unique for your AWS account and region.</p>
-- Required parameter: name
-- Required parameter: definition
-- Required parameter: roleArn
function M.CreateStateMachineInput(_definition, _roleArn, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStateMachineInput")
	local t = { 
		["definition"] = _definition,
		["roleArn"] = _roleArn,
		["name"] = _name,
	}
	asserts.AssertCreateStateMachineInput(t)
	return t
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
-- @param _creationDate [Timestamp] <p>The date the state machine was created.</p>
-- @param _stateMachineArn [Arn] <p>The Amazon Resource Name (ARN) that identifies the created state machine.</p>
-- Required parameter: stateMachineArn
-- Required parameter: creationDate
function M.CreateStateMachineOutput(_creationDate, _stateMachineArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateStateMachineOutput")
	local t = { 
		["creationDate"] = _creationDate,
		["stateMachineArn"] = _stateMachineArn,
	}
	asserts.AssertCreateStateMachineOutput(t)
	return t
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
-- @param _activityArn [Arn] <p>The Amazon Resource Name (ARN) of the activity to describe.</p>
-- Required parameter: activityArn
function M.DescribeActivityInput(_activityArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeActivityInput")
	local t = { 
		["activityArn"] = _activityArn,
	}
	asserts.AssertDescribeActivityInput(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.ActivityLimitExceeded(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityLimitExceeded")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertActivityLimitExceeded(t)
	return t
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
-- @param _nextToken [PageToken] <p>If a <code>nextToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maxResults</code> determines how many results can be returned in a single call.</p>
-- @param _reverseOrder [ReverseOrder] <p>Lists events in descending order of their <code>timeStamp</code>.</p>
-- @param _maxResults [PageSize] <p>The maximum number of results that will be returned per call. <code>nextToken</code> can be used to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000.</p> <p>This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.</p>
-- @param _executionArn [Arn] <p>The Amazon Resource Name (ARN) of the execution.</p>
-- Required parameter: executionArn
function M.GetExecutionHistoryInput(_nextToken, _reverseOrder, _maxResults, _executionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetExecutionHistoryInput")
	local t = { 
		["nextToken"] = _nextToken,
		["reverseOrder"] = _reverseOrder,
		["maxResults"] = _maxResults,
		["executionArn"] = _executionArn,
	}
	asserts.AssertGetExecutionHistoryInput(t)
	return t
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
-- @param _error [Error] <p>An arbitrary error code that identifies the cause of the termination.</p>
-- @param _cause [Cause] <p>A more detailed explanation of the cause of the termination.</p>
-- @param _executionArn [Arn] <p>The Amazon Resource Name (ARN) of the execution to stop.</p>
-- Required parameter: executionArn
function M.StopExecutionInput(_error, _cause, _executionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopExecutionInput")
	local t = { 
		["error"] = _error,
		["cause"] = _cause,
		["executionArn"] = _executionArn,
	}
	asserts.AssertStopExecutionInput(t)
	return t
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
--  
-- @param _input [Data] <p>The JSON input data to the state.</p>
-- @param _name [Name] <p>The name of the state.</p>
-- Required parameter: name
function M.StateEnteredEventDetails(_input, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StateEnteredEventDetails")
	local t = { 
		["input"] = _input,
		["name"] = _name,
	}
	asserts.AssertStateEnteredEventDetails(t)
	return t
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
-- @param _workerName [Name] <p>An arbitrary name may be provided in order to identify the worker that the task is assigned to. This name will be used when it is logged in the execution history.</p>
-- @param _activityArn [Arn] <p>The Amazon Resource Name (ARN) of the activity to retrieve tasks from.</p>
-- Required parameter: activityArn
function M.GetActivityTaskInput(_workerName, _activityArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetActivityTaskInput")
	local t = { 
		["workerName"] = _workerName,
		["activityArn"] = _activityArn,
	}
	asserts.AssertGetActivityTaskInput(t)
	return t
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
-- @param _nextToken [PageToken] <p>If a <code>nextToken</code> is returned, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maxResults</code> determines how many results can be returned in a single call.</p>
-- @param _executions [ExecutionList] <p>The list of matching executions.</p>
-- Required parameter: executions
function M.ListExecutionsOutput(_nextToken, _executions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListExecutionsOutput")
	local t = { 
		["nextToken"] = _nextToken,
		["executions"] = _executions,
	}
	asserts.AssertListExecutionsOutput(t)
	return t
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
--  
-- @param _cause [Cause] <p>A more detailed explanation of the cause of the failure.</p>
-- @param _error [Error] <p>The error code of the failure.</p>
function M.ActivityFailedEventDetails(_cause, _error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityFailedEventDetails")
	local t = { 
		["cause"] = _cause,
		["error"] = _error,
	}
	asserts.AssertActivityFailedEventDetails(t)
	return t
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
-- @param _nextToken [PageToken] <p>If a <code>nextToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maxResults</code> determines how many results can be returned in a single call.</p>
-- @param _maxResults [PageSize] <p>The maximum number of results that will be returned per call. <code>nextToken</code> can be used to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000.</p> <p>This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.</p>
function M.ListActivitiesInput(_nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListActivitiesInput")
	local t = { 
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
	}
	asserts.AssertListActivitiesInput(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.InvalidToken(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidToken")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidToken(t)
	return t
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
-- @param _taskToken [TaskToken] <p>The token that represents this task. Task tokens are generated by the service when the tasks are assigned to a worker (see GetActivityTask::taskToken).</p>
-- Required parameter: taskToken
function M.SendTaskHeartbeatInput(_taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendTaskHeartbeatInput")
	local t = { 
		["taskToken"] = _taskToken,
	}
	asserts.AssertSendTaskHeartbeatInput(t)
	return t
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
-- @param _nextToken [PageToken] <p>If a <code>nextToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maxResults</code> determines how many results can be returned in a single call.</p>
-- @param _maxResults [PageSize] <p>The maximum number of results that will be returned per call. <code>nextToken</code> can be used to obtain further pages of results. The default is 100 and the maximum allowed page size is 1000.</p> <p>This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.</p>
function M.ListStateMachinesInput(_nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStateMachinesInput")
	local t = { 
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
	}
	asserts.AssertListStateMachinesInput(t)
	return t
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
function M.DeleteStateMachineOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteStateMachineOutput")
	local t = { 
	}
	asserts.AssertDeleteStateMachineOutput(t)
	return t
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
-- @param _executionArn [Arn] <p>The Amazon Resource Name (ARN) of the execution to describe.</p>
-- Required parameter: executionArn
function M.DescribeExecutionInput(_executionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeExecutionInput")
	local t = { 
		["executionArn"] = _executionArn,
	}
	asserts.AssertDescribeExecutionInput(t)
	return t
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
--  
-- @param _lambdaFunctionSucceededEventDetails [LambdaFunctionSucceededEventDetails] 
-- @param _lambdaFunctionTimedOutEventDetails [LambdaFunctionTimedOutEventDetails] 
-- @param _activityScheduleFailedEventDetails [ActivityScheduleFailedEventDetails] 
-- @param _lambdaFunctionStartFailedEventDetails [LambdaFunctionStartFailedEventDetails] 
-- @param _id [EventId] <p>The id of the event. Events are numbered sequentially, starting at one.</p>
-- @param _activityScheduledEventDetails [ActivityScheduledEventDetails] 
-- @param _executionSucceededEventDetails [ExecutionSucceededEventDetails] 
-- @param _activitySucceededEventDetails [ActivitySucceededEventDetails] 
-- @param _type [HistoryEventType] <p>The type of the event.</p>
-- @param _executionTimedOutEventDetails [ExecutionTimedOutEventDetails] 
-- @param _timestamp [Timestamp] <p>The date the event occured.</p>
-- @param _activityTimedOutEventDetails [ActivityTimedOutEventDetails] 
-- @param _executionFailedEventDetails [ExecutionFailedEventDetails] 
-- @param _lambdaFunctionFailedEventDetails [LambdaFunctionFailedEventDetails] 
-- @param _executionAbortedEventDetails [ExecutionAbortedEventDetails] 
-- @param _stateEnteredEventDetails [StateEnteredEventDetails] 
-- @param _previousEventId [EventId] <p>The id of the previous event.</p>
-- @param _activityStartedEventDetails [ActivityStartedEventDetails] 
-- @param _lambdaFunctionScheduleFailedEventDetails [LambdaFunctionScheduleFailedEventDetails] 
-- @param _activityFailedEventDetails [ActivityFailedEventDetails] 
-- @param _stateExitedEventDetails [StateExitedEventDetails] 
-- @param _executionStartedEventDetails [ExecutionStartedEventDetails] 
-- @param _lambdaFunctionScheduledEventDetails [LambdaFunctionScheduledEventDetails] 
-- Required parameter: timestamp
-- Required parameter: type
-- Required parameter: id
function M.HistoryEvent(_lambdaFunctionSucceededEventDetails, _lambdaFunctionTimedOutEventDetails, _activityScheduleFailedEventDetails, _lambdaFunctionStartFailedEventDetails, _id, _activityScheduledEventDetails, _executionSucceededEventDetails, _activitySucceededEventDetails, _type, _executionTimedOutEventDetails, _timestamp, _activityTimedOutEventDetails, _executionFailedEventDetails, _lambdaFunctionFailedEventDetails, _executionAbortedEventDetails, _stateEnteredEventDetails, _previousEventId, _activityStartedEventDetails, _lambdaFunctionScheduleFailedEventDetails, _activityFailedEventDetails, _stateExitedEventDetails, _executionStartedEventDetails, _lambdaFunctionScheduledEventDetails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HistoryEvent")
	local t = { 
		["lambdaFunctionSucceededEventDetails"] = _lambdaFunctionSucceededEventDetails,
		["lambdaFunctionTimedOutEventDetails"] = _lambdaFunctionTimedOutEventDetails,
		["activityScheduleFailedEventDetails"] = _activityScheduleFailedEventDetails,
		["lambdaFunctionStartFailedEventDetails"] = _lambdaFunctionStartFailedEventDetails,
		["id"] = _id,
		["activityScheduledEventDetails"] = _activityScheduledEventDetails,
		["executionSucceededEventDetails"] = _executionSucceededEventDetails,
		["activitySucceededEventDetails"] = _activitySucceededEventDetails,
		["type"] = _type,
		["executionTimedOutEventDetails"] = _executionTimedOutEventDetails,
		["timestamp"] = _timestamp,
		["activityTimedOutEventDetails"] = _activityTimedOutEventDetails,
		["executionFailedEventDetails"] = _executionFailedEventDetails,
		["lambdaFunctionFailedEventDetails"] = _lambdaFunctionFailedEventDetails,
		["executionAbortedEventDetails"] = _executionAbortedEventDetails,
		["stateEnteredEventDetails"] = _stateEnteredEventDetails,
		["previousEventId"] = _previousEventId,
		["activityStartedEventDetails"] = _activityStartedEventDetails,
		["lambdaFunctionScheduleFailedEventDetails"] = _lambdaFunctionScheduleFailedEventDetails,
		["activityFailedEventDetails"] = _activityFailedEventDetails,
		["stateExitedEventDetails"] = _stateExitedEventDetails,
		["executionStartedEventDetails"] = _executionStartedEventDetails,
		["lambdaFunctionScheduledEventDetails"] = _lambdaFunctionScheduledEventDetails,
	}
	asserts.AssertHistoryEvent(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.TaskTimedOut(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TaskTimedOut")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertTaskTimedOut(t)
	return t
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
-- @param _creationDate [Timestamp] <p>The date the activity was created.</p>
-- @param _name [Name] <p>The name of the activity.</p>
-- @param _activityArn [Arn] <p>The Amazon Resource Name (ARN) that identifies the activity.</p>
-- Required parameter: activityArn
-- Required parameter: name
-- Required parameter: creationDate
function M.DescribeActivityOutput(_creationDate, _name, _activityArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeActivityOutput")
	local t = { 
		["creationDate"] = _creationDate,
		["name"] = _name,
		["activityArn"] = _activityArn,
	}
	asserts.AssertDescribeActivityOutput(t)
	return t
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
-- @param _activities [ActivityList] <p>The list of activities.</p>
-- @param _nextToken [PageToken] <p>If a <code>nextToken</code> is returned, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maxResults</code> determines how many results can be returned in a single call.</p>
-- Required parameter: activities
function M.ListActivitiesOutput(_activities, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListActivitiesOutput")
	local t = { 
		["activities"] = _activities,
		["nextToken"] = _nextToken,
	}
	asserts.AssertListActivitiesOutput(t)
	return t
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
-- @param _name [Name] <p>The name of the activity to create. This name must be unique for your AWS account and region.</p>
-- Required parameter: name
function M.CreateActivityInput(_name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateActivityInput")
	local t = { 
		["name"] = _name,
	}
	asserts.AssertCreateActivityInput(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.StateMachineDeleting(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StateMachineDeleting")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertStateMachineDeleting(t)
	return t
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
-- @param _creationDate [Timestamp] <p>The date the activity was created.</p>
-- @param _activityArn [Arn] <p>The Amazon Resource Name (ARN) that identifies the created activity.</p>
-- Required parameter: activityArn
-- Required parameter: creationDate
function M.CreateActivityOutput(_creationDate, _activityArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateActivityOutput")
	local t = { 
		["creationDate"] = _creationDate,
		["activityArn"] = _activityArn,
	}
	asserts.AssertCreateActivityOutput(t)
	return t
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
--  
-- @param _output [Data] <p>The JSON data output by the execution.</p>
function M.ExecutionSucceededEventDetails(_output, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionSucceededEventDetails")
	local t = { 
		["output"] = _output,
	}
	asserts.AssertExecutionSucceededEventDetails(t)
	return t
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
--  
-- @param _output [Data] <p>The JSON data output by the activity task.</p>
function M.ActivitySucceededEventDetails(_output, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivitySucceededEventDetails")
	local t = { 
		["output"] = _output,
	}
	asserts.AssertActivitySucceededEventDetails(t)
	return t
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
-- @param _stopDate [Timestamp] <p>The date the execution was stopped.</p>
-- Required parameter: stopDate
function M.StopExecutionOutput(_stopDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopExecutionOutput")
	local t = { 
		["stopDate"] = _stopDate,
	}
	asserts.AssertStopExecutionOutput(t)
	return t
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
-- @param _error [Error] <p>An arbitrary error code that identifies the cause of the failure.</p>
-- @param _cause [Cause] <p>A more detailed explanation of the cause of the failure.</p>
-- @param _taskToken [TaskToken] <p>The token that represents this task. Task tokens are generated by the service when the tasks are assigned to a worker (see GetActivityTask::taskToken).</p>
-- Required parameter: taskToken
function M.SendTaskFailureInput(_error, _cause, _taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendTaskFailureInput")
	local t = { 
		["error"] = _error,
		["cause"] = _cause,
		["taskToken"] = _taskToken,
	}
	asserts.AssertSendTaskFailureInput(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.TaskDoesNotExist(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TaskDoesNotExist")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertTaskDoesNotExist(t)
	return t
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
--  
-- @param _cause [Cause] <p>A more detailed explanation of the cause of the timeout.</p>
-- @param _error [Error] <p>The error code of the failure.</p>
function M.LambdaFunctionTimedOutEventDetails(_cause, _error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionTimedOutEventDetails")
	local t = { 
		["cause"] = _cause,
		["error"] = _error,
	}
	asserts.AssertLambdaFunctionTimedOutEventDetails(t)
	return t
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
--  
-- @param _cause [Cause] <p>A more detailed explanation of the cause of the failure.</p>
-- @param _error [Error] <p>The error code of the failure.</p>
function M.ExecutionAbortedEventDetails(_cause, _error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionAbortedEventDetails")
	local t = { 
		["cause"] = _cause,
		["error"] = _error,
	}
	asserts.AssertExecutionAbortedEventDetails(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.ActivityWorkerLimitExceeded(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityWorkerLimitExceeded")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertActivityWorkerLimitExceeded(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.InvalidName(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidName")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidName(t)
	return t
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
--  
-- @param _input [Data] <p>The JSON data input to the execution.</p>
-- @param _roleArn [Arn] <p>The Amazon Resource Name (ARN) of the IAM role used for executing AWS Lambda tasks.</p>
function M.ExecutionStartedEventDetails(_input, _roleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionStartedEventDetails")
	local t = { 
		["input"] = _input,
		["roleArn"] = _roleArn,
	}
	asserts.AssertExecutionStartedEventDetails(t)
	return t
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
function M.SendTaskFailureOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendTaskFailureOutput")
	local t = { 
	}
	asserts.AssertSendTaskFailureOutput(t)
	return t
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
--  
-- @param _output [Data] <p>The JSON data output by the lambda function.</p>
function M.LambdaFunctionSucceededEventDetails(_output, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionSucceededEventDetails")
	local t = { 
		["output"] = _output,
	}
	asserts.AssertLambdaFunctionSucceededEventDetails(t)
	return t
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
--  
-- @param _cause [Cause] <p>A more detailed explanation of the cause of the failure.</p>
-- @param _error [Error] <p>The error code of the failure.</p>
function M.ActivityScheduleFailedEventDetails(_cause, _error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityScheduleFailedEventDetails")
	local t = { 
		["cause"] = _cause,
		["error"] = _error,
	}
	asserts.AssertActivityScheduleFailedEventDetails(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.InvalidOutput(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOutput")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidOutput(t)
	return t
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
-- @param _input [Data] <p>The JSON input data for the task.</p>
-- @param _taskToken [TaskToken] <p>A token that identifies the scheduled task. This token must be copied and included in subsequent calls to <a>SendTaskHeartbeat</a>, <a>SendTaskSuccess</a> or <a>SendTaskFailure</a> in order to report the progress or completion of the task.</p>
function M.GetActivityTaskOutput(_input, _taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetActivityTaskOutput")
	local t = { 
		["input"] = _input,
		["taskToken"] = _taskToken,
	}
	asserts.AssertGetActivityTaskOutput(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.InvalidExecutionInput(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidExecutionInput")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidExecutionInput(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.StateMachineDoesNotExist(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StateMachineDoesNotExist")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertStateMachineDoesNotExist(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.StateMachineAlreadyExists(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StateMachineAlreadyExists")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertStateMachineAlreadyExists(t)
	return t
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
-- <p>An execution with the same name already exists.</p>
-- @param _message [ErrorMessage] 
function M.ExecutionAlreadyExists(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionAlreadyExists")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertExecutionAlreadyExists(t)
	return t
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
function M.DeleteActivityOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteActivityOutput")
	local t = { 
	}
	asserts.AssertDeleteActivityOutput(t)
	return t
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
--  
-- @param _cause [Cause] <p>A more detailed explanation of the cause of the failure.</p>
-- @param _error [Error] <p>The error code of the failure.</p>
function M.LambdaFunctionStartFailedEventDetails(_cause, _error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionStartFailedEventDetails")
	local t = { 
		["cause"] = _cause,
		["error"] = _error,
	}
	asserts.AssertLambdaFunctionStartFailedEventDetails(t)
	return t
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
--  
-- @param _creationDate [Timestamp] <p>The date the state machine was created.</p>
-- @param _stateMachineArn [Arn] <p>The Amazon Resource Name (ARN) that identifies the state machine.</p>
-- @param _name [Name] <p>The name of the state machine.</p>
-- Required parameter: stateMachineArn
-- Required parameter: name
-- Required parameter: creationDate
function M.StateMachineListItem(_creationDate, _stateMachineArn, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StateMachineListItem")
	local t = { 
		["creationDate"] = _creationDate,
		["stateMachineArn"] = _stateMachineArn,
		["name"] = _name,
	}
	asserts.AssertStateMachineListItem(t)
	return t
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
-- @param _stateMachineArn [Arn] <p>The Amazon Resource Name (ARN) of the state machine to delete.</p>
-- Required parameter: stateMachineArn
function M.DeleteStateMachineInput(_stateMachineArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteStateMachineInput")
	local t = { 
		["stateMachineArn"] = _stateMachineArn,
	}
	asserts.AssertDeleteStateMachineInput(t)
	return t
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
-- @param _startDate [Timestamp] <p>The date the execution was started.</p>
-- @param _executionArn [Arn] <p>The Amazon Resource Name (ARN) that identifies the execution.</p>
-- Required parameter: executionArn
-- Required parameter: startDate
function M.StartExecutionOutput(_startDate, _executionArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartExecutionOutput")
	local t = { 
		["startDate"] = _startDate,
		["executionArn"] = _executionArn,
	}
	asserts.AssertStartExecutionOutput(t)
	return t
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
-- @param _status [ExecutionStatus] <p>The current status of the execution.</p>
-- @param _startDate [Timestamp] <p>The date the execution was started.</p>
-- @param _name [Name] <p>The name of the execution.</p>
-- @param _executionArn [Arn] <p>The Amazon Resource Name (ARN) that identifies the execution.</p>
-- @param _stateMachineArn [Arn] <p>The Amazon Resource Name (ARN) of the executed stated machine.</p>
-- @param _stopDate [Timestamp] <p>If the execution has already ended, the date the execution stopped.</p>
-- @param _output [Data] <p>The JSON output data of the execution.</p>
-- @param _input [Data] <p>The JSON input data of the execution.</p>
-- Required parameter: executionArn
-- Required parameter: stateMachineArn
-- Required parameter: status
-- Required parameter: startDate
-- Required parameter: input
function M.DescribeExecutionOutput(_status, _startDate, _name, _executionArn, _stateMachineArn, _stopDate, _output, _input, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeExecutionOutput")
	local t = { 
		["status"] = _status,
		["startDate"] = _startDate,
		["name"] = _name,
		["executionArn"] = _executionArn,
		["stateMachineArn"] = _stateMachineArn,
		["stopDate"] = _stopDate,
		["output"] = _output,
		["input"] = _input,
	}
	asserts.AssertDescribeExecutionOutput(t)
	return t
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
-- @param _nextToken [PageToken] <p>If a <code>nextToken</code> is returned, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maxResults</code> determines how many results can be returned in a single call.</p>
-- @param _events [HistoryEventList] <p>The list of events that occurred in the execution.</p>
-- Required parameter: events
function M.GetExecutionHistoryOutput(_nextToken, _events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetExecutionHistoryOutput")
	local t = { 
		["nextToken"] = _nextToken,
		["events"] = _events,
	}
	asserts.AssertGetExecutionHistoryOutput(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.ExecutionLimitExceeded(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionLimitExceeded")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertExecutionLimitExceeded(t)
	return t
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
--  
-- @param _input [Data] <p>The JSON data input to the lambda function.</p>
-- @param _resource [Arn] <p>The Amazon Resource Name (ARN) of the scheduled lambda function.</p>
-- @param _timeoutInSeconds [TimeoutInSeconds] <p>The maximum allowed duration of the lambda function.</p>
-- Required parameter: resource
function M.LambdaFunctionScheduledEventDetails(_input, _resource, _timeoutInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionScheduledEventDetails")
	local t = { 
		["input"] = _input,
		["resource"] = _resource,
		["timeoutInSeconds"] = _timeoutInSeconds,
	}
	asserts.AssertLambdaFunctionScheduledEventDetails(t)
	return t
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
--  
-- @param _cause [Cause] <p>A more detailed explanation of the cause of the timeout.</p>
-- @param _error [Error] <p>The error code of the failure.</p>
function M.ExecutionTimedOutEventDetails(_cause, _error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionTimedOutEventDetails")
	local t = { 
		["cause"] = _cause,
		["error"] = _error,
	}
	asserts.AssertExecutionTimedOutEventDetails(t)
	return t
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
--  
-- @param _cause [Cause] <p>A more detailed explanation of the cause of the timeout.</p>
-- @param _error [Error] <p>The error code of the failure.</p>
function M.ActivityTimedOutEventDetails(_cause, _error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTimedOutEventDetails")
	local t = { 
		["cause"] = _cause,
		["error"] = _error,
	}
	asserts.AssertActivityTimedOutEventDetails(t)
	return t
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
-- @param _stateMachines [StateMachineList] 
-- @param _nextToken [PageToken] <p>If a <code>nextToken</code> is returned, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maxResults</code> determines how many results can be returned in a single call.</p>
-- Required parameter: stateMachines
function M.ListStateMachinesOutput(_stateMachines, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListStateMachinesOutput")
	local t = { 
		["stateMachines"] = _stateMachines,
		["nextToken"] = _nextToken,
	}
	asserts.AssertListStateMachinesOutput(t)
	return t
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
--  
-- @param _status [ExecutionStatus] <p>The current status of the execution.</p>
-- @param _startDate [Timestamp] <p>The date the execution started.</p>
-- @param _name [Name] <p>The name of the execution.</p>
-- @param _executionArn [Arn] <p>The Amazon Resource Name (ARN) that identifies the execution.</p>
-- @param _stateMachineArn [Arn] <p>The Amazon Resource Name (ARN) of the executed state machine.</p>
-- @param _stopDate [Timestamp] <p>If the execution already ended, the date the execution stopped.</p>
-- Required parameter: executionArn
-- Required parameter: stateMachineArn
-- Required parameter: name
-- Required parameter: status
-- Required parameter: startDate
function M.ExecutionListItem(_status, _startDate, _name, _executionArn, _stateMachineArn, _stopDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionListItem")
	local t = { 
		["status"] = _status,
		["startDate"] = _startDate,
		["name"] = _name,
		["executionArn"] = _executionArn,
		["stateMachineArn"] = _stateMachineArn,
		["stopDate"] = _stopDate,
	}
	asserts.AssertExecutionListItem(t)
	return t
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
--  
-- @param _input [Data] <p>The JSON data input to the activity task.</p>
-- @param _resource [Arn] <p>The Amazon Resource Name (ARN) of the scheduled activity.</p>
-- @param _heartbeatInSeconds [TimeoutInSeconds] <p>The maximum allowed duration between two heartbeats for the activity task.</p>
-- @param _timeoutInSeconds [TimeoutInSeconds] <p>The maximum allowed duration of the activity task.</p>
-- Required parameter: resource
function M.ActivityScheduledEventDetails(_input, _resource, _heartbeatInSeconds, _timeoutInSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityScheduledEventDetails")
	local t = { 
		["input"] = _input,
		["resource"] = _resource,
		["heartbeatInSeconds"] = _heartbeatInSeconds,
		["timeoutInSeconds"] = _timeoutInSeconds,
	}
	asserts.AssertActivityScheduledEventDetails(t)
	return t
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
--  
-- @param _cause [Cause] <p>A more detailed explanation of the cause of the failure.</p>
-- @param _error [Error] <p>The error code of the failure.</p>
function M.LambdaFunctionScheduleFailedEventDetails(_cause, _error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionScheduleFailedEventDetails")
	local t = { 
		["cause"] = _cause,
		["error"] = _error,
	}
	asserts.AssertLambdaFunctionScheduleFailedEventDetails(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.InvalidArn(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidArn")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidArn(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.ActivityDoesNotExist(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityDoesNotExist")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertActivityDoesNotExist(t)
	return t
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
-- @param _status [StateMachineStatus] <p>The current status of the state machine.</p>
-- @param _definition [Definition] <p>The Amazon States Language definition of the state machine.</p>
-- @param _name [Name] <p>The name of the state machine.</p>
-- @param _roleArn [Arn] <p>The Amazon Resource Name (ARN) of the IAM role used for executing this state machine.</p>
-- @param _stateMachineArn [Arn] <p>The Amazon Resource Name (ARN) that identifies the state machine.</p>
-- @param _creationDate [Timestamp] <p>The date the state machine was created.</p>
-- Required parameter: stateMachineArn
-- Required parameter: name
-- Required parameter: definition
-- Required parameter: roleArn
-- Required parameter: creationDate
function M.DescribeStateMachineOutput(_status, _definition, _name, _roleArn, _stateMachineArn, _creationDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeStateMachineOutput")
	local t = { 
		["status"] = _status,
		["definition"] = _definition,
		["name"] = _name,
		["roleArn"] = _roleArn,
		["stateMachineArn"] = _stateMachineArn,
		["creationDate"] = _creationDate,
	}
	asserts.AssertDescribeStateMachineOutput(t)
	return t
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
-- @param _output [Data] <p>The JSON output of the task.</p>
-- @param _taskToken [TaskToken] <p>The token that represents this task. Task tokens are generated by the service when the tasks are assigned to a worker (see GetActivityTask::taskToken).</p>
-- Required parameter: taskToken
-- Required parameter: output
function M.SendTaskSuccessInput(_output, _taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendTaskSuccessInput")
	local t = { 
		["output"] = _output,
		["taskToken"] = _taskToken,
	}
	asserts.AssertSendTaskSuccessInput(t)
	return t
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
-- @param _message [ErrorMessage] 
function M.InvalidDefinition(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidDefinition")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidDefinition(t)
	return t
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
function M.SendTaskSuccessOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendTaskSuccessOutput")
	local t = { 
	}
	asserts.AssertSendTaskSuccessOutput(t)
	return t
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
--  
-- @param _cause [Cause] <p>A more detailed explanation of the cause of the failure.</p>
-- @param _error [Error] <p>The error code of the failure.</p>
function M.ExecutionFailedEventDetails(_cause, _error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionFailedEventDetails")
	local t = { 
		["cause"] = _cause,
		["error"] = _error,
	}
	asserts.AssertExecutionFailedEventDetails(t)
	return t
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
function M.SendTaskHeartbeatOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating SendTaskHeartbeatOutput")
	local t = { 
	}
	asserts.AssertSendTaskHeartbeatOutput(t)
	return t
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
--  
-- @param _cause [Cause] <p>A more detailed explanation of the cause of the failure.</p>
-- @param _error [Error] <p>The error code of the failure.</p>
function M.LambdaFunctionFailedEventDetails(_cause, _error, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionFailedEventDetails")
	local t = { 
		["cause"] = _cause,
		["error"] = _error,
	}
	asserts.AssertLambdaFunctionFailedEventDetails(t)
	return t
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
-- @param _activityArn [Arn] <p>The Amazon Resource Name (ARN) of the activity to delete.</p>
-- Required parameter: activityArn
function M.DeleteActivityInput(_activityArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteActivityInput")
	local t = { 
		["activityArn"] = _activityArn,
	}
	asserts.AssertDeleteActivityInput(t)
	return t
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

--  
-- List of HistoryEvent objects
function M.HistoryEventList(list)
	asserts.AssertHistoryEventList(list)
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
--- Call StartExecution asynchronously, invoking a callback when done
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

--- Call StartExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartExecutionInput
-- @return response
-- @return error_message
function M.StartExecutionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartExecutionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListExecutions asynchronously, invoking a callback when done
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

--- Call ListExecutions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListExecutionsInput
-- @return response
-- @return error_message
function M.ListExecutionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListExecutionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StopExecution asynchronously, invoking a callback when done
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

--- Call StopExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopExecutionInput
-- @return response
-- @return error_message
function M.StopExecutionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopExecutionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteActivity asynchronously, invoking a callback when done
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

--- Call DeleteActivity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteActivityInput
-- @return response
-- @return error_message
function M.DeleteActivitySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteActivityAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SendTaskHeartbeat asynchronously, invoking a callback when done
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

--- Call SendTaskHeartbeat synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendTaskHeartbeatInput
-- @return response
-- @return error_message
function M.SendTaskHeartbeatSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendTaskHeartbeatAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeExecution asynchronously, invoking a callback when done
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

--- Call DescribeExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeExecutionInput
-- @return response
-- @return error_message
function M.DescribeExecutionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeExecutionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListStateMachines asynchronously, invoking a callback when done
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

--- Call ListStateMachines synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListStateMachinesInput
-- @return response
-- @return error_message
function M.ListStateMachinesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListStateMachinesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetExecutionHistory asynchronously, invoking a callback when done
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

--- Call GetExecutionHistory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetExecutionHistoryInput
-- @return response
-- @return error_message
function M.GetExecutionHistorySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetExecutionHistoryAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetActivityTask asynchronously, invoking a callback when done
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

--- Call GetActivityTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetActivityTaskInput
-- @return response
-- @return error_message
function M.GetActivityTaskSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetActivityTaskAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListActivities asynchronously, invoking a callback when done
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

--- Call ListActivities synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListActivitiesInput
-- @return response
-- @return error_message
function M.ListActivitiesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListActivitiesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStateMachine asynchronously, invoking a callback when done
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

--- Call CreateStateMachine synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateStateMachineInput
-- @return response
-- @return error_message
function M.CreateStateMachineSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStateMachineAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStateMachine asynchronously, invoking a callback when done
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

--- Call DescribeStateMachine synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStateMachineInput
-- @return response
-- @return error_message
function M.DescribeStateMachineSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStateMachineAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeActivity asynchronously, invoking a callback when done
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

--- Call DescribeActivity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeActivityInput
-- @return response
-- @return error_message
function M.DescribeActivitySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeActivityAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteStateMachine asynchronously, invoking a callback when done
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

--- Call DeleteStateMachine synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteStateMachineInput
-- @return response
-- @return error_message
function M.DeleteStateMachineSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteStateMachineAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateActivity asynchronously, invoking a callback when done
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

--- Call CreateActivity synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateActivityInput
-- @return response
-- @return error_message
function M.CreateActivitySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateActivityAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SendTaskFailure asynchronously, invoking a callback when done
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

--- Call SendTaskFailure synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendTaskFailureInput
-- @return response
-- @return error_message
function M.SendTaskFailureSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendTaskFailureAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SendTaskSuccess asynchronously, invoking a callback when done
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

--- Call SendTaskSuccess synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SendTaskSuccessInput
-- @return response
-- @return error_message
function M.SendTaskSuccessSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SendTaskSuccessAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
