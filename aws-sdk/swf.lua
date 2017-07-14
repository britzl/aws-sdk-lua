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

local SignalExternalWorkflowExecutionInitiatedEventAttributes_keys = { "control" = true, "workflowId" = true, "runId" = true, "decisionTaskCompletedEventId" = true, "input" = true, "signalName" = true, nil }

function M.AssertSignalExternalWorkflowExecutionInitiatedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SignalExternalWorkflowExecutionInitiatedEventAttributes to be of type 'table'")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["signalName"], "Expected key signalName to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["control"] then M.AssertData(struct["control"]) end
	if struct["workflowId"] then M.AssertWorkflowId(struct["workflowId"]) end
	if struct["runId"] then M.AssertRunIdOptional(struct["runId"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["input"] then M.AssertData(struct["input"]) end
	if struct["signalName"] then M.AssertSignalName(struct["signalName"]) end
	for k,_ in pairs(struct) do
		assert(SignalExternalWorkflowExecutionInitiatedEventAttributes_keys[k], "SignalExternalWorkflowExecutionInitiatedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SignalExternalWorkflowExecutionInitiatedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;SignalExternalWorkflowExecutionInitiated&lt;/code&gt; event.&lt;/p&gt;
-- @param control [Data] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; data attached to the event that can be used by the decider in subsequent decision tasks.&lt;/p&gt;
-- @param workflowId [WorkflowId] &lt;p&gt;The &lt;code&gt;workflowId&lt;/code&gt; of the external workflow execution.&lt;/p&gt;
-- @param runId [RunIdOptional] &lt;p&gt;The &lt;code&gt;runId&lt;/code&gt; of the external workflow execution to send the signal to.&lt;/p&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;SignalExternalWorkflowExecution&lt;/code&gt; decision for this signal. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param input [Data] &lt;p&gt;Input provided to the signal (if any).&lt;/p&gt;
-- @param signalName [SignalName] &lt;p&gt;The name of the signal.&lt;/p&gt;
-- Required parameter: workflowId
-- Required parameter: signalName
-- Required parameter: decisionTaskCompletedEventId
function M.SignalExternalWorkflowExecutionInitiatedEventAttributes(control, workflowId, runId, decisionTaskCompletedEventId, input, signalName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SignalExternalWorkflowExecutionInitiatedEventAttributes")
	local t = { 
		["control"] = control,
		["workflowId"] = workflowId,
		["runId"] = runId,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
		["input"] = input,
		["signalName"] = signalName,
	}
	M.AssertSignalExternalWorkflowExecutionInitiatedEventAttributes(t)
	return t
end

local DecisionTask_keys = { "nextPageToken" = true, "previousStartedEventId" = true, "workflowExecution" = true, "startedEventId" = true, "workflowType" = true, "events" = true, "taskToken" = true, nil }

function M.AssertDecisionTask(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecisionTask to be of type 'table'")
	assert(struct["taskToken"], "Expected key taskToken to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	assert(struct["workflowExecution"], "Expected key workflowExecution to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["events"], "Expected key events to exist in table")
	if struct["nextPageToken"] then M.AssertPageToken(struct["nextPageToken"]) end
	if struct["previousStartedEventId"] then M.AssertEventId(struct["previousStartedEventId"]) end
	if struct["workflowExecution"] then M.AssertWorkflowExecution(struct["workflowExecution"]) end
	if struct["startedEventId"] then M.AssertEventId(struct["startedEventId"]) end
	if struct["workflowType"] then M.AssertWorkflowType(struct["workflowType"]) end
	if struct["events"] then M.AssertHistoryEventList(struct["events"]) end
	if struct["taskToken"] then M.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(DecisionTask_keys[k], "DecisionTask contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecisionTask
-- &lt;p&gt;A structure that represents a decision task. Decision tasks are sent to deciders in order for them to make decisions.&lt;/p&gt;
-- @param nextPageToken [PageToken] &lt;p&gt;If a &lt;code&gt;NextPageToken&lt;/code&gt; was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in &lt;code&gt;nextPageToken&lt;/code&gt;. Keep all other arguments unchanged.&lt;/p&gt; &lt;p&gt;The configured &lt;code&gt;maximumPageSize&lt;/code&gt; determines how many results can be returned in a single call.&lt;/p&gt;
-- @param previousStartedEventId [EventId] &lt;p&gt;The ID of the DecisionTaskStarted event of the previous decision task of this workflow execution that was processed by the decider. This can be used to determine the events in the history new since the last decision task received by the decider.&lt;/p&gt;
-- @param workflowExecution [WorkflowExecution] &lt;p&gt;The workflow execution for which this decision task was created.&lt;/p&gt;
-- @param startedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskStarted&lt;/code&gt; event recorded in the history.&lt;/p&gt;
-- @param workflowType [WorkflowType] &lt;p&gt;The type of the workflow execution for which this decision task was created.&lt;/p&gt;
-- @param events [HistoryEventList] &lt;p&gt;A paginated list of history events of the workflow execution. The decider uses this during the processing of the decision task.&lt;/p&gt;
-- @param taskToken [TaskToken] &lt;p&gt;The opaque string used as a handle on the task. This token is used by workers to communicate progress and response information back to the system about the task.&lt;/p&gt;
-- Required parameter: taskToken
-- Required parameter: startedEventId
-- Required parameter: workflowExecution
-- Required parameter: workflowType
-- Required parameter: events
function M.DecisionTask(nextPageToken, previousStartedEventId, workflowExecution, startedEventId, workflowType, events, taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecisionTask")
	local t = { 
		["nextPageToken"] = nextPageToken,
		["previousStartedEventId"] = previousStartedEventId,
		["workflowExecution"] = workflowExecution,
		["startedEventId"] = startedEventId,
		["workflowType"] = workflowType,
		["events"] = events,
		["taskToken"] = taskToken,
	}
	M.AssertDecisionTask(t)
	return t
end

local RequestCancelActivityTaskDecisionAttributes_keys = { "activityId" = true, nil }

function M.AssertRequestCancelActivityTaskDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestCancelActivityTaskDecisionAttributes to be of type 'table'")
	assert(struct["activityId"], "Expected key activityId to exist in table")
	if struct["activityId"] then M.AssertActivityId(struct["activityId"]) end
	for k,_ in pairs(struct) do
		assert(RequestCancelActivityTaskDecisionAttributes_keys[k], "RequestCancelActivityTaskDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestCancelActivityTaskDecisionAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;RequestCancelActivityTask&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;&lt;b&gt;Access Control&lt;/b&gt;&lt;/p&gt; &lt;p&gt;You can use IAM policies to control this decision's access to Amazon SWF resources as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;Use a &lt;code&gt;Resource&lt;/code&gt; element with the domain name to limit the action to only specified domains.&lt;/li&gt; &lt;li&gt;Use an &lt;code&gt;Action&lt;/code&gt; element to allow or deny permission to call this action.&lt;/li&gt; &lt;li&gt;You cannot use an IAM policy to constrain this action's parameters.&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's &lt;b&gt;cause&lt;/b&gt; parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/p&gt;
-- @param activityId [ActivityId] &lt;p&gt;The &lt;code&gt;activityId&lt;/code&gt; of the activity task to be canceled.&lt;/p&gt;
-- Required parameter: activityId
function M.RequestCancelActivityTaskDecisionAttributes(activityId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestCancelActivityTaskDecisionAttributes")
	local t = { 
		["activityId"] = activityId,
	}
	M.AssertRequestCancelActivityTaskDecisionAttributes(t)
	return t
end

local WorkflowExecutionFilter_keys = { "workflowId" = true, nil }

function M.AssertWorkflowExecutionFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionFilter to be of type 'table'")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	if struct["workflowId"] then M.AssertWorkflowId(struct["workflowId"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowExecutionFilter_keys[k], "WorkflowExecutionFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionFilter
-- &lt;p&gt;Used to filter the workflow executions in visibility APIs by their &lt;code&gt;workflowId&lt;/code&gt;.&lt;/p&gt;
-- @param workflowId [WorkflowId] &lt;p&gt;The workflowId to pass of match the criteria of this filter.&lt;/p&gt;
-- Required parameter: workflowId
function M.WorkflowExecutionFilter(workflowId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionFilter")
	local t = { 
		["workflowId"] = workflowId,
	}
	M.AssertWorkflowExecutionFilter(t)
	return t
end

local StartChildWorkflowExecutionInitiatedEventAttributes_keys = { "control" = true, "workflowId" = true, "taskList" = true, "taskStartToCloseTimeout" = true, "taskPriority" = true, "lambdaRole" = true, "childPolicy" = true, "decisionTaskCompletedEventId" = true, "executionStartToCloseTimeout" = true, "input" = true, "workflowType" = true, "tagList" = true, nil }

function M.AssertStartChildWorkflowExecutionInitiatedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartChildWorkflowExecutionInitiatedEventAttributes to be of type 'table'")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["taskList"], "Expected key taskList to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	assert(struct["childPolicy"], "Expected key childPolicy to exist in table")
	if struct["control"] then M.AssertData(struct["control"]) end
	if struct["workflowId"] then M.AssertWorkflowId(struct["workflowId"]) end
	if struct["taskList"] then M.AssertTaskList(struct["taskList"]) end
	if struct["taskStartToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["taskStartToCloseTimeout"]) end
	if struct["taskPriority"] then M.AssertTaskPriority(struct["taskPriority"]) end
	if struct["lambdaRole"] then M.AssertArn(struct["lambdaRole"]) end
	if struct["childPolicy"] then M.AssertChildPolicy(struct["childPolicy"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["executionStartToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["executionStartToCloseTimeout"]) end
	if struct["input"] then M.AssertData(struct["input"]) end
	if struct["workflowType"] then M.AssertWorkflowType(struct["workflowType"]) end
	if struct["tagList"] then M.AssertTagList(struct["tagList"]) end
	for k,_ in pairs(struct) do
		assert(StartChildWorkflowExecutionInitiatedEventAttributes_keys[k], "StartChildWorkflowExecutionInitiatedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartChildWorkflowExecutionInitiatedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;StartChildWorkflowExecutionInitiated&lt;/code&gt; event.&lt;/p&gt;
-- @param control [Data] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; Data attached to the event that can be used by the decider in subsequent decision tasks. This data is not sent to the activity.&lt;/p&gt;
-- @param workflowId [WorkflowId] &lt;p&gt;The &lt;code&gt;workflowId&lt;/code&gt; of the child workflow execution.&lt;/p&gt;
-- @param taskList [TaskList] &lt;p&gt;The name of the task list used for the decision tasks of the child workflow execution.&lt;/p&gt;
-- @param taskStartToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;The maximum duration allowed for the decision tasks for this workflow execution.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt;
-- @param taskPriority [TaskPriority] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; The priority assigned for the decision tasks for this workflow execution. Valid values are integers that range from Java's &lt;code&gt;Integer.MIN_VALUE&lt;/code&gt; (-2147483648) to &lt;code&gt;Integer.MAX_VALUE&lt;/code&gt; (2147483647). Higher numbers indicate higher priority.&lt;/p&gt; &lt;p&gt;For more information about setting task priority, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html&quot;&gt;Setting Task Priority&lt;/a&gt; in the &lt;i&gt;Amazon Simple Workflow Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param lambdaRole [Arn] &lt;p&gt;The IAM role attached to this workflow execution to use when invoking AWS Lambda functions.&lt;/p&gt;
-- @param childPolicy [ChildPolicy] &lt;p&gt;The policy to use for the child workflow executions if this execution gets terminated by explicitly calling the &lt;a&gt;TerminateWorkflowExecution&lt;/a&gt; action or due to an expired timeout.&lt;/p&gt; &lt;p&gt;The supported child policies are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;b&gt;TERMINATE:&lt;/b&gt; the child executions will be terminated.&lt;/li&gt; &lt;li&gt;&lt;b&gt;REQUEST_CANCEL:&lt;/b&gt; a request to cancel will be attempted for each child execution by recording a &lt;code&gt;WorkflowExecutionCancelRequested&lt;/code&gt; event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.&lt;/li&gt; &lt;li&gt;&lt;b&gt;ABANDON:&lt;/b&gt; no action will be taken. The child executions will continue to run.&lt;/li&gt; &lt;/ul&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision to request this child workflow execution. This information can be useful for diagnosing problems by tracing back the cause of events.&lt;/p&gt;
-- @param executionStartToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;The maximum duration for the child workflow execution. If the workflow execution is not closed within this duration, it will be timed out and force terminated.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt;
-- @param input [Data] &lt;p&gt;The inputs provided to the child workflow execution (if any).&lt;/p&gt;
-- @param workflowType [WorkflowType] &lt;p&gt;The type of the child workflow execution.&lt;/p&gt;
-- @param tagList [TagList] &lt;p&gt;The list of tags to associated with the child workflow execution.&lt;/p&gt;
-- Required parameter: workflowId
-- Required parameter: workflowType
-- Required parameter: taskList
-- Required parameter: decisionTaskCompletedEventId
-- Required parameter: childPolicy
function M.StartChildWorkflowExecutionInitiatedEventAttributes(control, workflowId, taskList, taskStartToCloseTimeout, taskPriority, lambdaRole, childPolicy, decisionTaskCompletedEventId, executionStartToCloseTimeout, input, workflowType, tagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartChildWorkflowExecutionInitiatedEventAttributes")
	local t = { 
		["control"] = control,
		["workflowId"] = workflowId,
		["taskList"] = taskList,
		["taskStartToCloseTimeout"] = taskStartToCloseTimeout,
		["taskPriority"] = taskPriority,
		["lambdaRole"] = lambdaRole,
		["childPolicy"] = childPolicy,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
		["executionStartToCloseTimeout"] = executionStartToCloseTimeout,
		["input"] = input,
		["workflowType"] = workflowType,
		["tagList"] = tagList,
	}
	M.AssertStartChildWorkflowExecutionInitiatedEventAttributes(t)
	return t
end

local ExternalWorkflowExecutionSignaledEventAttributes_keys = { "initiatedEventId" = true, "workflowExecution" = true, nil }

function M.AssertExternalWorkflowExecutionSignaledEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExternalWorkflowExecutionSignaledEventAttributes to be of type 'table'")
	assert(struct["workflowExecution"], "Expected key workflowExecution to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	if struct["initiatedEventId"] then M.AssertEventId(struct["initiatedEventId"]) end
	if struct["workflowExecution"] then M.AssertWorkflowExecution(struct["workflowExecution"]) end
	for k,_ in pairs(struct) do
		assert(ExternalWorkflowExecutionSignaledEventAttributes_keys[k], "ExternalWorkflowExecutionSignaledEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExternalWorkflowExecutionSignaledEventAttributes
-- &lt;p&gt; Provides details of the &lt;code&gt;ExternalWorkflowExecutionSignaled&lt;/code&gt; event.&lt;/p&gt;
-- @param initiatedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;SignalExternalWorkflowExecutionInitiated&lt;/code&gt; event corresponding to the &lt;code&gt;SignalExternalWorkflowExecution&lt;/code&gt; decision to request this signal. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param workflowExecution [WorkflowExecution] &lt;p&gt; The external workflow execution that the signal was delivered to.&lt;/p&gt;
-- Required parameter: workflowExecution
-- Required parameter: initiatedEventId
function M.ExternalWorkflowExecutionSignaledEventAttributes(initiatedEventId, workflowExecution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExternalWorkflowExecutionSignaledEventAttributes")
	local t = { 
		["initiatedEventId"] = initiatedEventId,
		["workflowExecution"] = workflowExecution,
	}
	M.AssertExternalWorkflowExecutionSignaledEventAttributes(t)
	return t
end

local DeprecateActivityTypeInput_keys = { "domain" = true, "activityType" = true, nil }

function M.AssertDeprecateActivityTypeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeprecateActivityTypeInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["activityType"], "Expected key activityType to exist in table")
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["activityType"] then M.AssertActivityType(struct["activityType"]) end
	for k,_ in pairs(struct) do
		assert(DeprecateActivityTypeInput_keys[k], "DeprecateActivityTypeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeprecateActivityTypeInput
--  
-- @param domain [DomainName] &lt;p&gt;The name of the domain in which the activity type is registered.&lt;/p&gt;
-- @param activityType [ActivityType] &lt;p&gt;The activity type to deprecate.&lt;/p&gt;
-- Required parameter: domain
-- Required parameter: activityType
function M.DeprecateActivityTypeInput(domain, activityType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeprecateActivityTypeInput")
	local t = { 
		["domain"] = domain,
		["activityType"] = activityType,
	}
	M.AssertDeprecateActivityTypeInput(t)
	return t
end

local RegisterActivityTypeInput_keys = { "domain" = true, "defaultTaskScheduleToStartTimeout" = true, "name" = true, "defaultTaskHeartbeatTimeout" = true, "defaultTaskPriority" = true, "defaultTaskStartToCloseTimeout" = true, "defaultTaskScheduleToCloseTimeout" = true, "version" = true, "defaultTaskList" = true, "description" = true, nil }

function M.AssertRegisterActivityTypeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterActivityTypeInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["defaultTaskScheduleToStartTimeout"] then M.AssertDurationInSecondsOptional(struct["defaultTaskScheduleToStartTimeout"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["defaultTaskHeartbeatTimeout"] then M.AssertDurationInSecondsOptional(struct["defaultTaskHeartbeatTimeout"]) end
	if struct["defaultTaskPriority"] then M.AssertTaskPriority(struct["defaultTaskPriority"]) end
	if struct["defaultTaskStartToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["defaultTaskStartToCloseTimeout"]) end
	if struct["defaultTaskScheduleToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["defaultTaskScheduleToCloseTimeout"]) end
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["defaultTaskList"] then M.AssertTaskList(struct["defaultTaskList"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(RegisterActivityTypeInput_keys[k], "RegisterActivityTypeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterActivityTypeInput
--  
-- @param domain [DomainName] &lt;p&gt;The name of the domain in which this activity is to be registered.&lt;/p&gt;
-- @param defaultTaskScheduleToStartTimeout [DurationInSecondsOptional] &lt;p&gt;If set, specifies the default maximum duration that a task of this activity type can wait before being assigned to a worker. This default can be overridden when scheduling an activity task using the &lt;code&gt;ScheduleActivityTask&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt;
-- @param name [Name] &lt;p&gt;The name of the activity type within the domain.&lt;/p&gt; &lt;p&gt;The specified string must not start or end with whitespace. It must not contain a &lt;code&gt;:&lt;/code&gt; (colon), &lt;code&gt;/&lt;/code&gt; (slash), &lt;code&gt;|&lt;/code&gt; (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.&lt;/p&gt;
-- @param defaultTaskHeartbeatTimeout [DurationInSecondsOptional] &lt;p&gt;If set, specifies the default maximum time before which a worker processing a task of this type must report progress by calling &lt;a&gt;RecordActivityTaskHeartbeat&lt;/a&gt;. If the timeout is exceeded, the activity task is automatically timed out. This default can be overridden when scheduling an activity task using the &lt;code&gt;ScheduleActivityTask&lt;/code&gt; decision. If the activity worker subsequently attempts to record a heartbeat or returns a result, the activity worker receives an &lt;code&gt;UnknownResource&lt;/code&gt; fault. In this case, Amazon SWF no longer considers the activity task to be valid; the activity worker should clean up the activity task.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt;
-- @param defaultTaskPriority [TaskPriority] &lt;p&gt;The default task priority to assign to the activity type. If not assigned, then &quot;0&quot; will be used. Valid values are integers that range from Java's &lt;code&gt;Integer.MIN_VALUE&lt;/code&gt; (-2147483648) to &lt;code&gt;Integer.MAX_VALUE&lt;/code&gt; (2147483647). Higher numbers indicate higher priority.&lt;/p&gt; &lt;p&gt;For more information about setting task priority, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html&quot;&gt;Setting Task Priority&lt;/a&gt; in the &lt;i&gt;Amazon Simple Workflow Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param defaultTaskStartToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;If set, specifies the default maximum duration that a worker can take to process tasks of this activity type. This default can be overridden when scheduling an activity task using the &lt;code&gt;ScheduleActivityTask&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt;
-- @param defaultTaskScheduleToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;If set, specifies the default maximum duration for a task of this activity type. This default can be overridden when scheduling an activity task using the &lt;code&gt;ScheduleActivityTask&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt;
-- @param version [Version] &lt;p&gt;The version of the activity type.&lt;/p&gt; &lt;note&gt;The activity type consists of the name and version, the combination of which must be unique within the domain.&lt;/note&gt; &lt;p&gt;The specified string must not start or end with whitespace. It must not contain a &lt;code&gt;:&lt;/code&gt; (colon), &lt;code&gt;/&lt;/code&gt; (slash), &lt;code&gt;|&lt;/code&gt; (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.&lt;/p&gt;
-- @param defaultTaskList [TaskList] &lt;p&gt;If set, specifies the default task list to use for scheduling tasks of this activity type. This default task list is used if a task list is not provided when a task is scheduled through the &lt;code&gt;ScheduleActivityTask&lt;/code&gt; decision.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A textual description of the activity type.&lt;/p&gt;
-- Required parameter: domain
-- Required parameter: name
-- Required parameter: version
function M.RegisterActivityTypeInput(domain, defaultTaskScheduleToStartTimeout, name, defaultTaskHeartbeatTimeout, defaultTaskPriority, defaultTaskStartToCloseTimeout, defaultTaskScheduleToCloseTimeout, version, defaultTaskList, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterActivityTypeInput")
	local t = { 
		["domain"] = domain,
		["defaultTaskScheduleToStartTimeout"] = defaultTaskScheduleToStartTimeout,
		["name"] = name,
		["defaultTaskHeartbeatTimeout"] = defaultTaskHeartbeatTimeout,
		["defaultTaskPriority"] = defaultTaskPriority,
		["defaultTaskStartToCloseTimeout"] = defaultTaskStartToCloseTimeout,
		["defaultTaskScheduleToCloseTimeout"] = defaultTaskScheduleToCloseTimeout,
		["version"] = version,
		["defaultTaskList"] = defaultTaskList,
		["description"] = description,
	}
	M.AssertRegisterActivityTypeInput(t)
	return t
end

local ContinueAsNewWorkflowExecutionDecisionAttributes_keys = { "taskList" = true, "taskStartToCloseTimeout" = true, "workflowTypeVersion" = true, "taskPriority" = true, "childPolicy" = true, "executionStartToCloseTimeout" = true, "input" = true, "lambdaRole" = true, "tagList" = true, nil }

function M.AssertContinueAsNewWorkflowExecutionDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContinueAsNewWorkflowExecutionDecisionAttributes to be of type 'table'")
	if struct["taskList"] then M.AssertTaskList(struct["taskList"]) end
	if struct["taskStartToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["taskStartToCloseTimeout"]) end
	if struct["workflowTypeVersion"] then M.AssertVersion(struct["workflowTypeVersion"]) end
	if struct["taskPriority"] then M.AssertTaskPriority(struct["taskPriority"]) end
	if struct["childPolicy"] then M.AssertChildPolicy(struct["childPolicy"]) end
	if struct["executionStartToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["executionStartToCloseTimeout"]) end
	if struct["input"] then M.AssertData(struct["input"]) end
	if struct["lambdaRole"] then M.AssertArn(struct["lambdaRole"]) end
	if struct["tagList"] then M.AssertTagList(struct["tagList"]) end
	for k,_ in pairs(struct) do
		assert(ContinueAsNewWorkflowExecutionDecisionAttributes_keys[k], "ContinueAsNewWorkflowExecutionDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContinueAsNewWorkflowExecutionDecisionAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;ContinueAsNewWorkflowExecution&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;&lt;b&gt;Access Control&lt;/b&gt;&lt;/p&gt; &lt;p&gt;You can use IAM policies to control this decision's access to Amazon SWF resources as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;Use a &lt;code&gt;Resource&lt;/code&gt; element with the domain name to limit the action to only specified domains.&lt;/li&gt; &lt;li&gt;Use an &lt;code&gt;Action&lt;/code&gt; element to allow or deny permission to call this action.&lt;/li&gt; &lt;li&gt;Constrain the following parameters by using a &lt;code&gt;Condition&lt;/code&gt; element with the appropriate keys. &lt;ul&gt; &lt;li&gt; &lt;code&gt;tag&lt;/code&gt;: &lt;i&gt;Optional.&lt;/i&gt;. A tag used to identify the workflow execution&lt;/li&gt; &lt;li&gt;&lt;code&gt;taskList&lt;/code&gt;: String constraint. The key is &lt;code&gt;swf:taskList.name&lt;/code&gt;.&lt;/li&gt; &lt;li&gt;&lt;code&gt;workflowType.version&lt;/code&gt;: String constraint. The key is &lt;code&gt;swf:workflowType.version&lt;/code&gt;.&lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's &lt;b&gt;cause&lt;/b&gt; parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/p&gt;
-- @param taskList [TaskList] &lt;p&gt;Provides details of the &lt;code&gt;ContinueAsNewWorkflowExecution&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;&lt;b&gt;Access Control&lt;/b&gt;&lt;/p&gt; &lt;p&gt;You can use IAM policies to control this decision's access to Amazon SWF resources as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;Use a &lt;code&gt;Resource&lt;/code&gt; element with the domain name to limit the action to only specified domains.&lt;/li&gt; &lt;li&gt;Use an &lt;code&gt;Action&lt;/code&gt; element to allow or deny permission to call this action.&lt;/li&gt; &lt;li&gt;Constrain the following parameters by using a &lt;code&gt;Condition&lt;/code&gt; element with the appropriate keys. &lt;ul&gt; &lt;li&gt; &lt;code&gt;tag&lt;/code&gt;: &lt;i&gt;Optional.&lt;/i&gt;. A tag used to identify the workflow execution&lt;/li&gt; &lt;li&gt;&lt;code&gt;taskList&lt;/code&gt;: String constraint. The key is &lt;code&gt;swf:taskList.name&lt;/code&gt;.&lt;/li&gt; &lt;li&gt;&lt;code&gt;workflowType.version&lt;/code&gt;: String constraint. The key is &lt;code&gt;swf:workflowType.version&lt;/code&gt;.&lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's &lt;b&gt;cause&lt;/b&gt; parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/p&gt;
-- @param taskStartToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;Specifies the maximum duration of decision tasks for the new workflow execution. This parameter overrides the &lt;code&gt;defaultTaskStartToCloseTimout&lt;/code&gt; specified when registering the workflow type using &lt;a&gt;RegisterWorkflowType&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt; &lt;note&gt;A task start-to-close timeout for the new workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task start-to-close timeout was specified at registration time then a fault will be returned.&lt;/note&gt;
-- @param workflowTypeVersion [Version] &lt;p&gt;Provides details of the &lt;code&gt;ContinueAsNewWorkflowExecution&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;&lt;b&gt;Access Control&lt;/b&gt;&lt;/p&gt; &lt;p&gt;You can use IAM policies to control this decision's access to Amazon SWF resources as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;Use a &lt;code&gt;Resource&lt;/code&gt; element with the domain name to limit the action to only specified domains.&lt;/li&gt; &lt;li&gt;Use an &lt;code&gt;Action&lt;/code&gt; element to allow or deny permission to call this action.&lt;/li&gt; &lt;li&gt;Constrain the following parameters by using a &lt;code&gt;Condition&lt;/code&gt; element with the appropriate keys. &lt;ul&gt; &lt;li&gt; &lt;code&gt;tag&lt;/code&gt;: &lt;i&gt;Optional.&lt;/i&gt;. A tag used to identify the workflow execution&lt;/li&gt; &lt;li&gt;&lt;code&gt;taskList&lt;/code&gt;: String constraint. The key is &lt;code&gt;swf:taskList.name&lt;/code&gt;.&lt;/li&gt; &lt;li&gt;&lt;code&gt;workflowType.version&lt;/code&gt;: String constraint. The key is &lt;code&gt;swf:workflowType.version&lt;/code&gt;.&lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's &lt;b&gt;cause&lt;/b&gt; parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/p&gt;
-- @param taskPriority [TaskPriority] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; The task priority that, if set, specifies the priority for the decision tasks for this workflow execution. This overrides the defaultTaskPriority specified when registering the workflow type. Valid values are integers that range from Java's &lt;code&gt;Integer.MIN_VALUE&lt;/code&gt; (-2147483648) to &lt;code&gt;Integer.MAX_VALUE&lt;/code&gt; (2147483647). Higher numbers indicate higher priority.&lt;/p&gt; &lt;p&gt;For more information about setting task priority, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html&quot;&gt;Setting Task Priority&lt;/a&gt; in the &lt;i&gt;Amazon Simple Workflow Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param childPolicy [ChildPolicy] &lt;p&gt;If set, specifies the policy to use for the child workflow executions of the new execution if it is terminated by calling the &lt;a&gt;TerminateWorkflowExecution&lt;/a&gt; action explicitly or due to an expired timeout. This policy overrides the default child policy specified when registering the workflow type using &lt;a&gt;RegisterWorkflowType&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;The supported child policies are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;b&gt;TERMINATE:&lt;/b&gt; the child executions will be terminated.&lt;/li&gt; &lt;li&gt;&lt;b&gt;REQUEST_CANCEL:&lt;/b&gt; a request to cancel will be attempted for each child execution by recording a &lt;code&gt;WorkflowExecutionCancelRequested&lt;/code&gt; event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.&lt;/li&gt; &lt;li&gt;&lt;b&gt;ABANDON:&lt;/b&gt; no action will be taken. The child executions will continue to run.&lt;/li&gt; &lt;/ul&gt; &lt;note&gt;A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault will be returned.&lt;/note&gt;
-- @param executionStartToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;If set, specifies the total duration for this workflow execution. This overrides the &lt;code&gt;defaultExecutionStartToCloseTimeout&lt;/code&gt; specified when registering the workflow type.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt; &lt;note&gt;An execution start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this field. If neither this field is set nor a default execution start-to-close timeout was specified at registration time then a fault will be returned.&lt;/note&gt;
-- @param input [Data] &lt;p&gt;The input provided to the new workflow execution.&lt;/p&gt;
-- @param lambdaRole [Arn] &lt;p&gt;The ARN of an IAM role that authorizes Amazon SWF to invoke AWS Lambda functions.&lt;/p&gt; &lt;note&gt;In order for this workflow execution to invoke AWS Lambda functions, an appropriate IAM role must be specified either as a default for the workflow type or through this field.&lt;/note&gt;
-- @param tagList [TagList] &lt;p&gt;The list of tags to associate with the new workflow execution. A maximum of 5 tags can be specified. You can list workflow executions with a specific tag by calling &lt;a&gt;ListOpenWorkflowExecutions&lt;/a&gt; or &lt;a&gt;ListClosedWorkflowExecutions&lt;/a&gt; and specifying a &lt;a&gt;TagFilter&lt;/a&gt;.&lt;/p&gt;
function M.ContinueAsNewWorkflowExecutionDecisionAttributes(taskList, taskStartToCloseTimeout, workflowTypeVersion, taskPriority, childPolicy, executionStartToCloseTimeout, input, lambdaRole, tagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ContinueAsNewWorkflowExecutionDecisionAttributes")
	local t = { 
		["taskList"] = taskList,
		["taskStartToCloseTimeout"] = taskStartToCloseTimeout,
		["workflowTypeVersion"] = workflowTypeVersion,
		["taskPriority"] = taskPriority,
		["childPolicy"] = childPolicy,
		["executionStartToCloseTimeout"] = executionStartToCloseTimeout,
		["input"] = input,
		["lambdaRole"] = lambdaRole,
		["tagList"] = tagList,
	}
	M.AssertContinueAsNewWorkflowExecutionDecisionAttributes(t)
	return t
end

local ActivityTypeConfiguration_keys = { "defaultTaskScheduleToStartTimeout" = true, "defaultTaskHeartbeatTimeout" = true, "defaultTaskPriority" = true, "defaultTaskStartToCloseTimeout" = true, "defaultTaskScheduleToCloseTimeout" = true, "defaultTaskList" = true, nil }

function M.AssertActivityTypeConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTypeConfiguration to be of type 'table'")
	if struct["defaultTaskScheduleToStartTimeout"] then M.AssertDurationInSecondsOptional(struct["defaultTaskScheduleToStartTimeout"]) end
	if struct["defaultTaskHeartbeatTimeout"] then M.AssertDurationInSecondsOptional(struct["defaultTaskHeartbeatTimeout"]) end
	if struct["defaultTaskPriority"] then M.AssertTaskPriority(struct["defaultTaskPriority"]) end
	if struct["defaultTaskStartToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["defaultTaskStartToCloseTimeout"]) end
	if struct["defaultTaskScheduleToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["defaultTaskScheduleToCloseTimeout"]) end
	if struct["defaultTaskList"] then M.AssertTaskList(struct["defaultTaskList"]) end
	for k,_ in pairs(struct) do
		assert(ActivityTypeConfiguration_keys[k], "ActivityTypeConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTypeConfiguration
-- &lt;p&gt;Configuration settings registered with the activity type.&lt;/p&gt;
-- @param defaultTaskScheduleToStartTimeout [DurationInSecondsOptional] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; The default maximum duration, specified when registering the activity type, that a task of an activity type can wait before being assigned to a worker. You can override this default when scheduling a task through the &lt;code&gt;ScheduleActivityTask&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt;
-- @param defaultTaskHeartbeatTimeout [DurationInSecondsOptional] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; The default maximum time, in seconds, before which a worker processing a task must report progress by calling &lt;a&gt;RecordActivityTaskHeartbeat&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;You can specify this value only when &lt;i&gt;registering&lt;/i&gt; an activity type. The registered default value can be overridden when you schedule a task through the &lt;code&gt;ScheduleActivityTask&lt;/code&gt; decision. If the activity worker subsequently attempts to record a heartbeat or returns a result, the activity worker receives an &lt;code&gt;UnknownResource&lt;/code&gt; fault. In this case, Amazon SWF no longer considers the activity task to be valid; the activity worker should clean up the activity task.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt;
-- @param defaultTaskPriority [TaskPriority] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; The default task priority for tasks of this activity type, specified at registration. If not set, then &quot;0&quot; will be used as the default priority. This default can be overridden when scheduling an activity task.&lt;/p&gt; &lt;p&gt;Valid values are integers that range from Java's &lt;code&gt;Integer.MIN_VALUE&lt;/code&gt; (-2147483648) to &lt;code&gt;Integer.MAX_VALUE&lt;/code&gt; (2147483647). Higher numbers indicate higher priority.&lt;/p&gt; &lt;p&gt;For more information about setting task priority, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html&quot;&gt;Setting Task Priority&lt;/a&gt; in the &lt;i&gt;Amazon Simple Workflow Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param defaultTaskStartToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; The default maximum duration for tasks of an activity type specified when registering the activity type. You can override this default when scheduling a task through the &lt;code&gt;ScheduleActivityTask&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt;
-- @param defaultTaskScheduleToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; The default maximum duration, specified when registering the activity type, for tasks of this activity type. You can override this default when scheduling a task through the &lt;code&gt;ScheduleActivityTask&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt;
-- @param defaultTaskList [TaskList] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; The default task list specified for this activity type at registration. This default is used if a task list is not provided when a task is scheduled through the &lt;code&gt;ScheduleActivityTask&lt;/code&gt; decision. You can override the default registered task list when scheduling a task through the &lt;code&gt;ScheduleActivityTask&lt;/code&gt; decision.&lt;/p&gt;
function M.ActivityTypeConfiguration(defaultTaskScheduleToStartTimeout, defaultTaskHeartbeatTimeout, defaultTaskPriority, defaultTaskStartToCloseTimeout, defaultTaskScheduleToCloseTimeout, defaultTaskList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTypeConfiguration")
	local t = { 
		["defaultTaskScheduleToStartTimeout"] = defaultTaskScheduleToStartTimeout,
		["defaultTaskHeartbeatTimeout"] = defaultTaskHeartbeatTimeout,
		["defaultTaskPriority"] = defaultTaskPriority,
		["defaultTaskStartToCloseTimeout"] = defaultTaskStartToCloseTimeout,
		["defaultTaskScheduleToCloseTimeout"] = defaultTaskScheduleToCloseTimeout,
		["defaultTaskList"] = defaultTaskList,
	}
	M.AssertActivityTypeConfiguration(t)
	return t
end

local StartTimerDecisionAttributes_keys = { "control" = true, "timerId" = true, "startToFireTimeout" = true, nil }

function M.AssertStartTimerDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartTimerDecisionAttributes to be of type 'table'")
	assert(struct["timerId"], "Expected key timerId to exist in table")
	assert(struct["startToFireTimeout"], "Expected key startToFireTimeout to exist in table")
	if struct["control"] then M.AssertData(struct["control"]) end
	if struct["timerId"] then M.AssertTimerId(struct["timerId"]) end
	if struct["startToFireTimeout"] then M.AssertDurationInSeconds(struct["startToFireTimeout"]) end
	for k,_ in pairs(struct) do
		assert(StartTimerDecisionAttributes_keys[k], "StartTimerDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartTimerDecisionAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;StartTimer&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;&lt;b&gt;Access Control&lt;/b&gt;&lt;/p&gt; &lt;p&gt;You can use IAM policies to control this decision's access to Amazon SWF resources as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;Use a &lt;code&gt;Resource&lt;/code&gt; element with the domain name to limit the action to only specified domains.&lt;/li&gt; &lt;li&gt;Use an &lt;code&gt;Action&lt;/code&gt; element to allow or deny permission to call this action.&lt;/li&gt; &lt;li&gt;You cannot use an IAM policy to constrain this action's parameters.&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's &lt;b&gt;cause&lt;/b&gt; parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/p&gt;
-- @param control [Data] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; Data attached to the event that can be used by the decider in subsequent workflow tasks.&lt;/p&gt;
-- @param timerId [TimerId] &lt;p&gt;&lt;b&gt;Required.&lt;/b&gt; The unique ID of the timer.&lt;/p&gt; &lt;p&gt;The specified string must not start or end with whitespace. It must not contain a &lt;code&gt;:&lt;/code&gt; (colon), &lt;code&gt;/&lt;/code&gt; (slash), &lt;code&gt;|&lt;/code&gt; (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.&lt;/p&gt;
-- @param startToFireTimeout [DurationInSeconds] &lt;p&gt;&lt;b&gt;Required.&lt;/b&gt; The duration to wait before firing the timer.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0.&lt;/p&gt;
-- Required parameter: timerId
-- Required parameter: startToFireTimeout
function M.StartTimerDecisionAttributes(control, timerId, startToFireTimeout, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartTimerDecisionAttributes")
	local t = { 
		["control"] = control,
		["timerId"] = timerId,
		["startToFireTimeout"] = startToFireTimeout,
	}
	M.AssertStartTimerDecisionAttributes(t)
	return t
end

local CountPendingActivityTasksInput_keys = { "domain" = true, "taskList" = true, nil }

function M.AssertCountPendingActivityTasksInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CountPendingActivityTasksInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["taskList"], "Expected key taskList to exist in table")
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["taskList"] then M.AssertTaskList(struct["taskList"]) end
	for k,_ in pairs(struct) do
		assert(CountPendingActivityTasksInput_keys[k], "CountPendingActivityTasksInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CountPendingActivityTasksInput
--  
-- @param domain [DomainName] &lt;p&gt;The name of the domain that contains the task list.&lt;/p&gt;
-- @param taskList [TaskList] &lt;p&gt;The name of the task list.&lt;/p&gt;
-- Required parameter: domain
-- Required parameter: taskList
function M.CountPendingActivityTasksInput(domain, taskList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CountPendingActivityTasksInput")
	local t = { 
		["domain"] = domain,
		["taskList"] = taskList,
	}
	M.AssertCountPendingActivityTasksInput(t)
	return t
end

local DeprecateDomainInput_keys = { "name" = true, nil }

function M.AssertDeprecateDomainInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeprecateDomainInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then M.AssertDomainName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(DeprecateDomainInput_keys[k], "DeprecateDomainInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeprecateDomainInput
--  
-- @param name [DomainName] &lt;p&gt;The name of the domain to deprecate.&lt;/p&gt;
-- Required parameter: name
function M.DeprecateDomainInput(name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeprecateDomainInput")
	local t = { 
		["name"] = name,
	}
	M.AssertDeprecateDomainInput(t)
	return t
end

local RequestCancelExternalWorkflowExecutionFailedEventAttributes_keys = { "control" = true, "workflowId" = true, "initiatedEventId" = true, "runId" = true, "decisionTaskCompletedEventId" = true, "cause" = true, nil }

function M.AssertRequestCancelExternalWorkflowExecutionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestCancelExternalWorkflowExecutionFailedEventAttributes to be of type 'table'")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["control"] then M.AssertData(struct["control"]) end
	if struct["workflowId"] then M.AssertWorkflowId(struct["workflowId"]) end
	if struct["initiatedEventId"] then M.AssertEventId(struct["initiatedEventId"]) end
	if struct["runId"] then M.AssertRunIdOptional(struct["runId"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["cause"] then M.AssertRequestCancelExternalWorkflowExecutionFailedCause(struct["cause"]) end
	for k,_ in pairs(struct) do
		assert(RequestCancelExternalWorkflowExecutionFailedEventAttributes_keys[k], "RequestCancelExternalWorkflowExecutionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestCancelExternalWorkflowExecutionFailedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;RequestCancelExternalWorkflowExecutionFailed&lt;/code&gt; event.&lt;/p&gt;
-- @param control [Data] &lt;p&gt;Provides details of the &lt;code&gt;RequestCancelExternalWorkflowExecutionFailed&lt;/code&gt; event.&lt;/p&gt;
-- @param workflowId [WorkflowId] &lt;p&gt;The &lt;code&gt;workflowId&lt;/code&gt; of the external workflow to which the cancel request was to be delivered.&lt;/p&gt;
-- @param initiatedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;RequestCancelExternalWorkflowExecutionInitiated&lt;/code&gt; event corresponding to the &lt;code&gt;RequestCancelExternalWorkflowExecution&lt;/code&gt; decision to cancel this external workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param runId [RunIdOptional] &lt;p&gt;The &lt;code&gt;runId&lt;/code&gt; of the external workflow execution.&lt;/p&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;RequestCancelExternalWorkflowExecution&lt;/code&gt; decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param cause [RequestCancelExternalWorkflowExecutionFailedCause] &lt;p&gt;The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.&lt;/p&gt; &lt;note&gt;If &lt;b&gt;cause&lt;/b&gt; is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/note&gt;
-- Required parameter: workflowId
-- Required parameter: cause
-- Required parameter: initiatedEventId
-- Required parameter: decisionTaskCompletedEventId
function M.RequestCancelExternalWorkflowExecutionFailedEventAttributes(control, workflowId, initiatedEventId, runId, decisionTaskCompletedEventId, cause, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestCancelExternalWorkflowExecutionFailedEventAttributes")
	local t = { 
		["control"] = control,
		["workflowId"] = workflowId,
		["initiatedEventId"] = initiatedEventId,
		["runId"] = runId,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
		["cause"] = cause,
	}
	M.AssertRequestCancelExternalWorkflowExecutionFailedEventAttributes(t)
	return t
end

local RegisterWorkflowTypeInput_keys = { "defaultExecutionStartToCloseTimeout" = true, "domain" = true, "name" = true, "defaultTaskPriority" = true, "defaultTaskStartToCloseTimeout" = true, "defaultChildPolicy" = true, "version" = true, "defaultLambdaRole" = true, "defaultTaskList" = true, "description" = true, nil }

function M.AssertRegisterWorkflowTypeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterWorkflowTypeInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["defaultExecutionStartToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["defaultExecutionStartToCloseTimeout"]) end
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["defaultTaskPriority"] then M.AssertTaskPriority(struct["defaultTaskPriority"]) end
	if struct["defaultTaskStartToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["defaultTaskStartToCloseTimeout"]) end
	if struct["defaultChildPolicy"] then M.AssertChildPolicy(struct["defaultChildPolicy"]) end
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["defaultLambdaRole"] then M.AssertArn(struct["defaultLambdaRole"]) end
	if struct["defaultTaskList"] then M.AssertTaskList(struct["defaultTaskList"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(RegisterWorkflowTypeInput_keys[k], "RegisterWorkflowTypeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterWorkflowTypeInput
--  
-- @param defaultExecutionStartToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;If set, specifies the default maximum duration for executions of this workflow type. You can override this default when starting an execution through the &lt;a&gt;StartWorkflowExecution&lt;/a&gt; action or &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. Unlike some of the other timeout parameters in Amazon SWF, you cannot specify a value of &quot;NONE&quot; for &lt;code&gt;defaultExecutionStartToCloseTimeout&lt;/code&gt;; there is a one-year max limit on the time that a workflow execution can run. Exceeding this limit will always cause the workflow execution to time out.&lt;/p&gt;
-- @param domain [DomainName] &lt;p&gt;The name of the domain in which to register the workflow type.&lt;/p&gt;
-- @param name [Name] &lt;p&gt;The name of the workflow type.&lt;/p&gt; &lt;p&gt;The specified string must not start or end with whitespace. It must not contain a &lt;code&gt;:&lt;/code&gt; (colon), &lt;code&gt;/&lt;/code&gt; (slash), &lt;code&gt;|&lt;/code&gt; (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.&lt;/p&gt;
-- @param defaultTaskPriority [TaskPriority] &lt;p&gt;The default task priority to assign to the workflow type. If not assigned, then &quot;0&quot; will be used. Valid values are integers that range from Java's &lt;code&gt;Integer.MIN_VALUE&lt;/code&gt; (-2147483648) to &lt;code&gt;Integer.MAX_VALUE&lt;/code&gt; (2147483647). Higher numbers indicate higher priority.&lt;/p&gt; &lt;p&gt;For more information about setting task priority, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html&quot;&gt;Setting Task Priority&lt;/a&gt; in the &lt;i&gt;Amazon Simple Workflow Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param defaultTaskStartToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;If set, specifies the default maximum duration of decision tasks for this workflow type. This default can be overridden when starting a workflow execution using the &lt;a&gt;StartWorkflowExecution&lt;/a&gt; action or the &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt;
-- @param defaultChildPolicy [ChildPolicy] &lt;p&gt;If set, specifies the default policy to use for the child workflow executions when a workflow execution of this type is terminated, by calling the &lt;a&gt;TerminateWorkflowExecution&lt;/a&gt; action explicitly or due to an expired timeout. This default can be overridden when starting a workflow execution using the &lt;a&gt;StartWorkflowExecution&lt;/a&gt; action or the &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;The supported child policies are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;b&gt;TERMINATE:&lt;/b&gt; the child executions will be terminated.&lt;/li&gt; &lt;li&gt;&lt;b&gt;REQUEST_CANCEL:&lt;/b&gt; a request to cancel will be attempted for each child execution by recording a &lt;code&gt;WorkflowExecutionCancelRequested&lt;/code&gt; event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.&lt;/li&gt; &lt;li&gt;&lt;b&gt;ABANDON:&lt;/b&gt; no action will be taken. The child executions will continue to run.&lt;/li&gt; &lt;/ul&gt;
-- @param version [Version] &lt;p&gt;The version of the workflow type.&lt;/p&gt; &lt;note&gt;The workflow type consists of the name and version, the combination of which must be unique within the domain. To get a list of all currently registered workflow types, use the &lt;a&gt;ListWorkflowTypes&lt;/a&gt; action.&lt;/note&gt; &lt;p&gt;The specified string must not start or end with whitespace. It must not contain a &lt;code&gt;:&lt;/code&gt; (colon), &lt;code&gt;/&lt;/code&gt; (slash), &lt;code&gt;|&lt;/code&gt; (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.&lt;/p&gt;
-- @param defaultLambdaRole [Arn] &lt;p&gt;The ARN of the default IAM role to use when a workflow execution of this type invokes AWS Lambda functions.&lt;/p&gt; &lt;p&gt;This default can be overridden when starting a workflow execution using the &lt;a&gt;StartWorkflowExecution&lt;/a&gt; action or the &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; and &lt;code&gt;ContinueAsNewWorkflowExecution&lt;/code&gt; decision.&lt;/p&gt;
-- @param defaultTaskList [TaskList] &lt;p&gt;If set, specifies the default task list to use for scheduling decision tasks for executions of this workflow type. This default is used only if a task list is not provided when starting the execution through the &lt;a&gt;StartWorkflowExecution&lt;/a&gt; action or &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;Textual description of the workflow type.&lt;/p&gt;
-- Required parameter: domain
-- Required parameter: name
-- Required parameter: version
function M.RegisterWorkflowTypeInput(defaultExecutionStartToCloseTimeout, domain, name, defaultTaskPriority, defaultTaskStartToCloseTimeout, defaultChildPolicy, version, defaultLambdaRole, defaultTaskList, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterWorkflowTypeInput")
	local t = { 
		["defaultExecutionStartToCloseTimeout"] = defaultExecutionStartToCloseTimeout,
		["domain"] = domain,
		["name"] = name,
		["defaultTaskPriority"] = defaultTaskPriority,
		["defaultTaskStartToCloseTimeout"] = defaultTaskStartToCloseTimeout,
		["defaultChildPolicy"] = defaultChildPolicy,
		["version"] = version,
		["defaultLambdaRole"] = defaultLambdaRole,
		["defaultTaskList"] = defaultTaskList,
		["description"] = description,
	}
	M.AssertRegisterWorkflowTypeInput(t)
	return t
end

local RespondActivityTaskFailedInput_keys = { "reason" = true, "details" = true, "taskToken" = true, nil }

function M.AssertRespondActivityTaskFailedInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RespondActivityTaskFailedInput to be of type 'table'")
	assert(struct["taskToken"], "Expected key taskToken to exist in table")
	if struct["reason"] then M.AssertFailureReason(struct["reason"]) end
	if struct["details"] then M.AssertData(struct["details"]) end
	if struct["taskToken"] then M.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(RespondActivityTaskFailedInput_keys[k], "RespondActivityTaskFailedInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RespondActivityTaskFailedInput
--  
-- @param reason [FailureReason] &lt;p&gt;Description of the error that may assist in diagnostics.&lt;/p&gt;
-- @param details [Data] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; Detailed information about the failure.&lt;/p&gt;
-- @param taskToken [TaskToken] &lt;p&gt;The &lt;code&gt;taskToken&lt;/code&gt; of the &lt;a&gt;ActivityTask&lt;/a&gt;.&lt;/p&gt; &lt;important&gt; &lt;code&gt;taskToken&lt;/code&gt; is generated by the service and should be treated as an opaque value. If the task is passed to another process, its &lt;code&gt;taskToken&lt;/code&gt; must also be passed. This enables it to provide its progress and respond with results.&lt;/important&gt;
-- Required parameter: taskToken
function M.RespondActivityTaskFailedInput(reason, details, taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RespondActivityTaskFailedInput")
	local t = { 
		["reason"] = reason,
		["details"] = details,
		["taskToken"] = taskToken,
	}
	M.AssertRespondActivityTaskFailedInput(t)
	return t
end

local ActivityType_keys = { "version" = true, "name" = true, nil }

function M.AssertActivityType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityType to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(ActivityType_keys[k], "ActivityType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityType
-- &lt;p&gt;Represents an activity type.&lt;/p&gt;
-- @param version [Version] &lt;p&gt;The version of this activity.&lt;/p&gt; &lt;note&gt;The combination of activity type name and version must be unique with in a domain.&lt;/note&gt;
-- @param name [Name] &lt;p&gt;The name of this activity.&lt;/p&gt; &lt;note&gt;The combination of activity type name and version must be unique within a domain.&lt;/note&gt;
-- Required parameter: name
-- Required parameter: version
function M.ActivityType(version, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityType")
	local t = { 
		["version"] = version,
		["name"] = name,
	}
	M.AssertActivityType(t)
	return t
end

local TerminateWorkflowExecutionInput_keys = { "domain" = true, "workflowId" = true, "reason" = true, "childPolicy" = true, "details" = true, "runId" = true, nil }

function M.AssertTerminateWorkflowExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TerminateWorkflowExecutionInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["workflowId"] then M.AssertWorkflowId(struct["workflowId"]) end
	if struct["reason"] then M.AssertTerminateReason(struct["reason"]) end
	if struct["childPolicy"] then M.AssertChildPolicy(struct["childPolicy"]) end
	if struct["details"] then M.AssertData(struct["details"]) end
	if struct["runId"] then M.AssertRunIdOptional(struct["runId"]) end
	for k,_ in pairs(struct) do
		assert(TerminateWorkflowExecutionInput_keys[k], "TerminateWorkflowExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TerminateWorkflowExecutionInput
--  
-- @param domain [DomainName] &lt;p&gt;The domain of the workflow execution to terminate.&lt;/p&gt;
-- @param workflowId [WorkflowId] &lt;p&gt;The workflowId of the workflow execution to terminate.&lt;/p&gt;
-- @param reason [TerminateReason] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; A descriptive reason for terminating the workflow execution.&lt;/p&gt;
-- @param childPolicy [ChildPolicy] &lt;p&gt;If set, specifies the policy to use for the child workflow executions of the workflow execution being terminated. This policy overrides the child policy specified for the workflow execution at registration time or when starting the execution.&lt;/p&gt; &lt;p&gt;The supported child policies are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;b&gt;TERMINATE:&lt;/b&gt; the child executions will be terminated.&lt;/li&gt; &lt;li&gt;&lt;b&gt;REQUEST_CANCEL:&lt;/b&gt; a request to cancel will be attempted for each child execution by recording a &lt;code&gt;WorkflowExecutionCancelRequested&lt;/code&gt; event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.&lt;/li&gt; &lt;li&gt;&lt;b&gt;ABANDON:&lt;/b&gt; no action will be taken. The child executions will continue to run.&lt;/li&gt; &lt;/ul&gt; &lt;note&gt;A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault will be returned.&lt;/note&gt;
-- @param details [Data] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; Details for terminating the workflow execution.&lt;/p&gt;
-- @param runId [RunIdOptional] &lt;p&gt;The runId of the workflow execution to terminate.&lt;/p&gt;
-- Required parameter: domain
-- Required parameter: workflowId
function M.TerminateWorkflowExecutionInput(domain, workflowId, reason, childPolicy, details, runId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TerminateWorkflowExecutionInput")
	local t = { 
		["domain"] = domain,
		["workflowId"] = workflowId,
		["reason"] = reason,
		["childPolicy"] = childPolicy,
		["details"] = details,
		["runId"] = runId,
	}
	M.AssertTerminateWorkflowExecutionInput(t)
	return t
end

local ActivityTask_keys = { "activityType" = true, "workflowExecution" = true, "startedEventId" = true, "activityId" = true, "input" = true, "taskToken" = true, nil }

function M.AssertActivityTask(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTask to be of type 'table'")
	assert(struct["taskToken"], "Expected key taskToken to exist in table")
	assert(struct["activityId"], "Expected key activityId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	assert(struct["workflowExecution"], "Expected key workflowExecution to exist in table")
	assert(struct["activityType"], "Expected key activityType to exist in table")
	if struct["activityType"] then M.AssertActivityType(struct["activityType"]) end
	if struct["workflowExecution"] then M.AssertWorkflowExecution(struct["workflowExecution"]) end
	if struct["startedEventId"] then M.AssertEventId(struct["startedEventId"]) end
	if struct["activityId"] then M.AssertActivityId(struct["activityId"]) end
	if struct["input"] then M.AssertData(struct["input"]) end
	if struct["taskToken"] then M.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(ActivityTask_keys[k], "ActivityTask contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTask
-- &lt;p&gt;Unit of work sent to an activity worker.&lt;/p&gt;
-- @param activityType [ActivityType] &lt;p&gt;The type of this activity task.&lt;/p&gt;
-- @param workflowExecution [WorkflowExecution] &lt;p&gt;The workflow execution that started this activity task.&lt;/p&gt;
-- @param startedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;ActivityTaskStarted&lt;/code&gt; event recorded in the history.&lt;/p&gt;
-- @param activityId [ActivityId] &lt;p&gt;The unique ID of the task.&lt;/p&gt;
-- @param input [Data] &lt;p&gt;The inputs provided when the activity task was scheduled. The form of the input is user defined and should be meaningful to the activity implementation.&lt;/p&gt;
-- @param taskToken [TaskToken] &lt;p&gt;The opaque string used as a handle on the task. This token is used by workers to communicate progress and response information back to the system about the task.&lt;/p&gt;
-- Required parameter: taskToken
-- Required parameter: activityId
-- Required parameter: startedEventId
-- Required parameter: workflowExecution
-- Required parameter: activityType
function M.ActivityTask(activityType, workflowExecution, startedEventId, activityId, input, taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTask")
	local t = { 
		["activityType"] = activityType,
		["workflowExecution"] = workflowExecution,
		["startedEventId"] = startedEventId,
		["activityId"] = activityId,
		["input"] = input,
		["taskToken"] = taskToken,
	}
	M.AssertActivityTask(t)
	return t
end

local ChildWorkflowExecutionStartedEventAttributes_keys = { "workflowType" = true, "initiatedEventId" = true, "workflowExecution" = true, nil }

function M.AssertChildWorkflowExecutionStartedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChildWorkflowExecutionStartedEventAttributes to be of type 'table'")
	assert(struct["workflowExecution"], "Expected key workflowExecution to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	if struct["workflowType"] then M.AssertWorkflowType(struct["workflowType"]) end
	if struct["initiatedEventId"] then M.AssertEventId(struct["initiatedEventId"]) end
	if struct["workflowExecution"] then M.AssertWorkflowExecution(struct["workflowExecution"]) end
	for k,_ in pairs(struct) do
		assert(ChildWorkflowExecutionStartedEventAttributes_keys[k], "ChildWorkflowExecutionStartedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChildWorkflowExecutionStartedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;ChildWorkflowExecutionStarted&lt;/code&gt; event.&lt;/p&gt;
-- @param workflowType [WorkflowType] &lt;p&gt;The type of the child workflow execution. &lt;/p&gt;
-- @param initiatedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;StartChildWorkflowExecutionInitiated&lt;/code&gt; event corresponding to the &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param workflowExecution [WorkflowExecution] &lt;p&gt;The child workflow execution that was started.&lt;/p&gt;
-- Required parameter: workflowExecution
-- Required parameter: workflowType
-- Required parameter: initiatedEventId
function M.ChildWorkflowExecutionStartedEventAttributes(workflowType, initiatedEventId, workflowExecution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChildWorkflowExecutionStartedEventAttributes")
	local t = { 
		["workflowType"] = workflowType,
		["initiatedEventId"] = initiatedEventId,
		["workflowExecution"] = workflowExecution,
	}
	M.AssertChildWorkflowExecutionStartedEventAttributes(t)
	return t
end

local Decision_keys = { "scheduleActivityTaskDecisionAttributes" = true, "cancelWorkflowExecutionDecisionAttributes" = true, "cancelTimerDecisionAttributes" = true, "scheduleLambdaFunctionDecisionAttributes" = true, "signalExternalWorkflowExecutionDecisionAttributes" = true, "failWorkflowExecutionDecisionAttributes" = true, "recordMarkerDecisionAttributes" = true, "requestCancelActivityTaskDecisionAttributes" = true, "completeWorkflowExecutionDecisionAttributes" = true, "startTimerDecisionAttributes" = true, "requestCancelExternalWorkflowExecutionDecisionAttributes" = true, "continueAsNewWorkflowExecutionDecisionAttributes" = true, "decisionType" = true, "startChildWorkflowExecutionDecisionAttributes" = true, nil }

function M.AssertDecision(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Decision to be of type 'table'")
	assert(struct["decisionType"], "Expected key decisionType to exist in table")
	if struct["scheduleActivityTaskDecisionAttributes"] then M.AssertScheduleActivityTaskDecisionAttributes(struct["scheduleActivityTaskDecisionAttributes"]) end
	if struct["cancelWorkflowExecutionDecisionAttributes"] then M.AssertCancelWorkflowExecutionDecisionAttributes(struct["cancelWorkflowExecutionDecisionAttributes"]) end
	if struct["cancelTimerDecisionAttributes"] then M.AssertCancelTimerDecisionAttributes(struct["cancelTimerDecisionAttributes"]) end
	if struct["scheduleLambdaFunctionDecisionAttributes"] then M.AssertScheduleLambdaFunctionDecisionAttributes(struct["scheduleLambdaFunctionDecisionAttributes"]) end
	if struct["signalExternalWorkflowExecutionDecisionAttributes"] then M.AssertSignalExternalWorkflowExecutionDecisionAttributes(struct["signalExternalWorkflowExecutionDecisionAttributes"]) end
	if struct["failWorkflowExecutionDecisionAttributes"] then M.AssertFailWorkflowExecutionDecisionAttributes(struct["failWorkflowExecutionDecisionAttributes"]) end
	if struct["recordMarkerDecisionAttributes"] then M.AssertRecordMarkerDecisionAttributes(struct["recordMarkerDecisionAttributes"]) end
	if struct["requestCancelActivityTaskDecisionAttributes"] then M.AssertRequestCancelActivityTaskDecisionAttributes(struct["requestCancelActivityTaskDecisionAttributes"]) end
	if struct["completeWorkflowExecutionDecisionAttributes"] then M.AssertCompleteWorkflowExecutionDecisionAttributes(struct["completeWorkflowExecutionDecisionAttributes"]) end
	if struct["startTimerDecisionAttributes"] then M.AssertStartTimerDecisionAttributes(struct["startTimerDecisionAttributes"]) end
	if struct["requestCancelExternalWorkflowExecutionDecisionAttributes"] then M.AssertRequestCancelExternalWorkflowExecutionDecisionAttributes(struct["requestCancelExternalWorkflowExecutionDecisionAttributes"]) end
	if struct["continueAsNewWorkflowExecutionDecisionAttributes"] then M.AssertContinueAsNewWorkflowExecutionDecisionAttributes(struct["continueAsNewWorkflowExecutionDecisionAttributes"]) end
	if struct["decisionType"] then M.AssertDecisionType(struct["decisionType"]) end
	if struct["startChildWorkflowExecutionDecisionAttributes"] then M.AssertStartChildWorkflowExecutionDecisionAttributes(struct["startChildWorkflowExecutionDecisionAttributes"]) end
	for k,_ in pairs(struct) do
		assert(Decision_keys[k], "Decision contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Decision
-- &lt;p&gt;Specifies a decision made by the decider. A decision can be one of these types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;b&gt;CancelTimer&lt;/b&gt;: cancels a previously started timer and records a &lt;code&gt;TimerCanceled&lt;/code&gt; event in the history.&lt;/li&gt; &lt;li&gt; &lt;b&gt;CancelWorkflowExecution&lt;/b&gt;: closes the workflow execution and records a &lt;code&gt;WorkflowExecutionCanceled&lt;/code&gt; event in the history.&lt;/li&gt; &lt;li&gt; &lt;b&gt;CompleteWorkflowExecution&lt;/b&gt;: closes the workflow execution and records a &lt;code&gt;WorkflowExecutionCompleted&lt;/code&gt; event in the history .&lt;/li&gt; &lt;li&gt; &lt;b&gt;ContinueAsNewWorkflowExecution&lt;/b&gt;: closes the workflow execution and starts a new workflow execution of the same type using the same workflow ID and a unique run ID. A &lt;code&gt;WorkflowExecutionContinuedAsNew&lt;/code&gt; event is recorded in the history.&lt;/li&gt; &lt;li&gt; &lt;b&gt;FailWorkflowExecution&lt;/b&gt;: closes the workflow execution and records a &lt;code&gt;WorkflowExecutionFailed&lt;/code&gt; event in the history.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RecordMarker&lt;/b&gt;: records a &lt;code&gt;MarkerRecorded&lt;/code&gt; event in the history. Markers can be used for adding custom information in the history for instance to let deciders know that they do not need to look at the history beyond the marker event.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelActivityTask&lt;/b&gt;: attempts to cancel a previously scheduled activity task. If the activity task was scheduled but has not been assigned to a worker, then it will be canceled. If the activity task was already assigned to a worker, then the worker will be informed that cancellation has been requested in the response to &lt;a&gt;RecordActivityTaskHeartbeat&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelExternalWorkflowExecution&lt;/b&gt;: requests that a request be made to cancel the specified external workflow execution and records a &lt;code&gt;RequestCancelExternalWorkflowExecutionInitiated&lt;/code&gt; event in the history.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleActivityTask&lt;/b&gt;: schedules an activity task.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleLambdaFunction&lt;/b&gt;: schedules a AWS Lambda function.&lt;/li&gt; &lt;li&gt; &lt;b&gt;SignalExternalWorkflowExecution&lt;/b&gt;: requests a signal to be delivered to the specified external workflow execution and records a &lt;code&gt;SignalExternalWorkflowExecutionInitiated&lt;/code&gt; event in the history.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartChildWorkflowExecution&lt;/b&gt;: requests that a child workflow execution be started and records a &lt;code&gt;StartChildWorkflowExecutionInitiated&lt;/code&gt; event in the history. The child workflow execution is a separate workflow execution with its own history.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartTimer&lt;/b&gt;: starts a timer for this workflow execution and records a &lt;code&gt;TimerStarted&lt;/code&gt; event in the history. This timer will fire after the specified delay and record a &lt;code&gt;TimerFired&lt;/code&gt; event.&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;&lt;b&gt;Access Control&lt;/b&gt;&lt;/p&gt; &lt;p&gt;If you grant permission to use &lt;code&gt;RespondDecisionTaskCompleted&lt;/code&gt;, you can use IAM policies to express permissions for the list of decisions returned by this action as if they were members of the API. Treating decisions as a pseudo API maintains a uniform conceptual model and helps keep policies readable. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;&lt;b&gt;Decision Failure&lt;/b&gt;&lt;/p&gt; &lt;p&gt;Decisions can fail for several reasons&lt;/p&gt; &lt;ul&gt; &lt;li&gt;The ordering of decisions should follow a logical flow. Some decisions might not make sense in the current context of the workflow execution and will therefore fail.&lt;/li&gt; &lt;li&gt;A limit on your account was reached.&lt;/li&gt; &lt;li&gt;The decision lacks sufficient permissions.&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;One of the following events might be added to the history to indicate an error. The event attribute's &lt;b&gt;cause&lt;/b&gt; parameter indicates the cause. If &lt;b&gt;cause&lt;/b&gt; is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;b&gt;ScheduleActivityTaskFailed&lt;/b&gt;: a ScheduleActivityTask decision failed. This could happen if the activity type specified in the decision is not registered, is in a deprecated state, or the decision is not properly configured.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleLambdaFunctionFailed&lt;/b&gt;: a ScheduleLambdaFunctionFailed decision failed. This could happen if the AWS Lambda function specified in the decision does not exist, or the AWS Lambda service's limits are exceeded.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelActivityTaskFailed&lt;/b&gt;: a RequestCancelActivityTask decision failed. This could happen if there is no open activity task with the specified activityId.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartTimerFailed&lt;/b&gt;: a StartTimer decision failed. This could happen if there is another open timer with the same timerId.&lt;/li&gt; &lt;li&gt; &lt;b&gt;CancelTimerFailed&lt;/b&gt;: a CancelTimer decision failed. This could happen if there is no open timer with the specified timerId.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartChildWorkflowExecutionFailed&lt;/b&gt;: a StartChildWorkflowExecution decision failed. This could happen if the workflow type specified is not registered, is deprecated, or the decision is not properly configured.&lt;/li&gt; &lt;li&gt; &lt;b&gt;SignalExternalWorkflowExecutionFailed&lt;/b&gt;: a SignalExternalWorkflowExecution decision failed. This could happen if the &lt;code&gt;workflowID&lt;/code&gt; specified in the decision was incorrect.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelExternalWorkflowExecutionFailed&lt;/b&gt;: a RequestCancelExternalWorkflowExecution decision failed. This could happen if the &lt;code&gt;workflowID&lt;/code&gt; specified in the decision was incorrect.&lt;/li&gt; &lt;li&gt; &lt;b&gt;CancelWorkflowExecutionFailed&lt;/b&gt;: a CancelWorkflowExecution decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;CompleteWorkflowExecutionFailed&lt;/b&gt;: a CompleteWorkflowExecution decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ContinueAsNewWorkflowExecutionFailed&lt;/b&gt;: a ContinueAsNewWorkflowExecution decision failed. This could happen if there is an unhandled decision task pending in the workflow execution or the ContinueAsNewWorkflowExecution decision was not configured correctly.&lt;/li&gt; &lt;li&gt; &lt;b&gt;FailWorkflowExecutionFailed&lt;/b&gt;: a FailWorkflowExecution decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The preceding error events might occur due to an error in the decider logic, which might put the workflow execution in an unstable state The cause field in the event structure for the error event indicates the cause of the error.&lt;/p&gt; &lt;note&gt;A workflow execution may be closed by the decider by returning one of the following decisions when completing a decision task: &lt;code&gt;CompleteWorkflowExecution&lt;/code&gt;, &lt;code&gt;FailWorkflowExecution&lt;/code&gt;, &lt;code&gt;CancelWorkflowExecution&lt;/code&gt; and &lt;code&gt;ContinueAsNewWorkflowExecution&lt;/code&gt;. An UnhandledDecision fault will be returned if a workflow closing decision is specified and a signal or activity event had been added to the history while the decision task was being performed by the decider. Unlike the above situations which are logic issues, this fault is always possible because of race conditions in a distributed system. The right action here is to call &lt;a&gt;RespondDecisionTaskCompleted&lt;/a&gt; without any decisions. This would result in another decision task with these new events included in the history. The decider should handle the new events and may decide to close the workflow execution.&lt;/note&gt; &lt;p&gt;&lt;b&gt;How to code a decision&lt;/b&gt;&lt;/p&gt; &lt;p&gt;You code a decision by first setting the decision type field to one of the above decision values, and then set the corresponding attributes field shown below:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;a&gt;ScheduleActivityTaskDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;ScheduleLambdaFunctionDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;RequestCancelActivityTaskDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;CompleteWorkflowExecutionDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;FailWorkflowExecutionDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;CancelWorkflowExecutionDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;ContinueAsNewWorkflowExecutionDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;RecordMarkerDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;StartTimerDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;CancelTimerDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;SignalExternalWorkflowExecutionDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;RequestCancelExternalWorkflowExecutionDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;StartChildWorkflowExecutionDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param scheduleActivityTaskDecisionAttributes [ScheduleActivityTaskDecisionAttributes] &lt;p&gt;Provides details of the &lt;code&gt;ScheduleActivityTask&lt;/code&gt; decision. It is not set for other decision types.&lt;/p&gt;
-- @param cancelWorkflowExecutionDecisionAttributes [CancelWorkflowExecutionDecisionAttributes] &lt;p&gt;Provides details of the &lt;code&gt;CancelWorkflowExecution&lt;/code&gt; decision. It is not set for other decision types.&lt;/p&gt;
-- @param cancelTimerDecisionAttributes [CancelTimerDecisionAttributes] &lt;p&gt;Provides details of the &lt;code&gt;CancelTimer&lt;/code&gt; decision. It is not set for other decision types.&lt;/p&gt;
-- @param scheduleLambdaFunctionDecisionAttributes [ScheduleLambdaFunctionDecisionAttributes] &lt;p&gt;Specifies a decision made by the decider. A decision can be one of these types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;b&gt;CancelTimer&lt;/b&gt;: cancels a previously started timer and records a &lt;code&gt;TimerCanceled&lt;/code&gt; event in the history.&lt;/li&gt; &lt;li&gt; &lt;b&gt;CancelWorkflowExecution&lt;/b&gt;: closes the workflow execution and records a &lt;code&gt;WorkflowExecutionCanceled&lt;/code&gt; event in the history.&lt;/li&gt; &lt;li&gt; &lt;b&gt;CompleteWorkflowExecution&lt;/b&gt;: closes the workflow execution and records a &lt;code&gt;WorkflowExecutionCompleted&lt;/code&gt; event in the history .&lt;/li&gt; &lt;li&gt; &lt;b&gt;ContinueAsNewWorkflowExecution&lt;/b&gt;: closes the workflow execution and starts a new workflow execution of the same type using the same workflow ID and a unique run ID. A &lt;code&gt;WorkflowExecutionContinuedAsNew&lt;/code&gt; event is recorded in the history.&lt;/li&gt; &lt;li&gt; &lt;b&gt;FailWorkflowExecution&lt;/b&gt;: closes the workflow execution and records a &lt;code&gt;WorkflowExecutionFailed&lt;/code&gt; event in the history.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RecordMarker&lt;/b&gt;: records a &lt;code&gt;MarkerRecorded&lt;/code&gt; event in the history. Markers can be used for adding custom information in the history for instance to let deciders know that they do not need to look at the history beyond the marker event.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelActivityTask&lt;/b&gt;: attempts to cancel a previously scheduled activity task. If the activity task was scheduled but has not been assigned to a worker, then it will be canceled. If the activity task was already assigned to a worker, then the worker will be informed that cancellation has been requested in the response to &lt;a&gt;RecordActivityTaskHeartbeat&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelExternalWorkflowExecution&lt;/b&gt;: requests that a request be made to cancel the specified external workflow execution and records a &lt;code&gt;RequestCancelExternalWorkflowExecutionInitiated&lt;/code&gt; event in the history.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleActivityTask&lt;/b&gt;: schedules an activity task.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleLambdaFunction&lt;/b&gt;: schedules a AWS Lambda function.&lt;/li&gt; &lt;li&gt; &lt;b&gt;SignalExternalWorkflowExecution&lt;/b&gt;: requests a signal to be delivered to the specified external workflow execution and records a &lt;code&gt;SignalExternalWorkflowExecutionInitiated&lt;/code&gt; event in the history.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartChildWorkflowExecution&lt;/b&gt;: requests that a child workflow execution be started and records a &lt;code&gt;StartChildWorkflowExecutionInitiated&lt;/code&gt; event in the history. The child workflow execution is a separate workflow execution with its own history.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartTimer&lt;/b&gt;: starts a timer for this workflow execution and records a &lt;code&gt;TimerStarted&lt;/code&gt; event in the history. This timer will fire after the specified delay and record a &lt;code&gt;TimerFired&lt;/code&gt; event.&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;&lt;b&gt;Access Control&lt;/b&gt;&lt;/p&gt; &lt;p&gt;If you grant permission to use &lt;code&gt;RespondDecisionTaskCompleted&lt;/code&gt;, you can use IAM policies to express permissions for the list of decisions returned by this action as if they were members of the API. Treating decisions as a pseudo API maintains a uniform conceptual model and helps keep policies readable. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;&lt;b&gt;Decision Failure&lt;/b&gt;&lt;/p&gt; &lt;p&gt;Decisions can fail for several reasons&lt;/p&gt; &lt;ul&gt; &lt;li&gt;The ordering of decisions should follow a logical flow. Some decisions might not make sense in the current context of the workflow execution and will therefore fail.&lt;/li&gt; &lt;li&gt;A limit on your account was reached.&lt;/li&gt; &lt;li&gt;The decision lacks sufficient permissions.&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;One of the following events might be added to the history to indicate an error. The event attribute's &lt;b&gt;cause&lt;/b&gt; parameter indicates the cause. If &lt;b&gt;cause&lt;/b&gt; is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;b&gt;ScheduleActivityTaskFailed&lt;/b&gt;: a ScheduleActivityTask decision failed. This could happen if the activity type specified in the decision is not registered, is in a deprecated state, or the decision is not properly configured.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleLambdaFunctionFailed&lt;/b&gt;: a ScheduleLambdaFunctionFailed decision failed. This could happen if the AWS Lambda function specified in the decision does not exist, or the AWS Lambda service's limits are exceeded.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelActivityTaskFailed&lt;/b&gt;: a RequestCancelActivityTask decision failed. This could happen if there is no open activity task with the specified activityId.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartTimerFailed&lt;/b&gt;: a StartTimer decision failed. This could happen if there is another open timer with the same timerId.&lt;/li&gt; &lt;li&gt; &lt;b&gt;CancelTimerFailed&lt;/b&gt;: a CancelTimer decision failed. This could happen if there is no open timer with the specified timerId.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartChildWorkflowExecutionFailed&lt;/b&gt;: a StartChildWorkflowExecution decision failed. This could happen if the workflow type specified is not registered, is deprecated, or the decision is not properly configured.&lt;/li&gt; &lt;li&gt; &lt;b&gt;SignalExternalWorkflowExecutionFailed&lt;/b&gt;: a SignalExternalWorkflowExecution decision failed. This could happen if the &lt;code&gt;workflowID&lt;/code&gt; specified in the decision was incorrect.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelExternalWorkflowExecutionFailed&lt;/b&gt;: a RequestCancelExternalWorkflowExecution decision failed. This could happen if the &lt;code&gt;workflowID&lt;/code&gt; specified in the decision was incorrect.&lt;/li&gt; &lt;li&gt; &lt;b&gt;CancelWorkflowExecutionFailed&lt;/b&gt;: a CancelWorkflowExecution decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;CompleteWorkflowExecutionFailed&lt;/b&gt;: a CompleteWorkflowExecution decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ContinueAsNewWorkflowExecutionFailed&lt;/b&gt;: a ContinueAsNewWorkflowExecution decision failed. This could happen if there is an unhandled decision task pending in the workflow execution or the ContinueAsNewWorkflowExecution decision was not configured correctly.&lt;/li&gt; &lt;li&gt; &lt;b&gt;FailWorkflowExecutionFailed&lt;/b&gt;: a FailWorkflowExecution decision failed. This could happen if there is an unhandled decision task pending in the workflow execution.&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;The preceding error events might occur due to an error in the decider logic, which might put the workflow execution in an unstable state The cause field in the event structure for the error event indicates the cause of the error.&lt;/p&gt; &lt;note&gt;A workflow execution may be closed by the decider by returning one of the following decisions when completing a decision task: &lt;code&gt;CompleteWorkflowExecution&lt;/code&gt;, &lt;code&gt;FailWorkflowExecution&lt;/code&gt;, &lt;code&gt;CancelWorkflowExecution&lt;/code&gt; and &lt;code&gt;ContinueAsNewWorkflowExecution&lt;/code&gt;. An UnhandledDecision fault will be returned if a workflow closing decision is specified and a signal or activity event had been added to the history while the decision task was being performed by the decider. Unlike the above situations which are logic issues, this fault is always possible because of race conditions in a distributed system. The right action here is to call &lt;a&gt;RespondDecisionTaskCompleted&lt;/a&gt; without any decisions. This would result in another decision task with these new events included in the history. The decider should handle the new events and may decide to close the workflow execution.&lt;/note&gt; &lt;p&gt;&lt;b&gt;How to code a decision&lt;/b&gt;&lt;/p&gt; &lt;p&gt;You code a decision by first setting the decision type field to one of the above decision values, and then set the corresponding attributes field shown below:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;a&gt;ScheduleActivityTaskDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;ScheduleLambdaFunctionDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;RequestCancelActivityTaskDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;CompleteWorkflowExecutionDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;FailWorkflowExecutionDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;CancelWorkflowExecutionDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;ContinueAsNewWorkflowExecutionDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;RecordMarkerDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;StartTimerDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;CancelTimerDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;SignalExternalWorkflowExecutionDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;RequestCancelExternalWorkflowExecutionDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;li&gt; &lt;a&gt;StartChildWorkflowExecutionDecisionAttributes&lt;/a&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param signalExternalWorkflowExecutionDecisionAttributes [SignalExternalWorkflowExecutionDecisionAttributes] &lt;p&gt;Provides details of the &lt;code&gt;SignalExternalWorkflowExecution&lt;/code&gt; decision. It is not set for other decision types.&lt;/p&gt;
-- @param failWorkflowExecutionDecisionAttributes [FailWorkflowExecutionDecisionAttributes] &lt;p&gt;Provides details of the &lt;code&gt;FailWorkflowExecution&lt;/code&gt; decision. It is not set for other decision types.&lt;/p&gt;
-- @param recordMarkerDecisionAttributes [RecordMarkerDecisionAttributes] &lt;p&gt;Provides details of the &lt;code&gt;RecordMarker&lt;/code&gt; decision. It is not set for other decision types.&lt;/p&gt;
-- @param requestCancelActivityTaskDecisionAttributes [RequestCancelActivityTaskDecisionAttributes] &lt;p&gt;Provides details of the &lt;code&gt;RequestCancelActivityTask&lt;/code&gt; decision. It is not set for other decision types.&lt;/p&gt;
-- @param completeWorkflowExecutionDecisionAttributes [CompleteWorkflowExecutionDecisionAttributes] &lt;p&gt;Provides details of the &lt;code&gt;CompleteWorkflowExecution&lt;/code&gt; decision. It is not set for other decision types.&lt;/p&gt;
-- @param startTimerDecisionAttributes [StartTimerDecisionAttributes] &lt;p&gt;Provides details of the &lt;code&gt;StartTimer&lt;/code&gt; decision. It is not set for other decision types.&lt;/p&gt;
-- @param requestCancelExternalWorkflowExecutionDecisionAttributes [RequestCancelExternalWorkflowExecutionDecisionAttributes] &lt;p&gt;Provides details of the &lt;code&gt;RequestCancelExternalWorkflowExecution&lt;/code&gt; decision. It is not set for other decision types.&lt;/p&gt;
-- @param continueAsNewWorkflowExecutionDecisionAttributes [ContinueAsNewWorkflowExecutionDecisionAttributes] &lt;p&gt;Provides details of the &lt;code&gt;ContinueAsNewWorkflowExecution&lt;/code&gt; decision. It is not set for other decision types.&lt;/p&gt;
-- @param decisionType [DecisionType] &lt;p&gt;Specifies the type of the decision.&lt;/p&gt;
-- @param startChildWorkflowExecutionDecisionAttributes [StartChildWorkflowExecutionDecisionAttributes] &lt;p&gt;Provides details of the &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision. It is not set for other decision types.&lt;/p&gt;
-- Required parameter: decisionType
function M.Decision(scheduleActivityTaskDecisionAttributes, cancelWorkflowExecutionDecisionAttributes, cancelTimerDecisionAttributes, scheduleLambdaFunctionDecisionAttributes, signalExternalWorkflowExecutionDecisionAttributes, failWorkflowExecutionDecisionAttributes, recordMarkerDecisionAttributes, requestCancelActivityTaskDecisionAttributes, completeWorkflowExecutionDecisionAttributes, startTimerDecisionAttributes, requestCancelExternalWorkflowExecutionDecisionAttributes, continueAsNewWorkflowExecutionDecisionAttributes, decisionType, startChildWorkflowExecutionDecisionAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Decision")
	local t = { 
		["scheduleActivityTaskDecisionAttributes"] = scheduleActivityTaskDecisionAttributes,
		["cancelWorkflowExecutionDecisionAttributes"] = cancelWorkflowExecutionDecisionAttributes,
		["cancelTimerDecisionAttributes"] = cancelTimerDecisionAttributes,
		["scheduleLambdaFunctionDecisionAttributes"] = scheduleLambdaFunctionDecisionAttributes,
		["signalExternalWorkflowExecutionDecisionAttributes"] = signalExternalWorkflowExecutionDecisionAttributes,
		["failWorkflowExecutionDecisionAttributes"] = failWorkflowExecutionDecisionAttributes,
		["recordMarkerDecisionAttributes"] = recordMarkerDecisionAttributes,
		["requestCancelActivityTaskDecisionAttributes"] = requestCancelActivityTaskDecisionAttributes,
		["completeWorkflowExecutionDecisionAttributes"] = completeWorkflowExecutionDecisionAttributes,
		["startTimerDecisionAttributes"] = startTimerDecisionAttributes,
		["requestCancelExternalWorkflowExecutionDecisionAttributes"] = requestCancelExternalWorkflowExecutionDecisionAttributes,
		["continueAsNewWorkflowExecutionDecisionAttributes"] = continueAsNewWorkflowExecutionDecisionAttributes,
		["decisionType"] = decisionType,
		["startChildWorkflowExecutionDecisionAttributes"] = startChildWorkflowExecutionDecisionAttributes,
	}
	M.AssertDecision(t)
	return t
end

local ActivityTypeDetail_keys = { "configuration" = true, "typeInfo" = true, nil }

function M.AssertActivityTypeDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTypeDetail to be of type 'table'")
	assert(struct["typeInfo"], "Expected key typeInfo to exist in table")
	assert(struct["configuration"], "Expected key configuration to exist in table")
	if struct["configuration"] then M.AssertActivityTypeConfiguration(struct["configuration"]) end
	if struct["typeInfo"] then M.AssertActivityTypeInfo(struct["typeInfo"]) end
	for k,_ in pairs(struct) do
		assert(ActivityTypeDetail_keys[k], "ActivityTypeDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTypeDetail
-- &lt;p&gt;Detailed information about an activity type.&lt;/p&gt;
-- @param configuration [ActivityTypeConfiguration] &lt;p&gt;The configuration settings registered with the activity type.&lt;/p&gt;
-- @param typeInfo [ActivityTypeInfo] &lt;p&gt;General information about the activity type.&lt;/p&gt; &lt;p&gt;The status of activity type (returned in the ActivityTypeInfo structure) can be one of the following.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;b&gt;REGISTERED&lt;/b&gt;: The type is registered and available. Workers supporting this type should be running. &lt;/li&gt; &lt;li&gt; &lt;b&gt;DEPRECATED&lt;/b&gt;: The type was deprecated using &lt;a&gt;DeprecateActivityType&lt;/a&gt;, but is still in use. You should keep workers supporting this type running. You cannot create new tasks of this type. &lt;/li&gt; &lt;/ul&gt;
-- Required parameter: typeInfo
-- Required parameter: configuration
function M.ActivityTypeDetail(configuration, typeInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTypeDetail")
	local t = { 
		["configuration"] = configuration,
		["typeInfo"] = typeInfo,
	}
	M.AssertActivityTypeDetail(t)
	return t
end

local ChildWorkflowExecutionTimedOutEventAttributes_keys = { "startedEventId" = true, "timeoutType" = true, "workflowType" = true, "initiatedEventId" = true, "workflowExecution" = true, nil }

function M.AssertChildWorkflowExecutionTimedOutEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChildWorkflowExecutionTimedOutEventAttributes to be of type 'table'")
	assert(struct["workflowExecution"], "Expected key workflowExecution to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["timeoutType"], "Expected key timeoutType to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then M.AssertEventId(struct["startedEventId"]) end
	if struct["timeoutType"] then M.AssertWorkflowExecutionTimeoutType(struct["timeoutType"]) end
	if struct["workflowType"] then M.AssertWorkflowType(struct["workflowType"]) end
	if struct["initiatedEventId"] then M.AssertEventId(struct["initiatedEventId"]) end
	if struct["workflowExecution"] then M.AssertWorkflowExecution(struct["workflowExecution"]) end
	for k,_ in pairs(struct) do
		assert(ChildWorkflowExecutionTimedOutEventAttributes_keys[k], "ChildWorkflowExecutionTimedOutEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChildWorkflowExecutionTimedOutEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;ChildWorkflowExecutionTimedOut&lt;/code&gt; event.&lt;/p&gt;
-- @param startedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;ChildWorkflowExecutionStarted&lt;/code&gt; event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param timeoutType [WorkflowExecutionTimeoutType] &lt;p&gt;The type of the timeout that caused the child workflow execution to time out.&lt;/p&gt;
-- @param workflowType [WorkflowType] &lt;p&gt;The type of the child workflow execution.&lt;/p&gt;
-- @param initiatedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;StartChildWorkflowExecutionInitiated&lt;/code&gt; event corresponding to the &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param workflowExecution [WorkflowExecution] &lt;p&gt;The child workflow execution that timed out.&lt;/p&gt;
-- Required parameter: workflowExecution
-- Required parameter: workflowType
-- Required parameter: timeoutType
-- Required parameter: initiatedEventId
-- Required parameter: startedEventId
function M.ChildWorkflowExecutionTimedOutEventAttributes(startedEventId, timeoutType, workflowType, initiatedEventId, workflowExecution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChildWorkflowExecutionTimedOutEventAttributes")
	local t = { 
		["startedEventId"] = startedEventId,
		["timeoutType"] = timeoutType,
		["workflowType"] = workflowType,
		["initiatedEventId"] = initiatedEventId,
		["workflowExecution"] = workflowExecution,
	}
	M.AssertChildWorkflowExecutionTimedOutEventAttributes(t)
	return t
end

local PollForActivityTaskInput_keys = { "domain" = true, "taskList" = true, "identity" = true, nil }

function M.AssertPollForActivityTaskInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PollForActivityTaskInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["taskList"], "Expected key taskList to exist in table")
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["taskList"] then M.AssertTaskList(struct["taskList"]) end
	if struct["identity"] then M.AssertIdentity(struct["identity"]) end
	for k,_ in pairs(struct) do
		assert(PollForActivityTaskInput_keys[k], "PollForActivityTaskInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PollForActivityTaskInput
--  
-- @param domain [DomainName] &lt;p&gt;The name of the domain that contains the task lists being polled.&lt;/p&gt;
-- @param taskList [TaskList] &lt;p&gt;Specifies the task list to poll for activity tasks.&lt;/p&gt; &lt;p&gt;The specified string must not start or end with whitespace. It must not contain a &lt;code&gt;:&lt;/code&gt; (colon), &lt;code&gt;/&lt;/code&gt; (slash), &lt;code&gt;|&lt;/code&gt; (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.&lt;/p&gt;
-- @param identity [Identity] &lt;p&gt;Identity of the worker making the request, recorded in the &lt;code&gt;ActivityTaskStarted&lt;/code&gt; event in the workflow history. This enables diagnostic tracing when problems arise. The form of this identity is user defined.&lt;/p&gt;
-- Required parameter: domain
-- Required parameter: taskList
function M.PollForActivityTaskInput(domain, taskList, identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PollForActivityTaskInput")
	local t = { 
		["domain"] = domain,
		["taskList"] = taskList,
		["identity"] = identity,
	}
	M.AssertPollForActivityTaskInput(t)
	return t
end

local FailWorkflowExecutionDecisionAttributes_keys = { "reason" = true, "details" = true, nil }

function M.AssertFailWorkflowExecutionDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailWorkflowExecutionDecisionAttributes to be of type 'table'")
	if struct["reason"] then M.AssertFailureReason(struct["reason"]) end
	if struct["details"] then M.AssertData(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(FailWorkflowExecutionDecisionAttributes_keys[k], "FailWorkflowExecutionDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailWorkflowExecutionDecisionAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;FailWorkflowExecution&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;&lt;b&gt;Access Control&lt;/b&gt;&lt;/p&gt; &lt;p&gt;You can use IAM policies to control this decision's access to Amazon SWF resources as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;Use a &lt;code&gt;Resource&lt;/code&gt; element with the domain name to limit the action to only specified domains.&lt;/li&gt; &lt;li&gt;Use an &lt;code&gt;Action&lt;/code&gt; element to allow or deny permission to call this action.&lt;/li&gt; &lt;li&gt;You cannot use an IAM policy to constrain this action's parameters.&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's &lt;b&gt;cause&lt;/b&gt; parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/p&gt;
-- @param reason [FailureReason] &lt;p&gt;A descriptive reason for the failure that may help in diagnostics.&lt;/p&gt;
-- @param details [Data] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; Details of the failure.&lt;/p&gt;
function M.FailWorkflowExecutionDecisionAttributes(reason, details, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FailWorkflowExecutionDecisionAttributes")
	local t = { 
		["reason"] = reason,
		["details"] = details,
	}
	M.AssertFailWorkflowExecutionDecisionAttributes(t)
	return t
end

local DomainInfo_keys = { "status" = true, "name" = true, "description" = true, nil }

function M.AssertDomainInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainInfo to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	if struct["status"] then M.AssertRegistrationStatus(struct["status"]) end
	if struct["name"] then M.AssertDomainName(struct["name"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(DomainInfo_keys[k], "DomainInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainInfo
-- &lt;p&gt;Contains general information about a domain.&lt;/p&gt;
-- @param status [RegistrationStatus] &lt;p&gt;The status of the domain:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;b&gt;REGISTERED&lt;/b&gt;: The domain is properly registered and available. You can use this domain for registering types and creating new workflow executions. &lt;/li&gt; &lt;li&gt; &lt;b&gt;DEPRECATED&lt;/b&gt;: The domain was deprecated using &lt;a&gt;DeprecateDomain&lt;/a&gt;, but is still in use. You should not create new workflow executions in this domain. &lt;/li&gt; &lt;/ul&gt;
-- @param name [DomainName] &lt;p&gt;The name of the domain. This name is unique within the account.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;The description of the domain provided through &lt;a&gt;RegisterDomain&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: name
-- Required parameter: status
function M.DomainInfo(status, name, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainInfo")
	local t = { 
		["status"] = status,
		["name"] = name,
		["description"] = description,
	}
	M.AssertDomainInfo(t)
	return t
end

local ActivityTaskFailedEventAttributes_keys = { "startedEventId" = true, "reason" = true, "scheduledEventId" = true, "details" = true, nil }

function M.AssertActivityTaskFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTaskFailedEventAttributes to be of type 'table'")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then M.AssertEventId(struct["startedEventId"]) end
	if struct["reason"] then M.AssertFailureReason(struct["reason"]) end
	if struct["scheduledEventId"] then M.AssertEventId(struct["scheduledEventId"]) end
	if struct["details"] then M.AssertData(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(ActivityTaskFailedEventAttributes_keys[k], "ActivityTaskFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTaskFailedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;ActivityTaskFailed&lt;/code&gt; event.&lt;/p&gt;
-- @param startedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;ActivityTaskStarted&lt;/code&gt; event recorded when this activity task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param reason [FailureReason] &lt;p&gt;The reason provided for the failure (if any).&lt;/p&gt;
-- @param scheduledEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;ActivityTaskScheduled&lt;/code&gt; event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param details [Data] &lt;p&gt;The details of the failure (if any).&lt;/p&gt;
-- Required parameter: scheduledEventId
-- Required parameter: startedEventId
function M.ActivityTaskFailedEventAttributes(startedEventId, reason, scheduledEventId, details, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTaskFailedEventAttributes")
	local t = { 
		["startedEventId"] = startedEventId,
		["reason"] = reason,
		["scheduledEventId"] = scheduledEventId,
		["details"] = details,
	}
	M.AssertActivityTaskFailedEventAttributes(t)
	return t
end

local ExternalWorkflowExecutionCancelRequestedEventAttributes_keys = { "initiatedEventId" = true, "workflowExecution" = true, nil }

function M.AssertExternalWorkflowExecutionCancelRequestedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExternalWorkflowExecutionCancelRequestedEventAttributes to be of type 'table'")
	assert(struct["workflowExecution"], "Expected key workflowExecution to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	if struct["initiatedEventId"] then M.AssertEventId(struct["initiatedEventId"]) end
	if struct["workflowExecution"] then M.AssertWorkflowExecution(struct["workflowExecution"]) end
	for k,_ in pairs(struct) do
		assert(ExternalWorkflowExecutionCancelRequestedEventAttributes_keys[k], "ExternalWorkflowExecutionCancelRequestedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExternalWorkflowExecutionCancelRequestedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;ExternalWorkflowExecutionCancelRequested&lt;/code&gt; event.&lt;/p&gt;
-- @param initiatedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;RequestCancelExternalWorkflowExecutionInitiated&lt;/code&gt; event corresponding to the &lt;code&gt;RequestCancelExternalWorkflowExecution&lt;/code&gt; decision to cancel this external workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param workflowExecution [WorkflowExecution] &lt;p&gt;The external workflow execution to which the cancellation request was delivered.&lt;/p&gt;
-- Required parameter: workflowExecution
-- Required parameter: initiatedEventId
function M.ExternalWorkflowExecutionCancelRequestedEventAttributes(initiatedEventId, workflowExecution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExternalWorkflowExecutionCancelRequestedEventAttributes")
	local t = { 
		["initiatedEventId"] = initiatedEventId,
		["workflowExecution"] = workflowExecution,
	}
	M.AssertExternalWorkflowExecutionCancelRequestedEventAttributes(t)
	return t
end

local ChildWorkflowExecutionFailedEventAttributes_keys = { "workflowExecution" = true, "initiatedEventId" = true, "startedEventId" = true, "reason" = true, "details" = true, "workflowType" = true, nil }

function M.AssertChildWorkflowExecutionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChildWorkflowExecutionFailedEventAttributes to be of type 'table'")
	assert(struct["workflowExecution"], "Expected key workflowExecution to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["workflowExecution"] then M.AssertWorkflowExecution(struct["workflowExecution"]) end
	if struct["initiatedEventId"] then M.AssertEventId(struct["initiatedEventId"]) end
	if struct["startedEventId"] then M.AssertEventId(struct["startedEventId"]) end
	if struct["reason"] then M.AssertFailureReason(struct["reason"]) end
	if struct["details"] then M.AssertData(struct["details"]) end
	if struct["workflowType"] then M.AssertWorkflowType(struct["workflowType"]) end
	for k,_ in pairs(struct) do
		assert(ChildWorkflowExecutionFailedEventAttributes_keys[k], "ChildWorkflowExecutionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChildWorkflowExecutionFailedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;ChildWorkflowExecutionFailed&lt;/code&gt; event.&lt;/p&gt;
-- @param workflowExecution [WorkflowExecution] &lt;p&gt;The child workflow execution that failed.&lt;/p&gt;
-- @param initiatedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;StartChildWorkflowExecutionInitiated&lt;/code&gt; event corresponding to the &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param startedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;ChildWorkflowExecutionStarted&lt;/code&gt; event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param reason [FailureReason] &lt;p&gt;The reason for the failure (if provided).&lt;/p&gt;
-- @param details [Data] &lt;p&gt;The details of the failure (if provided).&lt;/p&gt;
-- @param workflowType [WorkflowType] &lt;p&gt;The type of the child workflow execution.&lt;/p&gt;
-- Required parameter: workflowExecution
-- Required parameter: workflowType
-- Required parameter: initiatedEventId
-- Required parameter: startedEventId
function M.ChildWorkflowExecutionFailedEventAttributes(workflowExecution, initiatedEventId, startedEventId, reason, details, workflowType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChildWorkflowExecutionFailedEventAttributes")
	local t = { 
		["workflowExecution"] = workflowExecution,
		["initiatedEventId"] = initiatedEventId,
		["startedEventId"] = startedEventId,
		["reason"] = reason,
		["details"] = details,
		["workflowType"] = workflowType,
	}
	M.AssertChildWorkflowExecutionFailedEventAttributes(t)
	return t
end

local ActivityTaskCancelRequestedEventAttributes_keys = { "activityId" = true, "decisionTaskCompletedEventId" = true, nil }

function M.AssertActivityTaskCancelRequestedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTaskCancelRequestedEventAttributes to be of type 'table'")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	assert(struct["activityId"], "Expected key activityId to exist in table")
	if struct["activityId"] then M.AssertActivityId(struct["activityId"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(ActivityTaskCancelRequestedEventAttributes_keys[k], "ActivityTaskCancelRequestedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTaskCancelRequestedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;ActivityTaskCancelRequested&lt;/code&gt; event.&lt;/p&gt;
-- @param activityId [ActivityId] &lt;p&gt;The unique ID of the task.&lt;/p&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;RequestCancelActivityTask&lt;/code&gt; decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- Required parameter: decisionTaskCompletedEventId
-- Required parameter: activityId
function M.ActivityTaskCancelRequestedEventAttributes(activityId, decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTaskCancelRequestedEventAttributes")
	local t = { 
		["activityId"] = activityId,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
	}
	M.AssertActivityTaskCancelRequestedEventAttributes(t)
	return t
end

local DomainDeprecatedFault_keys = { "message" = true, nil }

function M.AssertDomainDeprecatedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainDeprecatedFault to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DomainDeprecatedFault_keys[k], "DomainDeprecatedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainDeprecatedFault
-- &lt;p&gt;Returned when the specified domain has been deprecated.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;A description that may help with diagnosing the cause of the fault.&lt;/p&gt;
function M.DomainDeprecatedFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainDeprecatedFault")
	local t = { 
		["message"] = message,
	}
	M.AssertDomainDeprecatedFault(t)
	return t
end

local CompleteWorkflowExecutionFailedEventAttributes_keys = { "cause" = true, "decisionTaskCompletedEventId" = true, nil }

function M.AssertCompleteWorkflowExecutionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompleteWorkflowExecutionFailedEventAttributes to be of type 'table'")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["cause"] then M.AssertCompleteWorkflowExecutionFailedCause(struct["cause"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(CompleteWorkflowExecutionFailedEventAttributes_keys[k], "CompleteWorkflowExecutionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompleteWorkflowExecutionFailedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;CompleteWorkflowExecutionFailed&lt;/code&gt; event.&lt;/p&gt;
-- @param cause [CompleteWorkflowExecutionFailedCause] &lt;p&gt;The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.&lt;/p&gt; &lt;note&gt;If &lt;b&gt;cause&lt;/b&gt; is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/note&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;CompleteWorkflowExecution&lt;/code&gt; decision to complete this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- Required parameter: cause
-- Required parameter: decisionTaskCompletedEventId
function M.CompleteWorkflowExecutionFailedEventAttributes(cause, decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CompleteWorkflowExecutionFailedEventAttributes")
	local t = { 
		["cause"] = cause,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
	}
	M.AssertCompleteWorkflowExecutionFailedEventAttributes(t)
	return t
end

local ChildWorkflowExecutionCanceledEventAttributes_keys = { "startedEventId" = true, "workflowType" = true, "initiatedEventId" = true, "details" = true, "workflowExecution" = true, nil }

function M.AssertChildWorkflowExecutionCanceledEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChildWorkflowExecutionCanceledEventAttributes to be of type 'table'")
	assert(struct["workflowExecution"], "Expected key workflowExecution to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then M.AssertEventId(struct["startedEventId"]) end
	if struct["workflowType"] then M.AssertWorkflowType(struct["workflowType"]) end
	if struct["initiatedEventId"] then M.AssertEventId(struct["initiatedEventId"]) end
	if struct["details"] then M.AssertData(struct["details"]) end
	if struct["workflowExecution"] then M.AssertWorkflowExecution(struct["workflowExecution"]) end
	for k,_ in pairs(struct) do
		assert(ChildWorkflowExecutionCanceledEventAttributes_keys[k], "ChildWorkflowExecutionCanceledEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChildWorkflowExecutionCanceledEventAttributes
-- &lt;p&gt;Provide details of the &lt;code&gt;ChildWorkflowExecutionCanceled&lt;/code&gt; event.&lt;/p&gt;
-- @param startedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;ChildWorkflowExecutionStarted&lt;/code&gt; event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param workflowType [WorkflowType] &lt;p&gt;The type of the child workflow execution.&lt;/p&gt;
-- @param initiatedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;StartChildWorkflowExecutionInitiated&lt;/code&gt; event corresponding to the &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param details [Data] &lt;p&gt;Details of the cancellation (if provided).&lt;/p&gt;
-- @param workflowExecution [WorkflowExecution] &lt;p&gt;The child workflow execution that was canceled.&lt;/p&gt;
-- Required parameter: workflowExecution
-- Required parameter: workflowType
-- Required parameter: initiatedEventId
-- Required parameter: startedEventId
function M.ChildWorkflowExecutionCanceledEventAttributes(startedEventId, workflowType, initiatedEventId, details, workflowExecution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChildWorkflowExecutionCanceledEventAttributes")
	local t = { 
		["startedEventId"] = startedEventId,
		["workflowType"] = workflowType,
		["initiatedEventId"] = initiatedEventId,
		["details"] = details,
		["workflowExecution"] = workflowExecution,
	}
	M.AssertChildWorkflowExecutionCanceledEventAttributes(t)
	return t
end

local LambdaFunctionTimedOutEventAttributes_keys = { "startedEventId" = true, "timeoutType" = true, "scheduledEventId" = true, nil }

function M.AssertLambdaFunctionTimedOutEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionTimedOutEventAttributes to be of type 'table'")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then M.AssertEventId(struct["startedEventId"]) end
	if struct["timeoutType"] then M.AssertLambdaFunctionTimeoutType(struct["timeoutType"]) end
	if struct["scheduledEventId"] then M.AssertEventId(struct["scheduledEventId"]) end
	for k,_ in pairs(struct) do
		assert(LambdaFunctionTimedOutEventAttributes_keys[k], "LambdaFunctionTimedOutEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionTimedOutEventAttributes
-- &lt;p&gt;Provides details for the &lt;code&gt;LambdaFunctionTimedOut&lt;/code&gt; event.&lt;/p&gt;
-- @param startedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;LambdaFunctionStarted&lt;/code&gt; event recorded in the history.&lt;/p&gt;
-- @param timeoutType [LambdaFunctionTimeoutType] &lt;p&gt;The type of the timeout that caused this event.&lt;/p&gt;
-- @param scheduledEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;LambdaFunctionScheduled&lt;/code&gt; event that was recorded when this AWS Lambda function was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- Required parameter: scheduledEventId
-- Required parameter: startedEventId
function M.LambdaFunctionTimedOutEventAttributes(startedEventId, timeoutType, scheduledEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionTimedOutEventAttributes")
	local t = { 
		["startedEventId"] = startedEventId,
		["timeoutType"] = timeoutType,
		["scheduledEventId"] = scheduledEventId,
	}
	M.AssertLambdaFunctionTimedOutEventAttributes(t)
	return t
end

local WorkflowExecutionTerminatedEventAttributes_keys = { "reason" = true, "childPolicy" = true, "cause" = true, "details" = true, nil }

function M.AssertWorkflowExecutionTerminatedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionTerminatedEventAttributes to be of type 'table'")
	assert(struct["childPolicy"], "Expected key childPolicy to exist in table")
	if struct["reason"] then M.AssertTerminateReason(struct["reason"]) end
	if struct["childPolicy"] then M.AssertChildPolicy(struct["childPolicy"]) end
	if struct["cause"] then M.AssertWorkflowExecutionTerminatedCause(struct["cause"]) end
	if struct["details"] then M.AssertData(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowExecutionTerminatedEventAttributes_keys[k], "WorkflowExecutionTerminatedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionTerminatedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;WorkflowExecutionTerminated&lt;/code&gt; event.&lt;/p&gt;
-- @param reason [TerminateReason] &lt;p&gt;The reason provided for the termination (if any).&lt;/p&gt;
-- @param childPolicy [ChildPolicy] &lt;p&gt;The policy used for the child workflow executions of this workflow execution.&lt;/p&gt; &lt;p&gt;The supported child policies are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;b&gt;TERMINATE:&lt;/b&gt; the child executions will be terminated.&lt;/li&gt; &lt;li&gt;&lt;b&gt;REQUEST_CANCEL:&lt;/b&gt; a request to cancel will be attempted for each child execution by recording a &lt;code&gt;WorkflowExecutionCancelRequested&lt;/code&gt; event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.&lt;/li&gt; &lt;li&gt;&lt;b&gt;ABANDON:&lt;/b&gt; no action will be taken. The child executions will continue to run.&lt;/li&gt; &lt;/ul&gt;
-- @param cause [WorkflowExecutionTerminatedCause] &lt;p&gt;If set, indicates that the workflow execution was automatically terminated, and specifies the cause. This happens if the parent workflow execution times out or is terminated and the child policy is set to terminate child executions.&lt;/p&gt;
-- @param details [Data] &lt;p&gt;The details provided for the termination (if any).&lt;/p&gt;
-- Required parameter: childPolicy
function M.WorkflowExecutionTerminatedEventAttributes(reason, childPolicy, cause, details, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionTerminatedEventAttributes")
	local t = { 
		["reason"] = reason,
		["childPolicy"] = childPolicy,
		["cause"] = cause,
		["details"] = details,
	}
	M.AssertWorkflowExecutionTerminatedEventAttributes(t)
	return t
end

local WorkflowTypeConfiguration_keys = { "defaultExecutionStartToCloseTimeout" = true, "defaultChildPolicy" = true, "defaultTaskStartToCloseTimeout" = true, "defaultTaskPriority" = true, "defaultLambdaRole" = true, "defaultTaskList" = true, nil }

function M.AssertWorkflowTypeConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowTypeConfiguration to be of type 'table'")
	if struct["defaultExecutionStartToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["defaultExecutionStartToCloseTimeout"]) end
	if struct["defaultChildPolicy"] then M.AssertChildPolicy(struct["defaultChildPolicy"]) end
	if struct["defaultTaskStartToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["defaultTaskStartToCloseTimeout"]) end
	if struct["defaultTaskPriority"] then M.AssertTaskPriority(struct["defaultTaskPriority"]) end
	if struct["defaultLambdaRole"] then M.AssertArn(struct["defaultLambdaRole"]) end
	if struct["defaultTaskList"] then M.AssertTaskList(struct["defaultTaskList"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowTypeConfiguration_keys[k], "WorkflowTypeConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowTypeConfiguration
-- &lt;p&gt;The configuration settings of a workflow type.&lt;/p&gt;
-- @param defaultExecutionStartToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; The default maximum duration, specified when registering the workflow type, for executions of this workflow type. This default can be overridden when starting a workflow execution using the &lt;a&gt;StartWorkflowExecution&lt;/a&gt; action or the &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt;
-- @param defaultChildPolicy [ChildPolicy] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; The default policy to use for the child workflow executions when a workflow execution of this type is terminated, by calling the &lt;a&gt;TerminateWorkflowExecution&lt;/a&gt; action explicitly or due to an expired timeout. This default can be overridden when starting a workflow execution using the &lt;a&gt;StartWorkflowExecution&lt;/a&gt; action or the &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;The supported child policies are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;b&gt;TERMINATE:&lt;/b&gt; the child executions will be terminated.&lt;/li&gt; &lt;li&gt;&lt;b&gt;REQUEST_CANCEL:&lt;/b&gt; a request to cancel will be attempted for each child execution by recording a &lt;code&gt;WorkflowExecutionCancelRequested&lt;/code&gt; event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.&lt;/li&gt; &lt;li&gt;&lt;b&gt;ABANDON:&lt;/b&gt; no action will be taken. The child executions will continue to run.&lt;/li&gt; &lt;/ul&gt;
-- @param defaultTaskStartToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; The default maximum duration, specified when registering the workflow type, that a decision task for executions of this workflow type might take before returning completion or failure. If the task does not close in the specified time then the task is automatically timed out and rescheduled. If the decider eventually reports a completion or failure, it is ignored. This default can be overridden when starting a workflow execution using the &lt;a&gt;StartWorkflowExecution&lt;/a&gt; action or the &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt;
-- @param defaultTaskPriority [TaskPriority] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; The default task priority, specified when registering the workflow type, for all decision tasks of this workflow type. This default can be overridden when starting a workflow execution using the &lt;a&gt;StartWorkflowExecution&lt;/a&gt; action or the &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;Valid values are integers that range from Java's &lt;code&gt;Integer.MIN_VALUE&lt;/code&gt; (-2147483648) to &lt;code&gt;Integer.MAX_VALUE&lt;/code&gt; (2147483647). Higher numbers indicate higher priority.&lt;/p&gt; &lt;p&gt;For more information about setting task priority, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html&quot;&gt;Setting Task Priority&lt;/a&gt; in the &lt;i&gt;Amazon Simple Workflow Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param defaultLambdaRole [Arn] &lt;p&gt;The default IAM role to use when a workflow execution invokes a AWS Lambda function.&lt;/p&gt;
-- @param defaultTaskList [TaskList] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; The default task list, specified when registering the workflow type, for decisions tasks scheduled for workflow executions of this type. This default can be overridden when starting a workflow execution using the &lt;a&gt;StartWorkflowExecution&lt;/a&gt; action or the &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision.&lt;/p&gt;
function M.WorkflowTypeConfiguration(defaultExecutionStartToCloseTimeout, defaultChildPolicy, defaultTaskStartToCloseTimeout, defaultTaskPriority, defaultLambdaRole, defaultTaskList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowTypeConfiguration")
	local t = { 
		["defaultExecutionStartToCloseTimeout"] = defaultExecutionStartToCloseTimeout,
		["defaultChildPolicy"] = defaultChildPolicy,
		["defaultTaskStartToCloseTimeout"] = defaultTaskStartToCloseTimeout,
		["defaultTaskPriority"] = defaultTaskPriority,
		["defaultLambdaRole"] = defaultLambdaRole,
		["defaultTaskList"] = defaultTaskList,
	}
	M.AssertWorkflowTypeConfiguration(t)
	return t
end

local RespondActivityTaskCanceledInput_keys = { "details" = true, "taskToken" = true, nil }

function M.AssertRespondActivityTaskCanceledInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RespondActivityTaskCanceledInput to be of type 'table'")
	assert(struct["taskToken"], "Expected key taskToken to exist in table")
	if struct["details"] then M.AssertData(struct["details"]) end
	if struct["taskToken"] then M.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(RespondActivityTaskCanceledInput_keys[k], "RespondActivityTaskCanceledInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RespondActivityTaskCanceledInput
--  
-- @param details [Data] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; Information about the cancellation.&lt;/p&gt;
-- @param taskToken [TaskToken] &lt;p&gt;The &lt;code&gt;taskToken&lt;/code&gt; of the &lt;a&gt;ActivityTask&lt;/a&gt;.&lt;/p&gt; &lt;important&gt;&lt;code&gt;taskToken&lt;/code&gt; is generated by the service and should be treated as an opaque value. If the task is passed to another process, its &lt;code&gt;taskToken&lt;/code&gt; must also be passed. This enables it to provide its progress and respond with results.&lt;/important&gt;
-- Required parameter: taskToken
function M.RespondActivityTaskCanceledInput(details, taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RespondActivityTaskCanceledInput")
	local t = { 
		["details"] = details,
		["taskToken"] = taskToken,
	}
	M.AssertRespondActivityTaskCanceledInput(t)
	return t
end

local WorkflowExecutionTimedOutEventAttributes_keys = { "timeoutType" = true, "childPolicy" = true, nil }

function M.AssertWorkflowExecutionTimedOutEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionTimedOutEventAttributes to be of type 'table'")
	assert(struct["timeoutType"], "Expected key timeoutType to exist in table")
	assert(struct["childPolicy"], "Expected key childPolicy to exist in table")
	if struct["timeoutType"] then M.AssertWorkflowExecutionTimeoutType(struct["timeoutType"]) end
	if struct["childPolicy"] then M.AssertChildPolicy(struct["childPolicy"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowExecutionTimedOutEventAttributes_keys[k], "WorkflowExecutionTimedOutEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionTimedOutEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;WorkflowExecutionTimedOut&lt;/code&gt; event.&lt;/p&gt;
-- @param timeoutType [WorkflowExecutionTimeoutType] &lt;p&gt;The type of timeout that caused this event.&lt;/p&gt;
-- @param childPolicy [ChildPolicy] &lt;p&gt;The policy used for the child workflow executions of this workflow execution.&lt;/p&gt; &lt;p&gt;The supported child policies are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;b&gt;TERMINATE:&lt;/b&gt; the child executions will be terminated.&lt;/li&gt; &lt;li&gt;&lt;b&gt;REQUEST_CANCEL:&lt;/b&gt; a request to cancel will be attempted for each child execution by recording a &lt;code&gt;WorkflowExecutionCancelRequested&lt;/code&gt; event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.&lt;/li&gt; &lt;li&gt;&lt;b&gt;ABANDON:&lt;/b&gt; no action will be taken. The child executions will continue to run.&lt;/li&gt; &lt;/ul&gt;
-- Required parameter: timeoutType
-- Required parameter: childPolicy
function M.WorkflowExecutionTimedOutEventAttributes(timeoutType, childPolicy, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionTimedOutEventAttributes")
	local t = { 
		["timeoutType"] = timeoutType,
		["childPolicy"] = childPolicy,
	}
	M.AssertWorkflowExecutionTimedOutEventAttributes(t)
	return t
end

local CancelWorkflowExecutionFailedEventAttributes_keys = { "cause" = true, "decisionTaskCompletedEventId" = true, nil }

function M.AssertCancelWorkflowExecutionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelWorkflowExecutionFailedEventAttributes to be of type 'table'")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["cause"] then M.AssertCancelWorkflowExecutionFailedCause(struct["cause"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(CancelWorkflowExecutionFailedEventAttributes_keys[k], "CancelWorkflowExecutionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelWorkflowExecutionFailedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;CancelWorkflowExecutionFailed&lt;/code&gt; event.&lt;/p&gt;
-- @param cause [CancelWorkflowExecutionFailedCause] &lt;p&gt;The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.&lt;/p&gt; &lt;note&gt;If &lt;b&gt;cause&lt;/b&gt; is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/note&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;CancelWorkflowExecution&lt;/code&gt; decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- Required parameter: cause
-- Required parameter: decisionTaskCompletedEventId
function M.CancelWorkflowExecutionFailedEventAttributes(cause, decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelWorkflowExecutionFailedEventAttributes")
	local t = { 
		["cause"] = cause,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
	}
	M.AssertCancelWorkflowExecutionFailedEventAttributes(t)
	return t
end

local WorkflowExecutionConfiguration_keys = { "taskList" = true, "taskStartToCloseTimeout" = true, "lambdaRole" = true, "childPolicy" = true, "executionStartToCloseTimeout" = true, "taskPriority" = true, nil }

function M.AssertWorkflowExecutionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionConfiguration to be of type 'table'")
	assert(struct["taskStartToCloseTimeout"], "Expected key taskStartToCloseTimeout to exist in table")
	assert(struct["executionStartToCloseTimeout"], "Expected key executionStartToCloseTimeout to exist in table")
	assert(struct["taskList"], "Expected key taskList to exist in table")
	assert(struct["childPolicy"], "Expected key childPolicy to exist in table")
	if struct["taskList"] then M.AssertTaskList(struct["taskList"]) end
	if struct["taskStartToCloseTimeout"] then M.AssertDurationInSeconds(struct["taskStartToCloseTimeout"]) end
	if struct["lambdaRole"] then M.AssertArn(struct["lambdaRole"]) end
	if struct["childPolicy"] then M.AssertChildPolicy(struct["childPolicy"]) end
	if struct["executionStartToCloseTimeout"] then M.AssertDurationInSeconds(struct["executionStartToCloseTimeout"]) end
	if struct["taskPriority"] then M.AssertTaskPriority(struct["taskPriority"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowExecutionConfiguration_keys[k], "WorkflowExecutionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionConfiguration
-- &lt;p&gt;The configuration settings for a workflow execution including timeout values, tasklist etc. These configuration settings are determined from the defaults specified when registering the workflow type and those specified when starting the workflow execution.&lt;/p&gt;
-- @param taskList [TaskList] &lt;p&gt;The task list used for the decision tasks generated for this workflow execution.&lt;/p&gt;
-- @param taskStartToCloseTimeout [DurationInSeconds] &lt;p&gt;The maximum duration allowed for decision tasks for this workflow execution.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt;
-- @param lambdaRole [Arn] &lt;p&gt;The IAM role used by this workflow execution when invoking AWS Lambda functions.&lt;/p&gt;
-- @param childPolicy [ChildPolicy] &lt;p&gt;The policy to use for the child workflow executions if this workflow execution is terminated, by calling the &lt;a&gt;TerminateWorkflowExecution&lt;/a&gt; action explicitly or due to an expired timeout.&lt;/p&gt; &lt;p&gt;The supported child policies are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;b&gt;TERMINATE:&lt;/b&gt; the child executions will be terminated.&lt;/li&gt; &lt;li&gt;&lt;b&gt;REQUEST_CANCEL:&lt;/b&gt; a request to cancel will be attempted for each child execution by recording a &lt;code&gt;WorkflowExecutionCancelRequested&lt;/code&gt; event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.&lt;/li&gt; &lt;li&gt;&lt;b&gt;ABANDON:&lt;/b&gt; no action will be taken. The child executions will continue to run.&lt;/li&gt; &lt;/ul&gt;
-- @param executionStartToCloseTimeout [DurationInSeconds] &lt;p&gt;The total duration for this workflow execution.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt;
-- @param taskPriority [TaskPriority] &lt;p&gt;The priority assigned to decision tasks for this workflow execution. Valid values are integers that range from Java's &lt;code&gt;Integer.MIN_VALUE&lt;/code&gt; (-2147483648) to &lt;code&gt;Integer.MAX_VALUE&lt;/code&gt; (2147483647). Higher numbers indicate higher priority.&lt;/p&gt; &lt;p&gt;For more information about setting task priority, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html&quot;&gt;Setting Task Priority&lt;/a&gt; in the &lt;i&gt;Amazon Simple Workflow Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: taskStartToCloseTimeout
-- Required parameter: executionStartToCloseTimeout
-- Required parameter: taskList
-- Required parameter: childPolicy
function M.WorkflowExecutionConfiguration(taskList, taskStartToCloseTimeout, lambdaRole, childPolicy, executionStartToCloseTimeout, taskPriority, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionConfiguration")
	local t = { 
		["taskList"] = taskList,
		["taskStartToCloseTimeout"] = taskStartToCloseTimeout,
		["lambdaRole"] = lambdaRole,
		["childPolicy"] = childPolicy,
		["executionStartToCloseTimeout"] = executionStartToCloseTimeout,
		["taskPriority"] = taskPriority,
	}
	M.AssertWorkflowExecutionConfiguration(t)
	return t
end

local LambdaFunctionCompletedEventAttributes_keys = { "startedEventId" = true, "scheduledEventId" = true, "result" = true, nil }

function M.AssertLambdaFunctionCompletedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionCompletedEventAttributes to be of type 'table'")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then M.AssertEventId(struct["startedEventId"]) end
	if struct["scheduledEventId"] then M.AssertEventId(struct["scheduledEventId"]) end
	if struct["result"] then M.AssertData(struct["result"]) end
	for k,_ in pairs(struct) do
		assert(LambdaFunctionCompletedEventAttributes_keys[k], "LambdaFunctionCompletedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionCompletedEventAttributes
-- &lt;p&gt;Provides details for the &lt;code&gt;LambdaFunctionCompleted&lt;/code&gt; event.&lt;/p&gt;
-- @param startedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;LambdaFunctionStarted&lt;/code&gt; event recorded in the history.&lt;/p&gt;
-- @param scheduledEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;LambdaFunctionScheduled&lt;/code&gt; event that was recorded when this AWS Lambda function was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param result [Data] &lt;p&gt;The result of the function execution (if any).&lt;/p&gt;
-- Required parameter: scheduledEventId
-- Required parameter: startedEventId
function M.LambdaFunctionCompletedEventAttributes(startedEventId, scheduledEventId, result, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionCompletedEventAttributes")
	local t = { 
		["startedEventId"] = startedEventId,
		["scheduledEventId"] = scheduledEventId,
		["result"] = result,
	}
	M.AssertLambdaFunctionCompletedEventAttributes(t)
	return t
end

local DescribeDomainInput_keys = { "name" = true, nil }

function M.AssertDescribeDomainInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDomainInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then M.AssertDomainName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDomainInput_keys[k], "DescribeDomainInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDomainInput
--  
-- @param name [DomainName] &lt;p&gt;The name of the domain to describe.&lt;/p&gt;
-- Required parameter: name
function M.DescribeDomainInput(name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDomainInput")
	local t = { 
		["name"] = name,
	}
	M.AssertDescribeDomainInput(t)
	return t
end

local DeprecateWorkflowTypeInput_keys = { "domain" = true, "workflowType" = true, nil }

function M.AssertDeprecateWorkflowTypeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeprecateWorkflowTypeInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["workflowType"] then M.AssertWorkflowType(struct["workflowType"]) end
	for k,_ in pairs(struct) do
		assert(DeprecateWorkflowTypeInput_keys[k], "DeprecateWorkflowTypeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeprecateWorkflowTypeInput
--  
-- @param domain [DomainName] &lt;p&gt;The name of the domain in which the workflow type is registered.&lt;/p&gt;
-- @param workflowType [WorkflowType] &lt;p&gt;The workflow type to deprecate.&lt;/p&gt;
-- Required parameter: domain
-- Required parameter: workflowType
function M.DeprecateWorkflowTypeInput(domain, workflowType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeprecateWorkflowTypeInput")
	local t = { 
		["domain"] = domain,
		["workflowType"] = workflowType,
	}
	M.AssertDeprecateWorkflowTypeInput(t)
	return t
end

local ScheduleActivityTaskDecisionAttributes_keys = { "control" = true, "taskList" = true, "scheduleToCloseTimeout" = true, "activityType" = true, "taskPriority" = true, "heartbeatTimeout" = true, "activityId" = true, "scheduleToStartTimeout" = true, "startToCloseTimeout" = true, "input" = true, nil }

function M.AssertScheduleActivityTaskDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleActivityTaskDecisionAttributes to be of type 'table'")
	assert(struct["activityType"], "Expected key activityType to exist in table")
	assert(struct["activityId"], "Expected key activityId to exist in table")
	if struct["control"] then M.AssertData(struct["control"]) end
	if struct["taskList"] then M.AssertTaskList(struct["taskList"]) end
	if struct["scheduleToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["scheduleToCloseTimeout"]) end
	if struct["activityType"] then M.AssertActivityType(struct["activityType"]) end
	if struct["taskPriority"] then M.AssertTaskPriority(struct["taskPriority"]) end
	if struct["heartbeatTimeout"] then M.AssertDurationInSecondsOptional(struct["heartbeatTimeout"]) end
	if struct["activityId"] then M.AssertActivityId(struct["activityId"]) end
	if struct["scheduleToStartTimeout"] then M.AssertDurationInSecondsOptional(struct["scheduleToStartTimeout"]) end
	if struct["startToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["startToCloseTimeout"]) end
	if struct["input"] then M.AssertData(struct["input"]) end
	for k,_ in pairs(struct) do
		assert(ScheduleActivityTaskDecisionAttributes_keys[k], "ScheduleActivityTaskDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleActivityTaskDecisionAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;ScheduleActivityTask&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;&lt;b&gt;Access Control&lt;/b&gt;&lt;/p&gt; &lt;p&gt;You can use IAM policies to control this decision's access to Amazon SWF resources as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;Use a &lt;code&gt;Resource&lt;/code&gt; element with the domain name to limit the action to only specified domains.&lt;/li&gt; &lt;li&gt;Use an &lt;code&gt;Action&lt;/code&gt; element to allow or deny permission to call this action.&lt;/li&gt; &lt;li&gt;Constrain the following parameters by using a &lt;code&gt;Condition&lt;/code&gt; element with the appropriate keys. &lt;ul&gt; &lt;li&gt;&lt;code&gt;activityType.name&lt;/code&gt;: String constraint. The key is &lt;code&gt;swf:activityType.name&lt;/code&gt;.&lt;/li&gt; &lt;li&gt;&lt;code&gt;activityType.version&lt;/code&gt;: String constraint. The key is &lt;code&gt;swf:activityType.version&lt;/code&gt;.&lt;/li&gt; &lt;li&gt;&lt;code&gt;taskList&lt;/code&gt;: String constraint. The key is &lt;code&gt;swf:taskList.name&lt;/code&gt;.&lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's &lt;b&gt;cause&lt;/b&gt; parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/p&gt;
-- @param control [Data] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; Data attached to the event that can be used by the decider in subsequent workflow tasks. This data is not sent to the activity.&lt;/p&gt;
-- @param taskList [TaskList] &lt;p&gt;If set, specifies the name of the task list in which to schedule the activity task. If not specified, the &lt;code&gt;defaultTaskList&lt;/code&gt; registered with the activity type will be used.&lt;/p&gt; &lt;note&gt;A task list for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default task list was specified at registration time then a fault will be returned.&lt;/note&gt; &lt;p&gt;The specified string must not start or end with whitespace. It must not contain a &lt;code&gt;:&lt;/code&gt; (colon), &lt;code&gt;/&lt;/code&gt; (slash), &lt;code&gt;|&lt;/code&gt; (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.&lt;/p&gt;
-- @param scheduleToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;The maximum duration for this activity task.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt; &lt;note&gt;A schedule-to-close timeout for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default schedule-to-close timeout was specified at registration time then a fault will be returned.&lt;/note&gt;
-- @param activityType [ActivityType] &lt;p&gt;&lt;b&gt;Required.&lt;/b&gt; The type of the activity task to schedule.&lt;/p&gt;
-- @param taskPriority [TaskPriority] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; If set, specifies the priority with which the activity task is to be assigned to a worker. This overrides the defaultTaskPriority specified when registering the activity type using &lt;a&gt;RegisterActivityType&lt;/a&gt;. Valid values are integers that range from Java's &lt;code&gt;Integer.MIN_VALUE&lt;/code&gt; (-2147483648) to &lt;code&gt;Integer.MAX_VALUE&lt;/code&gt; (2147483647). Higher numbers indicate higher priority.&lt;/p&gt; &lt;p&gt;For more information about setting task priority, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html&quot;&gt;Setting Task Priority&lt;/a&gt; in the &lt;i&gt;Amazon Simple Workflow Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param heartbeatTimeout [DurationInSecondsOptional] &lt;p&gt;If set, specifies the maximum time before which a worker processing a task of this type must report progress by calling &lt;a&gt;RecordActivityTaskHeartbeat&lt;/a&gt;. If the timeout is exceeded, the activity task is automatically timed out. If the worker subsequently attempts to record a heartbeat or returns a result, it will be ignored. This overrides the default heartbeat timeout specified when registering the activity type using &lt;a&gt;RegisterActivityType&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt;
-- @param activityId [ActivityId] &lt;p&gt;&lt;b&gt;Required.&lt;/b&gt; The &lt;code&gt;activityId&lt;/code&gt; of the activity task.&lt;/p&gt; &lt;p&gt;The specified string must not start or end with whitespace. It must not contain a &lt;code&gt;:&lt;/code&gt; (colon), &lt;code&gt;/&lt;/code&gt; (slash), &lt;code&gt;|&lt;/code&gt; (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.&lt;/p&gt;
-- @param scheduleToStartTimeout [DurationInSecondsOptional] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; If set, specifies the maximum duration the activity task can wait to be assigned to a worker. This overrides the default schedule-to-start timeout specified when registering the activity type using &lt;a&gt;RegisterActivityType&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt; &lt;note&gt;A schedule-to-start timeout for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default schedule-to-start timeout was specified at registration time then a fault will be returned.&lt;/note&gt;
-- @param startToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;If set, specifies the maximum duration a worker may take to process this activity task. This overrides the default start-to-close timeout specified when registering the activity type using &lt;a&gt;RegisterActivityType&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt; &lt;note&gt;A start-to-close timeout for this activity task must be specified either as a default for the activity type or through this field. If neither this field is set nor a default start-to-close timeout was specified at registration time then a fault will be returned.&lt;/note&gt;
-- @param input [Data] &lt;p&gt;The input provided to the activity task.&lt;/p&gt;
-- Required parameter: activityType
-- Required parameter: activityId
function M.ScheduleActivityTaskDecisionAttributes(control, taskList, scheduleToCloseTimeout, activityType, taskPriority, heartbeatTimeout, activityId, scheduleToStartTimeout, startToCloseTimeout, input, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScheduleActivityTaskDecisionAttributes")
	local t = { 
		["control"] = control,
		["taskList"] = taskList,
		["scheduleToCloseTimeout"] = scheduleToCloseTimeout,
		["activityType"] = activityType,
		["taskPriority"] = taskPriority,
		["heartbeatTimeout"] = heartbeatTimeout,
		["activityId"] = activityId,
		["scheduleToStartTimeout"] = scheduleToStartTimeout,
		["startToCloseTimeout"] = startToCloseTimeout,
		["input"] = input,
	}
	M.AssertScheduleActivityTaskDecisionAttributes(t)
	return t
end

local WorkflowExecutionCanceledEventAttributes_keys = { "details" = true, "decisionTaskCompletedEventId" = true, nil }

function M.AssertWorkflowExecutionCanceledEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionCanceledEventAttributes to be of type 'table'")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["details"] then M.AssertData(struct["details"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowExecutionCanceledEventAttributes_keys[k], "WorkflowExecutionCanceledEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionCanceledEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;WorkflowExecutionCanceled&lt;/code&gt; event.&lt;/p&gt;
-- @param details [Data] &lt;p&gt;Details for the cancellation (if any).&lt;/p&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;CancelWorkflowExecution&lt;/code&gt; decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- Required parameter: decisionTaskCompletedEventId
function M.WorkflowExecutionCanceledEventAttributes(details, decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionCanceledEventAttributes")
	local t = { 
		["details"] = details,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
	}
	M.AssertWorkflowExecutionCanceledEventAttributes(t)
	return t
end

local StartWorkflowExecutionInput_keys = { "domain" = true, "taskList" = true, "taskStartToCloseTimeout" = true, "workflowId" = true, "taskPriority" = true, "lambdaRole" = true, "childPolicy" = true, "executionStartToCloseTimeout" = true, "input" = true, "workflowType" = true, "tagList" = true, nil }

function M.AssertStartWorkflowExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartWorkflowExecutionInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["taskList"] then M.AssertTaskList(struct["taskList"]) end
	if struct["taskStartToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["taskStartToCloseTimeout"]) end
	if struct["workflowId"] then M.AssertWorkflowId(struct["workflowId"]) end
	if struct["taskPriority"] then M.AssertTaskPriority(struct["taskPriority"]) end
	if struct["lambdaRole"] then M.AssertArn(struct["lambdaRole"]) end
	if struct["childPolicy"] then M.AssertChildPolicy(struct["childPolicy"]) end
	if struct["executionStartToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["executionStartToCloseTimeout"]) end
	if struct["input"] then M.AssertData(struct["input"]) end
	if struct["workflowType"] then M.AssertWorkflowType(struct["workflowType"]) end
	if struct["tagList"] then M.AssertTagList(struct["tagList"]) end
	for k,_ in pairs(struct) do
		assert(StartWorkflowExecutionInput_keys[k], "StartWorkflowExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartWorkflowExecutionInput
--  
-- @param domain [DomainName] &lt;p&gt;The name of the domain in which the workflow execution is created.&lt;/p&gt;
-- @param taskList [TaskList] &lt;p&gt;The task list to use for the decision tasks generated for this workflow execution. This overrides the &lt;code&gt;defaultTaskList&lt;/code&gt; specified when registering the workflow type.&lt;/p&gt; &lt;note&gt;A task list for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task list was specified at registration time then a fault will be returned.&lt;/note&gt; &lt;p&gt;The specified string must not start or end with whitespace. It must not contain a &lt;code&gt;:&lt;/code&gt; (colon), &lt;code&gt;/&lt;/code&gt; (slash), &lt;code&gt;|&lt;/code&gt; (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.&lt;/p&gt;
-- @param taskStartToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;Specifies the maximum duration of decision tasks for this workflow execution. This parameter overrides the &lt;code&gt;defaultTaskStartToCloseTimout&lt;/code&gt; specified when registering the workflow type using &lt;a&gt;RegisterWorkflowType&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt; &lt;note&gt;A task start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task start-to-close timeout was specified at registration time then a fault will be returned.&lt;/note&gt;
-- @param workflowId [WorkflowId] &lt;p&gt;The user defined identifier associated with the workflow execution. You can use this to associate a custom identifier with the workflow execution. You may specify the same identifier if a workflow execution is logically a &lt;i&gt;restart&lt;/i&gt; of a previous execution. You cannot have two open workflow executions with the same &lt;code&gt;workflowId&lt;/code&gt; at the same time.&lt;/p&gt; &lt;p&gt;The specified string must not start or end with whitespace. It must not contain a &lt;code&gt;:&lt;/code&gt; (colon), &lt;code&gt;/&lt;/code&gt; (slash), &lt;code&gt;|&lt;/code&gt; (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.&lt;/p&gt;
-- @param taskPriority [TaskPriority] &lt;p&gt;The task priority to use for this workflow execution. This will override any default priority that was assigned when the workflow type was registered. If not set, then the default task priority for the workflow type will be used. Valid values are integers that range from Java's &lt;code&gt;Integer.MIN_VALUE&lt;/code&gt; (-2147483648) to &lt;code&gt;Integer.MAX_VALUE&lt;/code&gt; (2147483647). Higher numbers indicate higher priority.&lt;/p&gt; &lt;p&gt;For more information about setting task priority, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html&quot;&gt;Setting Task Priority&lt;/a&gt; in the &lt;i&gt;Amazon Simple Workflow Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param lambdaRole [Arn] &lt;p&gt;The ARN of an IAM role that authorizes Amazon SWF to invoke AWS Lambda functions.&lt;/p&gt; &lt;note&gt;In order for this workflow execution to invoke AWS Lambda functions, an appropriate IAM role must be specified either as a default for the workflow type or through this field.&lt;/note&gt;
-- @param childPolicy [ChildPolicy] &lt;p&gt;If set, specifies the policy to use for the child workflow executions of this workflow execution if it is terminated, by calling the &lt;a&gt;TerminateWorkflowExecution&lt;/a&gt; action explicitly or due to an expired timeout. This policy overrides the default child policy specified when registering the workflow type using &lt;a&gt;RegisterWorkflowType&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;The supported child policies are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;b&gt;TERMINATE:&lt;/b&gt; the child executions will be terminated.&lt;/li&gt; &lt;li&gt;&lt;b&gt;REQUEST_CANCEL:&lt;/b&gt; a request to cancel will be attempted for each child execution by recording a &lt;code&gt;WorkflowExecutionCancelRequested&lt;/code&gt; event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.&lt;/li&gt; &lt;li&gt;&lt;b&gt;ABANDON:&lt;/b&gt; no action will be taken. The child executions will continue to run.&lt;/li&gt; &lt;/ul&gt; &lt;note&gt;A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault will be returned.&lt;/note&gt;
-- @param executionStartToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;The total duration for this workflow execution. This overrides the defaultExecutionStartToCloseTimeout specified when registering the workflow type.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. Exceeding this limit will cause the workflow execution to time out. Unlike some of the other timeout parameters in Amazon SWF, you cannot specify a value of &quot;NONE&quot; for this timeout; there is a one-year max limit on the time that a workflow execution can run.&lt;/p&gt; &lt;note&gt; An execution start-to-close timeout must be specified either through this parameter or as a default when the workflow type is registered. If neither this parameter nor a default execution start-to-close timeout is specified, a fault is returned.&lt;/note&gt;
-- @param input [Data] &lt;p&gt;The input for the workflow execution. This is a free form string which should be meaningful to the workflow you are starting. This &lt;code&gt;input&lt;/code&gt; is made available to the new workflow execution in the &lt;code&gt;WorkflowExecutionStarted&lt;/code&gt; history event.&lt;/p&gt;
-- @param workflowType [WorkflowType] &lt;p&gt;The type of the workflow to start.&lt;/p&gt;
-- @param tagList [TagList] &lt;p&gt;The list of tags to associate with the workflow execution. You can specify a maximum of 5 tags. You can list workflow executions with a specific tag by calling &lt;a&gt;ListOpenWorkflowExecutions&lt;/a&gt; or &lt;a&gt;ListClosedWorkflowExecutions&lt;/a&gt; and specifying a &lt;a&gt;TagFilter&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: domain
-- Required parameter: workflowId
-- Required parameter: workflowType
function M.StartWorkflowExecutionInput(domain, taskList, taskStartToCloseTimeout, workflowId, taskPriority, lambdaRole, childPolicy, executionStartToCloseTimeout, input, workflowType, tagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartWorkflowExecutionInput")
	local t = { 
		["domain"] = domain,
		["taskList"] = taskList,
		["taskStartToCloseTimeout"] = taskStartToCloseTimeout,
		["workflowId"] = workflowId,
		["taskPriority"] = taskPriority,
		["lambdaRole"] = lambdaRole,
		["childPolicy"] = childPolicy,
		["executionStartToCloseTimeout"] = executionStartToCloseTimeout,
		["input"] = input,
		["workflowType"] = workflowType,
		["tagList"] = tagList,
	}
	M.AssertStartWorkflowExecutionInput(t)
	return t
end

local RecordMarkerDecisionAttributes_keys = { "markerName" = true, "details" = true, nil }

function M.AssertRecordMarkerDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordMarkerDecisionAttributes to be of type 'table'")
	assert(struct["markerName"], "Expected key markerName to exist in table")
	if struct["markerName"] then M.AssertMarkerName(struct["markerName"]) end
	if struct["details"] then M.AssertData(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(RecordMarkerDecisionAttributes_keys[k], "RecordMarkerDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordMarkerDecisionAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;RecordMarker&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;&lt;b&gt;Access Control&lt;/b&gt;&lt;/p&gt; &lt;p&gt;You can use IAM policies to control this decision's access to Amazon SWF resources as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;Use a &lt;code&gt;Resource&lt;/code&gt; element with the domain name to limit the action to only specified domains.&lt;/li&gt; &lt;li&gt;Use an &lt;code&gt;Action&lt;/code&gt; element to allow or deny permission to call this action.&lt;/li&gt; &lt;li&gt;You cannot use an IAM policy to constrain this action's parameters.&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's &lt;b&gt;cause&lt;/b&gt; parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/p&gt;
-- @param markerName [MarkerName] &lt;p&gt;&lt;b&gt;Required.&lt;/b&gt; The name of the marker.&lt;/p&gt;
-- @param details [Data] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; details of the marker.&lt;/p&gt;
-- Required parameter: markerName
function M.RecordMarkerDecisionAttributes(markerName, details, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordMarkerDecisionAttributes")
	local t = { 
		["markerName"] = markerName,
		["details"] = details,
	}
	M.AssertRecordMarkerDecisionAttributes(t)
	return t
end

local RequestCancelExternalWorkflowExecutionInitiatedEventAttributes_keys = { "control" = true, "workflowId" = true, "runId" = true, "decisionTaskCompletedEventId" = true, nil }

function M.AssertRequestCancelExternalWorkflowExecutionInitiatedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestCancelExternalWorkflowExecutionInitiatedEventAttributes to be of type 'table'")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["control"] then M.AssertData(struct["control"]) end
	if struct["workflowId"] then M.AssertWorkflowId(struct["workflowId"]) end
	if struct["runId"] then M.AssertRunIdOptional(struct["runId"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(RequestCancelExternalWorkflowExecutionInitiatedEventAttributes_keys[k], "RequestCancelExternalWorkflowExecutionInitiatedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestCancelExternalWorkflowExecutionInitiatedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;RequestCancelExternalWorkflowExecutionInitiated&lt;/code&gt; event.&lt;/p&gt;
-- @param control [Data] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; Data attached to the event that can be used by the decider in subsequent workflow tasks.&lt;/p&gt;
-- @param workflowId [WorkflowId] &lt;p&gt;The &lt;code&gt;workflowId&lt;/code&gt; of the external workflow execution to be canceled.&lt;/p&gt;
-- @param runId [RunIdOptional] &lt;p&gt;The &lt;code&gt;runId&lt;/code&gt; of the external workflow execution to be canceled.&lt;/p&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;RequestCancelExternalWorkflowExecution&lt;/code&gt; decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- Required parameter: workflowId
-- Required parameter: decisionTaskCompletedEventId
function M.RequestCancelExternalWorkflowExecutionInitiatedEventAttributes(control, workflowId, runId, decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestCancelExternalWorkflowExecutionInitiatedEventAttributes")
	local t = { 
		["control"] = control,
		["workflowId"] = workflowId,
		["runId"] = runId,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
	}
	M.AssertRequestCancelExternalWorkflowExecutionInitiatedEventAttributes(t)
	return t
end

local PendingTaskCount_keys = { "count" = true, "truncated" = true, nil }

function M.AssertPendingTaskCount(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PendingTaskCount to be of type 'table'")
	assert(struct["count"], "Expected key count to exist in table")
	if struct["count"] then M.AssertCount(struct["count"]) end
	if struct["truncated"] then M.AssertTruncated(struct["truncated"]) end
	for k,_ in pairs(struct) do
		assert(PendingTaskCount_keys[k], "PendingTaskCount contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PendingTaskCount
-- &lt;p&gt;Contains the count of tasks in a task list.&lt;/p&gt;
-- @param count [Count] &lt;p&gt;The number of tasks in the task list.&lt;/p&gt;
-- @param truncated [Truncated] &lt;p&gt;If set to true, indicates that the actual count was more than the maximum supported by this API and the count returned is the truncated value.&lt;/p&gt;
-- Required parameter: count
function M.PendingTaskCount(count, truncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PendingTaskCount")
	local t = { 
		["count"] = count,
		["truncated"] = truncated,
	}
	M.AssertPendingTaskCount(t)
	return t
end

local WorkflowTypeInfo_keys = { "status" = true, "deprecationDate" = true, "creationDate" = true, "workflowType" = true, "description" = true, nil }

function M.AssertWorkflowTypeInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowTypeInfo to be of type 'table'")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	assert(struct["creationDate"], "Expected key creationDate to exist in table")
	if struct["status"] then M.AssertRegistrationStatus(struct["status"]) end
	if struct["deprecationDate"] then M.AssertTimestamp(struct["deprecationDate"]) end
	if struct["creationDate"] then M.AssertTimestamp(struct["creationDate"]) end
	if struct["workflowType"] then M.AssertWorkflowType(struct["workflowType"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowTypeInfo_keys[k], "WorkflowTypeInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowTypeInfo
-- &lt;p&gt;Contains information about a workflow type.&lt;/p&gt;
-- @param status [RegistrationStatus] &lt;p&gt;The current status of the workflow type.&lt;/p&gt;
-- @param deprecationDate [Timestamp] &lt;p&gt;If the type is in deprecated state, then it is set to the date when the type was deprecated.&lt;/p&gt;
-- @param creationDate [Timestamp] &lt;p&gt;The date when this type was registered.&lt;/p&gt;
-- @param workflowType [WorkflowType] &lt;p&gt;The workflow type this information is about.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;The description of the type registered through &lt;a&gt;RegisterWorkflowType&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: workflowType
-- Required parameter: status
-- Required parameter: creationDate
function M.WorkflowTypeInfo(status, deprecationDate, creationDate, workflowType, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowTypeInfo")
	local t = { 
		["status"] = status,
		["deprecationDate"] = deprecationDate,
		["creationDate"] = creationDate,
		["workflowType"] = workflowType,
		["description"] = description,
	}
	M.AssertWorkflowTypeInfo(t)
	return t
end

local DecisionTaskStartedEventAttributes_keys = { "scheduledEventId" = true, "identity" = true, nil }

function M.AssertDecisionTaskStartedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecisionTaskStartedEventAttributes to be of type 'table'")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	if struct["scheduledEventId"] then M.AssertEventId(struct["scheduledEventId"]) end
	if struct["identity"] then M.AssertIdentity(struct["identity"]) end
	for k,_ in pairs(struct) do
		assert(DecisionTaskStartedEventAttributes_keys[k], "DecisionTaskStartedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecisionTaskStartedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;DecisionTaskStarted&lt;/code&gt; event.&lt;/p&gt;
-- @param scheduledEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskScheduled&lt;/code&gt; event that was recorded when this decision task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param identity [Identity] &lt;p&gt;Identity of the decider making the request. This enables diagnostic tracing when problems arise. The form of this identity is user defined.&lt;/p&gt;
-- Required parameter: scheduledEventId
function M.DecisionTaskStartedEventAttributes(scheduledEventId, identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecisionTaskStartedEventAttributes")
	local t = { 
		["scheduledEventId"] = scheduledEventId,
		["identity"] = identity,
	}
	M.AssertDecisionTaskStartedEventAttributes(t)
	return t
end

local WorkflowType_keys = { "version" = true, "name" = true, nil }

function M.AssertWorkflowType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowType to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowType_keys[k], "WorkflowType contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowType
-- &lt;p&gt;Represents a workflow type.&lt;/p&gt;
-- @param version [Version] &lt;p&gt;&lt;b&gt;Required.&lt;/b&gt; The version of the workflow type.&lt;/p&gt; &lt;note&gt;The combination of workflow type name and version must be unique with in a domain.&lt;/note&gt;
-- @param name [Name] &lt;p&gt;&lt;b&gt;Required.&lt;/b&gt; The name of the workflow type.&lt;/p&gt; &lt;note&gt;The combination of workflow type name and version must be unique with in a domain.&lt;/note&gt;
-- Required parameter: name
-- Required parameter: version
function M.WorkflowType(version, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowType")
	local t = { 
		["version"] = version,
		["name"] = name,
	}
	M.AssertWorkflowType(t)
	return t
end

local ChildWorkflowExecutionTerminatedEventAttributes_keys = { "startedEventId" = true, "workflowType" = true, "initiatedEventId" = true, "workflowExecution" = true, nil }

function M.AssertChildWorkflowExecutionTerminatedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChildWorkflowExecutionTerminatedEventAttributes to be of type 'table'")
	assert(struct["workflowExecution"], "Expected key workflowExecution to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then M.AssertEventId(struct["startedEventId"]) end
	if struct["workflowType"] then M.AssertWorkflowType(struct["workflowType"]) end
	if struct["initiatedEventId"] then M.AssertEventId(struct["initiatedEventId"]) end
	if struct["workflowExecution"] then M.AssertWorkflowExecution(struct["workflowExecution"]) end
	for k,_ in pairs(struct) do
		assert(ChildWorkflowExecutionTerminatedEventAttributes_keys[k], "ChildWorkflowExecutionTerminatedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChildWorkflowExecutionTerminatedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;ChildWorkflowExecutionTerminated&lt;/code&gt; event.&lt;/p&gt;
-- @param startedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;ChildWorkflowExecutionStarted&lt;/code&gt; event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param workflowType [WorkflowType] &lt;p&gt;The type of the child workflow execution.&lt;/p&gt;
-- @param initiatedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;StartChildWorkflowExecutionInitiated&lt;/code&gt; event corresponding to the &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param workflowExecution [WorkflowExecution] &lt;p&gt;The child workflow execution that was terminated.&lt;/p&gt;
-- Required parameter: workflowExecution
-- Required parameter: workflowType
-- Required parameter: initiatedEventId
-- Required parameter: startedEventId
function M.ChildWorkflowExecutionTerminatedEventAttributes(startedEventId, workflowType, initiatedEventId, workflowExecution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChildWorkflowExecutionTerminatedEventAttributes")
	local t = { 
		["startedEventId"] = startedEventId,
		["workflowType"] = workflowType,
		["initiatedEventId"] = initiatedEventId,
		["workflowExecution"] = workflowExecution,
	}
	M.AssertChildWorkflowExecutionTerminatedEventAttributes(t)
	return t
end

local DomainConfiguration_keys = { "workflowExecutionRetentionPeriodInDays" = true, nil }

function M.AssertDomainConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainConfiguration to be of type 'table'")
	assert(struct["workflowExecutionRetentionPeriodInDays"], "Expected key workflowExecutionRetentionPeriodInDays to exist in table")
	if struct["workflowExecutionRetentionPeriodInDays"] then M.AssertDurationInDays(struct["workflowExecutionRetentionPeriodInDays"]) end
	for k,_ in pairs(struct) do
		assert(DomainConfiguration_keys[k], "DomainConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainConfiguration
-- &lt;p&gt;Contains the configuration settings of a domain.&lt;/p&gt;
-- @param workflowExecutionRetentionPeriodInDays [DurationInDays] &lt;p&gt;The retention period for workflow executions in this domain.&lt;/p&gt;
-- Required parameter: workflowExecutionRetentionPeriodInDays
function M.DomainConfiguration(workflowExecutionRetentionPeriodInDays, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainConfiguration")
	local t = { 
		["workflowExecutionRetentionPeriodInDays"] = workflowExecutionRetentionPeriodInDays,
	}
	M.AssertDomainConfiguration(t)
	return t
end

local RequestCancelWorkflowExecutionInput_keys = { "domain" = true, "workflowId" = true, "runId" = true, nil }

function M.AssertRequestCancelWorkflowExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestCancelWorkflowExecutionInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["workflowId"] then M.AssertWorkflowId(struct["workflowId"]) end
	if struct["runId"] then M.AssertRunIdOptional(struct["runId"]) end
	for k,_ in pairs(struct) do
		assert(RequestCancelWorkflowExecutionInput_keys[k], "RequestCancelWorkflowExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestCancelWorkflowExecutionInput
--  
-- @param domain [DomainName] &lt;p&gt;The name of the domain containing the workflow execution to cancel.&lt;/p&gt;
-- @param workflowId [WorkflowId] &lt;p&gt;The workflowId of the workflow execution to cancel.&lt;/p&gt;
-- @param runId [RunIdOptional] &lt;p&gt;The runId of the workflow execution to cancel.&lt;/p&gt;
-- Required parameter: domain
-- Required parameter: workflowId
function M.RequestCancelWorkflowExecutionInput(domain, workflowId, runId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestCancelWorkflowExecutionInput")
	local t = { 
		["domain"] = domain,
		["workflowId"] = workflowId,
		["runId"] = runId,
	}
	M.AssertRequestCancelWorkflowExecutionInput(t)
	return t
end

local Run_keys = { "runId" = true, nil }

function M.AssertRun(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Run to be of type 'table'")
	if struct["runId"] then M.AssertRunId(struct["runId"]) end
	for k,_ in pairs(struct) do
		assert(Run_keys[k], "Run contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Run
-- &lt;p&gt;Specifies the &lt;code&gt;runId&lt;/code&gt; of a workflow execution.&lt;/p&gt;
-- @param runId [RunId] &lt;p&gt;The &lt;code&gt;runId&lt;/code&gt; of a workflow execution. This ID is generated by the service and can be used to uniquely identify the workflow execution within a domain.&lt;/p&gt;
function M.Run(runId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Run")
	local t = { 
		["runId"] = runId,
	}
	M.AssertRun(t)
	return t
end

local RecordMarkerFailedEventAttributes_keys = { "markerName" = true, "cause" = true, "decisionTaskCompletedEventId" = true, nil }

function M.AssertRecordMarkerFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordMarkerFailedEventAttributes to be of type 'table'")
	assert(struct["markerName"], "Expected key markerName to exist in table")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["markerName"] then M.AssertMarkerName(struct["markerName"]) end
	if struct["cause"] then M.AssertRecordMarkerFailedCause(struct["cause"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(RecordMarkerFailedEventAttributes_keys[k], "RecordMarkerFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordMarkerFailedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;RecordMarkerFailed&lt;/code&gt; event.&lt;/p&gt;
-- @param markerName [MarkerName] &lt;p&gt;The marker's name.&lt;/p&gt;
-- @param cause [RecordMarkerFailedCause] &lt;p&gt;The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.&lt;/p&gt; &lt;note&gt;If &lt;b&gt;cause&lt;/b&gt; is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/note&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;RecordMarkerFailed&lt;/code&gt; decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- Required parameter: markerName
-- Required parameter: cause
-- Required parameter: decisionTaskCompletedEventId
function M.RecordMarkerFailedEventAttributes(markerName, cause, decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordMarkerFailedEventAttributes")
	local t = { 
		["markerName"] = markerName,
		["cause"] = cause,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
	}
	M.AssertRecordMarkerFailedEventAttributes(t)
	return t
end

local WorkflowExecutionContinuedAsNewEventAttributes_keys = { "taskList" = true, "taskStartToCloseTimeout" = true, "newExecutionRunId" = true, "taskPriority" = true, "lambdaRole" = true, "childPolicy" = true, "decisionTaskCompletedEventId" = true, "executionStartToCloseTimeout" = true, "input" = true, "workflowType" = true, "tagList" = true, nil }

function M.AssertWorkflowExecutionContinuedAsNewEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionContinuedAsNewEventAttributes to be of type 'table'")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	assert(struct["newExecutionRunId"], "Expected key newExecutionRunId to exist in table")
	assert(struct["taskList"], "Expected key taskList to exist in table")
	assert(struct["childPolicy"], "Expected key childPolicy to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	if struct["taskList"] then M.AssertTaskList(struct["taskList"]) end
	if struct["taskStartToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["taskStartToCloseTimeout"]) end
	if struct["newExecutionRunId"] then M.AssertRunId(struct["newExecutionRunId"]) end
	if struct["taskPriority"] then M.AssertTaskPriority(struct["taskPriority"]) end
	if struct["lambdaRole"] then M.AssertArn(struct["lambdaRole"]) end
	if struct["childPolicy"] then M.AssertChildPolicy(struct["childPolicy"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["executionStartToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["executionStartToCloseTimeout"]) end
	if struct["input"] then M.AssertData(struct["input"]) end
	if struct["workflowType"] then M.AssertWorkflowType(struct["workflowType"]) end
	if struct["tagList"] then M.AssertTagList(struct["tagList"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowExecutionContinuedAsNewEventAttributes_keys[k], "WorkflowExecutionContinuedAsNewEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionContinuedAsNewEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;WorkflowExecutionContinuedAsNew&lt;/code&gt; event.&lt;/p&gt;
-- @param taskList [TaskList] &lt;p&gt;Provides details of the &lt;code&gt;WorkflowExecutionContinuedAsNew&lt;/code&gt; event.&lt;/p&gt;
-- @param taskStartToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;The maximum duration of decision tasks for the new workflow execution.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt;
-- @param newExecutionRunId [RunId] &lt;p&gt;The &lt;code&gt;runId&lt;/code&gt; of the new workflow execution.&lt;/p&gt;
-- @param taskPriority [TaskPriority] &lt;p&gt;Provides details of the &lt;code&gt;WorkflowExecutionContinuedAsNew&lt;/code&gt; event.&lt;/p&gt;
-- @param lambdaRole [Arn] &lt;p&gt;The IAM role attached to this workflow execution to use when invoking AWS Lambda functions.&lt;/p&gt;
-- @param childPolicy [ChildPolicy] &lt;p&gt;The policy to use for the child workflow executions of the new execution if it is terminated by calling the &lt;a&gt;TerminateWorkflowExecution&lt;/a&gt; action explicitly or due to an expired timeout.&lt;/p&gt; &lt;p&gt;The supported child policies are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;b&gt;TERMINATE:&lt;/b&gt; the child executions will be terminated.&lt;/li&gt; &lt;li&gt;&lt;b&gt;REQUEST_CANCEL:&lt;/b&gt; a request to cancel will be attempted for each child execution by recording a &lt;code&gt;WorkflowExecutionCancelRequested&lt;/code&gt; event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.&lt;/li&gt; &lt;li&gt;&lt;b&gt;ABANDON:&lt;/b&gt; no action will be taken. The child executions will continue to run.&lt;/li&gt; &lt;/ul&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;ContinueAsNewWorkflowExecution&lt;/code&gt; decision that started this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param executionStartToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;The total duration allowed for the new workflow execution.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt;
-- @param input [Data] &lt;p&gt;The input provided to the new workflow execution.&lt;/p&gt;
-- @param workflowType [WorkflowType] &lt;p&gt;Provides details of the &lt;code&gt;WorkflowExecutionContinuedAsNew&lt;/code&gt; event.&lt;/p&gt;
-- @param tagList [TagList] &lt;p&gt;The list of tags associated with the new workflow execution.&lt;/p&gt;
-- Required parameter: decisionTaskCompletedEventId
-- Required parameter: newExecutionRunId
-- Required parameter: taskList
-- Required parameter: childPolicy
-- Required parameter: workflowType
function M.WorkflowExecutionContinuedAsNewEventAttributes(taskList, taskStartToCloseTimeout, newExecutionRunId, taskPriority, lambdaRole, childPolicy, decisionTaskCompletedEventId, executionStartToCloseTimeout, input, workflowType, tagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionContinuedAsNewEventAttributes")
	local t = { 
		["taskList"] = taskList,
		["taskStartToCloseTimeout"] = taskStartToCloseTimeout,
		["newExecutionRunId"] = newExecutionRunId,
		["taskPriority"] = taskPriority,
		["lambdaRole"] = lambdaRole,
		["childPolicy"] = childPolicy,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
		["executionStartToCloseTimeout"] = executionStartToCloseTimeout,
		["input"] = input,
		["workflowType"] = workflowType,
		["tagList"] = tagList,
	}
	M.AssertWorkflowExecutionContinuedAsNewEventAttributes(t)
	return t
end

local MarkerRecordedEventAttributes_keys = { "markerName" = true, "details" = true, "decisionTaskCompletedEventId" = true, nil }

function M.AssertMarkerRecordedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MarkerRecordedEventAttributes to be of type 'table'")
	assert(struct["markerName"], "Expected key markerName to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["markerName"] then M.AssertMarkerName(struct["markerName"]) end
	if struct["details"] then M.AssertData(struct["details"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(MarkerRecordedEventAttributes_keys[k], "MarkerRecordedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MarkerRecordedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;MarkerRecorded&lt;/code&gt; event.&lt;/p&gt;
-- @param markerName [MarkerName] &lt;p&gt;The name of the marker.&lt;/p&gt;
-- @param details [Data] &lt;p&gt;Details of the marker (if any).&lt;/p&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;RecordMarker&lt;/code&gt; decision that requested this marker. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- Required parameter: markerName
-- Required parameter: decisionTaskCompletedEventId
function M.MarkerRecordedEventAttributes(markerName, details, decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MarkerRecordedEventAttributes")
	local t = { 
		["markerName"] = markerName,
		["details"] = details,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
	}
	M.AssertMarkerRecordedEventAttributes(t)
	return t
end

local DomainDetail_keys = { "domainInfo" = true, "configuration" = true, nil }

function M.AssertDomainDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainDetail to be of type 'table'")
	assert(struct["domainInfo"], "Expected key domainInfo to exist in table")
	assert(struct["configuration"], "Expected key configuration to exist in table")
	if struct["domainInfo"] then M.AssertDomainInfo(struct["domainInfo"]) end
	if struct["configuration"] then M.AssertDomainConfiguration(struct["configuration"]) end
	for k,_ in pairs(struct) do
		assert(DomainDetail_keys[k], "DomainDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainDetail
-- &lt;p&gt;Contains details of a domain.&lt;/p&gt;
-- @param domainInfo [DomainInfo] &lt;p&gt;Contains details of a domain.&lt;/p&gt;
-- @param configuration [DomainConfiguration] &lt;p&gt;Contains details of a domain.&lt;/p&gt;
-- Required parameter: domainInfo
-- Required parameter: configuration
function M.DomainDetail(domainInfo, configuration, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainDetail")
	local t = { 
		["domainInfo"] = domainInfo,
		["configuration"] = configuration,
	}
	M.AssertDomainDetail(t)
	return t
end

local DomainInfos_keys = { "domainInfos" = true, "nextPageToken" = true, nil }

function M.AssertDomainInfos(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainInfos to be of type 'table'")
	assert(struct["domainInfos"], "Expected key domainInfos to exist in table")
	if struct["domainInfos"] then M.AssertDomainInfoList(struct["domainInfos"]) end
	if struct["nextPageToken"] then M.AssertPageToken(struct["nextPageToken"]) end
	for k,_ in pairs(struct) do
		assert(DomainInfos_keys[k], "DomainInfos contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainInfos
-- &lt;p&gt;Contains a paginated collection of DomainInfo structures.&lt;/p&gt;
-- @param domainInfos [DomainInfoList] &lt;p&gt;A list of DomainInfo structures.&lt;/p&gt;
-- @param nextPageToken [PageToken] &lt;p&gt;If a &lt;code&gt;NextPageToken&lt;/code&gt; was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in &lt;code&gt;nextPageToken&lt;/code&gt;. Keep all other arguments unchanged.&lt;/p&gt; &lt;p&gt;The configured &lt;code&gt;maximumPageSize&lt;/code&gt; determines how many results can be returned in a single call.&lt;/p&gt;
-- Required parameter: domainInfos
function M.DomainInfos(domainInfos, nextPageToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainInfos")
	local t = { 
		["domainInfos"] = domainInfos,
		["nextPageToken"] = nextPageToken,
	}
	M.AssertDomainInfos(t)
	return t
end

local FailWorkflowExecutionFailedEventAttributes_keys = { "cause" = true, "decisionTaskCompletedEventId" = true, nil }

function M.AssertFailWorkflowExecutionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailWorkflowExecutionFailedEventAttributes to be of type 'table'")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["cause"] then M.AssertFailWorkflowExecutionFailedCause(struct["cause"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(FailWorkflowExecutionFailedEventAttributes_keys[k], "FailWorkflowExecutionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailWorkflowExecutionFailedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;FailWorkflowExecutionFailed&lt;/code&gt; event.&lt;/p&gt;
-- @param cause [FailWorkflowExecutionFailedCause] &lt;p&gt;The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.&lt;/p&gt; &lt;note&gt;If &lt;b&gt;cause&lt;/b&gt; is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/note&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;FailWorkflowExecution&lt;/code&gt; decision to fail this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- Required parameter: cause
-- Required parameter: decisionTaskCompletedEventId
function M.FailWorkflowExecutionFailedEventAttributes(cause, decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FailWorkflowExecutionFailedEventAttributes")
	local t = { 
		["cause"] = cause,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
	}
	M.AssertFailWorkflowExecutionFailedEventAttributes(t)
	return t
end

local SignalExternalWorkflowExecutionFailedEventAttributes_keys = { "control" = true, "workflowId" = true, "initiatedEventId" = true, "runId" = true, "decisionTaskCompletedEventId" = true, "cause" = true, nil }

function M.AssertSignalExternalWorkflowExecutionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SignalExternalWorkflowExecutionFailedEventAttributes to be of type 'table'")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["control"] then M.AssertData(struct["control"]) end
	if struct["workflowId"] then M.AssertWorkflowId(struct["workflowId"]) end
	if struct["initiatedEventId"] then M.AssertEventId(struct["initiatedEventId"]) end
	if struct["runId"] then M.AssertRunIdOptional(struct["runId"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["cause"] then M.AssertSignalExternalWorkflowExecutionFailedCause(struct["cause"]) end
	for k,_ in pairs(struct) do
		assert(SignalExternalWorkflowExecutionFailedEventAttributes_keys[k], "SignalExternalWorkflowExecutionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SignalExternalWorkflowExecutionFailedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;SignalExternalWorkflowExecutionFailed&lt;/code&gt; event.&lt;/p&gt;
-- @param control [Data] &lt;p&gt;Provides details of the &lt;code&gt;SignalExternalWorkflowExecutionFailed&lt;/code&gt; event.&lt;/p&gt;
-- @param workflowId [WorkflowId] &lt;p&gt;The &lt;code&gt;workflowId&lt;/code&gt; of the external workflow execution that the signal was being delivered to.&lt;/p&gt;
-- @param initiatedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;SignalExternalWorkflowExecutionInitiated&lt;/code&gt; event corresponding to the &lt;code&gt;SignalExternalWorkflowExecution&lt;/code&gt; decision to request this signal. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param runId [RunIdOptional] &lt;p&gt;The &lt;code&gt;runId&lt;/code&gt; of the external workflow execution that the signal was being delivered to.&lt;/p&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;SignalExternalWorkflowExecution&lt;/code&gt; decision for this signal. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param cause [SignalExternalWorkflowExecutionFailedCause] &lt;p&gt;The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.&lt;/p&gt; &lt;note&gt;If &lt;b&gt;cause&lt;/b&gt; is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/note&gt;
-- Required parameter: workflowId
-- Required parameter: cause
-- Required parameter: initiatedEventId
-- Required parameter: decisionTaskCompletedEventId
function M.SignalExternalWorkflowExecutionFailedEventAttributes(control, workflowId, initiatedEventId, runId, decisionTaskCompletedEventId, cause, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SignalExternalWorkflowExecutionFailedEventAttributes")
	local t = { 
		["control"] = control,
		["workflowId"] = workflowId,
		["initiatedEventId"] = initiatedEventId,
		["runId"] = runId,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
		["cause"] = cause,
	}
	M.AssertSignalExternalWorkflowExecutionFailedEventAttributes(t)
	return t
end

local GetWorkflowExecutionHistoryInput_keys = { "nextPageToken" = true, "domain" = true, "execution" = true, "reverseOrder" = true, "maximumPageSize" = true, nil }

function M.AssertGetWorkflowExecutionHistoryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetWorkflowExecutionHistoryInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["execution"], "Expected key execution to exist in table")
	if struct["nextPageToken"] then M.AssertPageToken(struct["nextPageToken"]) end
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["execution"] then M.AssertWorkflowExecution(struct["execution"]) end
	if struct["reverseOrder"] then M.AssertReverseOrder(struct["reverseOrder"]) end
	if struct["maximumPageSize"] then M.AssertPageSize(struct["maximumPageSize"]) end
	for k,_ in pairs(struct) do
		assert(GetWorkflowExecutionHistoryInput_keys[k], "GetWorkflowExecutionHistoryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetWorkflowExecutionHistoryInput
--  
-- @param nextPageToken [PageToken] &lt;p&gt;If a &lt;code&gt;NextPageToken&lt;/code&gt; was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in &lt;code&gt;nextPageToken&lt;/code&gt;. Keep all other arguments unchanged.&lt;/p&gt; &lt;p&gt;The configured &lt;code&gt;maximumPageSize&lt;/code&gt; determines how many results can be returned in a single call.&lt;/p&gt;
-- @param domain [DomainName] &lt;p&gt;The name of the domain containing the workflow execution.&lt;/p&gt;
-- @param execution [WorkflowExecution] &lt;p&gt;Specifies the workflow execution for which to return the history.&lt;/p&gt;
-- @param reverseOrder [ReverseOrder] &lt;p&gt;When set to &lt;code&gt;true&lt;/code&gt;, returns the events in reverse order. By default the results are returned in ascending order of the &lt;code&gt;eventTimeStamp&lt;/code&gt; of the events.&lt;/p&gt;
-- @param maximumPageSize [PageSize] &lt;p&gt;The maximum number of results that will be returned per call. &lt;code&gt;nextPageToken&lt;/code&gt; can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size &lt;i&gt;smaller&lt;/i&gt; than the maximum.&lt;/p&gt; &lt;p&gt;This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.&lt;/p&gt;
-- Required parameter: domain
-- Required parameter: execution
function M.GetWorkflowExecutionHistoryInput(nextPageToken, domain, execution, reverseOrder, maximumPageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetWorkflowExecutionHistoryInput")
	local t = { 
		["nextPageToken"] = nextPageToken,
		["domain"] = domain,
		["execution"] = execution,
		["reverseOrder"] = reverseOrder,
		["maximumPageSize"] = maximumPageSize,
	}
	M.AssertGetWorkflowExecutionHistoryInput(t)
	return t
end

local HistoryEvent_keys = { "workflowExecutionCancelRequestedEventAttributes" = true, "requestCancelExternalWorkflowExecutionInitiatedEventAttributes" = true, "completeWorkflowExecutionFailedEventAttributes" = true, "childWorkflowExecutionStartedEventAttributes" = true, "activityTaskScheduledEventAttributes" = true, "eventType" = true, "decisionTaskTimedOutEventAttributes" = true, "workflowExecutionTimedOutEventAttributes" = true, "cancelWorkflowExecutionFailedEventAttributes" = true, "eventTimestamp" = true, "lambdaFunctionCompletedEventAttributes" = true, "timerCanceledEventAttributes" = true, "startChildWorkflowExecutionFailedEventAttributes" = true, "eventId" = true, "workflowExecutionContinuedAsNewEventAttributes" = true, "childWorkflowExecutionTimedOutEventAttributes" = true, "childWorkflowExecutionCanceledEventAttributes" = true, "activityTaskStartedEventAttributes" = true, "activityTaskCompletedEventAttributes" = true, "activityTaskFailedEventAttributes" = true, "signalExternalWorkflowExecutionInitiatedEventAttributes" = true, "recordMarkerFailedEventAttributes" = true, "externalWorkflowExecutionSignaledEventAttributes" = true, "lambdaFunctionTimedOutEventAttributes" = true, "childWorkflowExecutionCompletedEventAttributes" = true, "startLambdaFunctionFailedEventAttributes" = true, "workflowExecutionSignaledEventAttributes" = true, "scheduleActivityTaskFailedEventAttributes" = true, "childWorkflowExecutionTerminatedEventAttributes" = true, "externalWorkflowExecutionCancelRequestedEventAttributes" = true, "workflowExecutionCanceledEventAttributes" = true, "requestCancelExternalWorkflowExecutionFailedEventAttributes" = true, "workflowExecutionTerminatedEventAttributes" = true, "decisionTaskScheduledEventAttributes" = true, "lambdaFunctionFailedEventAttributes" = true, "activityTaskCanceledEventAttributes" = true, "cancelTimerFailedEventAttributes" = true, "startTimerFailedEventAttributes" = true, "timerFiredEventAttributes" = true, "failWorkflowExecutionFailedEventAttributes" = true, "workflowExecutionStartedEventAttributes" = true, "decisionTaskCompletedEventAttributes" = true, "workflowExecutionFailedEventAttributes" = true, "timerStartedEventAttributes" = true, "requestCancelActivityTaskFailedEventAttributes" = true, "activityTaskTimedOutEventAttributes" = true, "continueAsNewWorkflowExecutionFailedEventAttributes" = true, "signalExternalWorkflowExecutionFailedEventAttributes" = true, "startChildWorkflowExecutionInitiatedEventAttributes" = true, "markerRecordedEventAttributes" = true, "lambdaFunctionScheduledEventAttributes" = true, "scheduleLambdaFunctionFailedEventAttributes" = true, "workflowExecutionCompletedEventAttributes" = true, "decisionTaskStartedEventAttributes" = true, "childWorkflowExecutionFailedEventAttributes" = true, "activityTaskCancelRequestedEventAttributes" = true, "lambdaFunctionStartedEventAttributes" = true, nil }

function M.AssertHistoryEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HistoryEvent to be of type 'table'")
	assert(struct["eventTimestamp"], "Expected key eventTimestamp to exist in table")
	assert(struct["eventType"], "Expected key eventType to exist in table")
	assert(struct["eventId"], "Expected key eventId to exist in table")
	if struct["workflowExecutionCancelRequestedEventAttributes"] then M.AssertWorkflowExecutionCancelRequestedEventAttributes(struct["workflowExecutionCancelRequestedEventAttributes"]) end
	if struct["requestCancelExternalWorkflowExecutionInitiatedEventAttributes"] then M.AssertRequestCancelExternalWorkflowExecutionInitiatedEventAttributes(struct["requestCancelExternalWorkflowExecutionInitiatedEventAttributes"]) end
	if struct["completeWorkflowExecutionFailedEventAttributes"] then M.AssertCompleteWorkflowExecutionFailedEventAttributes(struct["completeWorkflowExecutionFailedEventAttributes"]) end
	if struct["childWorkflowExecutionStartedEventAttributes"] then M.AssertChildWorkflowExecutionStartedEventAttributes(struct["childWorkflowExecutionStartedEventAttributes"]) end
	if struct["activityTaskScheduledEventAttributes"] then M.AssertActivityTaskScheduledEventAttributes(struct["activityTaskScheduledEventAttributes"]) end
	if struct["eventType"] then M.AssertEventType(struct["eventType"]) end
	if struct["decisionTaskTimedOutEventAttributes"] then M.AssertDecisionTaskTimedOutEventAttributes(struct["decisionTaskTimedOutEventAttributes"]) end
	if struct["workflowExecutionTimedOutEventAttributes"] then M.AssertWorkflowExecutionTimedOutEventAttributes(struct["workflowExecutionTimedOutEventAttributes"]) end
	if struct["cancelWorkflowExecutionFailedEventAttributes"] then M.AssertCancelWorkflowExecutionFailedEventAttributes(struct["cancelWorkflowExecutionFailedEventAttributes"]) end
	if struct["eventTimestamp"] then M.AssertTimestamp(struct["eventTimestamp"]) end
	if struct["lambdaFunctionCompletedEventAttributes"] then M.AssertLambdaFunctionCompletedEventAttributes(struct["lambdaFunctionCompletedEventAttributes"]) end
	if struct["timerCanceledEventAttributes"] then M.AssertTimerCanceledEventAttributes(struct["timerCanceledEventAttributes"]) end
	if struct["startChildWorkflowExecutionFailedEventAttributes"] then M.AssertStartChildWorkflowExecutionFailedEventAttributes(struct["startChildWorkflowExecutionFailedEventAttributes"]) end
	if struct["eventId"] then M.AssertEventId(struct["eventId"]) end
	if struct["workflowExecutionContinuedAsNewEventAttributes"] then M.AssertWorkflowExecutionContinuedAsNewEventAttributes(struct["workflowExecutionContinuedAsNewEventAttributes"]) end
	if struct["childWorkflowExecutionTimedOutEventAttributes"] then M.AssertChildWorkflowExecutionTimedOutEventAttributes(struct["childWorkflowExecutionTimedOutEventAttributes"]) end
	if struct["childWorkflowExecutionCanceledEventAttributes"] then M.AssertChildWorkflowExecutionCanceledEventAttributes(struct["childWorkflowExecutionCanceledEventAttributes"]) end
	if struct["activityTaskStartedEventAttributes"] then M.AssertActivityTaskStartedEventAttributes(struct["activityTaskStartedEventAttributes"]) end
	if struct["activityTaskCompletedEventAttributes"] then M.AssertActivityTaskCompletedEventAttributes(struct["activityTaskCompletedEventAttributes"]) end
	if struct["activityTaskFailedEventAttributes"] then M.AssertActivityTaskFailedEventAttributes(struct["activityTaskFailedEventAttributes"]) end
	if struct["signalExternalWorkflowExecutionInitiatedEventAttributes"] then M.AssertSignalExternalWorkflowExecutionInitiatedEventAttributes(struct["signalExternalWorkflowExecutionInitiatedEventAttributes"]) end
	if struct["recordMarkerFailedEventAttributes"] then M.AssertRecordMarkerFailedEventAttributes(struct["recordMarkerFailedEventAttributes"]) end
	if struct["externalWorkflowExecutionSignaledEventAttributes"] then M.AssertExternalWorkflowExecutionSignaledEventAttributes(struct["externalWorkflowExecutionSignaledEventAttributes"]) end
	if struct["lambdaFunctionTimedOutEventAttributes"] then M.AssertLambdaFunctionTimedOutEventAttributes(struct["lambdaFunctionTimedOutEventAttributes"]) end
	if struct["childWorkflowExecutionCompletedEventAttributes"] then M.AssertChildWorkflowExecutionCompletedEventAttributes(struct["childWorkflowExecutionCompletedEventAttributes"]) end
	if struct["startLambdaFunctionFailedEventAttributes"] then M.AssertStartLambdaFunctionFailedEventAttributes(struct["startLambdaFunctionFailedEventAttributes"]) end
	if struct["workflowExecutionSignaledEventAttributes"] then M.AssertWorkflowExecutionSignaledEventAttributes(struct["workflowExecutionSignaledEventAttributes"]) end
	if struct["scheduleActivityTaskFailedEventAttributes"] then M.AssertScheduleActivityTaskFailedEventAttributes(struct["scheduleActivityTaskFailedEventAttributes"]) end
	if struct["childWorkflowExecutionTerminatedEventAttributes"] then M.AssertChildWorkflowExecutionTerminatedEventAttributes(struct["childWorkflowExecutionTerminatedEventAttributes"]) end
	if struct["externalWorkflowExecutionCancelRequestedEventAttributes"] then M.AssertExternalWorkflowExecutionCancelRequestedEventAttributes(struct["externalWorkflowExecutionCancelRequestedEventAttributes"]) end
	if struct["workflowExecutionCanceledEventAttributes"] then M.AssertWorkflowExecutionCanceledEventAttributes(struct["workflowExecutionCanceledEventAttributes"]) end
	if struct["requestCancelExternalWorkflowExecutionFailedEventAttributes"] then M.AssertRequestCancelExternalWorkflowExecutionFailedEventAttributes(struct["requestCancelExternalWorkflowExecutionFailedEventAttributes"]) end
	if struct["workflowExecutionTerminatedEventAttributes"] then M.AssertWorkflowExecutionTerminatedEventAttributes(struct["workflowExecutionTerminatedEventAttributes"]) end
	if struct["decisionTaskScheduledEventAttributes"] then M.AssertDecisionTaskScheduledEventAttributes(struct["decisionTaskScheduledEventAttributes"]) end
	if struct["lambdaFunctionFailedEventAttributes"] then M.AssertLambdaFunctionFailedEventAttributes(struct["lambdaFunctionFailedEventAttributes"]) end
	if struct["activityTaskCanceledEventAttributes"] then M.AssertActivityTaskCanceledEventAttributes(struct["activityTaskCanceledEventAttributes"]) end
	if struct["cancelTimerFailedEventAttributes"] then M.AssertCancelTimerFailedEventAttributes(struct["cancelTimerFailedEventAttributes"]) end
	if struct["startTimerFailedEventAttributes"] then M.AssertStartTimerFailedEventAttributes(struct["startTimerFailedEventAttributes"]) end
	if struct["timerFiredEventAttributes"] then M.AssertTimerFiredEventAttributes(struct["timerFiredEventAttributes"]) end
	if struct["failWorkflowExecutionFailedEventAttributes"] then M.AssertFailWorkflowExecutionFailedEventAttributes(struct["failWorkflowExecutionFailedEventAttributes"]) end
	if struct["workflowExecutionStartedEventAttributes"] then M.AssertWorkflowExecutionStartedEventAttributes(struct["workflowExecutionStartedEventAttributes"]) end
	if struct["decisionTaskCompletedEventAttributes"] then M.AssertDecisionTaskCompletedEventAttributes(struct["decisionTaskCompletedEventAttributes"]) end
	if struct["workflowExecutionFailedEventAttributes"] then M.AssertWorkflowExecutionFailedEventAttributes(struct["workflowExecutionFailedEventAttributes"]) end
	if struct["timerStartedEventAttributes"] then M.AssertTimerStartedEventAttributes(struct["timerStartedEventAttributes"]) end
	if struct["requestCancelActivityTaskFailedEventAttributes"] then M.AssertRequestCancelActivityTaskFailedEventAttributes(struct["requestCancelActivityTaskFailedEventAttributes"]) end
	if struct["activityTaskTimedOutEventAttributes"] then M.AssertActivityTaskTimedOutEventAttributes(struct["activityTaskTimedOutEventAttributes"]) end
	if struct["continueAsNewWorkflowExecutionFailedEventAttributes"] then M.AssertContinueAsNewWorkflowExecutionFailedEventAttributes(struct["continueAsNewWorkflowExecutionFailedEventAttributes"]) end
	if struct["signalExternalWorkflowExecutionFailedEventAttributes"] then M.AssertSignalExternalWorkflowExecutionFailedEventAttributes(struct["signalExternalWorkflowExecutionFailedEventAttributes"]) end
	if struct["startChildWorkflowExecutionInitiatedEventAttributes"] then M.AssertStartChildWorkflowExecutionInitiatedEventAttributes(struct["startChildWorkflowExecutionInitiatedEventAttributes"]) end
	if struct["markerRecordedEventAttributes"] then M.AssertMarkerRecordedEventAttributes(struct["markerRecordedEventAttributes"]) end
	if struct["lambdaFunctionScheduledEventAttributes"] then M.AssertLambdaFunctionScheduledEventAttributes(struct["lambdaFunctionScheduledEventAttributes"]) end
	if struct["scheduleLambdaFunctionFailedEventAttributes"] then M.AssertScheduleLambdaFunctionFailedEventAttributes(struct["scheduleLambdaFunctionFailedEventAttributes"]) end
	if struct["workflowExecutionCompletedEventAttributes"] then M.AssertWorkflowExecutionCompletedEventAttributes(struct["workflowExecutionCompletedEventAttributes"]) end
	if struct["decisionTaskStartedEventAttributes"] then M.AssertDecisionTaskStartedEventAttributes(struct["decisionTaskStartedEventAttributes"]) end
	if struct["childWorkflowExecutionFailedEventAttributes"] then M.AssertChildWorkflowExecutionFailedEventAttributes(struct["childWorkflowExecutionFailedEventAttributes"]) end
	if struct["activityTaskCancelRequestedEventAttributes"] then M.AssertActivityTaskCancelRequestedEventAttributes(struct["activityTaskCancelRequestedEventAttributes"]) end
	if struct["lambdaFunctionStartedEventAttributes"] then M.AssertLambdaFunctionStartedEventAttributes(struct["lambdaFunctionStartedEventAttributes"]) end
	for k,_ in pairs(struct) do
		assert(HistoryEvent_keys[k], "HistoryEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HistoryEvent
-- &lt;p&gt;Event within a workflow execution. A history event can be one of these types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionStarted&lt;/b&gt;: The workflow execution was started.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCompleted&lt;/b&gt;: The workflow execution was closed due to successful completion.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionFailed&lt;/b&gt;: The workflow execution closed due to a failure.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionTimedOut&lt;/b&gt;: The workflow execution was closed because a time out was exceeded.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCanceled&lt;/b&gt;: The workflow execution was successfully canceled and closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionTerminated&lt;/b&gt;: The workflow execution was terminated.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionContinuedAsNew&lt;/b&gt;: The workflow execution was closed and a new execution of the same type was created with the same workflowId.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCancelRequested&lt;/b&gt;: A request to cancel this workflow execution was made.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskScheduled&lt;/b&gt;: A decision task was scheduled for the workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskStarted&lt;/b&gt;: The decision task was dispatched to a decider.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskCompleted&lt;/b&gt;: The decider successfully completed a decision task by calling &lt;a&gt;RespondDecisionTaskCompleted&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskTimedOut&lt;/b&gt;: The decision task timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskScheduled&lt;/b&gt;: An activity task was scheduled for execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleActivityTaskFailed&lt;/b&gt;: Failed to process ScheduleActivityTask decision. This happens when the decision is not configured properly, for example the activity type specified is not registered.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskStarted&lt;/b&gt;: The scheduled activity task was dispatched to a worker.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCompleted&lt;/b&gt;: An activity worker successfully completed an activity task by calling &lt;a&gt;RespondActivityTaskCompleted&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskFailed&lt;/b&gt;: An activity worker failed an activity task by calling &lt;a&gt;RespondActivityTaskFailed&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskTimedOut&lt;/b&gt;: The activity task timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCanceled&lt;/b&gt;: The activity task was successfully canceled.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCancelRequested&lt;/b&gt;: A &lt;code&gt;RequestCancelActivityTask&lt;/code&gt; decision was received by the system.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelActivityTaskFailed&lt;/b&gt;: Failed to process RequestCancelActivityTask decision. This happens when the decision is not configured properly.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionSignaled&lt;/b&gt;: An external signal was received for the workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;MarkerRecorded&lt;/b&gt;: A marker was recorded in the workflow history as the result of a &lt;code&gt;RecordMarker&lt;/code&gt; decision.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerStarted&lt;/b&gt;: A timer was started for the workflow execution due to a &lt;code&gt;StartTimer&lt;/code&gt; decision.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartTimerFailed&lt;/b&gt;: Failed to process StartTimer decision. This happens when the decision is not configured properly, for example a timer already exists with the specified timer ID.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerFired&lt;/b&gt;: A timer, previously started for this workflow execution, fired.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerCanceled&lt;/b&gt;: A timer, previously started for this workflow execution, was successfully canceled.&lt;/li&gt; &lt;li&gt; &lt;b&gt;CancelTimerFailed&lt;/b&gt;: Failed to process CancelTimer decision. This happens when the decision is not configured properly, for example no timer exists with the specified timer ID.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartChildWorkflowExecutionInitiated&lt;/b&gt;: A request was made to start a child workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartChildWorkflowExecutionFailed&lt;/b&gt;: Failed to process StartChildWorkflowExecution decision. This happens when the decision is not configured properly, for example the workflow type specified is not registered.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionStarted&lt;/b&gt;: A child workflow execution was successfully started.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionCompleted&lt;/b&gt;: A child workflow execution, started by this workflow execution, completed successfully and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionFailed&lt;/b&gt;: A child workflow execution, started by this workflow execution, failed to complete successfully and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionTimedOut&lt;/b&gt;: A child workflow execution, started by this workflow execution, timed out and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionCanceled&lt;/b&gt;: A child workflow execution, started by this workflow execution, was canceled and closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionTerminated&lt;/b&gt;: A child workflow execution, started by this workflow execution, was terminated.&lt;/li&gt; &lt;li&gt; &lt;b&gt;SignalExternalWorkflowExecutionInitiated&lt;/b&gt;: A request to signal an external workflow was made.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ExternalWorkflowExecutionSignaled&lt;/b&gt;: A signal, requested by this workflow execution, was successfully delivered to the target external workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;SignalExternalWorkflowExecutionFailed&lt;/b&gt;: The request to signal an external workflow execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelExternalWorkflowExecutionInitiated&lt;/b&gt;: A request was made to request the cancellation of an external workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ExternalWorkflowExecutionCancelRequested&lt;/b&gt;: Request to cancel an external workflow execution was successfully delivered to the target execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelExternalWorkflowExecutionFailed&lt;/b&gt;: Request to cancel an external workflow execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionScheduled&lt;/b&gt;: An AWS Lambda function was scheduled for execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionStarted&lt;/b&gt;: The scheduled function was invoked in the AWS Lambda service.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionCompleted&lt;/b&gt;: The AWS Lambda function successfully completed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionFailed&lt;/b&gt;: The AWS Lambda function execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionTimedOut&lt;/b&gt;: The AWS Lambda function execution timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleLambdaFunctionFailed&lt;/b&gt;: Failed to process ScheduleLambdaFunction decision. This happens when the workflow execution does not have the proper IAM role attached to invoke AWS Lambda functions.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartLambdaFunctionFailed&lt;/b&gt;: Failed to invoke the scheduled function in the AWS Lambda service. This happens when the AWS Lambda service is not available in the current region, or received too many requests.&lt;/li&gt; &lt;/ul&gt;
-- @param workflowExecutionCancelRequestedEventAttributes [WorkflowExecutionCancelRequestedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;WorkflowExecutionCancelRequested&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param requestCancelExternalWorkflowExecutionInitiatedEventAttributes [RequestCancelExternalWorkflowExecutionInitiatedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;RequestCancelExternalWorkflowExecutionInitiated&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param completeWorkflowExecutionFailedEventAttributes [CompleteWorkflowExecutionFailedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;CompleteWorkflowExecutionFailed&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param childWorkflowExecutionStartedEventAttributes [ChildWorkflowExecutionStartedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;ChildWorkflowExecutionStarted&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param activityTaskScheduledEventAttributes [ActivityTaskScheduledEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;ActivityTaskScheduled&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param eventType [EventType] &lt;p&gt;The type of the history event.&lt;/p&gt;
-- @param decisionTaskTimedOutEventAttributes [DecisionTaskTimedOutEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;DecisionTaskTimedOut&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param workflowExecutionTimedOutEventAttributes [WorkflowExecutionTimedOutEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;WorkflowExecutionTimedOut&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param cancelWorkflowExecutionFailedEventAttributes [CancelWorkflowExecutionFailedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;CancelWorkflowExecutionFailed&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param eventTimestamp [Timestamp] &lt;p&gt;The date and time when the event occurred.&lt;/p&gt;
-- @param lambdaFunctionCompletedEventAttributes [LambdaFunctionCompletedEventAttributes] &lt;p&gt;Event within a workflow execution. A history event can be one of these types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionStarted&lt;/b&gt;: The workflow execution was started.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCompleted&lt;/b&gt;: The workflow execution was closed due to successful completion.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionFailed&lt;/b&gt;: The workflow execution closed due to a failure.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionTimedOut&lt;/b&gt;: The workflow execution was closed because a time out was exceeded.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCanceled&lt;/b&gt;: The workflow execution was successfully canceled and closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionTerminated&lt;/b&gt;: The workflow execution was terminated.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionContinuedAsNew&lt;/b&gt;: The workflow execution was closed and a new execution of the same type was created with the same workflowId.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCancelRequested&lt;/b&gt;: A request to cancel this workflow execution was made.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskScheduled&lt;/b&gt;: A decision task was scheduled for the workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskStarted&lt;/b&gt;: The decision task was dispatched to a decider.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskCompleted&lt;/b&gt;: The decider successfully completed a decision task by calling &lt;a&gt;RespondDecisionTaskCompleted&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskTimedOut&lt;/b&gt;: The decision task timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskScheduled&lt;/b&gt;: An activity task was scheduled for execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleActivityTaskFailed&lt;/b&gt;: Failed to process ScheduleActivityTask decision. This happens when the decision is not configured properly, for example the activity type specified is not registered.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskStarted&lt;/b&gt;: The scheduled activity task was dispatched to a worker.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCompleted&lt;/b&gt;: An activity worker successfully completed an activity task by calling &lt;a&gt;RespondActivityTaskCompleted&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskFailed&lt;/b&gt;: An activity worker failed an activity task by calling &lt;a&gt;RespondActivityTaskFailed&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskTimedOut&lt;/b&gt;: The activity task timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCanceled&lt;/b&gt;: The activity task was successfully canceled.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCancelRequested&lt;/b&gt;: A &lt;code&gt;RequestCancelActivityTask&lt;/code&gt; decision was received by the system.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelActivityTaskFailed&lt;/b&gt;: Failed to process RequestCancelActivityTask decision. This happens when the decision is not configured properly.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionSignaled&lt;/b&gt;: An external signal was received for the workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;MarkerRecorded&lt;/b&gt;: A marker was recorded in the workflow history as the result of a &lt;code&gt;RecordMarker&lt;/code&gt; decision.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerStarted&lt;/b&gt;: A timer was started for the workflow execution due to a &lt;code&gt;StartTimer&lt;/code&gt; decision.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartTimerFailed&lt;/b&gt;: Failed to process StartTimer decision. This happens when the decision is not configured properly, for example a timer already exists with the specified timer ID.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerFired&lt;/b&gt;: A timer, previously started for this workflow execution, fired.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerCanceled&lt;/b&gt;: A timer, previously started for this workflow execution, was successfully canceled.&lt;/li&gt; &lt;li&gt; &lt;b&gt;CancelTimerFailed&lt;/b&gt;: Failed to process CancelTimer decision. This happens when the decision is not configured properly, for example no timer exists with the specified timer ID.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartChildWorkflowExecutionInitiated&lt;/b&gt;: A request was made to start a child workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartChildWorkflowExecutionFailed&lt;/b&gt;: Failed to process StartChildWorkflowExecution decision. This happens when the decision is not configured properly, for example the workflow type specified is not registered.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionStarted&lt;/b&gt;: A child workflow execution was successfully started.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionCompleted&lt;/b&gt;: A child workflow execution, started by this workflow execution, completed successfully and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionFailed&lt;/b&gt;: A child workflow execution, started by this workflow execution, failed to complete successfully and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionTimedOut&lt;/b&gt;: A child workflow execution, started by this workflow execution, timed out and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionCanceled&lt;/b&gt;: A child workflow execution, started by this workflow execution, was canceled and closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionTerminated&lt;/b&gt;: A child workflow execution, started by this workflow execution, was terminated.&lt;/li&gt; &lt;li&gt; &lt;b&gt;SignalExternalWorkflowExecutionInitiated&lt;/b&gt;: A request to signal an external workflow was made.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ExternalWorkflowExecutionSignaled&lt;/b&gt;: A signal, requested by this workflow execution, was successfully delivered to the target external workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;SignalExternalWorkflowExecutionFailed&lt;/b&gt;: The request to signal an external workflow execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelExternalWorkflowExecutionInitiated&lt;/b&gt;: A request was made to request the cancellation of an external workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ExternalWorkflowExecutionCancelRequested&lt;/b&gt;: Request to cancel an external workflow execution was successfully delivered to the target execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelExternalWorkflowExecutionFailed&lt;/b&gt;: Request to cancel an external workflow execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionScheduled&lt;/b&gt;: An AWS Lambda function was scheduled for execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionStarted&lt;/b&gt;: The scheduled function was invoked in the AWS Lambda service.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionCompleted&lt;/b&gt;: The AWS Lambda function successfully completed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionFailed&lt;/b&gt;: The AWS Lambda function execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionTimedOut&lt;/b&gt;: The AWS Lambda function execution timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleLambdaFunctionFailed&lt;/b&gt;: Failed to process ScheduleLambdaFunction decision. This happens when the workflow execution does not have the proper IAM role attached to invoke AWS Lambda functions.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartLambdaFunctionFailed&lt;/b&gt;: Failed to invoke the scheduled function in the AWS Lambda service. This happens when the AWS Lambda service is not available in the current region, or received too many requests.&lt;/li&gt; &lt;/ul&gt;
-- @param timerCanceledEventAttributes [TimerCanceledEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;TimerCanceled&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param startChildWorkflowExecutionFailedEventAttributes [StartChildWorkflowExecutionFailedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;StartChildWorkflowExecutionFailed&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param eventId [EventId] &lt;p&gt;The system generated ID of the event. This ID uniquely identifies the event with in the workflow execution history.&lt;/p&gt;
-- @param workflowExecutionContinuedAsNewEventAttributes [WorkflowExecutionContinuedAsNewEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;WorkflowExecutionContinuedAsNew&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param childWorkflowExecutionTimedOutEventAttributes [ChildWorkflowExecutionTimedOutEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;ChildWorkflowExecutionTimedOut&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param childWorkflowExecutionCanceledEventAttributes [ChildWorkflowExecutionCanceledEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;ChildWorkflowExecutionCanceled&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param activityTaskStartedEventAttributes [ActivityTaskStartedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;ActivityTaskStarted&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param activityTaskCompletedEventAttributes [ActivityTaskCompletedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;ActivityTaskCompleted&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param activityTaskFailedEventAttributes [ActivityTaskFailedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;ActivityTaskFailed&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param signalExternalWorkflowExecutionInitiatedEventAttributes [SignalExternalWorkflowExecutionInitiatedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;SignalExternalWorkflowExecutionInitiated&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param recordMarkerFailedEventAttributes [RecordMarkerFailedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;DecisionTaskFailed&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param externalWorkflowExecutionSignaledEventAttributes [ExternalWorkflowExecutionSignaledEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;ExternalWorkflowExecutionSignaled&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param lambdaFunctionTimedOutEventAttributes [LambdaFunctionTimedOutEventAttributes] &lt;p&gt;Event within a workflow execution. A history event can be one of these types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionStarted&lt;/b&gt;: The workflow execution was started.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCompleted&lt;/b&gt;: The workflow execution was closed due to successful completion.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionFailed&lt;/b&gt;: The workflow execution closed due to a failure.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionTimedOut&lt;/b&gt;: The workflow execution was closed because a time out was exceeded.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCanceled&lt;/b&gt;: The workflow execution was successfully canceled and closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionTerminated&lt;/b&gt;: The workflow execution was terminated.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionContinuedAsNew&lt;/b&gt;: The workflow execution was closed and a new execution of the same type was created with the same workflowId.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCancelRequested&lt;/b&gt;: A request to cancel this workflow execution was made.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskScheduled&lt;/b&gt;: A decision task was scheduled for the workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskStarted&lt;/b&gt;: The decision task was dispatched to a decider.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskCompleted&lt;/b&gt;: The decider successfully completed a decision task by calling &lt;a&gt;RespondDecisionTaskCompleted&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskTimedOut&lt;/b&gt;: The decision task timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskScheduled&lt;/b&gt;: An activity task was scheduled for execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleActivityTaskFailed&lt;/b&gt;: Failed to process ScheduleActivityTask decision. This happens when the decision is not configured properly, for example the activity type specified is not registered.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskStarted&lt;/b&gt;: The scheduled activity task was dispatched to a worker.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCompleted&lt;/b&gt;: An activity worker successfully completed an activity task by calling &lt;a&gt;RespondActivityTaskCompleted&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskFailed&lt;/b&gt;: An activity worker failed an activity task by calling &lt;a&gt;RespondActivityTaskFailed&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskTimedOut&lt;/b&gt;: The activity task timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCanceled&lt;/b&gt;: The activity task was successfully canceled.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCancelRequested&lt;/b&gt;: A &lt;code&gt;RequestCancelActivityTask&lt;/code&gt; decision was received by the system.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelActivityTaskFailed&lt;/b&gt;: Failed to process RequestCancelActivityTask decision. This happens when the decision is not configured properly.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionSignaled&lt;/b&gt;: An external signal was received for the workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;MarkerRecorded&lt;/b&gt;: A marker was recorded in the workflow history as the result of a &lt;code&gt;RecordMarker&lt;/code&gt; decision.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerStarted&lt;/b&gt;: A timer was started for the workflow execution due to a &lt;code&gt;StartTimer&lt;/code&gt; decision.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartTimerFailed&lt;/b&gt;: Failed to process StartTimer decision. This happens when the decision is not configured properly, for example a timer already exists with the specified timer ID.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerFired&lt;/b&gt;: A timer, previously started for this workflow execution, fired.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerCanceled&lt;/b&gt;: A timer, previously started for this workflow execution, was successfully canceled.&lt;/li&gt; &lt;li&gt; &lt;b&gt;CancelTimerFailed&lt;/b&gt;: Failed to process CancelTimer decision. This happens when the decision is not configured properly, for example no timer exists with the specified timer ID.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartChildWorkflowExecutionInitiated&lt;/b&gt;: A request was made to start a child workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartChildWorkflowExecutionFailed&lt;/b&gt;: Failed to process StartChildWorkflowExecution decision. This happens when the decision is not configured properly, for example the workflow type specified is not registered.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionStarted&lt;/b&gt;: A child workflow execution was successfully started.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionCompleted&lt;/b&gt;: A child workflow execution, started by this workflow execution, completed successfully and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionFailed&lt;/b&gt;: A child workflow execution, started by this workflow execution, failed to complete successfully and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionTimedOut&lt;/b&gt;: A child workflow execution, started by this workflow execution, timed out and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionCanceled&lt;/b&gt;: A child workflow execution, started by this workflow execution, was canceled and closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionTerminated&lt;/b&gt;: A child workflow execution, started by this workflow execution, was terminated.&lt;/li&gt; &lt;li&gt; &lt;b&gt;SignalExternalWorkflowExecutionInitiated&lt;/b&gt;: A request to signal an external workflow was made.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ExternalWorkflowExecutionSignaled&lt;/b&gt;: A signal, requested by this workflow execution, was successfully delivered to the target external workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;SignalExternalWorkflowExecutionFailed&lt;/b&gt;: The request to signal an external workflow execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelExternalWorkflowExecutionInitiated&lt;/b&gt;: A request was made to request the cancellation of an external workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ExternalWorkflowExecutionCancelRequested&lt;/b&gt;: Request to cancel an external workflow execution was successfully delivered to the target execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelExternalWorkflowExecutionFailed&lt;/b&gt;: Request to cancel an external workflow execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionScheduled&lt;/b&gt;: An AWS Lambda function was scheduled for execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionStarted&lt;/b&gt;: The scheduled function was invoked in the AWS Lambda service.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionCompleted&lt;/b&gt;: The AWS Lambda function successfully completed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionFailed&lt;/b&gt;: The AWS Lambda function execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionTimedOut&lt;/b&gt;: The AWS Lambda function execution timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleLambdaFunctionFailed&lt;/b&gt;: Failed to process ScheduleLambdaFunction decision. This happens when the workflow execution does not have the proper IAM role attached to invoke AWS Lambda functions.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartLambdaFunctionFailed&lt;/b&gt;: Failed to invoke the scheduled function in the AWS Lambda service. This happens when the AWS Lambda service is not available in the current region, or received too many requests.&lt;/li&gt; &lt;/ul&gt;
-- @param childWorkflowExecutionCompletedEventAttributes [ChildWorkflowExecutionCompletedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;ChildWorkflowExecutionCompleted&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param startLambdaFunctionFailedEventAttributes [StartLambdaFunctionFailedEventAttributes] &lt;p&gt;Event within a workflow execution. A history event can be one of these types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionStarted&lt;/b&gt;: The workflow execution was started.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCompleted&lt;/b&gt;: The workflow execution was closed due to successful completion.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionFailed&lt;/b&gt;: The workflow execution closed due to a failure.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionTimedOut&lt;/b&gt;: The workflow execution was closed because a time out was exceeded.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCanceled&lt;/b&gt;: The workflow execution was successfully canceled and closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionTerminated&lt;/b&gt;: The workflow execution was terminated.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionContinuedAsNew&lt;/b&gt;: The workflow execution was closed and a new execution of the same type was created with the same workflowId.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCancelRequested&lt;/b&gt;: A request to cancel this workflow execution was made.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskScheduled&lt;/b&gt;: A decision task was scheduled for the workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskStarted&lt;/b&gt;: The decision task was dispatched to a decider.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskCompleted&lt;/b&gt;: The decider successfully completed a decision task by calling &lt;a&gt;RespondDecisionTaskCompleted&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskTimedOut&lt;/b&gt;: The decision task timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskScheduled&lt;/b&gt;: An activity task was scheduled for execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleActivityTaskFailed&lt;/b&gt;: Failed to process ScheduleActivityTask decision. This happens when the decision is not configured properly, for example the activity type specified is not registered.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskStarted&lt;/b&gt;: The scheduled activity task was dispatched to a worker.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCompleted&lt;/b&gt;: An activity worker successfully completed an activity task by calling &lt;a&gt;RespondActivityTaskCompleted&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskFailed&lt;/b&gt;: An activity worker failed an activity task by calling &lt;a&gt;RespondActivityTaskFailed&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskTimedOut&lt;/b&gt;: The activity task timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCanceled&lt;/b&gt;: The activity task was successfully canceled.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCancelRequested&lt;/b&gt;: A &lt;code&gt;RequestCancelActivityTask&lt;/code&gt; decision was received by the system.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelActivityTaskFailed&lt;/b&gt;: Failed to process RequestCancelActivityTask decision. This happens when the decision is not configured properly.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionSignaled&lt;/b&gt;: An external signal was received for the workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;MarkerRecorded&lt;/b&gt;: A marker was recorded in the workflow history as the result of a &lt;code&gt;RecordMarker&lt;/code&gt; decision.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerStarted&lt;/b&gt;: A timer was started for the workflow execution due to a &lt;code&gt;StartTimer&lt;/code&gt; decision.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartTimerFailed&lt;/b&gt;: Failed to process StartTimer decision. This happens when the decision is not configured properly, for example a timer already exists with the specified timer ID.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerFired&lt;/b&gt;: A timer, previously started for this workflow execution, fired.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerCanceled&lt;/b&gt;: A timer, previously started for this workflow execution, was successfully canceled.&lt;/li&gt; &lt;li&gt; &lt;b&gt;CancelTimerFailed&lt;/b&gt;: Failed to process CancelTimer decision. This happens when the decision is not configured properly, for example no timer exists with the specified timer ID.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartChildWorkflowExecutionInitiated&lt;/b&gt;: A request was made to start a child workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartChildWorkflowExecutionFailed&lt;/b&gt;: Failed to process StartChildWorkflowExecution decision. This happens when the decision is not configured properly, for example the workflow type specified is not registered.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionStarted&lt;/b&gt;: A child workflow execution was successfully started.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionCompleted&lt;/b&gt;: A child workflow execution, started by this workflow execution, completed successfully and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionFailed&lt;/b&gt;: A child workflow execution, started by this workflow execution, failed to complete successfully and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionTimedOut&lt;/b&gt;: A child workflow execution, started by this workflow execution, timed out and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionCanceled&lt;/b&gt;: A child workflow execution, started by this workflow execution, was canceled and closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionTerminated&lt;/b&gt;: A child workflow execution, started by this workflow execution, was terminated.&lt;/li&gt; &lt;li&gt; &lt;b&gt;SignalExternalWorkflowExecutionInitiated&lt;/b&gt;: A request to signal an external workflow was made.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ExternalWorkflowExecutionSignaled&lt;/b&gt;: A signal, requested by this workflow execution, was successfully delivered to the target external workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;SignalExternalWorkflowExecutionFailed&lt;/b&gt;: The request to signal an external workflow execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelExternalWorkflowExecutionInitiated&lt;/b&gt;: A request was made to request the cancellation of an external workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ExternalWorkflowExecutionCancelRequested&lt;/b&gt;: Request to cancel an external workflow execution was successfully delivered to the target execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelExternalWorkflowExecutionFailed&lt;/b&gt;: Request to cancel an external workflow execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionScheduled&lt;/b&gt;: An AWS Lambda function was scheduled for execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionStarted&lt;/b&gt;: The scheduled function was invoked in the AWS Lambda service.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionCompleted&lt;/b&gt;: The AWS Lambda function successfully completed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionFailed&lt;/b&gt;: The AWS Lambda function execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionTimedOut&lt;/b&gt;: The AWS Lambda function execution timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleLambdaFunctionFailed&lt;/b&gt;: Failed to process ScheduleLambdaFunction decision. This happens when the workflow execution does not have the proper IAM role attached to invoke AWS Lambda functions.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartLambdaFunctionFailed&lt;/b&gt;: Failed to invoke the scheduled function in the AWS Lambda service. This happens when the AWS Lambda service is not available in the current region, or received too many requests.&lt;/li&gt; &lt;/ul&gt;
-- @param workflowExecutionSignaledEventAttributes [WorkflowExecutionSignaledEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;WorkflowExecutionSignaled&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param scheduleActivityTaskFailedEventAttributes [ScheduleActivityTaskFailedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;ScheduleActivityTaskFailed&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param childWorkflowExecutionTerminatedEventAttributes [ChildWorkflowExecutionTerminatedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;ChildWorkflowExecutionTerminated&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param externalWorkflowExecutionCancelRequestedEventAttributes [ExternalWorkflowExecutionCancelRequestedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;ExternalWorkflowExecutionCancelRequested&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types. &lt;/p&gt;
-- @param workflowExecutionCanceledEventAttributes [WorkflowExecutionCanceledEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;WorkflowExecutionCanceled&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param requestCancelExternalWorkflowExecutionFailedEventAttributes [RequestCancelExternalWorkflowExecutionFailedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;RequestCancelExternalWorkflowExecutionFailed&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param workflowExecutionTerminatedEventAttributes [WorkflowExecutionTerminatedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;WorkflowExecutionTerminated&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param decisionTaskScheduledEventAttributes [DecisionTaskScheduledEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;DecisionTaskScheduled&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param lambdaFunctionFailedEventAttributes [LambdaFunctionFailedEventAttributes] &lt;p&gt;Event within a workflow execution. A history event can be one of these types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionStarted&lt;/b&gt;: The workflow execution was started.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCompleted&lt;/b&gt;: The workflow execution was closed due to successful completion.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionFailed&lt;/b&gt;: The workflow execution closed due to a failure.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionTimedOut&lt;/b&gt;: The workflow execution was closed because a time out was exceeded.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCanceled&lt;/b&gt;: The workflow execution was successfully canceled and closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionTerminated&lt;/b&gt;: The workflow execution was terminated.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionContinuedAsNew&lt;/b&gt;: The workflow execution was closed and a new execution of the same type was created with the same workflowId.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCancelRequested&lt;/b&gt;: A request to cancel this workflow execution was made.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskScheduled&lt;/b&gt;: A decision task was scheduled for the workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskStarted&lt;/b&gt;: The decision task was dispatched to a decider.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskCompleted&lt;/b&gt;: The decider successfully completed a decision task by calling &lt;a&gt;RespondDecisionTaskCompleted&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskTimedOut&lt;/b&gt;: The decision task timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskScheduled&lt;/b&gt;: An activity task was scheduled for execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleActivityTaskFailed&lt;/b&gt;: Failed to process ScheduleActivityTask decision. This happens when the decision is not configured properly, for example the activity type specified is not registered.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskStarted&lt;/b&gt;: The scheduled activity task was dispatched to a worker.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCompleted&lt;/b&gt;: An activity worker successfully completed an activity task by calling &lt;a&gt;RespondActivityTaskCompleted&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskFailed&lt;/b&gt;: An activity worker failed an activity task by calling &lt;a&gt;RespondActivityTaskFailed&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskTimedOut&lt;/b&gt;: The activity task timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCanceled&lt;/b&gt;: The activity task was successfully canceled.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCancelRequested&lt;/b&gt;: A &lt;code&gt;RequestCancelActivityTask&lt;/code&gt; decision was received by the system.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelActivityTaskFailed&lt;/b&gt;: Failed to process RequestCancelActivityTask decision. This happens when the decision is not configured properly.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionSignaled&lt;/b&gt;: An external signal was received for the workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;MarkerRecorded&lt;/b&gt;: A marker was recorded in the workflow history as the result of a &lt;code&gt;RecordMarker&lt;/code&gt; decision.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerStarted&lt;/b&gt;: A timer was started for the workflow execution due to a &lt;code&gt;StartTimer&lt;/code&gt; decision.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartTimerFailed&lt;/b&gt;: Failed to process StartTimer decision. This happens when the decision is not configured properly, for example a timer already exists with the specified timer ID.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerFired&lt;/b&gt;: A timer, previously started for this workflow execution, fired.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerCanceled&lt;/b&gt;: A timer, previously started for this workflow execution, was successfully canceled.&lt;/li&gt; &lt;li&gt; &lt;b&gt;CancelTimerFailed&lt;/b&gt;: Failed to process CancelTimer decision. This happens when the decision is not configured properly, for example no timer exists with the specified timer ID.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartChildWorkflowExecutionInitiated&lt;/b&gt;: A request was made to start a child workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartChildWorkflowExecutionFailed&lt;/b&gt;: Failed to process StartChildWorkflowExecution decision. This happens when the decision is not configured properly, for example the workflow type specified is not registered.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionStarted&lt;/b&gt;: A child workflow execution was successfully started.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionCompleted&lt;/b&gt;: A child workflow execution, started by this workflow execution, completed successfully and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionFailed&lt;/b&gt;: A child workflow execution, started by this workflow execution, failed to complete successfully and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionTimedOut&lt;/b&gt;: A child workflow execution, started by this workflow execution, timed out and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionCanceled&lt;/b&gt;: A child workflow execution, started by this workflow execution, was canceled and closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionTerminated&lt;/b&gt;: A child workflow execution, started by this workflow execution, was terminated.&lt;/li&gt; &lt;li&gt; &lt;b&gt;SignalExternalWorkflowExecutionInitiated&lt;/b&gt;: A request to signal an external workflow was made.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ExternalWorkflowExecutionSignaled&lt;/b&gt;: A signal, requested by this workflow execution, was successfully delivered to the target external workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;SignalExternalWorkflowExecutionFailed&lt;/b&gt;: The request to signal an external workflow execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelExternalWorkflowExecutionInitiated&lt;/b&gt;: A request was made to request the cancellation of an external workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ExternalWorkflowExecutionCancelRequested&lt;/b&gt;: Request to cancel an external workflow execution was successfully delivered to the target execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelExternalWorkflowExecutionFailed&lt;/b&gt;: Request to cancel an external workflow execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionScheduled&lt;/b&gt;: An AWS Lambda function was scheduled for execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionStarted&lt;/b&gt;: The scheduled function was invoked in the AWS Lambda service.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionCompleted&lt;/b&gt;: The AWS Lambda function successfully completed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionFailed&lt;/b&gt;: The AWS Lambda function execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionTimedOut&lt;/b&gt;: The AWS Lambda function execution timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleLambdaFunctionFailed&lt;/b&gt;: Failed to process ScheduleLambdaFunction decision. This happens when the workflow execution does not have the proper IAM role attached to invoke AWS Lambda functions.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartLambdaFunctionFailed&lt;/b&gt;: Failed to invoke the scheduled function in the AWS Lambda service. This happens when the AWS Lambda service is not available in the current region, or received too many requests.&lt;/li&gt; &lt;/ul&gt;
-- @param activityTaskCanceledEventAttributes [ActivityTaskCanceledEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;ActivityTaskCanceled&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param cancelTimerFailedEventAttributes [CancelTimerFailedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;CancelTimerFailed&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param startTimerFailedEventAttributes [StartTimerFailedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;StartTimerFailed&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param timerFiredEventAttributes [TimerFiredEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;TimerFired&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param failWorkflowExecutionFailedEventAttributes [FailWorkflowExecutionFailedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;FailWorkflowExecutionFailed&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param workflowExecutionStartedEventAttributes [WorkflowExecutionStartedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;WorkflowExecutionStarted&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param decisionTaskCompletedEventAttributes [DecisionTaskCompletedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param workflowExecutionFailedEventAttributes [WorkflowExecutionFailedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;WorkflowExecutionFailed&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param timerStartedEventAttributes [TimerStartedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;TimerStarted&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param requestCancelActivityTaskFailedEventAttributes [RequestCancelActivityTaskFailedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;RequestCancelActivityTaskFailed&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param activityTaskTimedOutEventAttributes [ActivityTaskTimedOutEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;ActivityTaskTimedOut&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param continueAsNewWorkflowExecutionFailedEventAttributes [ContinueAsNewWorkflowExecutionFailedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;ContinueAsNewWorkflowExecutionFailed&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param signalExternalWorkflowExecutionFailedEventAttributes [SignalExternalWorkflowExecutionFailedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;SignalExternalWorkflowExecutionFailed&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param startChildWorkflowExecutionInitiatedEventAttributes [StartChildWorkflowExecutionInitiatedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;StartChildWorkflowExecutionInitiated&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param markerRecordedEventAttributes [MarkerRecordedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;MarkerRecorded&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param lambdaFunctionScheduledEventAttributes [LambdaFunctionScheduledEventAttributes] &lt;p&gt;Event within a workflow execution. A history event can be one of these types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionStarted&lt;/b&gt;: The workflow execution was started.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCompleted&lt;/b&gt;: The workflow execution was closed due to successful completion.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionFailed&lt;/b&gt;: The workflow execution closed due to a failure.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionTimedOut&lt;/b&gt;: The workflow execution was closed because a time out was exceeded.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCanceled&lt;/b&gt;: The workflow execution was successfully canceled and closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionTerminated&lt;/b&gt;: The workflow execution was terminated.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionContinuedAsNew&lt;/b&gt;: The workflow execution was closed and a new execution of the same type was created with the same workflowId.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCancelRequested&lt;/b&gt;: A request to cancel this workflow execution was made.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskScheduled&lt;/b&gt;: A decision task was scheduled for the workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskStarted&lt;/b&gt;: The decision task was dispatched to a decider.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskCompleted&lt;/b&gt;: The decider successfully completed a decision task by calling &lt;a&gt;RespondDecisionTaskCompleted&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskTimedOut&lt;/b&gt;: The decision task timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskScheduled&lt;/b&gt;: An activity task was scheduled for execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleActivityTaskFailed&lt;/b&gt;: Failed to process ScheduleActivityTask decision. This happens when the decision is not configured properly, for example the activity type specified is not registered.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskStarted&lt;/b&gt;: The scheduled activity task was dispatched to a worker.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCompleted&lt;/b&gt;: An activity worker successfully completed an activity task by calling &lt;a&gt;RespondActivityTaskCompleted&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskFailed&lt;/b&gt;: An activity worker failed an activity task by calling &lt;a&gt;RespondActivityTaskFailed&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskTimedOut&lt;/b&gt;: The activity task timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCanceled&lt;/b&gt;: The activity task was successfully canceled.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCancelRequested&lt;/b&gt;: A &lt;code&gt;RequestCancelActivityTask&lt;/code&gt; decision was received by the system.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelActivityTaskFailed&lt;/b&gt;: Failed to process RequestCancelActivityTask decision. This happens when the decision is not configured properly.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionSignaled&lt;/b&gt;: An external signal was received for the workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;MarkerRecorded&lt;/b&gt;: A marker was recorded in the workflow history as the result of a &lt;code&gt;RecordMarker&lt;/code&gt; decision.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerStarted&lt;/b&gt;: A timer was started for the workflow execution due to a &lt;code&gt;StartTimer&lt;/code&gt; decision.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartTimerFailed&lt;/b&gt;: Failed to process StartTimer decision. This happens when the decision is not configured properly, for example a timer already exists with the specified timer ID.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerFired&lt;/b&gt;: A timer, previously started for this workflow execution, fired.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerCanceled&lt;/b&gt;: A timer, previously started for this workflow execution, was successfully canceled.&lt;/li&gt; &lt;li&gt; &lt;b&gt;CancelTimerFailed&lt;/b&gt;: Failed to process CancelTimer decision. This happens when the decision is not configured properly, for example no timer exists with the specified timer ID.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartChildWorkflowExecutionInitiated&lt;/b&gt;: A request was made to start a child workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartChildWorkflowExecutionFailed&lt;/b&gt;: Failed to process StartChildWorkflowExecution decision. This happens when the decision is not configured properly, for example the workflow type specified is not registered.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionStarted&lt;/b&gt;: A child workflow execution was successfully started.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionCompleted&lt;/b&gt;: A child workflow execution, started by this workflow execution, completed successfully and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionFailed&lt;/b&gt;: A child workflow execution, started by this workflow execution, failed to complete successfully and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionTimedOut&lt;/b&gt;: A child workflow execution, started by this workflow execution, timed out and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionCanceled&lt;/b&gt;: A child workflow execution, started by this workflow execution, was canceled and closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionTerminated&lt;/b&gt;: A child workflow execution, started by this workflow execution, was terminated.&lt;/li&gt; &lt;li&gt; &lt;b&gt;SignalExternalWorkflowExecutionInitiated&lt;/b&gt;: A request to signal an external workflow was made.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ExternalWorkflowExecutionSignaled&lt;/b&gt;: A signal, requested by this workflow execution, was successfully delivered to the target external workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;SignalExternalWorkflowExecutionFailed&lt;/b&gt;: The request to signal an external workflow execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelExternalWorkflowExecutionInitiated&lt;/b&gt;: A request was made to request the cancellation of an external workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ExternalWorkflowExecutionCancelRequested&lt;/b&gt;: Request to cancel an external workflow execution was successfully delivered to the target execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelExternalWorkflowExecutionFailed&lt;/b&gt;: Request to cancel an external workflow execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionScheduled&lt;/b&gt;: An AWS Lambda function was scheduled for execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionStarted&lt;/b&gt;: The scheduled function was invoked in the AWS Lambda service.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionCompleted&lt;/b&gt;: The AWS Lambda function successfully completed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionFailed&lt;/b&gt;: The AWS Lambda function execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionTimedOut&lt;/b&gt;: The AWS Lambda function execution timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleLambdaFunctionFailed&lt;/b&gt;: Failed to process ScheduleLambdaFunction decision. This happens when the workflow execution does not have the proper IAM role attached to invoke AWS Lambda functions.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartLambdaFunctionFailed&lt;/b&gt;: Failed to invoke the scheduled function in the AWS Lambda service. This happens when the AWS Lambda service is not available in the current region, or received too many requests.&lt;/li&gt; &lt;/ul&gt;
-- @param scheduleLambdaFunctionFailedEventAttributes [ScheduleLambdaFunctionFailedEventAttributes] &lt;p&gt;Event within a workflow execution. A history event can be one of these types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionStarted&lt;/b&gt;: The workflow execution was started.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCompleted&lt;/b&gt;: The workflow execution was closed due to successful completion.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionFailed&lt;/b&gt;: The workflow execution closed due to a failure.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionTimedOut&lt;/b&gt;: The workflow execution was closed because a time out was exceeded.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCanceled&lt;/b&gt;: The workflow execution was successfully canceled and closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionTerminated&lt;/b&gt;: The workflow execution was terminated.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionContinuedAsNew&lt;/b&gt;: The workflow execution was closed and a new execution of the same type was created with the same workflowId.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCancelRequested&lt;/b&gt;: A request to cancel this workflow execution was made.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskScheduled&lt;/b&gt;: A decision task was scheduled for the workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskStarted&lt;/b&gt;: The decision task was dispatched to a decider.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskCompleted&lt;/b&gt;: The decider successfully completed a decision task by calling &lt;a&gt;RespondDecisionTaskCompleted&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskTimedOut&lt;/b&gt;: The decision task timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskScheduled&lt;/b&gt;: An activity task was scheduled for execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleActivityTaskFailed&lt;/b&gt;: Failed to process ScheduleActivityTask decision. This happens when the decision is not configured properly, for example the activity type specified is not registered.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskStarted&lt;/b&gt;: The scheduled activity task was dispatched to a worker.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCompleted&lt;/b&gt;: An activity worker successfully completed an activity task by calling &lt;a&gt;RespondActivityTaskCompleted&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskFailed&lt;/b&gt;: An activity worker failed an activity task by calling &lt;a&gt;RespondActivityTaskFailed&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskTimedOut&lt;/b&gt;: The activity task timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCanceled&lt;/b&gt;: The activity task was successfully canceled.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCancelRequested&lt;/b&gt;: A &lt;code&gt;RequestCancelActivityTask&lt;/code&gt; decision was received by the system.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelActivityTaskFailed&lt;/b&gt;: Failed to process RequestCancelActivityTask decision. This happens when the decision is not configured properly.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionSignaled&lt;/b&gt;: An external signal was received for the workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;MarkerRecorded&lt;/b&gt;: A marker was recorded in the workflow history as the result of a &lt;code&gt;RecordMarker&lt;/code&gt; decision.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerStarted&lt;/b&gt;: A timer was started for the workflow execution due to a &lt;code&gt;StartTimer&lt;/code&gt; decision.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartTimerFailed&lt;/b&gt;: Failed to process StartTimer decision. This happens when the decision is not configured properly, for example a timer already exists with the specified timer ID.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerFired&lt;/b&gt;: A timer, previously started for this workflow execution, fired.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerCanceled&lt;/b&gt;: A timer, previously started for this workflow execution, was successfully canceled.&lt;/li&gt; &lt;li&gt; &lt;b&gt;CancelTimerFailed&lt;/b&gt;: Failed to process CancelTimer decision. This happens when the decision is not configured properly, for example no timer exists with the specified timer ID.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartChildWorkflowExecutionInitiated&lt;/b&gt;: A request was made to start a child workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartChildWorkflowExecutionFailed&lt;/b&gt;: Failed to process StartChildWorkflowExecution decision. This happens when the decision is not configured properly, for example the workflow type specified is not registered.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionStarted&lt;/b&gt;: A child workflow execution was successfully started.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionCompleted&lt;/b&gt;: A child workflow execution, started by this workflow execution, completed successfully and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionFailed&lt;/b&gt;: A child workflow execution, started by this workflow execution, failed to complete successfully and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionTimedOut&lt;/b&gt;: A child workflow execution, started by this workflow execution, timed out and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionCanceled&lt;/b&gt;: A child workflow execution, started by this workflow execution, was canceled and closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionTerminated&lt;/b&gt;: A child workflow execution, started by this workflow execution, was terminated.&lt;/li&gt; &lt;li&gt; &lt;b&gt;SignalExternalWorkflowExecutionInitiated&lt;/b&gt;: A request to signal an external workflow was made.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ExternalWorkflowExecutionSignaled&lt;/b&gt;: A signal, requested by this workflow execution, was successfully delivered to the target external workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;SignalExternalWorkflowExecutionFailed&lt;/b&gt;: The request to signal an external workflow execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelExternalWorkflowExecutionInitiated&lt;/b&gt;: A request was made to request the cancellation of an external workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ExternalWorkflowExecutionCancelRequested&lt;/b&gt;: Request to cancel an external workflow execution was successfully delivered to the target execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelExternalWorkflowExecutionFailed&lt;/b&gt;: Request to cancel an external workflow execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionScheduled&lt;/b&gt;: An AWS Lambda function was scheduled for execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionStarted&lt;/b&gt;: The scheduled function was invoked in the AWS Lambda service.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionCompleted&lt;/b&gt;: The AWS Lambda function successfully completed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionFailed&lt;/b&gt;: The AWS Lambda function execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionTimedOut&lt;/b&gt;: The AWS Lambda function execution timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleLambdaFunctionFailed&lt;/b&gt;: Failed to process ScheduleLambdaFunction decision. This happens when the workflow execution does not have the proper IAM role attached to invoke AWS Lambda functions.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartLambdaFunctionFailed&lt;/b&gt;: Failed to invoke the scheduled function in the AWS Lambda service. This happens when the AWS Lambda service is not available in the current region, or received too many requests.&lt;/li&gt; &lt;/ul&gt;
-- @param workflowExecutionCompletedEventAttributes [WorkflowExecutionCompletedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;WorkflowExecutionCompleted&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param decisionTaskStartedEventAttributes [DecisionTaskStartedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;DecisionTaskStarted&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param childWorkflowExecutionFailedEventAttributes [ChildWorkflowExecutionFailedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;ChildWorkflowExecutionFailed&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param activityTaskCancelRequestedEventAttributes [ActivityTaskCancelRequestedEventAttributes] &lt;p&gt;If the event is of type &lt;code&gt;ActivityTaskcancelRequested&lt;/code&gt; then this member is set and provides detailed information about the event. It is not set for other event types.&lt;/p&gt;
-- @param lambdaFunctionStartedEventAttributes [LambdaFunctionStartedEventAttributes] &lt;p&gt;Event within a workflow execution. A history event can be one of these types:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionStarted&lt;/b&gt;: The workflow execution was started.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCompleted&lt;/b&gt;: The workflow execution was closed due to successful completion.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionFailed&lt;/b&gt;: The workflow execution closed due to a failure.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionTimedOut&lt;/b&gt;: The workflow execution was closed because a time out was exceeded.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCanceled&lt;/b&gt;: The workflow execution was successfully canceled and closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionTerminated&lt;/b&gt;: The workflow execution was terminated.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionContinuedAsNew&lt;/b&gt;: The workflow execution was closed and a new execution of the same type was created with the same workflowId.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionCancelRequested&lt;/b&gt;: A request to cancel this workflow execution was made.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskScheduled&lt;/b&gt;: A decision task was scheduled for the workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskStarted&lt;/b&gt;: The decision task was dispatched to a decider.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskCompleted&lt;/b&gt;: The decider successfully completed a decision task by calling &lt;a&gt;RespondDecisionTaskCompleted&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DecisionTaskTimedOut&lt;/b&gt;: The decision task timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskScheduled&lt;/b&gt;: An activity task was scheduled for execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleActivityTaskFailed&lt;/b&gt;: Failed to process ScheduleActivityTask decision. This happens when the decision is not configured properly, for example the activity type specified is not registered.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskStarted&lt;/b&gt;: The scheduled activity task was dispatched to a worker.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCompleted&lt;/b&gt;: An activity worker successfully completed an activity task by calling &lt;a&gt;RespondActivityTaskCompleted&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskFailed&lt;/b&gt;: An activity worker failed an activity task by calling &lt;a&gt;RespondActivityTaskFailed&lt;/a&gt;.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskTimedOut&lt;/b&gt;: The activity task timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCanceled&lt;/b&gt;: The activity task was successfully canceled.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ActivityTaskCancelRequested&lt;/b&gt;: A &lt;code&gt;RequestCancelActivityTask&lt;/code&gt; decision was received by the system.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelActivityTaskFailed&lt;/b&gt;: Failed to process RequestCancelActivityTask decision. This happens when the decision is not configured properly.&lt;/li&gt; &lt;li&gt; &lt;b&gt;WorkflowExecutionSignaled&lt;/b&gt;: An external signal was received for the workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;MarkerRecorded&lt;/b&gt;: A marker was recorded in the workflow history as the result of a &lt;code&gt;RecordMarker&lt;/code&gt; decision.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerStarted&lt;/b&gt;: A timer was started for the workflow execution due to a &lt;code&gt;StartTimer&lt;/code&gt; decision.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartTimerFailed&lt;/b&gt;: Failed to process StartTimer decision. This happens when the decision is not configured properly, for example a timer already exists with the specified timer ID.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerFired&lt;/b&gt;: A timer, previously started for this workflow execution, fired.&lt;/li&gt; &lt;li&gt; &lt;b&gt;TimerCanceled&lt;/b&gt;: A timer, previously started for this workflow execution, was successfully canceled.&lt;/li&gt; &lt;li&gt; &lt;b&gt;CancelTimerFailed&lt;/b&gt;: Failed to process CancelTimer decision. This happens when the decision is not configured properly, for example no timer exists with the specified timer ID.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartChildWorkflowExecutionInitiated&lt;/b&gt;: A request was made to start a child workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartChildWorkflowExecutionFailed&lt;/b&gt;: Failed to process StartChildWorkflowExecution decision. This happens when the decision is not configured properly, for example the workflow type specified is not registered.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionStarted&lt;/b&gt;: A child workflow execution was successfully started.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionCompleted&lt;/b&gt;: A child workflow execution, started by this workflow execution, completed successfully and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionFailed&lt;/b&gt;: A child workflow execution, started by this workflow execution, failed to complete successfully and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionTimedOut&lt;/b&gt;: A child workflow execution, started by this workflow execution, timed out and was closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionCanceled&lt;/b&gt;: A child workflow execution, started by this workflow execution, was canceled and closed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ChildWorkflowExecutionTerminated&lt;/b&gt;: A child workflow execution, started by this workflow execution, was terminated.&lt;/li&gt; &lt;li&gt; &lt;b&gt;SignalExternalWorkflowExecutionInitiated&lt;/b&gt;: A request to signal an external workflow was made.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ExternalWorkflowExecutionSignaled&lt;/b&gt;: A signal, requested by this workflow execution, was successfully delivered to the target external workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;SignalExternalWorkflowExecutionFailed&lt;/b&gt;: The request to signal an external workflow execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelExternalWorkflowExecutionInitiated&lt;/b&gt;: A request was made to request the cancellation of an external workflow execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ExternalWorkflowExecutionCancelRequested&lt;/b&gt;: Request to cancel an external workflow execution was successfully delivered to the target execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;RequestCancelExternalWorkflowExecutionFailed&lt;/b&gt;: Request to cancel an external workflow execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionScheduled&lt;/b&gt;: An AWS Lambda function was scheduled for execution.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionStarted&lt;/b&gt;: The scheduled function was invoked in the AWS Lambda service.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionCompleted&lt;/b&gt;: The AWS Lambda function successfully completed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionFailed&lt;/b&gt;: The AWS Lambda function execution failed.&lt;/li&gt; &lt;li&gt; &lt;b&gt;LambdaFunctionTimedOut&lt;/b&gt;: The AWS Lambda function execution timed out.&lt;/li&gt; &lt;li&gt; &lt;b&gt;ScheduleLambdaFunctionFailed&lt;/b&gt;: Failed to process ScheduleLambdaFunction decision. This happens when the workflow execution does not have the proper IAM role attached to invoke AWS Lambda functions.&lt;/li&gt; &lt;li&gt; &lt;b&gt;StartLambdaFunctionFailed&lt;/b&gt;: Failed to invoke the scheduled function in the AWS Lambda service. This happens when the AWS Lambda service is not available in the current region, or received too many requests.&lt;/li&gt; &lt;/ul&gt;
-- Required parameter: eventTimestamp
-- Required parameter: eventType
-- Required parameter: eventId
function M.HistoryEvent(workflowExecutionCancelRequestedEventAttributes, requestCancelExternalWorkflowExecutionInitiatedEventAttributes, completeWorkflowExecutionFailedEventAttributes, childWorkflowExecutionStartedEventAttributes, activityTaskScheduledEventAttributes, eventType, decisionTaskTimedOutEventAttributes, workflowExecutionTimedOutEventAttributes, cancelWorkflowExecutionFailedEventAttributes, eventTimestamp, lambdaFunctionCompletedEventAttributes, timerCanceledEventAttributes, startChildWorkflowExecutionFailedEventAttributes, eventId, workflowExecutionContinuedAsNewEventAttributes, childWorkflowExecutionTimedOutEventAttributes, childWorkflowExecutionCanceledEventAttributes, activityTaskStartedEventAttributes, activityTaskCompletedEventAttributes, activityTaskFailedEventAttributes, signalExternalWorkflowExecutionInitiatedEventAttributes, recordMarkerFailedEventAttributes, externalWorkflowExecutionSignaledEventAttributes, lambdaFunctionTimedOutEventAttributes, childWorkflowExecutionCompletedEventAttributes, startLambdaFunctionFailedEventAttributes, workflowExecutionSignaledEventAttributes, scheduleActivityTaskFailedEventAttributes, childWorkflowExecutionTerminatedEventAttributes, externalWorkflowExecutionCancelRequestedEventAttributes, workflowExecutionCanceledEventAttributes, requestCancelExternalWorkflowExecutionFailedEventAttributes, workflowExecutionTerminatedEventAttributes, decisionTaskScheduledEventAttributes, lambdaFunctionFailedEventAttributes, activityTaskCanceledEventAttributes, cancelTimerFailedEventAttributes, startTimerFailedEventAttributes, timerFiredEventAttributes, failWorkflowExecutionFailedEventAttributes, workflowExecutionStartedEventAttributes, decisionTaskCompletedEventAttributes, workflowExecutionFailedEventAttributes, timerStartedEventAttributes, requestCancelActivityTaskFailedEventAttributes, activityTaskTimedOutEventAttributes, continueAsNewWorkflowExecutionFailedEventAttributes, signalExternalWorkflowExecutionFailedEventAttributes, startChildWorkflowExecutionInitiatedEventAttributes, markerRecordedEventAttributes, lambdaFunctionScheduledEventAttributes, scheduleLambdaFunctionFailedEventAttributes, workflowExecutionCompletedEventAttributes, decisionTaskStartedEventAttributes, childWorkflowExecutionFailedEventAttributes, activityTaskCancelRequestedEventAttributes, lambdaFunctionStartedEventAttributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HistoryEvent")
	local t = { 
		["workflowExecutionCancelRequestedEventAttributes"] = workflowExecutionCancelRequestedEventAttributes,
		["requestCancelExternalWorkflowExecutionInitiatedEventAttributes"] = requestCancelExternalWorkflowExecutionInitiatedEventAttributes,
		["completeWorkflowExecutionFailedEventAttributes"] = completeWorkflowExecutionFailedEventAttributes,
		["childWorkflowExecutionStartedEventAttributes"] = childWorkflowExecutionStartedEventAttributes,
		["activityTaskScheduledEventAttributes"] = activityTaskScheduledEventAttributes,
		["eventType"] = eventType,
		["decisionTaskTimedOutEventAttributes"] = decisionTaskTimedOutEventAttributes,
		["workflowExecutionTimedOutEventAttributes"] = workflowExecutionTimedOutEventAttributes,
		["cancelWorkflowExecutionFailedEventAttributes"] = cancelWorkflowExecutionFailedEventAttributes,
		["eventTimestamp"] = eventTimestamp,
		["lambdaFunctionCompletedEventAttributes"] = lambdaFunctionCompletedEventAttributes,
		["timerCanceledEventAttributes"] = timerCanceledEventAttributes,
		["startChildWorkflowExecutionFailedEventAttributes"] = startChildWorkflowExecutionFailedEventAttributes,
		["eventId"] = eventId,
		["workflowExecutionContinuedAsNewEventAttributes"] = workflowExecutionContinuedAsNewEventAttributes,
		["childWorkflowExecutionTimedOutEventAttributes"] = childWorkflowExecutionTimedOutEventAttributes,
		["childWorkflowExecutionCanceledEventAttributes"] = childWorkflowExecutionCanceledEventAttributes,
		["activityTaskStartedEventAttributes"] = activityTaskStartedEventAttributes,
		["activityTaskCompletedEventAttributes"] = activityTaskCompletedEventAttributes,
		["activityTaskFailedEventAttributes"] = activityTaskFailedEventAttributes,
		["signalExternalWorkflowExecutionInitiatedEventAttributes"] = signalExternalWorkflowExecutionInitiatedEventAttributes,
		["recordMarkerFailedEventAttributes"] = recordMarkerFailedEventAttributes,
		["externalWorkflowExecutionSignaledEventAttributes"] = externalWorkflowExecutionSignaledEventAttributes,
		["lambdaFunctionTimedOutEventAttributes"] = lambdaFunctionTimedOutEventAttributes,
		["childWorkflowExecutionCompletedEventAttributes"] = childWorkflowExecutionCompletedEventAttributes,
		["startLambdaFunctionFailedEventAttributes"] = startLambdaFunctionFailedEventAttributes,
		["workflowExecutionSignaledEventAttributes"] = workflowExecutionSignaledEventAttributes,
		["scheduleActivityTaskFailedEventAttributes"] = scheduleActivityTaskFailedEventAttributes,
		["childWorkflowExecutionTerminatedEventAttributes"] = childWorkflowExecutionTerminatedEventAttributes,
		["externalWorkflowExecutionCancelRequestedEventAttributes"] = externalWorkflowExecutionCancelRequestedEventAttributes,
		["workflowExecutionCanceledEventAttributes"] = workflowExecutionCanceledEventAttributes,
		["requestCancelExternalWorkflowExecutionFailedEventAttributes"] = requestCancelExternalWorkflowExecutionFailedEventAttributes,
		["workflowExecutionTerminatedEventAttributes"] = workflowExecutionTerminatedEventAttributes,
		["decisionTaskScheduledEventAttributes"] = decisionTaskScheduledEventAttributes,
		["lambdaFunctionFailedEventAttributes"] = lambdaFunctionFailedEventAttributes,
		["activityTaskCanceledEventAttributes"] = activityTaskCanceledEventAttributes,
		["cancelTimerFailedEventAttributes"] = cancelTimerFailedEventAttributes,
		["startTimerFailedEventAttributes"] = startTimerFailedEventAttributes,
		["timerFiredEventAttributes"] = timerFiredEventAttributes,
		["failWorkflowExecutionFailedEventAttributes"] = failWorkflowExecutionFailedEventAttributes,
		["workflowExecutionStartedEventAttributes"] = workflowExecutionStartedEventAttributes,
		["decisionTaskCompletedEventAttributes"] = decisionTaskCompletedEventAttributes,
		["workflowExecutionFailedEventAttributes"] = workflowExecutionFailedEventAttributes,
		["timerStartedEventAttributes"] = timerStartedEventAttributes,
		["requestCancelActivityTaskFailedEventAttributes"] = requestCancelActivityTaskFailedEventAttributes,
		["activityTaskTimedOutEventAttributes"] = activityTaskTimedOutEventAttributes,
		["continueAsNewWorkflowExecutionFailedEventAttributes"] = continueAsNewWorkflowExecutionFailedEventAttributes,
		["signalExternalWorkflowExecutionFailedEventAttributes"] = signalExternalWorkflowExecutionFailedEventAttributes,
		["startChildWorkflowExecutionInitiatedEventAttributes"] = startChildWorkflowExecutionInitiatedEventAttributes,
		["markerRecordedEventAttributes"] = markerRecordedEventAttributes,
		["lambdaFunctionScheduledEventAttributes"] = lambdaFunctionScheduledEventAttributes,
		["scheduleLambdaFunctionFailedEventAttributes"] = scheduleLambdaFunctionFailedEventAttributes,
		["workflowExecutionCompletedEventAttributes"] = workflowExecutionCompletedEventAttributes,
		["decisionTaskStartedEventAttributes"] = decisionTaskStartedEventAttributes,
		["childWorkflowExecutionFailedEventAttributes"] = childWorkflowExecutionFailedEventAttributes,
		["activityTaskCancelRequestedEventAttributes"] = activityTaskCancelRequestedEventAttributes,
		["lambdaFunctionStartedEventAttributes"] = lambdaFunctionStartedEventAttributes,
	}
	M.AssertHistoryEvent(t)
	return t
end

local CountOpenWorkflowExecutionsInput_keys = { "domain" = true, "executionFilter" = true, "typeFilter" = true, "startTimeFilter" = true, "tagFilter" = true, nil }

function M.AssertCountOpenWorkflowExecutionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CountOpenWorkflowExecutionsInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["startTimeFilter"], "Expected key startTimeFilter to exist in table")
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["executionFilter"] then M.AssertWorkflowExecutionFilter(struct["executionFilter"]) end
	if struct["typeFilter"] then M.AssertWorkflowTypeFilter(struct["typeFilter"]) end
	if struct["startTimeFilter"] then M.AssertExecutionTimeFilter(struct["startTimeFilter"]) end
	if struct["tagFilter"] then M.AssertTagFilter(struct["tagFilter"]) end
	for k,_ in pairs(struct) do
		assert(CountOpenWorkflowExecutionsInput_keys[k], "CountOpenWorkflowExecutionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CountOpenWorkflowExecutionsInput
--  
-- @param domain [DomainName] &lt;p&gt;The name of the domain containing the workflow executions to count.&lt;/p&gt;
-- @param executionFilter [WorkflowExecutionFilter] &lt;p&gt;If specified, only workflow executions matching the &lt;code&gt;WorkflowId&lt;/code&gt; in the filter are counted.&lt;/p&gt; &lt;note&gt;&lt;code&gt;executionFilter&lt;/code&gt;, &lt;code&gt;typeFilter&lt;/code&gt; and &lt;code&gt;tagFilter&lt;/code&gt; are mutually exclusive. You can specify at most one of these in a request.&lt;/note&gt;
-- @param typeFilter [WorkflowTypeFilter] &lt;p&gt;Specifies the type of the workflow executions to be counted.&lt;/p&gt; &lt;note&gt;&lt;code&gt;executionFilter&lt;/code&gt;, &lt;code&gt;typeFilter&lt;/code&gt; and &lt;code&gt;tagFilter&lt;/code&gt; are mutually exclusive. You can specify at most one of these in a request.&lt;/note&gt;
-- @param startTimeFilter [ExecutionTimeFilter] &lt;p&gt;Specifies the start time criteria that workflow executions must meet in order to be counted.&lt;/p&gt;
-- @param tagFilter [TagFilter] &lt;p&gt;If specified, only executions that have a tag that matches the filter are counted.&lt;/p&gt; &lt;note&gt;&lt;code&gt;executionFilter&lt;/code&gt;, &lt;code&gt;typeFilter&lt;/code&gt; and &lt;code&gt;tagFilter&lt;/code&gt; are mutually exclusive. You can specify at most one of these in a request.&lt;/note&gt;
-- Required parameter: domain
-- Required parameter: startTimeFilter
function M.CountOpenWorkflowExecutionsInput(domain, executionFilter, typeFilter, startTimeFilter, tagFilter, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CountOpenWorkflowExecutionsInput")
	local t = { 
		["domain"] = domain,
		["executionFilter"] = executionFilter,
		["typeFilter"] = typeFilter,
		["startTimeFilter"] = startTimeFilter,
		["tagFilter"] = tagFilter,
	}
	M.AssertCountOpenWorkflowExecutionsInput(t)
	return t
end

local StartChildWorkflowExecutionFailedEventAttributes_keys = { "control" = true, "workflowId" = true, "initiatedEventId" = true, "decisionTaskCompletedEventId" = true, "workflowType" = true, "cause" = true, nil }

function M.AssertStartChildWorkflowExecutionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartChildWorkflowExecutionFailedEventAttributes to be of type 'table'")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["control"] then M.AssertData(struct["control"]) end
	if struct["workflowId"] then M.AssertWorkflowId(struct["workflowId"]) end
	if struct["initiatedEventId"] then M.AssertEventId(struct["initiatedEventId"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["workflowType"] then M.AssertWorkflowType(struct["workflowType"]) end
	if struct["cause"] then M.AssertStartChildWorkflowExecutionFailedCause(struct["cause"]) end
	for k,_ in pairs(struct) do
		assert(StartChildWorkflowExecutionFailedEventAttributes_keys[k], "StartChildWorkflowExecutionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartChildWorkflowExecutionFailedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;StartChildWorkflowExecutionFailed&lt;/code&gt; event.&lt;/p&gt;
-- @param control [Data] &lt;p&gt;Provides details of the &lt;code&gt;StartChildWorkflowExecutionFailed&lt;/code&gt; event.&lt;/p&gt;
-- @param workflowId [WorkflowId] &lt;p&gt;The &lt;code&gt;workflowId&lt;/code&gt; of the child workflow execution.&lt;/p&gt;
-- @param initiatedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;StartChildWorkflowExecutionInitiated&lt;/code&gt; event corresponding to the &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision to request this child workflow execution. This information can be useful for diagnosing problems by tracing back the cause of events.&lt;/p&gt;
-- @param workflowType [WorkflowType] &lt;p&gt;The workflow type provided in the &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision that failed.&lt;/p&gt;
-- @param cause [StartChildWorkflowExecutionFailedCause] &lt;p&gt;The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.&lt;/p&gt; &lt;note&gt;If &lt;b&gt;cause&lt;/b&gt; is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/note&gt;
-- Required parameter: workflowType
-- Required parameter: cause
-- Required parameter: workflowId
-- Required parameter: initiatedEventId
-- Required parameter: decisionTaskCompletedEventId
function M.StartChildWorkflowExecutionFailedEventAttributes(control, workflowId, initiatedEventId, decisionTaskCompletedEventId, workflowType, cause, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartChildWorkflowExecutionFailedEventAttributes")
	local t = { 
		["control"] = control,
		["workflowId"] = workflowId,
		["initiatedEventId"] = initiatedEventId,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
		["workflowType"] = workflowType,
		["cause"] = cause,
	}
	M.AssertStartChildWorkflowExecutionFailedEventAttributes(t)
	return t
end

local ListOpenWorkflowExecutionsInput_keys = { "nextPageToken" = true, "domain" = true, "typeFilter" = true, "tagFilter" = true, "executionFilter" = true, "reverseOrder" = true, "startTimeFilter" = true, "maximumPageSize" = true, nil }

function M.AssertListOpenWorkflowExecutionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListOpenWorkflowExecutionsInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["startTimeFilter"], "Expected key startTimeFilter to exist in table")
	if struct["nextPageToken"] then M.AssertPageToken(struct["nextPageToken"]) end
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["typeFilter"] then M.AssertWorkflowTypeFilter(struct["typeFilter"]) end
	if struct["tagFilter"] then M.AssertTagFilter(struct["tagFilter"]) end
	if struct["executionFilter"] then M.AssertWorkflowExecutionFilter(struct["executionFilter"]) end
	if struct["reverseOrder"] then M.AssertReverseOrder(struct["reverseOrder"]) end
	if struct["startTimeFilter"] then M.AssertExecutionTimeFilter(struct["startTimeFilter"]) end
	if struct["maximumPageSize"] then M.AssertPageSize(struct["maximumPageSize"]) end
	for k,_ in pairs(struct) do
		assert(ListOpenWorkflowExecutionsInput_keys[k], "ListOpenWorkflowExecutionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListOpenWorkflowExecutionsInput
--  
-- @param nextPageToken [PageToken] &lt;p&gt;If a &lt;code&gt;NextPageToken&lt;/code&gt; was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in &lt;code&gt;nextPageToken&lt;/code&gt;. Keep all other arguments unchanged.&lt;/p&gt; &lt;p&gt;The configured &lt;code&gt;maximumPageSize&lt;/code&gt; determines how many results can be returned in a single call.&lt;/p&gt;
-- @param domain [DomainName] &lt;p&gt;The name of the domain that contains the workflow executions to list.&lt;/p&gt;
-- @param typeFilter [WorkflowTypeFilter] &lt;p&gt;If specified, only executions of the type specified in the filter are returned.&lt;/p&gt; &lt;note&gt;&lt;code&gt;executionFilter&lt;/code&gt;, &lt;code&gt;typeFilter&lt;/code&gt; and &lt;code&gt;tagFilter&lt;/code&gt; are mutually exclusive. You can specify at most one of these in a request.&lt;/note&gt;
-- @param tagFilter [TagFilter] &lt;p&gt;If specified, only executions that have the matching tag are listed.&lt;/p&gt; &lt;note&gt;&lt;code&gt;executionFilter&lt;/code&gt;, &lt;code&gt;typeFilter&lt;/code&gt; and &lt;code&gt;tagFilter&lt;/code&gt; are mutually exclusive. You can specify at most one of these in a request.&lt;/note&gt;
-- @param executionFilter [WorkflowExecutionFilter] &lt;p&gt;If specified, only workflow executions matching the workflow ID specified in the filter are returned.&lt;/p&gt; &lt;note&gt;&lt;code&gt;executionFilter&lt;/code&gt;, &lt;code&gt;typeFilter&lt;/code&gt; and &lt;code&gt;tagFilter&lt;/code&gt; are mutually exclusive. You can specify at most one of these in a request.&lt;/note&gt;
-- @param reverseOrder [ReverseOrder] &lt;p&gt;When set to &lt;code&gt;true&lt;/code&gt;, returns the results in reverse order. By default the results are returned in descending order of the start time of the executions.&lt;/p&gt;
-- @param startTimeFilter [ExecutionTimeFilter] &lt;p&gt;Workflow executions are included in the returned results based on whether their start times are within the range specified by this filter.&lt;/p&gt;
-- @param maximumPageSize [PageSize] &lt;p&gt;The maximum number of results that will be returned per call. &lt;code&gt;nextPageToken&lt;/code&gt; can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size &lt;i&gt;smaller&lt;/i&gt; than the maximum.&lt;/p&gt; &lt;p&gt;This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.&lt;/p&gt;
-- Required parameter: domain
-- Required parameter: startTimeFilter
function M.ListOpenWorkflowExecutionsInput(nextPageToken, domain, typeFilter, tagFilter, executionFilter, reverseOrder, startTimeFilter, maximumPageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListOpenWorkflowExecutionsInput")
	local t = { 
		["nextPageToken"] = nextPageToken,
		["domain"] = domain,
		["typeFilter"] = typeFilter,
		["tagFilter"] = tagFilter,
		["executionFilter"] = executionFilter,
		["reverseOrder"] = reverseOrder,
		["startTimeFilter"] = startTimeFilter,
		["maximumPageSize"] = maximumPageSize,
	}
	M.AssertListOpenWorkflowExecutionsInput(t)
	return t
end

local DefaultUndefinedFault_keys = { "message" = true, nil }

function M.AssertDefaultUndefinedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DefaultUndefinedFault to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DefaultUndefinedFault_keys[k], "DefaultUndefinedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DefaultUndefinedFault
--  
-- @param message [ErrorMessage]  
function M.DefaultUndefinedFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DefaultUndefinedFault")
	local t = { 
		["message"] = message,
	}
	M.AssertDefaultUndefinedFault(t)
	return t
end

local WorkflowExecution_keys = { "workflowId" = true, "runId" = true, nil }

function M.AssertWorkflowExecution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecution to be of type 'table'")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["runId"], "Expected key runId to exist in table")
	if struct["workflowId"] then M.AssertWorkflowId(struct["workflowId"]) end
	if struct["runId"] then M.AssertRunId(struct["runId"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowExecution_keys[k], "WorkflowExecution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecution
-- &lt;p&gt;Represents a workflow execution.&lt;/p&gt;
-- @param workflowId [WorkflowId] &lt;p&gt;The user defined identifier associated with the workflow execution.&lt;/p&gt;
-- @param runId [RunId] &lt;p&gt;A system-generated unique identifier for the workflow execution.&lt;/p&gt;
-- Required parameter: workflowId
-- Required parameter: runId
function M.WorkflowExecution(workflowId, runId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecution")
	local t = { 
		["workflowId"] = workflowId,
		["runId"] = runId,
	}
	M.AssertWorkflowExecution(t)
	return t
end

local WorkflowExecutionInfos_keys = { "nextPageToken" = true, "executionInfos" = true, nil }

function M.AssertWorkflowExecutionInfos(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionInfos to be of type 'table'")
	assert(struct["executionInfos"], "Expected key executionInfos to exist in table")
	if struct["nextPageToken"] then M.AssertPageToken(struct["nextPageToken"]) end
	if struct["executionInfos"] then M.AssertWorkflowExecutionInfoList(struct["executionInfos"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowExecutionInfos_keys[k], "WorkflowExecutionInfos contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionInfos
-- &lt;p&gt;Contains a paginated list of information about workflow executions.&lt;/p&gt;
-- @param nextPageToken [PageToken] &lt;p&gt;If a &lt;code&gt;NextPageToken&lt;/code&gt; was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in &lt;code&gt;nextPageToken&lt;/code&gt;. Keep all other arguments unchanged.&lt;/p&gt; &lt;p&gt;The configured &lt;code&gt;maximumPageSize&lt;/code&gt; determines how many results can be returned in a single call.&lt;/p&gt;
-- @param executionInfos [WorkflowExecutionInfoList] &lt;p&gt;The list of workflow information structures.&lt;/p&gt;
-- Required parameter: executionInfos
function M.WorkflowExecutionInfos(nextPageToken, executionInfos, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionInfos")
	local t = { 
		["nextPageToken"] = nextPageToken,
		["executionInfos"] = executionInfos,
	}
	M.AssertWorkflowExecutionInfos(t)
	return t
end

local DescribeWorkflowExecutionInput_keys = { "domain" = true, "execution" = true, nil }

function M.AssertDescribeWorkflowExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkflowExecutionInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["execution"], "Expected key execution to exist in table")
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["execution"] then M.AssertWorkflowExecution(struct["execution"]) end
	for k,_ in pairs(struct) do
		assert(DescribeWorkflowExecutionInput_keys[k], "DescribeWorkflowExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkflowExecutionInput
--  
-- @param domain [DomainName] &lt;p&gt;The name of the domain containing the workflow execution.&lt;/p&gt;
-- @param execution [WorkflowExecution] &lt;p&gt;The workflow execution to describe.&lt;/p&gt;
-- Required parameter: domain
-- Required parameter: execution
function M.DescribeWorkflowExecutionInput(domain, execution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkflowExecutionInput")
	local t = { 
		["domain"] = domain,
		["execution"] = execution,
	}
	M.AssertDescribeWorkflowExecutionInput(t)
	return t
end

local RequestCancelExternalWorkflowExecutionDecisionAttributes_keys = { "control" = true, "workflowId" = true, "runId" = true, nil }

function M.AssertRequestCancelExternalWorkflowExecutionDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestCancelExternalWorkflowExecutionDecisionAttributes to be of type 'table'")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	if struct["control"] then M.AssertData(struct["control"]) end
	if struct["workflowId"] then M.AssertWorkflowId(struct["workflowId"]) end
	if struct["runId"] then M.AssertRunIdOptional(struct["runId"]) end
	for k,_ in pairs(struct) do
		assert(RequestCancelExternalWorkflowExecutionDecisionAttributes_keys[k], "RequestCancelExternalWorkflowExecutionDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestCancelExternalWorkflowExecutionDecisionAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;RequestCancelExternalWorkflowExecution&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;&lt;b&gt;Access Control&lt;/b&gt;&lt;/p&gt; &lt;p&gt;You can use IAM policies to control this decision's access to Amazon SWF resources as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;Use a &lt;code&gt;Resource&lt;/code&gt; element with the domain name to limit the action to only specified domains.&lt;/li&gt; &lt;li&gt;Use an &lt;code&gt;Action&lt;/code&gt; element to allow or deny permission to call this action.&lt;/li&gt; &lt;li&gt;You cannot use an IAM policy to constrain this action's parameters.&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's &lt;b&gt;cause&lt;/b&gt; parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/p&gt;
-- @param control [Data] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; Data attached to the event that can be used by the decider in subsequent workflow tasks.&lt;/p&gt;
-- @param workflowId [WorkflowId] &lt;p&gt;&lt;b&gt;Required.&lt;/b&gt; The &lt;code&gt;workflowId&lt;/code&gt; of the external workflow execution to cancel.&lt;/p&gt;
-- @param runId [RunIdOptional] &lt;p&gt;The &lt;code&gt;runId&lt;/code&gt; of the external workflow execution to cancel.&lt;/p&gt;
-- Required parameter: workflowId
function M.RequestCancelExternalWorkflowExecutionDecisionAttributes(control, workflowId, runId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestCancelExternalWorkflowExecutionDecisionAttributes")
	local t = { 
		["control"] = control,
		["workflowId"] = workflowId,
		["runId"] = runId,
	}
	M.AssertRequestCancelExternalWorkflowExecutionDecisionAttributes(t)
	return t
end

local WorkflowTypeInfos_keys = { "nextPageToken" = true, "typeInfos" = true, nil }

function M.AssertWorkflowTypeInfos(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowTypeInfos to be of type 'table'")
	assert(struct["typeInfos"], "Expected key typeInfos to exist in table")
	if struct["nextPageToken"] then M.AssertPageToken(struct["nextPageToken"]) end
	if struct["typeInfos"] then M.AssertWorkflowTypeInfoList(struct["typeInfos"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowTypeInfos_keys[k], "WorkflowTypeInfos contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowTypeInfos
-- &lt;p&gt;Contains a paginated list of information structures about workflow types.&lt;/p&gt;
-- @param nextPageToken [PageToken] &lt;p&gt;If a &lt;code&gt;NextPageToken&lt;/code&gt; was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in &lt;code&gt;nextPageToken&lt;/code&gt;. Keep all other arguments unchanged.&lt;/p&gt; &lt;p&gt;The configured &lt;code&gt;maximumPageSize&lt;/code&gt; determines how many results can be returned in a single call.&lt;/p&gt;
-- @param typeInfos [WorkflowTypeInfoList] &lt;p&gt;The list of workflow type information.&lt;/p&gt;
-- Required parameter: typeInfos
function M.WorkflowTypeInfos(nextPageToken, typeInfos, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowTypeInfos")
	local t = { 
		["nextPageToken"] = nextPageToken,
		["typeInfos"] = typeInfos,
	}
	M.AssertWorkflowTypeInfos(t)
	return t
end

local RegisterDomainInput_keys = { "name" = true, "workflowExecutionRetentionPeriodInDays" = true, "description" = true, nil }

function M.AssertRegisterDomainInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterDomainInput to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["workflowExecutionRetentionPeriodInDays"], "Expected key workflowExecutionRetentionPeriodInDays to exist in table")
	if struct["name"] then M.AssertDomainName(struct["name"]) end
	if struct["workflowExecutionRetentionPeriodInDays"] then M.AssertDurationInDays(struct["workflowExecutionRetentionPeriodInDays"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(RegisterDomainInput_keys[k], "RegisterDomainInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterDomainInput
--  
-- @param name [DomainName] &lt;p&gt;Name of the domain to register. The name must be unique in the region that the domain is registered in.&lt;/p&gt; &lt;p&gt;The specified string must not start or end with whitespace. It must not contain a &lt;code&gt;:&lt;/code&gt; (colon), &lt;code&gt;/&lt;/code&gt; (slash), &lt;code&gt;|&lt;/code&gt; (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.&lt;/p&gt;
-- @param workflowExecutionRetentionPeriodInDays [DurationInDays] &lt;p&gt;The duration (in days) that records and histories of workflow executions on the domain should be kept by the service. After the retention period, the workflow execution is not available in the results of visibility calls.&lt;/p&gt; &lt;p&gt;If you pass the value &lt;code&gt;NONE&lt;/code&gt; or &lt;code&gt;0&lt;/code&gt; (zero), then the workflow execution history will not be retained. As soon as the workflow execution completes, the execution record and its history are deleted.&lt;/p&gt; &lt;p&gt;The maximum workflow execution retention period is 90 days. For more information about Amazon SWF service limits, see: &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-limits.html&quot;&gt;Amazon SWF Service Limits&lt;/a&gt; in the &lt;i&gt;Amazon SWF Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;A text description of the domain.&lt;/p&gt;
-- Required parameter: name
-- Required parameter: workflowExecutionRetentionPeriodInDays
function M.RegisterDomainInput(name, workflowExecutionRetentionPeriodInDays, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterDomainInput")
	local t = { 
		["name"] = name,
		["workflowExecutionRetentionPeriodInDays"] = workflowExecutionRetentionPeriodInDays,
		["description"] = description,
	}
	M.AssertRegisterDomainInput(t)
	return t
end

local RequestCancelActivityTaskFailedEventAttributes_keys = { "activityId" = true, "cause" = true, "decisionTaskCompletedEventId" = true, nil }

function M.AssertRequestCancelActivityTaskFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestCancelActivityTaskFailedEventAttributes to be of type 'table'")
	assert(struct["activityId"], "Expected key activityId to exist in table")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["activityId"] then M.AssertActivityId(struct["activityId"]) end
	if struct["cause"] then M.AssertRequestCancelActivityTaskFailedCause(struct["cause"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(RequestCancelActivityTaskFailedEventAttributes_keys[k], "RequestCancelActivityTaskFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestCancelActivityTaskFailedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;RequestCancelActivityTaskFailed&lt;/code&gt; event.&lt;/p&gt;
-- @param activityId [ActivityId] &lt;p&gt;The activityId provided in the &lt;code&gt;RequestCancelActivityTask&lt;/code&gt; decision that failed.&lt;/p&gt;
-- @param cause [RequestCancelActivityTaskFailedCause] &lt;p&gt;The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.&lt;/p&gt; &lt;note&gt;If &lt;b&gt;cause&lt;/b&gt; is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/note&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;RequestCancelActivityTask&lt;/code&gt; decision for this cancellation request. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- Required parameter: activityId
-- Required parameter: cause
-- Required parameter: decisionTaskCompletedEventId
function M.RequestCancelActivityTaskFailedEventAttributes(activityId, cause, decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestCancelActivityTaskFailedEventAttributes")
	local t = { 
		["activityId"] = activityId,
		["cause"] = cause,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
	}
	M.AssertRequestCancelActivityTaskFailedEventAttributes(t)
	return t
end

local WorkflowExecutionStartedEventAttributes_keys = { "taskList" = true, "parentWorkflowExecution" = true, "parentInitiatedEventId" = true, "taskStartToCloseTimeout" = true, "taskPriority" = true, "lambdaRole" = true, "continuedExecutionRunId" = true, "childPolicy" = true, "executionStartToCloseTimeout" = true, "input" = true, "workflowType" = true, "tagList" = true, nil }

function M.AssertWorkflowExecutionStartedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionStartedEventAttributes to be of type 'table'")
	assert(struct["childPolicy"], "Expected key childPolicy to exist in table")
	assert(struct["taskList"], "Expected key taskList to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	if struct["taskList"] then M.AssertTaskList(struct["taskList"]) end
	if struct["parentWorkflowExecution"] then M.AssertWorkflowExecution(struct["parentWorkflowExecution"]) end
	if struct["parentInitiatedEventId"] then M.AssertEventId(struct["parentInitiatedEventId"]) end
	if struct["taskStartToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["taskStartToCloseTimeout"]) end
	if struct["taskPriority"] then M.AssertTaskPriority(struct["taskPriority"]) end
	if struct["lambdaRole"] then M.AssertArn(struct["lambdaRole"]) end
	if struct["continuedExecutionRunId"] then M.AssertRunIdOptional(struct["continuedExecutionRunId"]) end
	if struct["childPolicy"] then M.AssertChildPolicy(struct["childPolicy"]) end
	if struct["executionStartToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["executionStartToCloseTimeout"]) end
	if struct["input"] then M.AssertData(struct["input"]) end
	if struct["workflowType"] then M.AssertWorkflowType(struct["workflowType"]) end
	if struct["tagList"] then M.AssertTagList(struct["tagList"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowExecutionStartedEventAttributes_keys[k], "WorkflowExecutionStartedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionStartedEventAttributes
-- &lt;p&gt;Provides details of &lt;code&gt;WorkflowExecutionStarted&lt;/code&gt; event.&lt;/p&gt;
-- @param taskList [TaskList] &lt;p&gt;The name of the task list for scheduling the decision tasks for this workflow execution.&lt;/p&gt;
-- @param parentWorkflowExecution [WorkflowExecution] &lt;p&gt;The source workflow execution that started this workflow execution. The member is not set if the workflow execution was not started by a workflow.&lt;/p&gt;
-- @param parentInitiatedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;StartChildWorkflowExecutionInitiated&lt;/code&gt; event corresponding to the &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision to start this workflow execution. The source event with this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param taskStartToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;The maximum duration of decision tasks for this workflow type.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt;
-- @param taskPriority [TaskPriority] &lt;p&gt;Provides details of &lt;code&gt;WorkflowExecutionStarted&lt;/code&gt; event.&lt;/p&gt;
-- @param lambdaRole [Arn] &lt;p&gt;The IAM role attached to this workflow execution to use when invoking AWS Lambda functions.&lt;/p&gt;
-- @param continuedExecutionRunId [RunIdOptional] &lt;p&gt;If this workflow execution was started due to a &lt;code&gt;ContinueAsNewWorkflowExecution&lt;/code&gt; decision, then it contains the &lt;code&gt;runId&lt;/code&gt; of the previous workflow execution that was closed and continued as this execution.&lt;/p&gt;
-- @param childPolicy [ChildPolicy] &lt;p&gt;The policy to use for the child workflow executions if this workflow execution is terminated, by calling the &lt;a&gt;TerminateWorkflowExecution&lt;/a&gt; action explicitly or due to an expired timeout.&lt;/p&gt; &lt;p&gt;The supported child policies are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;b&gt;TERMINATE:&lt;/b&gt; the child executions will be terminated.&lt;/li&gt; &lt;li&gt;&lt;b&gt;REQUEST_CANCEL:&lt;/b&gt; a request to cancel will be attempted for each child execution by recording a &lt;code&gt;WorkflowExecutionCancelRequested&lt;/code&gt; event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.&lt;/li&gt; &lt;li&gt;&lt;b&gt;ABANDON:&lt;/b&gt; no action will be taken. The child executions will continue to run.&lt;/li&gt; &lt;/ul&gt;
-- @param executionStartToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;The maximum duration for this workflow execution.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt;
-- @param input [Data] &lt;p&gt;The input provided to the workflow execution (if any).&lt;/p&gt;
-- @param workflowType [WorkflowType] &lt;p&gt;The workflow type of this execution.&lt;/p&gt;
-- @param tagList [TagList] &lt;p&gt;The list of tags associated with this workflow execution. An execution can have up to 5 tags.&lt;/p&gt;
-- Required parameter: childPolicy
-- Required parameter: taskList
-- Required parameter: workflowType
function M.WorkflowExecutionStartedEventAttributes(taskList, parentWorkflowExecution, parentInitiatedEventId, taskStartToCloseTimeout, taskPriority, lambdaRole, continuedExecutionRunId, childPolicy, executionStartToCloseTimeout, input, workflowType, tagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionStartedEventAttributes")
	local t = { 
		["taskList"] = taskList,
		["parentWorkflowExecution"] = parentWorkflowExecution,
		["parentInitiatedEventId"] = parentInitiatedEventId,
		["taskStartToCloseTimeout"] = taskStartToCloseTimeout,
		["taskPriority"] = taskPriority,
		["lambdaRole"] = lambdaRole,
		["continuedExecutionRunId"] = continuedExecutionRunId,
		["childPolicy"] = childPolicy,
		["executionStartToCloseTimeout"] = executionStartToCloseTimeout,
		["input"] = input,
		["workflowType"] = workflowType,
		["tagList"] = tagList,
	}
	M.AssertWorkflowExecutionStartedEventAttributes(t)
	return t
end

local WorkflowTypeFilter_keys = { "version" = true, "name" = true, nil }

function M.AssertWorkflowTypeFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowTypeFilter to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["version"] then M.AssertVersionOptional(struct["version"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowTypeFilter_keys[k], "WorkflowTypeFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowTypeFilter
-- &lt;p&gt;Used to filter workflow execution query results by type. Each parameter, if specified, defines a rule that must be satisfied by each returned result.&lt;/p&gt;
-- @param version [VersionOptional] &lt;p&gt;Version of the workflow type.&lt;/p&gt;
-- @param name [Name] &lt;p&gt;&lt;b&gt;Required.&lt;/b&gt; Name of the workflow type.&lt;/p&gt;
-- Required parameter: name
function M.WorkflowTypeFilter(version, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowTypeFilter")
	local t = { 
		["version"] = version,
		["name"] = name,
	}
	M.AssertWorkflowTypeFilter(t)
	return t
end

local CountPendingDecisionTasksInput_keys = { "domain" = true, "taskList" = true, nil }

function M.AssertCountPendingDecisionTasksInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CountPendingDecisionTasksInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["taskList"], "Expected key taskList to exist in table")
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["taskList"] then M.AssertTaskList(struct["taskList"]) end
	for k,_ in pairs(struct) do
		assert(CountPendingDecisionTasksInput_keys[k], "CountPendingDecisionTasksInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CountPendingDecisionTasksInput
--  
-- @param domain [DomainName] &lt;p&gt;The name of the domain that contains the task list.&lt;/p&gt;
-- @param taskList [TaskList] &lt;p&gt;The name of the task list.&lt;/p&gt;
-- Required parameter: domain
-- Required parameter: taskList
function M.CountPendingDecisionTasksInput(domain, taskList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CountPendingDecisionTasksInput")
	local t = { 
		["domain"] = domain,
		["taskList"] = taskList,
	}
	M.AssertCountPendingDecisionTasksInput(t)
	return t
end

local CancelWorkflowExecutionDecisionAttributes_keys = { "details" = true, nil }

function M.AssertCancelWorkflowExecutionDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelWorkflowExecutionDecisionAttributes to be of type 'table'")
	if struct["details"] then M.AssertData(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(CancelWorkflowExecutionDecisionAttributes_keys[k], "CancelWorkflowExecutionDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelWorkflowExecutionDecisionAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;CancelWorkflowExecution&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;&lt;b&gt;Access Control&lt;/b&gt;&lt;/p&gt; &lt;p&gt;You can use IAM policies to control this decision's access to Amazon SWF resources as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;Use a &lt;code&gt;Resource&lt;/code&gt; element with the domain name to limit the action to only specified domains.&lt;/li&gt; &lt;li&gt;Use an &lt;code&gt;Action&lt;/code&gt; element to allow or deny permission to call this action.&lt;/li&gt; &lt;li&gt;You cannot use an IAM policy to constrain this action's parameters.&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's &lt;b&gt;cause&lt;/b&gt; parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/p&gt;
-- @param details [Data] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; details of the cancellation.&lt;/p&gt;
function M.CancelWorkflowExecutionDecisionAttributes(details, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelWorkflowExecutionDecisionAttributes")
	local t = { 
		["details"] = details,
	}
	M.AssertCancelWorkflowExecutionDecisionAttributes(t)
	return t
end

local ActivityTypeInfos_keys = { "nextPageToken" = true, "typeInfos" = true, nil }

function M.AssertActivityTypeInfos(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTypeInfos to be of type 'table'")
	assert(struct["typeInfos"], "Expected key typeInfos to exist in table")
	if struct["nextPageToken"] then M.AssertPageToken(struct["nextPageToken"]) end
	if struct["typeInfos"] then M.AssertActivityTypeInfoList(struct["typeInfos"]) end
	for k,_ in pairs(struct) do
		assert(ActivityTypeInfos_keys[k], "ActivityTypeInfos contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTypeInfos
-- &lt;p&gt;Contains a paginated list of activity type information structures.&lt;/p&gt;
-- @param nextPageToken [PageToken] &lt;p&gt;If a &lt;code&gt;NextPageToken&lt;/code&gt; was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in &lt;code&gt;nextPageToken&lt;/code&gt;. Keep all other arguments unchanged.&lt;/p&gt; &lt;p&gt;The configured &lt;code&gt;maximumPageSize&lt;/code&gt; determines how many results can be returned in a single call.&lt;/p&gt;
-- @param typeInfos [ActivityTypeInfoList] &lt;p&gt;List of activity type information.&lt;/p&gt;
-- Required parameter: typeInfos
function M.ActivityTypeInfos(nextPageToken, typeInfos, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTypeInfos")
	local t = { 
		["nextPageToken"] = nextPageToken,
		["typeInfos"] = typeInfos,
	}
	M.AssertActivityTypeInfos(t)
	return t
end

local ActivityTaskStatus_keys = { "cancelRequested" = true, nil }

function M.AssertActivityTaskStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTaskStatus to be of type 'table'")
	assert(struct["cancelRequested"], "Expected key cancelRequested to exist in table")
	if struct["cancelRequested"] then M.AssertCanceled(struct["cancelRequested"]) end
	for k,_ in pairs(struct) do
		assert(ActivityTaskStatus_keys[k], "ActivityTaskStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTaskStatus
-- &lt;p&gt;Status information about an activity task.&lt;/p&gt;
-- @param cancelRequested [Canceled] &lt;p&gt;Set to &lt;code&gt;true&lt;/code&gt; if cancellation of the task is requested.&lt;/p&gt;
-- Required parameter: cancelRequested
function M.ActivityTaskStatus(cancelRequested, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTaskStatus")
	local t = { 
		["cancelRequested"] = cancelRequested,
	}
	M.AssertActivityTaskStatus(t)
	return t
end

local CancelTimerFailedEventAttributes_keys = { "timerId" = true, "cause" = true, "decisionTaskCompletedEventId" = true, nil }

function M.AssertCancelTimerFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelTimerFailedEventAttributes to be of type 'table'")
	assert(struct["timerId"], "Expected key timerId to exist in table")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["timerId"] then M.AssertTimerId(struct["timerId"]) end
	if struct["cause"] then M.AssertCancelTimerFailedCause(struct["cause"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(CancelTimerFailedEventAttributes_keys[k], "CancelTimerFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelTimerFailedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;CancelTimerFailed&lt;/code&gt; event.&lt;/p&gt;
-- @param timerId [TimerId] &lt;p&gt;The timerId provided in the &lt;code&gt;CancelTimer&lt;/code&gt; decision that failed.&lt;/p&gt;
-- @param cause [CancelTimerFailedCause] &lt;p&gt;The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.&lt;/p&gt; &lt;note&gt;If &lt;b&gt;cause&lt;/b&gt; is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/note&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;CancelTimer&lt;/code&gt; decision to cancel this timer. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- Required parameter: timerId
-- Required parameter: cause
-- Required parameter: decisionTaskCompletedEventId
function M.CancelTimerFailedEventAttributes(timerId, cause, decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelTimerFailedEventAttributes")
	local t = { 
		["timerId"] = timerId,
		["cause"] = cause,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
	}
	M.AssertCancelTimerFailedEventAttributes(t)
	return t
end

local DecisionTaskTimedOutEventAttributes_keys = { "startedEventId" = true, "timeoutType" = true, "scheduledEventId" = true, nil }

function M.AssertDecisionTaskTimedOutEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecisionTaskTimedOutEventAttributes to be of type 'table'")
	assert(struct["timeoutType"], "Expected key timeoutType to exist in table")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then M.AssertEventId(struct["startedEventId"]) end
	if struct["timeoutType"] then M.AssertDecisionTaskTimeoutType(struct["timeoutType"]) end
	if struct["scheduledEventId"] then M.AssertEventId(struct["scheduledEventId"]) end
	for k,_ in pairs(struct) do
		assert(DecisionTaskTimedOutEventAttributes_keys[k], "DecisionTaskTimedOutEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecisionTaskTimedOutEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;DecisionTaskTimedOut&lt;/code&gt; event.&lt;/p&gt;
-- @param startedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskStarted&lt;/code&gt; event recorded when this decision task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param timeoutType [DecisionTaskTimeoutType] &lt;p&gt;The type of timeout that expired before the decision task could be completed.&lt;/p&gt;
-- @param scheduledEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskScheduled&lt;/code&gt; event that was recorded when this decision task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- Required parameter: timeoutType
-- Required parameter: scheduledEventId
-- Required parameter: startedEventId
function M.DecisionTaskTimedOutEventAttributes(startedEventId, timeoutType, scheduledEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecisionTaskTimedOutEventAttributes")
	local t = { 
		["startedEventId"] = startedEventId,
		["timeoutType"] = timeoutType,
		["scheduledEventId"] = scheduledEventId,
	}
	M.AssertDecisionTaskTimedOutEventAttributes(t)
	return t
end

local PollForDecisionTaskInput_keys = { "nextPageToken" = true, "domain" = true, "taskList" = true, "reverseOrder" = true, "maximumPageSize" = true, "identity" = true, nil }

function M.AssertPollForDecisionTaskInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PollForDecisionTaskInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["taskList"], "Expected key taskList to exist in table")
	if struct["nextPageToken"] then M.AssertPageToken(struct["nextPageToken"]) end
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["taskList"] then M.AssertTaskList(struct["taskList"]) end
	if struct["reverseOrder"] then M.AssertReverseOrder(struct["reverseOrder"]) end
	if struct["maximumPageSize"] then M.AssertPageSize(struct["maximumPageSize"]) end
	if struct["identity"] then M.AssertIdentity(struct["identity"]) end
	for k,_ in pairs(struct) do
		assert(PollForDecisionTaskInput_keys[k], "PollForDecisionTaskInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PollForDecisionTaskInput
--  
-- @param nextPageToken [PageToken] &lt;p&gt;If a &lt;code&gt;NextPageToken&lt;/code&gt; was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in &lt;code&gt;nextPageToken&lt;/code&gt;. Keep all other arguments unchanged.&lt;/p&gt; &lt;p&gt;The configured &lt;code&gt;maximumPageSize&lt;/code&gt; determines how many results can be returned in a single call.&lt;/p&gt; &lt;note&gt;The &lt;code&gt;nextPageToken&lt;/code&gt; returned by this action cannot be used with &lt;a&gt;GetWorkflowExecutionHistory&lt;/a&gt; to get the next page. You must call &lt;a&gt;PollForDecisionTask&lt;/a&gt; again (with the &lt;code&gt;nextPageToken&lt;/code&gt;) to retrieve the next page of history records. Calling &lt;a&gt;PollForDecisionTask&lt;/a&gt; with a &lt;code&gt;nextPageToken&lt;/code&gt; will not return a new decision task.&lt;/note&gt;.
-- @param domain [DomainName] &lt;p&gt;The name of the domain containing the task lists to poll.&lt;/p&gt;
-- @param taskList [TaskList] &lt;p&gt;Specifies the task list to poll for decision tasks.&lt;/p&gt; &lt;p&gt;The specified string must not start or end with whitespace. It must not contain a &lt;code&gt;:&lt;/code&gt; (colon), &lt;code&gt;/&lt;/code&gt; (slash), &lt;code&gt;|&lt;/code&gt; (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.&lt;/p&gt;
-- @param reverseOrder [ReverseOrder] &lt;p&gt;When set to &lt;code&gt;true&lt;/code&gt;, returns the events in reverse order. By default the results are returned in ascending order of the &lt;code&gt;eventTimestamp&lt;/code&gt; of the events.&lt;/p&gt;
-- @param maximumPageSize [PageSize] &lt;p&gt;The maximum number of results that will be returned per call. &lt;code&gt;nextPageToken&lt;/code&gt; can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size &lt;i&gt;smaller&lt;/i&gt; than the maximum.&lt;/p&gt; &lt;p&gt;This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.&lt;/p&gt;
-- @param identity [Identity] &lt;p&gt;Identity of the decider making the request, which is recorded in the DecisionTaskStarted event in the workflow history. This enables diagnostic tracing when problems arise. The form of this identity is user defined.&lt;/p&gt;
-- Required parameter: domain
-- Required parameter: taskList
function M.PollForDecisionTaskInput(nextPageToken, domain, taskList, reverseOrder, maximumPageSize, identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PollForDecisionTaskInput")
	local t = { 
		["nextPageToken"] = nextPageToken,
		["domain"] = domain,
		["taskList"] = taskList,
		["reverseOrder"] = reverseOrder,
		["maximumPageSize"] = maximumPageSize,
		["identity"] = identity,
	}
	M.AssertPollForDecisionTaskInput(t)
	return t
end

local CloseStatusFilter_keys = { "status" = true, nil }

function M.AssertCloseStatusFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloseStatusFilter to be of type 'table'")
	assert(struct["status"], "Expected key status to exist in table")
	if struct["status"] then M.AssertCloseStatus(struct["status"]) end
	for k,_ in pairs(struct) do
		assert(CloseStatusFilter_keys[k], "CloseStatusFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloseStatusFilter
-- &lt;p&gt;Used to filter the closed workflow executions in visibility APIs by their close status.&lt;/p&gt;
-- @param status [CloseStatus] &lt;p&gt;&lt;b&gt;Required.&lt;/b&gt; The close status that must match the close status of an execution for it to meet the criteria of this filter.&lt;/p&gt;
-- Required parameter: status
function M.CloseStatusFilter(status, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloseStatusFilter")
	local t = { 
		["status"] = status,
	}
	M.AssertCloseStatusFilter(t)
	return t
end

local UnknownResourceFault_keys = { "message" = true, nil }

function M.AssertUnknownResourceFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnknownResourceFault to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnknownResourceFault_keys[k], "UnknownResourceFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnknownResourceFault
-- &lt;p&gt;Returned when the named resource cannot be found with in the scope of this operation (region or domain). This could happen if the named resource was never created or is no longer available for this operation.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;A description that may help with diagnosing the cause of the fault.&lt;/p&gt;
function M.UnknownResourceFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnknownResourceFault")
	local t = { 
		["message"] = message,
	}
	M.AssertUnknownResourceFault(t)
	return t
end

local TimerFiredEventAttributes_keys = { "startedEventId" = true, "timerId" = true, nil }

function M.AssertTimerFiredEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimerFiredEventAttributes to be of type 'table'")
	assert(struct["timerId"], "Expected key timerId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then M.AssertEventId(struct["startedEventId"]) end
	if struct["timerId"] then M.AssertTimerId(struct["timerId"]) end
	for k,_ in pairs(struct) do
		assert(TimerFiredEventAttributes_keys[k], "TimerFiredEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimerFiredEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;TimerFired&lt;/code&gt; event.&lt;/p&gt;
-- @param startedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;TimerStarted&lt;/code&gt; event that was recorded when this timer was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param timerId [TimerId] &lt;p&gt;The unique ID of the timer that fired.&lt;/p&gt;
-- Required parameter: timerId
-- Required parameter: startedEventId
function M.TimerFiredEventAttributes(startedEventId, timerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimerFiredEventAttributes")
	local t = { 
		["startedEventId"] = startedEventId,
		["timerId"] = timerId,
	}
	M.AssertTimerFiredEventAttributes(t)
	return t
end

local TimerStartedEventAttributes_keys = { "control" = true, "timerId" = true, "startToFireTimeout" = true, "decisionTaskCompletedEventId" = true, nil }

function M.AssertTimerStartedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimerStartedEventAttributes to be of type 'table'")
	assert(struct["timerId"], "Expected key timerId to exist in table")
	assert(struct["startToFireTimeout"], "Expected key startToFireTimeout to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["control"] then M.AssertData(struct["control"]) end
	if struct["timerId"] then M.AssertTimerId(struct["timerId"]) end
	if struct["startToFireTimeout"] then M.AssertDurationInSeconds(struct["startToFireTimeout"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(TimerStartedEventAttributes_keys[k], "TimerStartedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimerStartedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;TimerStarted&lt;/code&gt; event.&lt;/p&gt;
-- @param control [Data] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; Data attached to the event that can be used by the decider in subsequent workflow tasks.&lt;/p&gt;
-- @param timerId [TimerId] &lt;p&gt;The unique ID of the timer that was started.&lt;/p&gt;
-- @param startToFireTimeout [DurationInSeconds] &lt;p&gt;The duration of time after which the timer will fire.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0.&lt;/p&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;StartTimer&lt;/code&gt; decision for this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- Required parameter: timerId
-- Required parameter: startToFireTimeout
-- Required parameter: decisionTaskCompletedEventId
function M.TimerStartedEventAttributes(control, timerId, startToFireTimeout, decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimerStartedEventAttributes")
	local t = { 
		["control"] = control,
		["timerId"] = timerId,
		["startToFireTimeout"] = startToFireTimeout,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
	}
	M.AssertTimerStartedEventAttributes(t)
	return t
end

local TaskList_keys = { "name" = true, nil }

function M.AssertTaskList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TaskList to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then M.AssertName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(TaskList_keys[k], "TaskList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TaskList
-- &lt;p&gt;Represents a task list.&lt;/p&gt;
-- @param name [Name] &lt;p&gt;The name of the task list.&lt;/p&gt;
-- Required parameter: name
function M.TaskList(name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TaskList")
	local t = { 
		["name"] = name,
	}
	M.AssertTaskList(t)
	return t
end

local WorkflowExecutionFailedEventAttributes_keys = { "reason" = true, "details" = true, "decisionTaskCompletedEventId" = true, nil }

function M.AssertWorkflowExecutionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionFailedEventAttributes to be of type 'table'")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["reason"] then M.AssertFailureReason(struct["reason"]) end
	if struct["details"] then M.AssertData(struct["details"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowExecutionFailedEventAttributes_keys[k], "WorkflowExecutionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionFailedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;WorkflowExecutionFailed&lt;/code&gt; event.&lt;/p&gt;
-- @param reason [FailureReason] &lt;p&gt;The descriptive reason provided for the failure (if any).&lt;/p&gt;
-- @param details [Data] &lt;p&gt;The details of the failure (if any).&lt;/p&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;FailWorkflowExecution&lt;/code&gt; decision to fail this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- Required parameter: decisionTaskCompletedEventId
function M.WorkflowExecutionFailedEventAttributes(reason, details, decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionFailedEventAttributes")
	local t = { 
		["reason"] = reason,
		["details"] = details,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
	}
	M.AssertWorkflowExecutionFailedEventAttributes(t)
	return t
end

local ScheduleLambdaFunctionFailedEventAttributes_keys = { "decisionTaskCompletedEventId" = true, "cause" = true, "id" = true, "name" = true, nil }

function M.AssertScheduleLambdaFunctionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleLambdaFunctionFailedEventAttributes to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["cause"] then M.AssertScheduleLambdaFunctionFailedCause(struct["cause"]) end
	if struct["id"] then M.AssertFunctionId(struct["id"]) end
	if struct["name"] then M.AssertFunctionName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(ScheduleLambdaFunctionFailedEventAttributes_keys[k], "ScheduleLambdaFunctionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleLambdaFunctionFailedEventAttributes
-- &lt;p&gt;Provides details for the &lt;code&gt;ScheduleLambdaFunctionFailed&lt;/code&gt; event.&lt;/p&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision that resulted in the scheduling of this AWS Lambda function. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param cause [ScheduleLambdaFunctionFailedCause] &lt;p&gt;The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.&lt;/p&gt; &lt;note&gt;If &lt;b&gt;cause&lt;/b&gt; is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/note&gt;
-- @param id [FunctionId] &lt;p&gt;The unique Amazon SWF ID of the AWS Lambda task.&lt;/p&gt;
-- @param name [FunctionName] &lt;p&gt;The name of the scheduled AWS Lambda function.&lt;/p&gt;
-- Required parameter: id
-- Required parameter: name
-- Required parameter: cause
-- Required parameter: decisionTaskCompletedEventId
function M.ScheduleLambdaFunctionFailedEventAttributes(decisionTaskCompletedEventId, cause, id, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScheduleLambdaFunctionFailedEventAttributes")
	local t = { 
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
		["cause"] = cause,
		["id"] = id,
		["name"] = name,
	}
	M.AssertScheduleLambdaFunctionFailedEventAttributes(t)
	return t
end

local DescribeWorkflowTypeInput_keys = { "domain" = true, "workflowType" = true, nil }

function M.AssertDescribeWorkflowTypeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeWorkflowTypeInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["workflowType"] then M.AssertWorkflowType(struct["workflowType"]) end
	for k,_ in pairs(struct) do
		assert(DescribeWorkflowTypeInput_keys[k], "DescribeWorkflowTypeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeWorkflowTypeInput
--  
-- @param domain [DomainName] &lt;p&gt;The name of the domain in which this workflow type is registered.&lt;/p&gt;
-- @param workflowType [WorkflowType] &lt;p&gt;The workflow type to describe.&lt;/p&gt;
-- Required parameter: domain
-- Required parameter: workflowType
function M.DescribeWorkflowTypeInput(domain, workflowType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeWorkflowTypeInput")
	local t = { 
		["domain"] = domain,
		["workflowType"] = workflowType,
	}
	M.AssertDescribeWorkflowTypeInput(t)
	return t
end

local ListWorkflowTypesInput_keys = { "nextPageToken" = true, "domain" = true, "name" = true, "registrationStatus" = true, "reverseOrder" = true, "maximumPageSize" = true, nil }

function M.AssertListWorkflowTypesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListWorkflowTypesInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["registrationStatus"], "Expected key registrationStatus to exist in table")
	if struct["nextPageToken"] then M.AssertPageToken(struct["nextPageToken"]) end
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["registrationStatus"] then M.AssertRegistrationStatus(struct["registrationStatus"]) end
	if struct["reverseOrder"] then M.AssertReverseOrder(struct["reverseOrder"]) end
	if struct["maximumPageSize"] then M.AssertPageSize(struct["maximumPageSize"]) end
	for k,_ in pairs(struct) do
		assert(ListWorkflowTypesInput_keys[k], "ListWorkflowTypesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListWorkflowTypesInput
--  
-- @param nextPageToken [PageToken] &lt;p&gt;If a &lt;code&gt;NextPageToken&lt;/code&gt; was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in &lt;code&gt;nextPageToken&lt;/code&gt;. Keep all other arguments unchanged.&lt;/p&gt; &lt;p&gt;The configured &lt;code&gt;maximumPageSize&lt;/code&gt; determines how many results can be returned in a single call.&lt;/p&gt;
-- @param domain [DomainName] &lt;p&gt;The name of the domain in which the workflow types have been registered.&lt;/p&gt;
-- @param name [Name] &lt;p&gt;If specified, lists the workflow type with this name.&lt;/p&gt;
-- @param registrationStatus [RegistrationStatus] &lt;p&gt;Specifies the registration status of the workflow types to list.&lt;/p&gt;
-- @param reverseOrder [ReverseOrder] &lt;p&gt;When set to &lt;code&gt;true&lt;/code&gt;, returns the results in reverse order. By default the results are returned in ascending alphabetical order of the &lt;code&gt;name&lt;/code&gt; of the workflow types.&lt;/p&gt;
-- @param maximumPageSize [PageSize] &lt;p&gt;The maximum number of results that will be returned per call. &lt;code&gt;nextPageToken&lt;/code&gt; can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size &lt;i&gt;smaller&lt;/i&gt; than the maximum.&lt;/p&gt; &lt;p&gt;This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.&lt;/p&gt;
-- Required parameter: domain
-- Required parameter: registrationStatus
function M.ListWorkflowTypesInput(nextPageToken, domain, name, registrationStatus, reverseOrder, maximumPageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListWorkflowTypesInput")
	local t = { 
		["nextPageToken"] = nextPageToken,
		["domain"] = domain,
		["name"] = name,
		["registrationStatus"] = registrationStatus,
		["reverseOrder"] = reverseOrder,
		["maximumPageSize"] = maximumPageSize,
	}
	M.AssertListWorkflowTypesInput(t)
	return t
end

local LambdaFunctionStartedEventAttributes_keys = { "scheduledEventId" = true, nil }

function M.AssertLambdaFunctionStartedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionStartedEventAttributes to be of type 'table'")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	if struct["scheduledEventId"] then M.AssertEventId(struct["scheduledEventId"]) end
	for k,_ in pairs(struct) do
		assert(LambdaFunctionStartedEventAttributes_keys[k], "LambdaFunctionStartedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionStartedEventAttributes
-- &lt;p&gt;Provides details for the &lt;code&gt;LambdaFunctionStarted&lt;/code&gt; event.&lt;/p&gt;
-- @param scheduledEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;LambdaFunctionScheduled&lt;/code&gt; event that was recorded when this AWS Lambda function was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- Required parameter: scheduledEventId
function M.LambdaFunctionStartedEventAttributes(scheduledEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionStartedEventAttributes")
	local t = { 
		["scheduledEventId"] = scheduledEventId,
	}
	M.AssertLambdaFunctionStartedEventAttributes(t)
	return t
end

local ExecutionTimeFilter_keys = { "oldestDate" = true, "latestDate" = true, nil }

function M.AssertExecutionTimeFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionTimeFilter to be of type 'table'")
	assert(struct["oldestDate"], "Expected key oldestDate to exist in table")
	if struct["oldestDate"] then M.AssertTimestamp(struct["oldestDate"]) end
	if struct["latestDate"] then M.AssertTimestamp(struct["latestDate"]) end
	for k,_ in pairs(struct) do
		assert(ExecutionTimeFilter_keys[k], "ExecutionTimeFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionTimeFilter
-- &lt;p&gt;Used to filter the workflow executions in visibility APIs by various time-based rules. Each parameter, if specified, defines a rule that must be satisfied by each returned query result. The parameter values are in the &lt;a href=&quot;https://en.wikipedia.org/wiki/Unix_time&quot;&gt;Unix Time format&lt;/a&gt;. For example: &lt;code&gt;&quot;oldestDate&quot;: 1325376070.&lt;/code&gt;&lt;/p&gt;
-- @param oldestDate [Timestamp] &lt;p&gt;Specifies the oldest start or close date and time to return.&lt;/p&gt;
-- @param latestDate [Timestamp] &lt;p&gt;Specifies the latest start or close date and time to return.&lt;/p&gt;
-- Required parameter: oldestDate
function M.ExecutionTimeFilter(oldestDate, latestDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExecutionTimeFilter")
	local t = { 
		["oldestDate"] = oldestDate,
		["latestDate"] = latestDate,
	}
	M.AssertExecutionTimeFilter(t)
	return t
end

local LimitExceededFault_keys = { "message" = true, nil }

function M.AssertLimitExceededFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededFault to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededFault_keys[k], "LimitExceededFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededFault
-- &lt;p&gt;Returned by any operation if a system imposed limitation has been reached. To address this fault you should either clean up unused resources or increase the limit by contacting AWS.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;A description that may help with diagnosing the cause of the fault.&lt;/p&gt;
function M.LimitExceededFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededFault")
	local t = { 
		["message"] = message,
	}
	M.AssertLimitExceededFault(t)
	return t
end

local SignalExternalWorkflowExecutionDecisionAttributes_keys = { "control" = true, "input" = true, "workflowId" = true, "runId" = true, "signalName" = true, nil }

function M.AssertSignalExternalWorkflowExecutionDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SignalExternalWorkflowExecutionDecisionAttributes to be of type 'table'")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["signalName"], "Expected key signalName to exist in table")
	if struct["control"] then M.AssertData(struct["control"]) end
	if struct["input"] then M.AssertData(struct["input"]) end
	if struct["workflowId"] then M.AssertWorkflowId(struct["workflowId"]) end
	if struct["runId"] then M.AssertRunIdOptional(struct["runId"]) end
	if struct["signalName"] then M.AssertSignalName(struct["signalName"]) end
	for k,_ in pairs(struct) do
		assert(SignalExternalWorkflowExecutionDecisionAttributes_keys[k], "SignalExternalWorkflowExecutionDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SignalExternalWorkflowExecutionDecisionAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;SignalExternalWorkflowExecution&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;&lt;b&gt;Access Control&lt;/b&gt;&lt;/p&gt; &lt;p&gt;You can use IAM policies to control this decision's access to Amazon SWF resources as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;Use a &lt;code&gt;Resource&lt;/code&gt; element with the domain name to limit the action to only specified domains.&lt;/li&gt; &lt;li&gt;Use an &lt;code&gt;Action&lt;/code&gt; element to allow or deny permission to call this action.&lt;/li&gt; &lt;li&gt;You cannot use an IAM policy to constrain this action's parameters.&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's &lt;b&gt;cause&lt;/b&gt; parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/p&gt;
-- @param control [Data] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; Data attached to the event that can be used by the decider in subsequent decision tasks.&lt;/p&gt;
-- @param input [Data] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; Input data to be provided with the signal. The target workflow execution will use the signal name and input data to process the signal.&lt;/p&gt;
-- @param workflowId [WorkflowId] &lt;p&gt;&lt;b&gt;Required.&lt;/b&gt; The &lt;code&gt;workflowId&lt;/code&gt; of the workflow execution to be signaled.&lt;/p&gt;
-- @param runId [RunIdOptional] &lt;p&gt;The &lt;code&gt;runId&lt;/code&gt; of the workflow execution to be signaled.&lt;/p&gt;
-- @param signalName [SignalName] &lt;p&gt;&lt;b&gt;Required.&lt;/b&gt; The name of the signal.The target workflow execution will use the signal name and input to process the signal.&lt;/p&gt;
-- Required parameter: workflowId
-- Required parameter: signalName
function M.SignalExternalWorkflowExecutionDecisionAttributes(control, input, workflowId, runId, signalName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SignalExternalWorkflowExecutionDecisionAttributes")
	local t = { 
		["control"] = control,
		["input"] = input,
		["workflowId"] = workflowId,
		["runId"] = runId,
		["signalName"] = signalName,
	}
	M.AssertSignalExternalWorkflowExecutionDecisionAttributes(t)
	return t
end

local OperationNotPermittedFault_keys = { "message" = true, nil }

function M.AssertOperationNotPermittedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationNotPermittedFault to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(OperationNotPermittedFault_keys[k], "OperationNotPermittedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationNotPermittedFault
-- &lt;p&gt;Returned when the caller does not have sufficient permissions to invoke the action.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;A description that may help with diagnosing the cause of the fault.&lt;/p&gt;
function M.OperationNotPermittedFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OperationNotPermittedFault")
	local t = { 
		["message"] = message,
	}
	M.AssertOperationNotPermittedFault(t)
	return t
end

local ScheduleActivityTaskFailedEventAttributes_keys = { "activityId" = true, "activityType" = true, "cause" = true, "decisionTaskCompletedEventId" = true, nil }

function M.AssertScheduleActivityTaskFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleActivityTaskFailedEventAttributes to be of type 'table'")
	assert(struct["activityType"], "Expected key activityType to exist in table")
	assert(struct["activityId"], "Expected key activityId to exist in table")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["activityId"] then M.AssertActivityId(struct["activityId"]) end
	if struct["activityType"] then M.AssertActivityType(struct["activityType"]) end
	if struct["cause"] then M.AssertScheduleActivityTaskFailedCause(struct["cause"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(ScheduleActivityTaskFailedEventAttributes_keys[k], "ScheduleActivityTaskFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleActivityTaskFailedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;ScheduleActivityTaskFailed&lt;/code&gt; event.&lt;/p&gt;
-- @param activityId [ActivityId] &lt;p&gt;The activityId provided in the &lt;code&gt;ScheduleActivityTask&lt;/code&gt; decision that failed.&lt;/p&gt;
-- @param activityType [ActivityType] &lt;p&gt;The activity type provided in the &lt;code&gt;ScheduleActivityTask&lt;/code&gt; decision that failed.&lt;/p&gt;
-- @param cause [ScheduleActivityTaskFailedCause] &lt;p&gt;The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.&lt;/p&gt; &lt;note&gt;If &lt;b&gt;cause&lt;/b&gt; is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/note&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision that resulted in the scheduling of this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- Required parameter: activityType
-- Required parameter: activityId
-- Required parameter: cause
-- Required parameter: decisionTaskCompletedEventId
function M.ScheduleActivityTaskFailedEventAttributes(activityId, activityType, cause, decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScheduleActivityTaskFailedEventAttributes")
	local t = { 
		["activityId"] = activityId,
		["activityType"] = activityType,
		["cause"] = cause,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
	}
	M.AssertScheduleActivityTaskFailedEventAttributes(t)
	return t
end

local ActivityTaskTimedOutEventAttributes_keys = { "startedEventId" = true, "timeoutType" = true, "scheduledEventId" = true, "details" = true, nil }

function M.AssertActivityTaskTimedOutEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTaskTimedOutEventAttributes to be of type 'table'")
	assert(struct["timeoutType"], "Expected key timeoutType to exist in table")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then M.AssertEventId(struct["startedEventId"]) end
	if struct["timeoutType"] then M.AssertActivityTaskTimeoutType(struct["timeoutType"]) end
	if struct["scheduledEventId"] then M.AssertEventId(struct["scheduledEventId"]) end
	if struct["details"] then M.AssertLimitedData(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(ActivityTaskTimedOutEventAttributes_keys[k], "ActivityTaskTimedOutEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTaskTimedOutEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;ActivityTaskTimedOut&lt;/code&gt; event.&lt;/p&gt;
-- @param startedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;ActivityTaskStarted&lt;/code&gt; event recorded when this activity task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param timeoutType [ActivityTaskTimeoutType] &lt;p&gt;The type of the timeout that caused this event.&lt;/p&gt;
-- @param scheduledEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;ActivityTaskScheduled&lt;/code&gt; event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param details [LimitedData] &lt;p&gt;Contains the content of the &lt;code&gt;details&lt;/code&gt; parameter for the last call made by the activity to &lt;code&gt;RecordActivityTaskHeartbeat&lt;/code&gt;.&lt;/p&gt;
-- Required parameter: timeoutType
-- Required parameter: scheduledEventId
-- Required parameter: startedEventId
function M.ActivityTaskTimedOutEventAttributes(startedEventId, timeoutType, scheduledEventId, details, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTaskTimedOutEventAttributes")
	local t = { 
		["startedEventId"] = startedEventId,
		["timeoutType"] = timeoutType,
		["scheduledEventId"] = scheduledEventId,
		["details"] = details,
	}
	M.AssertActivityTaskTimedOutEventAttributes(t)
	return t
end

local ContinueAsNewWorkflowExecutionFailedEventAttributes_keys = { "cause" = true, "decisionTaskCompletedEventId" = true, nil }

function M.AssertContinueAsNewWorkflowExecutionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ContinueAsNewWorkflowExecutionFailedEventAttributes to be of type 'table'")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["cause"] then M.AssertContinueAsNewWorkflowExecutionFailedCause(struct["cause"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(ContinueAsNewWorkflowExecutionFailedEventAttributes_keys[k], "ContinueAsNewWorkflowExecutionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ContinueAsNewWorkflowExecutionFailedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;ContinueAsNewWorkflowExecutionFailed&lt;/code&gt; event.&lt;/p&gt;
-- @param cause [ContinueAsNewWorkflowExecutionFailedCause] &lt;p&gt;The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.&lt;/p&gt; &lt;note&gt;If &lt;b&gt;cause&lt;/b&gt; is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/note&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;ContinueAsNewWorkflowExecution&lt;/code&gt; decision that started this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- Required parameter: cause
-- Required parameter: decisionTaskCompletedEventId
function M.ContinueAsNewWorkflowExecutionFailedEventAttributes(cause, decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ContinueAsNewWorkflowExecutionFailedEventAttributes")
	local t = { 
		["cause"] = cause,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
	}
	M.AssertContinueAsNewWorkflowExecutionFailedEventAttributes(t)
	return t
end

local RecordActivityTaskHeartbeatInput_keys = { "details" = true, "taskToken" = true, nil }

function M.AssertRecordActivityTaskHeartbeatInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RecordActivityTaskHeartbeatInput to be of type 'table'")
	assert(struct["taskToken"], "Expected key taskToken to exist in table")
	if struct["details"] then M.AssertLimitedData(struct["details"]) end
	if struct["taskToken"] then M.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(RecordActivityTaskHeartbeatInput_keys[k], "RecordActivityTaskHeartbeatInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RecordActivityTaskHeartbeatInput
--  
-- @param details [LimitedData] &lt;p&gt;If specified, contains details about the progress of the task.&lt;/p&gt;
-- @param taskToken [TaskToken] &lt;p&gt;The &lt;code&gt;taskToken&lt;/code&gt; of the &lt;a&gt;ActivityTask&lt;/a&gt;.&lt;/p&gt; &lt;important&gt; &lt;code&gt;taskToken&lt;/code&gt; is generated by the service and should be treated as an opaque value. If the task is passed to another process, its &lt;code&gt;taskToken&lt;/code&gt; must also be passed. This enables it to provide its progress and respond with results. &lt;/important&gt;
-- Required parameter: taskToken
function M.RecordActivityTaskHeartbeatInput(details, taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RecordActivityTaskHeartbeatInput")
	local t = { 
		["details"] = details,
		["taskToken"] = taskToken,
	}
	M.AssertRecordActivityTaskHeartbeatInput(t)
	return t
end

local TypeDeprecatedFault_keys = { "message" = true, nil }

function M.AssertTypeDeprecatedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TypeDeprecatedFault to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TypeDeprecatedFault_keys[k], "TypeDeprecatedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TypeDeprecatedFault
-- &lt;p&gt;Returned when the specified activity or workflow type was already deprecated.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;A description that may help with diagnosing the cause of the fault.&lt;/p&gt;
function M.TypeDeprecatedFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TypeDeprecatedFault")
	local t = { 
		["message"] = message,
	}
	M.AssertTypeDeprecatedFault(t)
	return t
end

local WorkflowExecutionDetail_keys = { "latestExecutionContext" = true, "executionConfiguration" = true, "latestActivityTaskTimestamp" = true, "openCounts" = true, "executionInfo" = true, nil }

function M.AssertWorkflowExecutionDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionDetail to be of type 'table'")
	assert(struct["executionInfo"], "Expected key executionInfo to exist in table")
	assert(struct["executionConfiguration"], "Expected key executionConfiguration to exist in table")
	assert(struct["openCounts"], "Expected key openCounts to exist in table")
	if struct["latestExecutionContext"] then M.AssertData(struct["latestExecutionContext"]) end
	if struct["executionConfiguration"] then M.AssertWorkflowExecutionConfiguration(struct["executionConfiguration"]) end
	if struct["latestActivityTaskTimestamp"] then M.AssertTimestamp(struct["latestActivityTaskTimestamp"]) end
	if struct["openCounts"] then M.AssertWorkflowExecutionOpenCounts(struct["openCounts"]) end
	if struct["executionInfo"] then M.AssertWorkflowExecutionInfo(struct["executionInfo"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowExecutionDetail_keys[k], "WorkflowExecutionDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionDetail
-- &lt;p&gt;Contains details about a workflow execution.&lt;/p&gt;
-- @param latestExecutionContext [Data] &lt;p&gt;The latest executionContext provided by the decider for this workflow execution. A decider can provide an executionContext (a free-form string) when closing a decision task using &lt;a&gt;RespondDecisionTaskCompleted&lt;/a&gt;.&lt;/p&gt;
-- @param executionConfiguration [WorkflowExecutionConfiguration] &lt;p&gt;The configuration settings for this workflow execution including timeout values, tasklist etc.&lt;/p&gt;
-- @param latestActivityTaskTimestamp [Timestamp] &lt;p&gt;The time when the last activity task was scheduled for this workflow execution. You can use this information to determine if the workflow has not made progress for an unusually long period of time and might require a corrective action.&lt;/p&gt;
-- @param openCounts [WorkflowExecutionOpenCounts] &lt;p&gt;The number of tasks for this workflow execution. This includes open and closed tasks of all types.&lt;/p&gt;
-- @param executionInfo [WorkflowExecutionInfo] &lt;p&gt;Information about the workflow execution.&lt;/p&gt;
-- Required parameter: executionInfo
-- Required parameter: executionConfiguration
-- Required parameter: openCounts
function M.WorkflowExecutionDetail(latestExecutionContext, executionConfiguration, latestActivityTaskTimestamp, openCounts, executionInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionDetail")
	local t = { 
		["latestExecutionContext"] = latestExecutionContext,
		["executionConfiguration"] = executionConfiguration,
		["latestActivityTaskTimestamp"] = latestActivityTaskTimestamp,
		["openCounts"] = openCounts,
		["executionInfo"] = executionInfo,
	}
	M.AssertWorkflowExecutionDetail(t)
	return t
end

local WorkflowExecutionSignaledEventAttributes_keys = { "input" = true, "externalInitiatedEventId" = true, "externalWorkflowExecution" = true, "signalName" = true, nil }

function M.AssertWorkflowExecutionSignaledEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionSignaledEventAttributes to be of type 'table'")
	assert(struct["signalName"], "Expected key signalName to exist in table")
	if struct["input"] then M.AssertData(struct["input"]) end
	if struct["externalInitiatedEventId"] then M.AssertEventId(struct["externalInitiatedEventId"]) end
	if struct["externalWorkflowExecution"] then M.AssertWorkflowExecution(struct["externalWorkflowExecution"]) end
	if struct["signalName"] then M.AssertSignalName(struct["signalName"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowExecutionSignaledEventAttributes_keys[k], "WorkflowExecutionSignaledEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionSignaledEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;WorkflowExecutionSignaled&lt;/code&gt; event.&lt;/p&gt;
-- @param input [Data] &lt;p&gt;Inputs provided with the signal (if any). The decider can use the signal name and inputs to determine how to process the signal.&lt;/p&gt;
-- @param externalInitiatedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;SignalExternalWorkflowExecutionInitiated&lt;/code&gt; event corresponding to the &lt;code&gt;SignalExternalWorkflow&lt;/code&gt; decision to signal this workflow execution.The source event with this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event. This field is set only if the signal was initiated by another workflow execution.&lt;/p&gt;
-- @param externalWorkflowExecution [WorkflowExecution] &lt;p&gt;The workflow execution that sent the signal. This is set only of the signal was sent by another workflow execution.&lt;/p&gt;
-- @param signalName [SignalName] &lt;p&gt;The name of the signal received. The decider can use the signal name and inputs to determine how to the process the signal.&lt;/p&gt;
-- Required parameter: signalName
function M.WorkflowExecutionSignaledEventAttributes(input, externalInitiatedEventId, externalWorkflowExecution, signalName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionSignaledEventAttributes")
	local t = { 
		["input"] = input,
		["externalInitiatedEventId"] = externalInitiatedEventId,
		["externalWorkflowExecution"] = externalWorkflowExecution,
		["signalName"] = signalName,
	}
	M.AssertWorkflowExecutionSignaledEventAttributes(t)
	return t
end

local History_keys = { "nextPageToken" = true, "events" = true, nil }

function M.AssertHistory(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected History to be of type 'table'")
	assert(struct["events"], "Expected key events to exist in table")
	if struct["nextPageToken"] then M.AssertPageToken(struct["nextPageToken"]) end
	if struct["events"] then M.AssertHistoryEventList(struct["events"]) end
	for k,_ in pairs(struct) do
		assert(History_keys[k], "History contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type History
-- &lt;p&gt;Paginated representation of a workflow history for a workflow execution. This is the up to date, complete and authoritative record of the events related to all tasks and events in the life of the workflow execution.&lt;/p&gt;
-- @param nextPageToken [PageToken] &lt;p&gt;If a &lt;code&gt;NextPageToken&lt;/code&gt; was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in &lt;code&gt;nextPageToken&lt;/code&gt;. Keep all other arguments unchanged.&lt;/p&gt; &lt;p&gt;The configured &lt;code&gt;maximumPageSize&lt;/code&gt; determines how many results can be returned in a single call.&lt;/p&gt;
-- @param events [HistoryEventList] &lt;p&gt;The list of history events.&lt;/p&gt;
-- Required parameter: events
function M.History(nextPageToken, events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating History")
	local t = { 
		["nextPageToken"] = nextPageToken,
		["events"] = events,
	}
	M.AssertHistory(t)
	return t
end

local CancelTimerDecisionAttributes_keys = { "timerId" = true, nil }

function M.AssertCancelTimerDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelTimerDecisionAttributes to be of type 'table'")
	assert(struct["timerId"], "Expected key timerId to exist in table")
	if struct["timerId"] then M.AssertTimerId(struct["timerId"]) end
	for k,_ in pairs(struct) do
		assert(CancelTimerDecisionAttributes_keys[k], "CancelTimerDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelTimerDecisionAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;CancelTimer&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;&lt;b&gt;Access Control&lt;/b&gt;&lt;/p&gt; &lt;p&gt;You can use IAM policies to control this decision's access to Amazon SWF resources as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;Use a &lt;code&gt;Resource&lt;/code&gt; element with the domain name to limit the action to only specified domains.&lt;/li&gt; &lt;li&gt;Use an &lt;code&gt;Action&lt;/code&gt; element to allow or deny permission to call this action.&lt;/li&gt; &lt;li&gt;You cannot use an IAM policy to constrain this action's parameters.&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's &lt;b&gt;cause&lt;/b&gt; parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/p&gt;
-- @param timerId [TimerId] &lt;p&gt;&lt;b&gt;Required.&lt;/b&gt; The unique ID of the timer to cancel.&lt;/p&gt;
-- Required parameter: timerId
function M.CancelTimerDecisionAttributes(timerId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelTimerDecisionAttributes")
	local t = { 
		["timerId"] = timerId,
	}
	M.AssertCancelTimerDecisionAttributes(t)
	return t
end

local RespondDecisionTaskCompletedInput_keys = { "executionContext" = true, "decisions" = true, "taskToken" = true, nil }

function M.AssertRespondDecisionTaskCompletedInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RespondDecisionTaskCompletedInput to be of type 'table'")
	assert(struct["taskToken"], "Expected key taskToken to exist in table")
	if struct["executionContext"] then M.AssertData(struct["executionContext"]) end
	if struct["decisions"] then M.AssertDecisionList(struct["decisions"]) end
	if struct["taskToken"] then M.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(RespondDecisionTaskCompletedInput_keys[k], "RespondDecisionTaskCompletedInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RespondDecisionTaskCompletedInput
--  
-- @param executionContext [Data] &lt;p&gt;User defined context to add to workflow execution.&lt;/p&gt;
-- @param decisions [DecisionList] &lt;p&gt;The list of decisions (possibly empty) made by the decider while processing this decision task. See the docs for the decision structure for details.&lt;/p&gt;
-- @param taskToken [TaskToken] &lt;p&gt;The &lt;code&gt;taskToken&lt;/code&gt; from the &lt;a&gt;DecisionTask&lt;/a&gt;.&lt;/p&gt; &lt;important&gt;&lt;code&gt;taskToken&lt;/code&gt; is generated by the service and should be treated as an opaque value. If the task is passed to another process, its &lt;code&gt;taskToken&lt;/code&gt; must also be passed. This enables it to provide its progress and respond with results.&lt;/important&gt;
-- Required parameter: taskToken
function M.RespondDecisionTaskCompletedInput(executionContext, decisions, taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RespondDecisionTaskCompletedInput")
	local t = { 
		["executionContext"] = executionContext,
		["decisions"] = decisions,
		["taskToken"] = taskToken,
	}
	M.AssertRespondDecisionTaskCompletedInput(t)
	return t
end

local ListActivityTypesInput_keys = { "nextPageToken" = true, "domain" = true, "name" = true, "registrationStatus" = true, "reverseOrder" = true, "maximumPageSize" = true, nil }

function M.AssertListActivityTypesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListActivityTypesInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["registrationStatus"], "Expected key registrationStatus to exist in table")
	if struct["nextPageToken"] then M.AssertPageToken(struct["nextPageToken"]) end
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["name"] then M.AssertName(struct["name"]) end
	if struct["registrationStatus"] then M.AssertRegistrationStatus(struct["registrationStatus"]) end
	if struct["reverseOrder"] then M.AssertReverseOrder(struct["reverseOrder"]) end
	if struct["maximumPageSize"] then M.AssertPageSize(struct["maximumPageSize"]) end
	for k,_ in pairs(struct) do
		assert(ListActivityTypesInput_keys[k], "ListActivityTypesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListActivityTypesInput
--  
-- @param nextPageToken [PageToken] &lt;p&gt;If a &lt;code&gt;NextPageToken&lt;/code&gt; was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in &lt;code&gt;nextPageToken&lt;/code&gt;. Keep all other arguments unchanged.&lt;/p&gt; &lt;p&gt;The configured &lt;code&gt;maximumPageSize&lt;/code&gt; determines how many results can be returned in a single call.&lt;/p&gt;
-- @param domain [DomainName] &lt;p&gt;The name of the domain in which the activity types have been registered.&lt;/p&gt;
-- @param name [Name] &lt;p&gt;If specified, only lists the activity types that have this name.&lt;/p&gt;
-- @param registrationStatus [RegistrationStatus] &lt;p&gt;Specifies the registration status of the activity types to list.&lt;/p&gt;
-- @param reverseOrder [ReverseOrder] &lt;p&gt;When set to &lt;code&gt;true&lt;/code&gt;, returns the results in reverse order. By default, the results are returned in ascending alphabetical order by &lt;code&gt;name&lt;/code&gt; of the activity types.&lt;/p&gt;
-- @param maximumPageSize [PageSize] &lt;p&gt;The maximum number of results that will be returned per call. &lt;code&gt;nextPageToken&lt;/code&gt; can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size &lt;i&gt;smaller&lt;/i&gt; than the maximum.&lt;/p&gt; &lt;p&gt;This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.&lt;/p&gt;
-- Required parameter: domain
-- Required parameter: registrationStatus
function M.ListActivityTypesInput(nextPageToken, domain, name, registrationStatus, reverseOrder, maximumPageSize, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListActivityTypesInput")
	local t = { 
		["nextPageToken"] = nextPageToken,
		["domain"] = domain,
		["name"] = name,
		["registrationStatus"] = registrationStatus,
		["reverseOrder"] = reverseOrder,
		["maximumPageSize"] = maximumPageSize,
	}
	M.AssertListActivityTypesInput(t)
	return t
end

local DomainAlreadyExistsFault_keys = { "message" = true, nil }

function M.AssertDomainAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DomainAlreadyExistsFault to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(DomainAlreadyExistsFault_keys[k], "DomainAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DomainAlreadyExistsFault
-- &lt;p&gt;Returned if the specified domain already exists. You will get this fault even if the existing domain is in deprecated status.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;A description that may help with diagnosing the cause of the fault.&lt;/p&gt;
function M.DomainAlreadyExistsFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DomainAlreadyExistsFault")
	local t = { 
		["message"] = message,
	}
	M.AssertDomainAlreadyExistsFault(t)
	return t
end

local DecisionTaskScheduledEventAttributes_keys = { "startToCloseTimeout" = true, "taskList" = true, "taskPriority" = true, nil }

function M.AssertDecisionTaskScheduledEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecisionTaskScheduledEventAttributes to be of type 'table'")
	assert(struct["taskList"], "Expected key taskList to exist in table")
	if struct["startToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["startToCloseTimeout"]) end
	if struct["taskList"] then M.AssertTaskList(struct["taskList"]) end
	if struct["taskPriority"] then M.AssertTaskPriority(struct["taskPriority"]) end
	for k,_ in pairs(struct) do
		assert(DecisionTaskScheduledEventAttributes_keys[k], "DecisionTaskScheduledEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecisionTaskScheduledEventAttributes
-- &lt;p&gt;Provides details about the &lt;code&gt;DecisionTaskScheduled&lt;/code&gt; event.&lt;/p&gt;
-- @param startToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;The maximum duration for this decision task. The task is considered timed out if it does not completed within this duration.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt;
-- @param taskList [TaskList] &lt;p&gt;The name of the task list in which the decision task was scheduled.&lt;/p&gt;
-- @param taskPriority [TaskPriority] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; A task priority that, if set, specifies the priority for this decision task. Valid values are integers that range from Java's &lt;code&gt;Integer.MIN_VALUE&lt;/code&gt; (-2147483648) to &lt;code&gt;Integer.MAX_VALUE&lt;/code&gt; (2147483647). Higher numbers indicate higher priority.&lt;/p&gt; &lt;p&gt;For more information about setting task priority, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html&quot;&gt;Setting Task Priority&lt;/a&gt; in the &lt;i&gt;Amazon Simple Workflow Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- Required parameter: taskList
function M.DecisionTaskScheduledEventAttributes(startToCloseTimeout, taskList, taskPriority, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecisionTaskScheduledEventAttributes")
	local t = { 
		["startToCloseTimeout"] = startToCloseTimeout,
		["taskList"] = taskList,
		["taskPriority"] = taskPriority,
	}
	M.AssertDecisionTaskScheduledEventAttributes(t)
	return t
end

local LambdaFunctionFailedEventAttributes_keys = { "startedEventId" = true, "reason" = true, "scheduledEventId" = true, "details" = true, nil }

function M.AssertLambdaFunctionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionFailedEventAttributes to be of type 'table'")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then M.AssertEventId(struct["startedEventId"]) end
	if struct["reason"] then M.AssertFailureReason(struct["reason"]) end
	if struct["scheduledEventId"] then M.AssertEventId(struct["scheduledEventId"]) end
	if struct["details"] then M.AssertData(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(LambdaFunctionFailedEventAttributes_keys[k], "LambdaFunctionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionFailedEventAttributes
-- &lt;p&gt;Provides details for the &lt;code&gt;LambdaFunctionFailed&lt;/code&gt; event.&lt;/p&gt;
-- @param startedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;LambdaFunctionStarted&lt;/code&gt; event recorded in the history.&lt;/p&gt;
-- @param reason [FailureReason] &lt;p&gt;The reason provided for the failure (if any).&lt;/p&gt;
-- @param scheduledEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;LambdaFunctionScheduled&lt;/code&gt; event that was recorded when this AWS Lambda function was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param details [Data] &lt;p&gt;The details of the failure (if any).&lt;/p&gt;
-- Required parameter: scheduledEventId
-- Required parameter: startedEventId
function M.LambdaFunctionFailedEventAttributes(startedEventId, reason, scheduledEventId, details, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionFailedEventAttributes")
	local t = { 
		["startedEventId"] = startedEventId,
		["reason"] = reason,
		["scheduledEventId"] = scheduledEventId,
		["details"] = details,
	}
	M.AssertLambdaFunctionFailedEventAttributes(t)
	return t
end

local ActivityTaskCanceledEventAttributes_keys = { "startedEventId" = true, "latestCancelRequestedEventId" = true, "scheduledEventId" = true, "details" = true, nil }

function M.AssertActivityTaskCanceledEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTaskCanceledEventAttributes to be of type 'table'")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then M.AssertEventId(struct["startedEventId"]) end
	if struct["latestCancelRequestedEventId"] then M.AssertEventId(struct["latestCancelRequestedEventId"]) end
	if struct["scheduledEventId"] then M.AssertEventId(struct["scheduledEventId"]) end
	if struct["details"] then M.AssertData(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(ActivityTaskCanceledEventAttributes_keys[k], "ActivityTaskCanceledEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTaskCanceledEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;ActivityTaskCanceled&lt;/code&gt; event.&lt;/p&gt;
-- @param startedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;ActivityTaskStarted&lt;/code&gt; event recorded when this activity task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param latestCancelRequestedEventId [EventId] &lt;p&gt;If set, contains the ID of the last &lt;code&gt;ActivityTaskCancelRequested&lt;/code&gt; event recorded for this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param scheduledEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;ActivityTaskScheduled&lt;/code&gt; event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param details [Data] &lt;p&gt;Details of the cancellation (if any).&lt;/p&gt;
-- Required parameter: scheduledEventId
-- Required parameter: startedEventId
function M.ActivityTaskCanceledEventAttributes(startedEventId, latestCancelRequestedEventId, scheduledEventId, details, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTaskCanceledEventAttributes")
	local t = { 
		["startedEventId"] = startedEventId,
		["latestCancelRequestedEventId"] = latestCancelRequestedEventId,
		["scheduledEventId"] = scheduledEventId,
		["details"] = details,
	}
	M.AssertActivityTaskCanceledEventAttributes(t)
	return t
end

local DescribeActivityTypeInput_keys = { "domain" = true, "activityType" = true, nil }

function M.AssertDescribeActivityTypeInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeActivityTypeInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["activityType"], "Expected key activityType to exist in table")
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["activityType"] then M.AssertActivityType(struct["activityType"]) end
	for k,_ in pairs(struct) do
		assert(DescribeActivityTypeInput_keys[k], "DescribeActivityTypeInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeActivityTypeInput
--  
-- @param domain [DomainName] &lt;p&gt;The name of the domain in which the activity type is registered.&lt;/p&gt;
-- @param activityType [ActivityType] &lt;p&gt;The activity type to get information about. Activity types are identified by the &lt;code&gt;name&lt;/code&gt; and &lt;code&gt;version&lt;/code&gt; that were supplied when the activity was registered.&lt;/p&gt;
-- Required parameter: domain
-- Required parameter: activityType
function M.DescribeActivityTypeInput(domain, activityType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeActivityTypeInput")
	local t = { 
		["domain"] = domain,
		["activityType"] = activityType,
	}
	M.AssertDescribeActivityTypeInput(t)
	return t
end

local SignalWorkflowExecutionInput_keys = { "input" = true, "domain" = true, "signalName" = true, "workflowId" = true, "runId" = true, nil }

function M.AssertSignalWorkflowExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SignalWorkflowExecutionInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	assert(struct["signalName"], "Expected key signalName to exist in table")
	if struct["input"] then M.AssertData(struct["input"]) end
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["signalName"] then M.AssertSignalName(struct["signalName"]) end
	if struct["workflowId"] then M.AssertWorkflowId(struct["workflowId"]) end
	if struct["runId"] then M.AssertRunIdOptional(struct["runId"]) end
	for k,_ in pairs(struct) do
		assert(SignalWorkflowExecutionInput_keys[k], "SignalWorkflowExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SignalWorkflowExecutionInput
--  
-- @param input [Data] &lt;p&gt;Data to attach to the &lt;code&gt;WorkflowExecutionSignaled&lt;/code&gt; event in the target workflow execution's history.&lt;/p&gt;
-- @param domain [DomainName] &lt;p&gt;The name of the domain containing the workflow execution to signal.&lt;/p&gt;
-- @param signalName [SignalName] &lt;p&gt;The name of the signal. This name must be meaningful to the target workflow.&lt;/p&gt;
-- @param workflowId [WorkflowId] &lt;p&gt;The workflowId of the workflow execution to signal.&lt;/p&gt;
-- @param runId [RunIdOptional] &lt;p&gt;The runId of the workflow execution to signal.&lt;/p&gt;
-- Required parameter: domain
-- Required parameter: workflowId
-- Required parameter: signalName
function M.SignalWorkflowExecutionInput(input, domain, signalName, workflowId, runId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SignalWorkflowExecutionInput")
	local t = { 
		["input"] = input,
		["domain"] = domain,
		["signalName"] = signalName,
		["workflowId"] = workflowId,
		["runId"] = runId,
	}
	M.AssertSignalWorkflowExecutionInput(t)
	return t
end

local StartChildWorkflowExecutionDecisionAttributes_keys = { "control" = true, "workflowId" = true, "taskList" = true, "taskStartToCloseTimeout" = true, "taskPriority" = true, "lambdaRole" = true, "childPolicy" = true, "executionStartToCloseTimeout" = true, "input" = true, "workflowType" = true, "tagList" = true, nil }

function M.AssertStartChildWorkflowExecutionDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartChildWorkflowExecutionDecisionAttributes to be of type 'table'")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["workflowId"], "Expected key workflowId to exist in table")
	if struct["control"] then M.AssertData(struct["control"]) end
	if struct["workflowId"] then M.AssertWorkflowId(struct["workflowId"]) end
	if struct["taskList"] then M.AssertTaskList(struct["taskList"]) end
	if struct["taskStartToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["taskStartToCloseTimeout"]) end
	if struct["taskPriority"] then M.AssertTaskPriority(struct["taskPriority"]) end
	if struct["lambdaRole"] then M.AssertArn(struct["lambdaRole"]) end
	if struct["childPolicy"] then M.AssertChildPolicy(struct["childPolicy"]) end
	if struct["executionStartToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["executionStartToCloseTimeout"]) end
	if struct["input"] then M.AssertData(struct["input"]) end
	if struct["workflowType"] then M.AssertWorkflowType(struct["workflowType"]) end
	if struct["tagList"] then M.AssertTagList(struct["tagList"]) end
	for k,_ in pairs(struct) do
		assert(StartChildWorkflowExecutionDecisionAttributes_keys[k], "StartChildWorkflowExecutionDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartChildWorkflowExecutionDecisionAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;&lt;b&gt;Access Control&lt;/b&gt;&lt;/p&gt; &lt;p&gt;You can use IAM policies to control this decision's access to Amazon SWF resources as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;Use a &lt;code&gt;Resource&lt;/code&gt; element with the domain name to limit the action to only specified domains.&lt;/li&gt; &lt;li&gt;Use an &lt;code&gt;Action&lt;/code&gt; element to allow or deny permission to call this action.&lt;/li&gt; &lt;li&gt;Constrain the following parameters by using a &lt;code&gt;Condition&lt;/code&gt; element with the appropriate keys. &lt;ul&gt; &lt;li&gt; &lt;code&gt;tagList.member.N&lt;/code&gt;: The key is &quot;swf:tagList.N&quot; where N is the tag number from 0 to 4, inclusive.&lt;/li&gt; &lt;li&gt;&lt;code&gt;taskList&lt;/code&gt;: String constraint. The key is &lt;code&gt;swf:taskList.name&lt;/code&gt;.&lt;/li&gt; &lt;li&gt;&lt;code&gt;workflowType.name&lt;/code&gt;: String constraint. The key is &lt;code&gt;swf:workflowType.name&lt;/code&gt;.&lt;/li&gt; &lt;li&gt;&lt;code&gt;workflowType.version&lt;/code&gt;: String constraint. The key is &lt;code&gt;swf:workflowType.version&lt;/code&gt;.&lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's &lt;b&gt;cause&lt;/b&gt; parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/p&gt;
-- @param control [Data] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; Data attached to the event that can be used by the decider in subsequent workflow tasks. This data is not sent to the child workflow execution.&lt;/p&gt;
-- @param workflowId [WorkflowId] &lt;p&gt;&lt;b&gt;Required.&lt;/b&gt; The &lt;code&gt;workflowId&lt;/code&gt; of the workflow execution.&lt;/p&gt; &lt;p&gt;The specified string must not start or end with whitespace. It must not contain a &lt;code&gt;:&lt;/code&gt; (colon), &lt;code&gt;/&lt;/code&gt; (slash), &lt;code&gt;|&lt;/code&gt; (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.&lt;/p&gt;
-- @param taskList [TaskList] &lt;p&gt;The name of the task list to be used for decision tasks of the child workflow execution.&lt;/p&gt; &lt;note&gt;A task list for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task list was specified at registration time then a fault will be returned.&lt;/note&gt; &lt;p&gt;The specified string must not start or end with whitespace. It must not contain a &lt;code&gt;:&lt;/code&gt; (colon), &lt;code&gt;/&lt;/code&gt; (slash), &lt;code&gt;|&lt;/code&gt; (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.&lt;/p&gt;
-- @param taskStartToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;Specifies the maximum duration of decision tasks for this workflow execution. This parameter overrides the &lt;code&gt;defaultTaskStartToCloseTimout&lt;/code&gt; specified when registering the workflow type using &lt;a&gt;RegisterWorkflowType&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt; &lt;note&gt;A task start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default task start-to-close timeout was specified at registration time then a fault will be returned.&lt;/note&gt;
-- @param taskPriority [TaskPriority] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; A task priority that, if set, specifies the priority for a decision task of this workflow execution. This overrides the defaultTaskPriority specified when registering the workflow type. Valid values are integers that range from Java's &lt;code&gt;Integer.MIN_VALUE&lt;/code&gt; (-2147483648) to &lt;code&gt;Integer.MAX_VALUE&lt;/code&gt; (2147483647). Higher numbers indicate higher priority.&lt;/p&gt; &lt;p&gt;For more information about setting task priority, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html&quot;&gt;Setting Task Priority&lt;/a&gt; in the &lt;i&gt;Amazon Simple Workflow Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param lambdaRole [Arn] &lt;p&gt;The ARN of an IAM role that authorizes Amazon SWF to invoke AWS Lambda functions.&lt;/p&gt; &lt;note&gt;In order for this workflow execution to invoke AWS Lambda functions, an appropriate IAM role must be specified either as a default for the workflow type or through this field.&lt;/note&gt;
-- @param childPolicy [ChildPolicy] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; If set, specifies the policy to use for the child workflow executions if the workflow execution being started is terminated by calling the &lt;a&gt;TerminateWorkflowExecution&lt;/a&gt; action explicitly or due to an expired timeout. This policy overrides the default child policy specified when registering the workflow type using &lt;a&gt;RegisterWorkflowType&lt;/a&gt;.&lt;/p&gt; &lt;p&gt;The supported child policies are:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;&lt;b&gt;TERMINATE:&lt;/b&gt; the child executions will be terminated.&lt;/li&gt; &lt;li&gt;&lt;b&gt;REQUEST_CANCEL:&lt;/b&gt; a request to cancel will be attempted for each child execution by recording a &lt;code&gt;WorkflowExecutionCancelRequested&lt;/code&gt; event in its history. It is up to the decider to take appropriate actions when it receives an execution history with this event.&lt;/li&gt; &lt;li&gt;&lt;b&gt;ABANDON:&lt;/b&gt; no action will be taken. The child executions will continue to run.&lt;/li&gt; &lt;/ul&gt; &lt;note&gt;A child policy for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default child policy was specified at registration time then a fault will be returned.&lt;/note&gt;
-- @param executionStartToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;The total duration for this workflow execution. This overrides the defaultExecutionStartToCloseTimeout specified when registering the workflow type.&lt;/p&gt; &lt;p&gt;The duration is specified in seconds; an integer greater than or equal to 0. The value &quot;NONE&quot; can be used to specify unlimited duration.&lt;/p&gt; &lt;note&gt;An execution start-to-close timeout for this workflow execution must be specified either as a default for the workflow type or through this parameter. If neither this parameter is set nor a default execution start-to-close timeout was specified at registration time then a fault will be returned.&lt;/note&gt;
-- @param input [Data] &lt;p&gt;The input to be provided to the workflow execution.&lt;/p&gt;
-- @param workflowType [WorkflowType] &lt;p&gt;&lt;b&gt;Required.&lt;/b&gt; The type of the workflow execution to be started.&lt;/p&gt;
-- @param tagList [TagList] &lt;p&gt;The list of tags to associate with the child workflow execution. A maximum of 5 tags can be specified. You can list workflow executions with a specific tag by calling &lt;a&gt;ListOpenWorkflowExecutions&lt;/a&gt; or &lt;a&gt;ListClosedWorkflowExecutions&lt;/a&gt; and specifying a &lt;a&gt;TagFilter&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: workflowType
-- Required parameter: workflowId
function M.StartChildWorkflowExecutionDecisionAttributes(control, workflowId, taskList, taskStartToCloseTimeout, taskPriority, lambdaRole, childPolicy, executionStartToCloseTimeout, input, workflowType, tagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartChildWorkflowExecutionDecisionAttributes")
	local t = { 
		["control"] = control,
		["workflowId"] = workflowId,
		["taskList"] = taskList,
		["taskStartToCloseTimeout"] = taskStartToCloseTimeout,
		["taskPriority"] = taskPriority,
		["lambdaRole"] = lambdaRole,
		["childPolicy"] = childPolicy,
		["executionStartToCloseTimeout"] = executionStartToCloseTimeout,
		["input"] = input,
		["workflowType"] = workflowType,
		["tagList"] = tagList,
	}
	M.AssertStartChildWorkflowExecutionDecisionAttributes(t)
	return t
end

local WorkflowTypeDetail_keys = { "configuration" = true, "typeInfo" = true, nil }

function M.AssertWorkflowTypeDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowTypeDetail to be of type 'table'")
	assert(struct["typeInfo"], "Expected key typeInfo to exist in table")
	assert(struct["configuration"], "Expected key configuration to exist in table")
	if struct["configuration"] then M.AssertWorkflowTypeConfiguration(struct["configuration"]) end
	if struct["typeInfo"] then M.AssertWorkflowTypeInfo(struct["typeInfo"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowTypeDetail_keys[k], "WorkflowTypeDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowTypeDetail
-- &lt;p&gt;Contains details about a workflow type.&lt;/p&gt;
-- @param configuration [WorkflowTypeConfiguration] &lt;p&gt;Configuration settings of the workflow type registered through &lt;a&gt;RegisterWorkflowType&lt;/a&gt;&lt;/p&gt;
-- @param typeInfo [WorkflowTypeInfo] &lt;p&gt;General information about the workflow type.&lt;/p&gt; &lt;p&gt;The status of the workflow type (returned in the WorkflowTypeInfo structure) can be one of the following.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;b&gt;REGISTERED&lt;/b&gt;: The type is registered and available. Workers supporting this type should be running.&lt;/li&gt; &lt;li&gt; &lt;b&gt;DEPRECATED&lt;/b&gt;: The type was deprecated using &lt;a&gt;DeprecateWorkflowType&lt;/a&gt;, but is still in use. You should keep workers supporting this type running. You cannot create new workflow executions of this type.&lt;/li&gt; &lt;/ul&gt;
-- Required parameter: typeInfo
-- Required parameter: configuration
function M.WorkflowTypeDetail(configuration, typeInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowTypeDetail")
	local t = { 
		["configuration"] = configuration,
		["typeInfo"] = typeInfo,
	}
	M.AssertWorkflowTypeDetail(t)
	return t
end

local ListClosedWorkflowExecutionsInput_keys = { "nextPageToken" = true, "domain" = true, "maximumPageSize" = true, "typeFilter" = true, "executionFilter" = true, "closeTimeFilter" = true, "reverseOrder" = true, "closeStatusFilter" = true, "startTimeFilter" = true, "tagFilter" = true, nil }

function M.AssertListClosedWorkflowExecutionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListClosedWorkflowExecutionsInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	if struct["nextPageToken"] then M.AssertPageToken(struct["nextPageToken"]) end
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["maximumPageSize"] then M.AssertPageSize(struct["maximumPageSize"]) end
	if struct["typeFilter"] then M.AssertWorkflowTypeFilter(struct["typeFilter"]) end
	if struct["executionFilter"] then M.AssertWorkflowExecutionFilter(struct["executionFilter"]) end
	if struct["closeTimeFilter"] then M.AssertExecutionTimeFilter(struct["closeTimeFilter"]) end
	if struct["reverseOrder"] then M.AssertReverseOrder(struct["reverseOrder"]) end
	if struct["closeStatusFilter"] then M.AssertCloseStatusFilter(struct["closeStatusFilter"]) end
	if struct["startTimeFilter"] then M.AssertExecutionTimeFilter(struct["startTimeFilter"]) end
	if struct["tagFilter"] then M.AssertTagFilter(struct["tagFilter"]) end
	for k,_ in pairs(struct) do
		assert(ListClosedWorkflowExecutionsInput_keys[k], "ListClosedWorkflowExecutionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListClosedWorkflowExecutionsInput
--  
-- @param nextPageToken [PageToken] &lt;p&gt;If a &lt;code&gt;NextPageToken&lt;/code&gt; was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in &lt;code&gt;nextPageToken&lt;/code&gt;. Keep all other arguments unchanged.&lt;/p&gt; &lt;p&gt;The configured &lt;code&gt;maximumPageSize&lt;/code&gt; determines how many results can be returned in a single call.&lt;/p&gt;
-- @param domain [DomainName] &lt;p&gt;The name of the domain that contains the workflow executions to list.&lt;/p&gt;
-- @param maximumPageSize [PageSize] &lt;p&gt;The maximum number of results that will be returned per call. &lt;code&gt;nextPageToken&lt;/code&gt; can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size &lt;i&gt;smaller&lt;/i&gt; than the maximum.&lt;/p&gt; &lt;p&gt;This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.&lt;/p&gt;
-- @param typeFilter [WorkflowTypeFilter] &lt;p&gt;If specified, only executions of the type specified in the filter are returned.&lt;/p&gt; &lt;note&gt;&lt;code&gt;closeStatusFilter&lt;/code&gt;, &lt;code&gt;executionFilter&lt;/code&gt;, &lt;code&gt;typeFilter&lt;/code&gt; and &lt;code&gt;tagFilter&lt;/code&gt; are mutually exclusive. You can specify at most one of these in a request.&lt;/note&gt;
-- @param executionFilter [WorkflowExecutionFilter] &lt;p&gt;If specified, only workflow executions matching the workflow ID specified in the filter are returned.&lt;/p&gt; &lt;note&gt;&lt;code&gt;closeStatusFilter&lt;/code&gt;, &lt;code&gt;executionFilter&lt;/code&gt;, &lt;code&gt;typeFilter&lt;/code&gt; and &lt;code&gt;tagFilter&lt;/code&gt; are mutually exclusive. You can specify at most one of these in a request.&lt;/note&gt;
-- @param closeTimeFilter [ExecutionTimeFilter] &lt;p&gt;If specified, the workflow executions are included in the returned results based on whether their close times are within the range specified by this filter. Also, if this parameter is specified, the returned results are ordered by their close times.&lt;/p&gt; &lt;note&gt;&lt;code&gt;startTimeFilter&lt;/code&gt; and &lt;code&gt;closeTimeFilter&lt;/code&gt; are mutually exclusive. You must specify one of these in a request but not both.&lt;/note&gt;
-- @param reverseOrder [ReverseOrder] &lt;p&gt;When set to &lt;code&gt;true&lt;/code&gt;, returns the results in reverse order. By default the results are returned in descending order of the start or the close time of the executions.&lt;/p&gt;
-- @param closeStatusFilter [CloseStatusFilter] &lt;p&gt;If specified, only workflow executions that match this &lt;i&gt;close status&lt;/i&gt; are listed. For example, if TERMINATED is specified, then only TERMINATED workflow executions are listed.&lt;/p&gt; &lt;note&gt;&lt;code&gt;closeStatusFilter&lt;/code&gt;, &lt;code&gt;executionFilter&lt;/code&gt;, &lt;code&gt;typeFilter&lt;/code&gt; and &lt;code&gt;tagFilter&lt;/code&gt; are mutually exclusive. You can specify at most one of these in a request.&lt;/note&gt;
-- @param startTimeFilter [ExecutionTimeFilter] &lt;p&gt;If specified, the workflow executions are included in the returned results based on whether their start times are within the range specified by this filter. Also, if this parameter is specified, the returned results are ordered by their start times.&lt;/p&gt; &lt;note&gt;&lt;code&gt;startTimeFilter&lt;/code&gt; and &lt;code&gt;closeTimeFilter&lt;/code&gt; are mutually exclusive. You must specify one of these in a request but not both.&lt;/note&gt;
-- @param tagFilter [TagFilter] &lt;p&gt;If specified, only executions that have the matching tag are listed.&lt;/p&gt; &lt;note&gt;&lt;code&gt;closeStatusFilter&lt;/code&gt;, &lt;code&gt;executionFilter&lt;/code&gt;, &lt;code&gt;typeFilter&lt;/code&gt; and &lt;code&gt;tagFilter&lt;/code&gt; are mutually exclusive. You can specify at most one of these in a request.&lt;/note&gt;
-- Required parameter: domain
function M.ListClosedWorkflowExecutionsInput(nextPageToken, domain, maximumPageSize, typeFilter, executionFilter, closeTimeFilter, reverseOrder, closeStatusFilter, startTimeFilter, tagFilter, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListClosedWorkflowExecutionsInput")
	local t = { 
		["nextPageToken"] = nextPageToken,
		["domain"] = domain,
		["maximumPageSize"] = maximumPageSize,
		["typeFilter"] = typeFilter,
		["executionFilter"] = executionFilter,
		["closeTimeFilter"] = closeTimeFilter,
		["reverseOrder"] = reverseOrder,
		["closeStatusFilter"] = closeStatusFilter,
		["startTimeFilter"] = startTimeFilter,
		["tagFilter"] = tagFilter,
	}
	M.AssertListClosedWorkflowExecutionsInput(t)
	return t
end

local WorkflowExecutionInfo_keys = { "closeTimestamp" = true, "workflowType" = true, "parent" = true, "startTimestamp" = true, "closeStatus" = true, "executionStatus" = true, "execution" = true, "cancelRequested" = true, "tagList" = true, nil }

function M.AssertWorkflowExecutionInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionInfo to be of type 'table'")
	assert(struct["execution"], "Expected key execution to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["startTimestamp"], "Expected key startTimestamp to exist in table")
	assert(struct["executionStatus"], "Expected key executionStatus to exist in table")
	if struct["closeTimestamp"] then M.AssertTimestamp(struct["closeTimestamp"]) end
	if struct["workflowType"] then M.AssertWorkflowType(struct["workflowType"]) end
	if struct["parent"] then M.AssertWorkflowExecution(struct["parent"]) end
	if struct["startTimestamp"] then M.AssertTimestamp(struct["startTimestamp"]) end
	if struct["closeStatus"] then M.AssertCloseStatus(struct["closeStatus"]) end
	if struct["executionStatus"] then M.AssertExecutionStatus(struct["executionStatus"]) end
	if struct["execution"] then M.AssertWorkflowExecution(struct["execution"]) end
	if struct["cancelRequested"] then M.AssertCanceled(struct["cancelRequested"]) end
	if struct["tagList"] then M.AssertTagList(struct["tagList"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowExecutionInfo_keys[k], "WorkflowExecutionInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionInfo
-- &lt;p&gt;Contains information about a workflow execution. &lt;/p&gt;
-- @param closeTimestamp [Timestamp] &lt;p&gt;The time when the workflow execution was closed. Set only if the execution status is CLOSED.&lt;/p&gt;
-- @param workflowType [WorkflowType] &lt;p&gt;The type of the workflow execution.&lt;/p&gt;
-- @param parent [WorkflowExecution] &lt;p&gt;If this workflow execution is a child of another execution then contains the workflow execution that started this execution.&lt;/p&gt;
-- @param startTimestamp [Timestamp] &lt;p&gt;The time when the execution was started.&lt;/p&gt;
-- @param closeStatus [CloseStatus] &lt;p&gt;If the execution status is closed then this specifies how the execution was closed:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;code&gt;COMPLETED&lt;/code&gt;: the execution was successfully completed.&lt;/li&gt; &lt;li&gt; &lt;code&gt;CANCELED&lt;/code&gt;: the execution was canceled.Cancellation allows the implementation to gracefully clean up before the execution is closed.&lt;/li&gt; &lt;li&gt; &lt;code&gt;TERMINATED&lt;/code&gt;: the execution was force terminated.&lt;/li&gt; &lt;li&gt; &lt;code&gt;FAILED&lt;/code&gt;: the execution failed to complete.&lt;/li&gt; &lt;li&gt; &lt;code&gt;TIMED_OUT&lt;/code&gt;: the execution did not complete in the alloted time and was automatically timed out.&lt;/li&gt; &lt;li&gt; &lt;code&gt;CONTINUED_AS_NEW&lt;/code&gt;: the execution is logically continued. This means the current execution was completed and a new execution was started to carry on the workflow.&lt;/li&gt; &lt;/ul&gt;
-- @param executionStatus [ExecutionStatus] &lt;p&gt;The current status of the execution.&lt;/p&gt;
-- @param execution [WorkflowExecution] &lt;p&gt;The workflow execution this information is about.&lt;/p&gt;
-- @param cancelRequested [Canceled] &lt;p&gt;Set to true if a cancellation is requested for this workflow execution.&lt;/p&gt;
-- @param tagList [TagList] &lt;p&gt;The list of tags associated with the workflow execution. Tags can be used to identify and list workflow executions of interest through the visibility APIs. A workflow execution can have a maximum of 5 tags.&lt;/p&gt;
-- Required parameter: execution
-- Required parameter: workflowType
-- Required parameter: startTimestamp
-- Required parameter: executionStatus
function M.WorkflowExecutionInfo(closeTimestamp, workflowType, parent, startTimestamp, closeStatus, executionStatus, execution, cancelRequested, tagList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionInfo")
	local t = { 
		["closeTimestamp"] = closeTimestamp,
		["workflowType"] = workflowType,
		["parent"] = parent,
		["startTimestamp"] = startTimestamp,
		["closeStatus"] = closeStatus,
		["executionStatus"] = executionStatus,
		["execution"] = execution,
		["cancelRequested"] = cancelRequested,
		["tagList"] = tagList,
	}
	M.AssertWorkflowExecutionInfo(t)
	return t
end

local ActivityTypeInfo_keys = { "status" = true, "deprecationDate" = true, "creationDate" = true, "activityType" = true, "description" = true, nil }

function M.AssertActivityTypeInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTypeInfo to be of type 'table'")
	assert(struct["activityType"], "Expected key activityType to exist in table")
	assert(struct["status"], "Expected key status to exist in table")
	assert(struct["creationDate"], "Expected key creationDate to exist in table")
	if struct["status"] then M.AssertRegistrationStatus(struct["status"]) end
	if struct["deprecationDate"] then M.AssertTimestamp(struct["deprecationDate"]) end
	if struct["creationDate"] then M.AssertTimestamp(struct["creationDate"]) end
	if struct["activityType"] then M.AssertActivityType(struct["activityType"]) end
	if struct["description"] then M.AssertDescription(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(ActivityTypeInfo_keys[k], "ActivityTypeInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTypeInfo
-- &lt;p&gt;Detailed information about an activity type.&lt;/p&gt;
-- @param status [RegistrationStatus] &lt;p&gt;The current status of the activity type.&lt;/p&gt;
-- @param deprecationDate [Timestamp] &lt;p&gt;If DEPRECATED, the date and time &lt;a&gt;DeprecateActivityType&lt;/a&gt; was called.&lt;/p&gt;
-- @param creationDate [Timestamp] &lt;p&gt;The date and time this activity type was created through &lt;a&gt;RegisterActivityType&lt;/a&gt;.&lt;/p&gt;
-- @param activityType [ActivityType] &lt;p&gt;The &lt;a&gt;ActivityType&lt;/a&gt; type structure representing the activity type.&lt;/p&gt;
-- @param description [Description] &lt;p&gt;The description of the activity type provided in &lt;a&gt;RegisterActivityType&lt;/a&gt;.&lt;/p&gt;
-- Required parameter: activityType
-- Required parameter: status
-- Required parameter: creationDate
function M.ActivityTypeInfo(status, deprecationDate, creationDate, activityType, description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTypeInfo")
	local t = { 
		["status"] = status,
		["deprecationDate"] = deprecationDate,
		["creationDate"] = creationDate,
		["activityType"] = activityType,
		["description"] = description,
	}
	M.AssertActivityTypeInfo(t)
	return t
end

local TypeAlreadyExistsFault_keys = { "message" = true, nil }

function M.AssertTypeAlreadyExistsFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TypeAlreadyExistsFault to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(TypeAlreadyExistsFault_keys[k], "TypeAlreadyExistsFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TypeAlreadyExistsFault
-- &lt;p&gt;Returned if the type already exists in the specified domain. You will get this fault even if the existing type is in deprecated status. You can specify another version if the intent is to create a new distinct version of the type.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;A description that may help with diagnosing the cause of the fault.&lt;/p&gt;
function M.TypeAlreadyExistsFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TypeAlreadyExistsFault")
	local t = { 
		["message"] = message,
	}
	M.AssertTypeAlreadyExistsFault(t)
	return t
end

local StartLambdaFunctionFailedEventAttributes_keys = { "cause" = true, "message" = true, "scheduledEventId" = true, nil }

function M.AssertStartLambdaFunctionFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartLambdaFunctionFailedEventAttributes to be of type 'table'")
	if struct["cause"] then M.AssertStartLambdaFunctionFailedCause(struct["cause"]) end
	if struct["message"] then M.AssertCauseMessage(struct["message"]) end
	if struct["scheduledEventId"] then M.AssertEventId(struct["scheduledEventId"]) end
	for k,_ in pairs(struct) do
		assert(StartLambdaFunctionFailedEventAttributes_keys[k], "StartLambdaFunctionFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartLambdaFunctionFailedEventAttributes
-- &lt;p&gt;Provides details for the &lt;code&gt;StartLambdaFunctionFailed&lt;/code&gt; event.&lt;/p&gt;
-- @param cause [StartLambdaFunctionFailedCause] &lt;p&gt;The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.&lt;/p&gt; &lt;note&gt;If &lt;b&gt;cause&lt;/b&gt; is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/note&gt;
-- @param message [CauseMessage] &lt;p&gt;The error message (if any).&lt;/p&gt;
-- @param scheduledEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;LambdaFunctionScheduled&lt;/code&gt; event that was recorded when this AWS Lambda function was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
function M.StartLambdaFunctionFailedEventAttributes(cause, message, scheduledEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartLambdaFunctionFailedEventAttributes")
	local t = { 
		["cause"] = cause,
		["message"] = message,
		["scheduledEventId"] = scheduledEventId,
	}
	M.AssertStartLambdaFunctionFailedEventAttributes(t)
	return t
end

local WorkflowExecutionCompletedEventAttributes_keys = { "result" = true, "decisionTaskCompletedEventId" = true, nil }

function M.AssertWorkflowExecutionCompletedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionCompletedEventAttributes to be of type 'table'")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["result"] then M.AssertData(struct["result"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowExecutionCompletedEventAttributes_keys[k], "WorkflowExecutionCompletedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionCompletedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;WorkflowExecutionCompleted&lt;/code&gt; event.&lt;/p&gt;
-- @param result [Data] &lt;p&gt;The result produced by the workflow execution upon successful completion.&lt;/p&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;CompleteWorkflowExecution&lt;/code&gt; decision to complete this execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- Required parameter: decisionTaskCompletedEventId
function M.WorkflowExecutionCompletedEventAttributes(result, decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionCompletedEventAttributes")
	local t = { 
		["result"] = result,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
	}
	M.AssertWorkflowExecutionCompletedEventAttributes(t)
	return t
end

local ListDomainsInput_keys = { "nextPageToken" = true, "maximumPageSize" = true, "registrationStatus" = true, "reverseOrder" = true, nil }

function M.AssertListDomainsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDomainsInput to be of type 'table'")
	assert(struct["registrationStatus"], "Expected key registrationStatus to exist in table")
	if struct["nextPageToken"] then M.AssertPageToken(struct["nextPageToken"]) end
	if struct["maximumPageSize"] then M.AssertPageSize(struct["maximumPageSize"]) end
	if struct["registrationStatus"] then M.AssertRegistrationStatus(struct["registrationStatus"]) end
	if struct["reverseOrder"] then M.AssertReverseOrder(struct["reverseOrder"]) end
	for k,_ in pairs(struct) do
		assert(ListDomainsInput_keys[k], "ListDomainsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDomainsInput
--  
-- @param nextPageToken [PageToken] &lt;p&gt;If a &lt;code&gt;NextPageToken&lt;/code&gt; was returned by a previous call, there are more results available. To retrieve the next page of results, make the call again using the returned token in &lt;code&gt;nextPageToken&lt;/code&gt;. Keep all other arguments unchanged.&lt;/p&gt; &lt;p&gt;The configured &lt;code&gt;maximumPageSize&lt;/code&gt; determines how many results can be returned in a single call.&lt;/p&gt;
-- @param maximumPageSize [PageSize] &lt;p&gt;The maximum number of results that will be returned per call. &lt;code&gt;nextPageToken&lt;/code&gt; can be used to obtain futher pages of results. The default is 1000, which is the maximum allowed page size. You can, however, specify a page size &lt;i&gt;smaller&lt;/i&gt; than the maximum.&lt;/p&gt; &lt;p&gt;This is an upper limit only; the actual number of results returned per call may be fewer than the specified maximum.&lt;/p&gt;
-- @param registrationStatus [RegistrationStatus] &lt;p&gt;Specifies the registration status of the domains to list.&lt;/p&gt;
-- @param reverseOrder [ReverseOrder] &lt;p&gt;When set to &lt;code&gt;true&lt;/code&gt;, returns the results in reverse order. By default, the results are returned in ascending alphabetical order by &lt;code&gt;name&lt;/code&gt; of the domains.&lt;/p&gt;
-- Required parameter: registrationStatus
function M.ListDomainsInput(nextPageToken, maximumPageSize, registrationStatus, reverseOrder, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListDomainsInput")
	local t = { 
		["nextPageToken"] = nextPageToken,
		["maximumPageSize"] = maximumPageSize,
		["registrationStatus"] = registrationStatus,
		["reverseOrder"] = reverseOrder,
	}
	M.AssertListDomainsInput(t)
	return t
end

local ActivityTaskScheduledEventAttributes_keys = { "control" = true, "taskList" = true, "scheduleToCloseTimeout" = true, "activityType" = true, "decisionTaskCompletedEventId" = true, "taskPriority" = true, "heartbeatTimeout" = true, "activityId" = true, "scheduleToStartTimeout" = true, "startToCloseTimeout" = true, "input" = true, nil }

function M.AssertActivityTaskScheduledEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTaskScheduledEventAttributes to be of type 'table'")
	assert(struct["activityType"], "Expected key activityType to exist in table")
	assert(struct["activityId"], "Expected key activityId to exist in table")
	assert(struct["taskList"], "Expected key taskList to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["control"] then M.AssertData(struct["control"]) end
	if struct["taskList"] then M.AssertTaskList(struct["taskList"]) end
	if struct["scheduleToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["scheduleToCloseTimeout"]) end
	if struct["activityType"] then M.AssertActivityType(struct["activityType"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["taskPriority"] then M.AssertTaskPriority(struct["taskPriority"]) end
	if struct["heartbeatTimeout"] then M.AssertDurationInSecondsOptional(struct["heartbeatTimeout"]) end
	if struct["activityId"] then M.AssertActivityId(struct["activityId"]) end
	if struct["scheduleToStartTimeout"] then M.AssertDurationInSecondsOptional(struct["scheduleToStartTimeout"]) end
	if struct["startToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["startToCloseTimeout"]) end
	if struct["input"] then M.AssertData(struct["input"]) end
	for k,_ in pairs(struct) do
		assert(ActivityTaskScheduledEventAttributes_keys[k], "ActivityTaskScheduledEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTaskScheduledEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;ActivityTaskScheduled&lt;/code&gt; event.&lt;/p&gt;
-- @param control [Data] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; Data attached to the event that can be used by the decider in subsequent workflow tasks. This data is not sent to the activity.&lt;/p&gt;
-- @param taskList [TaskList] &lt;p&gt;The task list in which the activity task has been scheduled.&lt;/p&gt;
-- @param scheduleToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;The maximum amount of time for this activity task.&lt;/p&gt;
-- @param activityType [ActivityType] &lt;p&gt;The type of the activity task.&lt;/p&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision that resulted in the scheduling of this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param taskPriority [TaskPriority] &lt;p&gt;&lt;i&gt;Optional.&lt;/i&gt; The priority to assign to the scheduled activity task. If set, this will override any default priority value that was assigned when the activity type was registered.&lt;/p&gt; &lt;p&gt;Valid values are integers that range from Java's &lt;code&gt;Integer.MIN_VALUE&lt;/code&gt; (-2147483648) to &lt;code&gt;Integer.MAX_VALUE&lt;/code&gt; (2147483647). Higher numbers indicate higher priority.&lt;/p&gt; &lt;p&gt;For more information about setting task priority, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/programming-priority.html&quot;&gt;Setting Task Priority&lt;/a&gt; in the &lt;i&gt;Amazon Simple Workflow Developer Guide&lt;/i&gt;.&lt;/p&gt;
-- @param heartbeatTimeout [DurationInSecondsOptional] &lt;p&gt;The maximum time before which the worker processing this task must report progress by calling &lt;a&gt;RecordActivityTaskHeartbeat&lt;/a&gt;. If the timeout is exceeded, the activity task is automatically timed out. If the worker subsequently attempts to record a heartbeat or return a result, it will be ignored.&lt;/p&gt;
-- @param activityId [ActivityId] &lt;p&gt;The unique ID of the activity task.&lt;/p&gt;
-- @param scheduleToStartTimeout [DurationInSecondsOptional] &lt;p&gt;The maximum amount of time the activity task can wait to be assigned to a worker.&lt;/p&gt;
-- @param startToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;The maximum amount of time a worker may take to process the activity task.&lt;/p&gt;
-- @param input [Data] &lt;p&gt;The input provided to the activity task.&lt;/p&gt;
-- Required parameter: activityType
-- Required parameter: activityId
-- Required parameter: taskList
-- Required parameter: decisionTaskCompletedEventId
function M.ActivityTaskScheduledEventAttributes(control, taskList, scheduleToCloseTimeout, activityType, decisionTaskCompletedEventId, taskPriority, heartbeatTimeout, activityId, scheduleToStartTimeout, startToCloseTimeout, input, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTaskScheduledEventAttributes")
	local t = { 
		["control"] = control,
		["taskList"] = taskList,
		["scheduleToCloseTimeout"] = scheduleToCloseTimeout,
		["activityType"] = activityType,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
		["taskPriority"] = taskPriority,
		["heartbeatTimeout"] = heartbeatTimeout,
		["activityId"] = activityId,
		["scheduleToStartTimeout"] = scheduleToStartTimeout,
		["startToCloseTimeout"] = startToCloseTimeout,
		["input"] = input,
	}
	M.AssertActivityTaskScheduledEventAttributes(t)
	return t
end

local ChildWorkflowExecutionCompletedEventAttributes_keys = { "startedEventId" = true, "workflowType" = true, "initiatedEventId" = true, "result" = true, "workflowExecution" = true, nil }

function M.AssertChildWorkflowExecutionCompletedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ChildWorkflowExecutionCompletedEventAttributes to be of type 'table'")
	assert(struct["workflowExecution"], "Expected key workflowExecution to exist in table")
	assert(struct["workflowType"], "Expected key workflowType to exist in table")
	assert(struct["initiatedEventId"], "Expected key initiatedEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then M.AssertEventId(struct["startedEventId"]) end
	if struct["workflowType"] then M.AssertWorkflowType(struct["workflowType"]) end
	if struct["initiatedEventId"] then M.AssertEventId(struct["initiatedEventId"]) end
	if struct["result"] then M.AssertData(struct["result"]) end
	if struct["workflowExecution"] then M.AssertWorkflowExecution(struct["workflowExecution"]) end
	for k,_ in pairs(struct) do
		assert(ChildWorkflowExecutionCompletedEventAttributes_keys[k], "ChildWorkflowExecutionCompletedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ChildWorkflowExecutionCompletedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;ChildWorkflowExecutionCompleted&lt;/code&gt; event.&lt;/p&gt;
-- @param startedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;ChildWorkflowExecutionStarted&lt;/code&gt; event recorded when this child workflow execution was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param workflowType [WorkflowType] &lt;p&gt;The type of the child workflow execution.&lt;/p&gt;
-- @param initiatedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;StartChildWorkflowExecutionInitiated&lt;/code&gt; event corresponding to the &lt;code&gt;StartChildWorkflowExecution&lt;/code&gt; decision to start this child workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param result [Data] &lt;p&gt;The result of the child workflow execution (if any).&lt;/p&gt;
-- @param workflowExecution [WorkflowExecution] &lt;p&gt;The child workflow execution that was completed.&lt;/p&gt;
-- Required parameter: workflowExecution
-- Required parameter: workflowType
-- Required parameter: initiatedEventId
-- Required parameter: startedEventId
function M.ChildWorkflowExecutionCompletedEventAttributes(startedEventId, workflowType, initiatedEventId, result, workflowExecution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ChildWorkflowExecutionCompletedEventAttributes")
	local t = { 
		["startedEventId"] = startedEventId,
		["workflowType"] = workflowType,
		["initiatedEventId"] = initiatedEventId,
		["result"] = result,
		["workflowExecution"] = workflowExecution,
	}
	M.AssertChildWorkflowExecutionCompletedEventAttributes(t)
	return t
end

local RespondActivityTaskCompletedInput_keys = { "result" = true, "taskToken" = true, nil }

function M.AssertRespondActivityTaskCompletedInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RespondActivityTaskCompletedInput to be of type 'table'")
	assert(struct["taskToken"], "Expected key taskToken to exist in table")
	if struct["result"] then M.AssertData(struct["result"]) end
	if struct["taskToken"] then M.AssertTaskToken(struct["taskToken"]) end
	for k,_ in pairs(struct) do
		assert(RespondActivityTaskCompletedInput_keys[k], "RespondActivityTaskCompletedInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RespondActivityTaskCompletedInput
--  
-- @param result [Data] &lt;p&gt;The result of the activity task. It is a free form string that is implementation specific.&lt;/p&gt;
-- @param taskToken [TaskToken] &lt;p&gt;The &lt;code&gt;taskToken&lt;/code&gt; of the &lt;a&gt;ActivityTask&lt;/a&gt;.&lt;/p&gt; &lt;important&gt; &lt;code&gt;taskToken&lt;/code&gt; is generated by the service and should be treated as an opaque value. If the task is passed to another process, its &lt;code&gt;taskToken&lt;/code&gt; must also be passed. This enables it to provide its progress and respond with results.&lt;/important&gt;
-- Required parameter: taskToken
function M.RespondActivityTaskCompletedInput(result, taskToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RespondActivityTaskCompletedInput")
	local t = { 
		["result"] = result,
		["taskToken"] = taskToken,
	}
	M.AssertRespondActivityTaskCompletedInput(t)
	return t
end

local TimerCanceledEventAttributes_keys = { "startedEventId" = true, "timerId" = true, "decisionTaskCompletedEventId" = true, nil }

function M.AssertTimerCanceledEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimerCanceledEventAttributes to be of type 'table'")
	assert(struct["timerId"], "Expected key timerId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["startedEventId"] then M.AssertEventId(struct["startedEventId"]) end
	if struct["timerId"] then M.AssertTimerId(struct["timerId"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(TimerCanceledEventAttributes_keys[k], "TimerCanceledEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimerCanceledEventAttributes
-- &lt;p&gt; Provides details of the &lt;code&gt;TimerCanceled&lt;/code&gt; event. &lt;/p&gt;
-- @param startedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;TimerStarted&lt;/code&gt; event that was recorded when this timer was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param timerId [TimerId] &lt;p&gt; The unique ID of the timer that was canceled. &lt;/p&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;CancelTimer&lt;/code&gt; decision to cancel this timer. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- Required parameter: timerId
-- Required parameter: startedEventId
-- Required parameter: decisionTaskCompletedEventId
function M.TimerCanceledEventAttributes(startedEventId, timerId, decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimerCanceledEventAttributes")
	local t = { 
		["startedEventId"] = startedEventId,
		["timerId"] = timerId,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
	}
	M.AssertTimerCanceledEventAttributes(t)
	return t
end

local ActivityTaskCompletedEventAttributes_keys = { "startedEventId" = true, "scheduledEventId" = true, "result" = true, nil }

function M.AssertActivityTaskCompletedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTaskCompletedEventAttributes to be of type 'table'")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then M.AssertEventId(struct["startedEventId"]) end
	if struct["scheduledEventId"] then M.AssertEventId(struct["scheduledEventId"]) end
	if struct["result"] then M.AssertData(struct["result"]) end
	for k,_ in pairs(struct) do
		assert(ActivityTaskCompletedEventAttributes_keys[k], "ActivityTaskCompletedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTaskCompletedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;ActivityTaskCompleted&lt;/code&gt; event.&lt;/p&gt;
-- @param startedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;ActivityTaskStarted&lt;/code&gt; event recorded when this activity task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param scheduledEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;ActivityTaskScheduled&lt;/code&gt; event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param result [Data] &lt;p&gt;The results of the activity task (if any).&lt;/p&gt;
-- Required parameter: scheduledEventId
-- Required parameter: startedEventId
function M.ActivityTaskCompletedEventAttributes(startedEventId, scheduledEventId, result, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTaskCompletedEventAttributes")
	local t = { 
		["startedEventId"] = startedEventId,
		["scheduledEventId"] = scheduledEventId,
		["result"] = result,
	}
	M.AssertActivityTaskCompletedEventAttributes(t)
	return t
end

local ScheduleLambdaFunctionDecisionAttributes_keys = { "input" = true, "startToCloseTimeout" = true, "id" = true, "name" = true, nil }

function M.AssertScheduleLambdaFunctionDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ScheduleLambdaFunctionDecisionAttributes to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["input"] then M.AssertFunctionInput(struct["input"]) end
	if struct["startToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["startToCloseTimeout"]) end
	if struct["id"] then M.AssertFunctionId(struct["id"]) end
	if struct["name"] then M.AssertFunctionName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(ScheduleLambdaFunctionDecisionAttributes_keys[k], "ScheduleLambdaFunctionDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ScheduleLambdaFunctionDecisionAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;ScheduleLambdaFunction&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;&lt;b&gt;Access Control&lt;/b&gt;&lt;/p&gt; &lt;p&gt;You can use IAM policies to control this decision's access to Amazon SWF resources as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;Use a &lt;code&gt;Resource&lt;/code&gt; element with the domain name to limit the action to only specified domains.&lt;/li&gt; &lt;li&gt;Use an &lt;code&gt;Action&lt;/code&gt; element to allow or deny permission to call this action.&lt;/li&gt; &lt;li&gt;Constrain the following parameters by using a &lt;code&gt;Condition&lt;/code&gt; element with the appropriate keys. &lt;ul&gt; &lt;li&gt;&lt;code&gt;activityType.name&lt;/code&gt;: String constraint. The key is &lt;code&gt;swf:activityType.name&lt;/code&gt;.&lt;/li&gt; &lt;li&gt;&lt;code&gt;activityType.version&lt;/code&gt;: String constraint. The key is &lt;code&gt;swf:activityType.version&lt;/code&gt;.&lt;/li&gt; &lt;li&gt;&lt;code&gt;taskList&lt;/code&gt;: String constraint. The key is &lt;code&gt;swf:taskList.name&lt;/code&gt;.&lt;/li&gt; &lt;/ul&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's &lt;b&gt;cause&lt;/b&gt; parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/p&gt;
-- @param input [FunctionInput] &lt;p&gt;The input provided to the AWS Lambda function.&lt;/p&gt;
-- @param startToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;If set, specifies the maximum duration the function may take to execute.&lt;/p&gt;
-- @param id [FunctionId] &lt;p&gt;&lt;b&gt;Required.&lt;/b&gt; The SWF &lt;code&gt;id&lt;/code&gt; of the AWS Lambda task.&lt;/p&gt; &lt;p&gt;The specified string must not start or end with whitespace. It must not contain a &lt;code&gt;:&lt;/code&gt; (colon), &lt;code&gt;/&lt;/code&gt; (slash), &lt;code&gt;|&lt;/code&gt; (vertical bar), or any control characters (\u0000-\u001f | \u007f - \u009f). Also, it must not contain the literal string quotarnquot.&lt;/p&gt;
-- @param name [FunctionName] &lt;p&gt;&lt;b&gt;Required.&lt;/b&gt; The name of the AWS Lambda function to invoke.&lt;/p&gt;
-- Required parameter: id
-- Required parameter: name
function M.ScheduleLambdaFunctionDecisionAttributes(input, startToCloseTimeout, id, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ScheduleLambdaFunctionDecisionAttributes")
	local t = { 
		["input"] = input,
		["startToCloseTimeout"] = startToCloseTimeout,
		["id"] = id,
		["name"] = name,
	}
	M.AssertScheduleLambdaFunctionDecisionAttributes(t)
	return t
end

local ActivityTaskStartedEventAttributes_keys = { "scheduledEventId" = true, "identity" = true, nil }

function M.AssertActivityTaskStartedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ActivityTaskStartedEventAttributes to be of type 'table'")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	if struct["scheduledEventId"] then M.AssertEventId(struct["scheduledEventId"]) end
	if struct["identity"] then M.AssertIdentity(struct["identity"]) end
	for k,_ in pairs(struct) do
		assert(ActivityTaskStartedEventAttributes_keys[k], "ActivityTaskStartedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ActivityTaskStartedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;ActivityTaskStarted&lt;/code&gt; event.&lt;/p&gt;
-- @param scheduledEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;ActivityTaskScheduled&lt;/code&gt; event that was recorded when this activity task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param identity [Identity] &lt;p&gt;Identity of the worker that was assigned this task. This aids diagnostics when problems arise. The form of this identity is user defined.&lt;/p&gt;
-- Required parameter: scheduledEventId
function M.ActivityTaskStartedEventAttributes(scheduledEventId, identity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ActivityTaskStartedEventAttributes")
	local t = { 
		["scheduledEventId"] = scheduledEventId,
		["identity"] = identity,
	}
	M.AssertActivityTaskStartedEventAttributes(t)
	return t
end

local TagFilter_keys = { "tag" = true, nil }

function M.AssertTagFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagFilter to be of type 'table'")
	assert(struct["tag"], "Expected key tag to exist in table")
	if struct["tag"] then M.AssertTag(struct["tag"]) end
	for k,_ in pairs(struct) do
		assert(TagFilter_keys[k], "TagFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagFilter
-- &lt;p&gt;Used to filter the workflow executions in visibility APIs based on a tag.&lt;/p&gt;
-- @param tag [Tag] &lt;p&gt;&lt;b&gt;Required.&lt;/b&gt; Specifies the tag that must be associated with the execution for it to meet the filter criteria.&lt;/p&gt;
-- Required parameter: tag
function M.TagFilter(tag, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagFilter")
	local t = { 
		["tag"] = tag,
	}
	M.AssertTagFilter(t)
	return t
end

local WorkflowExecutionCount_keys = { "count" = true, "truncated" = true, nil }

function M.AssertWorkflowExecutionCount(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionCount to be of type 'table'")
	assert(struct["count"], "Expected key count to exist in table")
	if struct["count"] then M.AssertCount(struct["count"]) end
	if struct["truncated"] then M.AssertTruncated(struct["truncated"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowExecutionCount_keys[k], "WorkflowExecutionCount contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionCount
-- &lt;p&gt;Contains the count of workflow executions returned from &lt;a&gt;CountOpenWorkflowExecutions&lt;/a&gt; or &lt;a&gt;CountClosedWorkflowExecutions&lt;/a&gt;&lt;/p&gt;
-- @param count [Count] &lt;p&gt;The number of workflow executions.&lt;/p&gt;
-- @param truncated [Truncated] &lt;p&gt;If set to true, indicates that the actual count was more than the maximum supported by this API and the count returned is the truncated value.&lt;/p&gt;
-- Required parameter: count
function M.WorkflowExecutionCount(count, truncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionCount")
	local t = { 
		["count"] = count,
		["truncated"] = truncated,
	}
	M.AssertWorkflowExecutionCount(t)
	return t
end

local CountClosedWorkflowExecutionsInput_keys = { "domain" = true, "typeFilter" = true, "tagFilter" = true, "closeTimeFilter" = true, "closeStatusFilter" = true, "startTimeFilter" = true, "executionFilter" = true, nil }

function M.AssertCountClosedWorkflowExecutionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CountClosedWorkflowExecutionsInput to be of type 'table'")
	assert(struct["domain"], "Expected key domain to exist in table")
	if struct["domain"] then M.AssertDomainName(struct["domain"]) end
	if struct["typeFilter"] then M.AssertWorkflowTypeFilter(struct["typeFilter"]) end
	if struct["tagFilter"] then M.AssertTagFilter(struct["tagFilter"]) end
	if struct["closeTimeFilter"] then M.AssertExecutionTimeFilter(struct["closeTimeFilter"]) end
	if struct["closeStatusFilter"] then M.AssertCloseStatusFilter(struct["closeStatusFilter"]) end
	if struct["startTimeFilter"] then M.AssertExecutionTimeFilter(struct["startTimeFilter"]) end
	if struct["executionFilter"] then M.AssertWorkflowExecutionFilter(struct["executionFilter"]) end
	for k,_ in pairs(struct) do
		assert(CountClosedWorkflowExecutionsInput_keys[k], "CountClosedWorkflowExecutionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CountClosedWorkflowExecutionsInput
--  
-- @param domain [DomainName] &lt;p&gt;The name of the domain containing the workflow executions to count.&lt;/p&gt;
-- @param typeFilter [WorkflowTypeFilter] &lt;p&gt;If specified, indicates the type of the workflow executions to be counted.&lt;/p&gt; &lt;note&gt;&lt;code&gt;closeStatusFilter&lt;/code&gt;, &lt;code&gt;executionFilter&lt;/code&gt;, &lt;code&gt;typeFilter&lt;/code&gt; and &lt;code&gt;tagFilter&lt;/code&gt; are mutually exclusive. You can specify at most one of these in a request.&lt;/note&gt;
-- @param tagFilter [TagFilter] &lt;p&gt;If specified, only executions that have a tag that matches the filter are counted.&lt;/p&gt; &lt;note&gt;&lt;code&gt;closeStatusFilter&lt;/code&gt;, &lt;code&gt;executionFilter&lt;/code&gt;, &lt;code&gt;typeFilter&lt;/code&gt; and &lt;code&gt;tagFilter&lt;/code&gt; are mutually exclusive. You can specify at most one of these in a request.&lt;/note&gt;
-- @param closeTimeFilter [ExecutionTimeFilter] &lt;p&gt;If specified, only workflow executions that meet the close time criteria of the filter are counted.&lt;/p&gt; &lt;note&gt;&lt;code&gt;startTimeFilter&lt;/code&gt; and &lt;code&gt;closeTimeFilter&lt;/code&gt; are mutually exclusive. You must specify one of these in a request but not both.&lt;/note&gt;
-- @param closeStatusFilter [CloseStatusFilter] &lt;p&gt;If specified, only workflow executions that match this close status are counted. This filter has an affect only if &lt;code&gt;executionStatus&lt;/code&gt; is specified as &lt;code&gt;CLOSED&lt;/code&gt;.&lt;/p&gt; &lt;note&gt;&lt;code&gt;closeStatusFilter&lt;/code&gt;, &lt;code&gt;executionFilter&lt;/code&gt;, &lt;code&gt;typeFilter&lt;/code&gt; and &lt;code&gt;tagFilter&lt;/code&gt; are mutually exclusive. You can specify at most one of these in a request.&lt;/note&gt;
-- @param startTimeFilter [ExecutionTimeFilter] &lt;p&gt;If specified, only workflow executions that meet the start time criteria of the filter are counted.&lt;/p&gt; &lt;note&gt;&lt;code&gt;startTimeFilter&lt;/code&gt; and &lt;code&gt;closeTimeFilter&lt;/code&gt; are mutually exclusive. You must specify one of these in a request but not both.&lt;/note&gt;
-- @param executionFilter [WorkflowExecutionFilter] &lt;p&gt;If specified, only workflow executions matching the &lt;code&gt;WorkflowId&lt;/code&gt; in the filter are counted.&lt;/p&gt; &lt;note&gt;&lt;code&gt;closeStatusFilter&lt;/code&gt;, &lt;code&gt;executionFilter&lt;/code&gt;, &lt;code&gt;typeFilter&lt;/code&gt; and &lt;code&gt;tagFilter&lt;/code&gt; are mutually exclusive. You can specify at most one of these in a request.&lt;/note&gt;
-- Required parameter: domain
function M.CountClosedWorkflowExecutionsInput(domain, typeFilter, tagFilter, closeTimeFilter, closeStatusFilter, startTimeFilter, executionFilter, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CountClosedWorkflowExecutionsInput")
	local t = { 
		["domain"] = domain,
		["typeFilter"] = typeFilter,
		["tagFilter"] = tagFilter,
		["closeTimeFilter"] = closeTimeFilter,
		["closeStatusFilter"] = closeStatusFilter,
		["startTimeFilter"] = startTimeFilter,
		["executionFilter"] = executionFilter,
	}
	M.AssertCountClosedWorkflowExecutionsInput(t)
	return t
end

local WorkflowExecutionOpenCounts_keys = { "openTimers" = true, "openDecisionTasks" = true, "openLambdaFunctions" = true, "openActivityTasks" = true, "openChildWorkflowExecutions" = true, nil }

function M.AssertWorkflowExecutionOpenCounts(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionOpenCounts to be of type 'table'")
	assert(struct["openActivityTasks"], "Expected key openActivityTasks to exist in table")
	assert(struct["openDecisionTasks"], "Expected key openDecisionTasks to exist in table")
	assert(struct["openTimers"], "Expected key openTimers to exist in table")
	assert(struct["openChildWorkflowExecutions"], "Expected key openChildWorkflowExecutions to exist in table")
	if struct["openTimers"] then M.AssertCount(struct["openTimers"]) end
	if struct["openDecisionTasks"] then M.AssertOpenDecisionTasksCount(struct["openDecisionTasks"]) end
	if struct["openLambdaFunctions"] then M.AssertCount(struct["openLambdaFunctions"]) end
	if struct["openActivityTasks"] then M.AssertCount(struct["openActivityTasks"]) end
	if struct["openChildWorkflowExecutions"] then M.AssertCount(struct["openChildWorkflowExecutions"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowExecutionOpenCounts_keys[k], "WorkflowExecutionOpenCounts contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionOpenCounts
-- &lt;p&gt;Contains the counts of open tasks, child workflow executions and timers for a workflow execution.&lt;/p&gt;
-- @param openTimers [Count] &lt;p&gt;The count of timers started by this workflow execution that have not fired yet.&lt;/p&gt;
-- @param openDecisionTasks [OpenDecisionTasksCount] &lt;p&gt;The count of decision tasks whose status is OPEN. A workflow execution can have at most one open decision task.&lt;/p&gt;
-- @param openLambdaFunctions [Count] &lt;p&gt;The count of AWS Lambda functions that are currently executing.&lt;/p&gt;
-- @param openActivityTasks [Count] &lt;p&gt;The count of activity tasks whose status is OPEN.&lt;/p&gt;
-- @param openChildWorkflowExecutions [Count] &lt;p&gt;The count of child workflow executions whose status is OPEN.&lt;/p&gt;
-- Required parameter: openActivityTasks
-- Required parameter: openDecisionTasks
-- Required parameter: openTimers
-- Required parameter: openChildWorkflowExecutions
function M.WorkflowExecutionOpenCounts(openTimers, openDecisionTasks, openLambdaFunctions, openActivityTasks, openChildWorkflowExecutions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionOpenCounts")
	local t = { 
		["openTimers"] = openTimers,
		["openDecisionTasks"] = openDecisionTasks,
		["openLambdaFunctions"] = openLambdaFunctions,
		["openActivityTasks"] = openActivityTasks,
		["openChildWorkflowExecutions"] = openChildWorkflowExecutions,
	}
	M.AssertWorkflowExecutionOpenCounts(t)
	return t
end

local WorkflowExecutionCancelRequestedEventAttributes_keys = { "externalInitiatedEventId" = true, "cause" = true, "externalWorkflowExecution" = true, nil }

function M.AssertWorkflowExecutionCancelRequestedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionCancelRequestedEventAttributes to be of type 'table'")
	if struct["externalInitiatedEventId"] then M.AssertEventId(struct["externalInitiatedEventId"]) end
	if struct["cause"] then M.AssertWorkflowExecutionCancelRequestedCause(struct["cause"]) end
	if struct["externalWorkflowExecution"] then M.AssertWorkflowExecution(struct["externalWorkflowExecution"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowExecutionCancelRequestedEventAttributes_keys[k], "WorkflowExecutionCancelRequestedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionCancelRequestedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;WorkflowExecutionCancelRequested&lt;/code&gt; event.&lt;/p&gt;
-- @param externalInitiatedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;RequestCancelExternalWorkflowExecutionInitiated&lt;/code&gt; event corresponding to the &lt;code&gt;RequestCancelExternalWorkflowExecution&lt;/code&gt; decision to cancel this workflow execution.The source event with this ID can be found in the history of the source workflow execution. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param cause [WorkflowExecutionCancelRequestedCause] &lt;p&gt;If set, indicates that the request to cancel the workflow execution was automatically generated, and specifies the cause. This happens if the parent workflow execution times out or is terminated, and the child policy is set to cancel child executions.&lt;/p&gt;
-- @param externalWorkflowExecution [WorkflowExecution] &lt;p&gt;The external workflow execution for which the cancellation was requested.&lt;/p&gt;
function M.WorkflowExecutionCancelRequestedEventAttributes(externalInitiatedEventId, cause, externalWorkflowExecution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionCancelRequestedEventAttributes")
	local t = { 
		["externalInitiatedEventId"] = externalInitiatedEventId,
		["cause"] = cause,
		["externalWorkflowExecution"] = externalWorkflowExecution,
	}
	M.AssertWorkflowExecutionCancelRequestedEventAttributes(t)
	return t
end

local StartTimerFailedEventAttributes_keys = { "timerId" = true, "cause" = true, "decisionTaskCompletedEventId" = true, nil }

function M.AssertStartTimerFailedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartTimerFailedEventAttributes to be of type 'table'")
	assert(struct["timerId"], "Expected key timerId to exist in table")
	assert(struct["cause"], "Expected key cause to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["timerId"] then M.AssertTimerId(struct["timerId"]) end
	if struct["cause"] then M.AssertStartTimerFailedCause(struct["cause"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	for k,_ in pairs(struct) do
		assert(StartTimerFailedEventAttributes_keys[k], "StartTimerFailedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartTimerFailedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;StartTimerFailed&lt;/code&gt; event.&lt;/p&gt;
-- @param timerId [TimerId] &lt;p&gt;The timerId provided in the &lt;code&gt;StartTimer&lt;/code&gt; decision that failed.&lt;/p&gt;
-- @param cause [StartTimerFailedCause] &lt;p&gt;The cause of the failure. This information is generated by the system and can be useful for diagnostic purposes.&lt;/p&gt; &lt;note&gt;If &lt;b&gt;cause&lt;/b&gt; is set to OPERATION_NOT_PERMITTED, the decision failed because it lacked sufficient permissions. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/note&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event corresponding to the decision task that resulted in the &lt;code&gt;StartTimer&lt;/code&gt; decision for this activity task. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- Required parameter: timerId
-- Required parameter: cause
-- Required parameter: decisionTaskCompletedEventId
function M.StartTimerFailedEventAttributes(timerId, cause, decisionTaskCompletedEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartTimerFailedEventAttributes")
	local t = { 
		["timerId"] = timerId,
		["cause"] = cause,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
	}
	M.AssertStartTimerFailedEventAttributes(t)
	return t
end

local WorkflowExecutionAlreadyStartedFault_keys = { "message" = true, nil }

function M.AssertWorkflowExecutionAlreadyStartedFault(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected WorkflowExecutionAlreadyStartedFault to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(WorkflowExecutionAlreadyStartedFault_keys[k], "WorkflowExecutionAlreadyStartedFault contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type WorkflowExecutionAlreadyStartedFault
-- &lt;p&gt;Returned by &lt;a&gt;StartWorkflowExecution&lt;/a&gt; when an open execution with the same workflowId is already running in the specified domain.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;A description that may help with diagnosing the cause of the fault.&lt;/p&gt;
function M.WorkflowExecutionAlreadyStartedFault(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating WorkflowExecutionAlreadyStartedFault")
	local t = { 
		["message"] = message,
	}
	M.AssertWorkflowExecutionAlreadyStartedFault(t)
	return t
end

local CompleteWorkflowExecutionDecisionAttributes_keys = { "result" = true, nil }

function M.AssertCompleteWorkflowExecutionDecisionAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CompleteWorkflowExecutionDecisionAttributes to be of type 'table'")
	if struct["result"] then M.AssertData(struct["result"]) end
	for k,_ in pairs(struct) do
		assert(CompleteWorkflowExecutionDecisionAttributes_keys[k], "CompleteWorkflowExecutionDecisionAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CompleteWorkflowExecutionDecisionAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;CompleteWorkflowExecution&lt;/code&gt; decision.&lt;/p&gt; &lt;p&gt;&lt;b&gt;Access Control&lt;/b&gt;&lt;/p&gt; &lt;p&gt;You can use IAM policies to control this decision's access to Amazon SWF resources as follows:&lt;/p&gt; &lt;ul&gt; &lt;li&gt;Use a &lt;code&gt;Resource&lt;/code&gt; element with the domain name to limit the action to only specified domains.&lt;/li&gt; &lt;li&gt;Use an &lt;code&gt;Action&lt;/code&gt; element to allow or deny permission to call this action.&lt;/li&gt; &lt;li&gt;You cannot use an IAM policy to constrain this action's parameters.&lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If the caller does not have sufficient permissions to invoke the action, or the parameter values fall outside the specified constraints, the action fails. The associated event attribute's &lt;b&gt;cause&lt;/b&gt; parameter will be set to OPERATION_NOT_PERMITTED. For details and example IAM policies, see &lt;a href=&quot;http://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html&quot;&gt;Using IAM to Manage Access to Amazon SWF Workflows&lt;/a&gt;.&lt;/p&gt;
-- @param result [Data] &lt;p&gt;The result of the workflow execution. The form of the result is implementation defined.&lt;/p&gt;
function M.CompleteWorkflowExecutionDecisionAttributes(result, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CompleteWorkflowExecutionDecisionAttributes")
	local t = { 
		["result"] = result,
	}
	M.AssertCompleteWorkflowExecutionDecisionAttributes(t)
	return t
end

local LambdaFunctionScheduledEventAttributes_keys = { "input" = true, "startToCloseTimeout" = true, "decisionTaskCompletedEventId" = true, "id" = true, "name" = true, nil }

function M.AssertLambdaFunctionScheduledEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaFunctionScheduledEventAttributes to be of type 'table'")
	assert(struct["id"], "Expected key id to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["decisionTaskCompletedEventId"], "Expected key decisionTaskCompletedEventId to exist in table")
	if struct["input"] then M.AssertFunctionInput(struct["input"]) end
	if struct["startToCloseTimeout"] then M.AssertDurationInSecondsOptional(struct["startToCloseTimeout"]) end
	if struct["decisionTaskCompletedEventId"] then M.AssertEventId(struct["decisionTaskCompletedEventId"]) end
	if struct["id"] then M.AssertFunctionId(struct["id"]) end
	if struct["name"] then M.AssertFunctionName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(LambdaFunctionScheduledEventAttributes_keys[k], "LambdaFunctionScheduledEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaFunctionScheduledEventAttributes
-- &lt;p&gt;Provides details for the &lt;code&gt;LambdaFunctionScheduled&lt;/code&gt; event.&lt;/p&gt;
-- @param input [FunctionInput] &lt;p&gt;Input provided to the AWS Lambda function.&lt;/p&gt;
-- @param startToCloseTimeout [DurationInSecondsOptional] &lt;p&gt;The maximum time, in seconds, that the AWS Lambda function can take to execute from start to close before it is marked as failed.&lt;/p&gt;
-- @param decisionTaskCompletedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event for the decision that resulted in the scheduling of this AWS Lambda function. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param id [FunctionId] &lt;p&gt;The unique Amazon SWF ID for the AWS Lambda task.&lt;/p&gt;
-- @param name [FunctionName] &lt;p&gt;The name of the scheduled AWS Lambda function.&lt;/p&gt;
-- Required parameter: id
-- Required parameter: name
-- Required parameter: decisionTaskCompletedEventId
function M.LambdaFunctionScheduledEventAttributes(input, startToCloseTimeout, decisionTaskCompletedEventId, id, name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LambdaFunctionScheduledEventAttributes")
	local t = { 
		["input"] = input,
		["startToCloseTimeout"] = startToCloseTimeout,
		["decisionTaskCompletedEventId"] = decisionTaskCompletedEventId,
		["id"] = id,
		["name"] = name,
	}
	M.AssertLambdaFunctionScheduledEventAttributes(t)
	return t
end

local DecisionTaskCompletedEventAttributes_keys = { "startedEventId" = true, "executionContext" = true, "scheduledEventId" = true, nil }

function M.AssertDecisionTaskCompletedEventAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DecisionTaskCompletedEventAttributes to be of type 'table'")
	assert(struct["scheduledEventId"], "Expected key scheduledEventId to exist in table")
	assert(struct["startedEventId"], "Expected key startedEventId to exist in table")
	if struct["startedEventId"] then M.AssertEventId(struct["startedEventId"]) end
	if struct["executionContext"] then M.AssertData(struct["executionContext"]) end
	if struct["scheduledEventId"] then M.AssertEventId(struct["scheduledEventId"]) end
	for k,_ in pairs(struct) do
		assert(DecisionTaskCompletedEventAttributes_keys[k], "DecisionTaskCompletedEventAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DecisionTaskCompletedEventAttributes
-- &lt;p&gt;Provides details of the &lt;code&gt;DecisionTaskCompleted&lt;/code&gt; event.&lt;/p&gt;
-- @param startedEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskStarted&lt;/code&gt; event recorded when this decision task was started. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- @param executionContext [Data] &lt;p&gt;User defined context for the workflow execution.&lt;/p&gt;
-- @param scheduledEventId [EventId] &lt;p&gt;The ID of the &lt;code&gt;DecisionTaskScheduled&lt;/code&gt; event that was recorded when this decision task was scheduled. This information can be useful for diagnosing problems by tracing back the chain of events leading up to this event.&lt;/p&gt;
-- Required parameter: scheduledEventId
-- Required parameter: startedEventId
function M.DecisionTaskCompletedEventAttributes(startedEventId, executionContext, scheduledEventId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DecisionTaskCompletedEventAttributes")
	local t = { 
		["startedEventId"] = startedEventId,
		["executionContext"] = executionContext,
		["scheduledEventId"] = scheduledEventId,
	}
	M.AssertDecisionTaskCompletedEventAttributes(t)
	return t
end

function M.AssertStartChildWorkflowExecutionFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected StartChildWorkflowExecutionFailedCause to be of type 'string'")
end

--  
function M.StartChildWorkflowExecutionFailedCause(str)
	M.AssertStartChildWorkflowExecutionFailedCause(str)
	return str
end

function M.AssertFunctionInput(str)
	assert(str)
	assert(type(str) == "string", "Expected FunctionInput to be of type 'string'")
	assert(#str <= 32768, "Expected string to be max 32768 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.FunctionInput(str)
	M.AssertFunctionInput(str)
	return str
end

function M.AssertTimerId(str)
	assert(str)
	assert(type(str) == "string", "Expected TimerId to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TimerId(str)
	M.AssertTimerId(str)
	return str
end

function M.AssertFunctionName(str)
	assert(str)
	assert(type(str) == "string", "Expected FunctionName to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.FunctionName(str)
	M.AssertFunctionName(str)
	return str
end

function M.AssertTerminateReason(str)
	assert(str)
	assert(type(str) == "string", "Expected TerminateReason to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TerminateReason(str)
	M.AssertTerminateReason(str)
	return str
end

function M.AssertPageToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PageToken to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.PageToken(str)
	M.AssertPageToken(str)
	return str
end

function M.AssertActivityId(str)
	assert(str)
	assert(type(str) == "string", "Expected ActivityId to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ActivityId(str)
	M.AssertActivityId(str)
	return str
end

function M.AssertRequestCancelActivityTaskFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected RequestCancelActivityTaskFailedCause to be of type 'string'")
end

--  
function M.RequestCancelActivityTaskFailedCause(str)
	M.AssertRequestCancelActivityTaskFailedCause(str)
	return str
end

function M.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
	assert(#str <= 1224, "Expected string to be max 1224 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Arn(str)
	M.AssertArn(str)
	return str
end

function M.AssertDomainName(str)
	assert(str)
	assert(type(str) == "string", "Expected DomainName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DomainName(str)
	M.AssertDomainName(str)
	return str
end

function M.AssertStartLambdaFunctionFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected StartLambdaFunctionFailedCause to be of type 'string'")
end

--  
function M.StartLambdaFunctionFailedCause(str)
	M.AssertStartLambdaFunctionFailedCause(str)
	return str
end

function M.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Version(str)
	M.AssertVersion(str)
	return str
end

function M.AssertRunId(str)
	assert(str)
	assert(type(str) == "string", "Expected RunId to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RunId(str)
	M.AssertRunId(str)
	return str
end

function M.AssertLimitedData(str)
	assert(str)
	assert(type(str) == "string", "Expected LimitedData to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.LimitedData(str)
	M.AssertLimitedData(str)
	return str
end

function M.AssertFailureReason(str)
	assert(str)
	assert(type(str) == "string", "Expected FailureReason to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.FailureReason(str)
	M.AssertFailureReason(str)
	return str
end

function M.AssertStartTimerFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected StartTimerFailedCause to be of type 'string'")
end

--  
function M.StartTimerFailedCause(str)
	M.AssertStartTimerFailedCause(str)
	return str
end

function M.AssertDurationInSeconds(str)
	assert(str)
	assert(type(str) == "string", "Expected DurationInSeconds to be of type 'string'")
	assert(#str <= 8, "Expected string to be max 8 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DurationInSeconds(str)
	M.AssertDurationInSeconds(str)
	return str
end

function M.AssertRecordMarkerFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected RecordMarkerFailedCause to be of type 'string'")
end

--  
function M.RecordMarkerFailedCause(str)
	M.AssertRecordMarkerFailedCause(str)
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

function M.AssertDurationInDays(str)
	assert(str)
	assert(type(str) == "string", "Expected DurationInDays to be of type 'string'")
	assert(#str <= 8, "Expected string to be max 8 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DurationInDays(str)
	M.AssertDurationInDays(str)
	return str
end

function M.AssertCauseMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected CauseMessage to be of type 'string'")
	assert(#str <= 1728, "Expected string to be max 1728 characters")
end

--  
function M.CauseMessage(str)
	M.AssertCauseMessage(str)
	return str
end

function M.AssertVersionOptional(str)
	assert(str)
	assert(type(str) == "string", "Expected VersionOptional to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.VersionOptional(str)
	M.AssertVersionOptional(str)
	return str
end

function M.AssertRequestCancelExternalWorkflowExecutionFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected RequestCancelExternalWorkflowExecutionFailedCause to be of type 'string'")
end

--  
function M.RequestCancelExternalWorkflowExecutionFailedCause(str)
	M.AssertRequestCancelExternalWorkflowExecutionFailedCause(str)
	return str
end

function M.AssertActivityTaskTimeoutType(str)
	assert(str)
	assert(type(str) == "string", "Expected ActivityTaskTimeoutType to be of type 'string'")
end

--  
function M.ActivityTaskTimeoutType(str)
	M.AssertActivityTaskTimeoutType(str)
	return str
end

function M.AssertChildPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected ChildPolicy to be of type 'string'")
end

--  
function M.ChildPolicy(str)
	M.AssertChildPolicy(str)
	return str
end

function M.AssertLambdaFunctionTimeoutType(str)
	assert(str)
	assert(type(str) == "string", "Expected LambdaFunctionTimeoutType to be of type 'string'")
end

--  
function M.LambdaFunctionTimeoutType(str)
	M.AssertLambdaFunctionTimeoutType(str)
	return str
end

function M.AssertEventType(str)
	assert(str)
	assert(type(str) == "string", "Expected EventType to be of type 'string'")
end

--  
function M.EventType(str)
	M.AssertEventType(str)
	return str
end

function M.AssertScheduleLambdaFunctionFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected ScheduleLambdaFunctionFailedCause to be of type 'string'")
end

--  
function M.ScheduleLambdaFunctionFailedCause(str)
	M.AssertScheduleLambdaFunctionFailedCause(str)
	return str
end

function M.AssertCloseStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected CloseStatus to be of type 'string'")
end

--  
function M.CloseStatus(str)
	M.AssertCloseStatus(str)
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

function M.AssertTaskPriority(str)
	assert(str)
	assert(type(str) == "string", "Expected TaskPriority to be of type 'string'")
	assert(#str <= 11, "Expected string to be max 11 characters")
end

--  
function M.TaskPriority(str)
	M.AssertTaskPriority(str)
	return str
end

function M.AssertCompleteWorkflowExecutionFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected CompleteWorkflowExecutionFailedCause to be of type 'string'")
end

--  
function M.CompleteWorkflowExecutionFailedCause(str)
	M.AssertCompleteWorkflowExecutionFailedCause(str)
	return str
end

function M.AssertScheduleActivityTaskFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected ScheduleActivityTaskFailedCause to be of type 'string'")
end

--  
function M.ScheduleActivityTaskFailedCause(str)
	M.AssertScheduleActivityTaskFailedCause(str)
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

function M.AssertMarkerName(str)
	assert(str)
	assert(type(str) == "string", "Expected MarkerName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MarkerName(str)
	M.AssertMarkerName(str)
	return str
end

function M.AssertWorkflowId(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkflowId to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.WorkflowId(str)
	M.AssertWorkflowId(str)
	return str
end

function M.AssertDurationInSecondsOptional(str)
	assert(str)
	assert(type(str) == "string", "Expected DurationInSecondsOptional to be of type 'string'")
	assert(#str <= 8, "Expected string to be max 8 characters")
end

--  
function M.DurationInSecondsOptional(str)
	M.AssertDurationInSecondsOptional(str)
	return str
end

function M.AssertRunIdOptional(str)
	assert(str)
	assert(type(str) == "string", "Expected RunIdOptional to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
end

--  
function M.RunIdOptional(str)
	M.AssertRunIdOptional(str)
	return str
end

function M.AssertWorkflowExecutionCancelRequestedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkflowExecutionCancelRequestedCause to be of type 'string'")
end

--  
function M.WorkflowExecutionCancelRequestedCause(str)
	M.AssertWorkflowExecutionCancelRequestedCause(str)
	return str
end

function M.AssertWorkflowExecutionTimeoutType(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkflowExecutionTimeoutType to be of type 'string'")
end

--  
function M.WorkflowExecutionTimeoutType(str)
	M.AssertWorkflowExecutionTimeoutType(str)
	return str
end

function M.AssertFailWorkflowExecutionFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected FailWorkflowExecutionFailedCause to be of type 'string'")
end

--  
function M.FailWorkflowExecutionFailedCause(str)
	M.AssertFailWorkflowExecutionFailedCause(str)
	return str
end

function M.AssertDecisionTaskTimeoutType(str)
	assert(str)
	assert(type(str) == "string", "Expected DecisionTaskTimeoutType to be of type 'string'")
end

--  
function M.DecisionTaskTimeoutType(str)
	M.AssertDecisionTaskTimeoutType(str)
	return str
end

function M.AssertCancelWorkflowExecutionFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected CancelWorkflowExecutionFailedCause to be of type 'string'")
end

--  
function M.CancelWorkflowExecutionFailedCause(str)
	M.AssertCancelWorkflowExecutionFailedCause(str)
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

function M.AssertDescription(str)
	assert(str)
	assert(type(str) == "string", "Expected Description to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.Description(str)
	M.AssertDescription(str)
	return str
end

function M.AssertSignalExternalWorkflowExecutionFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected SignalExternalWorkflowExecutionFailedCause to be of type 'string'")
end

--  
function M.SignalExternalWorkflowExecutionFailedCause(str)
	M.AssertSignalExternalWorkflowExecutionFailedCause(str)
	return str
end

function M.AssertSignalName(str)
	assert(str)
	assert(type(str) == "string", "Expected SignalName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SignalName(str)
	M.AssertSignalName(str)
	return str
end

function M.AssertWorkflowExecutionTerminatedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected WorkflowExecutionTerminatedCause to be of type 'string'")
end

--  
function M.WorkflowExecutionTerminatedCause(str)
	M.AssertWorkflowExecutionTerminatedCause(str)
	return str
end

function M.AssertTag(str)
	assert(str)
	assert(type(str) == "string", "Expected Tag to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Tag(str)
	M.AssertTag(str)
	return str
end

function M.AssertName(str)
	assert(str)
	assert(type(str) == "string", "Expected Name to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Name(str)
	M.AssertName(str)
	return str
end

function M.AssertFunctionId(str)
	assert(str)
	assert(type(str) == "string", "Expected FunctionId to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.FunctionId(str)
	M.AssertFunctionId(str)
	return str
end

function M.AssertRegistrationStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected RegistrationStatus to be of type 'string'")
end

--  
function M.RegistrationStatus(str)
	M.AssertRegistrationStatus(str)
	return str
end

function M.AssertCancelTimerFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected CancelTimerFailedCause to be of type 'string'")
end

--  
function M.CancelTimerFailedCause(str)
	M.AssertCancelTimerFailedCause(str)
	return str
end

function M.AssertContinueAsNewWorkflowExecutionFailedCause(str)
	assert(str)
	assert(type(str) == "string", "Expected ContinueAsNewWorkflowExecutionFailedCause to be of type 'string'")
end

--  
function M.ContinueAsNewWorkflowExecutionFailedCause(str)
	M.AssertContinueAsNewWorkflowExecutionFailedCause(str)
	return str
end

function M.AssertDecisionType(str)
	assert(str)
	assert(type(str) == "string", "Expected DecisionType to be of type 'string'")
end

--  
function M.DecisionType(str)
	M.AssertDecisionType(str)
	return str
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

function M.AssertOpenDecisionTasksCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected OpenDecisionTasksCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1, "Expected integer to be max 1")
end

function M.OpenDecisionTasksCount(integer)
	M.AssertOpenDecisionTasksCount(integer)
	return integer
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

function M.AssertCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Count to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Count(integer)
	M.AssertCount(integer)
	return integer
end

function M.AssertCanceled(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Canceled to be of type 'boolean'")
end

function M.Canceled(boolean)
	M.AssertCanceled(boolean)
	return boolean
end

function M.AssertTruncated(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Truncated to be of type 'boolean'")
end

function M.Truncated(boolean)
	M.AssertTruncated(boolean)
	return boolean
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

function M.AssertDomainInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected DomainInfoList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDomainInfo(v)
	end
end

--  
-- List of DomainInfo objects
function M.DomainInfoList(list)
	M.AssertDomainInfoList(list)
	return list
end

function M.AssertWorkflowTypeInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected WorkflowTypeInfoList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertWorkflowTypeInfo(v)
	end
end

--  
-- List of WorkflowTypeInfo objects
function M.WorkflowTypeInfoList(list)
	M.AssertWorkflowTypeInfoList(list)
	return list
end

function M.AssertWorkflowExecutionInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected WorkflowExecutionInfoList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertWorkflowExecutionInfo(v)
	end
end

--  
-- List of WorkflowExecutionInfo objects
function M.WorkflowExecutionInfoList(list)
	M.AssertWorkflowExecutionInfoList(list)
	return list
end

function M.AssertActivityTypeInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected ActivityTypeInfoList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertActivityTypeInfo(v)
	end
end

--  
-- List of ActivityTypeInfo objects
function M.ActivityTypeInfoList(list)
	M.AssertActivityTypeInfoList(list)
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

function M.AssertDecisionList(list)
	assert(list)
	assert(type(list) == "table", "Expected DecisionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDecision(v)
	end
end

--  
-- List of Decision objects
function M.DecisionList(list)
	M.AssertDecisionList(list)
	return list
end

function M.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.TagList(list)
	M.AssertTagList(list)
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
--- SignalWorkflowExecution
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

--- DescribeWorkflowExecution
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

--- GetWorkflowExecutionHistory
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

--- CountOpenWorkflowExecutions
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

--- RespondActivityTaskFailed
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

--- PollForActivityTask
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

--- ListDomains
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

--- StartWorkflowExecution
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

--- RespondDecisionTaskCompleted
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

--- RegisterActivityType
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

--- RequestCancelWorkflowExecution
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

--- ListActivityTypes
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

--- PollForDecisionTask
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

--- ListOpenWorkflowExecutions
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

--- CountClosedWorkflowExecutions
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

--- RegisterWorkflowType
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

--- DescribeDomain
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

--- ListClosedWorkflowExecutions
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

--- TerminateWorkflowExecution
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

--- DeprecateWorkflowType
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

--- DescribeActivityType
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

--- CountPendingDecisionTasks
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

--- ListWorkflowTypes
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

--- DeprecateDomain
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

--- RespondActivityTaskCanceled
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

--- DescribeWorkflowType
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

--- RegisterDomain
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

--- RecordActivityTaskHeartbeat
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

--- CountPendingActivityTasks
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

--- DeprecateActivityType
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

--- RespondActivityTaskCompleted
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


return M
