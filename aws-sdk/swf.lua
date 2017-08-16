--- GENERATED CODE - DO NOT MODIFY
-- Amazon Simple Workflow Service (swf-2012-01-25)

local M = {}

M.metadata = {
	api_version = "2012-01-25",
	json_version = "1.0",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "swf",
	service_abbreviation = "Amazon SWF",
	service_full_name = "Amazon Simple Workflow Service",
	signature_version = "v4",
	target_prefix = "SimpleWorkflowService",
	timestamp_format = "unixTimestamp",
	global_endpoint = "",
	uid = "swf-2012-01-25",
}

local keys = {}
local asserts = {}

keys.SignalExternalWorkflowExecutionInitiatedEventAttributes = { ["control"] = true, ["workflowId"] = true, ["runId"] = true, ["decisionTaskCompletedEventId"] = true, ["input"] = true, ["signalName"] = true, nil }

function asserts.AssertSignalExternalWorkflowExecutionInitiatedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SignalExternalWorkflowExecutionInitiatedEventAttributes to be of type 'table'")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["signalName"], "Expected key signalName to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["control"] then asserts.AssertData(struct["control"]) end
	if struct["workflowId"] then asserts.AssertWorkflowId(struct["workflowId"]) end
	if struct["runId"] then asserts.AssertRunIdOptional(struct["runId"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["input"] then asserts.AssertData(struct["input"]) end
	if struct["signalName"] then asserts.AssertSignalName(struct["signalName"]) end
	for k,_ in pairs(struct) do
		assert(keys.SignalExternalWorkflowExecutionInitiatedEventAttributes[k], "SignalExternalWorkflowExecutionInitiatedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SignalExternalWorkflowExecutionInitiatedEventAttributes
-- <p>Provides details of the <code>SignalExternalWorkflowExecutionInitiated</code> event.</p>
-- @param _control [Data] <p><i>Optional.</i> data attached to the event that can be used by the decider in subsequent decision tasks.</p>
-- @param _workflowId [WorkflowId] <p>The <code>workflowId</code> of the external workflow execution.</p>
-- @param _runId [RunIdOptional] <p>The <code>runId</code> of the external workflow execution to send the signal to.</p>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>SignalExternalWorkflowExecution</code> decision for this signal. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _input [Data] <p>Input provided to the signal (if any).</p>
-- @param _signalName [SignalName] <p>The name of the signal.</p>
-- Required parameter: workflowId
-- Required parameter: signalName
-- Required parameter: decisionTaskCompletedEventId
function M.SignalExternalWorkflowExecutionInitiatedEventAttributes(_control, _workflowId, _runId, _decisionTaskCompletedEventId, _input, _signalName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SignalExternalWorkflowExecutionInitiatedEventAttributes")
	local t = { 
		["control"] = _control,
		["workflowId"] = _workflowId,
		["runId"] = _runId,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
		["input"] = _input,
		["signalName"] = _signalName,
	}
	asserts.AssertSignalExternalWorkflowExecutionInitiatedEventAttributes(t)
	return t
end

keys.DecisionTask = { ["nextPageToken"] = true, ["previousStartedEventId"] = true, ["workflowExecution"] = true, ["startedEventId"] = true, ["workflowType"] = true, ["events"] = true, ["taskToken"] = true, nil }

function asserts.AssertDecisionTask(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecisionTask to be of type 'table'")
	assert(struct["taskToken"], "Expected key taskToken to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	assert(struct["workflowExecution"], "Expected key workflowExecution to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["events"], "Expected key events to exist in table")
	if struct["nextPageToken"] then asserts.AssertPageToken(struct["nextPageToken"]) end
	if struct["previousStartedEventId"] then asserts.AssertEventId(struct["previousStartedEventId"]) end
	if struct["workflowExecution"] then asserts.AssertWorkflowExecution(struct["workflowExecution"]) end
	if struct["startedEventId"] then asserts.AssertEventId(struct["startedEventId"]) end
	if struct["workflowType"] then asserts.AssertWorkflowType(struct["workflowType"]) end
	if struct["events"] then asserts.AssertHistoryEventList(struct["events"]) end
	if struct["taskToken"] then asserts.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DecisionTask[k], "DecisionTask contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecisionTask
-- <p>A structure that represents a decision task. Decision tasks are sent to deciders in order for them to make decisions.</p>
-- @param _nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- @param _previousStartedEventId [EventId] <p>The ID of the DecisionTaskStarted event of the previous decision task of this workflow execution that was processed by the decider. This can be used to determine the events in the history new since the last decision task received by the decider.</p>
-- @param _workflowExecution [WorkflowExecution] <p>The workflow execution for which this decision task was created.</p>
-- @param _startedEventId [EventId] <p>The ID of the <code>DecisionTaskStarted</code> event recorded in the history.</p>
-- @param _workflowType [WorkflowType] <p>The type of the workflow execution for which this decision task was created.</p>
-- @param _events [HistoryEventList] <p>A paginated list of history events of the workflow execution. The decider uses this during the processing of the decision task.</p>
-- @param _taskToken [TaskToken] <p>The opaque string used as a handle on the task. This token is used by workers to communicate progress and response information back to the system about the task.</p>
-- Required parameter: taskToken
-- Required parameter: startedEventId
-- Required parameter: workflowExecution
-- Required parameter: workflowType
-- Required parameter: events
function M.DecisionTask(_nextPageToken, _previousStartedEventId, _workflowExecution, _startedEventId, _workflowType, _events, _taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecisionTask")
	local t = { 
		["nextPageToken"] = _nextPageToken,
		["previousStartedEventId"] = _previousStartedEventId,
		["workflowExecution"] = _workflowExecution,
		["startedEventId"] = _startedEventId,
		["workflowType"] = _workflowType,
		["events"] = _events,
		["taskToken"] = _taskToken,
	}
	asserts.AssertDecisionTask(t)
	return t
end

keys.RequestCancelActivityTaskDecisionAttributes = { ["activityId"] = true, nil }

function asserts.AssertRequestCancelActivityTaskDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestCancelActivityTaskDecisionAttributes to be of type 'table'")
	assert(struct["activityId"], "Expected key activityId to exist in table")
	if struct["activityId"] then asserts.AssertActivityId(struct["activityId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestCancelActivityTaskDecisionAttributes[k], "RequestCancelActivityTaskDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestCancelActivityTaskDecisionAttributes
-- <p>Provides details of the <code>RequestCancelActivityTask</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-- @param _activityId [ActivityId] <p>The <code>activityId</code> of the activity task to be canceled.</p>
-- Required parameter: activityId
function M.RequestCancelActivityTaskDecisionAttributes(_activityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestCancelActivityTaskDecisionAttributes")
	local t = { 
		["activityId"] = _activityId,
	}
	asserts.AssertRequestCancelActivityTaskDecisionAttributes(t)
	return t
end

keys.WorkflowExecutionFilter = { ["workflowId"] = true, nil }

function asserts.AssertWorkflowExecutionFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionFilter to be of type 'table'")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	if struct["workflowId"] then asserts.AssertWorkflowId(struct["workflowId"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowExecutionFilter[k], "WorkflowExecutionFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionFilter
-- <p>Used to filter the workflow executions in visibility APIs by their <code>workflowId</code>.</p>
-- @param _workflowId [WorkflowId] <p>The workflowId to pass of match the criteria of this filter.</p>
-- Required parameter: workflowId
function M.WorkflowExecutionFilter(_workflowId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionFilter")
	local t = { 
		["workflowId"] = _workflowId,
	}
	asserts.AssertWorkflowExecutionFilter(t)
	return t
end

keys.StartChildWorkflowExecutionInitiatedEventAttributes = { ["control"] = true, ["workflowId"] = true, ["taskList"] = true, ["taskStartToCloseTimeout"] = true, ["taskPriority"] = true, ["lambdaRole"] = true, ["childPolicy"] = true, ["decisionTaskCompletedEventId"] = true, ["executionStartToCloseTimeout"] = true, ["input"] = true, ["workflowType"] = true, ["tagList"] = true, nil }

function asserts.AssertStartChildWorkflowExecutionInitiatedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartChildWorkflowExecutionInitiatedEventAttributes to be of type 'table'")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["taskList"], "Expected key taskList to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	assert(struct["childPolicy"], "Expected key childPolicy to exist in table")
	if struct["control"] then asserts.AssertData(struct["control"]) end
	if struct["workflowId"] then asserts.AssertWorkflowId(struct["workflowId"]) end
	if struct["taskList"] then asserts.AssertTaskList(struct["taskList"]) end
	if struct["taskStartToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["taskStartToCloseTimeout"]) end
	if struct["taskPriority"] then asserts.AssertTaskPriority(struct["taskPriority"]) end
	if struct["lambdaRole"] then asserts.AssertArn(struct["lambdaRole"]) end
	if struct["childPolicy"] then asserts.AssertChildPolicy(struct["childPolicy"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["executionStartToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["executionStartToCloseTimeout"]) end
	if struct["input"] then asserts.AssertData(struct["input"]) end
	if struct["workflowType"] then asserts.AssertWorkflowType(struct["workflowType"]) end
	if struct["tagList"] then asserts.AssertTagList(struct["tagList"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartChildWorkflowExecutionInitiatedEventAttributes[k], "StartChildWorkflowExecutionInitiatedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartChildWorkflowExecutionInitiatedEventAttributes
-- <p>Provides details of the <code>StartChildWorkflowExecutionInitiated</code> event.</p>
-- @param _control [Data] <p><i>Optional.</i> Data attached to the event that can be used by the decider in subsequent decision tasks. This data is not sent to the activity.</p>
-- @param _workflowId [WorkflowId] <p>The <code>workflowId</code> of the child workflow execution.</p>
-- @param _taskList [TaskList] <p>The name of the task list used for the decision tasks of the child workflow execution.</p>
-- @param _taskStartToCloseTimeout [DurationInSecondsOptional] <p>The maximum duration allowed for the decision tasks for this workflow execution.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p>
-- @param _taskPriority [TaskPriority] <p><i>Optional.</i> The priority assigned for the decision tasks for this workflow execution. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon Simple Workflow Developer Guide</i>.</p>
-- @param _lambdaRole [Arn] <p>The IAM role attached to this workflow execution to use when invoking AWS Lambda functions.</p>
-- @param _childPolicy [ChildPolicy] <p>The policy to use for the child workflow executions if this execution gets terminated by explicitly calling the <a>TerminateWorkflowExecution</a> action or due to an expired timeout.</p> <p>The supported child policies are:</p> <ul> <li><b>TERMINATE:</b> the child executions will be terminated.</li> <li><b>REQUEST_CANCEL:</b> a request to cancel will be attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</li> <li><b>ABANDON:</b> no action will be taken. The child executions will continue to run.</li> </ul>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>StartChildWorkflowExecution</code> decision to request this child workflow execution. This information can be useful for diagnosing problems by tracing back the cause of events.</p>
-- @param _executionStartToCloseTimeout [DurationInSecondsOptional] <p>The maximum duration for the child workflow execution. If the workflow execution is not closed within this duration, it will be timed out and force terminated.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p>
-- @param _input [Data] <p>The inputs provided to the child workflow execution (if any).</p>
-- @param _workflowType [WorkflowType] <p>The type of the child workflow execution.</p>
-- @param _tagList [TagList] <p>The list of tags to associated with the child workflow execution.</p>
-- Required parameter: workflowId
-- Required parameter: workflowType
-- Required parameter: taskList
-- Required parameter: decisionTaskCompletedEventId
-- Required parameter: childPolicy
function M.StartChildWorkflowExecutionInitiatedEventAttributes(_control, _workflowId, _taskList, _taskStartToCloseTimeout, _taskPriority, _lambdaRole, _childPolicy, _decisionTaskCompletedEventId, _executionStartToCloseTimeout, _input, _workflowType, _tagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartChildWorkflowExecutionInitiatedEventAttributes")
	local t = { 
		["control"] = _control,
		["workflowId"] = _workflowId,
		["taskList"] = _taskList,
		["taskStartToCloseTimeout"] = _taskStartToCloseTimeout,
		["taskPriority"] = _taskPriority,
		["lambdaRole"] = _lambdaRole,
		["childPolicy"] = _childPolicy,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
		["executionStartToCloseTimeout"] = _executionStartToCloseTimeout,
		["input"] = _input,
		["workflowType"] = _workflowType,
		["tagList"] = _tagList,
	}
	asserts.AssertStartChildWorkflowExecutionInitiatedEventAttributes(t)
	return t
end

keys.ExternalWorkflowExecutionSignaledEventAttributes = { ["initiatedEventId"] = true, ["workflowExecution"] = true, nil }

function asserts.AssertExternalWorkflowExecutionSignaledEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExternalWorkflowExecutionSignaledEventAttributes to be of type 'table'")
	assert(struct["workflowExecution"], "Expected key workflowExecution to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	if struct["initiatedEventId"] then asserts.AssertEventId(struct["initiatedEventId"]) end
	if struct["workflowExecution"] then asserts.AssertWorkflowExecution(struct["workflowExecution"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExternalWorkflowExecutionSignaledEventAttributes[k], "ExternalWorkflowExecutionSignaledEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExternalWorkflowExecutionSignaledEventAttributes
-- <p> Provides details of the <code>ExternalWorkflowExecutionSignaled</code> event.</p>
-- @param _initiatedEventId [EventId] <p>The ID of the <code>SignalExternalWorkflowExecutionInitiated</code> event corresponding to the <code>SignalExternalWorkflowExecution</code> decision to request this signal. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _workflowExecution [WorkflowExecution] <p> The external workflow execution that the signal was delivered to.</p>
-- Required parameter: workflowExecution
-- Required parameter: initiatedEventId
function M.ExternalWorkflowExecutionSignaledEventAttributes(_initiatedEventId, _workflowExecution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExternalWorkflowExecutionSignaledEventAttributes")
	local t = { 
		["initiatedEventId"] = _initiatedEventId,
		["workflowExecution"] = _workflowExecution,
	}
	asserts.AssertExternalWorkflowExecutionSignaledEventAttributes(t)
	return t
end

keys.DeprecateActivityTypeInput = { ["domain"] = true, ["activityType"] = true, nil }

function asserts.AssertDeprecateActivityTypeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeprecateActivityTypeInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["activityType"], "Expected key activityType to exist in table")
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["activityType"] then asserts.AssertActivityType(struct["activityType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeprecateActivityTypeInput[k], "DeprecateActivityTypeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeprecateActivityTypeInput
--  
-- @param _domain [DomainName] <p>The name of the domain in which the activity type is registered.</p>
-- @param _activityType [ActivityType] <p>The activity type to deprecate.</p>
-- Required parameter: domain
-- Required parameter: activityType
function M.DeprecateActivityTypeInput(_domain, _activityType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeprecateActivityTypeInput")
	local t = { 
		["domain"] = _domain,
		["activityType"] = _activityType,
	}
	asserts.AssertDeprecateActivityTypeInput(t)
	return t
end

keys.RegisterActivityTypeInput = { ["domain"] = true, ["defaultTaskScheduleToStartTimeout"] = true, ["name"] = true, ["defaultTaskHeartbeatTimeout"] = true, ["defaultTaskPriority"] = true, ["defaultTaskStartToCloseTimeout"] = true, ["defaultTaskScheduleToCloseTimeout"] = true, ["version"] = true, ["defaultTaskList"] = true, ["description"] = true, nil }

function asserts.AssertRegisterActivityTypeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterActivityTypeInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["defaultTaskScheduleToStartTimeout"] then asserts.AssertDurationInSecondsOptional(struct["defaultTaskScheduleToStartTimeout"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["defaultTaskHeartbeatTimeout"] then asserts.AssertDurationInSecondsOptional(struct["defaultTaskHeartbeatTimeout"]) end
	if struct["defaultTaskPriority"] then asserts.AssertTaskPriority(struct["defaultTaskPriority"]) end
	if struct["defaultTaskStartToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["defaultTaskStartToCloseTimeout"]) end
	if struct["defaultTaskScheduleToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["defaultTaskScheduleToCloseTimeout"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["defaultTaskList"] then asserts.AssertTaskList(struct["defaultTaskList"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterActivityTypeInput[k], "RegisterActivityTypeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterActivityTypeInput
--  
-- @param _domain [DomainName] <p>The name of the domain in which this activity is to be registered.</p>
-- @param _defaultTaskScheduleToStartTimeout [DurationInSecondsOptional] <p>If set, specifies the default maximum duration that a task of this activity type can wait before being assigned to a worker. This default can be overridden when scheduling an activity task using the <code>ScheduleActivityTask</code> decision.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p>
-- @param _name [Name] <p>The name of the activity type within the domain.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.</p>
-- @param _defaultTaskHeartbeatTimeout [DurationInSecondsOptional] <p>If set, specifies the default maximum time before which a worker processing a task of this type must report progress by calling <a>RecordActivityTaskHeartbeat</a>. If the timeout is exceeded, the activity task is automatically timed out. This default can be overridden when scheduling an activity task using the <code>ScheduleActivityTask</code> decision. If the activity worker subsequently attempts to record a heartbeat or returns a result, the activity worker receives an <code>UnknownResource</code> fault. In this case, Amazon SWF no longer considers the activity task to be valid; the activity worker should clean up the activity task.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p>
-- @param _defaultTaskPriority [TaskPriority] <p>The default task priority to assign to the activity type. If not assigned, then "0" will be used. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon Simple Workflow Developer Guide</i>.</p>
-- @param _defaultTaskStartToCloseTimeout [DurationInSecondsOptional] <p>If set, specifies the default maximum duration that a worker can take to process tasks of this activity type. This default can be overridden when scheduling an activity task using the <code>ScheduleActivityTask</code> decision.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p>
-- @param _defaultTaskScheduleToCloseTimeout [DurationInSecondsOptional] <p>If set, specifies the default maximum duration for a task of this activity type. This default can be overridden when scheduling an activity task using the <code>ScheduleActivityTask</code> decision.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p>
-- @param _version [Version] <p>The version of the activity type.</p> <note>The activity type consists of the name and version, the combination of which must be unique within the domain.</note> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.</p>
-- @param _defaultTaskList [TaskList] <p>If set, specifies the default task list to use for scheduling tasks of this activity type. This default task list is used if a task list is not provided when a task is scheduled through the <code>ScheduleActivityTask</code> decision.</p>
-- @param _description [Description] <p>A textual description of the activity type.</p>
-- Required parameter: domain
-- Required parameter: name
-- Required parameter: version
function M.RegisterActivityTypeInput(_domain, _defaultTaskScheduleToStartTimeout, _name, _defaultTaskHeartbeatTimeout, _defaultTaskPriority, _defaultTaskStartToCloseTimeout, _defaultTaskScheduleToCloseTimeout, _version, _defaultTaskList, _description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterActivityTypeInput")
	local t = { 
		["domain"] = _domain,
		["defaultTaskScheduleToStartTimeout"] = _defaultTaskScheduleToStartTimeout,
		["name"] = _name,
		["defaultTaskHeartbeatTimeout"] = _defaultTaskHeartbeatTimeout,
		["defaultTaskPriority"] = _defaultTaskPriority,
		["defaultTaskStartToCloseTimeout"] = _defaultTaskStartToCloseTimeout,
		["defaultTaskScheduleToCloseTimeout"] = _defaultTaskScheduleToCloseTimeout,
		["version"] = _version,
		["defaultTaskList"] = _defaultTaskList,
		["description"] = _description,
	}
	asserts.AssertRegisterActivityTypeInput(t)
	return t
end

keys.ContinueAsNewWorkflowExecutionDecisionAttributes = { ["taskList"] = true, ["taskStartToCloseTimeout"] = true, ["workflowTypeVersion"] = true, ["taskPriority"] = true, ["childPolicy"] = true, ["executionStartToCloseTimeout"] = true, ["input"] = true, ["lambdaRole"] = true, ["tagList"] = true, nil }

function asserts.AssertContinueAsNewWorkflowExecutionDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContinueAsNewWorkflowExecutionDecisionAttributes to be of type 'table'")
	if struct["taskList"] then asserts.AssertTaskList(struct["taskList"]) end
	if struct["taskStartToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["taskStartToCloseTimeout"]) end
	if struct["workflowTypeVersion"] then asserts.AssertVersion(struct["workflowTypeVersion"]) end
	if struct["taskPriority"] then asserts.AssertTaskPriority(struct["taskPriority"]) end
	if struct["childPolicy"] then asserts.AssertChildPolicy(struct["childPolicy"]) end
	if struct["executionStartToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["executionStartToCloseTimeout"]) end
	if struct["input"] then asserts.AssertData(struct["input"]) end
	if struct["lambdaRole"] then asserts.AssertArn(struct["lambdaRole"]) end
	if struct["tagList"] then asserts.AssertTagList(struct["tagList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContinueAsNewWorkflowExecutionDecisionAttributes[k], "ContinueAsNewWorkflowExecutionDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContinueAsNewWorkflowExecutionDecisionAttributes
-- <p>Provides details of the <code>ContinueAsNewWorkflowExecution</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys. <ul> <li> <code>tag</code>: <i>Optional.</i>. A tag used to identify the workflow execution</li> <li><code>taskList</code>: String constraint. The key is <code>swf:taskList.name</code>.</li> <li><code>workflowType.version</code>: String constraint. The key is <code>swf:workflowType.version</code>.</li> </ul> </li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-- @param _taskList [TaskList] 
-- @param _taskStartToCloseTimeout [DurationInSecondsOptional] <p>Specifies the maximum duration of decision tasks for the new workflow execution. This parameter overrides the <code>defaultTaskStartToCloseTimout</code> specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p> <note>A task start-to-close timeout for the new workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task start-to-close timeout was specified at registration time then a fault will be returned.</note>
-- @param _workflowTypeVersion [Version] 
-- @param _taskPriority [TaskPriority] <p><i>Optional.</i> The task priority that, if set, specifies the priority for the decision tasks for this workflow execution. This overrides the defaultTaskPriority specified when registering the workflow type. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon Simple Workflow Developer Guide</i>.</p>
-- @param _childPolicy [ChildPolicy] <p>If set, specifies the policy to use for the child workflow executions of the new execution if it is terminated by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout. This policy overrides the default child policy specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p> <p>The supported child policies are:</p> <ul> <li><b>TERMINATE:</b> the child executions will be terminated.</li> <li><b>REQUEST_CANCEL:</b> a request to cancel will be attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</li> <li><b>ABANDON:</b> no action will be taken. The child executions will continue to run.</li> </ul> <note>A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault will be returned.</note>
-- @param _executionStartToCloseTimeout [DurationInSecondsOptional] <p>If set, specifies the total duration for this workflow execution. This overrides the <code>defaultExecutionStartToCloseTimeout</code> specified when registering the workflow type.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p> <note>An execution start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this field. If neither this field is set nor a default execution start-to-close timeout was specified at registration time then a fault will be returned.</note>
-- @param _input [Data] <p>The input provided to the new workflow execution.</p>
-- @param _lambdaRole [Arn] <p>The ARN of an IAM role that authorizes Amazon SWF to invoke AWS Lambda functions.</p> <note>In order for this workflow execution to invoke AWS Lambda functions, an appropriate IAM role must be specified either as a default for the workflow type or through this field.</note>
-- @param _tagList [TagList] <p>The list of tags to associate with the new workflow execution. A maximum of 5 tags can be specified. You can list workflow executions with a specific tag by calling <a>ListOpenWorkflowExecutions</a> or <a>ListClosedWorkflowExecutions</a> and specifying a <a>TagFilter</a>.</p>
function M.ContinueAsNewWorkflowExecutionDecisionAttributes(_taskList, _taskStartToCloseTimeout, _workflowTypeVersion, _taskPriority, _childPolicy, _executionStartToCloseTimeout, _input, _lambdaRole, _tagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ContinueAsNewWorkflowExecutionDecisionAttributes")
	local t = { 
		["taskList"] = _taskList,
		["taskStartToCloseTimeout"] = _taskStartToCloseTimeout,
		["workflowTypeVersion"] = _workflowTypeVersion,
		["taskPriority"] = _taskPriority,
		["childPolicy"] = _childPolicy,
		["executionStartToCloseTimeout"] = _executionStartToCloseTimeout,
		["input"] = _input,
		["lambdaRole"] = _lambdaRole,
		["tagList"] = _tagList,
	}
	asserts.AssertContinueAsNewWorkflowExecutionDecisionAttributes(t)
	return t
end

keys.ActivityTypeConfiguration = { ["defaultTaskScheduleToStartTimeout"] = true, ["defaultTaskHeartbeatTimeout"] = true, ["defaultTaskPriority"] = true, ["defaultTaskStartToCloseTimeout"] = true, ["defaultTaskScheduleToCloseTimeout"] = true, ["defaultTaskList"] = true, nil }

function asserts.AssertActivityTypeConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTypeConfiguration to be of type 'table'")
	if struct["defaultTaskScheduleToStartTimeout"] then asserts.AssertDurationInSecondsOptional(struct["defaultTaskScheduleToStartTimeout"]) end
	if struct["defaultTaskHeartbeatTimeout"] then asserts.AssertDurationInSecondsOptional(struct["defaultTaskHeartbeatTimeout"]) end
	if struct["defaultTaskPriority"] then asserts.AssertTaskPriority(struct["defaultTaskPriority"]) end
	if struct["defaultTaskStartToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["defaultTaskStartToCloseTimeout"]) end
	if struct["defaultTaskScheduleToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["defaultTaskScheduleToCloseTimeout"]) end
	if struct["defaultTaskList"] then asserts.AssertTaskList(struct["defaultTaskList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityTypeConfiguration[k], "ActivityTypeConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTypeConfiguration
-- <p>Configuration settings registered with the activity type.</p>
-- @param _defaultTaskScheduleToStartTimeout [DurationInSecondsOptional] <p><i>Optional.</i> The default maximum duration, specified when registering the activity type, that a task of an activity type can wait before being assigned to a worker. You can override this default when scheduling a task through the <code>ScheduleActivityTask</code> decision.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p>
-- @param _defaultTaskHeartbeatTimeout [DurationInSecondsOptional] <p><i>Optional.</i> The default maximum time, in seconds, before which a worker processing a task must report progress by calling <a>RecordActivityTaskHeartbeat</a>.</p> <p>You can specify this value only when <i>registering</i> an activity type. The registered default value can be overridden when you schedule a task through the <code>ScheduleActivityTask</code> decision. If the activity worker subsequently attempts to record a heartbeat or returns a result, the activity worker receives an <code>UnknownResource</code> fault. In this case, Amazon SWF no longer considers the activity task to be valid; the activity worker should clean up the activity task.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p>
-- @param _defaultTaskPriority [TaskPriority] <p><i>Optional.</i> The default task priority for tasks of this activity type, specified at registration. If not set, then "0" will be used as the default priority. This default can be overridden when scheduling an activity task.</p> <p>Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon Simple Workflow Developer Guide</i>.</p>
-- @param _defaultTaskStartToCloseTimeout [DurationInSecondsOptional] <p><i>Optional.</i> The default maximum duration for tasks of an activity type specified when registering the activity type. You can override this default when scheduling a task through the <code>ScheduleActivityTask</code> decision.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p>
-- @param _defaultTaskScheduleToCloseTimeout [DurationInSecondsOptional] <p><i>Optional.</i> The default maximum duration, specified when registering the activity type, for tasks of this activity type. You can override this default when scheduling a task through the <code>ScheduleActivityTask</code> decision.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p>
-- @param _defaultTaskList [TaskList] <p><i>Optional.</i> The default task list specified for this activity type at registration. This default is used if a task list is not provided when a task is scheduled through the <code>ScheduleActivityTask</code> decision. You can override the default registered task list when scheduling a task through the <code>ScheduleActivityTask</code> decision.</p>
function M.ActivityTypeConfiguration(_defaultTaskScheduleToStartTimeout, _defaultTaskHeartbeatTimeout, _defaultTaskPriority, _defaultTaskStartToCloseTimeout, _defaultTaskScheduleToCloseTimeout, _defaultTaskList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTypeConfiguration")
	local t = { 
		["defaultTaskScheduleToStartTimeout"] = _defaultTaskScheduleToStartTimeout,
		["defaultTaskHeartbeatTimeout"] = _defaultTaskHeartbeatTimeout,
		["defaultTaskPriority"] = _defaultTaskPriority,
		["defaultTaskStartToCloseTimeout"] = _defaultTaskStartToCloseTimeout,
		["defaultTaskScheduleToCloseTimeout"] = _defaultTaskScheduleToCloseTimeout,
		["defaultTaskList"] = _defaultTaskList,
	}
	asserts.AssertActivityTypeConfiguration(t)
	return t
end

keys.StartTimerDecisionAttributes = { ["control"] = true, ["timerId"] = true, ["startToFireTimeout"] = true, nil }

function asserts.AssertStartTimerDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartTimerDecisionAttributes to be of type 'table'")
	assert(struct["timerId"], "Expected key timerId to exist in table")
	assert(struct["startToFireTimeout"], "Expected key startToFireTimeout to exist in table")
	if struct["control"] then asserts.AssertData(struct["control"]) end
	if struct["timerId"] then asserts.AssertTimerId(struct["timerId"]) end
	if struct["startToFireTimeout"] then asserts.AssertDurationInSeconds(struct["startToFireTimeout"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartTimerDecisionAttributes[k], "StartTimerDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartTimerDecisionAttributes
-- <p>Provides details of the <code>StartTimer</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-- @param _control [Data] <p><i>Optional.</i> Data attached to the event that can be used by the decider in subsequent workflow tasks.</p>
-- @param _timerId [TimerId] <p><b>Required.</b> The unique ID of the timer.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.</p>
-- @param _startToFireTimeout [DurationInSeconds] <p><b>Required.</b> The duration to wait before firing the timer.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0.</p>
-- Required parameter: timerId
-- Required parameter: startToFireTimeout
function M.StartTimerDecisionAttributes(_control, _timerId, _startToFireTimeout, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartTimerDecisionAttributes")
	local t = { 
		["control"] = _control,
		["timerId"] = _timerId,
		["startToFireTimeout"] = _startToFireTimeout,
	}
	asserts.AssertStartTimerDecisionAttributes(t)
	return t
end

keys.CountPendingActivityTasksInput = { ["domain"] = true, ["taskList"] = true, nil }

function asserts.AssertCountPendingActivityTasksInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CountPendingActivityTasksInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["taskList"], "Expected key taskList to exist in table")
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["taskList"] then asserts.AssertTaskList(struct["taskList"]) end
	for k,_ in pairs(struct) do
		assert(keys.CountPendingActivityTasksInput[k], "CountPendingActivityTasksInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CountPendingActivityTasksInput
--  
-- @param _domain [DomainName] <p>The name of the domain that contains the task list.</p>
-- @param _taskList [TaskList] <p>The name of the task list.</p>
-- Required parameter: domain
-- Required parameter: taskList
function M.CountPendingActivityTasksInput(_domain, _taskList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CountPendingActivityTasksInput")
	local t = { 
		["domain"] = _domain,
		["taskList"] = _taskList,
	}
	asserts.AssertCountPendingActivityTasksInput(t)
	return t
end

keys.DeprecateDomainInput = { ["name"] = true, nil }

function asserts.AssertDeprecateDomainInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeprecateDomainInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertDomainName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeprecateDomainInput[k], "DeprecateDomainInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeprecateDomainInput
--  
-- @param _name [DomainName] <p>The name of the domain to deprecate.</p>
-- Required parameter: name
function M.DeprecateDomainInput(_name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeprecateDomainInput")
	local t = { 
		["name"] = _name,
	}
	asserts.AssertDeprecateDomainInput(t)
	return t
end

keys.RequestCancelExternalWorkflowExecutionFailedEventAttributes = { ["control"] = true, ["workflowId"] = true, ["initiatedEventId"] = true, ["runId"] = true, ["decisionTaskCompletedEventId"] = true, ["cause"] = true, nil }

function asserts.AssertRequestCancelExternalWorkflowExecutionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestCancelExternalWorkflowExecutionFailedEventAttributes to be of type 'table'")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["control"] then asserts.AssertData(struct["control"]) end
	if struct["workflowId"] then asserts.AssertWorkflowId(struct["workflowId"]) end
	if struct["initiatedEventId"] then asserts.AssertEventId(struct["initiatedEventId"]) end
	if struct["runId"] then asserts.AssertRunIdOptional(struct["runId"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["cause"] then asserts.AssertRequestCancelExternalWorkflowExecutionFailedCause(struct["cause"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestCancelExternalWorkflowExecutionFailedEventAttributes[k], "RequestCancelExternalWorkflowExecutionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestCancelExternalWorkflowExecutionFailedEventAttributes
-- <p>Provides details of the <code>RequestCancelExternalWorkflowExecutionFailed</code> event.</p>
-- @param _control [Data] 
-- @param _workflowId [WorkflowId] <p>The <code>workflowId</code> of the external workflow to which the cancel request was to be delivered.</p>
-- @param _initiatedEventId [EventId] <p>The ID of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event corresponding to the <code>RequestCancelExternalWorkflowExecution</code> decision to cancel this external workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _runId [RunIdOptional] <p>The <code>runId</code> of the external workflow execution.</p>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>RequestCancelExternalWorkflowExecution</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _cause [RequestCancelExternalWorkflowExecutionFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note>If <b>cause</b> is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</note>
-- Required parameter: workflowId
-- Required parameter: cause
-- Required parameter: initiatedEventId
-- Required parameter: decisionTaskCompletedEventId
function M.RequestCancelExternalWorkflowExecutionFailedEventAttributes(_control, _workflowId, _initiatedEventId, _runId, _decisionTaskCompletedEventId, _cause, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestCancelExternalWorkflowExecutionFailedEventAttributes")
	local t = { 
		["control"] = _control,
		["workflowId"] = _workflowId,
		["initiatedEventId"] = _initiatedEventId,
		["runId"] = _runId,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
		["cause"] = _cause,
	}
	asserts.AssertRequestCancelExternalWorkflowExecutionFailedEventAttributes(t)
	return t
end

keys.RegisterWorkflowTypeInput = { ["defaultExecutionStartToCloseTimeout"] = true, ["domain"] = true, ["name"] = true, ["defaultTaskPriority"] = true, ["defaultTaskStartToCloseTimeout"] = true, ["defaultChildPolicy"] = true, ["version"] = true, ["defaultLambdaRole"] = true, ["defaultTaskList"] = true, ["description"] = true, nil }

function asserts.AssertRegisterWorkflowTypeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterWorkflowTypeInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["defaultExecutionStartToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["defaultExecutionStartToCloseTimeout"]) end
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["defaultTaskPriority"] then asserts.AssertTaskPriority(struct["defaultTaskPriority"]) end
	if struct["defaultTaskStartToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["defaultTaskStartToCloseTimeout"]) end
	if struct["defaultChildPolicy"] then asserts.AssertChildPolicy(struct["defaultChildPolicy"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["defaultLambdaRole"] then asserts.AssertArn(struct["defaultLambdaRole"]) end
	if struct["defaultTaskList"] then asserts.AssertTaskList(struct["defaultTaskList"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterWorkflowTypeInput[k], "RegisterWorkflowTypeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterWorkflowTypeInput
--  
-- @param _defaultExecutionStartToCloseTimeout [DurationInSecondsOptional] <p>If set, specifies the default maximum duration for executions of this workflow type. You can override this default when starting an execution through the <a>StartWorkflowExecution</a> action or <code>StartChildWorkflowExecution</code> decision.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. Unlike some of the other timeout parameters in Amazon SWF, you cannot specify a value of "NONE" for <code>defaultExecutionStartToCloseTimeout</code>; there is a one-year max limit on the time that a workflow execution can run. Exceeding this limit will always cause the workflow execution to time out.</p>
-- @param _domain [DomainName] <p>The name of the domain in which to register the workflow type.</p>
-- @param _name [Name] <p>The name of the workflow type.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.</p>
-- @param _defaultTaskPriority [TaskPriority] <p>The default task priority to assign to the workflow type. If not assigned, then "0" will be used. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon Simple Workflow Developer Guide</i>.</p>
-- @param _defaultTaskStartToCloseTimeout [DurationInSecondsOptional] <p>If set, specifies the default maximum duration of decision tasks for this workflow type. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> decision.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p>
-- @param _defaultChildPolicy [ChildPolicy] <p>If set, specifies the default policy to use for the child workflow executions when a workflow execution of this type is terminated, by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> decision.</p> <p>The supported child policies are:</p> <ul> <li><b>TERMINATE:</b> the child executions will be terminated.</li> <li><b>REQUEST_CANCEL:</b> a request to cancel will be attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</li> <li><b>ABANDON:</b> no action will be taken. The child executions will continue to run.</li> </ul>
-- @param _version [Version] <p>The version of the workflow type.</p> <note>The workflow type consists of the name and version, the combination of which must be unique within the domain. To get a list of all currently registered workflow types, use the <a>ListWorkflowTypes</a> action.</note> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.</p>
-- @param _defaultLambdaRole [Arn] <p>The ARN of the default IAM role to use when a workflow execution of this type invokes AWS Lambda functions.</p> <p>This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> and <code>ContinueAsNewWorkflowExecution</code> decision.</p>
-- @param _defaultTaskList [TaskList] <p>If set, specifies the default task list to use for scheduling decision tasks for executions of this workflow type. This default is used only if a task list is not provided when starting the execution through the <a>StartWorkflowExecution</a> action or <code>StartChildWorkflowExecution</code> decision.</p>
-- @param _description [Description] <p>Textual description of the workflow type.</p>
-- Required parameter: domain
-- Required parameter: name
-- Required parameter: version
function M.RegisterWorkflowTypeInput(_defaultExecutionStartToCloseTimeout, _domain, _name, _defaultTaskPriority, _defaultTaskStartToCloseTimeout, _defaultChildPolicy, _version, _defaultLambdaRole, _defaultTaskList, _description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterWorkflowTypeInput")
	local t = { 
		["defaultExecutionStartToCloseTimeout"] = _defaultExecutionStartToCloseTimeout,
		["domain"] = _domain,
		["name"] = _name,
		["defaultTaskPriority"] = _defaultTaskPriority,
		["defaultTaskStartToCloseTimeout"] = _defaultTaskStartToCloseTimeout,
		["defaultChildPolicy"] = _defaultChildPolicy,
		["version"] = _version,
		["defaultLambdaRole"] = _defaultLambdaRole,
		["defaultTaskList"] = _defaultTaskList,
		["description"] = _description,
	}
	asserts.AssertRegisterWorkflowTypeInput(t)
	return t
end

keys.RespondActivityTaskFailedInput = { ["reason"] = true, ["details"] = true, ["taskToken"] = true, nil }

function asserts.AssertRespondActivityTaskFailedInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RespondActivityTaskFailedInput to be of type 'table'")
	assert(struct["taskToken"], "Expected key taskToken to exist in table")
	if struct["reason"] then asserts.AssertFailureReason(struct["reason"]) end
	if struct["details"] then asserts.AssertData(struct["details"]) end
	if struct["taskToken"] then asserts.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.RespondActivityTaskFailedInput[k], "RespondActivityTaskFailedInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RespondActivityTaskFailedInput
--  
-- @param _reason [FailureReason] <p>Description of the error that may assist in diagnostics.</p>
-- @param _details [Data] <p><i>Optional.</i> Detailed information about the failure.</p>
-- @param _taskToken [TaskToken] <p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p> <important> <code>taskToken</code> is generated by the service and should be treated as an opaque value. If the task is passed to another process, its <code>taskToken</code> must also be passed. This enables it to provide its progress and respond with results.</important>
-- Required parameter: taskToken
function M.RespondActivityTaskFailedInput(_reason, _details, _taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RespondActivityTaskFailedInput")
	local t = { 
		["reason"] = _reason,
		["details"] = _details,
		["taskToken"] = _taskToken,
	}
	asserts.AssertRespondActivityTaskFailedInput(t)
	return t
end

keys.ActivityType = { ["version"] = true, ["name"] = true, nil }

function asserts.AssertActivityType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityType to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityType[k], "ActivityType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityType
-- <p>Represents an activity type.</p>
-- @param _version [Version] <p>The version of this activity.</p> <note>The combination of activity type name and version must be unique with in a domain.</note>
-- @param _name [Name] <p>The name of this activity.</p> <note>The combination of activity type name and version must be unique within a domain.</note>
-- Required parameter: name
-- Required parameter: version
function M.ActivityType(_version, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityType")
	local t = { 
		["version"] = _version,
		["name"] = _name,
	}
	asserts.AssertActivityType(t)
	return t
end

keys.TerminateWorkflowExecutionInput = { ["domain"] = true, ["workflowId"] = true, ["reason"] = true, ["childPolicy"] = true, ["details"] = true, ["runId"] = true, nil }

function asserts.AssertTerminateWorkflowExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminateWorkflowExecutionInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["workflowId"] then asserts.AssertWorkflowId(struct["workflowId"]) end
	if struct["reason"] then asserts.AssertTerminateReason(struct["reason"]) end
	if struct["childPolicy"] then asserts.AssertChildPolicy(struct["childPolicy"]) end
	if struct["details"] then asserts.AssertData(struct["details"]) end
	if struct["runId"] then asserts.AssertRunIdOptional(struct["runId"]) end
	for k,_ in pairs(struct) do
		assert(keys.TerminateWorkflowExecutionInput[k], "TerminateWorkflowExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateWorkflowExecutionInput
--  
-- @param _domain [DomainName] <p>The domain of the workflow execution to terminate.</p>
-- @param _workflowId [WorkflowId] <p>The workflowId of the workflow execution to terminate.</p>
-- @param _reason [TerminateReason] <p><i>Optional.</i> A descriptive reason for terminating the workflow execution.</p>
-- @param _childPolicy [ChildPolicy] <p>If set, specifies the policy to use for the child workflow executions of the workflow execution being terminated. This policy overrides the child policy specified for the workflow execution at registration time or when starting the execution.</p> <p>The supported child policies are:</p> <ul> <li><b>TERMINATE:</b> the child executions will be terminated.</li> <li><b>REQUEST_CANCEL:</b> a request to cancel will be attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</li> <li><b>ABANDON:</b> no action will be taken. The child executions will continue to run.</li> </ul> <note>A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault will be returned.</note>
-- @param _details [Data] <p><i>Optional.</i> Details for terminating the workflow execution.</p>
-- @param _runId [RunIdOptional] <p>The runId of the workflow execution to terminate.</p>
-- Required parameter: domain
-- Required parameter: workflowId
function M.TerminateWorkflowExecutionInput(_domain, _workflowId, _reason, _childPolicy, _details, _runId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TerminateWorkflowExecutionInput")
	local t = { 
		["domain"] = _domain,
		["workflowId"] = _workflowId,
		["reason"] = _reason,
		["childPolicy"] = _childPolicy,
		["details"] = _details,
		["runId"] = _runId,
	}
	asserts.AssertTerminateWorkflowExecutionInput(t)
	return t
end

keys.ActivityTask = { ["activityType"] = true, ["workflowExecution"] = true, ["startedEventId"] = true, ["activityId"] = true, ["input"] = true, ["taskToken"] = true, nil }

function asserts.AssertActivityTask(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTask to be of type 'table'")
	assert(struct["taskToken"], "Expected key taskToken to exist in table")
	assert(struct["activityId"], "Expected key activityId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	assert(struct["workflowExecution"], "Expected key workflowExecution to exist in table")
	assert(struct["activityType"], "Expected key activityType to exist in table")
	if struct["activityType"] then asserts.AssertActivityType(struct["activityType"]) end
	if struct["workflowExecution"] then asserts.AssertWorkflowExecution(struct["workflowExecution"]) end
	if struct["startedEventId"] then asserts.AssertEventId(struct["startedEventId"]) end
	if struct["activityId"] then asserts.AssertActivityId(struct["activityId"]) end
	if struct["input"] then asserts.AssertData(struct["input"]) end
	if struct["taskToken"] then asserts.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityTask[k], "ActivityTask contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTask
-- <p>Unit of work sent to an activity worker.</p>
-- @param _activityType [ActivityType] <p>The type of this activity task.</p>
-- @param _workflowExecution [WorkflowExecution] <p>The workflow execution that started this activity task.</p>
-- @param _startedEventId [EventId] <p>The ID of the <code>ActivityTaskStarted</code> event recorded in the history.</p>
-- @param _activityId [ActivityId] <p>The unique ID of the task.</p>
-- @param _input [Data] <p>The inputs provided when the activity task was scheduled. The form of the input is user defined and should be meaningful to the activity implementation.</p>
-- @param _taskToken [TaskToken] <p>The opaque string used as a handle on the task. This token is used by workers to communicate progress and response information back to the system about the task.</p>
-- Required parameter: taskToken
-- Required parameter: activityId
-- Required parameter: startedEventId
-- Required parameter: workflowExecution
-- Required parameter: activityType
function M.ActivityTask(_activityType, _workflowExecution, _startedEventId, _activityId, _input, _taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTask")
	local t = { 
		["activityType"] = _activityType,
		["workflowExecution"] = _workflowExecution,
		["startedEventId"] = _startedEventId,
		["activityId"] = _activityId,
		["input"] = _input,
		["taskToken"] = _taskToken,
	}
	asserts.AssertActivityTask(t)
	return t
end

keys.ChildWorkflowExecutionStartedEventAttributes = { ["workflowType"] = true, ["initiatedEventId"] = true, ["workflowExecution"] = true, nil }

function asserts.AssertChildWorkflowExecutionStartedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChildWorkflowExecutionStartedEventAttributes to be of type 'table'")
	assert(struct["workflowExecution"], "Expected key workflowExecution to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	if struct["workflowType"] then asserts.AssertWorkflowType(struct["workflowType"]) end
	if struct["initiatedEventId"] then asserts.AssertEventId(struct["initiatedEventId"]) end
	if struct["workflowExecution"] then asserts.AssertWorkflowExecution(struct["workflowExecution"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChildWorkflowExecutionStartedEventAttributes[k], "ChildWorkflowExecutionStartedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChildWorkflowExecutionStartedEventAttributes
-- <p>Provides details of the <code>ChildWorkflowExecutionStarted</code> event.</p>
-- @param _workflowType [WorkflowType] <p>The type of the child workflow execution. </p>
-- @param _initiatedEventId [EventId] <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> decision to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _workflowExecution [WorkflowExecution] <p>The child workflow execution that was started.</p>
-- Required parameter: workflowExecution
-- Required parameter: workflowType
-- Required parameter: initiatedEventId
function M.ChildWorkflowExecutionStartedEventAttributes(_workflowType, _initiatedEventId, _workflowExecution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChildWorkflowExecutionStartedEventAttributes")
	local t = { 
		["workflowType"] = _workflowType,
		["initiatedEventId"] = _initiatedEventId,
		["workflowExecution"] = _workflowExecution,
	}
	asserts.AssertChildWorkflowExecutionStartedEventAttributes(t)
	return t
end

keys.Decision = { ["scheduleActivityTaskDecisionAttributes"] = true, ["cancelWorkflowExecutionDecisionAttributes"] = true, ["cancelTimerDecisionAttributes"] = true, ["scheduleLambdaFunctionDecisionAttributes"] = true, ["signalExternalWorkflowExecutionDecisionAttributes"] = true, ["failWorkflowExecutionDecisionAttributes"] = true, ["recordMarkerDecisionAttributes"] = true, ["requestCancelActivityTaskDecisionAttributes"] = true, ["completeWorkflowExecutionDecisionAttributes"] = true, ["startTimerDecisionAttributes"] = true, ["requestCancelExternalWorkflowExecutionDecisionAttributes"] = true, ["continueAsNewWorkflowExecutionDecisionAttributes"] = true, ["decisionType"] = true, ["startChildWorkflowExecutionDecisionAttributes"] = true, nil }

function asserts.AssertDecision(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Decision to be of type 'table'")
	assert(struct["decisionType"], "Expected key decisionType to exist in table")
	if struct["scheduleActivityTaskDecisionAttributes"] then asserts.AssertScheduleActivityTaskDecisionAttributes(struct["scheduleActivityTaskDecisionAttributes"]) end
	if struct["cancelWorkflowExecutionDecisionAttributes"] then asserts.AssertCancelWorkflowExecutionDecisionAttributes(struct["cancelWorkflowExecutionDecisionAttributes"]) end
	if struct["cancelTimerDecisionAttributes"] then asserts.AssertCancelTimerDecisionAttributes(struct["cancelTimerDecisionAttributes"]) end
	if struct["scheduleLambdaFunctionDecisionAttributes"] then asserts.AssertScheduleLambdaFunctionDecisionAttributes(struct["scheduleLambdaFunctionDecisionAttributes"]) end
	if struct["signalExternalWorkflowExecutionDecisionAttributes"] then asserts.AssertSignalExternalWorkflowExecutionDecisionAttributes(struct["signalExternalWorkflowExecutionDecisionAttributes"]) end
	if struct["failWorkflowExecutionDecisionAttributes"] then asserts.AssertFailWorkflowExecutionDecisionAttributes(struct["failWorkflowExecutionDecisionAttributes"]) end
	if struct["recordMarkerDecisionAttributes"] then asserts.AssertRecordMarkerDecisionAttributes(struct["recordMarkerDecisionAttributes"]) end
	if struct["requestCancelActivityTaskDecisionAttributes"] then asserts.AssertRequestCancelActivityTaskDecisionAttributes(struct["requestCancelActivityTaskDecisionAttributes"]) end
	if struct["completeWorkflowExecutionDecisionAttributes"] then asserts.AssertCompleteWorkflowExecutionDecisionAttributes(struct["completeWorkflowExecutionDecisionAttributes"]) end
	if struct["startTimerDecisionAttributes"] then asserts.AssertStartTimerDecisionAttributes(struct["startTimerDecisionAttributes"]) end
	if struct["requestCancelExternalWorkflowExecutionDecisionAttributes"] then asserts.AssertRequestCancelExternalWorkflowExecutionDecisionAttributes(struct["requestCancelExternalWorkflowExecutionDecisionAttributes"]) end
	if struct["continueAsNewWorkflowExecutionDecisionAttributes"] then asserts.AssertContinueAsNewWorkflowExecutionDecisionAttributes(struct["continueAsNewWorkflowExecutionDecisionAttributes"]) end
	if struct["decisionType"] then asserts.AssertDecisionType(struct["decisionType"]) end
	if struct["startChildWorkflowExecutionDecisionAttributes"] then asserts.AssertStartChildWorkflowExecutionDecisionAttributes(struct["startChildWorkflowExecutionDecisionAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.Decision[k], "Decision contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Decision
-- <p>Specifies a decision made by the decider. A decision can be one of these types:</p> <ul> <li> <b>CancelTimer</b>: cancels a previously started timer and records a <code>TimerCanceled</code> event in the history.</li> <li> <b>CancelWorkflowExecution</b>: closes the workflow execution and records a <code>WorkflowExecutionCanceled</code> event in the history.</li> <li> <b>CompleteWorkflowExecution</b>: closes the workflow execution and records a <code>WorkflowExecutionCompleted</code> event in the history .</li> <li> <b>ContinueAsNewWorkflowExecution</b>: closes the workflow execution and starts a new workflow execution of the same type using the same workflow ID and a unique run ID. A <code>WorkflowExecutionContinuedAsNew</code> event is recorded in the history.</li> <li> <b>FailWorkflowExecution</b>: closes the workflow execution and records a <code>WorkflowExecutionFailed</code> event in the history.</li> <li> <b>RecordMarker</b>: records a <code>MarkerRecorded</code> event in the history. Markers can be used for adding custom information in the history for instance to let deciders know that they do not need to look at the history beyond the marker event.</li> <li> <b>RequestCancelActivityTask</b>: attempts to cancel a previously scheduled activity task. If the activity task was scheduled but has not been assigned to a worker, then it will be canceled. If the activity task was already assigned to a worker, then the worker will be informed that cancellation has been requested in the response to <a>RecordActivityTaskHeartbeat</a>.</li> <li> <b>RequestCancelExternalWorkflowExecution</b>: requests that a request be made to cancel the specified external workflow execution and records a <code>RequestCancelExternalWorkflowExecutionInitiated</code> event in the history.</li> <li> <b>ScheduleActivityTask</b>: schedules an activity task.</li> <li> <b>ScheduleLambdaFunction</b>: schedules a AWS Lambda function.</li> <li> <b>SignalExternalWorkflowExecution</b>: requests a signal to be delivered to the specified external workflow execution and records a <code>SignalExternalWorkflowExecutionInitiated</code> event in the history.</li> <li> <b>StartChildWorkflowExecution</b>: requests that a child workflow execution be started and records a <code>StartChildWorkflowExecutionInitiated</code> event in the history. The child workflow execution is a separate workflow execution with its own history.</li> <li> <b>StartTimer</b>: starts a timer for this workflow execution and records a <code>TimerStarted</code> event in the history. This timer will fire after the specified delay and record a <code>TimerFired</code> event.</li> </ul> <p><b>Access Control</b></p> <p>If you grant permission to use <code>RespondDecisionTaskCompleted</code>, you can use IAM policies to express permissions for the list of decisions returned by this action as if they were members of the API. Treating decisions as a pseudo API maintains a uniform conceptual model and helps keep policies readable. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p> <p><b>Decision Failure</b></p> <p>Decisions can fail for several reasons</p> <ul> <li>The ordering of decisions should follow a logical flow. Some decisions might not make sense in the current context of the workflow execution and will therefore fail.</li> <li>A limit on your account was reached.</li> <li>The decision lacks sufficient permissions.</li> </ul> <p>One of the following events might be added to the history to indicate an error. The event attribute's <b>cause</b> parameter indicates the cause. If <b>cause</b> is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p> <ul> <li> <b>ScheduleActivityTaskFailed</b>: a ScheduleActivityTask decision failed. This could happen if the activity type specified in the decision is not registered, is in a deprecated state, or the decision is not properly configured.</li> <li> <b>ScheduleLambdaFunctionFailed</b>: a ScheduleLambdaFunctionFailed decision failed. This could happen if the AWS Lambda function specified in the decision does not exist, or the AWS Lambda service's limits are exceeded.</li> <li> <b>RequestCancelActivityTaskFailed</b>: a RequestCancelActivityTask decision failed. This could happen if there is no open activity task with the specified activityId.</li> <li> <b>StartTimerFailed</b>: a StartTimer decision failed. This could happen if there is another open timer with the same timerId.</li> <li> <b>CancelTimerFailed</b>: a CancelTimer decision failed. This could happen if there is no open timer with the specified timerId.</li> <li> <b>StartChildWorkflowExecutionFailed</b>: a StartChildWorkflowExecution decision failed. This could happen if the workflow type specified is not registered, is deprecated, or the decision is not properly configured.</li> <li> <b>SignalExternalWorkflowExecutionFailed</b>: a SignalExternalWorkflowExecution decision failed. This could happen if the <code>workflowID</code> specified in the decision was incorrect.</li> <li> <b>RequestCancelExternalWorkflowExecutionFailed</b>: a RequestCancelExternalWorkflowExecution decision failed. This could happen if the <code>workflowID</code> specified in the decision was incorrect.</li> <li> <b>CancelWorkflowExecutionFailed</b>: a CancelWorkflowExecution decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.</li> <li> <b>CompleteWorkflowExecutionFailed</b>: a CompleteWorkflowExecution decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.</li> <li> <b>ContinueAsNewWorkflowExecutionFailed</b>: a ContinueAsNewWorkflowExecution decision failed. This could happen if there is an unhandled decision task pending in the workflow execution or the ContinueAsNewWorkflowExecution decision was not configured correctly.</li> <li> <b>FailWorkflowExecutionFailed</b>: a FailWorkflowExecution decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.</li> </ul> <p>The preceding error events might occur due to an error in the decider logic, which might put the workflow execution in an unstable state The cause field in the event structure for the error event indicates the cause of the error.</p> <note>A workflow execution may be closed by the decider by returning one of the following decisions when completing a decision task: <code>CompleteWorkflowExecution</code>, <code>FailWorkflowExecution</code>, <code>CancelWorkflowExecution</code> and <code>ContinueAsNewWorkflowExecution</code>. An UnhandledDecision fault will be returned if a workflow closing decision is specified and a signal or activity event had been added to the history while the decision task was being performed by the decider. Unlike the above situations which are logic issues, this fault is always possible because of race conditions in a distributed system. The right action here is to call <a>RespondDecisionTaskCompleted</a> without any decisions. This would result in another decision task with these new events included in the history. The decider should handle the new events and may decide to close the workflow execution.</note> <p><b>How to code a decision</b></p> <p>You code a decision by first setting the decision type field to one of the above decision values, and then set the corresponding attributes field shown below:</p> <ul> <li> <a>ScheduleActivityTaskDecisionAttributes</a> </li> <li> <a>ScheduleLambdaFunctionDecisionAttributes</a> </li> <li> <a>RequestCancelActivityTaskDecisionAttributes</a> </li> <li> <a>CompleteWorkflowExecutionDecisionAttributes</a> </li> <li> <a>FailWorkflowExecutionDecisionAttributes</a> </li> <li> <a>CancelWorkflowExecutionDecisionAttributes</a> </li> <li> <a>ContinueAsNewWorkflowExecutionDecisionAttributes</a> </li> <li> <a>RecordMarkerDecisionAttributes</a> </li> <li> <a>StartTimerDecisionAttributes</a> </li> <li> <a>CancelTimerDecisionAttributes</a> </li> <li> <a>SignalExternalWorkflowExecutionDecisionAttributes</a> </li> <li> <a>RequestCancelExternalWorkflowExecutionDecisionAttributes</a> </li> <li> <a>StartChildWorkflowExecutionDecisionAttributes</a> </li> </ul>
-- @param _scheduleActivityTaskDecisionAttributes [ScheduleActivityTaskDecisionAttributes] <p>Provides details of the <code>ScheduleActivityTask</code> decision. It is not set for other decision types.</p>
-- @param _cancelWorkflowExecutionDecisionAttributes [CancelWorkflowExecutionDecisionAttributes] <p>Provides details of the <code>CancelWorkflowExecution</code> decision. It is not set for other decision types.</p>
-- @param _cancelTimerDecisionAttributes [CancelTimerDecisionAttributes] <p>Provides details of the <code>CancelTimer</code> decision. It is not set for other decision types.</p>
-- @param _scheduleLambdaFunctionDecisionAttributes [ScheduleLambdaFunctionDecisionAttributes] 
-- @param _signalExternalWorkflowExecutionDecisionAttributes [SignalExternalWorkflowExecutionDecisionAttributes] <p>Provides details of the <code>SignalExternalWorkflowExecution</code> decision. It is not set for other decision types.</p>
-- @param _failWorkflowExecutionDecisionAttributes [FailWorkflowExecutionDecisionAttributes] <p>Provides details of the <code>FailWorkflowExecution</code> decision. It is not set for other decision types.</p>
-- @param _recordMarkerDecisionAttributes [RecordMarkerDecisionAttributes] <p>Provides details of the <code>RecordMarker</code> decision. It is not set for other decision types.</p>
-- @param _requestCancelActivityTaskDecisionAttributes [RequestCancelActivityTaskDecisionAttributes] <p>Provides details of the <code>RequestCancelActivityTask</code> decision. It is not set for other decision types.</p>
-- @param _completeWorkflowExecutionDecisionAttributes [CompleteWorkflowExecutionDecisionAttributes] <p>Provides details of the <code>CompleteWorkflowExecution</code> decision. It is not set for other decision types.</p>
-- @param _startTimerDecisionAttributes [StartTimerDecisionAttributes] <p>Provides details of the <code>StartTimer</code> decision. It is not set for other decision types.</p>
-- @param _requestCancelExternalWorkflowExecutionDecisionAttributes [RequestCancelExternalWorkflowExecutionDecisionAttributes] <p>Provides details of the <code>RequestCancelExternalWorkflowExecution</code> decision. It is not set for other decision types.</p>
-- @param _continueAsNewWorkflowExecutionDecisionAttributes [ContinueAsNewWorkflowExecutionDecisionAttributes] <p>Provides details of the <code>ContinueAsNewWorkflowExecution</code> decision. It is not set for other decision types.</p>
-- @param _decisionType [DecisionType] <p>Specifies the type of the decision.</p>
-- @param _startChildWorkflowExecutionDecisionAttributes [StartChildWorkflowExecutionDecisionAttributes] <p>Provides details of the <code>StartChildWorkflowExecution</code> decision. It is not set for other decision types.</p>
-- Required parameter: decisionType
function M.Decision(_scheduleActivityTaskDecisionAttributes, _cancelWorkflowExecutionDecisionAttributes, _cancelTimerDecisionAttributes, _scheduleLambdaFunctionDecisionAttributes, _signalExternalWorkflowExecutionDecisionAttributes, _failWorkflowExecutionDecisionAttributes, _recordMarkerDecisionAttributes, _requestCancelActivityTaskDecisionAttributes, _completeWorkflowExecutionDecisionAttributes, _startTimerDecisionAttributes, _requestCancelExternalWorkflowExecutionDecisionAttributes, _continueAsNewWorkflowExecutionDecisionAttributes, _decisionType, _startChildWorkflowExecutionDecisionAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Decision")
	local t = { 
		["scheduleActivityTaskDecisionAttributes"] = _scheduleActivityTaskDecisionAttributes,
		["cancelWorkflowExecutionDecisionAttributes"] = _cancelWorkflowExecutionDecisionAttributes,
		["cancelTimerDecisionAttributes"] = _cancelTimerDecisionAttributes,
		["scheduleLambdaFunctionDecisionAttributes"] = _scheduleLambdaFunctionDecisionAttributes,
		["signalExternalWorkflowExecutionDecisionAttributes"] = _signalExternalWorkflowExecutionDecisionAttributes,
		["failWorkflowExecutionDecisionAttributes"] = _failWorkflowExecutionDecisionAttributes,
		["recordMarkerDecisionAttributes"] = _recordMarkerDecisionAttributes,
		["requestCancelActivityTaskDecisionAttributes"] = _requestCancelActivityTaskDecisionAttributes,
		["completeWorkflowExecutionDecisionAttributes"] = _completeWorkflowExecutionDecisionAttributes,
		["startTimerDecisionAttributes"] = _startTimerDecisionAttributes,
		["requestCancelExternalWorkflowExecutionDecisionAttributes"] = _requestCancelExternalWorkflowExecutionDecisionAttributes,
		["continueAsNewWorkflowExecutionDecisionAttributes"] = _continueAsNewWorkflowExecutionDecisionAttributes,
		["decisionType"] = _decisionType,
		["startChildWorkflowExecutionDecisionAttributes"] = _startChildWorkflowExecutionDecisionAttributes,
	}
	asserts.AssertDecision(t)
	return t
end

keys.ActivityTypeDetail = { ["configuration"] = true, ["typeInfo"] = true, nil }

function asserts.AssertActivityTypeDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTypeDetail to be of type 'table'")
	assert(struct["typeInfo"], "Expected key typeInfo to exist in table")
	assert(struct["configuration"], "Expected key configuration to exist in table")
	if struct["configuration"] then asserts.AssertActivityTypeConfiguration(struct["configuration"]) end
	if struct["typeInfo"] then asserts.AssertActivityTypeInfo(struct["typeInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityTypeDetail[k], "ActivityTypeDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTypeDetail
-- <p>Detailed information about an activity type.</p>
-- @param _configuration [ActivityTypeConfiguration] <p>The configuration settings registered with the activity type.</p>
-- @param _typeInfo [ActivityTypeInfo] <p>General information about the activity type.</p> <p>The status of activity type (returned in the ActivityTypeInfo structure) can be one of the following.</p> <ul> <li> <b>REGISTERED</b>: The type is registered and available. Workers supporting this type should be running. </li> <li> <b>DEPRECATED</b>: The type was deprecated using <a>DeprecateActivityType</a>, but is still in use. You should keep workers supporting this type running. You cannot create new tasks of this type. </li> </ul>
-- Required parameter: typeInfo
-- Required parameter: configuration
function M.ActivityTypeDetail(_configuration, _typeInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTypeDetail")
	local t = { 
		["configuration"] = _configuration,
		["typeInfo"] = _typeInfo,
	}
	asserts.AssertActivityTypeDetail(t)
	return t
end

keys.ChildWorkflowExecutionTimedOutEventAttributes = { ["startedEventId"] = true, ["timeoutType"] = true, ["workflowType"] = true, ["initiatedEventId"] = true, ["workflowExecution"] = true, nil }

function asserts.AssertChildWorkflowExecutionTimedOutEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChildWorkflowExecutionTimedOutEventAttributes to be of type 'table'")
	assert(struct["workflowExecution"], "Expected key workflowExecution to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["timeoutType"], "Expected key timeoutType to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then asserts.AssertEventId(struct["startedEventId"]) end
	if struct["timeoutType"] then asserts.AssertWorkflowExecutionTimeoutType(struct["timeoutType"]) end
	if struct["workflowType"] then asserts.AssertWorkflowType(struct["workflowType"]) end
	if struct["initiatedEventId"] then asserts.AssertEventId(struct["initiatedEventId"]) end
	if struct["workflowExecution"] then asserts.AssertWorkflowExecution(struct["workflowExecution"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChildWorkflowExecutionTimedOutEventAttributes[k], "ChildWorkflowExecutionTimedOutEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChildWorkflowExecutionTimedOutEventAttributes
-- <p>Provides details of the <code>ChildWorkflowExecutionTimedOut</code> event.</p>
-- @param _startedEventId [EventId] <p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _timeoutType [WorkflowExecutionTimeoutType] <p>The type of the timeout that caused the child workflow execution to time out.</p>
-- @param _workflowType [WorkflowType] <p>The type of the child workflow execution.</p>
-- @param _initiatedEventId [EventId] <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> decision to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _workflowExecution [WorkflowExecution] <p>The child workflow execution that timed out.</p>
-- Required parameter: workflowExecution
-- Required parameter: workflowType
-- Required parameter: timeoutType
-- Required parameter: initiatedEventId
-- Required parameter: startedEventId
function M.ChildWorkflowExecutionTimedOutEventAttributes(_startedEventId, _timeoutType, _workflowType, _initiatedEventId, _workflowExecution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChildWorkflowExecutionTimedOutEventAttributes")
	local t = { 
		["startedEventId"] = _startedEventId,
		["timeoutType"] = _timeoutType,
		["workflowType"] = _workflowType,
		["initiatedEventId"] = _initiatedEventId,
		["workflowExecution"] = _workflowExecution,
	}
	asserts.AssertChildWorkflowExecutionTimedOutEventAttributes(t)
	return t
end

keys.PollForActivityTaskInput = { ["domain"] = true, ["taskList"] = true, ["identity"] = true, nil }

function asserts.AssertPollForActivityTaskInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PollForActivityTaskInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["taskList"], "Expected key taskList to exist in table")
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["taskList"] then asserts.AssertTaskList(struct["taskList"]) end
	if struct["identity"] then asserts.AssertIdentity(struct["identity"]) end
	for k,_ in pairs(struct) do
		assert(keys.PollForActivityTaskInput[k], "PollForActivityTaskInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PollForActivityTaskInput
--  
-- @param _domain [DomainName] <p>The name of the domain that contains the task lists being polled.</p>
-- @param _taskList [TaskList] <p>Specifies the task list to poll for activity tasks.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.</p>
-- @param _identity [Identity] <p>Identity of the worker making the request, recorded in the <code>ActivityTaskStarted</code> event in the workflow history. This enables diagnostic tracing when problems arise. The form of this identity is user defined.</p>
-- Required parameter: domain
-- Required parameter: taskList
function M.PollForActivityTaskInput(_domain, _taskList, _identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PollForActivityTaskInput")
	local t = { 
		["domain"] = _domain,
		["taskList"] = _taskList,
		["identity"] = _identity,
	}
	asserts.AssertPollForActivityTaskInput(t)
	return t
end

keys.FailWorkflowExecutionDecisionAttributes = { ["reason"] = true, ["details"] = true, nil }

function asserts.AssertFailWorkflowExecutionDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailWorkflowExecutionDecisionAttributes to be of type 'table'")
	if struct["reason"] then asserts.AssertFailureReason(struct["reason"]) end
	if struct["details"] then asserts.AssertData(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(keys.FailWorkflowExecutionDecisionAttributes[k], "FailWorkflowExecutionDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailWorkflowExecutionDecisionAttributes
-- <p>Provides details of the <code>FailWorkflowExecution</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-- @param _reason [FailureReason] <p>A descriptive reason for the failure that may help in diagnostics.</p>
-- @param _details [Data] <p><i>Optional.</i> Details of the failure.</p>
function M.FailWorkflowExecutionDecisionAttributes(_reason, _details, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FailWorkflowExecutionDecisionAttributes")
	local t = { 
		["reason"] = _reason,
		["details"] = _details,
	}
	asserts.AssertFailWorkflowExecutionDecisionAttributes(t)
	return t
end

keys.DomainInfo = { ["status"] = true, ["name"] = true, ["description"] = true, nil }

function asserts.AssertDomainInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainInfo to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	if struct["status"] then asserts.AssertRegistrationStatus(struct["status"]) end
	if struct["name"] then asserts.AssertDomainName(struct["name"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainInfo[k], "DomainInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainInfo
-- <p>Contains general information about a domain.</p>
-- @param _status [RegistrationStatus] <p>The status of the domain:</p> <ul> <li> <b>REGISTERED</b>: The domain is properly registered and available. You can use this domain for registering types and creating new workflow executions. </li> <li> <b>DEPRECATED</b>: The domain was deprecated using <a>DeprecateDomain</a>, but is still in use. You should not create new workflow executions in this domain. </li> </ul>
-- @param _name [DomainName] <p>The name of the domain. This name is unique within the account.</p>
-- @param _description [Description] <p>The description of the domain provided through <a>RegisterDomain</a>.</p>
-- Required parameter: name
-- Required parameter: status
function M.DomainInfo(_status, _name, _description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainInfo")
	local t = { 
		["status"] = _status,
		["name"] = _name,
		["description"] = _description,
	}
	asserts.AssertDomainInfo(t)
	return t
end

keys.ActivityTaskFailedEventAttributes = { ["startedEventId"] = true, ["reason"] = true, ["scheduledEventId"] = true, ["details"] = true, nil }

function asserts.AssertActivityTaskFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTaskFailedEventAttributes to be of type 'table'")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then asserts.AssertEventId(struct["startedEventId"]) end
	if struct["reason"] then asserts.AssertFailureReason(struct["reason"]) end
	if struct["scheduledEventId"] then asserts.AssertEventId(struct["scheduledEventId"]) end
	if struct["details"] then asserts.AssertData(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityTaskFailedEventAttributes[k], "ActivityTaskFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTaskFailedEventAttributes
-- <p>Provides details of the <code>ActivityTaskFailed</code> event.</p>
-- @param _startedEventId [EventId] <p>The ID of the <code>ActivityTaskStarted</code> event recorded when this activity task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _reason [FailureReason] <p>The reason provided for the failure (if any).</p>
-- @param _scheduledEventId [EventId] <p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _details [Data] <p>The details of the failure (if any).</p>
-- Required parameter: scheduledEventId
-- Required parameter: startedEventId
function M.ActivityTaskFailedEventAttributes(_startedEventId, _reason, _scheduledEventId, _details, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTaskFailedEventAttributes")
	local t = { 
		["startedEventId"] = _startedEventId,
		["reason"] = _reason,
		["scheduledEventId"] = _scheduledEventId,
		["details"] = _details,
	}
	asserts.AssertActivityTaskFailedEventAttributes(t)
	return t
end

keys.ExternalWorkflowExecutionCancelRequestedEventAttributes = { ["initiatedEventId"] = true, ["workflowExecution"] = true, nil }

function asserts.AssertExternalWorkflowExecutionCancelRequestedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExternalWorkflowExecutionCancelRequestedEventAttributes to be of type 'table'")
	assert(struct["workflowExecution"], "Expected key workflowExecution to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	if struct["initiatedEventId"] then asserts.AssertEventId(struct["initiatedEventId"]) end
	if struct["workflowExecution"] then asserts.AssertWorkflowExecution(struct["workflowExecution"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExternalWorkflowExecutionCancelRequestedEventAttributes[k], "ExternalWorkflowExecutionCancelRequestedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExternalWorkflowExecutionCancelRequestedEventAttributes
-- <p>Provides details of the <code>ExternalWorkflowExecutionCancelRequested</code> event.</p>
-- @param _initiatedEventId [EventId] <p>The ID of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event corresponding to the <code>RequestCancelExternalWorkflowExecution</code> decision to cancel this external workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _workflowExecution [WorkflowExecution] <p>The external workflow execution to which the cancellation request was delivered.</p>
-- Required parameter: workflowExecution
-- Required parameter: initiatedEventId
function M.ExternalWorkflowExecutionCancelRequestedEventAttributes(_initiatedEventId, _workflowExecution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExternalWorkflowExecutionCancelRequestedEventAttributes")
	local t = { 
		["initiatedEventId"] = _initiatedEventId,
		["workflowExecution"] = _workflowExecution,
	}
	asserts.AssertExternalWorkflowExecutionCancelRequestedEventAttributes(t)
	return t
end

keys.ChildWorkflowExecutionFailedEventAttributes = { ["workflowExecution"] = true, ["initiatedEventId"] = true, ["startedEventId"] = true, ["reason"] = true, ["details"] = true, ["workflowType"] = true, nil }

function asserts.AssertChildWorkflowExecutionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChildWorkflowExecutionFailedEventAttributes to be of type 'table'")
	assert(struct["workflowExecution"], "Expected key workflowExecution to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["workflowExecution"] then asserts.AssertWorkflowExecution(struct["workflowExecution"]) end
	if struct["initiatedEventId"] then asserts.AssertEventId(struct["initiatedEventId"]) end
	if struct["startedEventId"] then asserts.AssertEventId(struct["startedEventId"]) end
	if struct["reason"] then asserts.AssertFailureReason(struct["reason"]) end
	if struct["details"] then asserts.AssertData(struct["details"]) end
	if struct["workflowType"] then asserts.AssertWorkflowType(struct["workflowType"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChildWorkflowExecutionFailedEventAttributes[k], "ChildWorkflowExecutionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChildWorkflowExecutionFailedEventAttributes
-- <p>Provides details of the <code>ChildWorkflowExecutionFailed</code> event.</p>
-- @param _workflowExecution [WorkflowExecution] <p>The child workflow execution that failed.</p>
-- @param _initiatedEventId [EventId] <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> decision to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _startedEventId [EventId] <p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _reason [FailureReason] <p>The reason for the failure (if provided).</p>
-- @param _details [Data] <p>The details of the failure (if provided).</p>
-- @param _workflowType [WorkflowType] <p>The type of the child workflow execution.</p>
-- Required parameter: workflowExecution
-- Required parameter: workflowType
-- Required parameter: initiatedEventId
-- Required parameter: startedEventId
function M.ChildWorkflowExecutionFailedEventAttributes(_workflowExecution, _initiatedEventId, _startedEventId, _reason, _details, _workflowType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChildWorkflowExecutionFailedEventAttributes")
	local t = { 
		["workflowExecution"] = _workflowExecution,
		["initiatedEventId"] = _initiatedEventId,
		["startedEventId"] = _startedEventId,
		["reason"] = _reason,
		["details"] = _details,
		["workflowType"] = _workflowType,
	}
	asserts.AssertChildWorkflowExecutionFailedEventAttributes(t)
	return t
end

keys.ActivityTaskCancelRequestedEventAttributes = { ["activityId"] = true, ["decisionTaskCompletedEventId"] = true, nil }

function asserts.AssertActivityTaskCancelRequestedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTaskCancelRequestedEventAttributes to be of type 'table'")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	assert(struct["activityId"], "Expected key activityId to exist in table")
	if struct["activityId"] then asserts.AssertActivityId(struct["activityId"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityTaskCancelRequestedEventAttributes[k], "ActivityTaskCancelRequestedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTaskCancelRequestedEventAttributes
-- <p>Provides details of the <code>ActivityTaskCancelRequested</code> event.</p>
-- @param _activityId [ActivityId] <p>The unique ID of the task.</p>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>RequestCancelActivityTask</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required parameter: decisionTaskCompletedEventId
-- Required parameter: activityId
function M.ActivityTaskCancelRequestedEventAttributes(_activityId, _decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTaskCancelRequestedEventAttributes")
	local t = { 
		["activityId"] = _activityId,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
	}
	asserts.AssertActivityTaskCancelRequestedEventAttributes(t)
	return t
end

keys.DomainDeprecatedFault = { ["message"] = true, nil }

function asserts.AssertDomainDeprecatedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainDeprecatedFault to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainDeprecatedFault[k], "DomainDeprecatedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainDeprecatedFault
-- <p>Returned when the specified domain has been deprecated.</p>
-- @param _message [ErrorMessage] <p>A description that may help with diagnosing the cause of the fault.</p>
function M.DomainDeprecatedFault(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainDeprecatedFault")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertDomainDeprecatedFault(t)
	return t
end

keys.CompleteWorkflowExecutionFailedEventAttributes = { ["cause"] = true, ["decisionTaskCompletedEventId"] = true, nil }

function asserts.AssertCompleteWorkflowExecutionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompleteWorkflowExecutionFailedEventAttributes to be of type 'table'")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["cause"] then asserts.AssertCompleteWorkflowExecutionFailedCause(struct["cause"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CompleteWorkflowExecutionFailedEventAttributes[k], "CompleteWorkflowExecutionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompleteWorkflowExecutionFailedEventAttributes
-- <p>Provides details of the <code>CompleteWorkflowExecutionFailed</code> event.</p>
-- @param _cause [CompleteWorkflowExecutionFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note>If <b>cause</b> is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</note>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CompleteWorkflowExecution</code> decision to complete this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required parameter: cause
-- Required parameter: decisionTaskCompletedEventId
function M.CompleteWorkflowExecutionFailedEventAttributes(_cause, _decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CompleteWorkflowExecutionFailedEventAttributes")
	local t = { 
		["cause"] = _cause,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
	}
	asserts.AssertCompleteWorkflowExecutionFailedEventAttributes(t)
	return t
end

keys.ChildWorkflowExecutionCanceledEventAttributes = { ["startedEventId"] = true, ["workflowType"] = true, ["initiatedEventId"] = true, ["details"] = true, ["workflowExecution"] = true, nil }

function asserts.AssertChildWorkflowExecutionCanceledEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChildWorkflowExecutionCanceledEventAttributes to be of type 'table'")
	assert(struct["workflowExecution"], "Expected key workflowExecution to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then asserts.AssertEventId(struct["startedEventId"]) end
	if struct["workflowType"] then asserts.AssertWorkflowType(struct["workflowType"]) end
	if struct["initiatedEventId"] then asserts.AssertEventId(struct["initiatedEventId"]) end
	if struct["details"] then asserts.AssertData(struct["details"]) end
	if struct["workflowExecution"] then asserts.AssertWorkflowExecution(struct["workflowExecution"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChildWorkflowExecutionCanceledEventAttributes[k], "ChildWorkflowExecutionCanceledEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChildWorkflowExecutionCanceledEventAttributes
-- <p>Provide details of the <code>ChildWorkflowExecutionCanceled</code> event.</p>
-- @param _startedEventId [EventId] <p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _workflowType [WorkflowType] <p>The type of the child workflow execution.</p>
-- @param _initiatedEventId [EventId] <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> decision to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _details [Data] <p>Details of the cancellation (if provided).</p>
-- @param _workflowExecution [WorkflowExecution] <p>The child workflow execution that was canceled.</p>
-- Required parameter: workflowExecution
-- Required parameter: workflowType
-- Required parameter: initiatedEventId
-- Required parameter: startedEventId
function M.ChildWorkflowExecutionCanceledEventAttributes(_startedEventId, _workflowType, _initiatedEventId, _details, _workflowExecution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChildWorkflowExecutionCanceledEventAttributes")
	local t = { 
		["startedEventId"] = _startedEventId,
		["workflowType"] = _workflowType,
		["initiatedEventId"] = _initiatedEventId,
		["details"] = _details,
		["workflowExecution"] = _workflowExecution,
	}
	asserts.AssertChildWorkflowExecutionCanceledEventAttributes(t)
	return t
end

keys.LambdaFunctionTimedOutEventAttributes = { ["startedEventId"] = true, ["timeoutType"] = true, ["scheduledEventId"] = true, nil }

function asserts.AssertLambdaFunctionTimedOutEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionTimedOutEventAttributes to be of type 'table'")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then asserts.AssertEventId(struct["startedEventId"]) end
	if struct["timeoutType"] then asserts.AssertLambdaFunctionTimeoutType(struct["timeoutType"]) end
	if struct["scheduledEventId"] then asserts.AssertEventId(struct["scheduledEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaFunctionTimedOutEventAttributes[k], "LambdaFunctionTimedOutEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionTimedOutEventAttributes
-- <p>Provides details for the <code>LambdaFunctionTimedOut</code> event.</p>
-- @param _startedEventId [EventId] <p>The ID of the <code>LambdaFunctionStarted</code> event recorded in the history.</p>
-- @param _timeoutType [LambdaFunctionTimeoutType] <p>The type of the timeout that caused this event.</p>
-- @param _scheduledEventId [EventId] <p>The ID of the <code>LambdaFunctionScheduled</code> event that was recorded when this AWS Lambda function was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required parameter: scheduledEventId
-- Required parameter: startedEventId
function M.LambdaFunctionTimedOutEventAttributes(_startedEventId, _timeoutType, _scheduledEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionTimedOutEventAttributes")
	local t = { 
		["startedEventId"] = _startedEventId,
		["timeoutType"] = _timeoutType,
		["scheduledEventId"] = _scheduledEventId,
	}
	asserts.AssertLambdaFunctionTimedOutEventAttributes(t)
	return t
end

keys.WorkflowExecutionTerminatedEventAttributes = { ["reason"] = true, ["childPolicy"] = true, ["cause"] = true, ["details"] = true, nil }

function asserts.AssertWorkflowExecutionTerminatedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionTerminatedEventAttributes to be of type 'table'")
	assert(struct["childPolicy"], "Expected key childPolicy to exist in table")
	if struct["reason"] then asserts.AssertTerminateReason(struct["reason"]) end
	if struct["childPolicy"] then asserts.AssertChildPolicy(struct["childPolicy"]) end
	if struct["cause"] then asserts.AssertWorkflowExecutionTerminatedCause(struct["cause"]) end
	if struct["details"] then asserts.AssertData(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowExecutionTerminatedEventAttributes[k], "WorkflowExecutionTerminatedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionTerminatedEventAttributes
-- <p>Provides details of the <code>WorkflowExecutionTerminated</code> event.</p>
-- @param _reason [TerminateReason] <p>The reason provided for the termination (if any).</p>
-- @param _childPolicy [ChildPolicy] <p>The policy used for the child workflow executions of this workflow execution.</p> <p>The supported child policies are:</p> <ul> <li><b>TERMINATE:</b> the child executions will be terminated.</li> <li><b>REQUEST_CANCEL:</b> a request to cancel will be attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</li> <li><b>ABANDON:</b> no action will be taken. The child executions will continue to run.</li> </ul>
-- @param _cause [WorkflowExecutionTerminatedCause] <p>If set, indicates that the workflow execution was automatically terminated, and specifies the cause. This happens if the parent workflow execution times out or is terminated and the child policy is set to terminate child executions.</p>
-- @param _details [Data] <p>The details provided for the termination (if any).</p>
-- Required parameter: childPolicy
function M.WorkflowExecutionTerminatedEventAttributes(_reason, _childPolicy, _cause, _details, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionTerminatedEventAttributes")
	local t = { 
		["reason"] = _reason,
		["childPolicy"] = _childPolicy,
		["cause"] = _cause,
		["details"] = _details,
	}
	asserts.AssertWorkflowExecutionTerminatedEventAttributes(t)
	return t
end

keys.WorkflowTypeConfiguration = { ["defaultExecutionStartToCloseTimeout"] = true, ["defaultChildPolicy"] = true, ["defaultTaskStartToCloseTimeout"] = true, ["defaultTaskPriority"] = true, ["defaultLambdaRole"] = true, ["defaultTaskList"] = true, nil }

function asserts.AssertWorkflowTypeConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowTypeConfiguration to be of type 'table'")
	if struct["defaultExecutionStartToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["defaultExecutionStartToCloseTimeout"]) end
	if struct["defaultChildPolicy"] then asserts.AssertChildPolicy(struct["defaultChildPolicy"]) end
	if struct["defaultTaskStartToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["defaultTaskStartToCloseTimeout"]) end
	if struct["defaultTaskPriority"] then asserts.AssertTaskPriority(struct["defaultTaskPriority"]) end
	if struct["defaultLambdaRole"] then asserts.AssertArn(struct["defaultLambdaRole"]) end
	if struct["defaultTaskList"] then asserts.AssertTaskList(struct["defaultTaskList"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowTypeConfiguration[k], "WorkflowTypeConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowTypeConfiguration
-- <p>The configuration settings of a workflow type.</p>
-- @param _defaultExecutionStartToCloseTimeout [DurationInSecondsOptional] <p><i>Optional.</i> The default maximum duration, specified when registering the workflow type, for executions of this workflow type. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> decision.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p>
-- @param _defaultChildPolicy [ChildPolicy] <p><i>Optional.</i> The default policy to use for the child workflow executions when a workflow execution of this type is terminated, by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> decision.</p> <p>The supported child policies are:</p> <ul> <li><b>TERMINATE:</b> the child executions will be terminated.</li> <li><b>REQUEST_CANCEL:</b> a request to cancel will be attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</li> <li><b>ABANDON:</b> no action will be taken. The child executions will continue to run.</li> </ul>
-- @param _defaultTaskStartToCloseTimeout [DurationInSecondsOptional] <p><i>Optional.</i> The default maximum duration, specified when registering the workflow type, that a decision task for executions of this workflow type might take before returning completion or failure. If the task does not close in the specified time then the task is automatically timed out and rescheduled. If the decider eventually reports a completion or failure, it is ignored. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> decision.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p>
-- @param _defaultTaskPriority [TaskPriority] <p><i>Optional.</i> The default task priority, specified when registering the workflow type, for all decision tasks of this workflow type. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> decision.</p> <p>Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon Simple Workflow Developer Guide</i>.</p>
-- @param _defaultLambdaRole [Arn] <p>The default IAM role to use when a workflow execution invokes a AWS Lambda function.</p>
-- @param _defaultTaskList [TaskList] <p><i>Optional.</i> The default task list, specified when registering the workflow type, for decisions tasks scheduled for workflow executions of this type. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> decision.</p>
function M.WorkflowTypeConfiguration(_defaultExecutionStartToCloseTimeout, _defaultChildPolicy, _defaultTaskStartToCloseTimeout, _defaultTaskPriority, _defaultLambdaRole, _defaultTaskList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowTypeConfiguration")
	local t = { 
		["defaultExecutionStartToCloseTimeout"] = _defaultExecutionStartToCloseTimeout,
		["defaultChildPolicy"] = _defaultChildPolicy,
		["defaultTaskStartToCloseTimeout"] = _defaultTaskStartToCloseTimeout,
		["defaultTaskPriority"] = _defaultTaskPriority,
		["defaultLambdaRole"] = _defaultLambdaRole,
		["defaultTaskList"] = _defaultTaskList,
	}
	asserts.AssertWorkflowTypeConfiguration(t)
	return t
end

keys.RespondActivityTaskCanceledInput = { ["details"] = true, ["taskToken"] = true, nil }

function asserts.AssertRespondActivityTaskCanceledInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RespondActivityTaskCanceledInput to be of type 'table'")
	assert(struct["taskToken"], "Expected key taskToken to exist in table")
	if struct["details"] then asserts.AssertData(struct["details"]) end
	if struct["taskToken"] then asserts.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.RespondActivityTaskCanceledInput[k], "RespondActivityTaskCanceledInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RespondActivityTaskCanceledInput
--  
-- @param _details [Data] <p><i>Optional.</i> Information about the cancellation.</p>
-- @param _taskToken [TaskToken] <p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p> <important><code>taskToken</code> is generated by the service and should be treated as an opaque value. If the task is passed to another process, its <code>taskToken</code> must also be passed. This enables it to provide its progress and respond with results.</important>
-- Required parameter: taskToken
function M.RespondActivityTaskCanceledInput(_details, _taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RespondActivityTaskCanceledInput")
	local t = { 
		["details"] = _details,
		["taskToken"] = _taskToken,
	}
	asserts.AssertRespondActivityTaskCanceledInput(t)
	return t
end

keys.WorkflowExecutionTimedOutEventAttributes = { ["timeoutType"] = true, ["childPolicy"] = true, nil }

function asserts.AssertWorkflowExecutionTimedOutEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionTimedOutEventAttributes to be of type 'table'")
	assert(struct["timeoutType"], "Expected key timeoutType to exist in table")
	assert(struct["childPolicy"], "Expected key childPolicy to exist in table")
	if struct["timeoutType"] then asserts.AssertWorkflowExecutionTimeoutType(struct["timeoutType"]) end
	if struct["childPolicy"] then asserts.AssertChildPolicy(struct["childPolicy"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowExecutionTimedOutEventAttributes[k], "WorkflowExecutionTimedOutEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionTimedOutEventAttributes
-- <p>Provides details of the <code>WorkflowExecutionTimedOut</code> event.</p>
-- @param _timeoutType [WorkflowExecutionTimeoutType] <p>The type of timeout that caused this event.</p>
-- @param _childPolicy [ChildPolicy] <p>The policy used for the child workflow executions of this workflow execution.</p> <p>The supported child policies are:</p> <ul> <li><b>TERMINATE:</b> the child executions will be terminated.</li> <li><b>REQUEST_CANCEL:</b> a request to cancel will be attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</li> <li><b>ABANDON:</b> no action will be taken. The child executions will continue to run.</li> </ul>
-- Required parameter: timeoutType
-- Required parameter: childPolicy
function M.WorkflowExecutionTimedOutEventAttributes(_timeoutType, _childPolicy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionTimedOutEventAttributes")
	local t = { 
		["timeoutType"] = _timeoutType,
		["childPolicy"] = _childPolicy,
	}
	asserts.AssertWorkflowExecutionTimedOutEventAttributes(t)
	return t
end

keys.CancelWorkflowExecutionFailedEventAttributes = { ["cause"] = true, ["decisionTaskCompletedEventId"] = true, nil }

function asserts.AssertCancelWorkflowExecutionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelWorkflowExecutionFailedEventAttributes to be of type 'table'")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["cause"] then asserts.AssertCancelWorkflowExecutionFailedCause(struct["cause"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelWorkflowExecutionFailedEventAttributes[k], "CancelWorkflowExecutionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelWorkflowExecutionFailedEventAttributes
-- <p>Provides details of the <code>CancelWorkflowExecutionFailed</code> event.</p>
-- @param _cause [CancelWorkflowExecutionFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note>If <b>cause</b> is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</note>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CancelWorkflowExecution</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required parameter: cause
-- Required parameter: decisionTaskCompletedEventId
function M.CancelWorkflowExecutionFailedEventAttributes(_cause, _decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelWorkflowExecutionFailedEventAttributes")
	local t = { 
		["cause"] = _cause,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
	}
	asserts.AssertCancelWorkflowExecutionFailedEventAttributes(t)
	return t
end

keys.WorkflowExecutionConfiguration = { ["taskList"] = true, ["taskStartToCloseTimeout"] = true, ["lambdaRole"] = true, ["childPolicy"] = true, ["executionStartToCloseTimeout"] = true, ["taskPriority"] = true, nil }

function asserts.AssertWorkflowExecutionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionConfiguration to be of type 'table'")
	assert(struct["taskStartToCloseTimeout"], "Expected key taskStartToCloseTimeout to exist in table")
	assert(struct["executionStartToCloseTimeout"], "Expected key executionStartToCloseTimeout to exist in table")
	assert(struct["taskList"], "Expected key taskList to exist in table")
	assert(struct["childPolicy"], "Expected key childPolicy to exist in table")
	if struct["taskList"] then asserts.AssertTaskList(struct["taskList"]) end
	if struct["taskStartToCloseTimeout"] then asserts.AssertDurationInSeconds(struct["taskStartToCloseTimeout"]) end
	if struct["lambdaRole"] then asserts.AssertArn(struct["lambdaRole"]) end
	if struct["childPolicy"] then asserts.AssertChildPolicy(struct["childPolicy"]) end
	if struct["executionStartToCloseTimeout"] then asserts.AssertDurationInSeconds(struct["executionStartToCloseTimeout"]) end
	if struct["taskPriority"] then asserts.AssertTaskPriority(struct["taskPriority"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowExecutionConfiguration[k], "WorkflowExecutionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionConfiguration
-- <p>The configuration settings for a workflow execution including timeout values, tasklist etc. These configuration settings are determined from the defaults specified when registering the workflow type and those specified when starting the workflow execution.</p>
-- @param _taskList [TaskList] <p>The task list used for the decision tasks generated for this workflow execution.</p>
-- @param _taskStartToCloseTimeout [DurationInSeconds] <p>The maximum duration allowed for decision tasks for this workflow execution.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p>
-- @param _lambdaRole [Arn] <p>The IAM role used by this workflow execution when invoking AWS Lambda functions.</p>
-- @param _childPolicy [ChildPolicy] <p>The policy to use for the child workflow executions if this workflow execution is terminated, by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout.</p> <p>The supported child policies are:</p> <ul> <li><b>TERMINATE:</b> the child executions will be terminated.</li> <li><b>REQUEST_CANCEL:</b> a request to cancel will be attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</li> <li><b>ABANDON:</b> no action will be taken. The child executions will continue to run.</li> </ul>
-- @param _executionStartToCloseTimeout [DurationInSeconds] <p>The total duration for this workflow execution.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p>
-- @param _taskPriority [TaskPriority] <p>The priority assigned to decision tasks for this workflow execution. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon Simple Workflow Developer Guide</i>.</p>
-- Required parameter: taskStartToCloseTimeout
-- Required parameter: executionStartToCloseTimeout
-- Required parameter: taskList
-- Required parameter: childPolicy
function M.WorkflowExecutionConfiguration(_taskList, _taskStartToCloseTimeout, _lambdaRole, _childPolicy, _executionStartToCloseTimeout, _taskPriority, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionConfiguration")
	local t = { 
		["taskList"] = _taskList,
		["taskStartToCloseTimeout"] = _taskStartToCloseTimeout,
		["lambdaRole"] = _lambdaRole,
		["childPolicy"] = _childPolicy,
		["executionStartToCloseTimeout"] = _executionStartToCloseTimeout,
		["taskPriority"] = _taskPriority,
	}
	asserts.AssertWorkflowExecutionConfiguration(t)
	return t
end

keys.LambdaFunctionCompletedEventAttributes = { ["startedEventId"] = true, ["scheduledEventId"] = true, ["result"] = true, nil }

function asserts.AssertLambdaFunctionCompletedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionCompletedEventAttributes to be of type 'table'")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then asserts.AssertEventId(struct["startedEventId"]) end
	if struct["scheduledEventId"] then asserts.AssertEventId(struct["scheduledEventId"]) end
	if struct["result"] then asserts.AssertData(struct["result"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaFunctionCompletedEventAttributes[k], "LambdaFunctionCompletedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionCompletedEventAttributes
-- <p>Provides details for the <code>LambdaFunctionCompleted</code> event.</p>
-- @param _startedEventId [EventId] <p>The ID of the <code>LambdaFunctionStarted</code> event recorded in the history.</p>
-- @param _scheduledEventId [EventId] <p>The ID of the <code>LambdaFunctionScheduled</code> event that was recorded when this AWS Lambda function was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _result [Data] <p>The result of the function execution (if any).</p>
-- Required parameter: scheduledEventId
-- Required parameter: startedEventId
function M.LambdaFunctionCompletedEventAttributes(_startedEventId, _scheduledEventId, _result, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionCompletedEventAttributes")
	local t = { 
		["startedEventId"] = _startedEventId,
		["scheduledEventId"] = _scheduledEventId,
		["result"] = _result,
	}
	asserts.AssertLambdaFunctionCompletedEventAttributes(t)
	return t
end

keys.DescribeDomainInput = { ["name"] = true, nil }

function asserts.AssertDescribeDomainInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDomainInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertDomainName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDomainInput[k], "DescribeDomainInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDomainInput
--  
-- @param _name [DomainName] <p>The name of the domain to describe.</p>
-- Required parameter: name
function M.DescribeDomainInput(_name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDomainInput")
	local t = { 
		["name"] = _name,
	}
	asserts.AssertDescribeDomainInput(t)
	return t
end

keys.DeprecateWorkflowTypeInput = { ["domain"] = true, ["workflowType"] = true, nil }

function asserts.AssertDeprecateWorkflowTypeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeprecateWorkflowTypeInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["workflowType"] then asserts.AssertWorkflowType(struct["workflowType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeprecateWorkflowTypeInput[k], "DeprecateWorkflowTypeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeprecateWorkflowTypeInput
--  
-- @param _domain [DomainName] <p>The name of the domain in which the workflow type is registered.</p>
-- @param _workflowType [WorkflowType] <p>The workflow type to deprecate.</p>
-- Required parameter: domain
-- Required parameter: workflowType
function M.DeprecateWorkflowTypeInput(_domain, _workflowType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeprecateWorkflowTypeInput")
	local t = { 
		["domain"] = _domain,
		["workflowType"] = _workflowType,
	}
	asserts.AssertDeprecateWorkflowTypeInput(t)
	return t
end

keys.ScheduleActivityTaskDecisionAttributes = { ["control"] = true, ["taskList"] = true, ["scheduleToCloseTimeout"] = true, ["activityType"] = true, ["taskPriority"] = true, ["heartbeatTimeout"] = true, ["activityId"] = true, ["scheduleToStartTimeout"] = true, ["startToCloseTimeout"] = true, ["input"] = true, nil }

function asserts.AssertScheduleActivityTaskDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleActivityTaskDecisionAttributes to be of type 'table'")
	assert(struct["activityType"], "Expected key activityType to exist in table")
	assert(struct["activityId"], "Expected key activityId to exist in table")
	if struct["control"] then asserts.AssertData(struct["control"]) end
	if struct["taskList"] then asserts.AssertTaskList(struct["taskList"]) end
	if struct["scheduleToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["scheduleToCloseTimeout"]) end
	if struct["activityType"] then asserts.AssertActivityType(struct["activityType"]) end
	if struct["taskPriority"] then asserts.AssertTaskPriority(struct["taskPriority"]) end
	if struct["heartbeatTimeout"] then asserts.AssertDurationInSecondsOptional(struct["heartbeatTimeout"]) end
	if struct["activityId"] then asserts.AssertActivityId(struct["activityId"]) end
	if struct["scheduleToStartTimeout"] then asserts.AssertDurationInSecondsOptional(struct["scheduleToStartTimeout"]) end
	if struct["startToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["startToCloseTimeout"]) end
	if struct["input"] then asserts.AssertData(struct["input"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScheduleActivityTaskDecisionAttributes[k], "ScheduleActivityTaskDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleActivityTaskDecisionAttributes
-- <p>Provides details of the <code>ScheduleActivityTask</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys. <ul> <li><code>activityType.name</code>: String constraint. The key is <code>swf:activityType.name</code>.</li> <li><code>activityType.version</code>: String constraint. The key is <code>swf:activityType.version</code>.</li> <li><code>taskList</code>: String constraint. The key is <code>swf:taskList.name</code>.</li> </ul> </li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-- @param _control [Data] <p><i>Optional.</i> Data attached to the event that can be used by the decider in subsequent workflow tasks. This data is not sent to the activity.</p>
-- @param _taskList [TaskList] <p>If set, specifies the name of the task list in which to schedule the activity task. If not specified, the <code>defaultTaskList</code> registered with the activity type will be used.</p> <note>A task list for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default task list was specified at registration time then a fault will be returned.</note> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.</p>
-- @param _scheduleToCloseTimeout [DurationInSecondsOptional] <p>The maximum duration for this activity task.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p> <note>A schedule-to-close timeout for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default schedule-to-close timeout was specified at registration time then a fault will be returned.</note>
-- @param _activityType [ActivityType] <p><b>Required.</b> The type of the activity task to schedule.</p>
-- @param _taskPriority [TaskPriority] <p><i>Optional.</i> If set, specifies the priority with which the activity task is to be assigned to a worker. This overrides the defaultTaskPriority specified when registering the activity type using <a>RegisterActivityType</a>. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon Simple Workflow Developer Guide</i>.</p>
-- @param _heartbeatTimeout [DurationInSecondsOptional] <p>If set, specifies the maximum time before which a worker processing a task of this type must report progress by calling <a>RecordActivityTaskHeartbeat</a>. If the timeout is exceeded, the activity task is automatically timed out. If the worker subsequently attempts to record a heartbeat or returns a result, it will be ignored. This overrides the default heartbeat timeout specified when registering the activity type using <a>RegisterActivityType</a>.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p>
-- @param _activityId [ActivityId] <p><b>Required.</b> The <code>activityId</code> of the activity task.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.</p>
-- @param _scheduleToStartTimeout [DurationInSecondsOptional] <p><i>Optional.</i> If set, specifies the maximum duration the activity task can wait to be assigned to a worker. This overrides the default schedule-to-start timeout specified when registering the activity type using <a>RegisterActivityType</a>.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p> <note>A schedule-to-start timeout for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default schedule-to-start timeout was specified at registration time then a fault will be returned.</note>
-- @param _startToCloseTimeout [DurationInSecondsOptional] <p>If set, specifies the maximum duration a worker may take to process this activity task. This overrides the default start-to-close timeout specified when registering the activity type using <a>RegisterActivityType</a>.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p> <note>A start-to-close timeout for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default start-to-close timeout was specified at registration time then a fault will be returned.</note>
-- @param _input [Data] <p>The input provided to the activity task.</p>
-- Required parameter: activityType
-- Required parameter: activityId
function M.ScheduleActivityTaskDecisionAttributes(_control, _taskList, _scheduleToCloseTimeout, _activityType, _taskPriority, _heartbeatTimeout, _activityId, _scheduleToStartTimeout, _startToCloseTimeout, _input, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScheduleActivityTaskDecisionAttributes")
	local t = { 
		["control"] = _control,
		["taskList"] = _taskList,
		["scheduleToCloseTimeout"] = _scheduleToCloseTimeout,
		["activityType"] = _activityType,
		["taskPriority"] = _taskPriority,
		["heartbeatTimeout"] = _heartbeatTimeout,
		["activityId"] = _activityId,
		["scheduleToStartTimeout"] = _scheduleToStartTimeout,
		["startToCloseTimeout"] = _startToCloseTimeout,
		["input"] = _input,
	}
	asserts.AssertScheduleActivityTaskDecisionAttributes(t)
	return t
end

keys.WorkflowExecutionCanceledEventAttributes = { ["details"] = true, ["decisionTaskCompletedEventId"] = true, nil }

function asserts.AssertWorkflowExecutionCanceledEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionCanceledEventAttributes to be of type 'table'")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["details"] then asserts.AssertData(struct["details"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowExecutionCanceledEventAttributes[k], "WorkflowExecutionCanceledEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionCanceledEventAttributes
-- <p>Provides details of the <code>WorkflowExecutionCanceled</code> event.</p>
-- @param _details [Data] <p>Details for the cancellation (if any).</p>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CancelWorkflowExecution</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required parameter: decisionTaskCompletedEventId
function M.WorkflowExecutionCanceledEventAttributes(_details, _decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionCanceledEventAttributes")
	local t = { 
		["details"] = _details,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
	}
	asserts.AssertWorkflowExecutionCanceledEventAttributes(t)
	return t
end

keys.StartWorkflowExecutionInput = { ["domain"] = true, ["taskList"] = true, ["taskStartToCloseTimeout"] = true, ["workflowId"] = true, ["taskPriority"] = true, ["lambdaRole"] = true, ["childPolicy"] = true, ["executionStartToCloseTimeout"] = true, ["input"] = true, ["workflowType"] = true, ["tagList"] = true, nil }

function asserts.AssertStartWorkflowExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartWorkflowExecutionInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["taskList"] then asserts.AssertTaskList(struct["taskList"]) end
	if struct["taskStartToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["taskStartToCloseTimeout"]) end
	if struct["workflowId"] then asserts.AssertWorkflowId(struct["workflowId"]) end
	if struct["taskPriority"] then asserts.AssertTaskPriority(struct["taskPriority"]) end
	if struct["lambdaRole"] then asserts.AssertArn(struct["lambdaRole"]) end
	if struct["childPolicy"] then asserts.AssertChildPolicy(struct["childPolicy"]) end
	if struct["executionStartToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["executionStartToCloseTimeout"]) end
	if struct["input"] then asserts.AssertData(struct["input"]) end
	if struct["workflowType"] then asserts.AssertWorkflowType(struct["workflowType"]) end
	if struct["tagList"] then asserts.AssertTagList(struct["tagList"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartWorkflowExecutionInput[k], "StartWorkflowExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartWorkflowExecutionInput
--  
-- @param _domain [DomainName] <p>The name of the domain in which the workflow execution is created.</p>
-- @param _taskList [TaskList] <p>The task list to use for the decision tasks generated for this workflow execution. This overrides the <code>defaultTaskList</code> specified when registering the workflow type.</p> <note>A task list for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task list was specified at registration time then a fault will be returned.</note> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.</p>
-- @param _taskStartToCloseTimeout [DurationInSecondsOptional] <p>Specifies the maximum duration of decision tasks for this workflow execution. This parameter overrides the <code>defaultTaskStartToCloseTimout</code> specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p> <note>A task start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task start-to-close timeout was specified at registration time then a fault will be returned.</note>
-- @param _workflowId [WorkflowId] <p>The user defined identifier associated with the workflow execution. You can use this to associate a custom identifier with the workflow execution. You may specify the same identifier if a workflow execution is logically a <i>restart</i> of a previous execution. You cannot have two open workflow executions with the same <code>workflowId</code> at the same time.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.</p>
-- @param _taskPriority [TaskPriority] <p>The task priority to use for this workflow execution. This will override any default priority that was assigned when the workflow type was registered. If not set, then the default task priority for the workflow type will be used. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon Simple Workflow Developer Guide</i>.</p>
-- @param _lambdaRole [Arn] <p>The ARN of an IAM role that authorizes Amazon SWF to invoke AWS Lambda functions.</p> <note>In order for this workflow execution to invoke AWS Lambda functions, an appropriate IAM role must be specified either as a default for the workflow type or through this field.</note>
-- @param _childPolicy [ChildPolicy] <p>If set, specifies the policy to use for the child workflow executions of this workflow execution if it is terminated, by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout. This policy overrides the default child policy specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p> <p>The supported child policies are:</p> <ul> <li><b>TERMINATE:</b> the child executions will be terminated.</li> <li><b>REQUEST_CANCEL:</b> a request to cancel will be attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</li> <li><b>ABANDON:</b> no action will be taken. The child executions will continue to run.</li> </ul> <note>A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault will be returned.</note>
-- @param _executionStartToCloseTimeout [DurationInSecondsOptional] <p>The total duration for this workflow execution. This overrides the defaultExecutionStartToCloseTimeout specified when registering the workflow type.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. Exceeding this limit will cause the workflow execution to time out. Unlike some of the other timeout parameters in Amazon SWF, you cannot specify a value of "NONE" for this timeout; there is a one-year max limit on the time that a workflow execution can run.</p> <note> An execution start-to-close timeout must be specified either through this parameter or as a default when the workflow type is registered. If neither this parameter nor a default execution start-to-close timeout is specified, a fault is returned.</note>
-- @param _input [Data] <p>The input for the workflow execution. This is a free form string which should be meaningful to the workflow you are starting. This <code>input</code> is made available to the new workflow execution in the <code>WorkflowExecutionStarted</code> history event.</p>
-- @param _workflowType [WorkflowType] <p>The type of the workflow to start.</p>
-- @param _tagList [TagList] <p>The list of tags to associate with the workflow execution. You can specify a maximum of 5 tags. You can list workflow executions with a specific tag by calling <a>ListOpenWorkflowExecutions</a> or <a>ListClosedWorkflowExecutions</a> and specifying a <a>TagFilter</a>.</p>
-- Required parameter: domain
-- Required parameter: workflowId
-- Required parameter: workflowType
function M.StartWorkflowExecutionInput(_domain, _taskList, _taskStartToCloseTimeout, _workflowId, _taskPriority, _lambdaRole, _childPolicy, _executionStartToCloseTimeout, _input, _workflowType, _tagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartWorkflowExecutionInput")
	local t = { 
		["domain"] = _domain,
		["taskList"] = _taskList,
		["taskStartToCloseTimeout"] = _taskStartToCloseTimeout,
		["workflowId"] = _workflowId,
		["taskPriority"] = _taskPriority,
		["lambdaRole"] = _lambdaRole,
		["childPolicy"] = _childPolicy,
		["executionStartToCloseTimeout"] = _executionStartToCloseTimeout,
		["input"] = _input,
		["workflowType"] = _workflowType,
		["tagList"] = _tagList,
	}
	asserts.AssertStartWorkflowExecutionInput(t)
	return t
end

keys.RecordMarkerDecisionAttributes = { ["markerName"] = true, ["details"] = true, nil }

function asserts.AssertRecordMarkerDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordMarkerDecisionAttributes to be of type 'table'")
	assert(struct["markerName"], "Expected key markerName to exist in table")
	if struct["markerName"] then asserts.AssertMarkerName(struct["markerName"]) end
	if struct["details"] then asserts.AssertData(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecordMarkerDecisionAttributes[k], "RecordMarkerDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordMarkerDecisionAttributes
-- <p>Provides details of the <code>RecordMarker</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-- @param _markerName [MarkerName] <p><b>Required.</b> The name of the marker.</p>
-- @param _details [Data] <p><i>Optional.</i> details of the marker.</p>
-- Required parameter: markerName
function M.RecordMarkerDecisionAttributes(_markerName, _details, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordMarkerDecisionAttributes")
	local t = { 
		["markerName"] = _markerName,
		["details"] = _details,
	}
	asserts.AssertRecordMarkerDecisionAttributes(t)
	return t
end

keys.RequestCancelExternalWorkflowExecutionInitiatedEventAttributes = { ["control"] = true, ["workflowId"] = true, ["runId"] = true, ["decisionTaskCompletedEventId"] = true, nil }

function asserts.AssertRequestCancelExternalWorkflowExecutionInitiatedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestCancelExternalWorkflowExecutionInitiatedEventAttributes to be of type 'table'")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["control"] then asserts.AssertData(struct["control"]) end
	if struct["workflowId"] then asserts.AssertWorkflowId(struct["workflowId"]) end
	if struct["runId"] then asserts.AssertRunIdOptional(struct["runId"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestCancelExternalWorkflowExecutionInitiatedEventAttributes[k], "RequestCancelExternalWorkflowExecutionInitiatedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
-- <p>Provides details of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event.</p>
-- @param _control [Data] <p><i>Optional.</i> Data attached to the event that can be used by the decider in subsequent workflow tasks.</p>
-- @param _workflowId [WorkflowId] <p>The <code>workflowId</code> of the external workflow execution to be canceled.</p>
-- @param _runId [RunIdOptional] <p>The <code>runId</code> of the external workflow execution to be canceled.</p>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>RequestCancelExternalWorkflowExecution</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required parameter: workflowId
-- Required parameter: decisionTaskCompletedEventId
function M.RequestCancelExternalWorkflowExecutionInitiatedEventAttributes(_control, _workflowId, _runId, _decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestCancelExternalWorkflowExecutionInitiatedEventAttributes")
	local t = { 
		["control"] = _control,
		["workflowId"] = _workflowId,
		["runId"] = _runId,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
	}
	asserts.AssertRequestCancelExternalWorkflowExecutionInitiatedEventAttributes(t)
	return t
end

keys.PendingTaskCount = { ["count"] = true, ["truncated"] = true, nil }

function asserts.AssertPendingTaskCount(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingTaskCount to be of type 'table'")
	assert(struct["count"], "Expected key count to exist in table")
	if struct["count"] then asserts.AssertCount(struct["count"]) end
	if struct["truncated"] then asserts.AssertTruncated(struct["truncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.PendingTaskCount[k], "PendingTaskCount contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PendingTaskCount
-- <p>Contains the count of tasks in a task list.</p>
-- @param _count [Count] <p>The number of tasks in the task list.</p>
-- @param _truncated [Truncated] <p>If set to true, indicates that the actual count was more than the maximum supported by this API and the count returned is the truncated value.</p>
-- Required parameter: count
function M.PendingTaskCount(_count, _truncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PendingTaskCount")
	local t = { 
		["count"] = _count,
		["truncated"] = _truncated,
	}
	asserts.AssertPendingTaskCount(t)
	return t
end

keys.WorkflowTypeInfo = { ["status"] = true, ["deprecationDate"] = true, ["creationDate"] = true, ["workflowType"] = true, ["description"] = true, nil }

function asserts.AssertWorkflowTypeInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowTypeInfo to be of type 'table'")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	assert(struct["creationDate"], "Expected key creationDate to exist in table")
	if struct["status"] then asserts.AssertRegistrationStatus(struct["status"]) end
	if struct["deprecationDate"] then asserts.AssertTimestamp(struct["deprecationDate"]) end
	if struct["creationDate"] then asserts.AssertTimestamp(struct["creationDate"]) end
	if struct["workflowType"] then asserts.AssertWorkflowType(struct["workflowType"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowTypeInfo[k], "WorkflowTypeInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowTypeInfo
-- <p>Contains information about a workflow type.</p>
-- @param _status [RegistrationStatus] <p>The current status of the workflow type.</p>
-- @param _deprecationDate [Timestamp] <p>If the type is in deprecated state, then it is set to the date when the type was deprecated.</p>
-- @param _creationDate [Timestamp] <p>The date when this type was registered.</p>
-- @param _workflowType [WorkflowType] <p>The workflow type this information is about.</p>
-- @param _description [Description] <p>The description of the type registered through <a>RegisterWorkflowType</a>.</p>
-- Required parameter: workflowType
-- Required parameter: status
-- Required parameter: creationDate
function M.WorkflowTypeInfo(_status, _deprecationDate, _creationDate, _workflowType, _description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowTypeInfo")
	local t = { 
		["status"] = _status,
		["deprecationDate"] = _deprecationDate,
		["creationDate"] = _creationDate,
		["workflowType"] = _workflowType,
		["description"] = _description,
	}
	asserts.AssertWorkflowTypeInfo(t)
	return t
end

keys.DecisionTaskStartedEventAttributes = { ["scheduledEventId"] = true, ["identity"] = true, nil }

function asserts.AssertDecisionTaskStartedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecisionTaskStartedEventAttributes to be of type 'table'")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	if struct["scheduledEventId"] then asserts.AssertEventId(struct["scheduledEventId"]) end
	if struct["identity"] then asserts.AssertIdentity(struct["identity"]) end
	for k,_ in pairs(struct) do
		assert(keys.DecisionTaskStartedEventAttributes[k], "DecisionTaskStartedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecisionTaskStartedEventAttributes
-- <p>Provides details of the <code>DecisionTaskStarted</code> event.</p>
-- @param _scheduledEventId [EventId] <p>The ID of the <code>DecisionTaskScheduled</code> event that was recorded when this decision task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _identity [Identity] <p>Identity of the decider making the request. This enables diagnostic tracing when problems arise. The form of this identity is user defined.</p>
-- Required parameter: scheduledEventId
function M.DecisionTaskStartedEventAttributes(_scheduledEventId, _identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecisionTaskStartedEventAttributes")
	local t = { 
		["scheduledEventId"] = _scheduledEventId,
		["identity"] = _identity,
	}
	asserts.AssertDecisionTaskStartedEventAttributes(t)
	return t
end

keys.WorkflowType = { ["version"] = true, ["name"] = true, nil }

function asserts.AssertWorkflowType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowType to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowType[k], "WorkflowType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowType
-- <p>Represents a workflow type.</p>
-- @param _version [Version] <p><b>Required.</b> The version of the workflow type.</p> <note>The combination of workflow type name and version must be unique with in a domain.</note>
-- @param _name [Name] <p><b>Required.</b> The name of the workflow type.</p> <note>The combination of workflow type name and version must be unique with in a domain.</note>
-- Required parameter: name
-- Required parameter: version
function M.WorkflowType(_version, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowType")
	local t = { 
		["version"] = _version,
		["name"] = _name,
	}
	asserts.AssertWorkflowType(t)
	return t
end

keys.ChildWorkflowExecutionTerminatedEventAttributes = { ["startedEventId"] = true, ["workflowType"] = true, ["initiatedEventId"] = true, ["workflowExecution"] = true, nil }

function asserts.AssertChildWorkflowExecutionTerminatedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChildWorkflowExecutionTerminatedEventAttributes to be of type 'table'")
	assert(struct["workflowExecution"], "Expected key workflowExecution to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then asserts.AssertEventId(struct["startedEventId"]) end
	if struct["workflowType"] then asserts.AssertWorkflowType(struct["workflowType"]) end
	if struct["initiatedEventId"] then asserts.AssertEventId(struct["initiatedEventId"]) end
	if struct["workflowExecution"] then asserts.AssertWorkflowExecution(struct["workflowExecution"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChildWorkflowExecutionTerminatedEventAttributes[k], "ChildWorkflowExecutionTerminatedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChildWorkflowExecutionTerminatedEventAttributes
-- <p>Provides details of the <code>ChildWorkflowExecutionTerminated</code> event.</p>
-- @param _startedEventId [EventId] <p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _workflowType [WorkflowType] <p>The type of the child workflow execution.</p>
-- @param _initiatedEventId [EventId] <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> decision to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _workflowExecution [WorkflowExecution] <p>The child workflow execution that was terminated.</p>
-- Required parameter: workflowExecution
-- Required parameter: workflowType
-- Required parameter: initiatedEventId
-- Required parameter: startedEventId
function M.ChildWorkflowExecutionTerminatedEventAttributes(_startedEventId, _workflowType, _initiatedEventId, _workflowExecution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChildWorkflowExecutionTerminatedEventAttributes")
	local t = { 
		["startedEventId"] = _startedEventId,
		["workflowType"] = _workflowType,
		["initiatedEventId"] = _initiatedEventId,
		["workflowExecution"] = _workflowExecution,
	}
	asserts.AssertChildWorkflowExecutionTerminatedEventAttributes(t)
	return t
end

keys.DomainConfiguration = { ["workflowExecutionRetentionPeriodInDays"] = true, nil }

function asserts.AssertDomainConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainConfiguration to be of type 'table'")
	assert(struct["workflowExecutionRetentionPeriodInDays"], "Expected key workflowExecutionRetentionPeriodInDays to exist in table")
	if struct["workflowExecutionRetentionPeriodInDays"] then asserts.AssertDurationInDays(struct["workflowExecutionRetentionPeriodInDays"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainConfiguration[k], "DomainConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainConfiguration
-- <p>Contains the configuration settings of a domain.</p>
-- @param _workflowExecutionRetentionPeriodInDays [DurationInDays] <p>The retention period for workflow executions in this domain.</p>
-- Required parameter: workflowExecutionRetentionPeriodInDays
function M.DomainConfiguration(_workflowExecutionRetentionPeriodInDays, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainConfiguration")
	local t = { 
		["workflowExecutionRetentionPeriodInDays"] = _workflowExecutionRetentionPeriodInDays,
	}
	asserts.AssertDomainConfiguration(t)
	return t
end

keys.RequestCancelWorkflowExecutionInput = { ["domain"] = true, ["workflowId"] = true, ["runId"] = true, nil }

function asserts.AssertRequestCancelWorkflowExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestCancelWorkflowExecutionInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["workflowId"] then asserts.AssertWorkflowId(struct["workflowId"]) end
	if struct["runId"] then asserts.AssertRunIdOptional(struct["runId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestCancelWorkflowExecutionInput[k], "RequestCancelWorkflowExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestCancelWorkflowExecutionInput
--  
-- @param _domain [DomainName] <p>The name of the domain containing the workflow execution to cancel.</p>
-- @param _workflowId [WorkflowId] <p>The workflowId of the workflow execution to cancel.</p>
-- @param _runId [RunIdOptional] <p>The runId of the workflow execution to cancel.</p>
-- Required parameter: domain
-- Required parameter: workflowId
function M.RequestCancelWorkflowExecutionInput(_domain, _workflowId, _runId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestCancelWorkflowExecutionInput")
	local t = { 
		["domain"] = _domain,
		["workflowId"] = _workflowId,
		["runId"] = _runId,
	}
	asserts.AssertRequestCancelWorkflowExecutionInput(t)
	return t
end

keys.Run = { ["runId"] = true, nil }

function asserts.AssertRun(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Run to be of type 'table'")
	if struct["runId"] then asserts.AssertRunId(struct["runId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Run[k], "Run contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Run
-- <p>Specifies the <code>runId</code> of a workflow execution.</p>
-- @param _runId [RunId] <p>The <code>runId</code> of a workflow execution. This ID is generated by the service and can be used to uniquely identify the workflow execution within a domain.</p>
function M.Run(_runId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Run")
	local t = { 
		["runId"] = _runId,
	}
	asserts.AssertRun(t)
	return t
end

keys.RecordMarkerFailedEventAttributes = { ["markerName"] = true, ["cause"] = true, ["decisionTaskCompletedEventId"] = true, nil }

function asserts.AssertRecordMarkerFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordMarkerFailedEventAttributes to be of type 'table'")
	assert(struct["markerName"], "Expected key markerName to exist in table")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["markerName"] then asserts.AssertMarkerName(struct["markerName"]) end
	if struct["cause"] then asserts.AssertRecordMarkerFailedCause(struct["cause"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecordMarkerFailedEventAttributes[k], "RecordMarkerFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordMarkerFailedEventAttributes
-- <p>Provides details of the <code>RecordMarkerFailed</code> event.</p>
-- @param _markerName [MarkerName] <p>The marker's name.</p>
-- @param _cause [RecordMarkerFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note>If <b>cause</b> is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</note>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>RecordMarkerFailed</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required parameter: markerName
-- Required parameter: cause
-- Required parameter: decisionTaskCompletedEventId
function M.RecordMarkerFailedEventAttributes(_markerName, _cause, _decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordMarkerFailedEventAttributes")
	local t = { 
		["markerName"] = _markerName,
		["cause"] = _cause,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
	}
	asserts.AssertRecordMarkerFailedEventAttributes(t)
	return t
end

keys.WorkflowExecutionContinuedAsNewEventAttributes = { ["taskList"] = true, ["taskStartToCloseTimeout"] = true, ["newExecutionRunId"] = true, ["taskPriority"] = true, ["lambdaRole"] = true, ["childPolicy"] = true, ["decisionTaskCompletedEventId"] = true, ["executionStartToCloseTimeout"] = true, ["input"] = true, ["workflowType"] = true, ["tagList"] = true, nil }

function asserts.AssertWorkflowExecutionContinuedAsNewEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionContinuedAsNewEventAttributes to be of type 'table'")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	assert(struct["newExecutionRunId"], "Expected key newExecutionRunId to exist in table")
	assert(struct["taskList"], "Expected key taskList to exist in table")
	assert(struct["childPolicy"], "Expected key childPolicy to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	if struct["taskList"] then asserts.AssertTaskList(struct["taskList"]) end
	if struct["taskStartToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["taskStartToCloseTimeout"]) end
	if struct["newExecutionRunId"] then asserts.AssertRunId(struct["newExecutionRunId"]) end
	if struct["taskPriority"] then asserts.AssertTaskPriority(struct["taskPriority"]) end
	if struct["lambdaRole"] then asserts.AssertArn(struct["lambdaRole"]) end
	if struct["childPolicy"] then asserts.AssertChildPolicy(struct["childPolicy"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["executionStartToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["executionStartToCloseTimeout"]) end
	if struct["input"] then asserts.AssertData(struct["input"]) end
	if struct["workflowType"] then asserts.AssertWorkflowType(struct["workflowType"]) end
	if struct["tagList"] then asserts.AssertTagList(struct["tagList"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowExecutionContinuedAsNewEventAttributes[k], "WorkflowExecutionContinuedAsNewEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionContinuedAsNewEventAttributes
-- <p>Provides details of the <code>WorkflowExecutionContinuedAsNew</code> event.</p>
-- @param _taskList [TaskList] 
-- @param _taskStartToCloseTimeout [DurationInSecondsOptional] <p>The maximum duration of decision tasks for the new workflow execution.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p>
-- @param _newExecutionRunId [RunId] <p>The <code>runId</code> of the new workflow execution.</p>
-- @param _taskPriority [TaskPriority] 
-- @param _lambdaRole [Arn] <p>The IAM role attached to this workflow execution to use when invoking AWS Lambda functions.</p>
-- @param _childPolicy [ChildPolicy] <p>The policy to use for the child workflow executions of the new execution if it is terminated by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout.</p> <p>The supported child policies are:</p> <ul> <li><b>TERMINATE:</b> the child executions will be terminated.</li> <li><b>REQUEST_CANCEL:</b> a request to cancel will be attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</li> <li><b>ABANDON:</b> no action will be taken. The child executions will continue to run.</li> </ul>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>ContinueAsNewWorkflowExecution</code> decision that started this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _executionStartToCloseTimeout [DurationInSecondsOptional] <p>The total duration allowed for the new workflow execution.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p>
-- @param _input [Data] <p>The input provided to the new workflow execution.</p>
-- @param _workflowType [WorkflowType] 
-- @param _tagList [TagList] <p>The list of tags associated with the new workflow execution.</p>
-- Required parameter: decisionTaskCompletedEventId
-- Required parameter: newExecutionRunId
-- Required parameter: taskList
-- Required parameter: childPolicy
-- Required parameter: workflowType
function M.WorkflowExecutionContinuedAsNewEventAttributes(_taskList, _taskStartToCloseTimeout, _newExecutionRunId, _taskPriority, _lambdaRole, _childPolicy, _decisionTaskCompletedEventId, _executionStartToCloseTimeout, _input, _workflowType, _tagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionContinuedAsNewEventAttributes")
	local t = { 
		["taskList"] = _taskList,
		["taskStartToCloseTimeout"] = _taskStartToCloseTimeout,
		["newExecutionRunId"] = _newExecutionRunId,
		["taskPriority"] = _taskPriority,
		["lambdaRole"] = _lambdaRole,
		["childPolicy"] = _childPolicy,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
		["executionStartToCloseTimeout"] = _executionStartToCloseTimeout,
		["input"] = _input,
		["workflowType"] = _workflowType,
		["tagList"] = _tagList,
	}
	asserts.AssertWorkflowExecutionContinuedAsNewEventAttributes(t)
	return t
end

keys.MarkerRecordedEventAttributes = { ["markerName"] = true, ["details"] = true, ["decisionTaskCompletedEventId"] = true, nil }

function asserts.AssertMarkerRecordedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MarkerRecordedEventAttributes to be of type 'table'")
	assert(struct["markerName"], "Expected key markerName to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["markerName"] then asserts.AssertMarkerName(struct["markerName"]) end
	if struct["details"] then asserts.AssertData(struct["details"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.MarkerRecordedEventAttributes[k], "MarkerRecordedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MarkerRecordedEventAttributes
-- <p>Provides details of the <code>MarkerRecorded</code> event.</p>
-- @param _markerName [MarkerName] <p>The name of the marker.</p>
-- @param _details [Data] <p>Details of the marker (if any).</p>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>RecordMarker</code> decision that requested this marker. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required parameter: markerName
-- Required parameter: decisionTaskCompletedEventId
function M.MarkerRecordedEventAttributes(_markerName, _details, _decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MarkerRecordedEventAttributes")
	local t = { 
		["markerName"] = _markerName,
		["details"] = _details,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
	}
	asserts.AssertMarkerRecordedEventAttributes(t)
	return t
end

keys.DomainDetail = { ["domainInfo"] = true, ["configuration"] = true, nil }

function asserts.AssertDomainDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainDetail to be of type 'table'")
	assert(struct["domainInfo"], "Expected key domainInfo to exist in table")
	assert(struct["configuration"], "Expected key configuration to exist in table")
	if struct["domainInfo"] then asserts.AssertDomainInfo(struct["domainInfo"]) end
	if struct["configuration"] then asserts.AssertDomainConfiguration(struct["configuration"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainDetail[k], "DomainDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainDetail
-- <p>Contains details of a domain.</p>
-- @param _domainInfo [DomainInfo] 
-- @param _configuration [DomainConfiguration] 
-- Required parameter: domainInfo
-- Required parameter: configuration
function M.DomainDetail(_domainInfo, _configuration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainDetail")
	local t = { 
		["domainInfo"] = _domainInfo,
		["configuration"] = _configuration,
	}
	asserts.AssertDomainDetail(t)
	return t
end

keys.DomainInfos = { ["domainInfos"] = true, ["nextPageToken"] = true, nil }

function asserts.AssertDomainInfos(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainInfos to be of type 'table'")
	assert(struct["domainInfos"], "Expected key domainInfos to exist in table")
	if struct["domainInfos"] then asserts.AssertDomainInfoList(struct["domainInfos"]) end
	if struct["nextPageToken"] then asserts.AssertPageToken(struct["nextPageToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainInfos[k], "DomainInfos contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainInfos
-- <p>Contains a paginated collection of DomainInfo structures.</p>
-- @param _domainInfos [DomainInfoList] <p>A list of DomainInfo structures.</p>
-- @param _nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- Required parameter: domainInfos
function M.DomainInfos(_domainInfos, _nextPageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainInfos")
	local t = { 
		["domainInfos"] = _domainInfos,
		["nextPageToken"] = _nextPageToken,
	}
	asserts.AssertDomainInfos(t)
	return t
end

keys.FailWorkflowExecutionFailedEventAttributes = { ["cause"] = true, ["decisionTaskCompletedEventId"] = true, nil }

function asserts.AssertFailWorkflowExecutionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailWorkflowExecutionFailedEventAttributes to be of type 'table'")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["cause"] then asserts.AssertFailWorkflowExecutionFailedCause(struct["cause"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.FailWorkflowExecutionFailedEventAttributes[k], "FailWorkflowExecutionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailWorkflowExecutionFailedEventAttributes
-- <p>Provides details of the <code>FailWorkflowExecutionFailed</code> event.</p>
-- @param _cause [FailWorkflowExecutionFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note>If <b>cause</b> is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</note>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>FailWorkflowExecution</code> decision to fail this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required parameter: cause
-- Required parameter: decisionTaskCompletedEventId
function M.FailWorkflowExecutionFailedEventAttributes(_cause, _decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FailWorkflowExecutionFailedEventAttributes")
	local t = { 
		["cause"] = _cause,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
	}
	asserts.AssertFailWorkflowExecutionFailedEventAttributes(t)
	return t
end

keys.SignalExternalWorkflowExecutionFailedEventAttributes = { ["control"] = true, ["workflowId"] = true, ["initiatedEventId"] = true, ["runId"] = true, ["decisionTaskCompletedEventId"] = true, ["cause"] = true, nil }

function asserts.AssertSignalExternalWorkflowExecutionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SignalExternalWorkflowExecutionFailedEventAttributes to be of type 'table'")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["control"] then asserts.AssertData(struct["control"]) end
	if struct["workflowId"] then asserts.AssertWorkflowId(struct["workflowId"]) end
	if struct["initiatedEventId"] then asserts.AssertEventId(struct["initiatedEventId"]) end
	if struct["runId"] then asserts.AssertRunIdOptional(struct["runId"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["cause"] then asserts.AssertSignalExternalWorkflowExecutionFailedCause(struct["cause"]) end
	for k,_ in pairs(struct) do
		assert(keys.SignalExternalWorkflowExecutionFailedEventAttributes[k], "SignalExternalWorkflowExecutionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SignalExternalWorkflowExecutionFailedEventAttributes
-- <p>Provides details of the <code>SignalExternalWorkflowExecutionFailed</code> event.</p>
-- @param _control [Data] 
-- @param _workflowId [WorkflowId] <p>The <code>workflowId</code> of the external workflow execution that the signal was being delivered to.</p>
-- @param _initiatedEventId [EventId] <p>The ID of the <code>SignalExternalWorkflowExecutionInitiated</code> event corresponding to the <code>SignalExternalWorkflowExecution</code> decision to request this signal. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _runId [RunIdOptional] <p>The <code>runId</code> of the external workflow execution that the signal was being delivered to.</p>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>SignalExternalWorkflowExecution</code> decision for this signal. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _cause [SignalExternalWorkflowExecutionFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note>If <b>cause</b> is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</note>
-- Required parameter: workflowId
-- Required parameter: cause
-- Required parameter: initiatedEventId
-- Required parameter: decisionTaskCompletedEventId
function M.SignalExternalWorkflowExecutionFailedEventAttributes(_control, _workflowId, _initiatedEventId, _runId, _decisionTaskCompletedEventId, _cause, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SignalExternalWorkflowExecutionFailedEventAttributes")
	local t = { 
		["control"] = _control,
		["workflowId"] = _workflowId,
		["initiatedEventId"] = _initiatedEventId,
		["runId"] = _runId,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
		["cause"] = _cause,
	}
	asserts.AssertSignalExternalWorkflowExecutionFailedEventAttributes(t)
	return t
end

keys.GetWorkflowExecutionHistoryInput = { ["nextPageToken"] = true, ["domain"] = true, ["execution"] = true, ["reverseOrder"] = true, ["maximumPageSize"] = true, nil }

function asserts.AssertGetWorkflowExecutionHistoryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetWorkflowExecutionHistoryInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["execution"], "Expected key execution to exist in table")
	if struct["nextPageToken"] then asserts.AssertPageToken(struct["nextPageToken"]) end
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["execution"] then asserts.AssertWorkflowExecution(struct["execution"]) end
	if struct["reverseOrder"] then asserts.AssertReverseOrder(struct["reverseOrder"]) end
	if struct["maximumPageSize"] then asserts.AssertPageSize(struct["maximumPageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetWorkflowExecutionHistoryInput[k], "GetWorkflowExecutionHistoryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetWorkflowExecutionHistoryInput
--  
-- @param _nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- @param _domain [DomainName] <p>The name of the domain containing the workflow execution.</p>
-- @param _execution [WorkflowExecution] <p>Specifies the workflow execution for which to return the history.</p>
-- @param _reverseOrder [ReverseOrder] <p>When set to <code>true</code>, returns the events in reverse order. By default the results are returned in ascending order of the <code>eventTimeStamp</code> of the events.</p>
-- @param _maximumPageSize [PageSize] <p>The maximum number of results that will be returned per call. <code>nextPageToken</code> can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size <i>smaller</i> than the maximum.</p> <p>This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.</p>
-- Required parameter: domain
-- Required parameter: execution
function M.GetWorkflowExecutionHistoryInput(_nextPageToken, _domain, _execution, _reverseOrder, _maximumPageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetWorkflowExecutionHistoryInput")
	local t = { 
		["nextPageToken"] = _nextPageToken,
		["domain"] = _domain,
		["execution"] = _execution,
		["reverseOrder"] = _reverseOrder,
		["maximumPageSize"] = _maximumPageSize,
	}
	asserts.AssertGetWorkflowExecutionHistoryInput(t)
	return t
end

keys.HistoryEvent = { ["workflowExecutionCancelRequestedEventAttributes"] = true, ["requestCancelExternalWorkflowExecutionInitiatedEventAttributes"] = true, ["completeWorkflowExecutionFailedEventAttributes"] = true, ["childWorkflowExecutionStartedEventAttributes"] = true, ["activityTaskScheduledEventAttributes"] = true, ["eventType"] = true, ["decisionTaskTimedOutEventAttributes"] = true, ["workflowExecutionTimedOutEventAttributes"] = true, ["cancelWorkflowExecutionFailedEventAttributes"] = true, ["eventTimestamp"] = true, ["lambdaFunctionCompletedEventAttributes"] = true, ["timerCanceledEventAttributes"] = true, ["startChildWorkflowExecutionFailedEventAttributes"] = true, ["eventId"] = true, ["workflowExecutionContinuedAsNewEventAttributes"] = true, ["childWorkflowExecutionTimedOutEventAttributes"] = true, ["childWorkflowExecutionCanceledEventAttributes"] = true, ["activityTaskStartedEventAttributes"] = true, ["activityTaskCompletedEventAttributes"] = true, ["activityTaskFailedEventAttributes"] = true, ["signalExternalWorkflowExecutionInitiatedEventAttributes"] = true, ["recordMarkerFailedEventAttributes"] = true, ["externalWorkflowExecutionSignaledEventAttributes"] = true, ["lambdaFunctionTimedOutEventAttributes"] = true, ["childWorkflowExecutionCompletedEventAttributes"] = true, ["startLambdaFunctionFailedEventAttributes"] = true, ["workflowExecutionSignaledEventAttributes"] = true, ["scheduleActivityTaskFailedEventAttributes"] = true, ["childWorkflowExecutionTerminatedEventAttributes"] = true, ["externalWorkflowExecutionCancelRequestedEventAttributes"] = true, ["workflowExecutionCanceledEventAttributes"] = true, ["requestCancelExternalWorkflowExecutionFailedEventAttributes"] = true, ["workflowExecutionTerminatedEventAttributes"] = true, ["decisionTaskScheduledEventAttributes"] = true, ["lambdaFunctionFailedEventAttributes"] = true, ["activityTaskCanceledEventAttributes"] = true, ["cancelTimerFailedEventAttributes"] = true, ["startTimerFailedEventAttributes"] = true, ["timerFiredEventAttributes"] = true, ["failWorkflowExecutionFailedEventAttributes"] = true, ["workflowExecutionStartedEventAttributes"] = true, ["decisionTaskCompletedEventAttributes"] = true, ["workflowExecutionFailedEventAttributes"] = true, ["timerStartedEventAttributes"] = true, ["requestCancelActivityTaskFailedEventAttributes"] = true, ["activityTaskTimedOutEventAttributes"] = true, ["continueAsNewWorkflowExecutionFailedEventAttributes"] = true, ["signalExternalWorkflowExecutionFailedEventAttributes"] = true, ["startChildWorkflowExecutionInitiatedEventAttributes"] = true, ["markerRecordedEventAttributes"] = true, ["lambdaFunctionScheduledEventAttributes"] = true, ["scheduleLambdaFunctionFailedEventAttributes"] = true, ["workflowExecutionCompletedEventAttributes"] = true, ["decisionTaskStartedEventAttributes"] = true, ["childWorkflowExecutionFailedEventAttributes"] = true, ["activityTaskCancelRequestedEventAttributes"] = true, ["lambdaFunctionStartedEventAttributes"] = true, nil }

function asserts.AssertHistoryEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HistoryEvent to be of type 'table'")
	assert(struct["eventTimestamp"], "Expected key eventTimestamp to exist in table")
	assert(struct["eventType"], "Expected key eventType to exist in table")
	assert(struct["eventId"], "Expected key eventId to exist in table")
	if struct["workflowExecutionCancelRequestedEventAttributes"] then asserts.AssertWorkflowExecutionCancelRequestedEventAttributes(struct["workflowExecutionCancelRequestedEventAttributes"]) end
	if struct["requestCancelExternalWorkflowExecutionInitiatedEventAttributes"] then asserts.AssertRequestCancelExternalWorkflowExecutionInitiatedEventAttributes(struct["requestCancelExternalWorkflowExecutionInitiatedEventAttributes"]) end
	if struct["completeWorkflowExecutionFailedEventAttributes"] then asserts.AssertCompleteWorkflowExecutionFailedEventAttributes(struct["completeWorkflowExecutionFailedEventAttributes"]) end
	if struct["childWorkflowExecutionStartedEventAttributes"] then asserts.AssertChildWorkflowExecutionStartedEventAttributes(struct["childWorkflowExecutionStartedEventAttributes"]) end
	if struct["activityTaskScheduledEventAttributes"] then asserts.AssertActivityTaskScheduledEventAttributes(struct["activityTaskScheduledEventAttributes"]) end
	if struct["eventType"] then asserts.AssertEventType(struct["eventType"]) end
	if struct["decisionTaskTimedOutEventAttributes"] then asserts.AssertDecisionTaskTimedOutEventAttributes(struct["decisionTaskTimedOutEventAttributes"]) end
	if struct["workflowExecutionTimedOutEventAttributes"] then asserts.AssertWorkflowExecutionTimedOutEventAttributes(struct["workflowExecutionTimedOutEventAttributes"]) end
	if struct["cancelWorkflowExecutionFailedEventAttributes"] then asserts.AssertCancelWorkflowExecutionFailedEventAttributes(struct["cancelWorkflowExecutionFailedEventAttributes"]) end
	if struct["eventTimestamp"] then asserts.AssertTimestamp(struct["eventTimestamp"]) end
	if struct["lambdaFunctionCompletedEventAttributes"] then asserts.AssertLambdaFunctionCompletedEventAttributes(struct["lambdaFunctionCompletedEventAttributes"]) end
	if struct["timerCanceledEventAttributes"] then asserts.AssertTimerCanceledEventAttributes(struct["timerCanceledEventAttributes"]) end
	if struct["startChildWorkflowExecutionFailedEventAttributes"] then asserts.AssertStartChildWorkflowExecutionFailedEventAttributes(struct["startChildWorkflowExecutionFailedEventAttributes"]) end
	if struct["eventId"] then asserts.AssertEventId(struct["eventId"]) end
	if struct["workflowExecutionContinuedAsNewEventAttributes"] then asserts.AssertWorkflowExecutionContinuedAsNewEventAttributes(struct["workflowExecutionContinuedAsNewEventAttributes"]) end
	if struct["childWorkflowExecutionTimedOutEventAttributes"] then asserts.AssertChildWorkflowExecutionTimedOutEventAttributes(struct["childWorkflowExecutionTimedOutEventAttributes"]) end
	if struct["childWorkflowExecutionCanceledEventAttributes"] then asserts.AssertChildWorkflowExecutionCanceledEventAttributes(struct["childWorkflowExecutionCanceledEventAttributes"]) end
	if struct["activityTaskStartedEventAttributes"] then asserts.AssertActivityTaskStartedEventAttributes(struct["activityTaskStartedEventAttributes"]) end
	if struct["activityTaskCompletedEventAttributes"] then asserts.AssertActivityTaskCompletedEventAttributes(struct["activityTaskCompletedEventAttributes"]) end
	if struct["activityTaskFailedEventAttributes"] then asserts.AssertActivityTaskFailedEventAttributes(struct["activityTaskFailedEventAttributes"]) end
	if struct["signalExternalWorkflowExecutionInitiatedEventAttributes"] then asserts.AssertSignalExternalWorkflowExecutionInitiatedEventAttributes(struct["signalExternalWorkflowExecutionInitiatedEventAttributes"]) end
	if struct["recordMarkerFailedEventAttributes"] then asserts.AssertRecordMarkerFailedEventAttributes(struct["recordMarkerFailedEventAttributes"]) end
	if struct["externalWorkflowExecutionSignaledEventAttributes"] then asserts.AssertExternalWorkflowExecutionSignaledEventAttributes(struct["externalWorkflowExecutionSignaledEventAttributes"]) end
	if struct["lambdaFunctionTimedOutEventAttributes"] then asserts.AssertLambdaFunctionTimedOutEventAttributes(struct["lambdaFunctionTimedOutEventAttributes"]) end
	if struct["childWorkflowExecutionCompletedEventAttributes"] then asserts.AssertChildWorkflowExecutionCompletedEventAttributes(struct["childWorkflowExecutionCompletedEventAttributes"]) end
	if struct["startLambdaFunctionFailedEventAttributes"] then asserts.AssertStartLambdaFunctionFailedEventAttributes(struct["startLambdaFunctionFailedEventAttributes"]) end
	if struct["workflowExecutionSignaledEventAttributes"] then asserts.AssertWorkflowExecutionSignaledEventAttributes(struct["workflowExecutionSignaledEventAttributes"]) end
	if struct["scheduleActivityTaskFailedEventAttributes"] then asserts.AssertScheduleActivityTaskFailedEventAttributes(struct["scheduleActivityTaskFailedEventAttributes"]) end
	if struct["childWorkflowExecutionTerminatedEventAttributes"] then asserts.AssertChildWorkflowExecutionTerminatedEventAttributes(struct["childWorkflowExecutionTerminatedEventAttributes"]) end
	if struct["externalWorkflowExecutionCancelRequestedEventAttributes"] then asserts.AssertExternalWorkflowExecutionCancelRequestedEventAttributes(struct["externalWorkflowExecutionCancelRequestedEventAttributes"]) end
	if struct["workflowExecutionCanceledEventAttributes"] then asserts.AssertWorkflowExecutionCanceledEventAttributes(struct["workflowExecutionCanceledEventAttributes"]) end
	if struct["requestCancelExternalWorkflowExecutionFailedEventAttributes"] then asserts.AssertRequestCancelExternalWorkflowExecutionFailedEventAttributes(struct["requestCancelExternalWorkflowExecutionFailedEventAttributes"]) end
	if struct["workflowExecutionTerminatedEventAttributes"] then asserts.AssertWorkflowExecutionTerminatedEventAttributes(struct["workflowExecutionTerminatedEventAttributes"]) end
	if struct["decisionTaskScheduledEventAttributes"] then asserts.AssertDecisionTaskScheduledEventAttributes(struct["decisionTaskScheduledEventAttributes"]) end
	if struct["lambdaFunctionFailedEventAttributes"] then asserts.AssertLambdaFunctionFailedEventAttributes(struct["lambdaFunctionFailedEventAttributes"]) end
	if struct["activityTaskCanceledEventAttributes"] then asserts.AssertActivityTaskCanceledEventAttributes(struct["activityTaskCanceledEventAttributes"]) end
	if struct["cancelTimerFailedEventAttributes"] then asserts.AssertCancelTimerFailedEventAttributes(struct["cancelTimerFailedEventAttributes"]) end
	if struct["startTimerFailedEventAttributes"] then asserts.AssertStartTimerFailedEventAttributes(struct["startTimerFailedEventAttributes"]) end
	if struct["timerFiredEventAttributes"] then asserts.AssertTimerFiredEventAttributes(struct["timerFiredEventAttributes"]) end
	if struct["failWorkflowExecutionFailedEventAttributes"] then asserts.AssertFailWorkflowExecutionFailedEventAttributes(struct["failWorkflowExecutionFailedEventAttributes"]) end
	if struct["workflowExecutionStartedEventAttributes"] then asserts.AssertWorkflowExecutionStartedEventAttributes(struct["workflowExecutionStartedEventAttributes"]) end
	if struct["decisionTaskCompletedEventAttributes"] then asserts.AssertDecisionTaskCompletedEventAttributes(struct["decisionTaskCompletedEventAttributes"]) end
	if struct["workflowExecutionFailedEventAttributes"] then asserts.AssertWorkflowExecutionFailedEventAttributes(struct["workflowExecutionFailedEventAttributes"]) end
	if struct["timerStartedEventAttributes"] then asserts.AssertTimerStartedEventAttributes(struct["timerStartedEventAttributes"]) end
	if struct["requestCancelActivityTaskFailedEventAttributes"] then asserts.AssertRequestCancelActivityTaskFailedEventAttributes(struct["requestCancelActivityTaskFailedEventAttributes"]) end
	if struct["activityTaskTimedOutEventAttributes"] then asserts.AssertActivityTaskTimedOutEventAttributes(struct["activityTaskTimedOutEventAttributes"]) end
	if struct["continueAsNewWorkflowExecutionFailedEventAttributes"] then asserts.AssertContinueAsNewWorkflowExecutionFailedEventAttributes(struct["continueAsNewWorkflowExecutionFailedEventAttributes"]) end
	if struct["signalExternalWorkflowExecutionFailedEventAttributes"] then asserts.AssertSignalExternalWorkflowExecutionFailedEventAttributes(struct["signalExternalWorkflowExecutionFailedEventAttributes"]) end
	if struct["startChildWorkflowExecutionInitiatedEventAttributes"] then asserts.AssertStartChildWorkflowExecutionInitiatedEventAttributes(struct["startChildWorkflowExecutionInitiatedEventAttributes"]) end
	if struct["markerRecordedEventAttributes"] then asserts.AssertMarkerRecordedEventAttributes(struct["markerRecordedEventAttributes"]) end
	if struct["lambdaFunctionScheduledEventAttributes"] then asserts.AssertLambdaFunctionScheduledEventAttributes(struct["lambdaFunctionScheduledEventAttributes"]) end
	if struct["scheduleLambdaFunctionFailedEventAttributes"] then asserts.AssertScheduleLambdaFunctionFailedEventAttributes(struct["scheduleLambdaFunctionFailedEventAttributes"]) end
	if struct["workflowExecutionCompletedEventAttributes"] then asserts.AssertWorkflowExecutionCompletedEventAttributes(struct["workflowExecutionCompletedEventAttributes"]) end
	if struct["decisionTaskStartedEventAttributes"] then asserts.AssertDecisionTaskStartedEventAttributes(struct["decisionTaskStartedEventAttributes"]) end
	if struct["childWorkflowExecutionFailedEventAttributes"] then asserts.AssertChildWorkflowExecutionFailedEventAttributes(struct["childWorkflowExecutionFailedEventAttributes"]) end
	if struct["activityTaskCancelRequestedEventAttributes"] then asserts.AssertActivityTaskCancelRequestedEventAttributes(struct["activityTaskCancelRequestedEventAttributes"]) end
	if struct["lambdaFunctionStartedEventAttributes"] then asserts.AssertLambdaFunctionStartedEventAttributes(struct["lambdaFunctionStartedEventAttributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.HistoryEvent[k], "HistoryEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HistoryEvent
-- <p>Event within a workflow execution. A history event can be one of these types:</p> <ul> <li> <b>WorkflowExecutionStarted</b>: The workflow execution was started.</li> <li> <b>WorkflowExecutionCompleted</b>: The workflow execution was closed due to successful completion.</li> <li> <b>WorkflowExecutionFailed</b>: The workflow execution closed due to a failure.</li> <li> <b>WorkflowExecutionTimedOut</b>: The workflow execution was closed because a time out was exceeded.</li> <li> <b>WorkflowExecutionCanceled</b>: The workflow execution was successfully canceled and closed.</li> <li> <b>WorkflowExecutionTerminated</b>: The workflow execution was terminated.</li> <li> <b>WorkflowExecutionContinuedAsNew</b>: The workflow execution was closed and a new execution of the same type was created with the same workflowId.</li> <li> <b>WorkflowExecutionCancelRequested</b>: A request to cancel this workflow execution was made.</li> <li> <b>DecisionTaskScheduled</b>: A decision task was scheduled for the workflow execution.</li> <li> <b>DecisionTaskStarted</b>: The decision task was dispatched to a decider.</li> <li> <b>DecisionTaskCompleted</b>: The decider successfully completed a decision task by calling <a>RespondDecisionTaskCompleted</a>.</li> <li> <b>DecisionTaskTimedOut</b>: The decision task timed out.</li> <li> <b>ActivityTaskScheduled</b>: An activity task was scheduled for execution.</li> <li> <b>ScheduleActivityTaskFailed</b>: Failed to process ScheduleActivityTask decision. This happens when the decision is not configured properly, for example the activity type specified is not registered.</li> <li> <b>ActivityTaskStarted</b>: The scheduled activity task was dispatched to a worker.</li> <li> <b>ActivityTaskCompleted</b>: An activity worker successfully completed an activity task by calling <a>RespondActivityTaskCompleted</a>.</li> <li> <b>ActivityTaskFailed</b>: An activity worker failed an activity task by calling <a>RespondActivityTaskFailed</a>.</li> <li> <b>ActivityTaskTimedOut</b>: The activity task timed out.</li> <li> <b>ActivityTaskCanceled</b>: The activity task was successfully canceled.</li> <li> <b>ActivityTaskCancelRequested</b>: A <code>RequestCancelActivityTask</code> decision was received by the system.</li> <li> <b>RequestCancelActivityTaskFailed</b>: Failed to process RequestCancelActivityTask decision. This happens when the decision is not configured properly.</li> <li> <b>WorkflowExecutionSignaled</b>: An external signal was received for the workflow execution.</li> <li> <b>MarkerRecorded</b>: A marker was recorded in the workflow history as the result of a <code>RecordMarker</code> decision.</li> <li> <b>TimerStarted</b>: A timer was started for the workflow execution due to a <code>StartTimer</code> decision.</li> <li> <b>StartTimerFailed</b>: Failed to process StartTimer decision. This happens when the decision is not configured properly, for example a timer already exists with the specified timer ID.</li> <li> <b>TimerFired</b>: A timer, previously started for this workflow execution, fired.</li> <li> <b>TimerCanceled</b>: A timer, previously started for this workflow execution, was successfully canceled.</li> <li> <b>CancelTimerFailed</b>: Failed to process CancelTimer decision. This happens when the decision is not configured properly, for example no timer exists with the specified timer ID.</li> <li> <b>StartChildWorkflowExecutionInitiated</b>: A request was made to start a child workflow execution.</li> <li> <b>StartChildWorkflowExecutionFailed</b>: Failed to process StartChildWorkflowExecution decision. This happens when the decision is not configured properly, for example the workflow type specified is not registered.</li> <li> <b>ChildWorkflowExecutionStarted</b>: A child workflow execution was successfully started.</li> <li> <b>ChildWorkflowExecutionCompleted</b>: A child workflow execution, started by this workflow execution, completed successfully and was closed.</li> <li> <b>ChildWorkflowExecutionFailed</b>: A child workflow execution, started by this workflow execution, failed to complete successfully and was closed.</li> <li> <b>ChildWorkflowExecutionTimedOut</b>: A child workflow execution, started by this workflow execution, timed out and was closed.</li> <li> <b>ChildWorkflowExecutionCanceled</b>: A child workflow execution, started by this workflow execution, was canceled and closed.</li> <li> <b>ChildWorkflowExecutionTerminated</b>: A child workflow execution, started by this workflow execution, was terminated.</li> <li> <b>SignalExternalWorkflowExecutionInitiated</b>: A request to signal an external workflow was made.</li> <li> <b>ExternalWorkflowExecutionSignaled</b>: A signal, requested by this workflow execution, was successfully delivered to the target external workflow execution.</li> <li> <b>SignalExternalWorkflowExecutionFailed</b>: The request to signal an external workflow execution failed.</li> <li> <b>RequestCancelExternalWorkflowExecutionInitiated</b>: A request was made to request the cancellation of an external workflow execution.</li> <li> <b>ExternalWorkflowExecutionCancelRequested</b>: Request to cancel an external workflow execution was successfully delivered to the target execution.</li> <li> <b>RequestCancelExternalWorkflowExecutionFailed</b>: Request to cancel an external workflow execution failed.</li> <li> <b>LambdaFunctionScheduled</b>: An AWS Lambda function was scheduled for execution.</li> <li> <b>LambdaFunctionStarted</b>: The scheduled function was invoked in the AWS Lambda service.</li> <li> <b>LambdaFunctionCompleted</b>: The AWS Lambda function successfully completed.</li> <li> <b>LambdaFunctionFailed</b>: The AWS Lambda function execution failed.</li> <li> <b>LambdaFunctionTimedOut</b>: The AWS Lambda function execution timed out.</li> <li> <b>ScheduleLambdaFunctionFailed</b>: Failed to process ScheduleLambdaFunction decision. This happens when the workflow execution does not have the proper IAM role attached to invoke AWS Lambda functions.</li> <li> <b>StartLambdaFunctionFailed</b>: Failed to invoke the scheduled function in the AWS Lambda service. This happens when the AWS Lambda service is not available in the current region, or received too many requests.</li> </ul>
-- @param _workflowExecutionCancelRequestedEventAttributes [WorkflowExecutionCancelRequestedEventAttributes] <p>If the event is of type <code>WorkflowExecutionCancelRequested</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _requestCancelExternalWorkflowExecutionInitiatedEventAttributes [RequestCancelExternalWorkflowExecutionInitiatedEventAttributes] <p>If the event is of type <code>RequestCancelExternalWorkflowExecutionInitiated</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _completeWorkflowExecutionFailedEventAttributes [CompleteWorkflowExecutionFailedEventAttributes] <p>If the event is of type <code>CompleteWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _childWorkflowExecutionStartedEventAttributes [ChildWorkflowExecutionStartedEventAttributes] <p>If the event is of type <code>ChildWorkflowExecutionStarted</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _activityTaskScheduledEventAttributes [ActivityTaskScheduledEventAttributes] <p>If the event is of type <code>ActivityTaskScheduled</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _eventType [EventType] <p>The type of the history event.</p>
-- @param _decisionTaskTimedOutEventAttributes [DecisionTaskTimedOutEventAttributes] <p>If the event is of type <code>DecisionTaskTimedOut</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _workflowExecutionTimedOutEventAttributes [WorkflowExecutionTimedOutEventAttributes] <p>If the event is of type <code>WorkflowExecutionTimedOut</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _cancelWorkflowExecutionFailedEventAttributes [CancelWorkflowExecutionFailedEventAttributes] <p>If the event is of type <code>CancelWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _eventTimestamp [Timestamp] <p>The date and time when the event occurred.</p>
-- @param _lambdaFunctionCompletedEventAttributes [LambdaFunctionCompletedEventAttributes] 
-- @param _timerCanceledEventAttributes [TimerCanceledEventAttributes] <p>If the event is of type <code>TimerCanceled</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _startChildWorkflowExecutionFailedEventAttributes [StartChildWorkflowExecutionFailedEventAttributes] <p>If the event is of type <code>StartChildWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _eventId [EventId] <p>The system generated ID of the event. This ID uniquely identifies the event with in the workflow execution history.</p>
-- @param _workflowExecutionContinuedAsNewEventAttributes [WorkflowExecutionContinuedAsNewEventAttributes] <p>If the event is of type <code>WorkflowExecutionContinuedAsNew</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _childWorkflowExecutionTimedOutEventAttributes [ChildWorkflowExecutionTimedOutEventAttributes] <p>If the event is of type <code>ChildWorkflowExecutionTimedOut</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _childWorkflowExecutionCanceledEventAttributes [ChildWorkflowExecutionCanceledEventAttributes] <p>If the event is of type <code>ChildWorkflowExecutionCanceled</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _activityTaskStartedEventAttributes [ActivityTaskStartedEventAttributes] <p>If the event is of type <code>ActivityTaskStarted</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _activityTaskCompletedEventAttributes [ActivityTaskCompletedEventAttributes] <p>If the event is of type <code>ActivityTaskCompleted</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _activityTaskFailedEventAttributes [ActivityTaskFailedEventAttributes] <p>If the event is of type <code>ActivityTaskFailed</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _signalExternalWorkflowExecutionInitiatedEventAttributes [SignalExternalWorkflowExecutionInitiatedEventAttributes] <p>If the event is of type <code>SignalExternalWorkflowExecutionInitiated</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _recordMarkerFailedEventAttributes [RecordMarkerFailedEventAttributes] <p>If the event is of type <code>DecisionTaskFailed</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _externalWorkflowExecutionSignaledEventAttributes [ExternalWorkflowExecutionSignaledEventAttributes] <p>If the event is of type <code>ExternalWorkflowExecutionSignaled</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _lambdaFunctionTimedOutEventAttributes [LambdaFunctionTimedOutEventAttributes] 
-- @param _childWorkflowExecutionCompletedEventAttributes [ChildWorkflowExecutionCompletedEventAttributes] <p>If the event is of type <code>ChildWorkflowExecutionCompleted</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _startLambdaFunctionFailedEventAttributes [StartLambdaFunctionFailedEventAttributes] 
-- @param _workflowExecutionSignaledEventAttributes [WorkflowExecutionSignaledEventAttributes] <p>If the event is of type <code>WorkflowExecutionSignaled</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _scheduleActivityTaskFailedEventAttributes [ScheduleActivityTaskFailedEventAttributes] <p>If the event is of type <code>ScheduleActivityTaskFailed</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _childWorkflowExecutionTerminatedEventAttributes [ChildWorkflowExecutionTerminatedEventAttributes] <p>If the event is of type <code>ChildWorkflowExecutionTerminated</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _externalWorkflowExecutionCancelRequestedEventAttributes [ExternalWorkflowExecutionCancelRequestedEventAttributes] <p>If the event is of type <code>ExternalWorkflowExecutionCancelRequested</code> then this member is set and provides detailed information about the event. It is not set for other event types. </p>
-- @param _workflowExecutionCanceledEventAttributes [WorkflowExecutionCanceledEventAttributes] <p>If the event is of type <code>WorkflowExecutionCanceled</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _requestCancelExternalWorkflowExecutionFailedEventAttributes [RequestCancelExternalWorkflowExecutionFailedEventAttributes] <p>If the event is of type <code>RequestCancelExternalWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _workflowExecutionTerminatedEventAttributes [WorkflowExecutionTerminatedEventAttributes] <p>If the event is of type <code>WorkflowExecutionTerminated</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _decisionTaskScheduledEventAttributes [DecisionTaskScheduledEventAttributes] <p>If the event is of type <code>DecisionTaskScheduled</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _lambdaFunctionFailedEventAttributes [LambdaFunctionFailedEventAttributes] 
-- @param _activityTaskCanceledEventAttributes [ActivityTaskCanceledEventAttributes] <p>If the event is of type <code>ActivityTaskCanceled</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _cancelTimerFailedEventAttributes [CancelTimerFailedEventAttributes] <p>If the event is of type <code>CancelTimerFailed</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _startTimerFailedEventAttributes [StartTimerFailedEventAttributes] <p>If the event is of type <code>StartTimerFailed</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _timerFiredEventAttributes [TimerFiredEventAttributes] <p>If the event is of type <code>TimerFired</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _failWorkflowExecutionFailedEventAttributes [FailWorkflowExecutionFailedEventAttributes] <p>If the event is of type <code>FailWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _workflowExecutionStartedEventAttributes [WorkflowExecutionStartedEventAttributes] <p>If the event is of type <code>WorkflowExecutionStarted</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _decisionTaskCompletedEventAttributes [DecisionTaskCompletedEventAttributes] <p>If the event is of type <code>DecisionTaskCompleted</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _workflowExecutionFailedEventAttributes [WorkflowExecutionFailedEventAttributes] <p>If the event is of type <code>WorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _timerStartedEventAttributes [TimerStartedEventAttributes] <p>If the event is of type <code>TimerStarted</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _requestCancelActivityTaskFailedEventAttributes [RequestCancelActivityTaskFailedEventAttributes] <p>If the event is of type <code>RequestCancelActivityTaskFailed</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _activityTaskTimedOutEventAttributes [ActivityTaskTimedOutEventAttributes] <p>If the event is of type <code>ActivityTaskTimedOut</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _continueAsNewWorkflowExecutionFailedEventAttributes [ContinueAsNewWorkflowExecutionFailedEventAttributes] <p>If the event is of type <code>ContinueAsNewWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _signalExternalWorkflowExecutionFailedEventAttributes [SignalExternalWorkflowExecutionFailedEventAttributes] <p>If the event is of type <code>SignalExternalWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _startChildWorkflowExecutionInitiatedEventAttributes [StartChildWorkflowExecutionInitiatedEventAttributes] <p>If the event is of type <code>StartChildWorkflowExecutionInitiated</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _markerRecordedEventAttributes [MarkerRecordedEventAttributes] <p>If the event is of type <code>MarkerRecorded</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _lambdaFunctionScheduledEventAttributes [LambdaFunctionScheduledEventAttributes] 
-- @param _scheduleLambdaFunctionFailedEventAttributes [ScheduleLambdaFunctionFailedEventAttributes] 
-- @param _workflowExecutionCompletedEventAttributes [WorkflowExecutionCompletedEventAttributes] <p>If the event is of type <code>WorkflowExecutionCompleted</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _decisionTaskStartedEventAttributes [DecisionTaskStartedEventAttributes] <p>If the event is of type <code>DecisionTaskStarted</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _childWorkflowExecutionFailedEventAttributes [ChildWorkflowExecutionFailedEventAttributes] <p>If the event is of type <code>ChildWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _activityTaskCancelRequestedEventAttributes [ActivityTaskCancelRequestedEventAttributes] <p>If the event is of type <code>ActivityTaskcancelRequested</code> then this member is set and provides detailed information about the event. It is not set for other event types.</p>
-- @param _lambdaFunctionStartedEventAttributes [LambdaFunctionStartedEventAttributes] 
-- Required parameter: eventTimestamp
-- Required parameter: eventType
-- Required parameter: eventId
function M.HistoryEvent(_workflowExecutionCancelRequestedEventAttributes, _requestCancelExternalWorkflowExecutionInitiatedEventAttributes, _completeWorkflowExecutionFailedEventAttributes, _childWorkflowExecutionStartedEventAttributes, _activityTaskScheduledEventAttributes, _eventType, _decisionTaskTimedOutEventAttributes, _workflowExecutionTimedOutEventAttributes, _cancelWorkflowExecutionFailedEventAttributes, _eventTimestamp, _lambdaFunctionCompletedEventAttributes, _timerCanceledEventAttributes, _startChildWorkflowExecutionFailedEventAttributes, _eventId, _workflowExecutionContinuedAsNewEventAttributes, _childWorkflowExecutionTimedOutEventAttributes, _childWorkflowExecutionCanceledEventAttributes, _activityTaskStartedEventAttributes, _activityTaskCompletedEventAttributes, _activityTaskFailedEventAttributes, _signalExternalWorkflowExecutionInitiatedEventAttributes, _recordMarkerFailedEventAttributes, _externalWorkflowExecutionSignaledEventAttributes, _lambdaFunctionTimedOutEventAttributes, _childWorkflowExecutionCompletedEventAttributes, _startLambdaFunctionFailedEventAttributes, _workflowExecutionSignaledEventAttributes, _scheduleActivityTaskFailedEventAttributes, _childWorkflowExecutionTerminatedEventAttributes, _externalWorkflowExecutionCancelRequestedEventAttributes, _workflowExecutionCanceledEventAttributes, _requestCancelExternalWorkflowExecutionFailedEventAttributes, _workflowExecutionTerminatedEventAttributes, _decisionTaskScheduledEventAttributes, _lambdaFunctionFailedEventAttributes, _activityTaskCanceledEventAttributes, _cancelTimerFailedEventAttributes, _startTimerFailedEventAttributes, _timerFiredEventAttributes, _failWorkflowExecutionFailedEventAttributes, _workflowExecutionStartedEventAttributes, _decisionTaskCompletedEventAttributes, _workflowExecutionFailedEventAttributes, _timerStartedEventAttributes, _requestCancelActivityTaskFailedEventAttributes, _activityTaskTimedOutEventAttributes, _continueAsNewWorkflowExecutionFailedEventAttributes, _signalExternalWorkflowExecutionFailedEventAttributes, _startChildWorkflowExecutionInitiatedEventAttributes, _markerRecordedEventAttributes, _lambdaFunctionScheduledEventAttributes, _scheduleLambdaFunctionFailedEventAttributes, _workflowExecutionCompletedEventAttributes, _decisionTaskStartedEventAttributes, _childWorkflowExecutionFailedEventAttributes, _activityTaskCancelRequestedEventAttributes, _lambdaFunctionStartedEventAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HistoryEvent")
	local t = { 
		["workflowExecutionCancelRequestedEventAttributes"] = _workflowExecutionCancelRequestedEventAttributes,
		["requestCancelExternalWorkflowExecutionInitiatedEventAttributes"] = _requestCancelExternalWorkflowExecutionInitiatedEventAttributes,
		["completeWorkflowExecutionFailedEventAttributes"] = _completeWorkflowExecutionFailedEventAttributes,
		["childWorkflowExecutionStartedEventAttributes"] = _childWorkflowExecutionStartedEventAttributes,
		["activityTaskScheduledEventAttributes"] = _activityTaskScheduledEventAttributes,
		["eventType"] = _eventType,
		["decisionTaskTimedOutEventAttributes"] = _decisionTaskTimedOutEventAttributes,
		["workflowExecutionTimedOutEventAttributes"] = _workflowExecutionTimedOutEventAttributes,
		["cancelWorkflowExecutionFailedEventAttributes"] = _cancelWorkflowExecutionFailedEventAttributes,
		["eventTimestamp"] = _eventTimestamp,
		["lambdaFunctionCompletedEventAttributes"] = _lambdaFunctionCompletedEventAttributes,
		["timerCanceledEventAttributes"] = _timerCanceledEventAttributes,
		["startChildWorkflowExecutionFailedEventAttributes"] = _startChildWorkflowExecutionFailedEventAttributes,
		["eventId"] = _eventId,
		["workflowExecutionContinuedAsNewEventAttributes"] = _workflowExecutionContinuedAsNewEventAttributes,
		["childWorkflowExecutionTimedOutEventAttributes"] = _childWorkflowExecutionTimedOutEventAttributes,
		["childWorkflowExecutionCanceledEventAttributes"] = _childWorkflowExecutionCanceledEventAttributes,
		["activityTaskStartedEventAttributes"] = _activityTaskStartedEventAttributes,
		["activityTaskCompletedEventAttributes"] = _activityTaskCompletedEventAttributes,
		["activityTaskFailedEventAttributes"] = _activityTaskFailedEventAttributes,
		["signalExternalWorkflowExecutionInitiatedEventAttributes"] = _signalExternalWorkflowExecutionInitiatedEventAttributes,
		["recordMarkerFailedEventAttributes"] = _recordMarkerFailedEventAttributes,
		["externalWorkflowExecutionSignaledEventAttributes"] = _externalWorkflowExecutionSignaledEventAttributes,
		["lambdaFunctionTimedOutEventAttributes"] = _lambdaFunctionTimedOutEventAttributes,
		["childWorkflowExecutionCompletedEventAttributes"] = _childWorkflowExecutionCompletedEventAttributes,
		["startLambdaFunctionFailedEventAttributes"] = _startLambdaFunctionFailedEventAttributes,
		["workflowExecutionSignaledEventAttributes"] = _workflowExecutionSignaledEventAttributes,
		["scheduleActivityTaskFailedEventAttributes"] = _scheduleActivityTaskFailedEventAttributes,
		["childWorkflowExecutionTerminatedEventAttributes"] = _childWorkflowExecutionTerminatedEventAttributes,
		["externalWorkflowExecutionCancelRequestedEventAttributes"] = _externalWorkflowExecutionCancelRequestedEventAttributes,
		["workflowExecutionCanceledEventAttributes"] = _workflowExecutionCanceledEventAttributes,
		["requestCancelExternalWorkflowExecutionFailedEventAttributes"] = _requestCancelExternalWorkflowExecutionFailedEventAttributes,
		["workflowExecutionTerminatedEventAttributes"] = _workflowExecutionTerminatedEventAttributes,
		["decisionTaskScheduledEventAttributes"] = _decisionTaskScheduledEventAttributes,
		["lambdaFunctionFailedEventAttributes"] = _lambdaFunctionFailedEventAttributes,
		["activityTaskCanceledEventAttributes"] = _activityTaskCanceledEventAttributes,
		["cancelTimerFailedEventAttributes"] = _cancelTimerFailedEventAttributes,
		["startTimerFailedEventAttributes"] = _startTimerFailedEventAttributes,
		["timerFiredEventAttributes"] = _timerFiredEventAttributes,
		["failWorkflowExecutionFailedEventAttributes"] = _failWorkflowExecutionFailedEventAttributes,
		["workflowExecutionStartedEventAttributes"] = _workflowExecutionStartedEventAttributes,
		["decisionTaskCompletedEventAttributes"] = _decisionTaskCompletedEventAttributes,
		["workflowExecutionFailedEventAttributes"] = _workflowExecutionFailedEventAttributes,
		["timerStartedEventAttributes"] = _timerStartedEventAttributes,
		["requestCancelActivityTaskFailedEventAttributes"] = _requestCancelActivityTaskFailedEventAttributes,
		["activityTaskTimedOutEventAttributes"] = _activityTaskTimedOutEventAttributes,
		["continueAsNewWorkflowExecutionFailedEventAttributes"] = _continueAsNewWorkflowExecutionFailedEventAttributes,
		["signalExternalWorkflowExecutionFailedEventAttributes"] = _signalExternalWorkflowExecutionFailedEventAttributes,
		["startChildWorkflowExecutionInitiatedEventAttributes"] = _startChildWorkflowExecutionInitiatedEventAttributes,
		["markerRecordedEventAttributes"] = _markerRecordedEventAttributes,
		["lambdaFunctionScheduledEventAttributes"] = _lambdaFunctionScheduledEventAttributes,
		["scheduleLambdaFunctionFailedEventAttributes"] = _scheduleLambdaFunctionFailedEventAttributes,
		["workflowExecutionCompletedEventAttributes"] = _workflowExecutionCompletedEventAttributes,
		["decisionTaskStartedEventAttributes"] = _decisionTaskStartedEventAttributes,
		["childWorkflowExecutionFailedEventAttributes"] = _childWorkflowExecutionFailedEventAttributes,
		["activityTaskCancelRequestedEventAttributes"] = _activityTaskCancelRequestedEventAttributes,
		["lambdaFunctionStartedEventAttributes"] = _lambdaFunctionStartedEventAttributes,
	}
	asserts.AssertHistoryEvent(t)
	return t
end

keys.CountOpenWorkflowExecutionsInput = { ["domain"] = true, ["executionFilter"] = true, ["typeFilter"] = true, ["startTimeFilter"] = true, ["tagFilter"] = true, nil }

function asserts.AssertCountOpenWorkflowExecutionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CountOpenWorkflowExecutionsInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["startTimeFilter"], "Expected key startTimeFilter to exist in table")
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["executionFilter"] then asserts.AssertWorkflowExecutionFilter(struct["executionFilter"]) end
	if struct["typeFilter"] then asserts.AssertWorkflowTypeFilter(struct["typeFilter"]) end
	if struct["startTimeFilter"] then asserts.AssertExecutionTimeFilter(struct["startTimeFilter"]) end
	if struct["tagFilter"] then asserts.AssertTagFilter(struct["tagFilter"]) end
	for k,_ in pairs(struct) do
		assert(keys.CountOpenWorkflowExecutionsInput[k], "CountOpenWorkflowExecutionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CountOpenWorkflowExecutionsInput
--  
-- @param _domain [DomainName] <p>The name of the domain containing the workflow executions to count.</p>
-- @param _executionFilter [WorkflowExecutionFilter] <p>If specified, only workflow executions matching the <code>WorkflowId</code> in the filter are counted.</p> <note><code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</note>
-- @param _typeFilter [WorkflowTypeFilter] <p>Specifies the type of the workflow executions to be counted.</p> <note><code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</note>
-- @param _startTimeFilter [ExecutionTimeFilter] <p>Specifies the start time criteria that workflow executions must meet in order to be counted.</p>
-- @param _tagFilter [TagFilter] <p>If specified, only executions that have a tag that matches the filter are counted.</p> <note><code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</note>
-- Required parameter: domain
-- Required parameter: startTimeFilter
function M.CountOpenWorkflowExecutionsInput(_domain, _executionFilter, _typeFilter, _startTimeFilter, _tagFilter, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CountOpenWorkflowExecutionsInput")
	local t = { 
		["domain"] = _domain,
		["executionFilter"] = _executionFilter,
		["typeFilter"] = _typeFilter,
		["startTimeFilter"] = _startTimeFilter,
		["tagFilter"] = _tagFilter,
	}
	asserts.AssertCountOpenWorkflowExecutionsInput(t)
	return t
end

keys.StartChildWorkflowExecutionFailedEventAttributes = { ["control"] = true, ["workflowId"] = true, ["initiatedEventId"] = true, ["decisionTaskCompletedEventId"] = true, ["workflowType"] = true, ["cause"] = true, nil }

function asserts.AssertStartChildWorkflowExecutionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartChildWorkflowExecutionFailedEventAttributes to be of type 'table'")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["control"] then asserts.AssertData(struct["control"]) end
	if struct["workflowId"] then asserts.AssertWorkflowId(struct["workflowId"]) end
	if struct["initiatedEventId"] then asserts.AssertEventId(struct["initiatedEventId"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["workflowType"] then asserts.AssertWorkflowType(struct["workflowType"]) end
	if struct["cause"] then asserts.AssertStartChildWorkflowExecutionFailedCause(struct["cause"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartChildWorkflowExecutionFailedEventAttributes[k], "StartChildWorkflowExecutionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartChildWorkflowExecutionFailedEventAttributes
-- <p>Provides details of the <code>StartChildWorkflowExecutionFailed</code> event.</p>
-- @param _control [Data] 
-- @param _workflowId [WorkflowId] <p>The <code>workflowId</code> of the child workflow execution.</p>
-- @param _initiatedEventId [EventId] <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> decision to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>StartChildWorkflowExecution</code> decision to request this child workflow execution. This information can be useful for diagnosing problems by tracing back the cause of events.</p>
-- @param _workflowType [WorkflowType] <p>The workflow type provided in the <code>StartChildWorkflowExecution</code> decision that failed.</p>
-- @param _cause [StartChildWorkflowExecutionFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note>If <b>cause</b> is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</note>
-- Required parameter: workflowType
-- Required parameter: cause
-- Required parameter: workflowId
-- Required parameter: initiatedEventId
-- Required parameter: decisionTaskCompletedEventId
function M.StartChildWorkflowExecutionFailedEventAttributes(_control, _workflowId, _initiatedEventId, _decisionTaskCompletedEventId, _workflowType, _cause, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartChildWorkflowExecutionFailedEventAttributes")
	local t = { 
		["control"] = _control,
		["workflowId"] = _workflowId,
		["initiatedEventId"] = _initiatedEventId,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
		["workflowType"] = _workflowType,
		["cause"] = _cause,
	}
	asserts.AssertStartChildWorkflowExecutionFailedEventAttributes(t)
	return t
end

keys.ListOpenWorkflowExecutionsInput = { ["nextPageToken"] = true, ["domain"] = true, ["typeFilter"] = true, ["tagFilter"] = true, ["executionFilter"] = true, ["reverseOrder"] = true, ["startTimeFilter"] = true, ["maximumPageSize"] = true, nil }

function asserts.AssertListOpenWorkflowExecutionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOpenWorkflowExecutionsInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["startTimeFilter"], "Expected key startTimeFilter to exist in table")
	if struct["nextPageToken"] then asserts.AssertPageToken(struct["nextPageToken"]) end
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["typeFilter"] then asserts.AssertWorkflowTypeFilter(struct["typeFilter"]) end
	if struct["tagFilter"] then asserts.AssertTagFilter(struct["tagFilter"]) end
	if struct["executionFilter"] then asserts.AssertWorkflowExecutionFilter(struct["executionFilter"]) end
	if struct["reverseOrder"] then asserts.AssertReverseOrder(struct["reverseOrder"]) end
	if struct["startTimeFilter"] then asserts.AssertExecutionTimeFilter(struct["startTimeFilter"]) end
	if struct["maximumPageSize"] then asserts.AssertPageSize(struct["maximumPageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListOpenWorkflowExecutionsInput[k], "ListOpenWorkflowExecutionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOpenWorkflowExecutionsInput
--  
-- @param _nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- @param _domain [DomainName] <p>The name of the domain that contains the workflow executions to list.</p>
-- @param _typeFilter [WorkflowTypeFilter] <p>If specified, only executions of the type specified in the filter are returned.</p> <note><code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</note>
-- @param _tagFilter [TagFilter] <p>If specified, only executions that have the matching tag are listed.</p> <note><code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</note>
-- @param _executionFilter [WorkflowExecutionFilter] <p>If specified, only workflow executions matching the workflow ID specified in the filter are returned.</p> <note><code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</note>
-- @param _reverseOrder [ReverseOrder] <p>When set to <code>true</code>, returns the results in reverse order. By default the results are returned in descending order of the start time of the executions.</p>
-- @param _startTimeFilter [ExecutionTimeFilter] <p>Workflow executions are included in the returned results based on whether their start times are within the range specified by this filter.</p>
-- @param _maximumPageSize [PageSize] <p>The maximum number of results that will be returned per call. <code>nextPageToken</code> can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size <i>smaller</i> than the maximum.</p> <p>This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.</p>
-- Required parameter: domain
-- Required parameter: startTimeFilter
function M.ListOpenWorkflowExecutionsInput(_nextPageToken, _domain, _typeFilter, _tagFilter, _executionFilter, _reverseOrder, _startTimeFilter, _maximumPageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOpenWorkflowExecutionsInput")
	local t = { 
		["nextPageToken"] = _nextPageToken,
		["domain"] = _domain,
		["typeFilter"] = _typeFilter,
		["tagFilter"] = _tagFilter,
		["executionFilter"] = _executionFilter,
		["reverseOrder"] = _reverseOrder,
		["startTimeFilter"] = _startTimeFilter,
		["maximumPageSize"] = _maximumPageSize,
	}
	asserts.AssertListOpenWorkflowExecutionsInput(t)
	return t
end

keys.DefaultUndefinedFault = { ["message"] = true, nil }

function asserts.AssertDefaultUndefinedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefaultUndefinedFault to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DefaultUndefinedFault[k], "DefaultUndefinedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefaultUndefinedFault
--  
-- @param _message [ErrorMessage] 
function M.DefaultUndefinedFault(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefaultUndefinedFault")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertDefaultUndefinedFault(t)
	return t
end

keys.WorkflowExecution = { ["workflowId"] = true, ["runId"] = true, nil }

function asserts.AssertWorkflowExecution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecution to be of type 'table'")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["runId"], "Expected key runId to exist in table")
	if struct["workflowId"] then asserts.AssertWorkflowId(struct["workflowId"]) end
	if struct["runId"] then asserts.AssertRunId(struct["runId"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowExecution[k], "WorkflowExecution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecution
-- <p>Represents a workflow execution.</p>
-- @param _workflowId [WorkflowId] <p>The user defined identifier associated with the workflow execution.</p>
-- @param _runId [RunId] <p>A system-generated unique identifier for the workflow execution.</p>
-- Required parameter: workflowId
-- Required parameter: runId
function M.WorkflowExecution(_workflowId, _runId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecution")
	local t = { 
		["workflowId"] = _workflowId,
		["runId"] = _runId,
	}
	asserts.AssertWorkflowExecution(t)
	return t
end

keys.WorkflowExecutionInfos = { ["nextPageToken"] = true, ["executionInfos"] = true, nil }

function asserts.AssertWorkflowExecutionInfos(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionInfos to be of type 'table'")
	assert(struct["executionInfos"], "Expected key executionInfos to exist in table")
	if struct["nextPageToken"] then asserts.AssertPageToken(struct["nextPageToken"]) end
	if struct["executionInfos"] then asserts.AssertWorkflowExecutionInfoList(struct["executionInfos"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowExecutionInfos[k], "WorkflowExecutionInfos contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionInfos
-- <p>Contains a paginated list of information about workflow executions.</p>
-- @param _nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- @param _executionInfos [WorkflowExecutionInfoList] <p>The list of workflow information structures.</p>
-- Required parameter: executionInfos
function M.WorkflowExecutionInfos(_nextPageToken, _executionInfos, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionInfos")
	local t = { 
		["nextPageToken"] = _nextPageToken,
		["executionInfos"] = _executionInfos,
	}
	asserts.AssertWorkflowExecutionInfos(t)
	return t
end

keys.DescribeWorkflowExecutionInput = { ["domain"] = true, ["execution"] = true, nil }

function asserts.AssertDescribeWorkflowExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkflowExecutionInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["execution"], "Expected key execution to exist in table")
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["execution"] then asserts.AssertWorkflowExecution(struct["execution"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeWorkflowExecutionInput[k], "DescribeWorkflowExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkflowExecutionInput
--  
-- @param _domain [DomainName] <p>The name of the domain containing the workflow execution.</p>
-- @param _execution [WorkflowExecution] <p>The workflow execution to describe.</p>
-- Required parameter: domain
-- Required parameter: execution
function M.DescribeWorkflowExecutionInput(_domain, _execution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkflowExecutionInput")
	local t = { 
		["domain"] = _domain,
		["execution"] = _execution,
	}
	asserts.AssertDescribeWorkflowExecutionInput(t)
	return t
end

keys.RequestCancelExternalWorkflowExecutionDecisionAttributes = { ["control"] = true, ["workflowId"] = true, ["runId"] = true, nil }

function asserts.AssertRequestCancelExternalWorkflowExecutionDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestCancelExternalWorkflowExecutionDecisionAttributes to be of type 'table'")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	if struct["control"] then asserts.AssertData(struct["control"]) end
	if struct["workflowId"] then asserts.AssertWorkflowId(struct["workflowId"]) end
	if struct["runId"] then asserts.AssertRunIdOptional(struct["runId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestCancelExternalWorkflowExecutionDecisionAttributes[k], "RequestCancelExternalWorkflowExecutionDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestCancelExternalWorkflowExecutionDecisionAttributes
-- <p>Provides details of the <code>RequestCancelExternalWorkflowExecution</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-- @param _control [Data] <p><i>Optional.</i> Data attached to the event that can be used by the decider in subsequent workflow tasks.</p>
-- @param _workflowId [WorkflowId] <p><b>Required.</b> The <code>workflowId</code> of the external workflow execution to cancel.</p>
-- @param _runId [RunIdOptional] <p>The <code>runId</code> of the external workflow execution to cancel.</p>
-- Required parameter: workflowId
function M.RequestCancelExternalWorkflowExecutionDecisionAttributes(_control, _workflowId, _runId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestCancelExternalWorkflowExecutionDecisionAttributes")
	local t = { 
		["control"] = _control,
		["workflowId"] = _workflowId,
		["runId"] = _runId,
	}
	asserts.AssertRequestCancelExternalWorkflowExecutionDecisionAttributes(t)
	return t
end

keys.WorkflowTypeInfos = { ["nextPageToken"] = true, ["typeInfos"] = true, nil }

function asserts.AssertWorkflowTypeInfos(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowTypeInfos to be of type 'table'")
	assert(struct["typeInfos"], "Expected key typeInfos to exist in table")
	if struct["nextPageToken"] then asserts.AssertPageToken(struct["nextPageToken"]) end
	if struct["typeInfos"] then asserts.AssertWorkflowTypeInfoList(struct["typeInfos"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowTypeInfos[k], "WorkflowTypeInfos contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowTypeInfos
-- <p>Contains a paginated list of information structures about workflow types.</p>
-- @param _nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- @param _typeInfos [WorkflowTypeInfoList] <p>The list of workflow type information.</p>
-- Required parameter: typeInfos
function M.WorkflowTypeInfos(_nextPageToken, _typeInfos, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowTypeInfos")
	local t = { 
		["nextPageToken"] = _nextPageToken,
		["typeInfos"] = _typeInfos,
	}
	asserts.AssertWorkflowTypeInfos(t)
	return t
end

keys.RegisterDomainInput = { ["name"] = true, ["workflowExecutionRetentionPeriodInDays"] = true, ["description"] = true, nil }

function asserts.AssertRegisterDomainInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterDomainInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["workflowExecutionRetentionPeriodInDays"], "Expected key workflowExecutionRetentionPeriodInDays to exist in table")
	if struct["name"] then asserts.AssertDomainName(struct["name"]) end
	if struct["workflowExecutionRetentionPeriodInDays"] then asserts.AssertDurationInDays(struct["workflowExecutionRetentionPeriodInDays"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterDomainInput[k], "RegisterDomainInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterDomainInput
--  
-- @param _name [DomainName] <p>Name of the domain to register. The name must be unique in the region that the domain is registered in.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.</p>
-- @param _workflowExecutionRetentionPeriodInDays [DurationInDays] <p>The duration (in days) that records and histories of workflow executions on the domain should be kept by the service. After the retention period, the workflow execution is not available in the results of visibility calls.</p> <p>If you pass the value <code>NONE</code> or <code>0</code> (zero), then the workflow execution history will not be retained. As soon as the workflow execution completes, the execution record and its history are deleted.</p> <p>The maximum workflow execution retention period is 90 days. For more information about Amazon SWF service limits, see: <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-limits.html">Amazon SWF Service Limits</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- @param _description [Description] <p>A text description of the domain.</p>
-- Required parameter: name
-- Required parameter: workflowExecutionRetentionPeriodInDays
function M.RegisterDomainInput(_name, _workflowExecutionRetentionPeriodInDays, _description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterDomainInput")
	local t = { 
		["name"] = _name,
		["workflowExecutionRetentionPeriodInDays"] = _workflowExecutionRetentionPeriodInDays,
		["description"] = _description,
	}
	asserts.AssertRegisterDomainInput(t)
	return t
end

keys.RequestCancelActivityTaskFailedEventAttributes = { ["activityId"] = true, ["cause"] = true, ["decisionTaskCompletedEventId"] = true, nil }

function asserts.AssertRequestCancelActivityTaskFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestCancelActivityTaskFailedEventAttributes to be of type 'table'")
	assert(struct["activityId"], "Expected key activityId to exist in table")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["activityId"] then asserts.AssertActivityId(struct["activityId"]) end
	if struct["cause"] then asserts.AssertRequestCancelActivityTaskFailedCause(struct["cause"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestCancelActivityTaskFailedEventAttributes[k], "RequestCancelActivityTaskFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestCancelActivityTaskFailedEventAttributes
-- <p>Provides details of the <code>RequestCancelActivityTaskFailed</code> event.</p>
-- @param _activityId [ActivityId] <p>The activityId provided in the <code>RequestCancelActivityTask</code> decision that failed.</p>
-- @param _cause [RequestCancelActivityTaskFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note>If <b>cause</b> is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</note>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>RequestCancelActivityTask</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required parameter: activityId
-- Required parameter: cause
-- Required parameter: decisionTaskCompletedEventId
function M.RequestCancelActivityTaskFailedEventAttributes(_activityId, _cause, _decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestCancelActivityTaskFailedEventAttributes")
	local t = { 
		["activityId"] = _activityId,
		["cause"] = _cause,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
	}
	asserts.AssertRequestCancelActivityTaskFailedEventAttributes(t)
	return t
end

keys.WorkflowExecutionStartedEventAttributes = { ["taskList"] = true, ["parentWorkflowExecution"] = true, ["parentInitiatedEventId"] = true, ["taskStartToCloseTimeout"] = true, ["taskPriority"] = true, ["lambdaRole"] = true, ["continuedExecutionRunId"] = true, ["childPolicy"] = true, ["executionStartToCloseTimeout"] = true, ["input"] = true, ["workflowType"] = true, ["tagList"] = true, nil }

function asserts.AssertWorkflowExecutionStartedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionStartedEventAttributes to be of type 'table'")
	assert(struct["childPolicy"], "Expected key childPolicy to exist in table")
	assert(struct["taskList"], "Expected key taskList to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	if struct["taskList"] then asserts.AssertTaskList(struct["taskList"]) end
	if struct["parentWorkflowExecution"] then asserts.AssertWorkflowExecution(struct["parentWorkflowExecution"]) end
	if struct["parentInitiatedEventId"] then asserts.AssertEventId(struct["parentInitiatedEventId"]) end
	if struct["taskStartToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["taskStartToCloseTimeout"]) end
	if struct["taskPriority"] then asserts.AssertTaskPriority(struct["taskPriority"]) end
	if struct["lambdaRole"] then asserts.AssertArn(struct["lambdaRole"]) end
	if struct["continuedExecutionRunId"] then asserts.AssertRunIdOptional(struct["continuedExecutionRunId"]) end
	if struct["childPolicy"] then asserts.AssertChildPolicy(struct["childPolicy"]) end
	if struct["executionStartToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["executionStartToCloseTimeout"]) end
	if struct["input"] then asserts.AssertData(struct["input"]) end
	if struct["workflowType"] then asserts.AssertWorkflowType(struct["workflowType"]) end
	if struct["tagList"] then asserts.AssertTagList(struct["tagList"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowExecutionStartedEventAttributes[k], "WorkflowExecutionStartedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionStartedEventAttributes
-- <p>Provides details of <code>WorkflowExecutionStarted</code> event.</p>
-- @param _taskList [TaskList] <p>The name of the task list for scheduling the decision tasks for this workflow execution.</p>
-- @param _parentWorkflowExecution [WorkflowExecution] <p>The source workflow execution that started this workflow execution. The member is not set if the workflow execution was not started by a workflow.</p>
-- @param _parentInitiatedEventId [EventId] <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> decision to start this workflow execution. The source event with this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _taskStartToCloseTimeout [DurationInSecondsOptional] <p>The maximum duration of decision tasks for this workflow type.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p>
-- @param _taskPriority [TaskPriority] 
-- @param _lambdaRole [Arn] <p>The IAM role attached to this workflow execution to use when invoking AWS Lambda functions.</p>
-- @param _continuedExecutionRunId [RunIdOptional] <p>If this workflow execution was started due to a <code>ContinueAsNewWorkflowExecution</code> decision, then it contains the <code>runId</code> of the previous workflow execution that was closed and continued as this execution.</p>
-- @param _childPolicy [ChildPolicy] <p>The policy to use for the child workflow executions if this workflow execution is terminated, by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout.</p> <p>The supported child policies are:</p> <ul> <li><b>TERMINATE:</b> the child executions will be terminated.</li> <li><b>REQUEST_CANCEL:</b> a request to cancel will be attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</li> <li><b>ABANDON:</b> no action will be taken. The child executions will continue to run.</li> </ul>
-- @param _executionStartToCloseTimeout [DurationInSecondsOptional] <p>The maximum duration for this workflow execution.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p>
-- @param _input [Data] <p>The input provided to the workflow execution (if any).</p>
-- @param _workflowType [WorkflowType] <p>The workflow type of this execution.</p>
-- @param _tagList [TagList] <p>The list of tags associated with this workflow execution. An execution can have up to 5 tags.</p>
-- Required parameter: childPolicy
-- Required parameter: taskList
-- Required parameter: workflowType
function M.WorkflowExecutionStartedEventAttributes(_taskList, _parentWorkflowExecution, _parentInitiatedEventId, _taskStartToCloseTimeout, _taskPriority, _lambdaRole, _continuedExecutionRunId, _childPolicy, _executionStartToCloseTimeout, _input, _workflowType, _tagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionStartedEventAttributes")
	local t = { 
		["taskList"] = _taskList,
		["parentWorkflowExecution"] = _parentWorkflowExecution,
		["parentInitiatedEventId"] = _parentInitiatedEventId,
		["taskStartToCloseTimeout"] = _taskStartToCloseTimeout,
		["taskPriority"] = _taskPriority,
		["lambdaRole"] = _lambdaRole,
		["continuedExecutionRunId"] = _continuedExecutionRunId,
		["childPolicy"] = _childPolicy,
		["executionStartToCloseTimeout"] = _executionStartToCloseTimeout,
		["input"] = _input,
		["workflowType"] = _workflowType,
		["tagList"] = _tagList,
	}
	asserts.AssertWorkflowExecutionStartedEventAttributes(t)
	return t
end

keys.WorkflowTypeFilter = { ["version"] = true, ["name"] = true, nil }

function asserts.AssertWorkflowTypeFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowTypeFilter to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["version"] then asserts.AssertVersionOptional(struct["version"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowTypeFilter[k], "WorkflowTypeFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowTypeFilter
-- <p>Used to filter workflow execution query results by type. Each parameter, if specified, defines a rule that must be satisfied by each returned result.</p>
-- @param _version [VersionOptional] <p>Version of the workflow type.</p>
-- @param _name [Name] <p><b>Required.</b> Name of the workflow type.</p>
-- Required parameter: name
function M.WorkflowTypeFilter(_version, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowTypeFilter")
	local t = { 
		["version"] = _version,
		["name"] = _name,
	}
	asserts.AssertWorkflowTypeFilter(t)
	return t
end

keys.CountPendingDecisionTasksInput = { ["domain"] = true, ["taskList"] = true, nil }

function asserts.AssertCountPendingDecisionTasksInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CountPendingDecisionTasksInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["taskList"], "Expected key taskList to exist in table")
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["taskList"] then asserts.AssertTaskList(struct["taskList"]) end
	for k,_ in pairs(struct) do
		assert(keys.CountPendingDecisionTasksInput[k], "CountPendingDecisionTasksInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CountPendingDecisionTasksInput
--  
-- @param _domain [DomainName] <p>The name of the domain that contains the task list.</p>
-- @param _taskList [TaskList] <p>The name of the task list.</p>
-- Required parameter: domain
-- Required parameter: taskList
function M.CountPendingDecisionTasksInput(_domain, _taskList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CountPendingDecisionTasksInput")
	local t = { 
		["domain"] = _domain,
		["taskList"] = _taskList,
	}
	asserts.AssertCountPendingDecisionTasksInput(t)
	return t
end

keys.CancelWorkflowExecutionDecisionAttributes = { ["details"] = true, nil }

function asserts.AssertCancelWorkflowExecutionDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelWorkflowExecutionDecisionAttributes to be of type 'table'")
	if struct["details"] then asserts.AssertData(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelWorkflowExecutionDecisionAttributes[k], "CancelWorkflowExecutionDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelWorkflowExecutionDecisionAttributes
-- <p>Provides details of the <code>CancelWorkflowExecution</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-- @param _details [Data] <p><i>Optional.</i> details of the cancellation.</p>
function M.CancelWorkflowExecutionDecisionAttributes(_details, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelWorkflowExecutionDecisionAttributes")
	local t = { 
		["details"] = _details,
	}
	asserts.AssertCancelWorkflowExecutionDecisionAttributes(t)
	return t
end

keys.ActivityTypeInfos = { ["nextPageToken"] = true, ["typeInfos"] = true, nil }

function asserts.AssertActivityTypeInfos(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTypeInfos to be of type 'table'")
	assert(struct["typeInfos"], "Expected key typeInfos to exist in table")
	if struct["nextPageToken"] then asserts.AssertPageToken(struct["nextPageToken"]) end
	if struct["typeInfos"] then asserts.AssertActivityTypeInfoList(struct["typeInfos"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityTypeInfos[k], "ActivityTypeInfos contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTypeInfos
-- <p>Contains a paginated list of activity type information structures.</p>
-- @param _nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- @param _typeInfos [ActivityTypeInfoList] <p>List of activity type information.</p>
-- Required parameter: typeInfos
function M.ActivityTypeInfos(_nextPageToken, _typeInfos, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTypeInfos")
	local t = { 
		["nextPageToken"] = _nextPageToken,
		["typeInfos"] = _typeInfos,
	}
	asserts.AssertActivityTypeInfos(t)
	return t
end

keys.ActivityTaskStatus = { ["cancelRequested"] = true, nil }

function asserts.AssertActivityTaskStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTaskStatus to be of type 'table'")
	assert(struct["cancelRequested"], "Expected key cancelRequested to exist in table")
	if struct["cancelRequested"] then asserts.AssertCanceled(struct["cancelRequested"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityTaskStatus[k], "ActivityTaskStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTaskStatus
-- <p>Status information about an activity task.</p>
-- @param _cancelRequested [Canceled] <p>Set to <code>true</code> if cancellation of the task is requested.</p>
-- Required parameter: cancelRequested
function M.ActivityTaskStatus(_cancelRequested, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTaskStatus")
	local t = { 
		["cancelRequested"] = _cancelRequested,
	}
	asserts.AssertActivityTaskStatus(t)
	return t
end

keys.CancelTimerFailedEventAttributes = { ["timerId"] = true, ["cause"] = true, ["decisionTaskCompletedEventId"] = true, nil }

function asserts.AssertCancelTimerFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelTimerFailedEventAttributes to be of type 'table'")
	assert(struct["timerId"], "Expected key timerId to exist in table")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["timerId"] then asserts.AssertTimerId(struct["timerId"]) end
	if struct["cause"] then asserts.AssertCancelTimerFailedCause(struct["cause"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelTimerFailedEventAttributes[k], "CancelTimerFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelTimerFailedEventAttributes
-- <p>Provides details of the <code>CancelTimerFailed</code> event.</p>
-- @param _timerId [TimerId] <p>The timerId provided in the <code>CancelTimer</code> decision that failed.</p>
-- @param _cause [CancelTimerFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note>If <b>cause</b> is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</note>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CancelTimer</code> decision to cancel this timer. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required parameter: timerId
-- Required parameter: cause
-- Required parameter: decisionTaskCompletedEventId
function M.CancelTimerFailedEventAttributes(_timerId, _cause, _decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelTimerFailedEventAttributes")
	local t = { 
		["timerId"] = _timerId,
		["cause"] = _cause,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
	}
	asserts.AssertCancelTimerFailedEventAttributes(t)
	return t
end

keys.DecisionTaskTimedOutEventAttributes = { ["startedEventId"] = true, ["timeoutType"] = true, ["scheduledEventId"] = true, nil }

function asserts.AssertDecisionTaskTimedOutEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecisionTaskTimedOutEventAttributes to be of type 'table'")
	assert(struct["timeoutType"], "Expected key timeoutType to exist in table")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then asserts.AssertEventId(struct["startedEventId"]) end
	if struct["timeoutType"] then asserts.AssertDecisionTaskTimeoutType(struct["timeoutType"]) end
	if struct["scheduledEventId"] then asserts.AssertEventId(struct["scheduledEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DecisionTaskTimedOutEventAttributes[k], "DecisionTaskTimedOutEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecisionTaskTimedOutEventAttributes
-- <p>Provides details of the <code>DecisionTaskTimedOut</code> event.</p>
-- @param _startedEventId [EventId] <p>The ID of the <code>DecisionTaskStarted</code> event recorded when this decision task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _timeoutType [DecisionTaskTimeoutType] <p>The type of timeout that expired before the decision task could be completed.</p>
-- @param _scheduledEventId [EventId] <p>The ID of the <code>DecisionTaskScheduled</code> event that was recorded when this decision task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required parameter: timeoutType
-- Required parameter: scheduledEventId
-- Required parameter: startedEventId
function M.DecisionTaskTimedOutEventAttributes(_startedEventId, _timeoutType, _scheduledEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecisionTaskTimedOutEventAttributes")
	local t = { 
		["startedEventId"] = _startedEventId,
		["timeoutType"] = _timeoutType,
		["scheduledEventId"] = _scheduledEventId,
	}
	asserts.AssertDecisionTaskTimedOutEventAttributes(t)
	return t
end

keys.PollForDecisionTaskInput = { ["nextPageToken"] = true, ["domain"] = true, ["taskList"] = true, ["reverseOrder"] = true, ["maximumPageSize"] = true, ["identity"] = true, nil }

function asserts.AssertPollForDecisionTaskInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PollForDecisionTaskInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["taskList"], "Expected key taskList to exist in table")
	if struct["nextPageToken"] then asserts.AssertPageToken(struct["nextPageToken"]) end
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["taskList"] then asserts.AssertTaskList(struct["taskList"]) end
	if struct["reverseOrder"] then asserts.AssertReverseOrder(struct["reverseOrder"]) end
	if struct["maximumPageSize"] then asserts.AssertPageSize(struct["maximumPageSize"]) end
	if struct["identity"] then asserts.AssertIdentity(struct["identity"]) end
	for k,_ in pairs(struct) do
		assert(keys.PollForDecisionTaskInput[k], "PollForDecisionTaskInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PollForDecisionTaskInput
--  
-- @param _nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p> <note>The <code>nextPageToken</code> returned by this action cannot be used with <a>GetWorkflowExecutionHistory</a> to get the next page. You must call <a>PollForDecisionTask</a> again (with the <code>nextPageToken</code>) to retrieve the next page of history records. Calling <a>PollForDecisionTask</a> with a <code>nextPageToken</code> will not return a new decision task.</note>.
-- @param _domain [DomainName] <p>The name of the domain containing the task lists to poll.</p>
-- @param _taskList [TaskList] <p>Specifies the task list to poll for decision tasks.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.</p>
-- @param _reverseOrder [ReverseOrder] <p>When set to <code>true</code>, returns the events in reverse order. By default the results are returned in ascending order of the <code>eventTimestamp</code> of the events.</p>
-- @param _maximumPageSize [PageSize] <p>The maximum number of results that will be returned per call. <code>nextPageToken</code> can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size <i>smaller</i> than the maximum.</p> <p>This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.</p>
-- @param _identity [Identity] <p>Identity of the decider making the request, which is recorded in the DecisionTaskStarted event in the workflow history. This enables diagnostic tracing when problems arise. The form of this identity is user defined.</p>
-- Required parameter: domain
-- Required parameter: taskList
function M.PollForDecisionTaskInput(_nextPageToken, _domain, _taskList, _reverseOrder, _maximumPageSize, _identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PollForDecisionTaskInput")
	local t = { 
		["nextPageToken"] = _nextPageToken,
		["domain"] = _domain,
		["taskList"] = _taskList,
		["reverseOrder"] = _reverseOrder,
		["maximumPageSize"] = _maximumPageSize,
		["identity"] = _identity,
	}
	asserts.AssertPollForDecisionTaskInput(t)
	return t
end

keys.CloseStatusFilter = { ["status"] = true, nil }

function asserts.AssertCloseStatusFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloseStatusFilter to be of type 'table'")
	assert(struct["status"], "Expected key status to exist in table")
	if struct["status"] then asserts.AssertCloseStatus(struct["status"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloseStatusFilter[k], "CloseStatusFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloseStatusFilter
-- <p>Used to filter the closed workflow executions in visibility APIs by their close status.</p>
-- @param _status [CloseStatus] <p><b>Required.</b> The close status that must match the close status of an execution for it to meet the criteria of this filter.</p>
-- Required parameter: status
function M.CloseStatusFilter(_status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloseStatusFilter")
	local t = { 
		["status"] = _status,
	}
	asserts.AssertCloseStatusFilter(t)
	return t
end

keys.UnknownResourceFault = { ["message"] = true, nil }

function asserts.AssertUnknownResourceFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnknownResourceFault to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnknownResourceFault[k], "UnknownResourceFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnknownResourceFault
-- <p>Returned when the named resource cannot be found with in the scope of this operation (region or domain). This could happen if the named resource was never created or is no longer available for this operation.</p>
-- @param _message [ErrorMessage] <p>A description that may help with diagnosing the cause of the fault.</p>
function M.UnknownResourceFault(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnknownResourceFault")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertUnknownResourceFault(t)
	return t
end

keys.TimerFiredEventAttributes = { ["startedEventId"] = true, ["timerId"] = true, nil }

function asserts.AssertTimerFiredEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimerFiredEventAttributes to be of type 'table'")
	assert(struct["timerId"], "Expected key timerId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then asserts.AssertEventId(struct["startedEventId"]) end
	if struct["timerId"] then asserts.AssertTimerId(struct["timerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimerFiredEventAttributes[k], "TimerFiredEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimerFiredEventAttributes
-- <p>Provides details of the <code>TimerFired</code> event.</p>
-- @param _startedEventId [EventId] <p>The ID of the <code>TimerStarted</code> event that was recorded when this timer was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _timerId [TimerId] <p>The unique ID of the timer that fired.</p>
-- Required parameter: timerId
-- Required parameter: startedEventId
function M.TimerFiredEventAttributes(_startedEventId, _timerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimerFiredEventAttributes")
	local t = { 
		["startedEventId"] = _startedEventId,
		["timerId"] = _timerId,
	}
	asserts.AssertTimerFiredEventAttributes(t)
	return t
end

keys.TimerStartedEventAttributes = { ["control"] = true, ["timerId"] = true, ["startToFireTimeout"] = true, ["decisionTaskCompletedEventId"] = true, nil }

function asserts.AssertTimerStartedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimerStartedEventAttributes to be of type 'table'")
	assert(struct["timerId"], "Expected key timerId to exist in table")
	assert(struct["startToFireTimeout"], "Expected key startToFireTimeout to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["control"] then asserts.AssertData(struct["control"]) end
	if struct["timerId"] then asserts.AssertTimerId(struct["timerId"]) end
	if struct["startToFireTimeout"] then asserts.AssertDurationInSeconds(struct["startToFireTimeout"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimerStartedEventAttributes[k], "TimerStartedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimerStartedEventAttributes
-- <p>Provides details of the <code>TimerStarted</code> event.</p>
-- @param _control [Data] <p><i>Optional.</i> Data attached to the event that can be used by the decider in subsequent workflow tasks.</p>
-- @param _timerId [TimerId] <p>The unique ID of the timer that was started.</p>
-- @param _startToFireTimeout [DurationInSeconds] <p>The duration of time after which the timer will fire.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0.</p>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>StartTimer</code> decision for this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required parameter: timerId
-- Required parameter: startToFireTimeout
-- Required parameter: decisionTaskCompletedEventId
function M.TimerStartedEventAttributes(_control, _timerId, _startToFireTimeout, _decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimerStartedEventAttributes")
	local t = { 
		["control"] = _control,
		["timerId"] = _timerId,
		["startToFireTimeout"] = _startToFireTimeout,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
	}
	asserts.AssertTimerStartedEventAttributes(t)
	return t
end

keys.TaskList = { ["name"] = true, nil }

function asserts.AssertTaskList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TaskList to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.TaskList[k], "TaskList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TaskList
-- <p>Represents a task list.</p>
-- @param _name [Name] <p>The name of the task list.</p>
-- Required parameter: name
function M.TaskList(_name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TaskList")
	local t = { 
		["name"] = _name,
	}
	asserts.AssertTaskList(t)
	return t
end

keys.WorkflowExecutionFailedEventAttributes = { ["reason"] = true, ["details"] = true, ["decisionTaskCompletedEventId"] = true, nil }

function asserts.AssertWorkflowExecutionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionFailedEventAttributes to be of type 'table'")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["reason"] then asserts.AssertFailureReason(struct["reason"]) end
	if struct["details"] then asserts.AssertData(struct["details"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowExecutionFailedEventAttributes[k], "WorkflowExecutionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionFailedEventAttributes
-- <p>Provides details of the <code>WorkflowExecutionFailed</code> event.</p>
-- @param _reason [FailureReason] <p>The descriptive reason provided for the failure (if any).</p>
-- @param _details [Data] <p>The details of the failure (if any).</p>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>FailWorkflowExecution</code> decision to fail this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required parameter: decisionTaskCompletedEventId
function M.WorkflowExecutionFailedEventAttributes(_reason, _details, _decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionFailedEventAttributes")
	local t = { 
		["reason"] = _reason,
		["details"] = _details,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
	}
	asserts.AssertWorkflowExecutionFailedEventAttributes(t)
	return t
end

keys.ScheduleLambdaFunctionFailedEventAttributes = { ["decisionTaskCompletedEventId"] = true, ["cause"] = true, ["id"] = true, ["name"] = true, nil }

function asserts.AssertScheduleLambdaFunctionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleLambdaFunctionFailedEventAttributes to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["cause"] then asserts.AssertScheduleLambdaFunctionFailedCause(struct["cause"]) end
	if struct["id"] then asserts.AssertFunctionId(struct["id"]) end
	if struct["name"] then asserts.AssertFunctionName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScheduleLambdaFunctionFailedEventAttributes[k], "ScheduleLambdaFunctionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleLambdaFunctionFailedEventAttributes
-- <p>Provides details for the <code>ScheduleLambdaFunctionFailed</code> event.</p>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision that resulted in the scheduling of this AWS Lambda function. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _cause [ScheduleLambdaFunctionFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note>If <b>cause</b> is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</note>
-- @param _id [FunctionId] <p>The unique Amazon SWF ID of the AWS Lambda task.</p>
-- @param _name [FunctionName] <p>The name of the scheduled AWS Lambda function.</p>
-- Required parameter: id
-- Required parameter: name
-- Required parameter: cause
-- Required parameter: decisionTaskCompletedEventId
function M.ScheduleLambdaFunctionFailedEventAttributes(_decisionTaskCompletedEventId, _cause, _id, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScheduleLambdaFunctionFailedEventAttributes")
	local t = { 
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
		["cause"] = _cause,
		["id"] = _id,
		["name"] = _name,
	}
	asserts.AssertScheduleLambdaFunctionFailedEventAttributes(t)
	return t
end

keys.DescribeWorkflowTypeInput = { ["domain"] = true, ["workflowType"] = true, nil }

function asserts.AssertDescribeWorkflowTypeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkflowTypeInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["workflowType"] then asserts.AssertWorkflowType(struct["workflowType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeWorkflowTypeInput[k], "DescribeWorkflowTypeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkflowTypeInput
--  
-- @param _domain [DomainName] <p>The name of the domain in which this workflow type is registered.</p>
-- @param _workflowType [WorkflowType] <p>The workflow type to describe.</p>
-- Required parameter: domain
-- Required parameter: workflowType
function M.DescribeWorkflowTypeInput(_domain, _workflowType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkflowTypeInput")
	local t = { 
		["domain"] = _domain,
		["workflowType"] = _workflowType,
	}
	asserts.AssertDescribeWorkflowTypeInput(t)
	return t
end

keys.ListWorkflowTypesInput = { ["nextPageToken"] = true, ["domain"] = true, ["name"] = true, ["registrationStatus"] = true, ["reverseOrder"] = true, ["maximumPageSize"] = true, nil }

function asserts.AssertListWorkflowTypesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListWorkflowTypesInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["registrationStatus"], "Expected key registrationStatus to exist in table")
	if struct["nextPageToken"] then asserts.AssertPageToken(struct["nextPageToken"]) end
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["registrationStatus"] then asserts.AssertRegistrationStatus(struct["registrationStatus"]) end
	if struct["reverseOrder"] then asserts.AssertReverseOrder(struct["reverseOrder"]) end
	if struct["maximumPageSize"] then asserts.AssertPageSize(struct["maximumPageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListWorkflowTypesInput[k], "ListWorkflowTypesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListWorkflowTypesInput
--  
-- @param _nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- @param _domain [DomainName] <p>The name of the domain in which the workflow types have been registered.</p>
-- @param _name [Name] <p>If specified, lists the workflow type with this name.</p>
-- @param _registrationStatus [RegistrationStatus] <p>Specifies the registration status of the workflow types to list.</p>
-- @param _reverseOrder [ReverseOrder] <p>When set to <code>true</code>, returns the results in reverse order. By default the results are returned in ascending alphabetical order of the <code>name</code> of the workflow types.</p>
-- @param _maximumPageSize [PageSize] <p>The maximum number of results that will be returned per call. <code>nextPageToken</code> can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size <i>smaller</i> than the maximum.</p> <p>This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.</p>
-- Required parameter: domain
-- Required parameter: registrationStatus
function M.ListWorkflowTypesInput(_nextPageToken, _domain, _name, _registrationStatus, _reverseOrder, _maximumPageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListWorkflowTypesInput")
	local t = { 
		["nextPageToken"] = _nextPageToken,
		["domain"] = _domain,
		["name"] = _name,
		["registrationStatus"] = _registrationStatus,
		["reverseOrder"] = _reverseOrder,
		["maximumPageSize"] = _maximumPageSize,
	}
	asserts.AssertListWorkflowTypesInput(t)
	return t
end

keys.LambdaFunctionStartedEventAttributes = { ["scheduledEventId"] = true, nil }

function asserts.AssertLambdaFunctionStartedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionStartedEventAttributes to be of type 'table'")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	if struct["scheduledEventId"] then asserts.AssertEventId(struct["scheduledEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaFunctionStartedEventAttributes[k], "LambdaFunctionStartedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionStartedEventAttributes
-- <p>Provides details for the <code>LambdaFunctionStarted</code> event.</p>
-- @param _scheduledEventId [EventId] <p>The ID of the <code>LambdaFunctionScheduled</code> event that was recorded when this AWS Lambda function was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required parameter: scheduledEventId
function M.LambdaFunctionStartedEventAttributes(_scheduledEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionStartedEventAttributes")
	local t = { 
		["scheduledEventId"] = _scheduledEventId,
	}
	asserts.AssertLambdaFunctionStartedEventAttributes(t)
	return t
end

keys.ExecutionTimeFilter = { ["oldestDate"] = true, ["latestDate"] = true, nil }

function asserts.AssertExecutionTimeFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionTimeFilter to be of type 'table'")
	assert(struct["oldestDate"], "Expected key oldestDate to exist in table")
	if struct["oldestDate"] then asserts.AssertTimestamp(struct["oldestDate"]) end
	if struct["latestDate"] then asserts.AssertTimestamp(struct["latestDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExecutionTimeFilter[k], "ExecutionTimeFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionTimeFilter
-- <p>Used to filter the workflow executions in visibility APIs by various time-based rules. Each parameter, if specified, defines a rule that must be satisfied by each returned query result. The parameter values are in the <a href="https://en.wikipedia.org/wiki/Unix_time">Unix Time format</a>. For example: <code>"oldestDate": 1325376070.</code></p>
-- @param _oldestDate [Timestamp] <p>Specifies the oldest start or close date and time to return.</p>
-- @param _latestDate [Timestamp] <p>Specifies the latest start or close date and time to return.</p>
-- Required parameter: oldestDate
function M.ExecutionTimeFilter(_oldestDate, _latestDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionTimeFilter")
	local t = { 
		["oldestDate"] = _oldestDate,
		["latestDate"] = _latestDate,
	}
	asserts.AssertExecutionTimeFilter(t)
	return t
end

keys.LimitExceededFault = { ["message"] = true, nil }

function asserts.AssertLimitExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededFault to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededFault[k], "LimitExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededFault
-- <p>Returned by any operation if a system imposed limitation has been reached. To address this fault you should either clean up unused resources or increase the limit by contacting AWS.</p>
-- @param _message [ErrorMessage] <p>A description that may help with diagnosing the cause of the fault.</p>
function M.LimitExceededFault(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededFault")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertLimitExceededFault(t)
	return t
end

keys.SignalExternalWorkflowExecutionDecisionAttributes = { ["control"] = true, ["input"] = true, ["workflowId"] = true, ["runId"] = true, ["signalName"] = true, nil }

function asserts.AssertSignalExternalWorkflowExecutionDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SignalExternalWorkflowExecutionDecisionAttributes to be of type 'table'")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["signalName"], "Expected key signalName to exist in table")
	if struct["control"] then asserts.AssertData(struct["control"]) end
	if struct["input"] then asserts.AssertData(struct["input"]) end
	if struct["workflowId"] then asserts.AssertWorkflowId(struct["workflowId"]) end
	if struct["runId"] then asserts.AssertRunIdOptional(struct["runId"]) end
	if struct["signalName"] then asserts.AssertSignalName(struct["signalName"]) end
	for k,_ in pairs(struct) do
		assert(keys.SignalExternalWorkflowExecutionDecisionAttributes[k], "SignalExternalWorkflowExecutionDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SignalExternalWorkflowExecutionDecisionAttributes
-- <p>Provides details of the <code>SignalExternalWorkflowExecution</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-- @param _control [Data] <p><i>Optional.</i> Data attached to the event that can be used by the decider in subsequent decision tasks.</p>
-- @param _input [Data] <p><i>Optional.</i> Input data to be provided with the signal. The target workflow execution will use the signal name and input data to process the signal.</p>
-- @param _workflowId [WorkflowId] <p><b>Required.</b> The <code>workflowId</code> of the workflow execution to be signaled.</p>
-- @param _runId [RunIdOptional] <p>The <code>runId</code> of the workflow execution to be signaled.</p>
-- @param _signalName [SignalName] <p><b>Required.</b> The name of the signal.The target workflow execution will use the signal name and input to process the signal.</p>
-- Required parameter: workflowId
-- Required parameter: signalName
function M.SignalExternalWorkflowExecutionDecisionAttributes(_control, _input, _workflowId, _runId, _signalName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SignalExternalWorkflowExecutionDecisionAttributes")
	local t = { 
		["control"] = _control,
		["input"] = _input,
		["workflowId"] = _workflowId,
		["runId"] = _runId,
		["signalName"] = _signalName,
	}
	asserts.AssertSignalExternalWorkflowExecutionDecisionAttributes(t)
	return t
end

keys.OperationNotPermittedFault = { ["message"] = true, nil }

function asserts.AssertOperationNotPermittedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationNotPermittedFault to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.OperationNotPermittedFault[k], "OperationNotPermittedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationNotPermittedFault
-- <p>Returned when the caller does not have sufficient permissions to invoke the action.</p>
-- @param _message [ErrorMessage] <p>A description that may help with diagnosing the cause of the fault.</p>
function M.OperationNotPermittedFault(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OperationNotPermittedFault")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertOperationNotPermittedFault(t)
	return t
end

keys.ScheduleActivityTaskFailedEventAttributes = { ["activityId"] = true, ["activityType"] = true, ["cause"] = true, ["decisionTaskCompletedEventId"] = true, nil }

function asserts.AssertScheduleActivityTaskFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleActivityTaskFailedEventAttributes to be of type 'table'")
	assert(struct["activityType"], "Expected key activityType to exist in table")
	assert(struct["activityId"], "Expected key activityId to exist in table")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["activityId"] then asserts.AssertActivityId(struct["activityId"]) end
	if struct["activityType"] then asserts.AssertActivityType(struct["activityType"]) end
	if struct["cause"] then asserts.AssertScheduleActivityTaskFailedCause(struct["cause"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScheduleActivityTaskFailedEventAttributes[k], "ScheduleActivityTaskFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleActivityTaskFailedEventAttributes
-- <p>Provides details of the <code>ScheduleActivityTaskFailed</code> event.</p>
-- @param _activityId [ActivityId] <p>The activityId provided in the <code>ScheduleActivityTask</code> decision that failed.</p>
-- @param _activityType [ActivityType] <p>The activity type provided in the <code>ScheduleActivityTask</code> decision that failed.</p>
-- @param _cause [ScheduleActivityTaskFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note>If <b>cause</b> is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</note>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision that resulted in the scheduling of this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required parameter: activityType
-- Required parameter: activityId
-- Required parameter: cause
-- Required parameter: decisionTaskCompletedEventId
function M.ScheduleActivityTaskFailedEventAttributes(_activityId, _activityType, _cause, _decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScheduleActivityTaskFailedEventAttributes")
	local t = { 
		["activityId"] = _activityId,
		["activityType"] = _activityType,
		["cause"] = _cause,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
	}
	asserts.AssertScheduleActivityTaskFailedEventAttributes(t)
	return t
end

keys.ActivityTaskTimedOutEventAttributes = { ["startedEventId"] = true, ["timeoutType"] = true, ["scheduledEventId"] = true, ["details"] = true, nil }

function asserts.AssertActivityTaskTimedOutEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTaskTimedOutEventAttributes to be of type 'table'")
	assert(struct["timeoutType"], "Expected key timeoutType to exist in table")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then asserts.AssertEventId(struct["startedEventId"]) end
	if struct["timeoutType"] then asserts.AssertActivityTaskTimeoutType(struct["timeoutType"]) end
	if struct["scheduledEventId"] then asserts.AssertEventId(struct["scheduledEventId"]) end
	if struct["details"] then asserts.AssertLimitedData(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityTaskTimedOutEventAttributes[k], "ActivityTaskTimedOutEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTaskTimedOutEventAttributes
-- <p>Provides details of the <code>ActivityTaskTimedOut</code> event.</p>
-- @param _startedEventId [EventId] <p>The ID of the <code>ActivityTaskStarted</code> event recorded when this activity task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _timeoutType [ActivityTaskTimeoutType] <p>The type of the timeout that caused this event.</p>
-- @param _scheduledEventId [EventId] <p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _details [LimitedData] <p>Contains the content of the <code>details</code> parameter for the last call made by the activity to <code>RecordActivityTaskHeartbeat</code>.</p>
-- Required parameter: timeoutType
-- Required parameter: scheduledEventId
-- Required parameter: startedEventId
function M.ActivityTaskTimedOutEventAttributes(_startedEventId, _timeoutType, _scheduledEventId, _details, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTaskTimedOutEventAttributes")
	local t = { 
		["startedEventId"] = _startedEventId,
		["timeoutType"] = _timeoutType,
		["scheduledEventId"] = _scheduledEventId,
		["details"] = _details,
	}
	asserts.AssertActivityTaskTimedOutEventAttributes(t)
	return t
end

keys.ContinueAsNewWorkflowExecutionFailedEventAttributes = { ["cause"] = true, ["decisionTaskCompletedEventId"] = true, nil }

function asserts.AssertContinueAsNewWorkflowExecutionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContinueAsNewWorkflowExecutionFailedEventAttributes to be of type 'table'")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["cause"] then asserts.AssertContinueAsNewWorkflowExecutionFailedCause(struct["cause"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ContinueAsNewWorkflowExecutionFailedEventAttributes[k], "ContinueAsNewWorkflowExecutionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContinueAsNewWorkflowExecutionFailedEventAttributes
-- <p>Provides details of the <code>ContinueAsNewWorkflowExecutionFailed</code> event.</p>
-- @param _cause [ContinueAsNewWorkflowExecutionFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note>If <b>cause</b> is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</note>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>ContinueAsNewWorkflowExecution</code> decision that started this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required parameter: cause
-- Required parameter: decisionTaskCompletedEventId
function M.ContinueAsNewWorkflowExecutionFailedEventAttributes(_cause, _decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ContinueAsNewWorkflowExecutionFailedEventAttributes")
	local t = { 
		["cause"] = _cause,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
	}
	asserts.AssertContinueAsNewWorkflowExecutionFailedEventAttributes(t)
	return t
end

keys.RecordActivityTaskHeartbeatInput = { ["details"] = true, ["taskToken"] = true, nil }

function asserts.AssertRecordActivityTaskHeartbeatInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordActivityTaskHeartbeatInput to be of type 'table'")
	assert(struct["taskToken"], "Expected key taskToken to exist in table")
	if struct["details"] then asserts.AssertLimitedData(struct["details"]) end
	if struct["taskToken"] then asserts.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.RecordActivityTaskHeartbeatInput[k], "RecordActivityTaskHeartbeatInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordActivityTaskHeartbeatInput
--  
-- @param _details [LimitedData] <p>If specified, contains details about the progress of the task.</p>
-- @param _taskToken [TaskToken] <p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p> <important> <code>taskToken</code> is generated by the service and should be treated as an opaque value. If the task is passed to another process, its <code>taskToken</code> must also be passed. This enables it to provide its progress and respond with results. </important>
-- Required parameter: taskToken
function M.RecordActivityTaskHeartbeatInput(_details, _taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordActivityTaskHeartbeatInput")
	local t = { 
		["details"] = _details,
		["taskToken"] = _taskToken,
	}
	asserts.AssertRecordActivityTaskHeartbeatInput(t)
	return t
end

keys.TypeDeprecatedFault = { ["message"] = true, nil }

function asserts.AssertTypeDeprecatedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TypeDeprecatedFault to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TypeDeprecatedFault[k], "TypeDeprecatedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TypeDeprecatedFault
-- <p>Returned when the specified activity or workflow type was already deprecated.</p>
-- @param _message [ErrorMessage] <p>A description that may help with diagnosing the cause of the fault.</p>
function M.TypeDeprecatedFault(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TypeDeprecatedFault")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertTypeDeprecatedFault(t)
	return t
end

keys.WorkflowExecutionDetail = { ["latestExecutionContext"] = true, ["executionConfiguration"] = true, ["latestActivityTaskTimestamp"] = true, ["openCounts"] = true, ["executionInfo"] = true, nil }

function asserts.AssertWorkflowExecutionDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionDetail to be of type 'table'")
	assert(struct["executionInfo"], "Expected key executionInfo to exist in table")
	assert(struct["executionConfiguration"], "Expected key executionConfiguration to exist in table")
	assert(struct["openCounts"], "Expected key openCounts to exist in table")
	if struct["latestExecutionContext"] then asserts.AssertData(struct["latestExecutionContext"]) end
	if struct["executionConfiguration"] then asserts.AssertWorkflowExecutionConfiguration(struct["executionConfiguration"]) end
	if struct["latestActivityTaskTimestamp"] then asserts.AssertTimestamp(struct["latestActivityTaskTimestamp"]) end
	if struct["openCounts"] then asserts.AssertWorkflowExecutionOpenCounts(struct["openCounts"]) end
	if struct["executionInfo"] then asserts.AssertWorkflowExecutionInfo(struct["executionInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowExecutionDetail[k], "WorkflowExecutionDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionDetail
-- <p>Contains details about a workflow execution.</p>
-- @param _latestExecutionContext [Data] <p>The latest executionContext provided by the decider for this workflow execution. A decider can provide an executionContext (a free-form string) when closing a decision task using <a>RespondDecisionTaskCompleted</a>.</p>
-- @param _executionConfiguration [WorkflowExecutionConfiguration] <p>The configuration settings for this workflow execution including timeout values, tasklist etc.</p>
-- @param _latestActivityTaskTimestamp [Timestamp] <p>The time when the last activity task was scheduled for this workflow execution. You can use this information to determine if the workflow has not made progress for an unusually long period of time and might require a corrective action.</p>
-- @param _openCounts [WorkflowExecutionOpenCounts] <p>The number of tasks for this workflow execution. This includes open and closed tasks of all types.</p>
-- @param _executionInfo [WorkflowExecutionInfo] <p>Information about the workflow execution.</p>
-- Required parameter: executionInfo
-- Required parameter: executionConfiguration
-- Required parameter: openCounts
function M.WorkflowExecutionDetail(_latestExecutionContext, _executionConfiguration, _latestActivityTaskTimestamp, _openCounts, _executionInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionDetail")
	local t = { 
		["latestExecutionContext"] = _latestExecutionContext,
		["executionConfiguration"] = _executionConfiguration,
		["latestActivityTaskTimestamp"] = _latestActivityTaskTimestamp,
		["openCounts"] = _openCounts,
		["executionInfo"] = _executionInfo,
	}
	asserts.AssertWorkflowExecutionDetail(t)
	return t
end

keys.WorkflowExecutionSignaledEventAttributes = { ["input"] = true, ["externalInitiatedEventId"] = true, ["externalWorkflowExecution"] = true, ["signalName"] = true, nil }

function asserts.AssertWorkflowExecutionSignaledEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionSignaledEventAttributes to be of type 'table'")
	assert(struct["signalName"], "Expected key signalName to exist in table")
	if struct["input"] then asserts.AssertData(struct["input"]) end
	if struct["externalInitiatedEventId"] then asserts.AssertEventId(struct["externalInitiatedEventId"]) end
	if struct["externalWorkflowExecution"] then asserts.AssertWorkflowExecution(struct["externalWorkflowExecution"]) end
	if struct["signalName"] then asserts.AssertSignalName(struct["signalName"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowExecutionSignaledEventAttributes[k], "WorkflowExecutionSignaledEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionSignaledEventAttributes
-- <p>Provides details of the <code>WorkflowExecutionSignaled</code> event.</p>
-- @param _input [Data] <p>Inputs provided with the signal (if any). The decider can use the signal name and inputs to determine how to process the signal.</p>
-- @param _externalInitiatedEventId [EventId] <p>The ID of the <code>SignalExternalWorkflowExecutionInitiated</code> event corresponding to the <code>SignalExternalWorkflow</code> decision to signal this workflow execution.The source event with this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event. This field is set only if the signal was initiated by another workflow execution.</p>
-- @param _externalWorkflowExecution [WorkflowExecution] <p>The workflow execution that sent the signal. This is set only of the signal was sent by another workflow execution.</p>
-- @param _signalName [SignalName] <p>The name of the signal received. The decider can use the signal name and inputs to determine how to the process the signal.</p>
-- Required parameter: signalName
function M.WorkflowExecutionSignaledEventAttributes(_input, _externalInitiatedEventId, _externalWorkflowExecution, _signalName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionSignaledEventAttributes")
	local t = { 
		["input"] = _input,
		["externalInitiatedEventId"] = _externalInitiatedEventId,
		["externalWorkflowExecution"] = _externalWorkflowExecution,
		["signalName"] = _signalName,
	}
	asserts.AssertWorkflowExecutionSignaledEventAttributes(t)
	return t
end

keys.History = { ["nextPageToken"] = true, ["events"] = true, nil }

function asserts.AssertHistory(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected History to be of type 'table'")
	assert(struct["events"], "Expected key events to exist in table")
	if struct["nextPageToken"] then asserts.AssertPageToken(struct["nextPageToken"]) end
	if struct["events"] then asserts.AssertHistoryEventList(struct["events"]) end
	for k,_ in pairs(struct) do
		assert(keys.History[k], "History contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type History
-- <p>Paginated representation of a workflow history for a workflow execution. This is the up to date, complete and authoritative record of the events related to all tasks and events in the life of the workflow execution.</p>
-- @param _nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- @param _events [HistoryEventList] <p>The list of history events.</p>
-- Required parameter: events
function M.History(_nextPageToken, _events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating History")
	local t = { 
		["nextPageToken"] = _nextPageToken,
		["events"] = _events,
	}
	asserts.AssertHistory(t)
	return t
end

keys.CancelTimerDecisionAttributes = { ["timerId"] = true, nil }

function asserts.AssertCancelTimerDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelTimerDecisionAttributes to be of type 'table'")
	assert(struct["timerId"], "Expected key timerId to exist in table")
	if struct["timerId"] then asserts.AssertTimerId(struct["timerId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelTimerDecisionAttributes[k], "CancelTimerDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelTimerDecisionAttributes
-- <p>Provides details of the <code>CancelTimer</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-- @param _timerId [TimerId] <p><b>Required.</b> The unique ID of the timer to cancel.</p>
-- Required parameter: timerId
function M.CancelTimerDecisionAttributes(_timerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelTimerDecisionAttributes")
	local t = { 
		["timerId"] = _timerId,
	}
	asserts.AssertCancelTimerDecisionAttributes(t)
	return t
end

keys.RespondDecisionTaskCompletedInput = { ["executionContext"] = true, ["decisions"] = true, ["taskToken"] = true, nil }

function asserts.AssertRespondDecisionTaskCompletedInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RespondDecisionTaskCompletedInput to be of type 'table'")
	assert(struct["taskToken"], "Expected key taskToken to exist in table")
	if struct["executionContext"] then asserts.AssertData(struct["executionContext"]) end
	if struct["decisions"] then asserts.AssertDecisionList(struct["decisions"]) end
	if struct["taskToken"] then asserts.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.RespondDecisionTaskCompletedInput[k], "RespondDecisionTaskCompletedInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RespondDecisionTaskCompletedInput
--  
-- @param _executionContext [Data] <p>User defined context to add to workflow execution.</p>
-- @param _decisions [DecisionList] <p>The list of decisions (possibly empty) made by the decider while processing this decision task. See the docs for the decision structure for details.</p>
-- @param _taskToken [TaskToken] <p>The <code>taskToken</code> from the <a>DecisionTask</a>.</p> <important><code>taskToken</code> is generated by the service and should be treated as an opaque value. If the task is passed to another process, its <code>taskToken</code> must also be passed. This enables it to provide its progress and respond with results.</important>
-- Required parameter: taskToken
function M.RespondDecisionTaskCompletedInput(_executionContext, _decisions, _taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RespondDecisionTaskCompletedInput")
	local t = { 
		["executionContext"] = _executionContext,
		["decisions"] = _decisions,
		["taskToken"] = _taskToken,
	}
	asserts.AssertRespondDecisionTaskCompletedInput(t)
	return t
end

keys.ListActivityTypesInput = { ["nextPageToken"] = true, ["domain"] = true, ["name"] = true, ["registrationStatus"] = true, ["reverseOrder"] = true, ["maximumPageSize"] = true, nil }

function asserts.AssertListActivityTypesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListActivityTypesInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["registrationStatus"], "Expected key registrationStatus to exist in table")
	if struct["nextPageToken"] then asserts.AssertPageToken(struct["nextPageToken"]) end
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["name"] then asserts.AssertName(struct["name"]) end
	if struct["registrationStatus"] then asserts.AssertRegistrationStatus(struct["registrationStatus"]) end
	if struct["reverseOrder"] then asserts.AssertReverseOrder(struct["reverseOrder"]) end
	if struct["maximumPageSize"] then asserts.AssertPageSize(struct["maximumPageSize"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListActivityTypesInput[k], "ListActivityTypesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListActivityTypesInput
--  
-- @param _nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- @param _domain [DomainName] <p>The name of the domain in which the activity types have been registered.</p>
-- @param _name [Name] <p>If specified, only lists the activity types that have this name.</p>
-- @param _registrationStatus [RegistrationStatus] <p>Specifies the registration status of the activity types to list.</p>
-- @param _reverseOrder [ReverseOrder] <p>When set to <code>true</code>, returns the results in reverse order. By default, the results are returned in ascending alphabetical order by <code>name</code> of the activity types.</p>
-- @param _maximumPageSize [PageSize] <p>The maximum number of results that will be returned per call. <code>nextPageToken</code> can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size <i>smaller</i> than the maximum.</p> <p>This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.</p>
-- Required parameter: domain
-- Required parameter: registrationStatus
function M.ListActivityTypesInput(_nextPageToken, _domain, _name, _registrationStatus, _reverseOrder, _maximumPageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListActivityTypesInput")
	local t = { 
		["nextPageToken"] = _nextPageToken,
		["domain"] = _domain,
		["name"] = _name,
		["registrationStatus"] = _registrationStatus,
		["reverseOrder"] = _reverseOrder,
		["maximumPageSize"] = _maximumPageSize,
	}
	asserts.AssertListActivityTypesInput(t)
	return t
end

keys.DomainAlreadyExistsFault = { ["message"] = true, nil }

function asserts.AssertDomainAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainAlreadyExistsFault to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DomainAlreadyExistsFault[k], "DomainAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainAlreadyExistsFault
-- <p>Returned if the specified domain already exists. You will get this fault even if the existing domain is in deprecated status.</p>
-- @param _message [ErrorMessage] <p>A description that may help with diagnosing the cause of the fault.</p>
function M.DomainAlreadyExistsFault(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainAlreadyExistsFault")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertDomainAlreadyExistsFault(t)
	return t
end

keys.DecisionTaskScheduledEventAttributes = { ["startToCloseTimeout"] = true, ["taskList"] = true, ["taskPriority"] = true, nil }

function asserts.AssertDecisionTaskScheduledEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecisionTaskScheduledEventAttributes to be of type 'table'")
	assert(struct["taskList"], "Expected key taskList to exist in table")
	if struct["startToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["startToCloseTimeout"]) end
	if struct["taskList"] then asserts.AssertTaskList(struct["taskList"]) end
	if struct["taskPriority"] then asserts.AssertTaskPriority(struct["taskPriority"]) end
	for k,_ in pairs(struct) do
		assert(keys.DecisionTaskScheduledEventAttributes[k], "DecisionTaskScheduledEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecisionTaskScheduledEventAttributes
-- <p>Provides details about the <code>DecisionTaskScheduled</code> event.</p>
-- @param _startToCloseTimeout [DurationInSecondsOptional] <p>The maximum duration for this decision task. The task is considered timed out if it does not completed within this duration.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p>
-- @param _taskList [TaskList] <p>The name of the task list in which the decision task was scheduled.</p>
-- @param _taskPriority [TaskPriority] <p><i>Optional.</i> A task priority that, if set, specifies the priority for this decision task. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon Simple Workflow Developer Guide</i>.</p>
-- Required parameter: taskList
function M.DecisionTaskScheduledEventAttributes(_startToCloseTimeout, _taskList, _taskPriority, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecisionTaskScheduledEventAttributes")
	local t = { 
		["startToCloseTimeout"] = _startToCloseTimeout,
		["taskList"] = _taskList,
		["taskPriority"] = _taskPriority,
	}
	asserts.AssertDecisionTaskScheduledEventAttributes(t)
	return t
end

keys.LambdaFunctionFailedEventAttributes = { ["startedEventId"] = true, ["reason"] = true, ["scheduledEventId"] = true, ["details"] = true, nil }

function asserts.AssertLambdaFunctionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionFailedEventAttributes to be of type 'table'")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then asserts.AssertEventId(struct["startedEventId"]) end
	if struct["reason"] then asserts.AssertFailureReason(struct["reason"]) end
	if struct["scheduledEventId"] then asserts.AssertEventId(struct["scheduledEventId"]) end
	if struct["details"] then asserts.AssertData(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaFunctionFailedEventAttributes[k], "LambdaFunctionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionFailedEventAttributes
-- <p>Provides details for the <code>LambdaFunctionFailed</code> event.</p>
-- @param _startedEventId [EventId] <p>The ID of the <code>LambdaFunctionStarted</code> event recorded in the history.</p>
-- @param _reason [FailureReason] <p>The reason provided for the failure (if any).</p>
-- @param _scheduledEventId [EventId] <p>The ID of the <code>LambdaFunctionScheduled</code> event that was recorded when this AWS Lambda function was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _details [Data] <p>The details of the failure (if any).</p>
-- Required parameter: scheduledEventId
-- Required parameter: startedEventId
function M.LambdaFunctionFailedEventAttributes(_startedEventId, _reason, _scheduledEventId, _details, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionFailedEventAttributes")
	local t = { 
		["startedEventId"] = _startedEventId,
		["reason"] = _reason,
		["scheduledEventId"] = _scheduledEventId,
		["details"] = _details,
	}
	asserts.AssertLambdaFunctionFailedEventAttributes(t)
	return t
end

keys.ActivityTaskCanceledEventAttributes = { ["startedEventId"] = true, ["latestCancelRequestedEventId"] = true, ["scheduledEventId"] = true, ["details"] = true, nil }

function asserts.AssertActivityTaskCanceledEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTaskCanceledEventAttributes to be of type 'table'")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then asserts.AssertEventId(struct["startedEventId"]) end
	if struct["latestCancelRequestedEventId"] then asserts.AssertEventId(struct["latestCancelRequestedEventId"]) end
	if struct["scheduledEventId"] then asserts.AssertEventId(struct["scheduledEventId"]) end
	if struct["details"] then asserts.AssertData(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityTaskCanceledEventAttributes[k], "ActivityTaskCanceledEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTaskCanceledEventAttributes
-- <p>Provides details of the <code>ActivityTaskCanceled</code> event.</p>
-- @param _startedEventId [EventId] <p>The ID of the <code>ActivityTaskStarted</code> event recorded when this activity task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _latestCancelRequestedEventId [EventId] <p>If set, contains the ID of the last <code>ActivityTaskCancelRequested</code> event recorded for this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _scheduledEventId [EventId] <p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _details [Data] <p>Details of the cancellation (if any).</p>
-- Required parameter: scheduledEventId
-- Required parameter: startedEventId
function M.ActivityTaskCanceledEventAttributes(_startedEventId, _latestCancelRequestedEventId, _scheduledEventId, _details, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTaskCanceledEventAttributes")
	local t = { 
		["startedEventId"] = _startedEventId,
		["latestCancelRequestedEventId"] = _latestCancelRequestedEventId,
		["scheduledEventId"] = _scheduledEventId,
		["details"] = _details,
	}
	asserts.AssertActivityTaskCanceledEventAttributes(t)
	return t
end

keys.DescribeActivityTypeInput = { ["domain"] = true, ["activityType"] = true, nil }

function asserts.AssertDescribeActivityTypeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeActivityTypeInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["activityType"], "Expected key activityType to exist in table")
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["activityType"] then asserts.AssertActivityType(struct["activityType"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeActivityTypeInput[k], "DescribeActivityTypeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeActivityTypeInput
--  
-- @param _domain [DomainName] <p>The name of the domain in which the activity type is registered.</p>
-- @param _activityType [ActivityType] <p>The activity type to get information about. Activity types are identified by the <code>name</code> and <code>version</code> that were supplied when the activity was registered.</p>
-- Required parameter: domain
-- Required parameter: activityType
function M.DescribeActivityTypeInput(_domain, _activityType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeActivityTypeInput")
	local t = { 
		["domain"] = _domain,
		["activityType"] = _activityType,
	}
	asserts.AssertDescribeActivityTypeInput(t)
	return t
end

keys.SignalWorkflowExecutionInput = { ["input"] = true, ["domain"] = true, ["signalName"] = true, ["workflowId"] = true, ["runId"] = true, nil }

function asserts.AssertSignalWorkflowExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SignalWorkflowExecutionInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["signalName"], "Expected key signalName to exist in table")
	if struct["input"] then asserts.AssertData(struct["input"]) end
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["signalName"] then asserts.AssertSignalName(struct["signalName"]) end
	if struct["workflowId"] then asserts.AssertWorkflowId(struct["workflowId"]) end
	if struct["runId"] then asserts.AssertRunIdOptional(struct["runId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SignalWorkflowExecutionInput[k], "SignalWorkflowExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SignalWorkflowExecutionInput
--  
-- @param _input [Data] <p>Data to attach to the <code>WorkflowExecutionSignaled</code> event in the target workflow execution's history.</p>
-- @param _domain [DomainName] <p>The name of the domain containing the workflow execution to signal.</p>
-- @param _signalName [SignalName] <p>The name of the signal. This name must be meaningful to the target workflow.</p>
-- @param _workflowId [WorkflowId] <p>The workflowId of the workflow execution to signal.</p>
-- @param _runId [RunIdOptional] <p>The runId of the workflow execution to signal.</p>
-- Required parameter: domain
-- Required parameter: workflowId
-- Required parameter: signalName
function M.SignalWorkflowExecutionInput(_input, _domain, _signalName, _workflowId, _runId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SignalWorkflowExecutionInput")
	local t = { 
		["input"] = _input,
		["domain"] = _domain,
		["signalName"] = _signalName,
		["workflowId"] = _workflowId,
		["runId"] = _runId,
	}
	asserts.AssertSignalWorkflowExecutionInput(t)
	return t
end

keys.StartChildWorkflowExecutionDecisionAttributes = { ["control"] = true, ["workflowId"] = true, ["taskList"] = true, ["taskStartToCloseTimeout"] = true, ["taskPriority"] = true, ["lambdaRole"] = true, ["childPolicy"] = true, ["executionStartToCloseTimeout"] = true, ["input"] = true, ["workflowType"] = true, ["tagList"] = true, nil }

function asserts.AssertStartChildWorkflowExecutionDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartChildWorkflowExecutionDecisionAttributes to be of type 'table'")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	if struct["control"] then asserts.AssertData(struct["control"]) end
	if struct["workflowId"] then asserts.AssertWorkflowId(struct["workflowId"]) end
	if struct["taskList"] then asserts.AssertTaskList(struct["taskList"]) end
	if struct["taskStartToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["taskStartToCloseTimeout"]) end
	if struct["taskPriority"] then asserts.AssertTaskPriority(struct["taskPriority"]) end
	if struct["lambdaRole"] then asserts.AssertArn(struct["lambdaRole"]) end
	if struct["childPolicy"] then asserts.AssertChildPolicy(struct["childPolicy"]) end
	if struct["executionStartToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["executionStartToCloseTimeout"]) end
	if struct["input"] then asserts.AssertData(struct["input"]) end
	if struct["workflowType"] then asserts.AssertWorkflowType(struct["workflowType"]) end
	if struct["tagList"] then asserts.AssertTagList(struct["tagList"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartChildWorkflowExecutionDecisionAttributes[k], "StartChildWorkflowExecutionDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartChildWorkflowExecutionDecisionAttributes
-- <p>Provides details of the <code>StartChildWorkflowExecution</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys. <ul> <li> <code>tagList.member.N</code>: The key is "swf:tagList.N" where N is the tag number from 0 to 4, inclusive.</li> <li><code>taskList</code>: String constraint. The key is <code>swf:taskList.name</code>.</li> <li><code>workflowType.name</code>: String constraint. The key is <code>swf:workflowType.name</code>.</li> <li><code>workflowType.version</code>: String constraint. The key is <code>swf:workflowType.version</code>.</li> </ul> </li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-- @param _control [Data] <p><i>Optional.</i> Data attached to the event that can be used by the decider in subsequent workflow tasks. This data is not sent to the child workflow execution.</p>
-- @param _workflowId [WorkflowId] <p><b>Required.</b> The <code>workflowId</code> of the workflow execution.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.</p>
-- @param _taskList [TaskList] <p>The name of the task list to be used for decision tasks of the child workflow execution.</p> <note>A task list for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task list was specified at registration time then a fault will be returned.</note> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.</p>
-- @param _taskStartToCloseTimeout [DurationInSecondsOptional] <p>Specifies the maximum duration of decision tasks for this workflow execution. This parameter overrides the <code>defaultTaskStartToCloseTimout</code> specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p> <note>A task start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task start-to-close timeout was specified at registration time then a fault will be returned.</note>
-- @param _taskPriority [TaskPriority] <p><i>Optional.</i> A task priority that, if set, specifies the priority for a decision task of this workflow execution. This overrides the defaultTaskPriority specified when registering the workflow type. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon Simple Workflow Developer Guide</i>.</p>
-- @param _lambdaRole [Arn] <p>The ARN of an IAM role that authorizes Amazon SWF to invoke AWS Lambda functions.</p> <note>In order for this workflow execution to invoke AWS Lambda functions, an appropriate IAM role must be specified either as a default for the workflow type or through this field.</note>
-- @param _childPolicy [ChildPolicy] <p><i>Optional.</i> If set, specifies the policy to use for the child workflow executions if the workflow execution being started is terminated by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout. This policy overrides the default child policy specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p> <p>The supported child policies are:</p> <ul> <li><b>TERMINATE:</b> the child executions will be terminated.</li> <li><b>REQUEST_CANCEL:</b> a request to cancel will be attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</li> <li><b>ABANDON:</b> no action will be taken. The child executions will continue to run.</li> </ul> <note>A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault will be returned.</note>
-- @param _executionStartToCloseTimeout [DurationInSecondsOptional] <p>The total duration for this workflow execution. This overrides the defaultExecutionStartToCloseTimeout specified when registering the workflow type.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. The value "NONE" can be used to specify unlimited duration.</p> <note>An execution start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default execution start-to-close timeout was specified at registration time then a fault will be returned.</note>
-- @param _input [Data] <p>The input to be provided to the workflow execution.</p>
-- @param _workflowType [WorkflowType] <p><b>Required.</b> The type of the workflow execution to be started.</p>
-- @param _tagList [TagList] <p>The list of tags to associate with the child workflow execution. A maximum of 5 tags can be specified. You can list workflow executions with a specific tag by calling <a>ListOpenWorkflowExecutions</a> or <a>ListClosedWorkflowExecutions</a> and specifying a <a>TagFilter</a>.</p>
-- Required parameter: workflowType
-- Required parameter: workflowId
function M.StartChildWorkflowExecutionDecisionAttributes(_control, _workflowId, _taskList, _taskStartToCloseTimeout, _taskPriority, _lambdaRole, _childPolicy, _executionStartToCloseTimeout, _input, _workflowType, _tagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartChildWorkflowExecutionDecisionAttributes")
	local t = { 
		["control"] = _control,
		["workflowId"] = _workflowId,
		["taskList"] = _taskList,
		["taskStartToCloseTimeout"] = _taskStartToCloseTimeout,
		["taskPriority"] = _taskPriority,
		["lambdaRole"] = _lambdaRole,
		["childPolicy"] = _childPolicy,
		["executionStartToCloseTimeout"] = _executionStartToCloseTimeout,
		["input"] = _input,
		["workflowType"] = _workflowType,
		["tagList"] = _tagList,
	}
	asserts.AssertStartChildWorkflowExecutionDecisionAttributes(t)
	return t
end

keys.WorkflowTypeDetail = { ["configuration"] = true, ["typeInfo"] = true, nil }

function asserts.AssertWorkflowTypeDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowTypeDetail to be of type 'table'")
	assert(struct["typeInfo"], "Expected key typeInfo to exist in table")
	assert(struct["configuration"], "Expected key configuration to exist in table")
	if struct["configuration"] then asserts.AssertWorkflowTypeConfiguration(struct["configuration"]) end
	if struct["typeInfo"] then asserts.AssertWorkflowTypeInfo(struct["typeInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowTypeDetail[k], "WorkflowTypeDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowTypeDetail
-- <p>Contains details about a workflow type.</p>
-- @param _configuration [WorkflowTypeConfiguration] <p>Configuration settings of the workflow type registered through <a>RegisterWorkflowType</a></p>
-- @param _typeInfo [WorkflowTypeInfo] <p>General information about the workflow type.</p> <p>The status of the workflow type (returned in the WorkflowTypeInfo structure) can be one of the following.</p> <ul> <li> <b>REGISTERED</b>: The type is registered and available. Workers supporting this type should be running.</li> <li> <b>DEPRECATED</b>: The type was deprecated using <a>DeprecateWorkflowType</a>, but is still in use. You should keep workers supporting this type running. You cannot create new workflow executions of this type.</li> </ul>
-- Required parameter: typeInfo
-- Required parameter: configuration
function M.WorkflowTypeDetail(_configuration, _typeInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowTypeDetail")
	local t = { 
		["configuration"] = _configuration,
		["typeInfo"] = _typeInfo,
	}
	asserts.AssertWorkflowTypeDetail(t)
	return t
end

keys.ListClosedWorkflowExecutionsInput = { ["nextPageToken"] = true, ["domain"] = true, ["maximumPageSize"] = true, ["typeFilter"] = true, ["executionFilter"] = true, ["closeTimeFilter"] = true, ["reverseOrder"] = true, ["closeStatusFilter"] = true, ["startTimeFilter"] = true, ["tagFilter"] = true, nil }

function asserts.AssertListClosedWorkflowExecutionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClosedWorkflowExecutionsInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	if struct["nextPageToken"] then asserts.AssertPageToken(struct["nextPageToken"]) end
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["maximumPageSize"] then asserts.AssertPageSize(struct["maximumPageSize"]) end
	if struct["typeFilter"] then asserts.AssertWorkflowTypeFilter(struct["typeFilter"]) end
	if struct["executionFilter"] then asserts.AssertWorkflowExecutionFilter(struct["executionFilter"]) end
	if struct["closeTimeFilter"] then asserts.AssertExecutionTimeFilter(struct["closeTimeFilter"]) end
	if struct["reverseOrder"] then asserts.AssertReverseOrder(struct["reverseOrder"]) end
	if struct["closeStatusFilter"] then asserts.AssertCloseStatusFilter(struct["closeStatusFilter"]) end
	if struct["startTimeFilter"] then asserts.AssertExecutionTimeFilter(struct["startTimeFilter"]) end
	if struct["tagFilter"] then asserts.AssertTagFilter(struct["tagFilter"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListClosedWorkflowExecutionsInput[k], "ListClosedWorkflowExecutionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClosedWorkflowExecutionsInput
--  
-- @param _nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- @param _domain [DomainName] <p>The name of the domain that contains the workflow executions to list.</p>
-- @param _maximumPageSize [PageSize] <p>The maximum number of results that will be returned per call. <code>nextPageToken</code> can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size <i>smaller</i> than the maximum.</p> <p>This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.</p>
-- @param _typeFilter [WorkflowTypeFilter] <p>If specified, only executions of the type specified in the filter are returned.</p> <note><code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</note>
-- @param _executionFilter [WorkflowExecutionFilter] <p>If specified, only workflow executions matching the workflow ID specified in the filter are returned.</p> <note><code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</note>
-- @param _closeTimeFilter [ExecutionTimeFilter] <p>If specified, the workflow executions are included in the returned results based on whether their close times are within the range specified by this filter. Also, if this parameter is specified, the returned results are ordered by their close times.</p> <note><code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You must specify one of these in a request but not both.</note>
-- @param _reverseOrder [ReverseOrder] <p>When set to <code>true</code>, returns the results in reverse order. By default the results are returned in descending order of the start or the close time of the executions.</p>
-- @param _closeStatusFilter [CloseStatusFilter] <p>If specified, only workflow executions that match this <i>close status</i> are listed. For example, if TERMINATED is specified, then only TERMINATED workflow executions are listed.</p> <note><code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</note>
-- @param _startTimeFilter [ExecutionTimeFilter] <p>If specified, the workflow executions are included in the returned results based on whether their start times are within the range specified by this filter. Also, if this parameter is specified, the returned results are ordered by their start times.</p> <note><code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You must specify one of these in a request but not both.</note>
-- @param _tagFilter [TagFilter] <p>If specified, only executions that have the matching tag are listed.</p> <note><code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</note>
-- Required parameter: domain
function M.ListClosedWorkflowExecutionsInput(_nextPageToken, _domain, _maximumPageSize, _typeFilter, _executionFilter, _closeTimeFilter, _reverseOrder, _closeStatusFilter, _startTimeFilter, _tagFilter, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListClosedWorkflowExecutionsInput")
	local t = { 
		["nextPageToken"] = _nextPageToken,
		["domain"] = _domain,
		["maximumPageSize"] = _maximumPageSize,
		["typeFilter"] = _typeFilter,
		["executionFilter"] = _executionFilter,
		["closeTimeFilter"] = _closeTimeFilter,
		["reverseOrder"] = _reverseOrder,
		["closeStatusFilter"] = _closeStatusFilter,
		["startTimeFilter"] = _startTimeFilter,
		["tagFilter"] = _tagFilter,
	}
	asserts.AssertListClosedWorkflowExecutionsInput(t)
	return t
end

keys.WorkflowExecutionInfo = { ["closeTimestamp"] = true, ["workflowType"] = true, ["parent"] = true, ["startTimestamp"] = true, ["closeStatus"] = true, ["executionStatus"] = true, ["execution"] = true, ["cancelRequested"] = true, ["tagList"] = true, nil }

function asserts.AssertWorkflowExecutionInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionInfo to be of type 'table'")
	assert(struct["execution"], "Expected key execution to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["startTimestamp"], "Expected key startTimestamp to exist in table")
	assert(struct["executionStatus"], "Expected key executionStatus to exist in table")
	if struct["closeTimestamp"] then asserts.AssertTimestamp(struct["closeTimestamp"]) end
	if struct["workflowType"] then asserts.AssertWorkflowType(struct["workflowType"]) end
	if struct["parent"] then asserts.AssertWorkflowExecution(struct["parent"]) end
	if struct["startTimestamp"] then asserts.AssertTimestamp(struct["startTimestamp"]) end
	if struct["closeStatus"] then asserts.AssertCloseStatus(struct["closeStatus"]) end
	if struct["executionStatus"] then asserts.AssertExecutionStatus(struct["executionStatus"]) end
	if struct["execution"] then asserts.AssertWorkflowExecution(struct["execution"]) end
	if struct["cancelRequested"] then asserts.AssertCanceled(struct["cancelRequested"]) end
	if struct["tagList"] then asserts.AssertTagList(struct["tagList"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowExecutionInfo[k], "WorkflowExecutionInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionInfo
-- <p>Contains information about a workflow execution. </p>
-- @param _closeTimestamp [Timestamp] <p>The time when the workflow execution was closed. Set only if the execution status is CLOSED.</p>
-- @param _workflowType [WorkflowType] <p>The type of the workflow execution.</p>
-- @param _parent [WorkflowExecution] <p>If this workflow execution is a child of another execution then contains the workflow execution that started this execution.</p>
-- @param _startTimestamp [Timestamp] <p>The time when the execution was started.</p>
-- @param _closeStatus [CloseStatus] <p>If the execution status is closed then this specifies how the execution was closed:</p> <ul> <li> <code>COMPLETED</code>: the execution was successfully completed.</li> <li> <code>CANCELED</code>: the execution was canceled.Cancellation allows the implementation to gracefully clean up before the execution is closed.</li> <li> <code>TERMINATED</code>: the execution was force terminated.</li> <li> <code>FAILED</code>: the execution failed to complete.</li> <li> <code>TIMED_OUT</code>: the execution did not complete in the alloted time and was automatically timed out.</li> <li> <code>CONTINUED_AS_NEW</code>: the execution is logically continued. This means the current execution was completed and a new execution was started to carry on the workflow.</li> </ul>
-- @param _executionStatus [ExecutionStatus] <p>The current status of the execution.</p>
-- @param _execution [WorkflowExecution] <p>The workflow execution this information is about.</p>
-- @param _cancelRequested [Canceled] <p>Set to true if a cancellation is requested for this workflow execution.</p>
-- @param _tagList [TagList] <p>The list of tags associated with the workflow execution. Tags can be used to identify and list workflow executions of interest through the visibility APIs. A workflow execution can have a maximum of 5 tags.</p>
-- Required parameter: execution
-- Required parameter: workflowType
-- Required parameter: startTimestamp
-- Required parameter: executionStatus
function M.WorkflowExecutionInfo(_closeTimestamp, _workflowType, _parent, _startTimestamp, _closeStatus, _executionStatus, _execution, _cancelRequested, _tagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionInfo")
	local t = { 
		["closeTimestamp"] = _closeTimestamp,
		["workflowType"] = _workflowType,
		["parent"] = _parent,
		["startTimestamp"] = _startTimestamp,
		["closeStatus"] = _closeStatus,
		["executionStatus"] = _executionStatus,
		["execution"] = _execution,
		["cancelRequested"] = _cancelRequested,
		["tagList"] = _tagList,
	}
	asserts.AssertWorkflowExecutionInfo(t)
	return t
end

keys.ActivityTypeInfo = { ["status"] = true, ["deprecationDate"] = true, ["creationDate"] = true, ["activityType"] = true, ["description"] = true, nil }

function asserts.AssertActivityTypeInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTypeInfo to be of type 'table'")
	assert(struct["activityType"], "Expected key activityType to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	assert(struct["creationDate"], "Expected key creationDate to exist in table")
	if struct["status"] then asserts.AssertRegistrationStatus(struct["status"]) end
	if struct["deprecationDate"] then asserts.AssertTimestamp(struct["deprecationDate"]) end
	if struct["creationDate"] then asserts.AssertTimestamp(struct["creationDate"]) end
	if struct["activityType"] then asserts.AssertActivityType(struct["activityType"]) end
	if struct["description"] then asserts.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityTypeInfo[k], "ActivityTypeInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTypeInfo
-- <p>Detailed information about an activity type.</p>
-- @param _status [RegistrationStatus] <p>The current status of the activity type.</p>
-- @param _deprecationDate [Timestamp] <p>If DEPRECATED, the date and time <a>DeprecateActivityType</a> was called.</p>
-- @param _creationDate [Timestamp] <p>The date and time this activity type was created through <a>RegisterActivityType</a>.</p>
-- @param _activityType [ActivityType] <p>The <a>ActivityType</a> type structure representing the activity type.</p>
-- @param _description [Description] <p>The description of the activity type provided in <a>RegisterActivityType</a>.</p>
-- Required parameter: activityType
-- Required parameter: status
-- Required parameter: creationDate
function M.ActivityTypeInfo(_status, _deprecationDate, _creationDate, _activityType, _description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTypeInfo")
	local t = { 
		["status"] = _status,
		["deprecationDate"] = _deprecationDate,
		["creationDate"] = _creationDate,
		["activityType"] = _activityType,
		["description"] = _description,
	}
	asserts.AssertActivityTypeInfo(t)
	return t
end

keys.TypeAlreadyExistsFault = { ["message"] = true, nil }

function asserts.AssertTypeAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TypeAlreadyExistsFault to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TypeAlreadyExistsFault[k], "TypeAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TypeAlreadyExistsFault
-- <p>Returned if the type already exists in the specified domain. You will get this fault even if the existing type is in deprecated status. You can specify another version if the intent is to create a new distinct version of the type.</p>
-- @param _message [ErrorMessage] <p>A description that may help with diagnosing the cause of the fault.</p>
function M.TypeAlreadyExistsFault(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TypeAlreadyExistsFault")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertTypeAlreadyExistsFault(t)
	return t
end

keys.StartLambdaFunctionFailedEventAttributes = { ["cause"] = true, ["message"] = true, ["scheduledEventId"] = true, nil }

function asserts.AssertStartLambdaFunctionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartLambdaFunctionFailedEventAttributes to be of type 'table'")
	if struct["cause"] then asserts.AssertStartLambdaFunctionFailedCause(struct["cause"]) end
	if struct["message"] then asserts.AssertCauseMessage(struct["message"]) end
	if struct["scheduledEventId"] then asserts.AssertEventId(struct["scheduledEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartLambdaFunctionFailedEventAttributes[k], "StartLambdaFunctionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartLambdaFunctionFailedEventAttributes
-- <p>Provides details for the <code>StartLambdaFunctionFailed</code> event.</p>
-- @param _cause [StartLambdaFunctionFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note>If <b>cause</b> is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</note>
-- @param _message [CauseMessage] <p>The error message (if any).</p>
-- @param _scheduledEventId [EventId] <p>The ID of the <code>LambdaFunctionScheduled</code> event that was recorded when this AWS Lambda function was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
function M.StartLambdaFunctionFailedEventAttributes(_cause, _message, _scheduledEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartLambdaFunctionFailedEventAttributes")
	local t = { 
		["cause"] = _cause,
		["message"] = _message,
		["scheduledEventId"] = _scheduledEventId,
	}
	asserts.AssertStartLambdaFunctionFailedEventAttributes(t)
	return t
end

keys.WorkflowExecutionCompletedEventAttributes = { ["result"] = true, ["decisionTaskCompletedEventId"] = true, nil }

function asserts.AssertWorkflowExecutionCompletedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionCompletedEventAttributes to be of type 'table'")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["result"] then asserts.AssertData(struct["result"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowExecutionCompletedEventAttributes[k], "WorkflowExecutionCompletedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionCompletedEventAttributes
-- <p>Provides details of the <code>WorkflowExecutionCompleted</code> event.</p>
-- @param _result [Data] <p>The result produced by the workflow execution upon successful completion.</p>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CompleteWorkflowExecution</code> decision to complete this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required parameter: decisionTaskCompletedEventId
function M.WorkflowExecutionCompletedEventAttributes(_result, _decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionCompletedEventAttributes")
	local t = { 
		["result"] = _result,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
	}
	asserts.AssertWorkflowExecutionCompletedEventAttributes(t)
	return t
end

keys.ListDomainsInput = { ["nextPageToken"] = true, ["maximumPageSize"] = true, ["registrationStatus"] = true, ["reverseOrder"] = true, nil }

function asserts.AssertListDomainsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDomainsInput to be of type 'table'")
	assert(struct["registrationStatus"], "Expected key registrationStatus to exist in table")
	if struct["nextPageToken"] then asserts.AssertPageToken(struct["nextPageToken"]) end
	if struct["maximumPageSize"] then asserts.AssertPageSize(struct["maximumPageSize"]) end
	if struct["registrationStatus"] then asserts.AssertRegistrationStatus(struct["registrationStatus"]) end
	if struct["reverseOrder"] then asserts.AssertReverseOrder(struct["reverseOrder"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDomainsInput[k], "ListDomainsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDomainsInput
--  
-- @param _nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- @param _maximumPageSize [PageSize] <p>The maximum number of results that will be returned per call. <code>nextPageToken</code> can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size <i>smaller</i> than the maximum.</p> <p>This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.</p>
-- @param _registrationStatus [RegistrationStatus] <p>Specifies the registration status of the domains to list.</p>
-- @param _reverseOrder [ReverseOrder] <p>When set to <code>true</code>, returns the results in reverse order. By default, the results are returned in ascending alphabetical order by <code>name</code> of the domains.</p>
-- Required parameter: registrationStatus
function M.ListDomainsInput(_nextPageToken, _maximumPageSize, _registrationStatus, _reverseOrder, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDomainsInput")
	local t = { 
		["nextPageToken"] = _nextPageToken,
		["maximumPageSize"] = _maximumPageSize,
		["registrationStatus"] = _registrationStatus,
		["reverseOrder"] = _reverseOrder,
	}
	asserts.AssertListDomainsInput(t)
	return t
end

keys.ActivityTaskScheduledEventAttributes = { ["control"] = true, ["taskList"] = true, ["scheduleToCloseTimeout"] = true, ["activityType"] = true, ["decisionTaskCompletedEventId"] = true, ["taskPriority"] = true, ["heartbeatTimeout"] = true, ["activityId"] = true, ["scheduleToStartTimeout"] = true, ["startToCloseTimeout"] = true, ["input"] = true, nil }

function asserts.AssertActivityTaskScheduledEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTaskScheduledEventAttributes to be of type 'table'")
	assert(struct["activityType"], "Expected key activityType to exist in table")
	assert(struct["activityId"], "Expected key activityId to exist in table")
	assert(struct["taskList"], "Expected key taskList to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["control"] then asserts.AssertData(struct["control"]) end
	if struct["taskList"] then asserts.AssertTaskList(struct["taskList"]) end
	if struct["scheduleToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["scheduleToCloseTimeout"]) end
	if struct["activityType"] then asserts.AssertActivityType(struct["activityType"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["taskPriority"] then asserts.AssertTaskPriority(struct["taskPriority"]) end
	if struct["heartbeatTimeout"] then asserts.AssertDurationInSecondsOptional(struct["heartbeatTimeout"]) end
	if struct["activityId"] then asserts.AssertActivityId(struct["activityId"]) end
	if struct["scheduleToStartTimeout"] then asserts.AssertDurationInSecondsOptional(struct["scheduleToStartTimeout"]) end
	if struct["startToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["startToCloseTimeout"]) end
	if struct["input"] then asserts.AssertData(struct["input"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityTaskScheduledEventAttributes[k], "ActivityTaskScheduledEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTaskScheduledEventAttributes
-- <p>Provides details of the <code>ActivityTaskScheduled</code> event.</p>
-- @param _control [Data] <p><i>Optional.</i> Data attached to the event that can be used by the decider in subsequent workflow tasks. This data is not sent to the activity.</p>
-- @param _taskList [TaskList] <p>The task list in which the activity task has been scheduled.</p>
-- @param _scheduleToCloseTimeout [DurationInSecondsOptional] <p>The maximum amount of time for this activity task.</p>
-- @param _activityType [ActivityType] <p>The type of the activity task.</p>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision that resulted in the scheduling of this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _taskPriority [TaskPriority] <p><i>Optional.</i> The priority to assign to the scheduled activity task. If set, this will override any default priority value that was assigned when the activity type was registered.</p> <p>Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon Simple Workflow Developer Guide</i>.</p>
-- @param _heartbeatTimeout [DurationInSecondsOptional] <p>The maximum time before which the worker processing this task must report progress by calling <a>RecordActivityTaskHeartbeat</a>. If the timeout is exceeded, the activity task is automatically timed out. If the worker subsequently attempts to record a heartbeat or return a result, it will be ignored.</p>
-- @param _activityId [ActivityId] <p>The unique ID of the activity task.</p>
-- @param _scheduleToStartTimeout [DurationInSecondsOptional] <p>The maximum amount of time the activity task can wait to be assigned to a worker.</p>
-- @param _startToCloseTimeout [DurationInSecondsOptional] <p>The maximum amount of time a worker may take to process the activity task.</p>
-- @param _input [Data] <p>The input provided to the activity task.</p>
-- Required parameter: activityType
-- Required parameter: activityId
-- Required parameter: taskList
-- Required parameter: decisionTaskCompletedEventId
function M.ActivityTaskScheduledEventAttributes(_control, _taskList, _scheduleToCloseTimeout, _activityType, _decisionTaskCompletedEventId, _taskPriority, _heartbeatTimeout, _activityId, _scheduleToStartTimeout, _startToCloseTimeout, _input, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTaskScheduledEventAttributes")
	local t = { 
		["control"] = _control,
		["taskList"] = _taskList,
		["scheduleToCloseTimeout"] = _scheduleToCloseTimeout,
		["activityType"] = _activityType,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
		["taskPriority"] = _taskPriority,
		["heartbeatTimeout"] = _heartbeatTimeout,
		["activityId"] = _activityId,
		["scheduleToStartTimeout"] = _scheduleToStartTimeout,
		["startToCloseTimeout"] = _startToCloseTimeout,
		["input"] = _input,
	}
	asserts.AssertActivityTaskScheduledEventAttributes(t)
	return t
end

keys.ChildWorkflowExecutionCompletedEventAttributes = { ["startedEventId"] = true, ["workflowType"] = true, ["initiatedEventId"] = true, ["result"] = true, ["workflowExecution"] = true, nil }

function asserts.AssertChildWorkflowExecutionCompletedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChildWorkflowExecutionCompletedEventAttributes to be of type 'table'")
	assert(struct["workflowExecution"], "Expected key workflowExecution to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then asserts.AssertEventId(struct["startedEventId"]) end
	if struct["workflowType"] then asserts.AssertWorkflowType(struct["workflowType"]) end
	if struct["initiatedEventId"] then asserts.AssertEventId(struct["initiatedEventId"]) end
	if struct["result"] then asserts.AssertData(struct["result"]) end
	if struct["workflowExecution"] then asserts.AssertWorkflowExecution(struct["workflowExecution"]) end
	for k,_ in pairs(struct) do
		assert(keys.ChildWorkflowExecutionCompletedEventAttributes[k], "ChildWorkflowExecutionCompletedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChildWorkflowExecutionCompletedEventAttributes
-- <p>Provides details of the <code>ChildWorkflowExecutionCompleted</code> event.</p>
-- @param _startedEventId [EventId] <p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _workflowType [WorkflowType] <p>The type of the child workflow execution.</p>
-- @param _initiatedEventId [EventId] <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> decision to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _result [Data] <p>The result of the child workflow execution (if any).</p>
-- @param _workflowExecution [WorkflowExecution] <p>The child workflow execution that was completed.</p>
-- Required parameter: workflowExecution
-- Required parameter: workflowType
-- Required parameter: initiatedEventId
-- Required parameter: startedEventId
function M.ChildWorkflowExecutionCompletedEventAttributes(_startedEventId, _workflowType, _initiatedEventId, _result, _workflowExecution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChildWorkflowExecutionCompletedEventAttributes")
	local t = { 
		["startedEventId"] = _startedEventId,
		["workflowType"] = _workflowType,
		["initiatedEventId"] = _initiatedEventId,
		["result"] = _result,
		["workflowExecution"] = _workflowExecution,
	}
	asserts.AssertChildWorkflowExecutionCompletedEventAttributes(t)
	return t
end

keys.RespondActivityTaskCompletedInput = { ["result"] = true, ["taskToken"] = true, nil }

function asserts.AssertRespondActivityTaskCompletedInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RespondActivityTaskCompletedInput to be of type 'table'")
	assert(struct["taskToken"], "Expected key taskToken to exist in table")
	if struct["result"] then asserts.AssertData(struct["result"]) end
	if struct["taskToken"] then asserts.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.RespondActivityTaskCompletedInput[k], "RespondActivityTaskCompletedInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RespondActivityTaskCompletedInput
--  
-- @param _result [Data] <p>The result of the activity task. It is a free form string that is implementation specific.</p>
-- @param _taskToken [TaskToken] <p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p> <important> <code>taskToken</code> is generated by the service and should be treated as an opaque value. If the task is passed to another process, its <code>taskToken</code> must also be passed. This enables it to provide its progress and respond with results.</important>
-- Required parameter: taskToken
function M.RespondActivityTaskCompletedInput(_result, _taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RespondActivityTaskCompletedInput")
	local t = { 
		["result"] = _result,
		["taskToken"] = _taskToken,
	}
	asserts.AssertRespondActivityTaskCompletedInput(t)
	return t
end

keys.TimerCanceledEventAttributes = { ["startedEventId"] = true, ["timerId"] = true, ["decisionTaskCompletedEventId"] = true, nil }

function asserts.AssertTimerCanceledEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimerCanceledEventAttributes to be of type 'table'")
	assert(struct["timerId"], "Expected key timerId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["startedEventId"] then asserts.AssertEventId(struct["startedEventId"]) end
	if struct["timerId"] then asserts.AssertTimerId(struct["timerId"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimerCanceledEventAttributes[k], "TimerCanceledEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimerCanceledEventAttributes
-- <p> Provides details of the <code>TimerCanceled</code> event. </p>
-- @param _startedEventId [EventId] <p>The ID of the <code>TimerStarted</code> event that was recorded when this timer was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _timerId [TimerId] <p> The unique ID of the timer that was canceled. </p>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CancelTimer</code> decision to cancel this timer. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required parameter: timerId
-- Required parameter: startedEventId
-- Required parameter: decisionTaskCompletedEventId
function M.TimerCanceledEventAttributes(_startedEventId, _timerId, _decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimerCanceledEventAttributes")
	local t = { 
		["startedEventId"] = _startedEventId,
		["timerId"] = _timerId,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
	}
	asserts.AssertTimerCanceledEventAttributes(t)
	return t
end

keys.ActivityTaskCompletedEventAttributes = { ["startedEventId"] = true, ["scheduledEventId"] = true, ["result"] = true, nil }

function asserts.AssertActivityTaskCompletedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTaskCompletedEventAttributes to be of type 'table'")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then asserts.AssertEventId(struct["startedEventId"]) end
	if struct["scheduledEventId"] then asserts.AssertEventId(struct["scheduledEventId"]) end
	if struct["result"] then asserts.AssertData(struct["result"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityTaskCompletedEventAttributes[k], "ActivityTaskCompletedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTaskCompletedEventAttributes
-- <p>Provides details of the <code>ActivityTaskCompleted</code> event.</p>
-- @param _startedEventId [EventId] <p>The ID of the <code>ActivityTaskStarted</code> event recorded when this activity task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _scheduledEventId [EventId] <p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _result [Data] <p>The results of the activity task (if any).</p>
-- Required parameter: scheduledEventId
-- Required parameter: startedEventId
function M.ActivityTaskCompletedEventAttributes(_startedEventId, _scheduledEventId, _result, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTaskCompletedEventAttributes")
	local t = { 
		["startedEventId"] = _startedEventId,
		["scheduledEventId"] = _scheduledEventId,
		["result"] = _result,
	}
	asserts.AssertActivityTaskCompletedEventAttributes(t)
	return t
end

keys.ScheduleLambdaFunctionDecisionAttributes = { ["input"] = true, ["startToCloseTimeout"] = true, ["id"] = true, ["name"] = true, nil }

function asserts.AssertScheduleLambdaFunctionDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleLambdaFunctionDecisionAttributes to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["input"] then asserts.AssertFunctionInput(struct["input"]) end
	if struct["startToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["startToCloseTimeout"]) end
	if struct["id"] then asserts.AssertFunctionId(struct["id"]) end
	if struct["name"] then asserts.AssertFunctionName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScheduleLambdaFunctionDecisionAttributes[k], "ScheduleLambdaFunctionDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleLambdaFunctionDecisionAttributes
-- <p>Provides details of the <code>ScheduleLambdaFunction</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys. <ul> <li><code>activityType.name</code>: String constraint. The key is <code>swf:activityType.name</code>.</li> <li><code>activityType.version</code>: String constraint. The key is <code>swf:activityType.version</code>.</li> <li><code>taskList</code>: String constraint. The key is <code>swf:taskList.name</code>.</li> </ul> </li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-- @param _input [FunctionInput] <p>The input provided to the AWS Lambda function.</p>
-- @param _startToCloseTimeout [DurationInSecondsOptional] <p>If set, specifies the maximum duration the function may take to execute.</p>
-- @param _id [FunctionId] <p><b>Required.</b> The SWF <code>id</code> of the AWS Lambda task.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.</p>
-- @param _name [FunctionName] <p><b>Required.</b> The name of the AWS Lambda function to invoke.</p>
-- Required parameter: id
-- Required parameter: name
function M.ScheduleLambdaFunctionDecisionAttributes(_input, _startToCloseTimeout, _id, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScheduleLambdaFunctionDecisionAttributes")
	local t = { 
		["input"] = _input,
		["startToCloseTimeout"] = _startToCloseTimeout,
		["id"] = _id,
		["name"] = _name,
	}
	asserts.AssertScheduleLambdaFunctionDecisionAttributes(t)
	return t
end

keys.ActivityTaskStartedEventAttributes = { ["scheduledEventId"] = true, ["identity"] = true, nil }

function asserts.AssertActivityTaskStartedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTaskStartedEventAttributes to be of type 'table'")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	if struct["scheduledEventId"] then asserts.AssertEventId(struct["scheduledEventId"]) end
	if struct["identity"] then asserts.AssertIdentity(struct["identity"]) end
	for k,_ in pairs(struct) do
		assert(keys.ActivityTaskStartedEventAttributes[k], "ActivityTaskStartedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTaskStartedEventAttributes
-- <p>Provides details of the <code>ActivityTaskStarted</code> event.</p>
-- @param _scheduledEventId [EventId] <p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _identity [Identity] <p>Identity of the worker that was assigned this task. This aids diagnostics when problems arise. The form of this identity is user defined.</p>
-- Required parameter: scheduledEventId
function M.ActivityTaskStartedEventAttributes(_scheduledEventId, _identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTaskStartedEventAttributes")
	local t = { 
		["scheduledEventId"] = _scheduledEventId,
		["identity"] = _identity,
	}
	asserts.AssertActivityTaskStartedEventAttributes(t)
	return t
end

keys.TagFilter = { ["tag"] = true, nil }

function asserts.AssertTagFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagFilter to be of type 'table'")
	assert(struct["tag"], "Expected key tag to exist in table")
	if struct["tag"] then asserts.AssertTag(struct["tag"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagFilter[k], "TagFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagFilter
-- <p>Used to filter the workflow executions in visibility APIs based on a tag.</p>
-- @param _tag [Tag] <p><b>Required.</b> Specifies the tag that must be associated with the execution for it to meet the filter criteria.</p>
-- Required parameter: tag
function M.TagFilter(_tag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagFilter")
	local t = { 
		["tag"] = _tag,
	}
	asserts.AssertTagFilter(t)
	return t
end

keys.WorkflowExecutionCount = { ["count"] = true, ["truncated"] = true, nil }

function asserts.AssertWorkflowExecutionCount(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionCount to be of type 'table'")
	assert(struct["count"], "Expected key count to exist in table")
	if struct["count"] then asserts.AssertCount(struct["count"]) end
	if struct["truncated"] then asserts.AssertTruncated(struct["truncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowExecutionCount[k], "WorkflowExecutionCount contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionCount
-- <p>Contains the count of workflow executions returned from <a>CountOpenWorkflowExecutions</a> or <a>CountClosedWorkflowExecutions</a></p>
-- @param _count [Count] <p>The number of workflow executions.</p>
-- @param _truncated [Truncated] <p>If set to true, indicates that the actual count was more than the maximum supported by this API and the count returned is the truncated value.</p>
-- Required parameter: count
function M.WorkflowExecutionCount(_count, _truncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionCount")
	local t = { 
		["count"] = _count,
		["truncated"] = _truncated,
	}
	asserts.AssertWorkflowExecutionCount(t)
	return t
end

keys.CountClosedWorkflowExecutionsInput = { ["domain"] = true, ["typeFilter"] = true, ["tagFilter"] = true, ["closeTimeFilter"] = true, ["closeStatusFilter"] = true, ["startTimeFilter"] = true, ["executionFilter"] = true, nil }

function asserts.AssertCountClosedWorkflowExecutionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CountClosedWorkflowExecutionsInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["typeFilter"] then asserts.AssertWorkflowTypeFilter(struct["typeFilter"]) end
	if struct["tagFilter"] then asserts.AssertTagFilter(struct["tagFilter"]) end
	if struct["closeTimeFilter"] then asserts.AssertExecutionTimeFilter(struct["closeTimeFilter"]) end
	if struct["closeStatusFilter"] then asserts.AssertCloseStatusFilter(struct["closeStatusFilter"]) end
	if struct["startTimeFilter"] then asserts.AssertExecutionTimeFilter(struct["startTimeFilter"]) end
	if struct["executionFilter"] then asserts.AssertWorkflowExecutionFilter(struct["executionFilter"]) end
	for k,_ in pairs(struct) do
		assert(keys.CountClosedWorkflowExecutionsInput[k], "CountClosedWorkflowExecutionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CountClosedWorkflowExecutionsInput
--  
-- @param _domain [DomainName] <p>The name of the domain containing the workflow executions to count.</p>
-- @param _typeFilter [WorkflowTypeFilter] <p>If specified, indicates the type of the workflow executions to be counted.</p> <note><code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</note>
-- @param _tagFilter [TagFilter] <p>If specified, only executions that have a tag that matches the filter are counted.</p> <note><code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</note>
-- @param _closeTimeFilter [ExecutionTimeFilter] <p>If specified, only workflow executions that meet the close time criteria of the filter are counted.</p> <note><code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You must specify one of these in a request but not both.</note>
-- @param _closeStatusFilter [CloseStatusFilter] <p>If specified, only workflow executions that match this close status are counted. This filter has an affect only if <code>executionStatus</code> is specified as <code>CLOSED</code>.</p> <note><code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</note>
-- @param _startTimeFilter [ExecutionTimeFilter] <p>If specified, only workflow executions that meet the start time criteria of the filter are counted.</p> <note><code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You must specify one of these in a request but not both.</note>
-- @param _executionFilter [WorkflowExecutionFilter] <p>If specified, only workflow executions matching the <code>WorkflowId</code> in the filter are counted.</p> <note><code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</note>
-- Required parameter: domain
function M.CountClosedWorkflowExecutionsInput(_domain, _typeFilter, _tagFilter, _closeTimeFilter, _closeStatusFilter, _startTimeFilter, _executionFilter, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CountClosedWorkflowExecutionsInput")
	local t = { 
		["domain"] = _domain,
		["typeFilter"] = _typeFilter,
		["tagFilter"] = _tagFilter,
		["closeTimeFilter"] = _closeTimeFilter,
		["closeStatusFilter"] = _closeStatusFilter,
		["startTimeFilter"] = _startTimeFilter,
		["executionFilter"] = _executionFilter,
	}
	asserts.AssertCountClosedWorkflowExecutionsInput(t)
	return t
end

keys.WorkflowExecutionOpenCounts = { ["openTimers"] = true, ["openDecisionTasks"] = true, ["openLambdaFunctions"] = true, ["openActivityTasks"] = true, ["openChildWorkflowExecutions"] = true, nil }

function asserts.AssertWorkflowExecutionOpenCounts(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionOpenCounts to be of type 'table'")
	assert(struct["openActivityTasks"], "Expected key openActivityTasks to exist in table")
	assert(struct["openDecisionTasks"], "Expected key openDecisionTasks to exist in table")
	assert(struct["openTimers"], "Expected key openTimers to exist in table")
	assert(struct["openChildWorkflowExecutions"], "Expected key openChildWorkflowExecutions to exist in table")
	if struct["openTimers"] then asserts.AssertCount(struct["openTimers"]) end
	if struct["openDecisionTasks"] then asserts.AssertOpenDecisionTasksCount(struct["openDecisionTasks"]) end
	if struct["openLambdaFunctions"] then asserts.AssertCount(struct["openLambdaFunctions"]) end
	if struct["openActivityTasks"] then asserts.AssertCount(struct["openActivityTasks"]) end
	if struct["openChildWorkflowExecutions"] then asserts.AssertCount(struct["openChildWorkflowExecutions"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowExecutionOpenCounts[k], "WorkflowExecutionOpenCounts contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionOpenCounts
-- <p>Contains the counts of open tasks, child workflow executions and timers for a workflow execution.</p>
-- @param _openTimers [Count] <p>The count of timers started by this workflow execution that have not fired yet.</p>
-- @param _openDecisionTasks [OpenDecisionTasksCount] <p>The count of decision tasks whose status is OPEN. A workflow execution can have at most one open decision task.</p>
-- @param _openLambdaFunctions [Count] <p>The count of AWS Lambda functions that are currently executing.</p>
-- @param _openActivityTasks [Count] <p>The count of activity tasks whose status is OPEN.</p>
-- @param _openChildWorkflowExecutions [Count] <p>The count of child workflow executions whose status is OPEN.</p>
-- Required parameter: openActivityTasks
-- Required parameter: openDecisionTasks
-- Required parameter: openTimers
-- Required parameter: openChildWorkflowExecutions
function M.WorkflowExecutionOpenCounts(_openTimers, _openDecisionTasks, _openLambdaFunctions, _openActivityTasks, _openChildWorkflowExecutions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionOpenCounts")
	local t = { 
		["openTimers"] = _openTimers,
		["openDecisionTasks"] = _openDecisionTasks,
		["openLambdaFunctions"] = _openLambdaFunctions,
		["openActivityTasks"] = _openActivityTasks,
		["openChildWorkflowExecutions"] = _openChildWorkflowExecutions,
	}
	asserts.AssertWorkflowExecutionOpenCounts(t)
	return t
end

keys.WorkflowExecutionCancelRequestedEventAttributes = { ["externalInitiatedEventId"] = true, ["cause"] = true, ["externalWorkflowExecution"] = true, nil }

function asserts.AssertWorkflowExecutionCancelRequestedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionCancelRequestedEventAttributes to be of type 'table'")
	if struct["externalInitiatedEventId"] then asserts.AssertEventId(struct["externalInitiatedEventId"]) end
	if struct["cause"] then asserts.AssertWorkflowExecutionCancelRequestedCause(struct["cause"]) end
	if struct["externalWorkflowExecution"] then asserts.AssertWorkflowExecution(struct["externalWorkflowExecution"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowExecutionCancelRequestedEventAttributes[k], "WorkflowExecutionCancelRequestedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionCancelRequestedEventAttributes
-- <p>Provides details of the <code>WorkflowExecutionCancelRequested</code> event.</p>
-- @param _externalInitiatedEventId [EventId] <p>The ID of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event corresponding to the <code>RequestCancelExternalWorkflowExecution</code> decision to cancel this workflow execution.The source event with this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _cause [WorkflowExecutionCancelRequestedCause] <p>If set, indicates that the request to cancel the workflow execution was automatically generated, and specifies the cause. This happens if the parent workflow execution times out or is terminated, and the child policy is set to cancel child executions.</p>
-- @param _externalWorkflowExecution [WorkflowExecution] <p>The external workflow execution for which the cancellation was requested.</p>
function M.WorkflowExecutionCancelRequestedEventAttributes(_externalInitiatedEventId, _cause, _externalWorkflowExecution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionCancelRequestedEventAttributes")
	local t = { 
		["externalInitiatedEventId"] = _externalInitiatedEventId,
		["cause"] = _cause,
		["externalWorkflowExecution"] = _externalWorkflowExecution,
	}
	asserts.AssertWorkflowExecutionCancelRequestedEventAttributes(t)
	return t
end

keys.StartTimerFailedEventAttributes = { ["timerId"] = true, ["cause"] = true, ["decisionTaskCompletedEventId"] = true, nil }

function asserts.AssertStartTimerFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartTimerFailedEventAttributes to be of type 'table'")
	assert(struct["timerId"], "Expected key timerId to exist in table")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["timerId"] then asserts.AssertTimerId(struct["timerId"]) end
	if struct["cause"] then asserts.AssertStartTimerFailedCause(struct["cause"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartTimerFailedEventAttributes[k], "StartTimerFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartTimerFailedEventAttributes
-- <p>Provides details of the <code>StartTimerFailed</code> event.</p>
-- @param _timerId [TimerId] <p>The timerId provided in the <code>StartTimer</code> decision that failed.</p>
-- @param _cause [StartTimerFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note>If <b>cause</b> is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</note>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>StartTimer</code> decision for this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required parameter: timerId
-- Required parameter: cause
-- Required parameter: decisionTaskCompletedEventId
function M.StartTimerFailedEventAttributes(_timerId, _cause, _decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartTimerFailedEventAttributes")
	local t = { 
		["timerId"] = _timerId,
		["cause"] = _cause,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
	}
	asserts.AssertStartTimerFailedEventAttributes(t)
	return t
end

keys.WorkflowExecutionAlreadyStartedFault = { ["message"] = true, nil }

function asserts.AssertWorkflowExecutionAlreadyStartedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionAlreadyStartedFault to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowExecutionAlreadyStartedFault[k], "WorkflowExecutionAlreadyStartedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionAlreadyStartedFault
-- <p>Returned by <a>StartWorkflowExecution</a> when an open execution with the same workflowId is already running in the specified domain.</p>
-- @param _message [ErrorMessage] <p>A description that may help with diagnosing the cause of the fault.</p>
function M.WorkflowExecutionAlreadyStartedFault(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionAlreadyStartedFault")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertWorkflowExecutionAlreadyStartedFault(t)
	return t
end

keys.CompleteWorkflowExecutionDecisionAttributes = { ["result"] = true, nil }

function asserts.AssertCompleteWorkflowExecutionDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompleteWorkflowExecutionDecisionAttributes to be of type 'table'")
	if struct["result"] then asserts.AssertData(struct["result"]) end
	for k,_ in pairs(struct) do
		assert(keys.CompleteWorkflowExecutionDecisionAttributes[k], "CompleteWorkflowExecutionDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompleteWorkflowExecutionDecisionAttributes
-- <p>Provides details of the <code>CompleteWorkflowExecution</code> decision.</p> <p><b>Access Control</b></p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</li> <li>Use an <code>Action</code> element to allow or deny permission to call this action.</li> <li>You cannot use an IAM policy to constrain this action's parameters.</li> </ul> <p>If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <b>cause</b> parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a>.</p>
-- @param _result [Data] <p>The result of the workflow execution. The form of the result is implementation defined.</p>
function M.CompleteWorkflowExecutionDecisionAttributes(_result, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CompleteWorkflowExecutionDecisionAttributes")
	local t = { 
		["result"] = _result,
	}
	asserts.AssertCompleteWorkflowExecutionDecisionAttributes(t)
	return t
end

keys.LambdaFunctionScheduledEventAttributes = { ["input"] = true, ["startToCloseTimeout"] = true, ["decisionTaskCompletedEventId"] = true, ["id"] = true, ["name"] = true, nil }

function asserts.AssertLambdaFunctionScheduledEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionScheduledEventAttributes to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["input"] then asserts.AssertFunctionInput(struct["input"]) end
	if struct["startToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["startToCloseTimeout"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["id"] then asserts.AssertFunctionId(struct["id"]) end
	if struct["name"] then asserts.AssertFunctionName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaFunctionScheduledEventAttributes[k], "LambdaFunctionScheduledEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionScheduledEventAttributes
-- <p>Provides details for the <code>LambdaFunctionScheduled</code> event.</p>
-- @param _input [FunctionInput] <p>Input provided to the AWS Lambda function.</p>
-- @param _startToCloseTimeout [DurationInSecondsOptional] <p>The maximum time, in seconds, that the AWS Lambda function can take to execute from start to close before it is marked as failed.</p>
-- @param _decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event for the decision that resulted in the scheduling of this AWS Lambda function. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _id [FunctionId] <p>The unique Amazon SWF ID for the AWS Lambda task.</p>
-- @param _name [FunctionName] <p>The name of the scheduled AWS Lambda function.</p>
-- Required parameter: id
-- Required parameter: name
-- Required parameter: decisionTaskCompletedEventId
function M.LambdaFunctionScheduledEventAttributes(_input, _startToCloseTimeout, _decisionTaskCompletedEventId, _id, _name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionScheduledEventAttributes")
	local t = { 
		["input"] = _input,
		["startToCloseTimeout"] = _startToCloseTimeout,
		["decisionTaskCompletedEventId"] = _decisionTaskCompletedEventId,
		["id"] = _id,
		["name"] = _name,
	}
	asserts.AssertLambdaFunctionScheduledEventAttributes(t)
	return t
end

keys.DecisionTaskCompletedEventAttributes = { ["startedEventId"] = true, ["executionContext"] = true, ["scheduledEventId"] = true, nil }

function asserts.AssertDecisionTaskCompletedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecisionTaskCompletedEventAttributes to be of type 'table'")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then asserts.AssertEventId(struct["startedEventId"]) end
	if struct["executionContext"] then asserts.AssertData(struct["executionContext"]) end
	if struct["scheduledEventId"] then asserts.AssertEventId(struct["scheduledEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DecisionTaskCompletedEventAttributes[k], "DecisionTaskCompletedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecisionTaskCompletedEventAttributes
-- <p>Provides details of the <code>DecisionTaskCompleted</code> event.</p>
-- @param _startedEventId [EventId] <p>The ID of the <code>DecisionTaskStarted</code> event recorded when this decision task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- @param _executionContext [Data] <p>User defined context for the workflow execution.</p>
-- @param _scheduledEventId [EventId] <p>The ID of the <code>DecisionTaskScheduled</code> event that was recorded when this decision task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required parameter: scheduledEventId
-- Required parameter: startedEventId
function M.DecisionTaskCompletedEventAttributes(_startedEventId, _executionContext, _scheduledEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecisionTaskCompletedEventAttributes")
	local t = { 
		["startedEventId"] = _startedEventId,
		["executionContext"] = _executionContext,
		["scheduledEventId"] = _scheduledEventId,
	}
	asserts.AssertDecisionTaskCompletedEventAttributes(t)
	return t
end

function asserts.AssertStartChildWorkflowExecutionFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected StartChildWorkflowExecutionFailedCause to be of type 'string'")
end

--  
function M.StartChildWorkflowExecutionFailedCause(str)
	asserts.AssertStartChildWorkflowExecutionFailedCause(str)
	return str
end

function asserts.AssertFunctionInput(str)
	assert(str)
	assert(type(str) == "string", "Expected FunctionInput to be of type 'string'")
	assert(#str <= 32768, "Expected string to be max 32768 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.FunctionInput(str)
	asserts.AssertFunctionInput(str)
	return str
end

function asserts.AssertTimerId(str)
	assert(str)
	assert(type(str) == "string", "Expected TimerId to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TimerId(str)
	asserts.AssertTimerId(str)
	return str
end

function asserts.AssertFunctionName(str)
	assert(str)
	assert(type(str) == "string", "Expected FunctionName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.FunctionName(str)
	asserts.AssertFunctionName(str)
	return str
end

function asserts.AssertTerminateReason(str)
	assert(str)
	assert(type(str) == "string", "Expected TerminateReason to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TerminateReason(str)
	asserts.AssertTerminateReason(str)
	return str
end

function asserts.AssertPageToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PageToken to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.PageToken(str)
	asserts.AssertPageToken(str)
	return str
end

function asserts.AssertActivityId(str)
	assert(str)
	assert(type(str) == "string", "Expected ActivityId to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ActivityId(str)
	asserts.AssertActivityId(str)
	return str
end

function asserts.AssertRequestCancelActivityTaskFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected RequestCancelActivityTaskFailedCause to be of type 'string'")
end

--  
function M.RequestCancelActivityTaskFailedCause(str)
	asserts.AssertRequestCancelActivityTaskFailedCause(str)
	return str
end

function asserts.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
	assert(#str <= 1224, "Expected string to be max 1224 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Arn(str)
	asserts.AssertArn(str)
	return str
end

function asserts.AssertDomainName(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DomainName(str)
	asserts.AssertDomainName(str)
	return str
end

function asserts.AssertStartLambdaFunctionFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected StartLambdaFunctionFailedCause to be of type 'string'")
end

--  
function M.StartLambdaFunctionFailedCause(str)
	asserts.AssertStartLambdaFunctionFailedCause(str)
	return str
end

function asserts.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Version(str)
	asserts.AssertVersion(str)
	return str
end

function asserts.AssertRunId(str)
	assert(str)
	assert(type(str) == "string", "Expected RunId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RunId(str)
	asserts.AssertRunId(str)
	return str
end

function asserts.AssertLimitedData(str)
	assert(str)
	assert(type(str) == "string", "Expected LimitedData to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.LimitedData(str)
	asserts.AssertLimitedData(str)
	return str
end

function asserts.AssertFailureReason(str)
	assert(str)
	assert(type(str) == "string", "Expected FailureReason to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.FailureReason(str)
	asserts.AssertFailureReason(str)
	return str
end

function asserts.AssertStartTimerFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected StartTimerFailedCause to be of type 'string'")
end

--  
function M.StartTimerFailedCause(str)
	asserts.AssertStartTimerFailedCause(str)
	return str
end

function asserts.AssertDurationInSeconds(str)
	assert(str)
	assert(type(str) == "string", "Expected DurationInSeconds to be of type 'string'")
	assert(#str <= 8, "Expected string to be max 8 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DurationInSeconds(str)
	asserts.AssertDurationInSeconds(str)
	return str
end

function asserts.AssertRecordMarkerFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordMarkerFailedCause to be of type 'string'")
end

--  
function M.RecordMarkerFailedCause(str)
	asserts.AssertRecordMarkerFailedCause(str)
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

function asserts.AssertDurationInDays(str)
	assert(str)
	assert(type(str) == "string", "Expected DurationInDays to be of type 'string'")
	assert(#str <= 8, "Expected string to be max 8 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DurationInDays(str)
	asserts.AssertDurationInDays(str)
	return str
end

function asserts.AssertCauseMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected CauseMessage to be of type 'string'")
	assert(#str <= 1728, "Expected string to be max 1728 characters")
end

--  
function M.CauseMessage(str)
	asserts.AssertCauseMessage(str)
	return str
end

function asserts.AssertVersionOptional(str)
	assert(str)
	assert(type(str) == "string", "Expected VersionOptional to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.VersionOptional(str)
	asserts.AssertVersionOptional(str)
	return str
end

function asserts.AssertRequestCancelExternalWorkflowExecutionFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected RequestCancelExternalWorkflowExecutionFailedCause to be of type 'string'")
end

--  
function M.RequestCancelExternalWorkflowExecutionFailedCause(str)
	asserts.AssertRequestCancelExternalWorkflowExecutionFailedCause(str)
	return str
end

function asserts.AssertActivityTaskTimeoutType(str)
	assert(str)
	assert(type(str) == "string", "Expected ActivityTaskTimeoutType to be of type 'string'")
end

--  
function M.ActivityTaskTimeoutType(str)
	asserts.AssertActivityTaskTimeoutType(str)
	return str
end

function asserts.AssertChildPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected ChildPolicy to be of type 'string'")
end

--  
function M.ChildPolicy(str)
	asserts.AssertChildPolicy(str)
	return str
end

function asserts.AssertLambdaFunctionTimeoutType(str)
	assert(str)
	assert(type(str) == "string", "Expected LambdaFunctionTimeoutType to be of type 'string'")
end

--  
function M.LambdaFunctionTimeoutType(str)
	asserts.AssertLambdaFunctionTimeoutType(str)
	return str
end

function asserts.AssertEventType(str)
	assert(str)
	assert(type(str) == "string", "Expected EventType to be of type 'string'")
end

--  
function M.EventType(str)
	asserts.AssertEventType(str)
	return str
end

function asserts.AssertScheduleLambdaFunctionFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected ScheduleLambdaFunctionFailedCause to be of type 'string'")
end

--  
function M.ScheduleLambdaFunctionFailedCause(str)
	asserts.AssertScheduleLambdaFunctionFailedCause(str)
	return str
end

function asserts.AssertCloseStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CloseStatus to be of type 'string'")
end

--  
function M.CloseStatus(str)
	asserts.AssertCloseStatus(str)
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

function asserts.AssertTaskPriority(str)
	assert(str)
	assert(type(str) == "string", "Expected TaskPriority to be of type 'string'")
	assert(#str <= 11, "Expected string to be max 11 characters")
end

--  
function M.TaskPriority(str)
	asserts.AssertTaskPriority(str)
	return str
end

function asserts.AssertCompleteWorkflowExecutionFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected CompleteWorkflowExecutionFailedCause to be of type 'string'")
end

--  
function M.CompleteWorkflowExecutionFailedCause(str)
	asserts.AssertCompleteWorkflowExecutionFailedCause(str)
	return str
end

function asserts.AssertScheduleActivityTaskFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected ScheduleActivityTaskFailedCause to be of type 'string'")
end

--  
function M.ScheduleActivityTaskFailedCause(str)
	asserts.AssertScheduleActivityTaskFailedCause(str)
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

function asserts.AssertMarkerName(str)
	assert(str)
	assert(type(str) == "string", "Expected MarkerName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MarkerName(str)
	asserts.AssertMarkerName(str)
	return str
end

function asserts.AssertWorkflowId(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkflowId to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.WorkflowId(str)
	asserts.AssertWorkflowId(str)
	return str
end

function asserts.AssertDurationInSecondsOptional(str)
	assert(str)
	assert(type(str) == "string", "Expected DurationInSecondsOptional to be of type 'string'")
	assert(#str <= 8, "Expected string to be max 8 characters")
end

--  
function M.DurationInSecondsOptional(str)
	asserts.AssertDurationInSecondsOptional(str)
	return str
end

function asserts.AssertRunIdOptional(str)
	assert(str)
	assert(type(str) == "string", "Expected RunIdOptional to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.RunIdOptional(str)
	asserts.AssertRunIdOptional(str)
	return str
end

function asserts.AssertWorkflowExecutionCancelRequestedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkflowExecutionCancelRequestedCause to be of type 'string'")
end

--  
function M.WorkflowExecutionCancelRequestedCause(str)
	asserts.AssertWorkflowExecutionCancelRequestedCause(str)
	return str
end

function asserts.AssertWorkflowExecutionTimeoutType(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkflowExecutionTimeoutType to be of type 'string'")
end

--  
function M.WorkflowExecutionTimeoutType(str)
	asserts.AssertWorkflowExecutionTimeoutType(str)
	return str
end

function asserts.AssertFailWorkflowExecutionFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected FailWorkflowExecutionFailedCause to be of type 'string'")
end

--  
function M.FailWorkflowExecutionFailedCause(str)
	asserts.AssertFailWorkflowExecutionFailedCause(str)
	return str
end

function asserts.AssertDecisionTaskTimeoutType(str)
	assert(str)
	assert(type(str) == "string", "Expected DecisionTaskTimeoutType to be of type 'string'")
end

--  
function M.DecisionTaskTimeoutType(str)
	asserts.AssertDecisionTaskTimeoutType(str)
	return str
end

function asserts.AssertCancelWorkflowExecutionFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected CancelWorkflowExecutionFailedCause to be of type 'string'")
end

--  
function M.CancelWorkflowExecutionFailedCause(str)
	asserts.AssertCancelWorkflowExecutionFailedCause(str)
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

function asserts.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.Description(str)
	asserts.AssertDescription(str)
	return str
end

function asserts.AssertSignalExternalWorkflowExecutionFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected SignalExternalWorkflowExecutionFailedCause to be of type 'string'")
end

--  
function M.SignalExternalWorkflowExecutionFailedCause(str)
	asserts.AssertSignalExternalWorkflowExecutionFailedCause(str)
	return str
end

function asserts.AssertSignalName(str)
	assert(str)
	assert(type(str) == "string", "Expected SignalName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SignalName(str)
	asserts.AssertSignalName(str)
	return str
end

function asserts.AssertWorkflowExecutionTerminatedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkflowExecutionTerminatedCause to be of type 'string'")
end

--  
function M.WorkflowExecutionTerminatedCause(str)
	asserts.AssertWorkflowExecutionTerminatedCause(str)
	return str
end

function asserts.AssertTag(str)
	assert(str)
	assert(type(str) == "string", "Expected Tag to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Tag(str)
	asserts.AssertTag(str)
	return str
end

function asserts.AssertName(str)
	assert(str)
	assert(type(str) == "string", "Expected Name to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Name(str)
	asserts.AssertName(str)
	return str
end

function asserts.AssertFunctionId(str)
	assert(str)
	assert(type(str) == "string", "Expected FunctionId to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.FunctionId(str)
	asserts.AssertFunctionId(str)
	return str
end

function asserts.AssertRegistrationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected RegistrationStatus to be of type 'string'")
end

--  
function M.RegistrationStatus(str)
	asserts.AssertRegistrationStatus(str)
	return str
end

function asserts.AssertCancelTimerFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected CancelTimerFailedCause to be of type 'string'")
end

--  
function M.CancelTimerFailedCause(str)
	asserts.AssertCancelTimerFailedCause(str)
	return str
end

function asserts.AssertContinueAsNewWorkflowExecutionFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected ContinueAsNewWorkflowExecutionFailedCause to be of type 'string'")
end

--  
function M.ContinueAsNewWorkflowExecutionFailedCause(str)
	asserts.AssertContinueAsNewWorkflowExecutionFailedCause(str)
	return str
end

function asserts.AssertDecisionType(str)
	assert(str)
	assert(type(str) == "string", "Expected DecisionType to be of type 'string'")
end

--  
function M.DecisionType(str)
	asserts.AssertDecisionType(str)
	return str
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

function asserts.AssertOpenDecisionTasksCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected OpenDecisionTasksCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1, "Expected integer to be max 1")
end

function M.OpenDecisionTasksCount(integer)
	asserts.AssertOpenDecisionTasksCount(integer)
	return integer
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

function asserts.AssertCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Count to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Count(integer)
	asserts.AssertCount(integer)
	return integer
end

function asserts.AssertCanceled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Canceled to be of type 'boolean'")
end

function M.Canceled(boolean)
	asserts.AssertCanceled(boolean)
	return boolean
end

function asserts.AssertTruncated(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Truncated to be of type 'boolean'")
end

function M.Truncated(boolean)
	asserts.AssertTruncated(boolean)
	return boolean
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

function asserts.AssertDomainInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDomainInfo(v)
	end
end

--  
-- List of DomainInfo objects
function M.DomainInfoList(list)
	asserts.AssertDomainInfoList(list)
	return list
end

function asserts.AssertWorkflowTypeInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected WorkflowTypeInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertWorkflowTypeInfo(v)
	end
end

--  
-- List of WorkflowTypeInfo objects
function M.WorkflowTypeInfoList(list)
	asserts.AssertWorkflowTypeInfoList(list)
	return list
end

function asserts.AssertWorkflowExecutionInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected WorkflowExecutionInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertWorkflowExecutionInfo(v)
	end
end

--  
-- List of WorkflowExecutionInfo objects
function M.WorkflowExecutionInfoList(list)
	asserts.AssertWorkflowExecutionInfoList(list)
	return list
end

function asserts.AssertActivityTypeInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected ActivityTypeInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertActivityTypeInfo(v)
	end
end

--  
-- List of ActivityTypeInfo objects
function M.ActivityTypeInfoList(list)
	asserts.AssertActivityTypeInfoList(list)
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

function asserts.AssertDecisionList(list)
	assert(list)
	assert(type(list) == "table", "Expected DecisionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDecision(v)
	end
end

--  
-- List of Decision objects
function M.DecisionList(list)
	asserts.AssertDecisionList(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	asserts.AssertTagList(list)
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
			return "swf.amazonaws.com"
		end
	end
	local ss = { "swf" }
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
--- Call SignalWorkflowExecution asynchronously, invoking a callback when done
-- @param SignalWorkflowExecutionInput
-- @param cb Callback function accepting two args: response, error_message
function M.SignalWorkflowExecutionAsync(SignalWorkflowExecutionInput, cb)
	assert(SignalWorkflowExecutionInput, "You must provide a SignalWorkflowExecutionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.SignalWorkflowExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SignalWorkflowExecutionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call SignalWorkflowExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SignalWorkflowExecutionInput
-- @return response
-- @return error_message
function M.SignalWorkflowExecutionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SignalWorkflowExecutionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeWorkflowExecution asynchronously, invoking a callback when done
-- @param DescribeWorkflowExecutionInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeWorkflowExecutionAsync(DescribeWorkflowExecutionInput, cb)
	assert(DescribeWorkflowExecutionInput, "You must provide a DescribeWorkflowExecutionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.DescribeWorkflowExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeWorkflowExecutionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeWorkflowExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeWorkflowExecutionInput
-- @return response
-- @return error_message
function M.DescribeWorkflowExecutionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeWorkflowExecutionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetWorkflowExecutionHistory asynchronously, invoking a callback when done
-- @param GetWorkflowExecutionHistoryInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetWorkflowExecutionHistoryAsync(GetWorkflowExecutionHistoryInput, cb)
	assert(GetWorkflowExecutionHistoryInput, "You must provide a GetWorkflowExecutionHistoryInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.GetWorkflowExecutionHistory",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetWorkflowExecutionHistoryInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call GetWorkflowExecutionHistory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetWorkflowExecutionHistoryInput
-- @return response
-- @return error_message
function M.GetWorkflowExecutionHistorySync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetWorkflowExecutionHistoryAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CountOpenWorkflowExecutions asynchronously, invoking a callback when done
-- @param CountOpenWorkflowExecutionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.CountOpenWorkflowExecutionsAsync(CountOpenWorkflowExecutionsInput, cb)
	assert(CountOpenWorkflowExecutionsInput, "You must provide a CountOpenWorkflowExecutionsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.CountOpenWorkflowExecutions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CountOpenWorkflowExecutionsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call CountOpenWorkflowExecutions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CountOpenWorkflowExecutionsInput
-- @return response
-- @return error_message
function M.CountOpenWorkflowExecutionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CountOpenWorkflowExecutionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RespondActivityTaskFailed asynchronously, invoking a callback when done
-- @param RespondActivityTaskFailedInput
-- @param cb Callback function accepting two args: response, error_message
function M.RespondActivityTaskFailedAsync(RespondActivityTaskFailedInput, cb)
	assert(RespondActivityTaskFailedInput, "You must provide a RespondActivityTaskFailedInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.RespondActivityTaskFailed",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RespondActivityTaskFailedInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call RespondActivityTaskFailed synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RespondActivityTaskFailedInput
-- @return response
-- @return error_message
function M.RespondActivityTaskFailedSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RespondActivityTaskFailedAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PollForActivityTask asynchronously, invoking a callback when done
-- @param PollForActivityTaskInput
-- @param cb Callback function accepting two args: response, error_message
function M.PollForActivityTaskAsync(PollForActivityTaskInput, cb)
	assert(PollForActivityTaskInput, "You must provide a PollForActivityTaskInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.PollForActivityTask",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PollForActivityTaskInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call PollForActivityTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PollForActivityTaskInput
-- @return response
-- @return error_message
function M.PollForActivityTaskSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PollForActivityTaskAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDomains asynchronously, invoking a callback when done
-- @param ListDomainsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListDomainsAsync(ListDomainsInput, cb)
	assert(ListDomainsInput, "You must provide a ListDomainsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.ListDomains",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListDomainsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListDomains synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDomainsInput
-- @return response
-- @return error_message
function M.ListDomainsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDomainsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StartWorkflowExecution asynchronously, invoking a callback when done
-- @param StartWorkflowExecutionInput
-- @param cb Callback function accepting two args: response, error_message
function M.StartWorkflowExecutionAsync(StartWorkflowExecutionInput, cb)
	assert(StartWorkflowExecutionInput, "You must provide a StartWorkflowExecutionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.StartWorkflowExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartWorkflowExecutionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call StartWorkflowExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartWorkflowExecutionInput
-- @return response
-- @return error_message
function M.StartWorkflowExecutionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartWorkflowExecutionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RespondDecisionTaskCompleted asynchronously, invoking a callback when done
-- @param RespondDecisionTaskCompletedInput
-- @param cb Callback function accepting two args: response, error_message
function M.RespondDecisionTaskCompletedAsync(RespondDecisionTaskCompletedInput, cb)
	assert(RespondDecisionTaskCompletedInput, "You must provide a RespondDecisionTaskCompletedInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.RespondDecisionTaskCompleted",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RespondDecisionTaskCompletedInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call RespondDecisionTaskCompleted synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RespondDecisionTaskCompletedInput
-- @return response
-- @return error_message
function M.RespondDecisionTaskCompletedSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RespondDecisionTaskCompletedAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterActivityType asynchronously, invoking a callback when done
-- @param RegisterActivityTypeInput
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterActivityTypeAsync(RegisterActivityTypeInput, cb)
	assert(RegisterActivityTypeInput, "You must provide a RegisterActivityTypeInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.RegisterActivityType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterActivityTypeInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterActivityType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterActivityTypeInput
-- @return response
-- @return error_message
function M.RegisterActivityTypeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterActivityTypeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RequestCancelWorkflowExecution asynchronously, invoking a callback when done
-- @param RequestCancelWorkflowExecutionInput
-- @param cb Callback function accepting two args: response, error_message
function M.RequestCancelWorkflowExecutionAsync(RequestCancelWorkflowExecutionInput, cb)
	assert(RequestCancelWorkflowExecutionInput, "You must provide a RequestCancelWorkflowExecutionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.RequestCancelWorkflowExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RequestCancelWorkflowExecutionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call RequestCancelWorkflowExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RequestCancelWorkflowExecutionInput
-- @return response
-- @return error_message
function M.RequestCancelWorkflowExecutionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RequestCancelWorkflowExecutionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListActivityTypes asynchronously, invoking a callback when done
-- @param ListActivityTypesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListActivityTypesAsync(ListActivityTypesInput, cb)
	assert(ListActivityTypesInput, "You must provide a ListActivityTypesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.ListActivityTypes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListActivityTypesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListActivityTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListActivityTypesInput
-- @return response
-- @return error_message
function M.ListActivityTypesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListActivityTypesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PollForDecisionTask asynchronously, invoking a callback when done
-- @param PollForDecisionTaskInput
-- @param cb Callback function accepting two args: response, error_message
function M.PollForDecisionTaskAsync(PollForDecisionTaskInput, cb)
	assert(PollForDecisionTaskInput, "You must provide a PollForDecisionTaskInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.PollForDecisionTask",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PollForDecisionTaskInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call PollForDecisionTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PollForDecisionTaskInput
-- @return response
-- @return error_message
function M.PollForDecisionTaskSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PollForDecisionTaskAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListOpenWorkflowExecutions asynchronously, invoking a callback when done
-- @param ListOpenWorkflowExecutionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListOpenWorkflowExecutionsAsync(ListOpenWorkflowExecutionsInput, cb)
	assert(ListOpenWorkflowExecutionsInput, "You must provide a ListOpenWorkflowExecutionsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.ListOpenWorkflowExecutions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListOpenWorkflowExecutionsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListOpenWorkflowExecutions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListOpenWorkflowExecutionsInput
-- @return response
-- @return error_message
function M.ListOpenWorkflowExecutionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListOpenWorkflowExecutionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CountClosedWorkflowExecutions asynchronously, invoking a callback when done
-- @param CountClosedWorkflowExecutionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.CountClosedWorkflowExecutionsAsync(CountClosedWorkflowExecutionsInput, cb)
	assert(CountClosedWorkflowExecutionsInput, "You must provide a CountClosedWorkflowExecutionsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.CountClosedWorkflowExecutions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CountClosedWorkflowExecutionsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call CountClosedWorkflowExecutions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CountClosedWorkflowExecutionsInput
-- @return response
-- @return error_message
function M.CountClosedWorkflowExecutionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CountClosedWorkflowExecutionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterWorkflowType asynchronously, invoking a callback when done
-- @param RegisterWorkflowTypeInput
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterWorkflowTypeAsync(RegisterWorkflowTypeInput, cb)
	assert(RegisterWorkflowTypeInput, "You must provide a RegisterWorkflowTypeInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.RegisterWorkflowType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterWorkflowTypeInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterWorkflowType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterWorkflowTypeInput
-- @return response
-- @return error_message
function M.RegisterWorkflowTypeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterWorkflowTypeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDomain asynchronously, invoking a callback when done
-- @param DescribeDomainInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDomainAsync(DescribeDomainInput, cb)
	assert(DescribeDomainInput, "You must provide a DescribeDomainInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.DescribeDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDomainInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDomainInput
-- @return response
-- @return error_message
function M.DescribeDomainSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDomainAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListClosedWorkflowExecutions asynchronously, invoking a callback when done
-- @param ListClosedWorkflowExecutionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListClosedWorkflowExecutionsAsync(ListClosedWorkflowExecutionsInput, cb)
	assert(ListClosedWorkflowExecutionsInput, "You must provide a ListClosedWorkflowExecutionsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.ListClosedWorkflowExecutions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListClosedWorkflowExecutionsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListClosedWorkflowExecutions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListClosedWorkflowExecutionsInput
-- @return response
-- @return error_message
function M.ListClosedWorkflowExecutionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListClosedWorkflowExecutionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call TerminateWorkflowExecution asynchronously, invoking a callback when done
-- @param TerminateWorkflowExecutionInput
-- @param cb Callback function accepting two args: response, error_message
function M.TerminateWorkflowExecutionAsync(TerminateWorkflowExecutionInput, cb)
	assert(TerminateWorkflowExecutionInput, "You must provide a TerminateWorkflowExecutionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.TerminateWorkflowExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", TerminateWorkflowExecutionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call TerminateWorkflowExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TerminateWorkflowExecutionInput
-- @return response
-- @return error_message
function M.TerminateWorkflowExecutionSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TerminateWorkflowExecutionAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeprecateWorkflowType asynchronously, invoking a callback when done
-- @param DeprecateWorkflowTypeInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeprecateWorkflowTypeAsync(DeprecateWorkflowTypeInput, cb)
	assert(DeprecateWorkflowTypeInput, "You must provide a DeprecateWorkflowTypeInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.DeprecateWorkflowType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeprecateWorkflowTypeInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DeprecateWorkflowType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeprecateWorkflowTypeInput
-- @return response
-- @return error_message
function M.DeprecateWorkflowTypeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeprecateWorkflowTypeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeActivityType asynchronously, invoking a callback when done
-- @param DescribeActivityTypeInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeActivityTypeAsync(DescribeActivityTypeInput, cb)
	assert(DescribeActivityTypeInput, "You must provide a DescribeActivityTypeInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.DescribeActivityType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeActivityTypeInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeActivityType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeActivityTypeInput
-- @return response
-- @return error_message
function M.DescribeActivityTypeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeActivityTypeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CountPendingDecisionTasks asynchronously, invoking a callback when done
-- @param CountPendingDecisionTasksInput
-- @param cb Callback function accepting two args: response, error_message
function M.CountPendingDecisionTasksAsync(CountPendingDecisionTasksInput, cb)
	assert(CountPendingDecisionTasksInput, "You must provide a CountPendingDecisionTasksInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.CountPendingDecisionTasks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CountPendingDecisionTasksInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call CountPendingDecisionTasks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CountPendingDecisionTasksInput
-- @return response
-- @return error_message
function M.CountPendingDecisionTasksSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CountPendingDecisionTasksAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListWorkflowTypes asynchronously, invoking a callback when done
-- @param ListWorkflowTypesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListWorkflowTypesAsync(ListWorkflowTypesInput, cb)
	assert(ListWorkflowTypesInput, "You must provide a ListWorkflowTypesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.ListWorkflowTypes",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListWorkflowTypesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call ListWorkflowTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListWorkflowTypesInput
-- @return response
-- @return error_message
function M.ListWorkflowTypesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListWorkflowTypesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeprecateDomain asynchronously, invoking a callback when done
-- @param DeprecateDomainInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeprecateDomainAsync(DeprecateDomainInput, cb)
	assert(DeprecateDomainInput, "You must provide a DeprecateDomainInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.DeprecateDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeprecateDomainInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DeprecateDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeprecateDomainInput
-- @return response
-- @return error_message
function M.DeprecateDomainSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeprecateDomainAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RespondActivityTaskCanceled asynchronously, invoking a callback when done
-- @param RespondActivityTaskCanceledInput
-- @param cb Callback function accepting two args: response, error_message
function M.RespondActivityTaskCanceledAsync(RespondActivityTaskCanceledInput, cb)
	assert(RespondActivityTaskCanceledInput, "You must provide a RespondActivityTaskCanceledInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.RespondActivityTaskCanceled",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RespondActivityTaskCanceledInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call RespondActivityTaskCanceled synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RespondActivityTaskCanceledInput
-- @return response
-- @return error_message
function M.RespondActivityTaskCanceledSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RespondActivityTaskCanceledAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeWorkflowType asynchronously, invoking a callback when done
-- @param DescribeWorkflowTypeInput
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeWorkflowTypeAsync(DescribeWorkflowTypeInput, cb)
	assert(DescribeWorkflowTypeInput, "You must provide a DescribeWorkflowTypeInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.DescribeWorkflowType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeWorkflowTypeInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeWorkflowType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeWorkflowTypeInput
-- @return response
-- @return error_message
function M.DescribeWorkflowTypeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeWorkflowTypeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterDomain asynchronously, invoking a callback when done
-- @param RegisterDomainInput
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterDomainAsync(RegisterDomainInput, cb)
	assert(RegisterDomainInput, "You must provide a RegisterDomainInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.RegisterDomain",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterDomainInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterDomainInput
-- @return response
-- @return error_message
function M.RegisterDomainSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterDomainAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RecordActivityTaskHeartbeat asynchronously, invoking a callback when done
-- @param RecordActivityTaskHeartbeatInput
-- @param cb Callback function accepting two args: response, error_message
function M.RecordActivityTaskHeartbeatAsync(RecordActivityTaskHeartbeatInput, cb)
	assert(RecordActivityTaskHeartbeatInput, "You must provide a RecordActivityTaskHeartbeatInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.RecordActivityTaskHeartbeat",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RecordActivityTaskHeartbeatInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call RecordActivityTaskHeartbeat synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RecordActivityTaskHeartbeatInput
-- @return response
-- @return error_message
function M.RecordActivityTaskHeartbeatSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RecordActivityTaskHeartbeatAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CountPendingActivityTasks asynchronously, invoking a callback when done
-- @param CountPendingActivityTasksInput
-- @param cb Callback function accepting two args: response, error_message
function M.CountPendingActivityTasksAsync(CountPendingActivityTasksInput, cb)
	assert(CountPendingActivityTasksInput, "You must provide a CountPendingActivityTasksInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.CountPendingActivityTasks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CountPendingActivityTasksInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call CountPendingActivityTasks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CountPendingActivityTasksInput
-- @return response
-- @return error_message
function M.CountPendingActivityTasksSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CountPendingActivityTasksAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeprecateActivityType asynchronously, invoking a callback when done
-- @param DeprecateActivityTypeInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeprecateActivityTypeAsync(DeprecateActivityTypeInput, cb)
	assert(DeprecateActivityTypeInput, "You must provide a DeprecateActivityTypeInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.DeprecateActivityType",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeprecateActivityTypeInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call DeprecateActivityType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeprecateActivityTypeInput
-- @return response
-- @return error_message
function M.DeprecateActivityTypeSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeprecateActivityTypeAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RespondActivityTaskCompleted asynchronously, invoking a callback when done
-- @param RespondActivityTaskCompletedInput
-- @param cb Callback function accepting two args: response, error_message
function M.RespondActivityTaskCompletedAsync(RespondActivityTaskCompletedInput, cb)
	assert(RespondActivityTaskCompletedInput, "You must provide a RespondActivityTaskCompletedInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.RespondActivityTaskCompleted",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RespondActivityTaskCompletedInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Call RespondActivityTaskCompleted synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RespondActivityTaskCompletedInput
-- @return response
-- @return error_message
function M.RespondActivityTaskCompletedSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RespondActivityTaskCompletedAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
