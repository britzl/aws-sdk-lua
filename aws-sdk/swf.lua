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
	if struct["runId"] then asserts.AssertWorkflowRunIdOptional(struct["runId"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["input"] then asserts.AssertData(struct["input"]) end
	if struct["signalName"] then asserts.AssertSignalName(struct["signalName"]) end
	for k,_ in pairs(struct) do
		assert(keys.SignalExternalWorkflowExecutionInitiatedEventAttributes[k], "SignalExternalWorkflowExecutionInitiatedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SignalExternalWorkflowExecutionInitiatedEventAttributes
-- <p>Provides the details of the <code>SignalExternalWorkflowExecutionInitiated</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * control [Data] <p>Data attached to the event that can be used by the decider in subsequent decision tasks.</p>
-- * workflowId [WorkflowId] <p>The <code>workflowId</code> of the external workflow execution.</p>
-- * runId [WorkflowRunIdOptional] <p>The <code>runId</code> of the external workflow execution to send the signal to.</p>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>SignalExternalWorkflowExecution</code> decision for this signal. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * input [Data] <p>The input provided to the signal.</p>
-- * signalName [SignalName] <p>The name of the signal.</p>
-- Required key: workflowId
-- Required key: signalName
-- Required key: decisionTaskCompletedEventId
-- @return SignalExternalWorkflowExecutionInitiatedEventAttributes structure as a key-value pair table
function M.SignalExternalWorkflowExecutionInitiatedEventAttributes(args)
	assert(args, "You must provide an argument table when creating SignalExternalWorkflowExecutionInitiatedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["control"] = args["control"],
		["workflowId"] = args["workflowId"],
		["runId"] = args["runId"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
		["input"] = args["input"],
		["signalName"] = args["signalName"],
	}
	asserts.AssertSignalExternalWorkflowExecutionInitiatedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- * previousStartedEventId [EventId] <p>The ID of the DecisionTaskStarted event of the previous decision task of this workflow execution that was processed by the decider. This can be used to determine the events in the history new since the last decision task received by the decider.</p>
-- * workflowExecution [WorkflowExecution] <p>The workflow execution for which this decision task was created.</p>
-- * startedEventId [EventId] <p>The ID of the <code>DecisionTaskStarted</code> event recorded in the history.</p>
-- * workflowType [WorkflowType] <p>The type of the workflow execution for which this decision task was created.</p>
-- * events [HistoryEventList] <p>A paginated list of history events of the workflow execution. The decider uses this during the processing of the decision task.</p>
-- * taskToken [TaskToken] <p>The opaque string used as a handle on the task. This token is used by workers to communicate progress and response information back to the system about the task.</p>
-- Required key: taskToken
-- Required key: startedEventId
-- Required key: workflowExecution
-- Required key: workflowType
-- Required key: events
-- @return DecisionTask structure as a key-value pair table
function M.DecisionTask(args)
	assert(args, "You must provide an argument table when creating DecisionTask")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["previousStartedEventId"] = args["previousStartedEventId"],
		["workflowExecution"] = args["workflowExecution"],
		["startedEventId"] = args["startedEventId"],
		["workflowType"] = args["workflowType"],
		["events"] = args["events"],
		["taskToken"] = args["taskToken"],
	}
	asserts.AssertDecisionTask(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>RequestCancelActivityTask</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * activityId [ActivityId] <p>The <code>activityId</code> of the activity task to be canceled.</p>
-- Required key: activityId
-- @return RequestCancelActivityTaskDecisionAttributes structure as a key-value pair table
function M.RequestCancelActivityTaskDecisionAttributes(args)
	assert(args, "You must provide an argument table when creating RequestCancelActivityTaskDecisionAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["activityId"] = args["activityId"],
	}
	asserts.AssertRequestCancelActivityTaskDecisionAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * workflowId [WorkflowId] <p>The workflowId to pass of match the criteria of this filter.</p>
-- Required key: workflowId
-- @return WorkflowExecutionFilter structure as a key-value pair table
function M.WorkflowExecutionFilter(args)
	assert(args, "You must provide an argument table when creating WorkflowExecutionFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["workflowId"] = args["workflowId"],
	}
	asserts.AssertWorkflowExecutionFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>StartChildWorkflowExecutionInitiated</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * control [Data] <p>Data attached to the event that can be used by the decider in subsequent decision tasks. This data isn't sent to the activity.</p>
-- * workflowId [WorkflowId] <p>The <code>workflowId</code> of the child workflow execution.</p>
-- * taskList [TaskList] <p>The name of the task list used for the decision tasks of the child workflow execution.</p>
-- * taskStartToCloseTimeout [DurationInSecondsOptional] <p>The maximum duration allowed for the decision tasks for this workflow execution.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
-- * taskPriority [TaskPriority] <p> The priority assigned for the decision tasks for this workflow execution. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- * lambdaRole [Arn] <p>The IAM role to attach to the child workflow execution.</p>
-- * childPolicy [ChildPolicy] <p>The policy to use for the child workflow executions if this execution gets terminated by explicitly calling the <a>TerminateWorkflowExecution</a> action or due to an expired timeout.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>StartChildWorkflowExecution</code> <a>Decision</a> to request this child workflow execution. This information can be useful for diagnosing problems by tracing back the cause of events.</p>
-- * executionStartToCloseTimeout [DurationInSecondsOptional] <p>The maximum duration for the child workflow execution. If the workflow execution isn't closed within this duration, it is timed out and force-terminated.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
-- * input [Data] <p>The inputs provided to the child workflow execution.</p>
-- * workflowType [WorkflowType] <p>The type of the child workflow execution.</p>
-- * tagList [TagList] <p>The list of tags to associated with the child workflow execution.</p>
-- Required key: workflowId
-- Required key: workflowType
-- Required key: taskList
-- Required key: decisionTaskCompletedEventId
-- Required key: childPolicy
-- @return StartChildWorkflowExecutionInitiatedEventAttributes structure as a key-value pair table
function M.StartChildWorkflowExecutionInitiatedEventAttributes(args)
	assert(args, "You must provide an argument table when creating StartChildWorkflowExecutionInitiatedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["control"] = args["control"],
		["workflowId"] = args["workflowId"],
		["taskList"] = args["taskList"],
		["taskStartToCloseTimeout"] = args["taskStartToCloseTimeout"],
		["taskPriority"] = args["taskPriority"],
		["lambdaRole"] = args["lambdaRole"],
		["childPolicy"] = args["childPolicy"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
		["executionStartToCloseTimeout"] = args["executionStartToCloseTimeout"],
		["input"] = args["input"],
		["workflowType"] = args["workflowType"],
		["tagList"] = args["tagList"],
	}
	asserts.AssertStartChildWorkflowExecutionInitiatedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>ExternalWorkflowExecutionSignaled</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * initiatedEventId [EventId] <p>The ID of the <code>SignalExternalWorkflowExecutionInitiated</code> event corresponding to the <code>SignalExternalWorkflowExecution</code> decision to request this signal. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * workflowExecution [WorkflowExecution] <p>The external workflow execution that the signal was delivered to.</p>
-- Required key: workflowExecution
-- Required key: initiatedEventId
-- @return ExternalWorkflowExecutionSignaledEventAttributes structure as a key-value pair table
function M.ExternalWorkflowExecutionSignaledEventAttributes(args)
	assert(args, "You must provide an argument table when creating ExternalWorkflowExecutionSignaledEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["initiatedEventId"] = args["initiatedEventId"],
		["workflowExecution"] = args["workflowExecution"],
	}
	asserts.AssertExternalWorkflowExecutionSignaledEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domain [DomainName] <p>The name of the domain in which the activity type is registered.</p>
-- * activityType [ActivityType] <p>The activity type to deprecate.</p>
-- Required key: domain
-- Required key: activityType
-- @return DeprecateActivityTypeInput structure as a key-value pair table
function M.DeprecateActivityTypeInput(args)
	assert(args, "You must provide an argument table when creating DeprecateActivityTypeInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domain"] = args["domain"],
		["activityType"] = args["activityType"],
	}
	asserts.AssertDeprecateActivityTypeInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domain [DomainName] <p>The name of the domain in which this activity is to be registered.</p>
-- * defaultTaskScheduleToStartTimeout [DurationInSecondsOptional] <p>If set, specifies the default maximum duration that a task of this activity type can wait before being assigned to a worker. This default can be overridden when scheduling an activity task using the <code>ScheduleActivityTask</code> <a>Decision</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
-- * name [Name] <p>The name of the activity type within the domain.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>
-- * defaultTaskHeartbeatTimeout [DurationInSecondsOptional] <p>If set, specifies the default maximum time before which a worker processing a task of this type must report progress by calling <a>RecordActivityTaskHeartbeat</a>. If the timeout is exceeded, the activity task is automatically timed out. This default can be overridden when scheduling an activity task using the <code>ScheduleActivityTask</code> <a>Decision</a>. If the activity worker subsequently attempts to record a heartbeat or returns a result, the activity worker receives an <code>UnknownResource</code> fault. In this case, Amazon SWF no longer considers the activity task to be valid; the activity worker should clean up the activity task.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
-- * defaultTaskPriority [TaskPriority] <p>The default task priority to assign to the activity type. If not assigned, then <code>0</code> is used. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>in the <i>Amazon SWF Developer Guide</i>.</i>.</p>
-- * defaultTaskStartToCloseTimeout [DurationInSecondsOptional] <p>If set, specifies the default maximum duration that a worker can take to process tasks of this activity type. This default can be overridden when scheduling an activity task using the <code>ScheduleActivityTask</code> <a>Decision</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
-- * defaultTaskScheduleToCloseTimeout [DurationInSecondsOptional] <p>If set, specifies the default maximum duration for a task of this activity type. This default can be overridden when scheduling an activity task using the <code>ScheduleActivityTask</code> <a>Decision</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
-- * version [Version] <p>The version of the activity type.</p> <note> <p>The activity type consists of the name and version, the combination of which must be unique within the domain.</p> </note> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>
-- * defaultTaskList [TaskList] <p>If set, specifies the default task list to use for scheduling tasks of this activity type. This default task list is used if a task list isn't provided when a task is scheduled through the <code>ScheduleActivityTask</code> <a>Decision</a>.</p>
-- * description [Description] <p>A textual description of the activity type.</p>
-- Required key: domain
-- Required key: name
-- Required key: version
-- @return RegisterActivityTypeInput structure as a key-value pair table
function M.RegisterActivityTypeInput(args)
	assert(args, "You must provide an argument table when creating RegisterActivityTypeInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domain"] = args["domain"],
		["defaultTaskScheduleToStartTimeout"] = args["defaultTaskScheduleToStartTimeout"],
		["name"] = args["name"],
		["defaultTaskHeartbeatTimeout"] = args["defaultTaskHeartbeatTimeout"],
		["defaultTaskPriority"] = args["defaultTaskPriority"],
		["defaultTaskStartToCloseTimeout"] = args["defaultTaskStartToCloseTimeout"],
		["defaultTaskScheduleToCloseTimeout"] = args["defaultTaskScheduleToCloseTimeout"],
		["version"] = args["version"],
		["defaultTaskList"] = args["defaultTaskList"],
		["description"] = args["description"],
	}
	asserts.AssertRegisterActivityTypeInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>ContinueAsNewWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tag</code> – A tag used to identify the workflow execution</p> </li> <li> <p> <code>taskList</code> – String constraint. The key is <code>swf:taskList.name</code>.</p> </li> <li> <p> <code>workflowType.version</code> – String constraint. The key is <code>swf:workflowType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * taskList [TaskList] <p>The task list to use for the decisions of the new (continued) workflow execution.</p>
-- * taskStartToCloseTimeout [DurationInSecondsOptional] <p>Specifies the maximum duration of decision tasks for the new workflow execution. This parameter overrides the <code>defaultTaskStartToCloseTimout</code> specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p> <note> <p>A task start-to-close timeout for the new workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task start-to-close timeout was specified at registration time then a fault is returned.</p> </note>
-- * workflowTypeVersion [Version] <p>The version of the workflow to start.</p>
-- * taskPriority [TaskPriority] <p> The task priority that, if set, specifies the priority for the decision tasks for this workflow execution. This overrides the defaultTaskPriority specified when registering the workflow type. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- * childPolicy [ChildPolicy] <p>If set, specifies the policy to use for the child workflow executions of the new execution if it is terminated by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout. This policy overrides the default child policy specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul> <note> <p>A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault is returned.</p> </note>
-- * executionStartToCloseTimeout [DurationInSecondsOptional] <p>If set, specifies the total duration for this workflow execution. This overrides the <code>defaultExecutionStartToCloseTimeout</code> specified when registering the workflow type.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p> <note> <p>An execution start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this field. If neither this field is set nor a default execution start-to-close timeout was specified at registration time then a fault is returned.</p> </note>
-- * input [Data] <p>The input provided to the new workflow execution.</p>
-- * lambdaRole [Arn] <p>The IAM role to attach to the new (continued) execution.</p>
-- * tagList [TagList] <p>The list of tags to associate with the new workflow execution. A maximum of 5 tags can be specified. You can list workflow executions with a specific tag by calling <a>ListOpenWorkflowExecutions</a> or <a>ListClosedWorkflowExecutions</a> and specifying a <a>TagFilter</a>.</p>
-- @return ContinueAsNewWorkflowExecutionDecisionAttributes structure as a key-value pair table
function M.ContinueAsNewWorkflowExecutionDecisionAttributes(args)
	assert(args, "You must provide an argument table when creating ContinueAsNewWorkflowExecutionDecisionAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["taskList"] = args["taskList"],
		["taskStartToCloseTimeout"] = args["taskStartToCloseTimeout"],
		["workflowTypeVersion"] = args["workflowTypeVersion"],
		["taskPriority"] = args["taskPriority"],
		["childPolicy"] = args["childPolicy"],
		["executionStartToCloseTimeout"] = args["executionStartToCloseTimeout"],
		["input"] = args["input"],
		["lambdaRole"] = args["lambdaRole"],
		["tagList"] = args["tagList"],
	}
	asserts.AssertContinueAsNewWorkflowExecutionDecisionAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * defaultTaskScheduleToStartTimeout [DurationInSecondsOptional] <p> The default maximum duration, specified when registering the activity type, that a task of an activity type can wait before being assigned to a worker. You can override this default when scheduling a task through the <code>ScheduleActivityTask</code> <a>Decision</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
-- * defaultTaskHeartbeatTimeout [DurationInSecondsOptional] <p> The default maximum time, in seconds, before which a worker processing a task must report progress by calling <a>RecordActivityTaskHeartbeat</a>.</p> <p>You can specify this value only when <i>registering</i> an activity type. The registered default value can be overridden when you schedule a task through the <code>ScheduleActivityTask</code> <a>Decision</a>. If the activity worker subsequently attempts to record a heartbeat or returns a result, the activity worker receives an <code>UnknownResource</code> fault. In this case, Amazon SWF no longer considers the activity task to be valid; the activity worker should clean up the activity task.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
-- * defaultTaskPriority [TaskPriority] <p> The default task priority for tasks of this activity type, specified at registration. If not set, then <code>0</code> is used as the default priority. This default can be overridden when scheduling an activity task.</p> <p>Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- * defaultTaskStartToCloseTimeout [DurationInSecondsOptional] <p> The default maximum duration for tasks of an activity type specified when registering the activity type. You can override this default when scheduling a task through the <code>ScheduleActivityTask</code> <a>Decision</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
-- * defaultTaskScheduleToCloseTimeout [DurationInSecondsOptional] <p> The default maximum duration, specified when registering the activity type, for tasks of this activity type. You can override this default when scheduling a task through the <code>ScheduleActivityTask</code> <a>Decision</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
-- * defaultTaskList [TaskList] <p> The default task list specified for this activity type at registration. This default is used if a task list isn't provided when a task is scheduled through the <code>ScheduleActivityTask</code> <a>Decision</a>. You can override the default registered task list when scheduling a task through the <code>ScheduleActivityTask</code> <a>Decision</a>.</p>
-- @return ActivityTypeConfiguration structure as a key-value pair table
function M.ActivityTypeConfiguration(args)
	assert(args, "You must provide an argument table when creating ActivityTypeConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["defaultTaskScheduleToStartTimeout"] = args["defaultTaskScheduleToStartTimeout"],
		["defaultTaskHeartbeatTimeout"] = args["defaultTaskHeartbeatTimeout"],
		["defaultTaskPriority"] = args["defaultTaskPriority"],
		["defaultTaskStartToCloseTimeout"] = args["defaultTaskStartToCloseTimeout"],
		["defaultTaskScheduleToCloseTimeout"] = args["defaultTaskScheduleToCloseTimeout"],
		["defaultTaskList"] = args["defaultTaskList"],
	}
	asserts.AssertActivityTypeConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>StartTimer</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * control [Data] <p>The data attached to the event that can be used by the decider in subsequent workflow tasks.</p>
-- * timerId [TimerId] <p> The unique ID of the timer.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>
-- * startToFireTimeout [DurationInSeconds] <p> The duration to wait before firing the timer.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>.</p>
-- Required key: timerId
-- Required key: startToFireTimeout
-- @return StartTimerDecisionAttributes structure as a key-value pair table
function M.StartTimerDecisionAttributes(args)
	assert(args, "You must provide an argument table when creating StartTimerDecisionAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["control"] = args["control"],
		["timerId"] = args["timerId"],
		["startToFireTimeout"] = args["startToFireTimeout"],
	}
	asserts.AssertStartTimerDecisionAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domain [DomainName] <p>The name of the domain that contains the task list.</p>
-- * taskList [TaskList] <p>The name of the task list.</p>
-- Required key: domain
-- Required key: taskList
-- @return CountPendingActivityTasksInput structure as a key-value pair table
function M.CountPendingActivityTasksInput(args)
	assert(args, "You must provide an argument table when creating CountPendingActivityTasksInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domain"] = args["domain"],
		["taskList"] = args["taskList"],
	}
	asserts.AssertCountPendingActivityTasksInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [DomainName] <p>The name of the domain to deprecate.</p>
-- Required key: name
-- @return DeprecateDomainInput structure as a key-value pair table
function M.DeprecateDomainInput(args)
	assert(args, "You must provide an argument table when creating DeprecateDomainInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
	}
	asserts.AssertDeprecateDomainInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	if struct["runId"] then asserts.AssertWorkflowRunIdOptional(struct["runId"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["cause"] then asserts.AssertRequestCancelExternalWorkflowExecutionFailedCause(struct["cause"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestCancelExternalWorkflowExecutionFailedEventAttributes[k], "RequestCancelExternalWorkflowExecutionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestCancelExternalWorkflowExecutionFailedEventAttributes
-- <p>Provides the details of the <code>RequestCancelExternalWorkflowExecutionFailed</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * control [Data] <p>The data attached to the event that the decider can use in subsequent workflow tasks. This data isn't sent to the workflow execution.</p>
-- * workflowId [WorkflowId] <p>The <code>workflowId</code> of the external workflow to which the cancel request was to be delivered.</p>
-- * initiatedEventId [EventId] <p>The ID of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event corresponding to the <code>RequestCancelExternalWorkflowExecution</code> decision to cancel this external workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * runId [WorkflowRunIdOptional] <p>The <code>runId</code> of the external workflow execution.</p>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>RequestCancelExternalWorkflowExecution</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * cause [RequestCancelExternalWorkflowExecutionFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>
-- Required key: workflowId
-- Required key: cause
-- Required key: initiatedEventId
-- Required key: decisionTaskCompletedEventId
-- @return RequestCancelExternalWorkflowExecutionFailedEventAttributes structure as a key-value pair table
function M.RequestCancelExternalWorkflowExecutionFailedEventAttributes(args)
	assert(args, "You must provide an argument table when creating RequestCancelExternalWorkflowExecutionFailedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["control"] = args["control"],
		["workflowId"] = args["workflowId"],
		["initiatedEventId"] = args["initiatedEventId"],
		["runId"] = args["runId"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
		["cause"] = args["cause"],
	}
	asserts.AssertRequestCancelExternalWorkflowExecutionFailedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * defaultExecutionStartToCloseTimeout [DurationInSecondsOptional] <p>If set, specifies the default maximum duration for executions of this workflow type. You can override this default when starting an execution through the <a>StartWorkflowExecution</a> Action or <code>StartChildWorkflowExecution</code> <a>Decision</a>.</p> <p>The duration is specified in seconds; an integer greater than or equal to 0. Unlike some of the other timeout parameters in Amazon SWF, you cannot specify a value of "NONE" for <code>defaultExecutionStartToCloseTimeout</code>; there is a one-year max limit on the time that a workflow execution can run. Exceeding this limit always causes the workflow execution to time out.</p>
-- * domain [DomainName] <p>The name of the domain in which to register the workflow type.</p>
-- * name [Name] <p>The name of the workflow type.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>
-- * defaultTaskPriority [TaskPriority] <p>The default task priority to assign to the workflow type. If not assigned, then <code>0</code> is used. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- * defaultTaskStartToCloseTimeout [DurationInSecondsOptional] <p>If set, specifies the default maximum duration of decision tasks for this workflow type. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> <a>Decision</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
-- * defaultChildPolicy [ChildPolicy] <p>If set, specifies the default policy to use for the child workflow executions when a workflow execution of this type is terminated, by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> <a>Decision</a>.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul>
-- * version [Version] <p>The version of the workflow type.</p> <note> <p>The workflow type consists of the name and version, the combination of which must be unique within the domain. To get a list of all currently registered workflow types, use the <a>ListWorkflowTypes</a> action.</p> </note> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>
-- * defaultLambdaRole [Arn] <p>The default IAM role attached to this workflow type.</p> <note> <p>Executions of this workflow type need IAM roles to invoke Lambda functions. If you don't specify an IAM role when you start this workflow type, the default Lambda role is attached to the execution. For more information, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html">http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>
-- * defaultTaskList [TaskList] <p>If set, specifies the default task list to use for scheduling decision tasks for executions of this workflow type. This default is used only if a task list isn't provided when starting the execution through the <a>StartWorkflowExecution</a> Action or <code>StartChildWorkflowExecution</code> <a>Decision</a>.</p>
-- * description [Description] <p>Textual description of the workflow type.</p>
-- Required key: domain
-- Required key: name
-- Required key: version
-- @return RegisterWorkflowTypeInput structure as a key-value pair table
function M.RegisterWorkflowTypeInput(args)
	assert(args, "You must provide an argument table when creating RegisterWorkflowTypeInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["defaultExecutionStartToCloseTimeout"] = args["defaultExecutionStartToCloseTimeout"],
		["domain"] = args["domain"],
		["name"] = args["name"],
		["defaultTaskPriority"] = args["defaultTaskPriority"],
		["defaultTaskStartToCloseTimeout"] = args["defaultTaskStartToCloseTimeout"],
		["defaultChildPolicy"] = args["defaultChildPolicy"],
		["version"] = args["version"],
		["defaultLambdaRole"] = args["defaultLambdaRole"],
		["defaultTaskList"] = args["defaultTaskList"],
		["description"] = args["description"],
	}
	asserts.AssertRegisterWorkflowTypeInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * reason [FailureReason] <p>Description of the error that may assist in diagnostics.</p>
-- * details [Data] <p> Detailed information about the failure.</p>
-- * taskToken [TaskToken] <p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p> <important> <p> <code>taskToken</code> is generated by the service and should be treated as an opaque value. If the task is passed to another process, its <code>taskToken</code> must also be passed. This enables it to provide its progress and respond with results.</p> </important>
-- Required key: taskToken
-- @return RespondActivityTaskFailedInput structure as a key-value pair table
function M.RespondActivityTaskFailedInput(args)
	assert(args, "You must provide an argument table when creating RespondActivityTaskFailedInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["reason"] = args["reason"],
		["details"] = args["details"],
		["taskToken"] = args["taskToken"],
	}
	asserts.AssertRespondActivityTaskFailedInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * version [Version] <p>The version of this activity.</p> <note> <p>The combination of activity type name and version must be unique with in a domain.</p> </note>
-- * name [Name] <p>The name of this activity.</p> <note> <p>The combination of activity type name and version must be unique within a domain.</p> </note>
-- Required key: name
-- Required key: version
-- @return ActivityType structure as a key-value pair table
function M.ActivityType(args)
	assert(args, "You must provide an argument table when creating ActivityType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["version"] = args["version"],
		["name"] = args["name"],
	}
	asserts.AssertActivityType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	if struct["runId"] then asserts.AssertWorkflowRunIdOptional(struct["runId"]) end
	for k,_ in pairs(struct) do
		assert(keys.TerminateWorkflowExecutionInput[k], "TerminateWorkflowExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateWorkflowExecutionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domain [DomainName] <p>The domain of the workflow execution to terminate.</p>
-- * workflowId [WorkflowId] <p>The workflowId of the workflow execution to terminate.</p>
-- * reason [TerminateReason] <p> A descriptive reason for terminating the workflow execution.</p>
-- * childPolicy [ChildPolicy] <p>If set, specifies the policy to use for the child workflow executions of the workflow execution being terminated. This policy overrides the child policy specified for the workflow execution at registration time or when starting the execution.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul> <note> <p>A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault is returned.</p> </note>
-- * details [Data] <p> Details for terminating the workflow execution.</p>
-- * runId [WorkflowRunIdOptional] <p>The runId of the workflow execution to terminate.</p>
-- Required key: domain
-- Required key: workflowId
-- @return TerminateWorkflowExecutionInput structure as a key-value pair table
function M.TerminateWorkflowExecutionInput(args)
	assert(args, "You must provide an argument table when creating TerminateWorkflowExecutionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domain"] = args["domain"],
		["workflowId"] = args["workflowId"],
		["reason"] = args["reason"],
		["childPolicy"] = args["childPolicy"],
		["details"] = args["details"],
		["runId"] = args["runId"],
	}
	asserts.AssertTerminateWorkflowExecutionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * activityType [ActivityType] <p>The type of this activity task.</p>
-- * workflowExecution [WorkflowExecution] <p>The workflow execution that started this activity task.</p>
-- * startedEventId [EventId] <p>The ID of the <code>ActivityTaskStarted</code> event recorded in the history.</p>
-- * activityId [ActivityId] <p>The unique ID of the task.</p>
-- * input [Data] <p>The inputs provided when the activity task was scheduled. The form of the input is user defined and should be meaningful to the activity implementation.</p>
-- * taskToken [TaskToken] <p>The opaque string used as a handle on the task. This token is used by workers to communicate progress and response information back to the system about the task.</p>
-- Required key: taskToken
-- Required key: activityId
-- Required key: startedEventId
-- Required key: workflowExecution
-- Required key: activityType
-- @return ActivityTask structure as a key-value pair table
function M.ActivityTask(args)
	assert(args, "You must provide an argument table when creating ActivityTask")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["activityType"] = args["activityType"],
		["workflowExecution"] = args["workflowExecution"],
		["startedEventId"] = args["startedEventId"],
		["activityId"] = args["activityId"],
		["input"] = args["input"],
		["taskToken"] = args["taskToken"],
	}
	asserts.AssertActivityTask(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>ChildWorkflowExecutionStarted</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * workflowType [WorkflowType] <p>The type of the child workflow execution.</p>
-- * initiatedEventId [EventId] <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> <a>Decision</a> to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * workflowExecution [WorkflowExecution] <p>The child workflow execution that was started.</p>
-- Required key: workflowExecution
-- Required key: workflowType
-- Required key: initiatedEventId
-- @return ChildWorkflowExecutionStartedEventAttributes structure as a key-value pair table
function M.ChildWorkflowExecutionStartedEventAttributes(args)
	assert(args, "You must provide an argument table when creating ChildWorkflowExecutionStartedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["workflowType"] = args["workflowType"],
		["initiatedEventId"] = args["initiatedEventId"],
		["workflowExecution"] = args["workflowExecution"],
	}
	asserts.AssertChildWorkflowExecutionStartedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Specifies a decision made by the decider. A decision can be one of these types:</p> <ul> <li> <p> <code>CancelTimer</code> – Cancels a previously started timer and records a <code>TimerCanceled</code> event in the history.</p> </li> <li> <p> <code>CancelWorkflowExecution</code> – Closes the workflow execution and records a <code>WorkflowExecutionCanceled</code> event in the history.</p> </li> <li> <p> <code>CompleteWorkflowExecution</code> – Closes the workflow execution and records a <code>WorkflowExecutionCompleted</code> event in the history .</p> </li> <li> <p> <code>ContinueAsNewWorkflowExecution</code> – Closes the workflow execution and starts a new workflow execution of the same type using the same workflow ID and a unique run Id. A <code>WorkflowExecutionContinuedAsNew</code> event is recorded in the history.</p> </li> <li> <p> <code>FailWorkflowExecution</code> – Closes the workflow execution and records a <code>WorkflowExecutionFailed</code> event in the history.</p> </li> <li> <p> <code>RecordMarker</code> – Records a <code>MarkerRecorded</code> event in the history. Markers can be used for adding custom information in the history for instance to let deciders know that they don't need to look at the history beyond the marker event.</p> </li> <li> <p> <code>RequestCancelActivityTask</code> – Attempts to cancel a previously scheduled activity task. If the activity task was scheduled but has not been assigned to a worker, then it is canceled. If the activity task was already assigned to a worker, then the worker is informed that cancellation has been requested in the response to <a>RecordActivityTaskHeartbeat</a>.</p> </li> <li> <p> <code>RequestCancelExternalWorkflowExecution</code> – Requests that a request be made to cancel the specified external workflow execution and records a <code>RequestCancelExternalWorkflowExecutionInitiated</code> event in the history.</p> </li> <li> <p> <code>ScheduleActivityTask</code> – Schedules an activity task.</p> </li> <li> <p> <code>SignalExternalWorkflowExecution</code> – Requests a signal to be delivered to the specified external workflow execution and records a <code>SignalExternalWorkflowExecutionInitiated</code> event in the history.</p> </li> <li> <p> <code>StartChildWorkflowExecution</code> – Requests that a child workflow execution be started and records a <code>StartChildWorkflowExecutionInitiated</code> event in the history. The child workflow execution is a separate workflow execution with its own history.</p> </li> <li> <p> <code>StartTimer</code> – Starts a timer for this workflow execution and records a <code>TimerStarted</code> event in the history. This timer fires after the specified delay and record a <code>TimerFired</code> event.</p> </li> </ul> <p> <b>Access Control</b> </p> <p>If you grant permission to use <code>RespondDecisionTaskCompleted</code>, you can use IAM policies to express permissions for the list of decisions returned by this action as if they were members of the API. Treating decisions as a pseudo API maintains a uniform conceptual model and helps keep policies readable. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> <p> <b>Decision Failure</b> </p> <p>Decisions can fail for several reasons</p> <ul> <li> <p>The ordering of decisions should follow a logical flow. Some decisions might not make sense in the current context of the workflow execution and therefore fails.</p> </li> <li> <p>A limit on your account was reached.</p> </li> <li> <p>The decision lacks sufficient permissions.</p> </li> </ul> <p>One of the following events might be added to the history to indicate an error. The event attribute's <code>cause</code> parameter indicates the cause. If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> <ul> <li> <p> <code>ScheduleActivityTaskFailed</code> – A <code>ScheduleActivityTask</code> decision failed. This could happen if the activity type specified in the decision isn't registered, is in a deprecated state, or the decision isn't properly configured.</p> </li> <li> <p> <code>RequestCancelActivityTaskFailed</code> – A <code>RequestCancelActivityTask</code> decision failed. This could happen if there is no open activity task with the specified activityId.</p> </li> <li> <p> <code>StartTimerFailed</code> – A <code>StartTimer</code> decision failed. This could happen if there is another open timer with the same timerId.</p> </li> <li> <p> <code>CancelTimerFailed</code> – A <code>CancelTimer</code> decision failed. This could happen if there is no open timer with the specified timerId.</p> </li> <li> <p> <code>StartChildWorkflowExecutionFailed</code> – A <code>StartChildWorkflowExecution</code> decision failed. This could happen if the workflow type specified isn't registered, is deprecated, or the decision isn't properly configured.</p> </li> <li> <p> <code>SignalExternalWorkflowExecutionFailed</code> – A <code>SignalExternalWorkflowExecution</code> decision failed. This could happen if the <code>workflowID</code> specified in the decision was incorrect.</p> </li> <li> <p> <code>RequestCancelExternalWorkflowExecutionFailed</code> – A <code>RequestCancelExternalWorkflowExecution</code> decision failed. This could happen if the <code>workflowID</code> specified in the decision was incorrect.</p> </li> <li> <p> <code>CancelWorkflowExecutionFailed</code> – A <code>CancelWorkflowExecution</code> decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.</p> </li> <li> <p> <code>CompleteWorkflowExecutionFailed</code> – A <code>CompleteWorkflowExecution</code> decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.</p> </li> <li> <p> <code>ContinueAsNewWorkflowExecutionFailed</code> – A <code>ContinueAsNewWorkflowExecution</code> decision failed. This could happen if there is an unhandled decision task pending in the workflow execution or the ContinueAsNewWorkflowExecution decision was not configured correctly.</p> </li> <li> <p> <code>FailWorkflowExecutionFailed</code> – A <code>FailWorkflowExecution</code> decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.</p> </li> </ul> <p>The preceding error events might occur due to an error in the decider logic, which might put the workflow execution in an unstable state The cause field in the event structure for the error event indicates the cause of the error.</p> <note> <p>A workflow execution may be closed by the decider by returning one of the following decisions when completing a decision task: <code>CompleteWorkflowExecution</code>, <code>FailWorkflowExecution</code>, <code>CancelWorkflowExecution</code> and <code>ContinueAsNewWorkflowExecution</code>. An <code>UnhandledDecision</code> fault is returned if a workflow closing decision is specified and a signal or activity event had been added to the history while the decision task was being performed by the decider. Unlike the above situations which are logic issues, this fault is always possible because of race conditions in a distributed system. The right action here is to call <a>RespondDecisionTaskCompleted</a> without any decisions. This would result in another decision task with these new events included in the history. The decider should handle the new events and may decide to close the workflow execution.</p> </note> <p> <b>How to Code a Decision</b> </p> <p>You code a decision by first setting the decision type field to one of the above decision values, and then set the corresponding attributes field shown below:</p> <ul> <li> <p> <code> <a>ScheduleActivityTaskDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>RequestCancelActivityTaskDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>CompleteWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>FailWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>CancelWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>ContinueAsNewWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>RecordMarkerDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>StartTimerDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>CancelTimerDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>SignalExternalWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>RequestCancelExternalWorkflowExecutionDecisionAttributes</a> </code> </p> </li> <li> <p> <code> <a>StartChildWorkflowExecutionDecisionAttributes</a> </code> </p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * scheduleActivityTaskDecisionAttributes [ScheduleActivityTaskDecisionAttributes] <p>Provides the details of the <code>ScheduleActivityTask</code> decision. It isn't set for other decision types.</p>
-- * cancelWorkflowExecutionDecisionAttributes [CancelWorkflowExecutionDecisionAttributes] <p>Provides the details of the <code>CancelWorkflowExecution</code> decision. It isn't set for other decision types.</p>
-- * cancelTimerDecisionAttributes [CancelTimerDecisionAttributes] <p>Provides the details of the <code>CancelTimer</code> decision. It isn't set for other decision types.</p>
-- * scheduleLambdaFunctionDecisionAttributes [ScheduleLambdaFunctionDecisionAttributes] <p>Provides the details of the <code>ScheduleLambdaFunction</code> decision. It isn't set for other decision types.</p>
-- * signalExternalWorkflowExecutionDecisionAttributes [SignalExternalWorkflowExecutionDecisionAttributes] <p>Provides the details of the <code>SignalExternalWorkflowExecution</code> decision. It isn't set for other decision types.</p>
-- * failWorkflowExecutionDecisionAttributes [FailWorkflowExecutionDecisionAttributes] <p>Provides the details of the <code>FailWorkflowExecution</code> decision. It isn't set for other decision types.</p>
-- * recordMarkerDecisionAttributes [RecordMarkerDecisionAttributes] <p>Provides the details of the <code>RecordMarker</code> decision. It isn't set for other decision types.</p>
-- * requestCancelActivityTaskDecisionAttributes [RequestCancelActivityTaskDecisionAttributes] <p>Provides the details of the <code>RequestCancelActivityTask</code> decision. It isn't set for other decision types.</p>
-- * completeWorkflowExecutionDecisionAttributes [CompleteWorkflowExecutionDecisionAttributes] <p>Provides the details of the <code>CompleteWorkflowExecution</code> decision. It isn't set for other decision types.</p>
-- * startTimerDecisionAttributes [StartTimerDecisionAttributes] <p>Provides the details of the <code>StartTimer</code> decision. It isn't set for other decision types.</p>
-- * requestCancelExternalWorkflowExecutionDecisionAttributes [RequestCancelExternalWorkflowExecutionDecisionAttributes] <p>Provides the details of the <code>RequestCancelExternalWorkflowExecution</code> decision. It isn't set for other decision types.</p>
-- * continueAsNewWorkflowExecutionDecisionAttributes [ContinueAsNewWorkflowExecutionDecisionAttributes] <p>Provides the details of the <code>ContinueAsNewWorkflowExecution</code> decision. It isn't set for other decision types.</p>
-- * decisionType [DecisionType] <p>Specifies the type of the decision.</p>
-- * startChildWorkflowExecutionDecisionAttributes [StartChildWorkflowExecutionDecisionAttributes] <p>Provides the details of the <code>StartChildWorkflowExecution</code> decision. It isn't set for other decision types.</p>
-- Required key: decisionType
-- @return Decision structure as a key-value pair table
function M.Decision(args)
	assert(args, "You must provide an argument table when creating Decision")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["scheduleActivityTaskDecisionAttributes"] = args["scheduleActivityTaskDecisionAttributes"],
		["cancelWorkflowExecutionDecisionAttributes"] = args["cancelWorkflowExecutionDecisionAttributes"],
		["cancelTimerDecisionAttributes"] = args["cancelTimerDecisionAttributes"],
		["scheduleLambdaFunctionDecisionAttributes"] = args["scheduleLambdaFunctionDecisionAttributes"],
		["signalExternalWorkflowExecutionDecisionAttributes"] = args["signalExternalWorkflowExecutionDecisionAttributes"],
		["failWorkflowExecutionDecisionAttributes"] = args["failWorkflowExecutionDecisionAttributes"],
		["recordMarkerDecisionAttributes"] = args["recordMarkerDecisionAttributes"],
		["requestCancelActivityTaskDecisionAttributes"] = args["requestCancelActivityTaskDecisionAttributes"],
		["completeWorkflowExecutionDecisionAttributes"] = args["completeWorkflowExecutionDecisionAttributes"],
		["startTimerDecisionAttributes"] = args["startTimerDecisionAttributes"],
		["requestCancelExternalWorkflowExecutionDecisionAttributes"] = args["requestCancelExternalWorkflowExecutionDecisionAttributes"],
		["continueAsNewWorkflowExecutionDecisionAttributes"] = args["continueAsNewWorkflowExecutionDecisionAttributes"],
		["decisionType"] = args["decisionType"],
		["startChildWorkflowExecutionDecisionAttributes"] = args["startChildWorkflowExecutionDecisionAttributes"],
	}
	asserts.AssertDecision(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * configuration [ActivityTypeConfiguration] <p>The configuration settings registered with the activity type.</p>
-- * typeInfo [ActivityTypeInfo] <p>General information about the activity type.</p> <p>The status of activity type (returned in the ActivityTypeInfo structure) can be one of the following.</p> <ul> <li> <p> <code>REGISTERED</code> – The type is registered and available. Workers supporting this type should be running. </p> </li> <li> <p> <code>DEPRECATED</code> – The type was deprecated using <a>DeprecateActivityType</a>, but is still in use. You should keep workers supporting this type running. You cannot create new tasks of this type. </p> </li> </ul>
-- Required key: typeInfo
-- Required key: configuration
-- @return ActivityTypeDetail structure as a key-value pair table
function M.ActivityTypeDetail(args)
	assert(args, "You must provide an argument table when creating ActivityTypeDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["configuration"] = args["configuration"],
		["typeInfo"] = args["typeInfo"],
	}
	asserts.AssertActivityTypeDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>ChildWorkflowExecutionTimedOut</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startedEventId [EventId] <p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * timeoutType [WorkflowExecutionTimeoutType] <p>The type of the timeout that caused the child workflow execution to time out.</p>
-- * workflowType [WorkflowType] <p>The type of the child workflow execution.</p>
-- * initiatedEventId [EventId] <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> <a>Decision</a> to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * workflowExecution [WorkflowExecution] <p>The child workflow execution that timed out.</p>
-- Required key: workflowExecution
-- Required key: workflowType
-- Required key: timeoutType
-- Required key: initiatedEventId
-- Required key: startedEventId
-- @return ChildWorkflowExecutionTimedOutEventAttributes structure as a key-value pair table
function M.ChildWorkflowExecutionTimedOutEventAttributes(args)
	assert(args, "You must provide an argument table when creating ChildWorkflowExecutionTimedOutEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["startedEventId"] = args["startedEventId"],
		["timeoutType"] = args["timeoutType"],
		["workflowType"] = args["workflowType"],
		["initiatedEventId"] = args["initiatedEventId"],
		["workflowExecution"] = args["workflowExecution"],
	}
	asserts.AssertChildWorkflowExecutionTimedOutEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domain [DomainName] <p>The name of the domain that contains the task lists being polled.</p>
-- * taskList [TaskList] <p>Specifies the task list to poll for activity tasks.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>
-- * identity [Identity] <p>Identity of the worker making the request, recorded in the <code>ActivityTaskStarted</code> event in the workflow history. This enables diagnostic tracing when problems arise. The form of this identity is user defined.</p>
-- Required key: domain
-- Required key: taskList
-- @return PollForActivityTaskInput structure as a key-value pair table
function M.PollForActivityTaskInput(args)
	assert(args, "You must provide an argument table when creating PollForActivityTaskInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domain"] = args["domain"],
		["taskList"] = args["taskList"],
		["identity"] = args["identity"],
	}
	asserts.AssertPollForActivityTaskInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>FailWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * reason [FailureReason] <p>A descriptive reason for the failure that may help in diagnostics.</p>
-- * details [Data] <p> Details of the failure.</p>
-- @return FailWorkflowExecutionDecisionAttributes structure as a key-value pair table
function M.FailWorkflowExecutionDecisionAttributes(args)
	assert(args, "You must provide an argument table when creating FailWorkflowExecutionDecisionAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["reason"] = args["reason"],
		["details"] = args["details"],
	}
	asserts.AssertFailWorkflowExecutionDecisionAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [RegistrationStatus] <p>The status of the domain:</p> <ul> <li> <p> <code>REGISTERED</code> – The domain is properly registered and available. You can use this domain for registering types and creating new workflow executions. </p> </li> <li> <p> <code>DEPRECATED</code> – The domain was deprecated using <a>DeprecateDomain</a>, but is still in use. You should not create new workflow executions in this domain. </p> </li> </ul>
-- * name [DomainName] <p>The name of the domain. This name is unique within the account.</p>
-- * description [Description] <p>The description of the domain provided through <a>RegisterDomain</a>.</p>
-- Required key: name
-- Required key: status
-- @return DomainInfo structure as a key-value pair table
function M.DomainInfo(args)
	assert(args, "You must provide an argument table when creating DomainInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["name"] = args["name"],
		["description"] = args["description"],
	}
	asserts.AssertDomainInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>ActivityTaskFailed</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startedEventId [EventId] <p>The ID of the <code>ActivityTaskStarted</code> event recorded when this activity task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * reason [FailureReason] <p>The reason provided for the failure.</p>
-- * scheduledEventId [EventId] <p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * details [Data] <p>The details of the failure.</p>
-- Required key: scheduledEventId
-- Required key: startedEventId
-- @return ActivityTaskFailedEventAttributes structure as a key-value pair table
function M.ActivityTaskFailedEventAttributes(args)
	assert(args, "You must provide an argument table when creating ActivityTaskFailedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["startedEventId"] = args["startedEventId"],
		["reason"] = args["reason"],
		["scheduledEventId"] = args["scheduledEventId"],
		["details"] = args["details"],
	}
	asserts.AssertActivityTaskFailedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>ExternalWorkflowExecutionCancelRequested</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * initiatedEventId [EventId] <p>The ID of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event corresponding to the <code>RequestCancelExternalWorkflowExecution</code> decision to cancel this external workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * workflowExecution [WorkflowExecution] <p>The external workflow execution to which the cancellation request was delivered.</p>
-- Required key: workflowExecution
-- Required key: initiatedEventId
-- @return ExternalWorkflowExecutionCancelRequestedEventAttributes structure as a key-value pair table
function M.ExternalWorkflowExecutionCancelRequestedEventAttributes(args)
	assert(args, "You must provide an argument table when creating ExternalWorkflowExecutionCancelRequestedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["initiatedEventId"] = args["initiatedEventId"],
		["workflowExecution"] = args["workflowExecution"],
	}
	asserts.AssertExternalWorkflowExecutionCancelRequestedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>ChildWorkflowExecutionFailed</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * workflowExecution [WorkflowExecution] <p>The child workflow execution that failed.</p>
-- * initiatedEventId [EventId] <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> <a>Decision</a> to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * startedEventId [EventId] <p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * reason [FailureReason] <p>The reason for the failure (if provided).</p>
-- * details [Data] <p>The details of the failure (if provided).</p>
-- * workflowType [WorkflowType] <p>The type of the child workflow execution.</p>
-- Required key: workflowExecution
-- Required key: workflowType
-- Required key: initiatedEventId
-- Required key: startedEventId
-- @return ChildWorkflowExecutionFailedEventAttributes structure as a key-value pair table
function M.ChildWorkflowExecutionFailedEventAttributes(args)
	assert(args, "You must provide an argument table when creating ChildWorkflowExecutionFailedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["workflowExecution"] = args["workflowExecution"],
		["initiatedEventId"] = args["initiatedEventId"],
		["startedEventId"] = args["startedEventId"],
		["reason"] = args["reason"],
		["details"] = args["details"],
		["workflowType"] = args["workflowType"],
	}
	asserts.AssertChildWorkflowExecutionFailedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>ActivityTaskCancelRequested</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * activityId [ActivityId] <p>The unique ID of the task.</p>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>RequestCancelActivityTask</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required key: decisionTaskCompletedEventId
-- Required key: activityId
-- @return ActivityTaskCancelRequestedEventAttributes structure as a key-value pair table
function M.ActivityTaskCancelRequestedEventAttributes(args)
	assert(args, "You must provide an argument table when creating ActivityTaskCancelRequestedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["activityId"] = args["activityId"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
	}
	asserts.AssertActivityTaskCancelRequestedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A description that may help with diagnosing the cause of the fault.</p>
-- @return DomainDeprecatedFault structure as a key-value pair table
function M.DomainDeprecatedFault(args)
	assert(args, "You must provide an argument table when creating DomainDeprecatedFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertDomainDeprecatedFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>CompleteWorkflowExecutionFailed</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cause [CompleteWorkflowExecutionFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CompleteWorkflowExecution</code> decision to complete this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required key: cause
-- Required key: decisionTaskCompletedEventId
-- @return CompleteWorkflowExecutionFailedEventAttributes structure as a key-value pair table
function M.CompleteWorkflowExecutionFailedEventAttributes(args)
	assert(args, "You must provide an argument table when creating CompleteWorkflowExecutionFailedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cause"] = args["cause"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
	}
	asserts.AssertCompleteWorkflowExecutionFailedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startedEventId [EventId] <p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * workflowType [WorkflowType] <p>The type of the child workflow execution.</p>
-- * initiatedEventId [EventId] <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> <a>Decision</a> to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * details [Data] <p>Details of the cancellation (if provided).</p>
-- * workflowExecution [WorkflowExecution] <p>The child workflow execution that was canceled.</p>
-- Required key: workflowExecution
-- Required key: workflowType
-- Required key: initiatedEventId
-- Required key: startedEventId
-- @return ChildWorkflowExecutionCanceledEventAttributes structure as a key-value pair table
function M.ChildWorkflowExecutionCanceledEventAttributes(args)
	assert(args, "You must provide an argument table when creating ChildWorkflowExecutionCanceledEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["startedEventId"] = args["startedEventId"],
		["workflowType"] = args["workflowType"],
		["initiatedEventId"] = args["initiatedEventId"],
		["details"] = args["details"],
		["workflowExecution"] = args["workflowExecution"],
	}
	asserts.AssertChildWorkflowExecutionCanceledEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides details of the <code>LambdaFunctionTimedOut</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startedEventId [EventId] <p>The ID of the <code>ActivityTaskStarted</code> event that was recorded when this activity task started. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
-- * timeoutType [LambdaFunctionTimeoutType] <p>The type of the timeout that caused this event.</p>
-- * scheduledEventId [EventId] <p>The ID of the <code>LambdaFunctionScheduled</code> event that was recorded when this activity task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
-- Required key: scheduledEventId
-- Required key: startedEventId
-- @return LambdaFunctionTimedOutEventAttributes structure as a key-value pair table
function M.LambdaFunctionTimedOutEventAttributes(args)
	assert(args, "You must provide an argument table when creating LambdaFunctionTimedOutEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["startedEventId"] = args["startedEventId"],
		["timeoutType"] = args["timeoutType"],
		["scheduledEventId"] = args["scheduledEventId"],
	}
	asserts.AssertLambdaFunctionTimedOutEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>WorkflowExecutionTerminated</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * reason [TerminateReason] <p>The reason provided for the termination.</p>
-- * childPolicy [ChildPolicy] <p>The policy used for the child workflow executions of this workflow execution.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul>
-- * cause [WorkflowExecutionTerminatedCause] <p>If set, indicates that the workflow execution was automatically terminated, and specifies the cause. This happens if the parent workflow execution times out or is terminated and the child policy is set to terminate child executions.</p>
-- * details [Data] <p>The details provided for the termination.</p>
-- Required key: childPolicy
-- @return WorkflowExecutionTerminatedEventAttributes structure as a key-value pair table
function M.WorkflowExecutionTerminatedEventAttributes(args)
	assert(args, "You must provide an argument table when creating WorkflowExecutionTerminatedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["reason"] = args["reason"],
		["childPolicy"] = args["childPolicy"],
		["cause"] = args["cause"],
		["details"] = args["details"],
	}
	asserts.AssertWorkflowExecutionTerminatedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * defaultExecutionStartToCloseTimeout [DurationInSecondsOptional] <p> The default maximum duration, specified when registering the workflow type, for executions of this workflow type. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> <a>Decision</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
-- * defaultChildPolicy [ChildPolicy] <p> The default policy to use for the child workflow executions when a workflow execution of this type is terminated, by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> <a>Decision</a>.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul>
-- * defaultTaskStartToCloseTimeout [DurationInSecondsOptional] <p> The default maximum duration, specified when registering the workflow type, that a decision task for executions of this workflow type might take before returning completion or failure. If the task doesn'tdo close in the specified time then the task is automatically timed out and rescheduled. If the decider eventually reports a completion or failure, it is ignored. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> <a>Decision</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
-- * defaultTaskPriority [TaskPriority] <p> The default task priority, specified when registering the workflow type, for all decision tasks of this workflow type. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> decision.</p> <p>Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- * defaultLambdaRole [Arn] <p>The default IAM role attached to this workflow type.</p> <note> <p>Executions of this workflow type need IAM roles to invoke Lambda functions. If you don't specify an IAM role when starting this workflow type, the default Lambda role is attached to the execution. For more information, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html">http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>
-- * defaultTaskList [TaskList] <p> The default task list, specified when registering the workflow type, for decisions tasks scheduled for workflow executions of this type. This default can be overridden when starting a workflow execution using the <a>StartWorkflowExecution</a> action or the <code>StartChildWorkflowExecution</code> <a>Decision</a>.</p>
-- @return WorkflowTypeConfiguration structure as a key-value pair table
function M.WorkflowTypeConfiguration(args)
	assert(args, "You must provide an argument table when creating WorkflowTypeConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["defaultExecutionStartToCloseTimeout"] = args["defaultExecutionStartToCloseTimeout"],
		["defaultChildPolicy"] = args["defaultChildPolicy"],
		["defaultTaskStartToCloseTimeout"] = args["defaultTaskStartToCloseTimeout"],
		["defaultTaskPriority"] = args["defaultTaskPriority"],
		["defaultLambdaRole"] = args["defaultLambdaRole"],
		["defaultTaskList"] = args["defaultTaskList"],
	}
	asserts.AssertWorkflowTypeConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * details [Data] <p> Information about the cancellation.</p>
-- * taskToken [TaskToken] <p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p> <important> <p> <code>taskToken</code> is generated by the service and should be treated as an opaque value. If the task is passed to another process, its <code>taskToken</code> must also be passed. This enables it to provide its progress and respond with results.</p> </important>
-- Required key: taskToken
-- @return RespondActivityTaskCanceledInput structure as a key-value pair table
function M.RespondActivityTaskCanceledInput(args)
	assert(args, "You must provide an argument table when creating RespondActivityTaskCanceledInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["details"] = args["details"],
		["taskToken"] = args["taskToken"],
	}
	asserts.AssertRespondActivityTaskCanceledInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>WorkflowExecutionTimedOut</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * timeoutType [WorkflowExecutionTimeoutType] <p>The type of timeout that caused this event.</p>
-- * childPolicy [ChildPolicy] <p>The policy used for the child workflow executions of this workflow execution.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul>
-- Required key: timeoutType
-- Required key: childPolicy
-- @return WorkflowExecutionTimedOutEventAttributes structure as a key-value pair table
function M.WorkflowExecutionTimedOutEventAttributes(args)
	assert(args, "You must provide an argument table when creating WorkflowExecutionTimedOutEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["timeoutType"] = args["timeoutType"],
		["childPolicy"] = args["childPolicy"],
	}
	asserts.AssertWorkflowExecutionTimedOutEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>CancelWorkflowExecutionFailed</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cause [CancelWorkflowExecutionFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CancelWorkflowExecution</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required key: cause
-- Required key: decisionTaskCompletedEventId
-- @return CancelWorkflowExecutionFailedEventAttributes structure as a key-value pair table
function M.CancelWorkflowExecutionFailedEventAttributes(args)
	assert(args, "You must provide an argument table when creating CancelWorkflowExecutionFailedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cause"] = args["cause"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
	}
	asserts.AssertCancelWorkflowExecutionFailedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * taskList [TaskList] <p>The task list used for the decision tasks generated for this workflow execution.</p>
-- * taskStartToCloseTimeout [DurationInSeconds] <p>The maximum duration allowed for decision tasks for this workflow execution.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
-- * lambdaRole [Arn] <p>The IAM role attached to the child workflow execution.</p>
-- * childPolicy [ChildPolicy] <p>The policy to use for the child workflow executions if this workflow execution is terminated, by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul>
-- * executionStartToCloseTimeout [DurationInSeconds] <p>The total duration for this workflow execution.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
-- * taskPriority [TaskPriority] <p>The priority assigned to decision tasks for this workflow execution. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- Required key: taskStartToCloseTimeout
-- Required key: executionStartToCloseTimeout
-- Required key: taskList
-- Required key: childPolicy
-- @return WorkflowExecutionConfiguration structure as a key-value pair table
function M.WorkflowExecutionConfiguration(args)
	assert(args, "You must provide an argument table when creating WorkflowExecutionConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["taskList"] = args["taskList"],
		["taskStartToCloseTimeout"] = args["taskStartToCloseTimeout"],
		["lambdaRole"] = args["lambdaRole"],
		["childPolicy"] = args["childPolicy"],
		["executionStartToCloseTimeout"] = args["executionStartToCloseTimeout"],
		["taskPriority"] = args["taskPriority"],
	}
	asserts.AssertWorkflowExecutionConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>LambdaFunctionCompleted</code> event. It isn't set for other event types.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startedEventId [EventId] <p>The ID of the <code>LambdaFunctionStarted</code> event recorded when this activity task started. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
-- * scheduledEventId [EventId] <p>The ID of the <code>LambdaFunctionScheduled</code> event that was recorded when this Lambda task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
-- * result [Data] <p>The results of the Lambda task.</p>
-- Required key: scheduledEventId
-- Required key: startedEventId
-- @return LambdaFunctionCompletedEventAttributes structure as a key-value pair table
function M.LambdaFunctionCompletedEventAttributes(args)
	assert(args, "You must provide an argument table when creating LambdaFunctionCompletedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["startedEventId"] = args["startedEventId"],
		["scheduledEventId"] = args["scheduledEventId"],
		["result"] = args["result"],
	}
	asserts.AssertLambdaFunctionCompletedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [DomainName] <p>The name of the domain to describe.</p>
-- Required key: name
-- @return DescribeDomainInput structure as a key-value pair table
function M.DescribeDomainInput(args)
	assert(args, "You must provide an argument table when creating DescribeDomainInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
	}
	asserts.AssertDescribeDomainInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domain [DomainName] <p>The name of the domain in which the workflow type is registered.</p>
-- * workflowType [WorkflowType] <p>The workflow type to deprecate.</p>
-- Required key: domain
-- Required key: workflowType
-- @return DeprecateWorkflowTypeInput structure as a key-value pair table
function M.DeprecateWorkflowTypeInput(args)
	assert(args, "You must provide an argument table when creating DeprecateWorkflowTypeInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domain"] = args["domain"],
		["workflowType"] = args["workflowType"],
	}
	asserts.AssertDeprecateWorkflowTypeInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>ScheduleActivityTask</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>activityType.name</code> – String constraint. The key is <code>swf:activityType.name</code>.</p> </li> <li> <p> <code>activityType.version</code> – String constraint. The key is <code>swf:activityType.version</code>.</p> </li> <li> <p> <code>taskList</code> – String constraint. The key is <code>swf:taskList.name</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * control [Data] <p>Data attached to the event that can be used by the decider in subsequent workflow tasks. This data isn't sent to the activity.</p>
-- * taskList [TaskList] <p>If set, specifies the name of the task list in which to schedule the activity task. If not specified, the <code>defaultTaskList</code> registered with the activity type is used.</p> <note> <p>A task list for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default task list was specified at registration time then a fault is returned.</p> </note> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>
-- * scheduleToCloseTimeout [DurationInSecondsOptional] <p>The maximum duration for this activity task.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p> <note> <p>A schedule-to-close timeout for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default schedule-to-close timeout was specified at registration time then a fault is returned.</p> </note>
-- * activityType [ActivityType] <p> The type of the activity task to schedule.</p>
-- * taskPriority [TaskPriority] <p> If set, specifies the priority with which the activity task is to be assigned to a worker. This overrides the defaultTaskPriority specified when registering the activity type using <a>RegisterActivityType</a>. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- * heartbeatTimeout [DurationInSecondsOptional] <p>If set, specifies the maximum time before which a worker processing a task of this type must report progress by calling <a>RecordActivityTaskHeartbeat</a>. If the timeout is exceeded, the activity task is automatically timed out. If the worker subsequently attempts to record a heartbeat or returns a result, it is ignored. This overrides the default heartbeat timeout specified when registering the activity type using <a>RegisterActivityType</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
-- * activityId [ActivityId] <p> The <code>activityId</code> of the activity task.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>
-- * scheduleToStartTimeout [DurationInSecondsOptional] <p> If set, specifies the maximum duration the activity task can wait to be assigned to a worker. This overrides the default schedule-to-start timeout specified when registering the activity type using <a>RegisterActivityType</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p> <note> <p>A schedule-to-start timeout for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default schedule-to-start timeout was specified at registration time then a fault is returned.</p> </note>
-- * startToCloseTimeout [DurationInSecondsOptional] <p>If set, specifies the maximum duration a worker may take to process this activity task. This overrides the default start-to-close timeout specified when registering the activity type using <a>RegisterActivityType</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p> <note> <p>A start-to-close timeout for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default start-to-close timeout was specified at registration time then a fault is returned.</p> </note>
-- * input [Data] <p>The input provided to the activity task.</p>
-- Required key: activityType
-- Required key: activityId
-- @return ScheduleActivityTaskDecisionAttributes structure as a key-value pair table
function M.ScheduleActivityTaskDecisionAttributes(args)
	assert(args, "You must provide an argument table when creating ScheduleActivityTaskDecisionAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["control"] = args["control"],
		["taskList"] = args["taskList"],
		["scheduleToCloseTimeout"] = args["scheduleToCloseTimeout"],
		["activityType"] = args["activityType"],
		["taskPriority"] = args["taskPriority"],
		["heartbeatTimeout"] = args["heartbeatTimeout"],
		["activityId"] = args["activityId"],
		["scheduleToStartTimeout"] = args["scheduleToStartTimeout"],
		["startToCloseTimeout"] = args["startToCloseTimeout"],
		["input"] = args["input"],
	}
	asserts.AssertScheduleActivityTaskDecisionAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>WorkflowExecutionCanceled</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * details [Data] <p>The details of the cancellation.</p>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CancelWorkflowExecution</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required key: decisionTaskCompletedEventId
-- @return WorkflowExecutionCanceledEventAttributes structure as a key-value pair table
function M.WorkflowExecutionCanceledEventAttributes(args)
	assert(args, "You must provide an argument table when creating WorkflowExecutionCanceledEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["details"] = args["details"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
	}
	asserts.AssertWorkflowExecutionCanceledEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domain [DomainName] <p>The name of the domain in which the workflow execution is created.</p>
-- * taskList [TaskList] <p>The task list to use for the decision tasks generated for this workflow execution. This overrides the <code>defaultTaskList</code> specified when registering the workflow type.</p> <note> <p>A task list for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task list was specified at registration time then a fault is returned.</p> </note> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>
-- * taskStartToCloseTimeout [DurationInSecondsOptional] <p>Specifies the maximum duration of decision tasks for this workflow execution. This parameter overrides the <code>defaultTaskStartToCloseTimout</code> specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p> <note> <p>A task start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task start-to-close timeout was specified at registration time then a fault is returned.</p> </note>
-- * workflowId [WorkflowId] <p>The user defined identifier associated with the workflow execution. You can use this to associate a custom identifier with the workflow execution. You may specify the same identifier if a workflow execution is logically a <i>restart</i> of a previous execution. You cannot have two open workflow executions with the same <code>workflowId</code> at the same time.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>
-- * taskPriority [TaskPriority] <p>The task priority to use for this workflow execution. This overrides any default priority that was assigned when the workflow type was registered. If not set, then the default task priority for the workflow type is used. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- * lambdaRole [Arn] <p>The IAM role to attach to this workflow execution.</p> <note> <p>Executions of this workflow type need IAM roles to invoke Lambda functions. If you don't attach an IAM role, any attempt to schedule a Lambda task fails. This results in a <code>ScheduleLambdaFunctionFailed</code> history event. For more information, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html">http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>
-- * childPolicy [ChildPolicy] <p>If set, specifies the policy to use for the child workflow executions of this workflow execution if it is terminated, by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout. This policy overrides the default child policy specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul> <note> <p>A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault is returned.</p> </note>
-- * executionStartToCloseTimeout [DurationInSecondsOptional] <p>The total duration for this workflow execution. This overrides the defaultExecutionStartToCloseTimeout specified when registering the workflow type.</p> <p>The duration is specified in seconds; an integer greater than or equal to <code>0</code>. Exceeding this limit causes the workflow execution to time out. Unlike some of the other timeout parameters in Amazon SWF, you cannot specify a value of "NONE" for this timeout; there is a one-year max limit on the time that a workflow execution can run.</p> <note> <p>An execution start-to-close timeout must be specified either through this parameter or as a default when the workflow type is registered. If neither this parameter nor a default execution start-to-close timeout is specified, a fault is returned.</p> </note>
-- * input [Data] <p>The input for the workflow execution. This is a free form string which should be meaningful to the workflow you are starting. This <code>input</code> is made available to the new workflow execution in the <code>WorkflowExecutionStarted</code> history event.</p>
-- * workflowType [WorkflowType] <p>The type of the workflow to start.</p>
-- * tagList [TagList] <p>The list of tags to associate with the workflow execution. You can specify a maximum of 5 tags. You can list workflow executions with a specific tag by calling <a>ListOpenWorkflowExecutions</a> or <a>ListClosedWorkflowExecutions</a> and specifying a <a>TagFilter</a>.</p>
-- Required key: domain
-- Required key: workflowId
-- Required key: workflowType
-- @return StartWorkflowExecutionInput structure as a key-value pair table
function M.StartWorkflowExecutionInput(args)
	assert(args, "You must provide an argument table when creating StartWorkflowExecutionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domain"] = args["domain"],
		["taskList"] = args["taskList"],
		["taskStartToCloseTimeout"] = args["taskStartToCloseTimeout"],
		["workflowId"] = args["workflowId"],
		["taskPriority"] = args["taskPriority"],
		["lambdaRole"] = args["lambdaRole"],
		["childPolicy"] = args["childPolicy"],
		["executionStartToCloseTimeout"] = args["executionStartToCloseTimeout"],
		["input"] = args["input"],
		["workflowType"] = args["workflowType"],
		["tagList"] = args["tagList"],
	}
	asserts.AssertStartWorkflowExecutionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>RecordMarker</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * markerName [MarkerName] <p> The name of the marker.</p>
-- * details [Data] <p> The details of the marker.</p>
-- Required key: markerName
-- @return RecordMarkerDecisionAttributes structure as a key-value pair table
function M.RecordMarkerDecisionAttributes(args)
	assert(args, "You must provide an argument table when creating RecordMarkerDecisionAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["markerName"] = args["markerName"],
		["details"] = args["details"],
	}
	asserts.AssertRecordMarkerDecisionAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RequestCancelExternalWorkflowExecutionInitiatedEventAttributes = { ["control"] = true, ["workflowId"] = true, ["runId"] = true, ["decisionTaskCompletedEventId"] = true, nil }

function asserts.AssertRequestCancelExternalWorkflowExecutionInitiatedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestCancelExternalWorkflowExecutionInitiatedEventAttributes to be of type 'table'")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["control"] then asserts.AssertData(struct["control"]) end
	if struct["workflowId"] then asserts.AssertWorkflowId(struct["workflowId"]) end
	if struct["runId"] then asserts.AssertWorkflowRunIdOptional(struct["runId"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestCancelExternalWorkflowExecutionInitiatedEventAttributes[k], "RequestCancelExternalWorkflowExecutionInitiatedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
-- <p>Provides the details of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * control [Data] <p>Data attached to the event that can be used by the decider in subsequent workflow tasks.</p>
-- * workflowId [WorkflowId] <p>The <code>workflowId</code> of the external workflow execution to be canceled.</p>
-- * runId [WorkflowRunIdOptional] <p>The <code>runId</code> of the external workflow execution to be canceled.</p>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>RequestCancelExternalWorkflowExecution</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required key: workflowId
-- Required key: decisionTaskCompletedEventId
-- @return RequestCancelExternalWorkflowExecutionInitiatedEventAttributes structure as a key-value pair table
function M.RequestCancelExternalWorkflowExecutionInitiatedEventAttributes(args)
	assert(args, "You must provide an argument table when creating RequestCancelExternalWorkflowExecutionInitiatedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["control"] = args["control"],
		["workflowId"] = args["workflowId"],
		["runId"] = args["runId"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
	}
	asserts.AssertRequestCancelExternalWorkflowExecutionInitiatedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * count [Count] <p>The number of tasks in the task list.</p>
-- * truncated [Truncated] <p>If set to true, indicates that the actual count was more than the maximum supported by this API and the count returned is the truncated value.</p>
-- Required key: count
-- @return PendingTaskCount structure as a key-value pair table
function M.PendingTaskCount(args)
	assert(args, "You must provide an argument table when creating PendingTaskCount")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["count"] = args["count"],
		["truncated"] = args["truncated"],
	}
	asserts.AssertPendingTaskCount(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>StartChildWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>Constrain the following parameters by using a <code>Condition</code> element with the appropriate keys.</p> <ul> <li> <p> <code>tagList.member.N</code> – The key is "swf:tagList.N" where N is the tag number from 0 to 4, inclusive.</p> </li> <li> <p> <code>taskList</code> – String constraint. The key is <code>swf:taskList.name</code>.</p> </li> <li> <p> <code>workflowType.name</code> – String constraint. The key is <code>swf:workflowType.name</code>.</p> </li> <li> <p> <code>workflowType.version</code> – String constraint. The key is <code>swf:workflowType.version</code>.</p> </li> </ul> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * control [Data] <p>The data attached to the event that can be used by the decider in subsequent workflow tasks. This data isn't sent to the child workflow execution.</p>
-- * workflowId [WorkflowId] <p> The <code>workflowId</code> of the workflow execution.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>
-- * taskList [TaskList] <p>The name of the task list to be used for decision tasks of the child workflow execution.</p> <note> <p>A task list for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task list was specified at registration time then a fault is returned.</p> </note> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>
-- * taskStartToCloseTimeout [DurationInSecondsOptional] <p>Specifies the maximum duration of decision tasks for this workflow execution. This parameter overrides the <code>defaultTaskStartToCloseTimout</code> specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p> <note> <p>A task start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task start-to-close timeout was specified at registration time then a fault is returned.</p> </note>
-- * taskPriority [TaskPriority] <p> A task priority that, if set, specifies the priority for a decision task of this workflow execution. This overrides the defaultTaskPriority specified when registering the workflow type. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- * lambdaRole [Arn] <p>The IAM role attached to the child workflow execution.</p>
-- * childPolicy [ChildPolicy] <p> If set, specifies the policy to use for the child workflow executions if the workflow execution being started is terminated by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout. This policy overrides the default child policy specified when registering the workflow type using <a>RegisterWorkflowType</a>.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul> <note> <p>A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault is returned.</p> </note>
-- * executionStartToCloseTimeout [DurationInSecondsOptional] <p>The total duration for this workflow execution. This overrides the defaultExecutionStartToCloseTimeout specified when registering the workflow type.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p> <note> <p>An execution start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default execution start-to-close timeout was specified at registration time then a fault is returned.</p> </note>
-- * input [Data] <p>The input to be provided to the workflow execution.</p>
-- * workflowType [WorkflowType] <p> The type of the workflow execution to be started.</p>
-- * tagList [TagList] <p>The list of tags to associate with the child workflow execution. A maximum of 5 tags can be specified. You can list workflow executions with a specific tag by calling <a>ListOpenWorkflowExecutions</a> or <a>ListClosedWorkflowExecutions</a> and specifying a <a>TagFilter</a>.</p>
-- Required key: workflowType
-- Required key: workflowId
-- @return StartChildWorkflowExecutionDecisionAttributes structure as a key-value pair table
function M.StartChildWorkflowExecutionDecisionAttributes(args)
	assert(args, "You must provide an argument table when creating StartChildWorkflowExecutionDecisionAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["control"] = args["control"],
		["workflowId"] = args["workflowId"],
		["taskList"] = args["taskList"],
		["taskStartToCloseTimeout"] = args["taskStartToCloseTimeout"],
		["taskPriority"] = args["taskPriority"],
		["lambdaRole"] = args["lambdaRole"],
		["childPolicy"] = args["childPolicy"],
		["executionStartToCloseTimeout"] = args["executionStartToCloseTimeout"],
		["input"] = args["input"],
		["workflowType"] = args["workflowType"],
		["tagList"] = args["tagList"],
	}
	asserts.AssertStartChildWorkflowExecutionDecisionAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [RegistrationStatus] <p>The current status of the workflow type.</p>
-- * deprecationDate [Timestamp] <p>If the type is in deprecated state, then it is set to the date when the type was deprecated.</p>
-- * creationDate [Timestamp] <p>The date when this type was registered.</p>
-- * workflowType [WorkflowType] <p>The workflow type this information is about.</p>
-- * description [Description] <p>The description of the type registered through <a>RegisterWorkflowType</a>.</p>
-- Required key: workflowType
-- Required key: status
-- Required key: creationDate
-- @return WorkflowTypeInfo structure as a key-value pair table
function M.WorkflowTypeInfo(args)
	assert(args, "You must provide an argument table when creating WorkflowTypeInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["deprecationDate"] = args["deprecationDate"],
		["creationDate"] = args["creationDate"],
		["workflowType"] = args["workflowType"],
		["description"] = args["description"],
	}
	asserts.AssertWorkflowTypeInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>DecisionTaskStarted</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * scheduledEventId [EventId] <p>The ID of the <code>DecisionTaskScheduled</code> event that was recorded when this decision task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * identity [Identity] <p>Identity of the decider making the request. This enables diagnostic tracing when problems arise. The form of this identity is user defined.</p>
-- Required key: scheduledEventId
-- @return DecisionTaskStartedEventAttributes structure as a key-value pair table
function M.DecisionTaskStartedEventAttributes(args)
	assert(args, "You must provide an argument table when creating DecisionTaskStartedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["scheduledEventId"] = args["scheduledEventId"],
		["identity"] = args["identity"],
	}
	asserts.AssertDecisionTaskStartedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * version [Version] <p> The version of the workflow type.</p> <note> <p>The combination of workflow type name and version must be unique with in a domain.</p> </note>
-- * name [Name] <p> The name of the workflow type.</p> <note> <p>The combination of workflow type name and version must be unique with in a domain.</p> </note>
-- Required key: name
-- Required key: version
-- @return WorkflowType structure as a key-value pair table
function M.WorkflowType(args)
	assert(args, "You must provide an argument table when creating WorkflowType")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["version"] = args["version"],
		["name"] = args["name"],
	}
	asserts.AssertWorkflowType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>ChildWorkflowExecutionTerminated</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startedEventId [EventId] <p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * workflowType [WorkflowType] <p>The type of the child workflow execution.</p>
-- * initiatedEventId [EventId] <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> <a>Decision</a> to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * workflowExecution [WorkflowExecution] <p>The child workflow execution that was terminated.</p>
-- Required key: workflowExecution
-- Required key: workflowType
-- Required key: initiatedEventId
-- Required key: startedEventId
-- @return ChildWorkflowExecutionTerminatedEventAttributes structure as a key-value pair table
function M.ChildWorkflowExecutionTerminatedEventAttributes(args)
	assert(args, "You must provide an argument table when creating ChildWorkflowExecutionTerminatedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["startedEventId"] = args["startedEventId"],
		["workflowType"] = args["workflowType"],
		["initiatedEventId"] = args["initiatedEventId"],
		["workflowExecution"] = args["workflowExecution"],
	}
	asserts.AssertChildWorkflowExecutionTerminatedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * workflowExecutionRetentionPeriodInDays [DurationInDays] <p>The retention period for workflow executions in this domain.</p>
-- Required key: workflowExecutionRetentionPeriodInDays
-- @return DomainConfiguration structure as a key-value pair table
function M.DomainConfiguration(args)
	assert(args, "You must provide an argument table when creating DomainConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["workflowExecutionRetentionPeriodInDays"] = args["workflowExecutionRetentionPeriodInDays"],
	}
	asserts.AssertDomainConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RequestCancelWorkflowExecutionInput = { ["domain"] = true, ["workflowId"] = true, ["runId"] = true, nil }

function asserts.AssertRequestCancelWorkflowExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestCancelWorkflowExecutionInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	if struct["domain"] then asserts.AssertDomainName(struct["domain"]) end
	if struct["workflowId"] then asserts.AssertWorkflowId(struct["workflowId"]) end
	if struct["runId"] then asserts.AssertWorkflowRunIdOptional(struct["runId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestCancelWorkflowExecutionInput[k], "RequestCancelWorkflowExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestCancelWorkflowExecutionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domain [DomainName] <p>The name of the domain containing the workflow execution to cancel.</p>
-- * workflowId [WorkflowId] <p>The workflowId of the workflow execution to cancel.</p>
-- * runId [WorkflowRunIdOptional] <p>The runId of the workflow execution to cancel.</p>
-- Required key: domain
-- Required key: workflowId
-- @return RequestCancelWorkflowExecutionInput structure as a key-value pair table
function M.RequestCancelWorkflowExecutionInput(args)
	assert(args, "You must provide an argument table when creating RequestCancelWorkflowExecutionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domain"] = args["domain"],
		["workflowId"] = args["workflowId"],
		["runId"] = args["runId"],
	}
	asserts.AssertRequestCancelWorkflowExecutionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Run = { ["runId"] = true, nil }

function asserts.AssertRun(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Run to be of type 'table'")
	if struct["runId"] then asserts.AssertWorkflowRunId(struct["runId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Run[k], "Run contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Run
-- <p>Specifies the <code>runId</code> of a workflow execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * runId [WorkflowRunId] <p>The <code>runId</code> of a workflow execution. This ID is generated by the service and can be used to uniquely identify the workflow execution within a domain.</p>
-- @return Run structure as a key-value pair table
function M.Run(args)
	assert(args, "You must provide an argument table when creating Run")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["runId"] = args["runId"],
	}
	asserts.AssertRun(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>RecordMarkerFailed</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * markerName [MarkerName] <p>The marker's name.</p>
-- * cause [RecordMarkerFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>RecordMarkerFailed</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required key: markerName
-- Required key: cause
-- Required key: decisionTaskCompletedEventId
-- @return RecordMarkerFailedEventAttributes structure as a key-value pair table
function M.RecordMarkerFailedEventAttributes(args)
	assert(args, "You must provide an argument table when creating RecordMarkerFailedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["markerName"] = args["markerName"],
		["cause"] = args["cause"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
	}
	asserts.AssertRecordMarkerFailedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	if struct["newExecutionRunId"] then asserts.AssertWorkflowRunId(struct["newExecutionRunId"]) end
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
-- <p>Provides the details of the <code>WorkflowExecutionContinuedAsNew</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * taskList [TaskList] <p>The task list to use for the decisions of the new (continued) workflow execution.</p>
-- * taskStartToCloseTimeout [DurationInSecondsOptional] <p>The maximum duration of decision tasks for the new workflow execution.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
-- * newExecutionRunId [WorkflowRunId] <p>The <code>runId</code> of the new workflow execution.</p>
-- * taskPriority [TaskPriority] <p>The priority of the task to use for the decisions of the new (continued) workflow execution.</p>
-- * lambdaRole [Arn] <p>The IAM role to attach to the new (continued) workflow execution.</p>
-- * childPolicy [ChildPolicy] <p>The policy to use for the child workflow executions of the new execution if it is terminated by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>ContinueAsNewWorkflowExecution</code> decision that started this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * executionStartToCloseTimeout [DurationInSecondsOptional] <p>The total duration allowed for the new workflow execution.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
-- * input [Data] <p>The input provided to the new workflow execution.</p>
-- * workflowType [WorkflowType] <p>The workflow type of this execution.</p>
-- * tagList [TagList] <p>The list of tags associated with the new workflow execution.</p>
-- Required key: decisionTaskCompletedEventId
-- Required key: newExecutionRunId
-- Required key: taskList
-- Required key: childPolicy
-- Required key: workflowType
-- @return WorkflowExecutionContinuedAsNewEventAttributes structure as a key-value pair table
function M.WorkflowExecutionContinuedAsNewEventAttributes(args)
	assert(args, "You must provide an argument table when creating WorkflowExecutionContinuedAsNewEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["taskList"] = args["taskList"],
		["taskStartToCloseTimeout"] = args["taskStartToCloseTimeout"],
		["newExecutionRunId"] = args["newExecutionRunId"],
		["taskPriority"] = args["taskPriority"],
		["lambdaRole"] = args["lambdaRole"],
		["childPolicy"] = args["childPolicy"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
		["executionStartToCloseTimeout"] = args["executionStartToCloseTimeout"],
		["input"] = args["input"],
		["workflowType"] = args["workflowType"],
		["tagList"] = args["tagList"],
	}
	asserts.AssertWorkflowExecutionContinuedAsNewEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>MarkerRecorded</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * markerName [MarkerName] <p>The name of the marker.</p>
-- * details [Data] <p>The details of the marker.</p>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>RecordMarker</code> decision that requested this marker. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required key: markerName
-- Required key: decisionTaskCompletedEventId
-- @return MarkerRecordedEventAttributes structure as a key-value pair table
function M.MarkerRecordedEventAttributes(args)
	assert(args, "You must provide an argument table when creating MarkerRecordedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["markerName"] = args["markerName"],
		["details"] = args["details"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
	}
	asserts.AssertMarkerRecordedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domainInfo [DomainInfo] <p>The basic information about a domain, such as its name, status, and description.</p>
-- * configuration [DomainConfiguration] <p>The domain configuration. Currently, this includes only the domain's retention period.</p>
-- Required key: domainInfo
-- Required key: configuration
-- @return DomainDetail structure as a key-value pair table
function M.DomainDetail(args)
	assert(args, "You must provide an argument table when creating DomainDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domainInfo"] = args["domainInfo"],
		["configuration"] = args["configuration"],
	}
	asserts.AssertDomainDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domainInfos [DomainInfoList] <p>A list of DomainInfo structures.</p>
-- * nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- Required key: domainInfos
-- @return DomainInfos structure as a key-value pair table
function M.DomainInfos(args)
	assert(args, "You must provide an argument table when creating DomainInfos")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domainInfos"] = args["domainInfos"],
		["nextPageToken"] = args["nextPageToken"],
	}
	asserts.AssertDomainInfos(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>FailWorkflowExecutionFailed</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cause [FailWorkflowExecutionFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>FailWorkflowExecution</code> decision to fail this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required key: cause
-- Required key: decisionTaskCompletedEventId
-- @return FailWorkflowExecutionFailedEventAttributes structure as a key-value pair table
function M.FailWorkflowExecutionFailedEventAttributes(args)
	assert(args, "You must provide an argument table when creating FailWorkflowExecutionFailedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cause"] = args["cause"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
	}
	asserts.AssertFailWorkflowExecutionFailedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	if struct["runId"] then asserts.AssertWorkflowRunIdOptional(struct["runId"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["cause"] then asserts.AssertSignalExternalWorkflowExecutionFailedCause(struct["cause"]) end
	for k,_ in pairs(struct) do
		assert(keys.SignalExternalWorkflowExecutionFailedEventAttributes[k], "SignalExternalWorkflowExecutionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SignalExternalWorkflowExecutionFailedEventAttributes
-- <p>Provides the details of the <code>SignalExternalWorkflowExecutionFailed</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * control [Data] <p>The data attached to the event that the decider can use in subsequent workflow tasks. This data isn't sent to the workflow execution.</p>
-- * workflowId [WorkflowId] <p>The <code>workflowId</code> of the external workflow execution that the signal was being delivered to.</p>
-- * initiatedEventId [EventId] <p>The ID of the <code>SignalExternalWorkflowExecutionInitiated</code> event corresponding to the <code>SignalExternalWorkflowExecution</code> decision to request this signal. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * runId [WorkflowRunIdOptional] <p>The <code>runId</code> of the external workflow execution that the signal was being delivered to.</p>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>SignalExternalWorkflowExecution</code> decision for this signal. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * cause [SignalExternalWorkflowExecutionFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>
-- Required key: workflowId
-- Required key: cause
-- Required key: initiatedEventId
-- Required key: decisionTaskCompletedEventId
-- @return SignalExternalWorkflowExecutionFailedEventAttributes structure as a key-value pair table
function M.SignalExternalWorkflowExecutionFailedEventAttributes(args)
	assert(args, "You must provide an argument table when creating SignalExternalWorkflowExecutionFailedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["control"] = args["control"],
		["workflowId"] = args["workflowId"],
		["initiatedEventId"] = args["initiatedEventId"],
		["runId"] = args["runId"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
		["cause"] = args["cause"],
	}
	asserts.AssertSignalExternalWorkflowExecutionFailedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- * domain [DomainName] <p>The name of the domain containing the workflow execution.</p>
-- * execution [WorkflowExecution] <p>Specifies the workflow execution for which to return the history.</p>
-- * reverseOrder [ReverseOrder] <p>When set to <code>true</code>, returns the events in reverse order. By default the results are returned in ascending order of the <code>eventTimeStamp</code> of the events.</p>
-- * maximumPageSize [PageSize] <p>The maximum number of results that are returned per call. <code>nextPageToken</code> can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size <i>smaller</i> than the maximum.</p> <p>This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.</p>
-- Required key: domain
-- Required key: execution
-- @return GetWorkflowExecutionHistoryInput structure as a key-value pair table
function M.GetWorkflowExecutionHistoryInput(args)
	assert(args, "You must provide an argument table when creating GetWorkflowExecutionHistoryInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["domain"] = args["domain"],
		["execution"] = args["execution"],
		["reverseOrder"] = args["reverseOrder"],
		["maximumPageSize"] = args["maximumPageSize"],
	}
	asserts.AssertGetWorkflowExecutionHistoryInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Event within a workflow execution. A history event can be one of these types:</p> <ul> <li> <p> <code>ActivityTaskCancelRequested</code> – A <code>RequestCancelActivityTask</code> decision was received by the system.</p> </li> <li> <p> <code>ActivityTaskCanceled</code> – The activity task was successfully canceled.</p> </li> <li> <p> <code>ActivityTaskCompleted</code> – An activity worker successfully completed an activity task by calling <a>RespondActivityTaskCompleted</a>.</p> </li> <li> <p> <code>ActivityTaskFailed</code> – An activity worker failed an activity task by calling <a>RespondActivityTaskFailed</a>.</p> </li> <li> <p> <code>ActivityTaskScheduled</code> – An activity task was scheduled for execution.</p> </li> <li> <p> <code>ActivityTaskStarted</code> – The scheduled activity task was dispatched to a worker.</p> </li> <li> <p> <code>ActivityTaskTimedOut</code> – The activity task timed out.</p> </li> <li> <p> <code>CancelTimerFailed</code> – Failed to process CancelTimer decision. This happens when the decision isn't configured properly, for example no timer exists with the specified timer Id.</p> </li> <li> <p> <code>CancelWorkflowExecutionFailed</code> – A request to cancel a workflow execution failed.</p> </li> <li> <p> <code>ChildWorkflowExecutionCanceled</code> – A child workflow execution, started by this workflow execution, was canceled and closed.</p> </li> <li> <p> <code>ChildWorkflowExecutionCompleted</code> – A child workflow execution, started by this workflow execution, completed successfully and was closed.</p> </li> <li> <p> <code>ChildWorkflowExecutionFailed</code> – A child workflow execution, started by this workflow execution, failed to complete successfully and was closed.</p> </li> <li> <p> <code>ChildWorkflowExecutionStarted</code> – A child workflow execution was successfully started.</p> </li> <li> <p> <code>ChildWorkflowExecutionTerminated</code> – A child workflow execution, started by this workflow execution, was terminated.</p> </li> <li> <p> <code>ChildWorkflowExecutionTimedOut</code> – A child workflow execution, started by this workflow execution, timed out and was closed.</p> </li> <li> <p> <code>CompleteWorkflowExecutionFailed</code> – The workflow execution failed to complete.</p> </li> <li> <p> <code>ContinueAsNewWorkflowExecutionFailed</code> – The workflow execution failed to complete after being continued as a new workflow execution.</p> </li> <li> <p> <code>DecisionTaskCompleted</code> – The decider successfully completed a decision task by calling <a>RespondDecisionTaskCompleted</a>.</p> </li> <li> <p> <code>DecisionTaskScheduled</code> – A decision task was scheduled for the workflow execution.</p> </li> <li> <p> <code>DecisionTaskStarted</code> – The decision task was dispatched to a decider.</p> </li> <li> <p> <code>DecisionTaskTimedOut</code> – The decision task timed out.</p> </li> <li> <p> <code>ExternalWorkflowExecutionCancelRequested</code> – Request to cancel an external workflow execution was successfully delivered to the target execution.</p> </li> <li> <p> <code>ExternalWorkflowExecutionSignaled</code> – A signal, requested by this workflow execution, was successfully delivered to the target external workflow execution.</p> </li> <li> <p> <code>FailWorkflowExecutionFailed</code> – A request to mark a workflow execution as failed, itself failed.</p> </li> <li> <p> <code>MarkerRecorded</code> – A marker was recorded in the workflow history as the result of a <code>RecordMarker</code> decision.</p> </li> <li> <p> <code>RecordMarkerFailed</code> – A <code>RecordMarker</code> decision was returned as failed.</p> </li> <li> <p> <code>RequestCancelActivityTaskFailed</code> – Failed to process RequestCancelActivityTask decision. This happens when the decision isn't configured properly.</p> </li> <li> <p> <code>RequestCancelExternalWorkflowExecutionFailed</code> – Request to cancel an external workflow execution failed.</p> </li> <li> <p> <code>RequestCancelExternalWorkflowExecutionInitiated</code> – A request was made to request the cancellation of an external workflow execution.</p> </li> <li> <p> <code>ScheduleActivityTaskFailed</code> – Failed to process ScheduleActivityTask decision. This happens when the decision isn't configured properly, for example the activity type specified isn't registered.</p> </li> <li> <p> <code>SignalExternalWorkflowExecutionFailed</code> – The request to signal an external workflow execution failed.</p> </li> <li> <p> <code>SignalExternalWorkflowExecutionInitiated</code> – A request to signal an external workflow was made.</p> </li> <li> <p> <code>StartActivityTaskFailed</code> – A scheduled activity task failed to start.</p> </li> <li> <p> <code>StartChildWorkflowExecutionFailed</code> – Failed to process StartChildWorkflowExecution decision. This happens when the decision isn't configured properly, for example the workflow type specified isn't registered.</p> </li> <li> <p> <code>StartChildWorkflowExecutionInitiated</code> – A request was made to start a child workflow execution.</p> </li> <li> <p> <code>StartTimerFailed</code> – Failed to process StartTimer decision. This happens when the decision isn't configured properly, for example a timer already exists with the specified timer Id.</p> </li> <li> <p> <code>TimerCanceled</code> – A timer, previously started for this workflow execution, was successfully canceled.</p> </li> <li> <p> <code>TimerFired</code> – A timer, previously started for this workflow execution, fired.</p> </li> <li> <p> <code>TimerStarted</code> – A timer was started for the workflow execution due to a <code>StartTimer</code> decision.</p> </li> <li> <p> <code>WorkflowExecutionCancelRequested</code> – A request to cancel this workflow execution was made.</p> </li> <li> <p> <code>WorkflowExecutionCanceled</code> – The workflow execution was successfully canceled and closed.</p> </li> <li> <p> <code>WorkflowExecutionCompleted</code> – The workflow execution was closed due to successful completion.</p> </li> <li> <p> <code>WorkflowExecutionContinuedAsNew</code> – The workflow execution was closed and a new execution of the same type was created with the same workflowId.</p> </li> <li> <p> <code>WorkflowExecutionFailed</code> – The workflow execution closed due to a failure.</p> </li> <li> <p> <code>WorkflowExecutionSignaled</code> – An external signal was received for the workflow execution.</p> </li> <li> <p> <code>WorkflowExecutionStarted</code> – The workflow execution was started.</p> </li> <li> <p> <code>WorkflowExecutionTerminated</code> – The workflow execution was terminated.</p> </li> <li> <p> <code>WorkflowExecutionTimedOut</code> – The workflow execution was closed because a time out was exceeded.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * workflowExecutionCancelRequestedEventAttributes [WorkflowExecutionCancelRequestedEventAttributes] <p>If the event is of type <code>WorkflowExecutionCancelRequested</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * requestCancelExternalWorkflowExecutionInitiatedEventAttributes [RequestCancelExternalWorkflowExecutionInitiatedEventAttributes] <p>If the event is of type <code>RequestCancelExternalWorkflowExecutionInitiated</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * completeWorkflowExecutionFailedEventAttributes [CompleteWorkflowExecutionFailedEventAttributes] <p>If the event is of type <code>CompleteWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * childWorkflowExecutionStartedEventAttributes [ChildWorkflowExecutionStartedEventAttributes] <p>If the event is of type <code>ChildWorkflowExecutionStarted</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * activityTaskScheduledEventAttributes [ActivityTaskScheduledEventAttributes] <p>If the event is of type <code>ActivityTaskScheduled</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * eventType [EventType] <p>The type of the history event.</p>
-- * decisionTaskTimedOutEventAttributes [DecisionTaskTimedOutEventAttributes] <p>If the event is of type <code>DecisionTaskTimedOut</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * workflowExecutionTimedOutEventAttributes [WorkflowExecutionTimedOutEventAttributes] <p>If the event is of type <code>WorkflowExecutionTimedOut</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * cancelWorkflowExecutionFailedEventAttributes [CancelWorkflowExecutionFailedEventAttributes] <p>If the event is of type <code>CancelWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * eventTimestamp [Timestamp] <p>The date and time when the event occurred.</p>
-- * lambdaFunctionCompletedEventAttributes [LambdaFunctionCompletedEventAttributes] <p>Provides the details of the <code>LambdaFunctionCompleted</code> event. It isn't set for other event types.</p>
-- * timerCanceledEventAttributes [TimerCanceledEventAttributes] <p>If the event is of type <code>TimerCanceled</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * startChildWorkflowExecutionFailedEventAttributes [StartChildWorkflowExecutionFailedEventAttributes] <p>If the event is of type <code>StartChildWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * eventId [EventId] <p>The system generated ID of the event. This ID uniquely identifies the event with in the workflow execution history.</p>
-- * workflowExecutionContinuedAsNewEventAttributes [WorkflowExecutionContinuedAsNewEventAttributes] <p>If the event is of type <code>WorkflowExecutionContinuedAsNew</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * childWorkflowExecutionTimedOutEventAttributes [ChildWorkflowExecutionTimedOutEventAttributes] <p>If the event is of type <code>ChildWorkflowExecutionTimedOut</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * childWorkflowExecutionCanceledEventAttributes [ChildWorkflowExecutionCanceledEventAttributes] <p>If the event is of type <code>ChildWorkflowExecutionCanceled</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * activityTaskStartedEventAttributes [ActivityTaskStartedEventAttributes] <p>If the event is of type <code>ActivityTaskStarted</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * activityTaskCompletedEventAttributes [ActivityTaskCompletedEventAttributes] <p>If the event is of type <code>ActivityTaskCompleted</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * activityTaskFailedEventAttributes [ActivityTaskFailedEventAttributes] <p>If the event is of type <code>ActivityTaskFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * signalExternalWorkflowExecutionInitiatedEventAttributes [SignalExternalWorkflowExecutionInitiatedEventAttributes] <p>If the event is of type <code>SignalExternalWorkflowExecutionInitiated</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * recordMarkerFailedEventAttributes [RecordMarkerFailedEventAttributes] <p>If the event is of type <code>DecisionTaskFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * externalWorkflowExecutionSignaledEventAttributes [ExternalWorkflowExecutionSignaledEventAttributes] <p>If the event is of type <code>ExternalWorkflowExecutionSignaled</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * lambdaFunctionTimedOutEventAttributes [LambdaFunctionTimedOutEventAttributes] <p>Provides the details of the <code>LambdaFunctionTimedOut</code> event. It isn't set for other event types.</p>
-- * childWorkflowExecutionCompletedEventAttributes [ChildWorkflowExecutionCompletedEventAttributes] <p>If the event is of type <code>ChildWorkflowExecutionCompleted</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * startLambdaFunctionFailedEventAttributes [StartLambdaFunctionFailedEventAttributes] <p>Provides the details of the <code>StartLambdaFunctionFailed</code> event. It isn't set for other event types.</p>
-- * workflowExecutionSignaledEventAttributes [WorkflowExecutionSignaledEventAttributes] <p>If the event is of type <code>WorkflowExecutionSignaled</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * scheduleActivityTaskFailedEventAttributes [ScheduleActivityTaskFailedEventAttributes] <p>If the event is of type <code>ScheduleActivityTaskFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * childWorkflowExecutionTerminatedEventAttributes [ChildWorkflowExecutionTerminatedEventAttributes] <p>If the event is of type <code>ChildWorkflowExecutionTerminated</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * externalWorkflowExecutionCancelRequestedEventAttributes [ExternalWorkflowExecutionCancelRequestedEventAttributes] <p>If the event is of type <code>ExternalWorkflowExecutionCancelRequested</code> then this member is set and provides detailed information about the event. It isn't set for other event types. </p>
-- * workflowExecutionCanceledEventAttributes [WorkflowExecutionCanceledEventAttributes] <p>If the event is of type <code>WorkflowExecutionCanceled</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * requestCancelExternalWorkflowExecutionFailedEventAttributes [RequestCancelExternalWorkflowExecutionFailedEventAttributes] <p>If the event is of type <code>RequestCancelExternalWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * workflowExecutionTerminatedEventAttributes [WorkflowExecutionTerminatedEventAttributes] <p>If the event is of type <code>WorkflowExecutionTerminated</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * decisionTaskScheduledEventAttributes [DecisionTaskScheduledEventAttributes] <p>If the event is of type <code>DecisionTaskScheduled</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * lambdaFunctionFailedEventAttributes [LambdaFunctionFailedEventAttributes] <p>Provides the details of the <code>LambdaFunctionFailed</code> event. It isn't set for other event types.</p>
-- * activityTaskCanceledEventAttributes [ActivityTaskCanceledEventAttributes] <p>If the event is of type <code>ActivityTaskCanceled</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * cancelTimerFailedEventAttributes [CancelTimerFailedEventAttributes] <p>If the event is of type <code>CancelTimerFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * startTimerFailedEventAttributes [StartTimerFailedEventAttributes] <p>If the event is of type <code>StartTimerFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * timerFiredEventAttributes [TimerFiredEventAttributes] <p>If the event is of type <code>TimerFired</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * failWorkflowExecutionFailedEventAttributes [FailWorkflowExecutionFailedEventAttributes] <p>If the event is of type <code>FailWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * workflowExecutionStartedEventAttributes [WorkflowExecutionStartedEventAttributes] <p>If the event is of type <code>WorkflowExecutionStarted</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * decisionTaskCompletedEventAttributes [DecisionTaskCompletedEventAttributes] <p>If the event is of type <code>DecisionTaskCompleted</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * workflowExecutionFailedEventAttributes [WorkflowExecutionFailedEventAttributes] <p>If the event is of type <code>WorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * timerStartedEventAttributes [TimerStartedEventAttributes] <p>If the event is of type <code>TimerStarted</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * requestCancelActivityTaskFailedEventAttributes [RequestCancelActivityTaskFailedEventAttributes] <p>If the event is of type <code>RequestCancelActivityTaskFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * activityTaskTimedOutEventAttributes [ActivityTaskTimedOutEventAttributes] <p>If the event is of type <code>ActivityTaskTimedOut</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * continueAsNewWorkflowExecutionFailedEventAttributes [ContinueAsNewWorkflowExecutionFailedEventAttributes] <p>If the event is of type <code>ContinueAsNewWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * signalExternalWorkflowExecutionFailedEventAttributes [SignalExternalWorkflowExecutionFailedEventAttributes] <p>If the event is of type <code>SignalExternalWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * startChildWorkflowExecutionInitiatedEventAttributes [StartChildWorkflowExecutionInitiatedEventAttributes] <p>If the event is of type <code>StartChildWorkflowExecutionInitiated</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * markerRecordedEventAttributes [MarkerRecordedEventAttributes] <p>If the event is of type <code>MarkerRecorded</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * lambdaFunctionScheduledEventAttributes [LambdaFunctionScheduledEventAttributes] <p>Provides the details of the <code>LambdaFunctionScheduled</code> event. It isn't set for other event types.</p>
-- * scheduleLambdaFunctionFailedEventAttributes [ScheduleLambdaFunctionFailedEventAttributes] <p>Provides the details of the <code>ScheduleLambdaFunctionFailed</code> event. It isn't set for other event types.</p>
-- * workflowExecutionCompletedEventAttributes [WorkflowExecutionCompletedEventAttributes] <p>If the event is of type <code>WorkflowExecutionCompleted</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * decisionTaskStartedEventAttributes [DecisionTaskStartedEventAttributes] <p>If the event is of type <code>DecisionTaskStarted</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * childWorkflowExecutionFailedEventAttributes [ChildWorkflowExecutionFailedEventAttributes] <p>If the event is of type <code>ChildWorkflowExecutionFailed</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * activityTaskCancelRequestedEventAttributes [ActivityTaskCancelRequestedEventAttributes] <p>If the event is of type <code>ActivityTaskcancelRequested</code> then this member is set and provides detailed information about the event. It isn't set for other event types.</p>
-- * lambdaFunctionStartedEventAttributes [LambdaFunctionStartedEventAttributes] <p>Provides the details of the <code>LambdaFunctionStarted</code> event. It isn't set for other event types.</p>
-- Required key: eventTimestamp
-- Required key: eventType
-- Required key: eventId
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
		["workflowExecutionCancelRequestedEventAttributes"] = args["workflowExecutionCancelRequestedEventAttributes"],
		["requestCancelExternalWorkflowExecutionInitiatedEventAttributes"] = args["requestCancelExternalWorkflowExecutionInitiatedEventAttributes"],
		["completeWorkflowExecutionFailedEventAttributes"] = args["completeWorkflowExecutionFailedEventAttributes"],
		["childWorkflowExecutionStartedEventAttributes"] = args["childWorkflowExecutionStartedEventAttributes"],
		["activityTaskScheduledEventAttributes"] = args["activityTaskScheduledEventAttributes"],
		["eventType"] = args["eventType"],
		["decisionTaskTimedOutEventAttributes"] = args["decisionTaskTimedOutEventAttributes"],
		["workflowExecutionTimedOutEventAttributes"] = args["workflowExecutionTimedOutEventAttributes"],
		["cancelWorkflowExecutionFailedEventAttributes"] = args["cancelWorkflowExecutionFailedEventAttributes"],
		["eventTimestamp"] = args["eventTimestamp"],
		["lambdaFunctionCompletedEventAttributes"] = args["lambdaFunctionCompletedEventAttributes"],
		["timerCanceledEventAttributes"] = args["timerCanceledEventAttributes"],
		["startChildWorkflowExecutionFailedEventAttributes"] = args["startChildWorkflowExecutionFailedEventAttributes"],
		["eventId"] = args["eventId"],
		["workflowExecutionContinuedAsNewEventAttributes"] = args["workflowExecutionContinuedAsNewEventAttributes"],
		["childWorkflowExecutionTimedOutEventAttributes"] = args["childWorkflowExecutionTimedOutEventAttributes"],
		["childWorkflowExecutionCanceledEventAttributes"] = args["childWorkflowExecutionCanceledEventAttributes"],
		["activityTaskStartedEventAttributes"] = args["activityTaskStartedEventAttributes"],
		["activityTaskCompletedEventAttributes"] = args["activityTaskCompletedEventAttributes"],
		["activityTaskFailedEventAttributes"] = args["activityTaskFailedEventAttributes"],
		["signalExternalWorkflowExecutionInitiatedEventAttributes"] = args["signalExternalWorkflowExecutionInitiatedEventAttributes"],
		["recordMarkerFailedEventAttributes"] = args["recordMarkerFailedEventAttributes"],
		["externalWorkflowExecutionSignaledEventAttributes"] = args["externalWorkflowExecutionSignaledEventAttributes"],
		["lambdaFunctionTimedOutEventAttributes"] = args["lambdaFunctionTimedOutEventAttributes"],
		["childWorkflowExecutionCompletedEventAttributes"] = args["childWorkflowExecutionCompletedEventAttributes"],
		["startLambdaFunctionFailedEventAttributes"] = args["startLambdaFunctionFailedEventAttributes"],
		["workflowExecutionSignaledEventAttributes"] = args["workflowExecutionSignaledEventAttributes"],
		["scheduleActivityTaskFailedEventAttributes"] = args["scheduleActivityTaskFailedEventAttributes"],
		["childWorkflowExecutionTerminatedEventAttributes"] = args["childWorkflowExecutionTerminatedEventAttributes"],
		["externalWorkflowExecutionCancelRequestedEventAttributes"] = args["externalWorkflowExecutionCancelRequestedEventAttributes"],
		["workflowExecutionCanceledEventAttributes"] = args["workflowExecutionCanceledEventAttributes"],
		["requestCancelExternalWorkflowExecutionFailedEventAttributes"] = args["requestCancelExternalWorkflowExecutionFailedEventAttributes"],
		["workflowExecutionTerminatedEventAttributes"] = args["workflowExecutionTerminatedEventAttributes"],
		["decisionTaskScheduledEventAttributes"] = args["decisionTaskScheduledEventAttributes"],
		["lambdaFunctionFailedEventAttributes"] = args["lambdaFunctionFailedEventAttributes"],
		["activityTaskCanceledEventAttributes"] = args["activityTaskCanceledEventAttributes"],
		["cancelTimerFailedEventAttributes"] = args["cancelTimerFailedEventAttributes"],
		["startTimerFailedEventAttributes"] = args["startTimerFailedEventAttributes"],
		["timerFiredEventAttributes"] = args["timerFiredEventAttributes"],
		["failWorkflowExecutionFailedEventAttributes"] = args["failWorkflowExecutionFailedEventAttributes"],
		["workflowExecutionStartedEventAttributes"] = args["workflowExecutionStartedEventAttributes"],
		["decisionTaskCompletedEventAttributes"] = args["decisionTaskCompletedEventAttributes"],
		["workflowExecutionFailedEventAttributes"] = args["workflowExecutionFailedEventAttributes"],
		["timerStartedEventAttributes"] = args["timerStartedEventAttributes"],
		["requestCancelActivityTaskFailedEventAttributes"] = args["requestCancelActivityTaskFailedEventAttributes"],
		["activityTaskTimedOutEventAttributes"] = args["activityTaskTimedOutEventAttributes"],
		["continueAsNewWorkflowExecutionFailedEventAttributes"] = args["continueAsNewWorkflowExecutionFailedEventAttributes"],
		["signalExternalWorkflowExecutionFailedEventAttributes"] = args["signalExternalWorkflowExecutionFailedEventAttributes"],
		["startChildWorkflowExecutionInitiatedEventAttributes"] = args["startChildWorkflowExecutionInitiatedEventAttributes"],
		["markerRecordedEventAttributes"] = args["markerRecordedEventAttributes"],
		["lambdaFunctionScheduledEventAttributes"] = args["lambdaFunctionScheduledEventAttributes"],
		["scheduleLambdaFunctionFailedEventAttributes"] = args["scheduleLambdaFunctionFailedEventAttributes"],
		["workflowExecutionCompletedEventAttributes"] = args["workflowExecutionCompletedEventAttributes"],
		["decisionTaskStartedEventAttributes"] = args["decisionTaskStartedEventAttributes"],
		["childWorkflowExecutionFailedEventAttributes"] = args["childWorkflowExecutionFailedEventAttributes"],
		["activityTaskCancelRequestedEventAttributes"] = args["activityTaskCancelRequestedEventAttributes"],
		["lambdaFunctionStartedEventAttributes"] = args["lambdaFunctionStartedEventAttributes"],
	}
	asserts.AssertHistoryEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domain [DomainName] <p>The name of the domain containing the workflow executions to count.</p>
-- * executionFilter [WorkflowExecutionFilter] <p>If specified, only workflow executions matching the <code>WorkflowId</code> in the filter are counted.</p> <note> <p> <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>
-- * typeFilter [WorkflowTypeFilter] <p>Specifies the type of the workflow executions to be counted.</p> <note> <p> <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>
-- * startTimeFilter [ExecutionTimeFilter] <p>Specifies the start time criteria that workflow executions must meet in order to be counted.</p>
-- * tagFilter [TagFilter] <p>If specified, only executions that have a tag that matches the filter are counted.</p> <note> <p> <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>
-- Required key: domain
-- Required key: startTimeFilter
-- @return CountOpenWorkflowExecutionsInput structure as a key-value pair table
function M.CountOpenWorkflowExecutionsInput(args)
	assert(args, "You must provide an argument table when creating CountOpenWorkflowExecutionsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domain"] = args["domain"],
		["executionFilter"] = args["executionFilter"],
		["typeFilter"] = args["typeFilter"],
		["startTimeFilter"] = args["startTimeFilter"],
		["tagFilter"] = args["tagFilter"],
	}
	asserts.AssertCountOpenWorkflowExecutionsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>StartChildWorkflowExecutionFailed</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * control [Data] <p>The data attached to the event that the decider can use in subsequent workflow tasks. This data isn't sent to the child workflow execution.</p>
-- * workflowId [WorkflowId] <p>The <code>workflowId</code> of the child workflow execution.</p>
-- * initiatedEventId [EventId] <p>When the <code>cause</code> is <code>WORKFLOW_ALREADY_RUNNING</code>, <code>initiatedEventId</code> is the ID of the <code>StartChildWorkflowExecutionInitiated</code> event that corresponds to the <code>StartChildWorkflowExecution</code> <a>Decision</a> to start the workflow execution. You can use this information to diagnose problems by tracing back the chain of events leading up to this event.</p> <p>When the <code>cause</code> isn't <code>WORKFLOW_ALREADY_RUNNING</code>, <code>initiatedEventId</code> is set to <code>0</code> because the <code>StartChildWorkflowExecutionInitiated</code> event doesn't exist.</p>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>StartChildWorkflowExecution</code> <a>Decision</a> to request this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events.</p>
-- * workflowType [WorkflowType] <p>The workflow type provided in the <code>StartChildWorkflowExecution</code> <a>Decision</a> that failed.</p>
-- * cause [StartChildWorkflowExecutionFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>When <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision fails because it lacks sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html"> Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>
-- Required key: workflowType
-- Required key: cause
-- Required key: workflowId
-- Required key: initiatedEventId
-- Required key: decisionTaskCompletedEventId
-- @return StartChildWorkflowExecutionFailedEventAttributes structure as a key-value pair table
function M.StartChildWorkflowExecutionFailedEventAttributes(args)
	assert(args, "You must provide an argument table when creating StartChildWorkflowExecutionFailedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["control"] = args["control"],
		["workflowId"] = args["workflowId"],
		["initiatedEventId"] = args["initiatedEventId"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
		["workflowType"] = args["workflowType"],
		["cause"] = args["cause"],
	}
	asserts.AssertStartChildWorkflowExecutionFailedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- * domain [DomainName] <p>The name of the domain that contains the workflow executions to list.</p>
-- * typeFilter [WorkflowTypeFilter] <p>If specified, only executions of the type specified in the filter are returned.</p> <note> <p> <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>
-- * tagFilter [TagFilter] <p>If specified, only executions that have the matching tag are listed.</p> <note> <p> <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>
-- * executionFilter [WorkflowExecutionFilter] <p>If specified, only workflow executions matching the workflow ID specified in the filter are returned.</p> <note> <p> <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>
-- * reverseOrder [ReverseOrder] <p>When set to <code>true</code>, returns the results in reverse order. By default the results are returned in descending order of the start time of the executions.</p>
-- * startTimeFilter [ExecutionTimeFilter] <p>Workflow executions are included in the returned results based on whether their start times are within the range specified by this filter.</p>
-- * maximumPageSize [PageSize] <p>The maximum number of results that are returned per call. <code>nextPageToken</code> can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size <i>smaller</i> than the maximum.</p> <p>This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.</p>
-- Required key: domain
-- Required key: startTimeFilter
-- @return ListOpenWorkflowExecutionsInput structure as a key-value pair table
function M.ListOpenWorkflowExecutionsInput(args)
	assert(args, "You must provide an argument table when creating ListOpenWorkflowExecutionsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["domain"] = args["domain"],
		["typeFilter"] = args["typeFilter"],
		["tagFilter"] = args["tagFilter"],
		["executionFilter"] = args["executionFilter"],
		["reverseOrder"] = args["reverseOrder"],
		["startTimeFilter"] = args["startTimeFilter"],
		["maximumPageSize"] = args["maximumPageSize"],
	}
	asserts.AssertListOpenWorkflowExecutionsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The <code>StartWorkflowExecution</code> API action was called without the required parameters set.</p> <p>Some workflow execution parameters, such as the decision <code>taskList</code>, must be set to start the execution. However, these parameters might have been set as defaults when the workflow type was registered. In this case, you can omit these parameters from the <code>StartWorkflowExecution</code> call and Amazon SWF uses the values defined in the workflow type.</p> <note> <p>If these parameters aren't set and no default parameters were defined in the workflow type, this error is displayed.</p> </note>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return DefaultUndefinedFault structure as a key-value pair table
function M.DefaultUndefinedFault(args)
	assert(args, "You must provide an argument table when creating DefaultUndefinedFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertDefaultUndefinedFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.WorkflowExecution = { ["workflowId"] = true, ["runId"] = true, nil }

function asserts.AssertWorkflowExecution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecution to be of type 'table'")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["runId"], "Expected key runId to exist in table")
	if struct["workflowId"] then asserts.AssertWorkflowId(struct["workflowId"]) end
	if struct["runId"] then asserts.AssertWorkflowRunId(struct["runId"]) end
	for k,_ in pairs(struct) do
		assert(keys.WorkflowExecution[k], "WorkflowExecution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecution
-- <p>Represents a workflow execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * workflowId [WorkflowId] <p>The user defined identifier associated with the workflow execution.</p>
-- * runId [WorkflowRunId] <p>A system-generated unique identifier for the workflow execution.</p>
-- Required key: workflowId
-- Required key: runId
-- @return WorkflowExecution structure as a key-value pair table
function M.WorkflowExecution(args)
	assert(args, "You must provide an argument table when creating WorkflowExecution")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["workflowId"] = args["workflowId"],
		["runId"] = args["runId"],
	}
	asserts.AssertWorkflowExecution(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- * executionInfos [WorkflowExecutionInfoList] <p>The list of workflow information structures.</p>
-- Required key: executionInfos
-- @return WorkflowExecutionInfos structure as a key-value pair table
function M.WorkflowExecutionInfos(args)
	assert(args, "You must provide an argument table when creating WorkflowExecutionInfos")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["executionInfos"] = args["executionInfos"],
	}
	asserts.AssertWorkflowExecutionInfos(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domain [DomainName] <p>The name of the domain containing the workflow execution.</p>
-- * execution [WorkflowExecution] <p>The workflow execution to describe.</p>
-- Required key: domain
-- Required key: execution
-- @return DescribeWorkflowExecutionInput structure as a key-value pair table
function M.DescribeWorkflowExecutionInput(args)
	assert(args, "You must provide an argument table when creating DescribeWorkflowExecutionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domain"] = args["domain"],
		["execution"] = args["execution"],
	}
	asserts.AssertDescribeWorkflowExecutionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RequestCancelExternalWorkflowExecutionDecisionAttributes = { ["control"] = true, ["workflowId"] = true, ["runId"] = true, nil }

function asserts.AssertRequestCancelExternalWorkflowExecutionDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestCancelExternalWorkflowExecutionDecisionAttributes to be of type 'table'")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	if struct["control"] then asserts.AssertData(struct["control"]) end
	if struct["workflowId"] then asserts.AssertWorkflowId(struct["workflowId"]) end
	if struct["runId"] then asserts.AssertWorkflowRunIdOptional(struct["runId"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestCancelExternalWorkflowExecutionDecisionAttributes[k], "RequestCancelExternalWorkflowExecutionDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestCancelExternalWorkflowExecutionDecisionAttributes
-- <p>Provides the details of the <code>RequestCancelExternalWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * control [Data] <p>The data attached to the event that can be used by the decider in subsequent workflow tasks.</p>
-- * workflowId [WorkflowId] <p> The <code>workflowId</code> of the external workflow execution to cancel.</p>
-- * runId [WorkflowRunIdOptional] <p>The <code>runId</code> of the external workflow execution to cancel.</p>
-- Required key: workflowId
-- @return RequestCancelExternalWorkflowExecutionDecisionAttributes structure as a key-value pair table
function M.RequestCancelExternalWorkflowExecutionDecisionAttributes(args)
	assert(args, "You must provide an argument table when creating RequestCancelExternalWorkflowExecutionDecisionAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["control"] = args["control"],
		["workflowId"] = args["workflowId"],
		["runId"] = args["runId"],
	}
	asserts.AssertRequestCancelExternalWorkflowExecutionDecisionAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- * typeInfos [WorkflowTypeInfoList] <p>The list of workflow type information.</p>
-- Required key: typeInfos
-- @return WorkflowTypeInfos structure as a key-value pair table
function M.WorkflowTypeInfos(args)
	assert(args, "You must provide an argument table when creating WorkflowTypeInfos")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["typeInfos"] = args["typeInfos"],
	}
	asserts.AssertWorkflowTypeInfos(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [DomainName] <p>Name of the domain to register. The name must be unique in the region that the domain is registered in.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>
-- * workflowExecutionRetentionPeriodInDays [DurationInDays] <p>The duration (in days) that records and histories of workflow executions on the domain should be kept by the service. After the retention period, the workflow execution isn't available in the results of visibility calls.</p> <p>If you pass the value <code>NONE</code> or <code>0</code> (zero), then the workflow execution history isn't retained. As soon as the workflow execution completes, the execution record and its history are deleted.</p> <p>The maximum workflow execution retention period is 90 days. For more information about Amazon SWF service limits, see: <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-limits.html">Amazon SWF Service Limits</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- * description [Description] <p>A text description of the domain.</p>
-- Required key: name
-- Required key: workflowExecutionRetentionPeriodInDays
-- @return RegisterDomainInput structure as a key-value pair table
function M.RegisterDomainInput(args)
	assert(args, "You must provide an argument table when creating RegisterDomainInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["workflowExecutionRetentionPeriodInDays"] = args["workflowExecutionRetentionPeriodInDays"],
		["description"] = args["description"],
	}
	asserts.AssertRegisterDomainInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>RequestCancelActivityTaskFailed</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * activityId [ActivityId] <p>The activityId provided in the <code>RequestCancelActivityTask</code> decision that failed.</p>
-- * cause [RequestCancelActivityTaskFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>RequestCancelActivityTask</code> decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required key: activityId
-- Required key: cause
-- Required key: decisionTaskCompletedEventId
-- @return RequestCancelActivityTaskFailedEventAttributes structure as a key-value pair table
function M.RequestCancelActivityTaskFailedEventAttributes(args)
	assert(args, "You must provide an argument table when creating RequestCancelActivityTaskFailedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["activityId"] = args["activityId"],
		["cause"] = args["cause"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
	}
	asserts.AssertRequestCancelActivityTaskFailedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	if struct["continuedExecutionRunId"] then asserts.AssertWorkflowRunIdOptional(struct["continuedExecutionRunId"]) end
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * taskList [TaskList] <p>The name of the task list for scheduling the decision tasks for this workflow execution.</p>
-- * parentWorkflowExecution [WorkflowExecution] <p>The source workflow execution that started this workflow execution. The member isn't set if the workflow execution was not started by a workflow.</p>
-- * parentInitiatedEventId [EventId] <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> <a>Decision</a> to start this workflow execution. The source event with this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * taskStartToCloseTimeout [DurationInSecondsOptional] <p>The maximum duration of decision tasks for this workflow type.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
-- * taskPriority [TaskPriority] <p>The priority of the decision tasks in the workflow execution.</p>
-- * lambdaRole [Arn] <p>The IAM role attached to the workflow execution.</p>
-- * continuedExecutionRunId [WorkflowRunIdOptional] <p>If this workflow execution was started due to a <code>ContinueAsNewWorkflowExecution</code> decision, then it contains the <code>runId</code> of the previous workflow execution that was closed and continued as this execution.</p>
-- * childPolicy [ChildPolicy] <p>The policy to use for the child workflow executions if this workflow execution is terminated, by calling the <a>TerminateWorkflowExecution</a> action explicitly or due to an expired timeout.</p> <p>The supported child policies are:</p> <ul> <li> <p> <code>TERMINATE</code> – The child executions are terminated.</p> </li> <li> <p> <code>REQUEST_CANCEL</code> – A request to cancel is attempted for each child execution by recording a <code>WorkflowExecutionCancelRequested</code> event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.</p> </li> <li> <p> <code>ABANDON</code> – No action is taken. The child executions continue to run.</p> </li> </ul>
-- * executionStartToCloseTimeout [DurationInSecondsOptional] <p>The maximum duration for this workflow execution.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
-- * input [Data] <p>The input provided to the workflow execution.</p>
-- * workflowType [WorkflowType] <p>The workflow type of this execution.</p>
-- * tagList [TagList] <p>The list of tags associated with this workflow execution. An execution can have up to 5 tags.</p>
-- Required key: childPolicy
-- Required key: taskList
-- Required key: workflowType
-- @return WorkflowExecutionStartedEventAttributes structure as a key-value pair table
function M.WorkflowExecutionStartedEventAttributes(args)
	assert(args, "You must provide an argument table when creating WorkflowExecutionStartedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["taskList"] = args["taskList"],
		["parentWorkflowExecution"] = args["parentWorkflowExecution"],
		["parentInitiatedEventId"] = args["parentInitiatedEventId"],
		["taskStartToCloseTimeout"] = args["taskStartToCloseTimeout"],
		["taskPriority"] = args["taskPriority"],
		["lambdaRole"] = args["lambdaRole"],
		["continuedExecutionRunId"] = args["continuedExecutionRunId"],
		["childPolicy"] = args["childPolicy"],
		["executionStartToCloseTimeout"] = args["executionStartToCloseTimeout"],
		["input"] = args["input"],
		["workflowType"] = args["workflowType"],
		["tagList"] = args["tagList"],
	}
	asserts.AssertWorkflowExecutionStartedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * version [VersionOptional] <p>Version of the workflow type.</p>
-- * name [Name] <p> Name of the workflow type.</p>
-- Required key: name
-- @return WorkflowTypeFilter structure as a key-value pair table
function M.WorkflowTypeFilter(args)
	assert(args, "You must provide an argument table when creating WorkflowTypeFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["version"] = args["version"],
		["name"] = args["name"],
	}
	asserts.AssertWorkflowTypeFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domain [DomainName] <p>The name of the domain that contains the task list.</p>
-- * taskList [TaskList] <p>The name of the task list.</p>
-- Required key: domain
-- Required key: taskList
-- @return CountPendingDecisionTasksInput structure as a key-value pair table
function M.CountPendingDecisionTasksInput(args)
	assert(args, "You must provide an argument table when creating CountPendingDecisionTasksInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domain"] = args["domain"],
		["taskList"] = args["taskList"],
	}
	asserts.AssertCountPendingDecisionTasksInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>CancelWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * details [Data] <p> Details of the cancellation.</p>
-- @return CancelWorkflowExecutionDecisionAttributes structure as a key-value pair table
function M.CancelWorkflowExecutionDecisionAttributes(args)
	assert(args, "You must provide an argument table when creating CancelWorkflowExecutionDecisionAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["details"] = args["details"],
	}
	asserts.AssertCancelWorkflowExecutionDecisionAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- * typeInfos [ActivityTypeInfoList] <p>List of activity type information.</p>
-- Required key: typeInfos
-- @return ActivityTypeInfos structure as a key-value pair table
function M.ActivityTypeInfos(args)
	assert(args, "You must provide an argument table when creating ActivityTypeInfos")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["typeInfos"] = args["typeInfos"],
	}
	asserts.AssertActivityTypeInfos(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cancelRequested [Canceled] <p>Set to <code>true</code> if cancellation of the task is requested.</p>
-- Required key: cancelRequested
-- @return ActivityTaskStatus structure as a key-value pair table
function M.ActivityTaskStatus(args)
	assert(args, "You must provide an argument table when creating ActivityTaskStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cancelRequested"] = args["cancelRequested"],
	}
	asserts.AssertActivityTaskStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>CancelTimerFailed</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * timerId [TimerId] <p>The timerId provided in the <code>CancelTimer</code> decision that failed.</p>
-- * cause [CancelTimerFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CancelTimer</code> decision to cancel this timer. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required key: timerId
-- Required key: cause
-- Required key: decisionTaskCompletedEventId
-- @return CancelTimerFailedEventAttributes structure as a key-value pair table
function M.CancelTimerFailedEventAttributes(args)
	assert(args, "You must provide an argument table when creating CancelTimerFailedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["timerId"] = args["timerId"],
		["cause"] = args["cause"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
	}
	asserts.AssertCancelTimerFailedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>DecisionTaskTimedOut</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startedEventId [EventId] <p>The ID of the <code>DecisionTaskStarted</code> event recorded when this decision task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * timeoutType [DecisionTaskTimeoutType] <p>The type of timeout that expired before the decision task could be completed.</p>
-- * scheduledEventId [EventId] <p>The ID of the <code>DecisionTaskScheduled</code> event that was recorded when this decision task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required key: timeoutType
-- Required key: scheduledEventId
-- Required key: startedEventId
-- @return DecisionTaskTimedOutEventAttributes structure as a key-value pair table
function M.DecisionTaskTimedOutEventAttributes(args)
	assert(args, "You must provide an argument table when creating DecisionTaskTimedOutEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["startedEventId"] = args["startedEventId"],
		["timeoutType"] = args["timeoutType"],
		["scheduledEventId"] = args["scheduledEventId"],
	}
	asserts.AssertDecisionTaskTimedOutEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p> <note> <p>The <code>nextPageToken</code> returned by this action cannot be used with <a>GetWorkflowExecutionHistory</a> to get the next page. You must call <a>PollForDecisionTask</a> again (with the <code>nextPageToken</code>) to retrieve the next page of history records. Calling <a>PollForDecisionTask</a> with a <code>nextPageToken</code> doesn't return a new decision task.</p> </note>
-- * domain [DomainName] <p>The name of the domain containing the task lists to poll.</p>
-- * taskList [TaskList] <p>Specifies the task list to poll for decision tasks.</p> <p>The specified string must not start or end with whitespace. It must not contain a <code>:</code> (colon), <code>/</code> (slash), <code>|</code> (vertical bar), or any control characters (<code>\u0000-\u001f</code> | <code>\u007f-\u009f</code>). Also, it must not contain the literal string <code>arn</code>.</p>
-- * reverseOrder [ReverseOrder] <p>When set to <code>true</code>, returns the events in reverse order. By default the results are returned in ascending order of the <code>eventTimestamp</code> of the events.</p>
-- * maximumPageSize [PageSize] <p>The maximum number of results that are returned per call. <code>nextPageToken</code> can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size <i>smaller</i> than the maximum.</p> <p>This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.</p>
-- * identity [Identity] <p>Identity of the decider making the request, which is recorded in the DecisionTaskStarted event in the workflow history. This enables diagnostic tracing when problems arise. The form of this identity is user defined.</p>
-- Required key: domain
-- Required key: taskList
-- @return PollForDecisionTaskInput structure as a key-value pair table
function M.PollForDecisionTaskInput(args)
	assert(args, "You must provide an argument table when creating PollForDecisionTaskInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["domain"] = args["domain"],
		["taskList"] = args["taskList"],
		["reverseOrder"] = args["reverseOrder"],
		["maximumPageSize"] = args["maximumPageSize"],
		["identity"] = args["identity"],
	}
	asserts.AssertPollForDecisionTaskInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [CloseStatus] <p> The close status that must match the close status of an execution for it to meet the criteria of this filter.</p>
-- Required key: status
-- @return CloseStatusFilter structure as a key-value pair table
function M.CloseStatusFilter(args)
	assert(args, "You must provide an argument table when creating CloseStatusFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
	}
	asserts.AssertCloseStatusFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A description that may help with diagnosing the cause of the fault.</p>
-- @return UnknownResourceFault structure as a key-value pair table
function M.UnknownResourceFault(args)
	assert(args, "You must provide an argument table when creating UnknownResourceFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertUnknownResourceFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>TimerFired</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startedEventId [EventId] <p>The ID of the <code>TimerStarted</code> event that was recorded when this timer was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * timerId [TimerId] <p>The unique ID of the timer that fired.</p>
-- Required key: timerId
-- Required key: startedEventId
-- @return TimerFiredEventAttributes structure as a key-value pair table
function M.TimerFiredEventAttributes(args)
	assert(args, "You must provide an argument table when creating TimerFiredEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["startedEventId"] = args["startedEventId"],
		["timerId"] = args["timerId"],
	}
	asserts.AssertTimerFiredEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>TimerStarted</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * control [Data] <p>Data attached to the event that can be used by the decider in subsequent workflow tasks.</p>
-- * timerId [TimerId] <p>The unique ID of the timer that was started.</p>
-- * startToFireTimeout [DurationInSeconds] <p>The duration of time after which the timer fires.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>.</p>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>StartTimer</code> decision for this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required key: timerId
-- Required key: startToFireTimeout
-- Required key: decisionTaskCompletedEventId
-- @return TimerStartedEventAttributes structure as a key-value pair table
function M.TimerStartedEventAttributes(args)
	assert(args, "You must provide an argument table when creating TimerStartedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["control"] = args["control"],
		["timerId"] = args["timerId"],
		["startToFireTimeout"] = args["startToFireTimeout"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
	}
	asserts.AssertTimerStartedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [Name] <p>The name of the task list.</p>
-- Required key: name
-- @return TaskList structure as a key-value pair table
function M.TaskList(args)
	assert(args, "You must provide an argument table when creating TaskList")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
	}
	asserts.AssertTaskList(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>WorkflowExecutionFailed</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * reason [FailureReason] <p>The descriptive reason provided for the failure.</p>
-- * details [Data] <p>The details of the failure.</p>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>FailWorkflowExecution</code> decision to fail this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required key: decisionTaskCompletedEventId
-- @return WorkflowExecutionFailedEventAttributes structure as a key-value pair table
function M.WorkflowExecutionFailedEventAttributes(args)
	assert(args, "You must provide an argument table when creating WorkflowExecutionFailedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["reason"] = args["reason"],
		["details"] = args["details"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
	}
	asserts.AssertWorkflowExecutionFailedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>ScheduleLambdaFunctionFailed</code> event. It isn't set for other event types.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>LambdaFunctionCompleted</code> event corresponding to the decision that resulted in scheduling this Lambda task. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
-- * cause [ScheduleLambdaFunctionFailedCause] <p>The cause of the failure. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>
-- * id [FunctionId] <p>The ID provided in the <code>ScheduleLambdaFunction</code> decision that failed. </p>
-- * name [FunctionName] <p>The name of the Lambda function.</p>
-- Required key: id
-- Required key: name
-- Required key: cause
-- Required key: decisionTaskCompletedEventId
-- @return ScheduleLambdaFunctionFailedEventAttributes structure as a key-value pair table
function M.ScheduleLambdaFunctionFailedEventAttributes(args)
	assert(args, "You must provide an argument table when creating ScheduleLambdaFunctionFailedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
		["cause"] = args["cause"],
		["id"] = args["id"],
		["name"] = args["name"],
	}
	asserts.AssertScheduleLambdaFunctionFailedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domain [DomainName] <p>The name of the domain in which this workflow type is registered.</p>
-- * workflowType [WorkflowType] <p>The workflow type to describe.</p>
-- Required key: domain
-- Required key: workflowType
-- @return DescribeWorkflowTypeInput structure as a key-value pair table
function M.DescribeWorkflowTypeInput(args)
	assert(args, "You must provide an argument table when creating DescribeWorkflowTypeInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domain"] = args["domain"],
		["workflowType"] = args["workflowType"],
	}
	asserts.AssertDescribeWorkflowTypeInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- * domain [DomainName] <p>The name of the domain in which the workflow types have been registered.</p>
-- * name [Name] <p>If specified, lists the workflow type with this name.</p>
-- * registrationStatus [RegistrationStatus] <p>Specifies the registration status of the workflow types to list.</p>
-- * reverseOrder [ReverseOrder] <p>When set to <code>true</code>, returns the results in reverse order. By default the results are returned in ascending alphabetical order of the <code>name</code> of the workflow types.</p>
-- * maximumPageSize [PageSize] <p>The maximum number of results that are returned per call. <code>nextPageToken</code> can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size <i>smaller</i> than the maximum.</p> <p>This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.</p>
-- Required key: domain
-- Required key: registrationStatus
-- @return ListWorkflowTypesInput structure as a key-value pair table
function M.ListWorkflowTypesInput(args)
	assert(args, "You must provide an argument table when creating ListWorkflowTypesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["domain"] = args["domain"],
		["name"] = args["name"],
		["registrationStatus"] = args["registrationStatus"],
		["reverseOrder"] = args["reverseOrder"],
		["maximumPageSize"] = args["maximumPageSize"],
	}
	asserts.AssertListWorkflowTypesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>LambdaFunctionStarted</code> event. It isn't set for other event types.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * scheduledEventId [EventId] <p>The ID of the <code>LambdaFunctionScheduled</code> event that was recorded when this activity task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
-- Required key: scheduledEventId
-- @return LambdaFunctionStartedEventAttributes structure as a key-value pair table
function M.LambdaFunctionStartedEventAttributes(args)
	assert(args, "You must provide an argument table when creating LambdaFunctionStartedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["scheduledEventId"] = args["scheduledEventId"],
	}
	asserts.AssertLambdaFunctionStartedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Used to filter the workflow executions in visibility APIs by various time-based rules. Each parameter, if specified, defines a rule that must be satisfied by each returned query result. The parameter values are in the <a href="https://en.wikipedia.org/wiki/Unix_time">Unix Time format</a>. For example: <code>"oldestDate": 1325376070.</code> </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * oldestDate [Timestamp] <p>Specifies the oldest start or close date and time to return.</p>
-- * latestDate [Timestamp] <p>Specifies the latest start or close date and time to return.</p>
-- Required key: oldestDate
-- @return ExecutionTimeFilter structure as a key-value pair table
function M.ExecutionTimeFilter(args)
	assert(args, "You must provide an argument table when creating ExecutionTimeFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["oldestDate"] = args["oldestDate"],
		["latestDate"] = args["latestDate"],
	}
	asserts.AssertExecutionTimeFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A description that may help with diagnosing the cause of the fault.</p>
-- @return LimitExceededFault structure as a key-value pair table
function M.LimitExceededFault(args)
	assert(args, "You must provide an argument table when creating LimitExceededFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertLimitExceededFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	if struct["runId"] then asserts.AssertWorkflowRunIdOptional(struct["runId"]) end
	if struct["signalName"] then asserts.AssertSignalName(struct["signalName"]) end
	for k,_ in pairs(struct) do
		assert(keys.SignalExternalWorkflowExecutionDecisionAttributes[k], "SignalExternalWorkflowExecutionDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SignalExternalWorkflowExecutionDecisionAttributes
-- <p>Provides the details of the <code>SignalExternalWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * control [Data] <p>The data attached to the event that can be used by the decider in subsequent decision tasks.</p>
-- * input [Data] <p> The input data to be provided with the signal. The target workflow execution uses the signal name and input data to process the signal.</p>
-- * workflowId [WorkflowId] <p> The <code>workflowId</code> of the workflow execution to be signaled.</p>
-- * runId [WorkflowRunIdOptional] <p>The <code>runId</code> of the workflow execution to be signaled.</p>
-- * signalName [SignalName] <p> The name of the signal.The target workflow execution uses the signal name and input to process the signal.</p>
-- Required key: workflowId
-- Required key: signalName
-- @return SignalExternalWorkflowExecutionDecisionAttributes structure as a key-value pair table
function M.SignalExternalWorkflowExecutionDecisionAttributes(args)
	assert(args, "You must provide an argument table when creating SignalExternalWorkflowExecutionDecisionAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["control"] = args["control"],
		["input"] = args["input"],
		["workflowId"] = args["workflowId"],
		["runId"] = args["runId"],
		["signalName"] = args["signalName"],
	}
	asserts.AssertSignalExternalWorkflowExecutionDecisionAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Returned when the caller doesn't have sufficient permissions to invoke the action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A description that may help with diagnosing the cause of the fault.</p>
-- @return OperationNotPermittedFault structure as a key-value pair table
function M.OperationNotPermittedFault(args)
	assert(args, "You must provide an argument table when creating OperationNotPermittedFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertOperationNotPermittedFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>ScheduleActivityTaskFailed</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * activityId [ActivityId] <p>The activityId provided in the <code>ScheduleActivityTask</code> decision that failed.</p>
-- * activityType [ActivityType] <p>The activity type provided in the <code>ScheduleActivityTask</code> decision that failed.</p>
-- * cause [ScheduleActivityTaskFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision that resulted in the scheduling of this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required key: activityType
-- Required key: activityId
-- Required key: cause
-- Required key: decisionTaskCompletedEventId
-- @return ScheduleActivityTaskFailedEventAttributes structure as a key-value pair table
function M.ScheduleActivityTaskFailedEventAttributes(args)
	assert(args, "You must provide an argument table when creating ScheduleActivityTaskFailedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["activityId"] = args["activityId"],
		["activityType"] = args["activityType"],
		["cause"] = args["cause"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
	}
	asserts.AssertScheduleActivityTaskFailedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>ActivityTaskTimedOut</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startedEventId [EventId] <p>The ID of the <code>ActivityTaskStarted</code> event recorded when this activity task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * timeoutType [ActivityTaskTimeoutType] <p>The type of the timeout that caused this event.</p>
-- * scheduledEventId [EventId] <p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * details [LimitedData] <p>Contains the content of the <code>details</code> parameter for the last call made by the activity to <code>RecordActivityTaskHeartbeat</code>.</p>
-- Required key: timeoutType
-- Required key: scheduledEventId
-- Required key: startedEventId
-- @return ActivityTaskTimedOutEventAttributes structure as a key-value pair table
function M.ActivityTaskTimedOutEventAttributes(args)
	assert(args, "You must provide an argument table when creating ActivityTaskTimedOutEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["startedEventId"] = args["startedEventId"],
		["timeoutType"] = args["timeoutType"],
		["scheduledEventId"] = args["scheduledEventId"],
		["details"] = args["details"],
	}
	asserts.AssertActivityTaskTimedOutEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>ContinueAsNewWorkflowExecutionFailed</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cause [ContinueAsNewWorkflowExecutionFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>ContinueAsNewWorkflowExecution</code> decision that started this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required key: cause
-- Required key: decisionTaskCompletedEventId
-- @return ContinueAsNewWorkflowExecutionFailedEventAttributes structure as a key-value pair table
function M.ContinueAsNewWorkflowExecutionFailedEventAttributes(args)
	assert(args, "You must provide an argument table when creating ContinueAsNewWorkflowExecutionFailedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cause"] = args["cause"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
	}
	asserts.AssertContinueAsNewWorkflowExecutionFailedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * details [LimitedData] <p>If specified, contains details about the progress of the task.</p>
-- * taskToken [TaskToken] <p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p> <important> <p> <code>taskToken</code> is generated by the service and should be treated as an opaque value. If the task is passed to another process, its <code>taskToken</code> must also be passed. This enables it to provide its progress and respond with results. </p> </important>
-- Required key: taskToken
-- @return RecordActivityTaskHeartbeatInput structure as a key-value pair table
function M.RecordActivityTaskHeartbeatInput(args)
	assert(args, "You must provide an argument table when creating RecordActivityTaskHeartbeatInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["details"] = args["details"],
		["taskToken"] = args["taskToken"],
	}
	asserts.AssertRecordActivityTaskHeartbeatInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A description that may help with diagnosing the cause of the fault.</p>
-- @return TypeDeprecatedFault structure as a key-value pair table
function M.TypeDeprecatedFault(args)
	assert(args, "You must provide an argument table when creating TypeDeprecatedFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertTypeDeprecatedFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * latestExecutionContext [Data] <p>The latest executionContext provided by the decider for this workflow execution. A decider can provide an executionContext (a free-form string) when closing a decision task using <a>RespondDecisionTaskCompleted</a>.</p>
-- * executionConfiguration [WorkflowExecutionConfiguration] <p>The configuration settings for this workflow execution including timeout values, tasklist etc.</p>
-- * latestActivityTaskTimestamp [Timestamp] <p>The time when the last activity task was scheduled for this workflow execution. You can use this information to determine if the workflow has not made progress for an unusually long period of time and might require a corrective action.</p>
-- * openCounts [WorkflowExecutionOpenCounts] <p>The number of tasks for this workflow execution. This includes open and closed tasks of all types.</p>
-- * executionInfo [WorkflowExecutionInfo] <p>Information about the workflow execution.</p>
-- Required key: executionInfo
-- Required key: executionConfiguration
-- Required key: openCounts
-- @return WorkflowExecutionDetail structure as a key-value pair table
function M.WorkflowExecutionDetail(args)
	assert(args, "You must provide an argument table when creating WorkflowExecutionDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["latestExecutionContext"] = args["latestExecutionContext"],
		["executionConfiguration"] = args["executionConfiguration"],
		["latestActivityTaskTimestamp"] = args["latestActivityTaskTimestamp"],
		["openCounts"] = args["openCounts"],
		["executionInfo"] = args["executionInfo"],
	}
	asserts.AssertWorkflowExecutionDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>WorkflowExecutionSignaled</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * input [Data] <p>The inputs provided with the signal. The decider can use the signal name and inputs to determine how to process the signal.</p>
-- * externalInitiatedEventId [EventId] <p>The ID of the <code>SignalExternalWorkflowExecutionInitiated</code> event corresponding to the <code>SignalExternalWorkflow</code> decision to signal this workflow execution.The source event with this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event. This field is set only if the signal was initiated by another workflow execution.</p>
-- * externalWorkflowExecution [WorkflowExecution] <p>The workflow execution that sent the signal. This is set only of the signal was sent by another workflow execution.</p>
-- * signalName [SignalName] <p>The name of the signal received. The decider can use the signal name and inputs to determine how to the process the signal.</p>
-- Required key: signalName
-- @return WorkflowExecutionSignaledEventAttributes structure as a key-value pair table
function M.WorkflowExecutionSignaledEventAttributes(args)
	assert(args, "You must provide an argument table when creating WorkflowExecutionSignaledEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["input"] = args["input"],
		["externalInitiatedEventId"] = args["externalInitiatedEventId"],
		["externalWorkflowExecution"] = args["externalWorkflowExecution"],
		["signalName"] = args["signalName"],
	}
	asserts.AssertWorkflowExecutionSignaledEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- * events [HistoryEventList] <p>The list of history events.</p>
-- Required key: events
-- @return History structure as a key-value pair table
function M.History(args)
	assert(args, "You must provide an argument table when creating History")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["events"] = args["events"],
	}
	asserts.AssertHistory(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>CancelTimer</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * timerId [TimerId] <p> The unique ID of the timer to cancel.</p>
-- Required key: timerId
-- @return CancelTimerDecisionAttributes structure as a key-value pair table
function M.CancelTimerDecisionAttributes(args)
	assert(args, "You must provide an argument table when creating CancelTimerDecisionAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["timerId"] = args["timerId"],
	}
	asserts.AssertCancelTimerDecisionAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Input data for a TaskCompleted response to a decision task.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * executionContext [Data] <p>User defined context to add to workflow execution.</p>
-- * decisions [DecisionList] <p>The list of decisions (possibly empty) made by the decider while processing this decision task. See the docs for the <a>Decision</a> structure for details.</p>
-- * taskToken [TaskToken] <p>The <code>taskToken</code> from the <a>DecisionTask</a>.</p> <important> <p> <code>taskToken</code> is generated by the service and should be treated as an opaque value. If the task is passed to another process, its <code>taskToken</code> must also be passed. This enables it to provide its progress and respond with results.</p> </important>
-- Required key: taskToken
-- @return RespondDecisionTaskCompletedInput structure as a key-value pair table
function M.RespondDecisionTaskCompletedInput(args)
	assert(args, "You must provide an argument table when creating RespondDecisionTaskCompletedInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["executionContext"] = args["executionContext"],
		["decisions"] = args["decisions"],
		["taskToken"] = args["taskToken"],
	}
	asserts.AssertRespondDecisionTaskCompletedInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- * domain [DomainName] <p>The name of the domain in which the activity types have been registered.</p>
-- * name [Name] <p>If specified, only lists the activity types that have this name.</p>
-- * registrationStatus [RegistrationStatus] <p>Specifies the registration status of the activity types to list.</p>
-- * reverseOrder [ReverseOrder] <p>When set to <code>true</code>, returns the results in reverse order. By default, the results are returned in ascending alphabetical order by <code>name</code> of the activity types.</p>
-- * maximumPageSize [PageSize] <p>The maximum number of results that are returned per call. <code>nextPageToken</code> can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size <i>smaller</i> than the maximum.</p> <p>This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.</p>
-- Required key: domain
-- Required key: registrationStatus
-- @return ListActivityTypesInput structure as a key-value pair table
function M.ListActivityTypesInput(args)
	assert(args, "You must provide an argument table when creating ListActivityTypesInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["domain"] = args["domain"],
		["name"] = args["name"],
		["registrationStatus"] = args["registrationStatus"],
		["reverseOrder"] = args["reverseOrder"],
		["maximumPageSize"] = args["maximumPageSize"],
	}
	asserts.AssertListActivityTypesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Returned if the specified domain already exists. You get this fault even if the existing domain is in deprecated status.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A description that may help with diagnosing the cause of the fault.</p>
-- @return DomainAlreadyExistsFault structure as a key-value pair table
function M.DomainAlreadyExistsFault(args)
	assert(args, "You must provide an argument table when creating DomainAlreadyExistsFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertDomainAlreadyExistsFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startToCloseTimeout [DurationInSecondsOptional] <p>The maximum duration for this decision task. The task is considered timed out if it doesn't completed within this duration.</p> <p>The duration is specified in seconds, an integer greater than or equal to <code>0</code>. You can use <code>NONE</code> to specify unlimited duration.</p>
-- * taskList [TaskList] <p>The name of the task list in which the decision task was scheduled.</p>
-- * taskPriority [TaskPriority] <p> A task priority that, if set, specifies the priority for this decision task. Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- Required key: taskList
-- @return DecisionTaskScheduledEventAttributes structure as a key-value pair table
function M.DecisionTaskScheduledEventAttributes(args)
	assert(args, "You must provide an argument table when creating DecisionTaskScheduledEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["startToCloseTimeout"] = args["startToCloseTimeout"],
		["taskList"] = args["taskList"],
		["taskPriority"] = args["taskPriority"],
	}
	asserts.AssertDecisionTaskScheduledEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>LambdaFunctionFailed</code> event. It isn't set for other event types.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startedEventId [EventId] <p>The ID of the <code>LambdaFunctionStarted</code> event recorded when this activity task started. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
-- * reason [FailureReason] <p>The reason provided for the failure.</p>
-- * scheduledEventId [EventId] <p>The ID of the <code>LambdaFunctionScheduled</code> event that was recorded when this activity task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
-- * details [Data] <p>The details of the failure.</p>
-- Required key: scheduledEventId
-- Required key: startedEventId
-- @return LambdaFunctionFailedEventAttributes structure as a key-value pair table
function M.LambdaFunctionFailedEventAttributes(args)
	assert(args, "You must provide an argument table when creating LambdaFunctionFailedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["startedEventId"] = args["startedEventId"],
		["reason"] = args["reason"],
		["scheduledEventId"] = args["scheduledEventId"],
		["details"] = args["details"],
	}
	asserts.AssertLambdaFunctionFailedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>ActivityTaskCanceled</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startedEventId [EventId] <p>The ID of the <code>ActivityTaskStarted</code> event recorded when this activity task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * latestCancelRequestedEventId [EventId] <p>If set, contains the ID of the last <code>ActivityTaskCancelRequested</code> event recorded for this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * scheduledEventId [EventId] <p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * details [Data] <p>Details of the cancellation.</p>
-- Required key: scheduledEventId
-- Required key: startedEventId
-- @return ActivityTaskCanceledEventAttributes structure as a key-value pair table
function M.ActivityTaskCanceledEventAttributes(args)
	assert(args, "You must provide an argument table when creating ActivityTaskCanceledEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["startedEventId"] = args["startedEventId"],
		["latestCancelRequestedEventId"] = args["latestCancelRequestedEventId"],
		["scheduledEventId"] = args["scheduledEventId"],
		["details"] = args["details"],
	}
	asserts.AssertActivityTaskCanceledEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domain [DomainName] <p>The name of the domain in which the activity type is registered.</p>
-- * activityType [ActivityType] <p>The activity type to get information about. Activity types are identified by the <code>name</code> and <code>version</code> that were supplied when the activity was registered.</p>
-- Required key: domain
-- Required key: activityType
-- @return DescribeActivityTypeInput structure as a key-value pair table
function M.DescribeActivityTypeInput(args)
	assert(args, "You must provide an argument table when creating DescribeActivityTypeInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domain"] = args["domain"],
		["activityType"] = args["activityType"],
	}
	asserts.AssertDescribeActivityTypeInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
	if struct["runId"] then asserts.AssertWorkflowRunIdOptional(struct["runId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SignalWorkflowExecutionInput[k], "SignalWorkflowExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SignalWorkflowExecutionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * input [Data] <p>Data to attach to the <code>WorkflowExecutionSignaled</code> event in the target workflow execution's history.</p>
-- * domain [DomainName] <p>The name of the domain containing the workflow execution to signal.</p>
-- * signalName [SignalName] <p>The name of the signal. This name must be meaningful to the target workflow.</p>
-- * workflowId [WorkflowId] <p>The workflowId of the workflow execution to signal.</p>
-- * runId [WorkflowRunIdOptional] <p>The runId of the workflow execution to signal.</p>
-- Required key: domain
-- Required key: workflowId
-- Required key: signalName
-- @return SignalWorkflowExecutionInput structure as a key-value pair table
function M.SignalWorkflowExecutionInput(args)
	assert(args, "You must provide an argument table when creating SignalWorkflowExecutionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["input"] = args["input"],
		["domain"] = args["domain"],
		["signalName"] = args["signalName"],
		["workflowId"] = args["workflowId"],
		["runId"] = args["runId"],
	}
	asserts.AssertSignalWorkflowExecutionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * configuration [WorkflowTypeConfiguration] <p>Configuration settings of the workflow type registered through <a>RegisterWorkflowType</a> </p>
-- * typeInfo [WorkflowTypeInfo] <p>General information about the workflow type.</p> <p>The status of the workflow type (returned in the WorkflowTypeInfo structure) can be one of the following.</p> <ul> <li> <p> <code>REGISTERED</code> – The type is registered and available. Workers supporting this type should be running.</p> </li> <li> <p> <code>DEPRECATED</code> – The type was deprecated using <a>DeprecateWorkflowType</a>, but is still in use. You should keep workers supporting this type running. You cannot create new workflow executions of this type.</p> </li> </ul>
-- Required key: typeInfo
-- Required key: configuration
-- @return WorkflowTypeDetail structure as a key-value pair table
function M.WorkflowTypeDetail(args)
	assert(args, "You must provide an argument table when creating WorkflowTypeDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["configuration"] = args["configuration"],
		["typeInfo"] = args["typeInfo"],
	}
	asserts.AssertWorkflowTypeDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- * domain [DomainName] <p>The name of the domain that contains the workflow executions to list.</p>
-- * maximumPageSize [PageSize] <p>The maximum number of results that are returned per call. <code>nextPageToken</code> can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size <i>smaller</i> than the maximum.</p> <p>This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.</p>
-- * typeFilter [WorkflowTypeFilter] <p>If specified, only executions of the type specified in the filter are returned.</p> <note> <p> <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>
-- * executionFilter [WorkflowExecutionFilter] <p>If specified, only workflow executions matching the workflow ID specified in the filter are returned.</p> <note> <p> <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>
-- * closeTimeFilter [ExecutionTimeFilter] <p>If specified, the workflow executions are included in the returned results based on whether their close times are within the range specified by this filter. Also, if this parameter is specified, the returned results are ordered by their close times.</p> <note> <p> <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You must specify one of these in a request but not both.</p> </note>
-- * reverseOrder [ReverseOrder] <p>When set to <code>true</code>, returns the results in reverse order. By default the results are returned in descending order of the start or the close time of the executions.</p>
-- * closeStatusFilter [CloseStatusFilter] <p>If specified, only workflow executions that match this <i>close status</i> are listed. For example, if TERMINATED is specified, then only TERMINATED workflow executions are listed.</p> <note> <p> <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>
-- * startTimeFilter [ExecutionTimeFilter] <p>If specified, the workflow executions are included in the returned results based on whether their start times are within the range specified by this filter. Also, if this parameter is specified, the returned results are ordered by their start times.</p> <note> <p> <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You must specify one of these in a request but not both.</p> </note>
-- * tagFilter [TagFilter] <p>If specified, only executions that have the matching tag are listed.</p> <note> <p> <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>
-- Required key: domain
-- @return ListClosedWorkflowExecutionsInput structure as a key-value pair table
function M.ListClosedWorkflowExecutionsInput(args)
	assert(args, "You must provide an argument table when creating ListClosedWorkflowExecutionsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["domain"] = args["domain"],
		["maximumPageSize"] = args["maximumPageSize"],
		["typeFilter"] = args["typeFilter"],
		["executionFilter"] = args["executionFilter"],
		["closeTimeFilter"] = args["closeTimeFilter"],
		["reverseOrder"] = args["reverseOrder"],
		["closeStatusFilter"] = args["closeStatusFilter"],
		["startTimeFilter"] = args["startTimeFilter"],
		["tagFilter"] = args["tagFilter"],
	}
	asserts.AssertListClosedWorkflowExecutionsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains information about a workflow execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * closeTimestamp [Timestamp] <p>The time when the workflow execution was closed. Set only if the execution status is CLOSED.</p>
-- * workflowType [WorkflowType] <p>The type of the workflow execution.</p>
-- * parent [WorkflowExecution] <p>If this workflow execution is a child of another execution then contains the workflow execution that started this execution.</p>
-- * startTimestamp [Timestamp] <p>The time when the execution was started.</p>
-- * closeStatus [CloseStatus] <p>If the execution status is closed then this specifies how the execution was closed:</p> <ul> <li> <p> <code>COMPLETED</code> – the execution was successfully completed.</p> </li> <li> <p> <code>CANCELED</code> – the execution was canceled.Cancellation allows the implementation to gracefully clean up before the execution is closed.</p> </li> <li> <p> <code>TERMINATED</code> – the execution was force terminated.</p> </li> <li> <p> <code>FAILED</code> – the execution failed to complete.</p> </li> <li> <p> <code>TIMED_OUT</code> – the execution did not complete in the alloted time and was automatically timed out.</p> </li> <li> <p> <code>CONTINUED_AS_NEW</code> – the execution is logically continued. This means the current execution was completed and a new execution was started to carry on the workflow.</p> </li> </ul>
-- * executionStatus [ExecutionStatus] <p>The current status of the execution.</p>
-- * execution [WorkflowExecution] <p>The workflow execution this information is about.</p>
-- * cancelRequested [Canceled] <p>Set to true if a cancellation is requested for this workflow execution.</p>
-- * tagList [TagList] <p>The list of tags associated with the workflow execution. Tags can be used to identify and list workflow executions of interest through the visibility APIs. A workflow execution can have a maximum of 5 tags.</p>
-- Required key: execution
-- Required key: workflowType
-- Required key: startTimestamp
-- Required key: executionStatus
-- @return WorkflowExecutionInfo structure as a key-value pair table
function M.WorkflowExecutionInfo(args)
	assert(args, "You must provide an argument table when creating WorkflowExecutionInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["closeTimestamp"] = args["closeTimestamp"],
		["workflowType"] = args["workflowType"],
		["parent"] = args["parent"],
		["startTimestamp"] = args["startTimestamp"],
		["closeStatus"] = args["closeStatus"],
		["executionStatus"] = args["executionStatus"],
		["execution"] = args["execution"],
		["cancelRequested"] = args["cancelRequested"],
		["tagList"] = args["tagList"],
	}
	asserts.AssertWorkflowExecutionInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [RegistrationStatus] <p>The current status of the activity type.</p>
-- * deprecationDate [Timestamp] <p>If DEPRECATED, the date and time <a>DeprecateActivityType</a> was called.</p>
-- * creationDate [Timestamp] <p>The date and time this activity type was created through <a>RegisterActivityType</a>.</p>
-- * activityType [ActivityType] <p>The <a>ActivityType</a> type structure representing the activity type.</p>
-- * description [Description] <p>The description of the activity type provided in <a>RegisterActivityType</a>.</p>
-- Required key: activityType
-- Required key: status
-- Required key: creationDate
-- @return ActivityTypeInfo structure as a key-value pair table
function M.ActivityTypeInfo(args)
	assert(args, "You must provide an argument table when creating ActivityTypeInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["deprecationDate"] = args["deprecationDate"],
		["creationDate"] = args["creationDate"],
		["activityType"] = args["activityType"],
		["description"] = args["description"],
	}
	asserts.AssertActivityTypeInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Returned if the type already exists in the specified domain. You get this fault even if the existing type is in deprecated status. You can specify another version if the intent is to create a new distinct version of the type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A description that may help with diagnosing the cause of the fault.</p>
-- @return TypeAlreadyExistsFault structure as a key-value pair table
function M.TypeAlreadyExistsFault(args)
	assert(args, "You must provide an argument table when creating TypeAlreadyExistsFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertTypeAlreadyExistsFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>StartLambdaFunctionFailed</code> event. It isn't set for other event types.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * cause [StartLambdaFunctionFailedCause] <p>The cause of the failure. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because the IAM role attached to the execution lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/lambda-task.html">Lambda Tasks</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>
-- * message [CauseMessage] <p>A description that can help diagnose the cause of the fault.</p>
-- * scheduledEventId [EventId] <p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
-- @return StartLambdaFunctionFailedEventAttributes structure as a key-value pair table
function M.StartLambdaFunctionFailedEventAttributes(args)
	assert(args, "You must provide an argument table when creating StartLambdaFunctionFailedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["cause"] = args["cause"],
		["message"] = args["message"],
		["scheduledEventId"] = args["scheduledEventId"],
	}
	asserts.AssertStartLambdaFunctionFailedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>WorkflowExecutionCompleted</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * result [Data] <p>The result produced by the workflow execution upon successful completion.</p>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CompleteWorkflowExecution</code> decision to complete this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required key: decisionTaskCompletedEventId
-- @return WorkflowExecutionCompletedEventAttributes structure as a key-value pair table
function M.WorkflowExecutionCompletedEventAttributes(args)
	assert(args, "You must provide an argument table when creating WorkflowExecutionCompletedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["result"] = args["result"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
	}
	asserts.AssertWorkflowExecutionCompletedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextPageToken [PageToken] <p>If a <code>NextPageToken</code> was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in <code>nextPageToken</code>. Keep all other arguments unchanged.</p> <p>The configured <code>maximumPageSize</code> determines how many results can be returned in a single call.</p>
-- * maximumPageSize [PageSize] <p>The maximum number of results that are returned per call. <code>nextPageToken</code> can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size <i>smaller</i> than the maximum.</p> <p>This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.</p>
-- * registrationStatus [RegistrationStatus] <p>Specifies the registration status of the domains to list.</p>
-- * reverseOrder [ReverseOrder] <p>When set to <code>true</code>, returns the results in reverse order. By default, the results are returned in ascending alphabetical order by <code>name</code> of the domains.</p>
-- Required key: registrationStatus
-- @return ListDomainsInput structure as a key-value pair table
function M.ListDomainsInput(args)
	assert(args, "You must provide an argument table when creating ListDomainsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextPageToken"] = args["nextPageToken"],
		["maximumPageSize"] = args["maximumPageSize"],
		["registrationStatus"] = args["registrationStatus"],
		["reverseOrder"] = args["reverseOrder"],
	}
	asserts.AssertListDomainsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>ActivityTaskScheduled</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * control [Data] <p>Data attached to the event that can be used by the decider in subsequent workflow tasks. This data isn't sent to the activity.</p>
-- * taskList [TaskList] <p>The task list in which the activity task has been scheduled.</p>
-- * scheduleToCloseTimeout [DurationInSecondsOptional] <p>The maximum amount of time for this activity task.</p>
-- * activityType [ActivityType] <p>The type of the activity task.</p>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision that resulted in the scheduling of this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * taskPriority [TaskPriority] <p> The priority to assign to the scheduled activity task. If set, this overrides any default priority value that was assigned when the activity type was registered.</p> <p>Valid values are integers that range from Java's <code>Integer.MIN_VALUE</code> (-2147483648) to <code>Integer.MAX_VALUE</code> (2147483647). Higher numbers indicate higher priority.</p> <p>For more information about setting task priority, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html">Setting Task Priority</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- * heartbeatTimeout [DurationInSecondsOptional] <p>The maximum time before which the worker processing this task must report progress by calling <a>RecordActivityTaskHeartbeat</a>. If the timeout is exceeded, the activity task is automatically timed out. If the worker subsequently attempts to record a heartbeat or return a result, it is ignored.</p>
-- * activityId [ActivityId] <p>The unique ID of the activity task.</p>
-- * scheduleToStartTimeout [DurationInSecondsOptional] <p>The maximum amount of time the activity task can wait to be assigned to a worker.</p>
-- * startToCloseTimeout [DurationInSecondsOptional] <p>The maximum amount of time a worker may take to process the activity task.</p>
-- * input [Data] <p>The input provided to the activity task.</p>
-- Required key: activityType
-- Required key: activityId
-- Required key: taskList
-- Required key: decisionTaskCompletedEventId
-- @return ActivityTaskScheduledEventAttributes structure as a key-value pair table
function M.ActivityTaskScheduledEventAttributes(args)
	assert(args, "You must provide an argument table when creating ActivityTaskScheduledEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["control"] = args["control"],
		["taskList"] = args["taskList"],
		["scheduleToCloseTimeout"] = args["scheduleToCloseTimeout"],
		["activityType"] = args["activityType"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
		["taskPriority"] = args["taskPriority"],
		["heartbeatTimeout"] = args["heartbeatTimeout"],
		["activityId"] = args["activityId"],
		["scheduleToStartTimeout"] = args["scheduleToStartTimeout"],
		["startToCloseTimeout"] = args["startToCloseTimeout"],
		["input"] = args["input"],
	}
	asserts.AssertActivityTaskScheduledEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>ChildWorkflowExecutionCompleted</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startedEventId [EventId] <p>The ID of the <code>ChildWorkflowExecutionStarted</code> event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * workflowType [WorkflowType] <p>The type of the child workflow execution.</p>
-- * initiatedEventId [EventId] <p>The ID of the <code>StartChildWorkflowExecutionInitiated</code> event corresponding to the <code>StartChildWorkflowExecution</code> <a>Decision</a> to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * result [Data] <p>The result of the child workflow execution.</p>
-- * workflowExecution [WorkflowExecution] <p>The child workflow execution that was completed.</p>
-- Required key: workflowExecution
-- Required key: workflowType
-- Required key: initiatedEventId
-- Required key: startedEventId
-- @return ChildWorkflowExecutionCompletedEventAttributes structure as a key-value pair table
function M.ChildWorkflowExecutionCompletedEventAttributes(args)
	assert(args, "You must provide an argument table when creating ChildWorkflowExecutionCompletedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["startedEventId"] = args["startedEventId"],
		["workflowType"] = args["workflowType"],
		["initiatedEventId"] = args["initiatedEventId"],
		["result"] = args["result"],
		["workflowExecution"] = args["workflowExecution"],
	}
	asserts.AssertChildWorkflowExecutionCompletedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * result [Data] <p>The result of the activity task. It is a free form string that is implementation specific.</p>
-- * taskToken [TaskToken] <p>The <code>taskToken</code> of the <a>ActivityTask</a>.</p> <important> <p> <code>taskToken</code> is generated by the service and should be treated as an opaque value. If the task is passed to another process, its <code>taskToken</code> must also be passed. This enables it to provide its progress and respond with results.</p> </important>
-- Required key: taskToken
-- @return RespondActivityTaskCompletedInput structure as a key-value pair table
function M.RespondActivityTaskCompletedInput(args)
	assert(args, "You must provide an argument table when creating RespondActivityTaskCompletedInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["result"] = args["result"],
		["taskToken"] = args["taskToken"],
	}
	asserts.AssertRespondActivityTaskCompletedInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p> Provides the details of the <code>TimerCanceled</code> event. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startedEventId [EventId] <p>The ID of the <code>TimerStarted</code> event that was recorded when this timer was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * timerId [TimerId] <p>The unique ID of the timer that was canceled.</p>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>CancelTimer</code> decision to cancel this timer. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required key: timerId
-- Required key: startedEventId
-- Required key: decisionTaskCompletedEventId
-- @return TimerCanceledEventAttributes structure as a key-value pair table
function M.TimerCanceledEventAttributes(args)
	assert(args, "You must provide an argument table when creating TimerCanceledEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["startedEventId"] = args["startedEventId"],
		["timerId"] = args["timerId"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
	}
	asserts.AssertTimerCanceledEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>ActivityTaskCompleted</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startedEventId [EventId] <p>The ID of the <code>ActivityTaskStarted</code> event recorded when this activity task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * scheduledEventId [EventId] <p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * result [Data] <p>The results of the activity task.</p>
-- Required key: scheduledEventId
-- Required key: startedEventId
-- @return ActivityTaskCompletedEventAttributes structure as a key-value pair table
function M.ActivityTaskCompletedEventAttributes(args)
	assert(args, "You must provide an argument table when creating ActivityTaskCompletedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["startedEventId"] = args["startedEventId"],
		["scheduledEventId"] = args["scheduledEventId"],
		["result"] = args["result"],
	}
	asserts.AssertActivityTaskCompletedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ScheduleLambdaFunctionDecisionAttributes = { ["control"] = true, ["input"] = true, ["startToCloseTimeout"] = true, ["id"] = true, ["name"] = true, nil }

function asserts.AssertScheduleLambdaFunctionDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleLambdaFunctionDecisionAttributes to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["control"] then asserts.AssertData(struct["control"]) end
	if struct["input"] then asserts.AssertFunctionInput(struct["input"]) end
	if struct["startToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["startToCloseTimeout"]) end
	if struct["id"] then asserts.AssertFunctionId(struct["id"]) end
	if struct["name"] then asserts.AssertFunctionName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ScheduleLambdaFunctionDecisionAttributes[k], "ScheduleLambdaFunctionDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleLambdaFunctionDecisionAttributes
-- <p>Decision attributes specified in <code>scheduleLambdaFunctionDecisionAttributes</code> within the list of decisions <code>decisions</code> passed to <a>RespondDecisionTaskCompleted</a>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * control [Data] <p>The data attached to the event that the decider can use in subsequent workflow tasks. This data isn't sent to the Lambda task.</p>
-- * input [FunctionInput] <p>The optional input data to be supplied to the Lambda function.</p>
-- * startToCloseTimeout [DurationInSecondsOptional] <p>The timeout value, in seconds, after which the Lambda function is considered to be failed once it has started. This can be any integer from 1-300 (1s-5m). If no value is supplied, than a default value of 300s is assumed.</p>
-- * id [FunctionId] <p>A string that identifies the Lambda function execution in the event history.</p>
-- * name [FunctionName] <p>The name, or ARN, of the Lambda function to schedule.</p>
-- Required key: id
-- Required key: name
-- @return ScheduleLambdaFunctionDecisionAttributes structure as a key-value pair table
function M.ScheduleLambdaFunctionDecisionAttributes(args)
	assert(args, "You must provide an argument table when creating ScheduleLambdaFunctionDecisionAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["control"] = args["control"],
		["input"] = args["input"],
		["startToCloseTimeout"] = args["startToCloseTimeout"],
		["id"] = args["id"],
		["name"] = args["name"],
	}
	asserts.AssertScheduleLambdaFunctionDecisionAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>ActivityTaskStarted</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * scheduledEventId [EventId] <p>The ID of the <code>ActivityTaskScheduled</code> event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * identity [Identity] <p>Identity of the worker that was assigned this task. This aids diagnostics when problems arise. The form of this identity is user defined.</p>
-- Required key: scheduledEventId
-- @return ActivityTaskStartedEventAttributes structure as a key-value pair table
function M.ActivityTaskStartedEventAttributes(args)
	assert(args, "You must provide an argument table when creating ActivityTaskStartedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["scheduledEventId"] = args["scheduledEventId"],
		["identity"] = args["identity"],
	}
	asserts.AssertActivityTaskStartedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * tag [Tag] <p> Specifies the tag that must be associated with the execution for it to meet the filter criteria.</p>
-- Required key: tag
-- @return TagFilter structure as a key-value pair table
function M.TagFilter(args)
	assert(args, "You must provide an argument table when creating TagFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["tag"] = args["tag"],
	}
	asserts.AssertTagFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Contains the count of workflow executions returned from <a>CountOpenWorkflowExecutions</a> or <a>CountClosedWorkflowExecutions</a> </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * count [Count] <p>The number of workflow executions.</p>
-- * truncated [Truncated] <p>If set to true, indicates that the actual count was more than the maximum supported by this API and the count returned is the truncated value.</p>
-- Required key: count
-- @return WorkflowExecutionCount structure as a key-value pair table
function M.WorkflowExecutionCount(args)
	assert(args, "You must provide an argument table when creating WorkflowExecutionCount")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["count"] = args["count"],
		["truncated"] = args["truncated"],
	}
	asserts.AssertWorkflowExecutionCount(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * domain [DomainName] <p>The name of the domain containing the workflow executions to count.</p>
-- * typeFilter [WorkflowTypeFilter] <p>If specified, indicates the type of the workflow executions to be counted.</p> <note> <p> <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>
-- * tagFilter [TagFilter] <p>If specified, only executions that have a tag that matches the filter are counted.</p> <note> <p> <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>
-- * closeTimeFilter [ExecutionTimeFilter] <p>If specified, only workflow executions that meet the close time criteria of the filter are counted.</p> <note> <p> <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You must specify one of these in a request but not both.</p> </note>
-- * closeStatusFilter [CloseStatusFilter] <p>If specified, only workflow executions that match this close status are counted. This filter has an affect only if <code>executionStatus</code> is specified as <code>CLOSED</code>.</p> <note> <p> <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>
-- * startTimeFilter [ExecutionTimeFilter] <p>If specified, only workflow executions that meet the start time criteria of the filter are counted.</p> <note> <p> <code>startTimeFilter</code> and <code>closeTimeFilter</code> are mutually exclusive. You must specify one of these in a request but not both.</p> </note>
-- * executionFilter [WorkflowExecutionFilter] <p>If specified, only workflow executions matching the <code>WorkflowId</code> in the filter are counted.</p> <note> <p> <code>closeStatusFilter</code>, <code>executionFilter</code>, <code>typeFilter</code> and <code>tagFilter</code> are mutually exclusive. You can specify at most one of these in a request.</p> </note>
-- Required key: domain
-- @return CountClosedWorkflowExecutionsInput structure as a key-value pair table
function M.CountClosedWorkflowExecutionsInput(args)
	assert(args, "You must provide an argument table when creating CountClosedWorkflowExecutionsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["domain"] = args["domain"],
		["typeFilter"] = args["typeFilter"],
		["tagFilter"] = args["tagFilter"],
		["closeTimeFilter"] = args["closeTimeFilter"],
		["closeStatusFilter"] = args["closeStatusFilter"],
		["startTimeFilter"] = args["startTimeFilter"],
		["executionFilter"] = args["executionFilter"],
	}
	asserts.AssertCountClosedWorkflowExecutionsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * openTimers [Count] <p>The count of timers started by this workflow execution that have not fired yet.</p>
-- * openDecisionTasks [OpenDecisionTasksCount] <p>The count of decision tasks whose status is OPEN. A workflow execution can have at most one open decision task.</p>
-- * openLambdaFunctions [Count] <p>The count of Lambda tasks whose status is <code>OPEN</code>.</p>
-- * openActivityTasks [Count] <p>The count of activity tasks whose status is <code>OPEN</code>.</p>
-- * openChildWorkflowExecutions [Count] <p>The count of child workflow executions whose status is <code>OPEN</code>.</p>
-- Required key: openActivityTasks
-- Required key: openDecisionTasks
-- Required key: openTimers
-- Required key: openChildWorkflowExecutions
-- @return WorkflowExecutionOpenCounts structure as a key-value pair table
function M.WorkflowExecutionOpenCounts(args)
	assert(args, "You must provide an argument table when creating WorkflowExecutionOpenCounts")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["openTimers"] = args["openTimers"],
		["openDecisionTasks"] = args["openDecisionTasks"],
		["openLambdaFunctions"] = args["openLambdaFunctions"],
		["openActivityTasks"] = args["openActivityTasks"],
		["openChildWorkflowExecutions"] = args["openChildWorkflowExecutions"],
	}
	asserts.AssertWorkflowExecutionOpenCounts(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>WorkflowExecutionCancelRequested</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * externalInitiatedEventId [EventId] <p>The ID of the <code>RequestCancelExternalWorkflowExecutionInitiated</code> event corresponding to the <code>RequestCancelExternalWorkflowExecution</code> decision to cancel this workflow execution.The source event with this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * cause [WorkflowExecutionCancelRequestedCause] <p>If set, indicates that the request to cancel the workflow execution was automatically generated, and specifies the cause. This happens if the parent workflow execution times out or is terminated, and the child policy is set to cancel child executions.</p>
-- * externalWorkflowExecution [WorkflowExecution] <p>The external workflow execution for which the cancellation was requested.</p>
-- @return WorkflowExecutionCancelRequestedEventAttributes structure as a key-value pair table
function M.WorkflowExecutionCancelRequestedEventAttributes(args)
	assert(args, "You must provide an argument table when creating WorkflowExecutionCancelRequestedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["externalInitiatedEventId"] = args["externalInitiatedEventId"],
		["cause"] = args["cause"],
		["externalWorkflowExecution"] = args["externalWorkflowExecution"],
	}
	asserts.AssertWorkflowExecutionCancelRequestedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>StartTimerFailed</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * timerId [TimerId] <p>The timerId provided in the <code>StartTimer</code> decision that failed.</p>
-- * cause [StartTimerFailedCause] <p>The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.</p> <note> <p>If <code>cause</code> is set to <code>OPERATION_NOT_PERMITTED</code>, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p> </note>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>DecisionTaskCompleted</code> event corresponding to the decision task that resulted in the <code>StartTimer</code> decision for this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required key: timerId
-- Required key: cause
-- Required key: decisionTaskCompletedEventId
-- @return StartTimerFailedEventAttributes structure as a key-value pair table
function M.StartTimerFailedEventAttributes(args)
	assert(args, "You must provide an argument table when creating StartTimerFailedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["timerId"] = args["timerId"],
		["cause"] = args["cause"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
	}
	asserts.AssertStartTimerFailedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>A description that may help with diagnosing the cause of the fault.</p>
-- @return WorkflowExecutionAlreadyStartedFault structure as a key-value pair table
function M.WorkflowExecutionAlreadyStartedFault(args)
	assert(args, "You must provide an argument table when creating WorkflowExecutionAlreadyStartedFault")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertWorkflowExecutionAlreadyStartedFault(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>CompleteWorkflowExecution</code> decision.</p> <p> <b>Access Control</b> </p> <p>You can use IAM policies to control this decision's access to Amazon SWF resources as follows:</p> <ul> <li> <p>Use a <code>Resource</code> element with the domain name to limit the action to only specified domains.</p> </li> <li> <p>Use an <code>Action</code> element to allow or deny permission to call this action.</p> </li> <li> <p>You cannot use an IAM policy to constrain this action's parameters.</p> </li> </ul> <p>If the caller doesn't have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's <code>cause</code> parameter is set to <code>OPERATION_NOT_PERMITTED</code>. For details and example IAM policies, see <a href="http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html">Using IAM to Manage Access to Amazon SWF Workflows</a> in the <i>Amazon SWF Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * result [Data] <p>The result of the workflow execution. The form of the result is implementation defined.</p>
-- @return CompleteWorkflowExecutionDecisionAttributes structure as a key-value pair table
function M.CompleteWorkflowExecutionDecisionAttributes(args)
	assert(args, "You must provide an argument table when creating CompleteWorkflowExecutionDecisionAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["result"] = args["result"],
	}
	asserts.AssertCompleteWorkflowExecutionDecisionAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LambdaFunctionScheduledEventAttributes = { ["control"] = true, ["name"] = true, ["decisionTaskCompletedEventId"] = true, ["startToCloseTimeout"] = true, ["input"] = true, ["id"] = true, nil }

function asserts.AssertLambdaFunctionScheduledEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionScheduledEventAttributes to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["control"] then asserts.AssertData(struct["control"]) end
	if struct["name"] then asserts.AssertFunctionName(struct["name"]) end
	if struct["decisionTaskCompletedEventId"] then asserts.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["startToCloseTimeout"] then asserts.AssertDurationInSecondsOptional(struct["startToCloseTimeout"]) end
	if struct["input"] then asserts.AssertFunctionInput(struct["input"]) end
	if struct["id"] then asserts.AssertFunctionId(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaFunctionScheduledEventAttributes[k], "LambdaFunctionScheduledEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionScheduledEventAttributes
-- <p>Provides the details of the <code>LambdaFunctionScheduled</code> event. It isn't set for other event types.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * control [Data] <p>Data attached to the event that the decider can use in subsequent workflow tasks. This data isn't sent to the Lambda task.</p>
-- * name [FunctionName] <p>The name of the Lambda function.</p>
-- * decisionTaskCompletedEventId [EventId] <p>The ID of the <code>LambdaFunctionCompleted</code> event corresponding to the decision that resulted in scheduling this activity task. To help diagnose issues, use this information to trace back the chain of events leading up to this event.</p>
-- * startToCloseTimeout [DurationInSecondsOptional] <p>The maximum amount of time a worker can take to process the Lambda task.</p>
-- * input [FunctionInput] <p>The input provided to the Lambda task.</p>
-- * id [FunctionId] <p>The unique ID of the Lambda task.</p>
-- Required key: id
-- Required key: name
-- Required key: decisionTaskCompletedEventId
-- @return LambdaFunctionScheduledEventAttributes structure as a key-value pair table
function M.LambdaFunctionScheduledEventAttributes(args)
	assert(args, "You must provide an argument table when creating LambdaFunctionScheduledEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["control"] = args["control"],
		["name"] = args["name"],
		["decisionTaskCompletedEventId"] = args["decisionTaskCompletedEventId"],
		["startToCloseTimeout"] = args["startToCloseTimeout"],
		["input"] = args["input"],
		["id"] = args["id"],
	}
	asserts.AssertLambdaFunctionScheduledEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>Provides the details of the <code>DecisionTaskCompleted</code> event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startedEventId [EventId] <p>The ID of the <code>DecisionTaskStarted</code> event recorded when this decision task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- * executionContext [Data] <p>User defined context for the workflow execution.</p>
-- * scheduledEventId [EventId] <p>The ID of the <code>DecisionTaskScheduled</code> event that was recorded when this decision task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.</p>
-- Required key: scheduledEventId
-- Required key: startedEventId
-- @return DecisionTaskCompletedEventAttributes structure as a key-value pair table
function M.DecisionTaskCompletedEventAttributes(args)
	assert(args, "You must provide an argument table when creating DecisionTaskCompletedEventAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["startedEventId"] = args["startedEventId"],
		["executionContext"] = args["executionContext"],
		["scheduledEventId"] = args["scheduledEventId"],
	}
	asserts.AssertDecisionTaskCompletedEventAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

function asserts.AssertWorkflowRunIdOptional(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkflowRunIdOptional to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.WorkflowRunIdOptional(str)
	asserts.AssertWorkflowRunIdOptional(str)
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
	assert(#str <= 1600, "Expected string to be max 1600 characters")
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

function asserts.AssertWorkflowRunId(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkflowRunId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.WorkflowRunId(str)
	asserts.AssertWorkflowRunId(str)
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


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call SignalWorkflowExecution asynchronously, invoking a callback when done
-- @param SignalWorkflowExecutionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SignalWorkflowExecutionAsync(SignalWorkflowExecutionInput, cb)
	assert(SignalWorkflowExecutionInput, "You must provide a SignalWorkflowExecutionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.SignalWorkflowExecution",
	}
	for header,value in pairs(SignalWorkflowExecutionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", SignalWorkflowExecutionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SignalWorkflowExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SignalWorkflowExecutionInput
-- @return response
-- @return error_type
-- @return error_message
function M.SignalWorkflowExecutionSync(SignalWorkflowExecutionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SignalWorkflowExecutionAsync(SignalWorkflowExecutionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeWorkflowExecution asynchronously, invoking a callback when done
-- @param DescribeWorkflowExecutionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeWorkflowExecutionAsync(DescribeWorkflowExecutionInput, cb)
	assert(DescribeWorkflowExecutionInput, "You must provide a DescribeWorkflowExecutionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.DescribeWorkflowExecution",
	}
	for header,value in pairs(DescribeWorkflowExecutionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeWorkflowExecutionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeWorkflowExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeWorkflowExecutionInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeWorkflowExecutionSync(DescribeWorkflowExecutionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeWorkflowExecutionAsync(DescribeWorkflowExecutionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetWorkflowExecutionHistory asynchronously, invoking a callback when done
-- @param GetWorkflowExecutionHistoryInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetWorkflowExecutionHistoryAsync(GetWorkflowExecutionHistoryInput, cb)
	assert(GetWorkflowExecutionHistoryInput, "You must provide a GetWorkflowExecutionHistoryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.GetWorkflowExecutionHistory",
	}
	for header,value in pairs(GetWorkflowExecutionHistoryInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetWorkflowExecutionHistoryInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetWorkflowExecutionHistory synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetWorkflowExecutionHistoryInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetWorkflowExecutionHistorySync(GetWorkflowExecutionHistoryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetWorkflowExecutionHistoryAsync(GetWorkflowExecutionHistoryInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CountOpenWorkflowExecutions asynchronously, invoking a callback when done
-- @param CountOpenWorkflowExecutionsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CountOpenWorkflowExecutionsAsync(CountOpenWorkflowExecutionsInput, cb)
	assert(CountOpenWorkflowExecutionsInput, "You must provide a CountOpenWorkflowExecutionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.CountOpenWorkflowExecutions",
	}
	for header,value in pairs(CountOpenWorkflowExecutionsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CountOpenWorkflowExecutionsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CountOpenWorkflowExecutions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CountOpenWorkflowExecutionsInput
-- @return response
-- @return error_type
-- @return error_message
function M.CountOpenWorkflowExecutionsSync(CountOpenWorkflowExecutionsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CountOpenWorkflowExecutionsAsync(CountOpenWorkflowExecutionsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RespondActivityTaskFailed asynchronously, invoking a callback when done
-- @param RespondActivityTaskFailedInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RespondActivityTaskFailedAsync(RespondActivityTaskFailedInput, cb)
	assert(RespondActivityTaskFailedInput, "You must provide a RespondActivityTaskFailedInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.RespondActivityTaskFailed",
	}
	for header,value in pairs(RespondActivityTaskFailedInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RespondActivityTaskFailedInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RespondActivityTaskFailed synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RespondActivityTaskFailedInput
-- @return response
-- @return error_type
-- @return error_message
function M.RespondActivityTaskFailedSync(RespondActivityTaskFailedInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RespondActivityTaskFailedAsync(RespondActivityTaskFailedInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PollForActivityTask asynchronously, invoking a callback when done
-- @param PollForActivityTaskInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PollForActivityTaskAsync(PollForActivityTaskInput, cb)
	assert(PollForActivityTaskInput, "You must provide a PollForActivityTaskInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.PollForActivityTask",
	}
	for header,value in pairs(PollForActivityTaskInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PollForActivityTaskInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PollForActivityTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PollForActivityTaskInput
-- @return response
-- @return error_type
-- @return error_message
function M.PollForActivityTaskSync(PollForActivityTaskInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PollForActivityTaskAsync(PollForActivityTaskInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDomains asynchronously, invoking a callback when done
-- @param ListDomainsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDomainsAsync(ListDomainsInput, cb)
	assert(ListDomainsInput, "You must provide a ListDomainsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.ListDomains",
	}
	for header,value in pairs(ListDomainsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListDomainsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDomains synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDomainsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListDomainsSync(ListDomainsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDomainsAsync(ListDomainsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartWorkflowExecution asynchronously, invoking a callback when done
-- @param StartWorkflowExecutionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartWorkflowExecutionAsync(StartWorkflowExecutionInput, cb)
	assert(StartWorkflowExecutionInput, "You must provide a StartWorkflowExecutionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.StartWorkflowExecution",
	}
	for header,value in pairs(StartWorkflowExecutionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartWorkflowExecutionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartWorkflowExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartWorkflowExecutionInput
-- @return response
-- @return error_type
-- @return error_message
function M.StartWorkflowExecutionSync(StartWorkflowExecutionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartWorkflowExecutionAsync(StartWorkflowExecutionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RespondDecisionTaskCompleted asynchronously, invoking a callback when done
-- @param RespondDecisionTaskCompletedInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RespondDecisionTaskCompletedAsync(RespondDecisionTaskCompletedInput, cb)
	assert(RespondDecisionTaskCompletedInput, "You must provide a RespondDecisionTaskCompletedInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.RespondDecisionTaskCompleted",
	}
	for header,value in pairs(RespondDecisionTaskCompletedInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RespondDecisionTaskCompletedInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RespondDecisionTaskCompleted synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RespondDecisionTaskCompletedInput
-- @return response
-- @return error_type
-- @return error_message
function M.RespondDecisionTaskCompletedSync(RespondDecisionTaskCompletedInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RespondDecisionTaskCompletedAsync(RespondDecisionTaskCompletedInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterActivityType asynchronously, invoking a callback when done
-- @param RegisterActivityTypeInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterActivityTypeAsync(RegisterActivityTypeInput, cb)
	assert(RegisterActivityTypeInput, "You must provide a RegisterActivityTypeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.RegisterActivityType",
	}
	for header,value in pairs(RegisterActivityTypeInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterActivityTypeInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterActivityType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterActivityTypeInput
-- @return response
-- @return error_type
-- @return error_message
function M.RegisterActivityTypeSync(RegisterActivityTypeInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterActivityTypeAsync(RegisterActivityTypeInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RequestCancelWorkflowExecution asynchronously, invoking a callback when done
-- @param RequestCancelWorkflowExecutionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RequestCancelWorkflowExecutionAsync(RequestCancelWorkflowExecutionInput, cb)
	assert(RequestCancelWorkflowExecutionInput, "You must provide a RequestCancelWorkflowExecutionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.RequestCancelWorkflowExecution",
	}
	for header,value in pairs(RequestCancelWorkflowExecutionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RequestCancelWorkflowExecutionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RequestCancelWorkflowExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RequestCancelWorkflowExecutionInput
-- @return response
-- @return error_type
-- @return error_message
function M.RequestCancelWorkflowExecutionSync(RequestCancelWorkflowExecutionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RequestCancelWorkflowExecutionAsync(RequestCancelWorkflowExecutionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListActivityTypes asynchronously, invoking a callback when done
-- @param ListActivityTypesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListActivityTypesAsync(ListActivityTypesInput, cb)
	assert(ListActivityTypesInput, "You must provide a ListActivityTypesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.ListActivityTypes",
	}
	for header,value in pairs(ListActivityTypesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListActivityTypesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListActivityTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListActivityTypesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListActivityTypesSync(ListActivityTypesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListActivityTypesAsync(ListActivityTypesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PollForDecisionTask asynchronously, invoking a callback when done
-- @param PollForDecisionTaskInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PollForDecisionTaskAsync(PollForDecisionTaskInput, cb)
	assert(PollForDecisionTaskInput, "You must provide a PollForDecisionTaskInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.PollForDecisionTask",
	}
	for header,value in pairs(PollForDecisionTaskInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PollForDecisionTaskInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PollForDecisionTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PollForDecisionTaskInput
-- @return response
-- @return error_type
-- @return error_message
function M.PollForDecisionTaskSync(PollForDecisionTaskInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PollForDecisionTaskAsync(PollForDecisionTaskInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListOpenWorkflowExecutions asynchronously, invoking a callback when done
-- @param ListOpenWorkflowExecutionsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListOpenWorkflowExecutionsAsync(ListOpenWorkflowExecutionsInput, cb)
	assert(ListOpenWorkflowExecutionsInput, "You must provide a ListOpenWorkflowExecutionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.ListOpenWorkflowExecutions",
	}
	for header,value in pairs(ListOpenWorkflowExecutionsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListOpenWorkflowExecutionsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListOpenWorkflowExecutions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListOpenWorkflowExecutionsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListOpenWorkflowExecutionsSync(ListOpenWorkflowExecutionsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListOpenWorkflowExecutionsAsync(ListOpenWorkflowExecutionsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CountClosedWorkflowExecutions asynchronously, invoking a callback when done
-- @param CountClosedWorkflowExecutionsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CountClosedWorkflowExecutionsAsync(CountClosedWorkflowExecutionsInput, cb)
	assert(CountClosedWorkflowExecutionsInput, "You must provide a CountClosedWorkflowExecutionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.CountClosedWorkflowExecutions",
	}
	for header,value in pairs(CountClosedWorkflowExecutionsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CountClosedWorkflowExecutionsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CountClosedWorkflowExecutions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CountClosedWorkflowExecutionsInput
-- @return response
-- @return error_type
-- @return error_message
function M.CountClosedWorkflowExecutionsSync(CountClosedWorkflowExecutionsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CountClosedWorkflowExecutionsAsync(CountClosedWorkflowExecutionsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterWorkflowType asynchronously, invoking a callback when done
-- @param RegisterWorkflowTypeInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterWorkflowTypeAsync(RegisterWorkflowTypeInput, cb)
	assert(RegisterWorkflowTypeInput, "You must provide a RegisterWorkflowTypeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.RegisterWorkflowType",
	}
	for header,value in pairs(RegisterWorkflowTypeInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterWorkflowTypeInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterWorkflowType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterWorkflowTypeInput
-- @return response
-- @return error_type
-- @return error_message
function M.RegisterWorkflowTypeSync(RegisterWorkflowTypeInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterWorkflowTypeAsync(RegisterWorkflowTypeInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDomain asynchronously, invoking a callback when done
-- @param DescribeDomainInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDomainAsync(DescribeDomainInput, cb)
	assert(DescribeDomainInput, "You must provide a DescribeDomainInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.DescribeDomain",
	}
	for header,value in pairs(DescribeDomainInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDomainInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDomainInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDomainSync(DescribeDomainInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDomainAsync(DescribeDomainInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListClosedWorkflowExecutions asynchronously, invoking a callback when done
-- @param ListClosedWorkflowExecutionsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListClosedWorkflowExecutionsAsync(ListClosedWorkflowExecutionsInput, cb)
	assert(ListClosedWorkflowExecutionsInput, "You must provide a ListClosedWorkflowExecutionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.ListClosedWorkflowExecutions",
	}
	for header,value in pairs(ListClosedWorkflowExecutionsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListClosedWorkflowExecutionsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListClosedWorkflowExecutions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListClosedWorkflowExecutionsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListClosedWorkflowExecutionsSync(ListClosedWorkflowExecutionsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListClosedWorkflowExecutionsAsync(ListClosedWorkflowExecutionsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TerminateWorkflowExecution asynchronously, invoking a callback when done
-- @param TerminateWorkflowExecutionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TerminateWorkflowExecutionAsync(TerminateWorkflowExecutionInput, cb)
	assert(TerminateWorkflowExecutionInput, "You must provide a TerminateWorkflowExecutionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.TerminateWorkflowExecution",
	}
	for header,value in pairs(TerminateWorkflowExecutionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TerminateWorkflowExecutionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TerminateWorkflowExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TerminateWorkflowExecutionInput
-- @return response
-- @return error_type
-- @return error_message
function M.TerminateWorkflowExecutionSync(TerminateWorkflowExecutionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TerminateWorkflowExecutionAsync(TerminateWorkflowExecutionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeprecateWorkflowType asynchronously, invoking a callback when done
-- @param DeprecateWorkflowTypeInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeprecateWorkflowTypeAsync(DeprecateWorkflowTypeInput, cb)
	assert(DeprecateWorkflowTypeInput, "You must provide a DeprecateWorkflowTypeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.DeprecateWorkflowType",
	}
	for header,value in pairs(DeprecateWorkflowTypeInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeprecateWorkflowTypeInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeprecateWorkflowType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeprecateWorkflowTypeInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeprecateWorkflowTypeSync(DeprecateWorkflowTypeInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeprecateWorkflowTypeAsync(DeprecateWorkflowTypeInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeActivityType asynchronously, invoking a callback when done
-- @param DescribeActivityTypeInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeActivityTypeAsync(DescribeActivityTypeInput, cb)
	assert(DescribeActivityTypeInput, "You must provide a DescribeActivityTypeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.DescribeActivityType",
	}
	for header,value in pairs(DescribeActivityTypeInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeActivityTypeInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeActivityType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeActivityTypeInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeActivityTypeSync(DescribeActivityTypeInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeActivityTypeAsync(DescribeActivityTypeInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CountPendingDecisionTasks asynchronously, invoking a callback when done
-- @param CountPendingDecisionTasksInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CountPendingDecisionTasksAsync(CountPendingDecisionTasksInput, cb)
	assert(CountPendingDecisionTasksInput, "You must provide a CountPendingDecisionTasksInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.CountPendingDecisionTasks",
	}
	for header,value in pairs(CountPendingDecisionTasksInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CountPendingDecisionTasksInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CountPendingDecisionTasks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CountPendingDecisionTasksInput
-- @return response
-- @return error_type
-- @return error_message
function M.CountPendingDecisionTasksSync(CountPendingDecisionTasksInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CountPendingDecisionTasksAsync(CountPendingDecisionTasksInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListWorkflowTypes asynchronously, invoking a callback when done
-- @param ListWorkflowTypesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListWorkflowTypesAsync(ListWorkflowTypesInput, cb)
	assert(ListWorkflowTypesInput, "You must provide a ListWorkflowTypesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.ListWorkflowTypes",
	}
	for header,value in pairs(ListWorkflowTypesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListWorkflowTypesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListWorkflowTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListWorkflowTypesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListWorkflowTypesSync(ListWorkflowTypesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListWorkflowTypesAsync(ListWorkflowTypesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeprecateDomain asynchronously, invoking a callback when done
-- @param DeprecateDomainInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeprecateDomainAsync(DeprecateDomainInput, cb)
	assert(DeprecateDomainInput, "You must provide a DeprecateDomainInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.DeprecateDomain",
	}
	for header,value in pairs(DeprecateDomainInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeprecateDomainInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeprecateDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeprecateDomainInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeprecateDomainSync(DeprecateDomainInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeprecateDomainAsync(DeprecateDomainInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RespondActivityTaskCanceled asynchronously, invoking a callback when done
-- @param RespondActivityTaskCanceledInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RespondActivityTaskCanceledAsync(RespondActivityTaskCanceledInput, cb)
	assert(RespondActivityTaskCanceledInput, "You must provide a RespondActivityTaskCanceledInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.RespondActivityTaskCanceled",
	}
	for header,value in pairs(RespondActivityTaskCanceledInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RespondActivityTaskCanceledInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RespondActivityTaskCanceled synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RespondActivityTaskCanceledInput
-- @return response
-- @return error_type
-- @return error_message
function M.RespondActivityTaskCanceledSync(RespondActivityTaskCanceledInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RespondActivityTaskCanceledAsync(RespondActivityTaskCanceledInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeWorkflowType asynchronously, invoking a callback when done
-- @param DescribeWorkflowTypeInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeWorkflowTypeAsync(DescribeWorkflowTypeInput, cb)
	assert(DescribeWorkflowTypeInput, "You must provide a DescribeWorkflowTypeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.DescribeWorkflowType",
	}
	for header,value in pairs(DescribeWorkflowTypeInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeWorkflowTypeInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeWorkflowType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeWorkflowTypeInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeWorkflowTypeSync(DescribeWorkflowTypeInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeWorkflowTypeAsync(DescribeWorkflowTypeInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterDomain asynchronously, invoking a callback when done
-- @param RegisterDomainInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterDomainAsync(RegisterDomainInput, cb)
	assert(RegisterDomainInput, "You must provide a RegisterDomainInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.RegisterDomain",
	}
	for header,value in pairs(RegisterDomainInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterDomainInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterDomain synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterDomainInput
-- @return response
-- @return error_type
-- @return error_message
function M.RegisterDomainSync(RegisterDomainInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterDomainAsync(RegisterDomainInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RecordActivityTaskHeartbeat asynchronously, invoking a callback when done
-- @param RecordActivityTaskHeartbeatInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RecordActivityTaskHeartbeatAsync(RecordActivityTaskHeartbeatInput, cb)
	assert(RecordActivityTaskHeartbeatInput, "You must provide a RecordActivityTaskHeartbeatInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.RecordActivityTaskHeartbeat",
	}
	for header,value in pairs(RecordActivityTaskHeartbeatInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RecordActivityTaskHeartbeatInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RecordActivityTaskHeartbeat synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RecordActivityTaskHeartbeatInput
-- @return response
-- @return error_type
-- @return error_message
function M.RecordActivityTaskHeartbeatSync(RecordActivityTaskHeartbeatInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RecordActivityTaskHeartbeatAsync(RecordActivityTaskHeartbeatInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CountPendingActivityTasks asynchronously, invoking a callback when done
-- @param CountPendingActivityTasksInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CountPendingActivityTasksAsync(CountPendingActivityTasksInput, cb)
	assert(CountPendingActivityTasksInput, "You must provide a CountPendingActivityTasksInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.CountPendingActivityTasks",
	}
	for header,value in pairs(CountPendingActivityTasksInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CountPendingActivityTasksInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CountPendingActivityTasks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CountPendingActivityTasksInput
-- @return response
-- @return error_type
-- @return error_message
function M.CountPendingActivityTasksSync(CountPendingActivityTasksInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CountPendingActivityTasksAsync(CountPendingActivityTasksInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeprecateActivityType asynchronously, invoking a callback when done
-- @param DeprecateActivityTypeInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeprecateActivityTypeAsync(DeprecateActivityTypeInput, cb)
	assert(DeprecateActivityTypeInput, "You must provide a DeprecateActivityTypeInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.DeprecateActivityType",
	}
	for header,value in pairs(DeprecateActivityTypeInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeprecateActivityTypeInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeprecateActivityType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeprecateActivityTypeInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeprecateActivityTypeSync(DeprecateActivityTypeInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeprecateActivityTypeAsync(DeprecateActivityTypeInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RespondActivityTaskCompleted asynchronously, invoking a callback when done
-- @param RespondActivityTaskCompletedInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RespondActivityTaskCompletedAsync(RespondActivityTaskCompletedInput, cb)
	assert(RespondActivityTaskCompletedInput, "You must provide a RespondActivityTaskCompletedInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "SimpleWorkflowService.RespondActivityTaskCompleted",
	}
	for header,value in pairs(RespondActivityTaskCompletedInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RespondActivityTaskCompletedInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RespondActivityTaskCompleted synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RespondActivityTaskCompletedInput
-- @return response
-- @return error_type
-- @return error_message
function M.RespondActivityTaskCompletedSync(RespondActivityTaskCompletedInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RespondActivityTaskCompletedAsync(RespondActivityTaskCompletedInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
