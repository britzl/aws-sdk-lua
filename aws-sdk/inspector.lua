--- GENERATED CODE - DO NOT MODIFY
-- Amazon Inspector (inspector-2016-02-16)

local M = {}

M.metadata = {
	api_version = "2016-02-16",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "inspector",
	service_abbreviation = "",
	service_full_name = "Amazon Inspector",
	signature_version = "v4",
	target_prefix = "InspectorService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "inspector-2016-02-16",
}

local keys = {}
local asserts = {}

keys.AssessmentRunFilter = { ["startTimeRange"] = true, ["durationRange"] = true, ["rulesPackageArns"] = true, ["states"] = true, ["namePattern"] = true, ["completionTimeRange"] = true, ["stateChangeTimeRange"] = true, nil }

function asserts.AssertAssessmentRunFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssessmentRunFilter to be of type 'table'")
	if struct["startTimeRange"] then asserts.AssertTimestampRange(struct["startTimeRange"]) end
	if struct["durationRange"] then asserts.AssertDurationRange(struct["durationRange"]) end
	if struct["rulesPackageArns"] then asserts.AssertFilterRulesPackageArnList(struct["rulesPackageArns"]) end
	if struct["states"] then asserts.AssertAssessmentRunStateList(struct["states"]) end
	if struct["namePattern"] then asserts.AssertNamePattern(struct["namePattern"]) end
	if struct["completionTimeRange"] then asserts.AssertTimestampRange(struct["completionTimeRange"]) end
	if struct["stateChangeTimeRange"] then asserts.AssertTimestampRange(struct["stateChangeTimeRange"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssessmentRunFilter[k], "AssessmentRunFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssessmentRunFilter
-- <p>Used as the request parameter in the <a>ListAssessmentRuns</a> action.</p>
-- @param _startTimeRange [TimestampRange] <p>For a record to match a filter, the value that is specified for this data type property must inclusively match any value between the specified minimum and maximum values of the <b>startTime</b> property of the <a>AssessmentRun</a> data type.</p>
-- @param _durationRange [DurationRange] <p>For a record to match a filter, the value that is specified for this data type property must inclusively match any value between the specified minimum and maximum values of the <b>durationInSeconds</b> property of the <a>AssessmentRun</a> data type.</p>
-- @param _rulesPackageArns [FilterRulesPackageArnList] <p>For a record to match a filter, the value that is specified for this data type property must be contained in the list of values of the <b>rulesPackages</b> property of the <a>AssessmentRun</a> data type.</p>
-- @param _states [AssessmentRunStateList] <p>For a record to match a filter, one of the values specified for this data type property must be the exact match of the value of the <b>assessmentRunState</b> property of the <a>AssessmentRun</a> data type.</p>
-- @param _namePattern [NamePattern] <p>For a record to match a filter, an explicit value or a string containing a wildcard that is specified for this data type property must match the value of the <b>assessmentRunName</b> property of the <a>AssessmentRun</a> data type.</p>
-- @param _completionTimeRange [TimestampRange] <p>For a record to match a filter, the value that is specified for this data type property must inclusively match any value between the specified minimum and maximum values of the <b>completedAt</b> property of the <a>AssessmentRun</a> data type.</p>
-- @param _stateChangeTimeRange [TimestampRange] <p>For a record to match a filter, the value that is specified for this data type property must match the <b>stateChangedAt</b> property of the <a>AssessmentRun</a> data type.</p>
function M.AssessmentRunFilter(_startTimeRange, _durationRange, _rulesPackageArns, _states, _namePattern, _completionTimeRange, _stateChangeTimeRange, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssessmentRunFilter")
	local t = { 
		["startTimeRange"] = _startTimeRange,
		["durationRange"] = _durationRange,
		["rulesPackageArns"] = _rulesPackageArns,
		["states"] = _states,
		["namePattern"] = _namePattern,
		["completionTimeRange"] = _completionTimeRange,
		["stateChangeTimeRange"] = _stateChangeTimeRange,
	}
	asserts.AssertAssessmentRunFilter(t)
	return t
end

keys.TelemetryMetadata = { ["count"] = true, ["dataSize"] = true, ["messageType"] = true, nil }

function asserts.AssertTelemetryMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TelemetryMetadata to be of type 'table'")
	assert(struct["messageType"], "Expected key messageType to exist in table")
	assert(struct["count"], "Expected key count to exist in table")
	if struct["count"] then asserts.AssertLong(struct["count"]) end
	if struct["dataSize"] then asserts.AssertLong(struct["dataSize"]) end
	if struct["messageType"] then asserts.AssertMessageType(struct["messageType"]) end
	for k,_ in pairs(struct) do
		assert(keys.TelemetryMetadata[k], "TelemetryMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TelemetryMetadata
-- <p>The metadata about the Amazon Inspector application data metrics collected by the agent. This data type is used as the response element in the <a>GetTelemetryMetadata</a> action.</p>
-- @param _count [Long] <p>The count of messages that the agent sends to the Amazon Inspector service.</p>
-- @param _dataSize [Long] <p>The data size of messages that the agent sends to the Amazon Inspector service.</p>
-- @param _messageType [MessageType] <p>A specific type of behavioral data that is collected by the agent.</p>
-- Required parameter: messageType
-- Required parameter: count
function M.TelemetryMetadata(_count, _dataSize, _messageType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TelemetryMetadata")
	local t = { 
		["count"] = _count,
		["dataSize"] = _dataSize,
		["messageType"] = _messageType,
	}
	asserts.AssertTelemetryMetadata(t)
	return t
end

keys.AgentsAlreadyRunningAssessmentException = { ["canRetry"] = true, ["message"] = true, ["agents"] = true, ["agentsTruncated"] = true, nil }

function asserts.AssertAgentsAlreadyRunningAssessmentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AgentsAlreadyRunningAssessmentException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	assert(struct["agents"], "Expected key agents to exist in table")
	assert(struct["agentsTruncated"], "Expected key agentsTruncated to exist in table")
	assert(struct["canRetry"], "Expected key canRetry to exist in table")
	if struct["canRetry"] then asserts.AssertBool(struct["canRetry"]) end
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	if struct["agents"] then asserts.AssertAgentAlreadyRunningAssessmentList(struct["agents"]) end
	if struct["agentsTruncated"] then asserts.AssertBool(struct["agentsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(keys.AgentsAlreadyRunningAssessmentException[k], "AgentsAlreadyRunningAssessmentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AgentsAlreadyRunningAssessmentException
-- <p>You started an assessment run, but one of the instances is already participating in another assessment run.</p>
-- @param _canRetry [Bool] <p>You can immediately retry your request.</p>
-- @param _message [ErrorMessage] <p>Details of the exception error.</p>
-- @param _agents [AgentAlreadyRunningAssessmentList] <p/>
-- @param _agentsTruncated [Bool] <p/>
-- Required parameter: message
-- Required parameter: agents
-- Required parameter: agentsTruncated
-- Required parameter: canRetry
function M.AgentsAlreadyRunningAssessmentException(_canRetry, _message, _agents, _agentsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AgentsAlreadyRunningAssessmentException")
	local t = { 
		["canRetry"] = _canRetry,
		["message"] = _message,
		["agents"] = _agents,
		["agentsTruncated"] = _agentsTruncated,
	}
	asserts.AssertAgentsAlreadyRunningAssessmentException(t)
	return t
end

keys.FailedItemDetails = { ["retryable"] = true, ["failureCode"] = true, nil }

function asserts.AssertFailedItemDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailedItemDetails to be of type 'table'")
	assert(struct["failureCode"], "Expected key failureCode to exist in table")
	assert(struct["retryable"], "Expected key retryable to exist in table")
	if struct["retryable"] then asserts.AssertBool(struct["retryable"]) end
	if struct["failureCode"] then asserts.AssertFailedItemErrorCode(struct["failureCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.FailedItemDetails[k], "FailedItemDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailedItemDetails
-- <p>Includes details about the failed items.</p>
-- @param _retryable [Bool] <p>Indicates whether you can immediately retry a request for this item for a specified resource.</p>
-- @param _failureCode [FailedItemErrorCode] <p>The status code of a failed item.</p>
-- Required parameter: failureCode
-- Required parameter: retryable
function M.FailedItemDetails(_retryable, _failureCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FailedItemDetails")
	local t = { 
		["retryable"] = _retryable,
		["failureCode"] = _failureCode,
	}
	asserts.AssertFailedItemDetails(t)
	return t
end

keys.PreviewAgentsResponse = { ["nextToken"] = true, ["agentPreviews"] = true, nil }

function asserts.AssertPreviewAgentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PreviewAgentsResponse to be of type 'table'")
	assert(struct["agentPreviews"], "Expected key agentPreviews to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["agentPreviews"] then asserts.AssertAgentPreviewList(struct["agentPreviews"]) end
	for k,_ in pairs(struct) do
		assert(keys.PreviewAgentsResponse[k], "PreviewAgentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PreviewAgentsResponse
--  
-- @param _nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- @param _agentPreviews [AgentPreviewList] <p>The resulting list of agents.</p>
-- Required parameter: agentPreviews
function M.PreviewAgentsResponse(_nextToken, _agentPreviews, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PreviewAgentsResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["agentPreviews"] = _agentPreviews,
	}
	asserts.AssertPreviewAgentsResponse(t)
	return t
end

keys.GetAssessmentReportRequest = { ["assessmentRunArn"] = true, ["reportType"] = true, ["reportFileFormat"] = true, nil }

function asserts.AssertGetAssessmentReportRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAssessmentReportRequest to be of type 'table'")
	assert(struct["assessmentRunArn"], "Expected key assessmentRunArn to exist in table")
	assert(struct["reportFileFormat"], "Expected key reportFileFormat to exist in table")
	assert(struct["reportType"], "Expected key reportType to exist in table")
	if struct["assessmentRunArn"] then asserts.AssertArn(struct["assessmentRunArn"]) end
	if struct["reportType"] then asserts.AssertReportType(struct["reportType"]) end
	if struct["reportFileFormat"] then asserts.AssertReportFileFormat(struct["reportFileFormat"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAssessmentReportRequest[k], "GetAssessmentReportRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAssessmentReportRequest
--  
-- @param _assessmentRunArn [Arn] <p>The ARN that specifies the assessment run for which you want to generate a report.</p>
-- @param _reportType [ReportType] <p>Specifies the type of the assessment report that you want to generate. There are two types of assessment reports: a finding report and a full report. For more information, see <a href="http://docs.aws.amazon.com/inspector/latest/userguide/inspector_reports.html">Assessment Reports</a>. </p>
-- @param _reportFileFormat [ReportFileFormat] <p>Specifies the file format (html or pdf) of the assessment report that you want to generate.</p>
-- Required parameter: assessmentRunArn
-- Required parameter: reportFileFormat
-- Required parameter: reportType
function M.GetAssessmentReportRequest(_assessmentRunArn, _reportType, _reportFileFormat, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAssessmentReportRequest")
	local t = { 
		["assessmentRunArn"] = _assessmentRunArn,
		["reportType"] = _reportType,
		["reportFileFormat"] = _reportFileFormat,
	}
	asserts.AssertGetAssessmentReportRequest(t)
	return t
end

keys.SubscribeToEventRequest = { ["resourceArn"] = true, ["event"] = true, ["topicArn"] = true, nil }

function asserts.AssertSubscribeToEventRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscribeToEventRequest to be of type 'table'")
	assert(struct["resourceArn"], "Expected key resourceArn to exist in table")
	assert(struct["event"], "Expected key event to exist in table")
	assert(struct["topicArn"], "Expected key topicArn to exist in table")
	if struct["resourceArn"] then asserts.AssertArn(struct["resourceArn"]) end
	if struct["event"] then asserts.AssertInspectorEvent(struct["event"]) end
	if struct["topicArn"] then asserts.AssertArn(struct["topicArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubscribeToEventRequest[k], "SubscribeToEventRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscribeToEventRequest
--  
-- @param _resourceArn [Arn] <p>The ARN of the assessment template that is used during the event for which you want to receive SNS notifications.</p>
-- @param _event [InspectorEvent] <p>The event for which you want to receive SNS notifications.</p>
-- @param _topicArn [Arn] <p>The ARN of the SNS topic to which the SNS notifications are sent.</p>
-- Required parameter: resourceArn
-- Required parameter: event
-- Required parameter: topicArn
function M.SubscribeToEventRequest(_resourceArn, _event, _topicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscribeToEventRequest")
	local t = { 
		["resourceArn"] = _resourceArn,
		["event"] = _event,
		["topicArn"] = _topicArn,
	}
	asserts.AssertSubscribeToEventRequest(t)
	return t
end

keys.RemoveAttributesFromFindingsResponse = { ["failedItems"] = true, nil }

function asserts.AssertRemoveAttributesFromFindingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveAttributesFromFindingsResponse to be of type 'table'")
	assert(struct["failedItems"], "Expected key failedItems to exist in table")
	if struct["failedItems"] then asserts.AssertFailedItems(struct["failedItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveAttributesFromFindingsResponse[k], "RemoveAttributesFromFindingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveAttributesFromFindingsResponse
--  
-- @param _failedItems [FailedItems] <p>Attributes details that cannot be described. An error code is provided for each failed item.</p>
-- Required parameter: failedItems
function M.RemoveAttributesFromFindingsResponse(_failedItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveAttributesFromFindingsResponse")
	local t = { 
		["failedItems"] = _failedItems,
	}
	asserts.AssertRemoveAttributesFromFindingsResponse(t)
	return t
end

keys.AssessmentRunAgent = { ["assessmentRunArn"] = true, ["agentHealthCode"] = true, ["agentHealth"] = true, ["autoScalingGroup"] = true, ["agentHealthDetails"] = true, ["telemetryMetadata"] = true, ["agentId"] = true, nil }

function asserts.AssertAssessmentRunAgent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssessmentRunAgent to be of type 'table'")
	assert(struct["agentId"], "Expected key agentId to exist in table")
	assert(struct["assessmentRunArn"], "Expected key assessmentRunArn to exist in table")
	assert(struct["agentHealth"], "Expected key agentHealth to exist in table")
	assert(struct["agentHealthCode"], "Expected key agentHealthCode to exist in table")
	assert(struct["telemetryMetadata"], "Expected key telemetryMetadata to exist in table")
	if struct["assessmentRunArn"] then asserts.AssertArn(struct["assessmentRunArn"]) end
	if struct["agentHealthCode"] then asserts.AssertAgentHealthCode(struct["agentHealthCode"]) end
	if struct["agentHealth"] then asserts.AssertAgentHealth(struct["agentHealth"]) end
	if struct["autoScalingGroup"] then asserts.AssertAutoScalingGroup(struct["autoScalingGroup"]) end
	if struct["agentHealthDetails"] then asserts.AssertMessage(struct["agentHealthDetails"]) end
	if struct["telemetryMetadata"] then asserts.AssertTelemetryMetadataList(struct["telemetryMetadata"]) end
	if struct["agentId"] then asserts.AssertAgentId(struct["agentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssessmentRunAgent[k], "AssessmentRunAgent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssessmentRunAgent
-- <p>Contains information about an Amazon Inspector agent. This data type is used as a response element in the <a>ListAssessmentRunAgents</a> action.</p>
-- @param _assessmentRunArn [Arn] <p>The ARN of the assessment run that is associated with the agent.</p>
-- @param _agentHealthCode [AgentHealthCode] <p>The detailed health state of the agent.</p>
-- @param _agentHealth [AgentHealth] <p>The current health state of the agent.</p>
-- @param _autoScalingGroup [AutoScalingGroup] <p>The Auto Scaling group of the EC2 instance that is specified by the agent ID.</p>
-- @param _agentHealthDetails [Message] <p>The description for the agent health code.</p>
-- @param _telemetryMetadata [TelemetryMetadataList] <p>The Amazon Inspector application data metrics that are collected by the agent.</p>
-- @param _agentId [AgentId] <p>The AWS account of the EC2 instance where the agent is installed.</p>
-- Required parameter: agentId
-- Required parameter: assessmentRunArn
-- Required parameter: agentHealth
-- Required parameter: agentHealthCode
-- Required parameter: telemetryMetadata
function M.AssessmentRunAgent(_assessmentRunArn, _agentHealthCode, _agentHealth, _autoScalingGroup, _agentHealthDetails, _telemetryMetadata, _agentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssessmentRunAgent")
	local t = { 
		["assessmentRunArn"] = _assessmentRunArn,
		["agentHealthCode"] = _agentHealthCode,
		["agentHealth"] = _agentHealth,
		["autoScalingGroup"] = _autoScalingGroup,
		["agentHealthDetails"] = _agentHealthDetails,
		["telemetryMetadata"] = _telemetryMetadata,
		["agentId"] = _agentId,
	}
	asserts.AssertAssessmentRunAgent(t)
	return t
end

keys.DescribeResourceGroupsRequest = { ["resourceGroupArns"] = true, nil }

function asserts.AssertDescribeResourceGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeResourceGroupsRequest to be of type 'table'")
	assert(struct["resourceGroupArns"], "Expected key resourceGroupArns to exist in table")
	if struct["resourceGroupArns"] then asserts.AssertBatchDescribeArnList(struct["resourceGroupArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeResourceGroupsRequest[k], "DescribeResourceGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeResourceGroupsRequest
--  
-- @param _resourceGroupArns [BatchDescribeArnList] <p>The ARN that specifies the resource group that you want to describe.</p>
-- Required parameter: resourceGroupArns
function M.DescribeResourceGroupsRequest(_resourceGroupArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeResourceGroupsRequest")
	local t = { 
		["resourceGroupArns"] = _resourceGroupArns,
	}
	asserts.AssertDescribeResourceGroupsRequest(t)
	return t
end

keys.ListAssessmentTargetsRequest = { ["filter"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListAssessmentTargetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssessmentTargetsRequest to be of type 'table'")
	if struct["filter"] then asserts.AssertAssessmentTargetFilter(struct["filter"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertListMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAssessmentTargetsRequest[k], "ListAssessmentTargetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssessmentTargetsRequest
--  
-- @param _filter [AssessmentTargetFilter] <p>You can use this parameter to specify a subset of data to be included in the action's response.</p> <p>For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.</p>
-- @param _nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>ListAssessmentTargets</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- @param _maxResults [ListMaxResults] <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.</p>
function M.ListAssessmentTargetsRequest(_filter, _nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssessmentTargetsRequest")
	local t = { 
		["filter"] = _filter,
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
	}
	asserts.AssertListAssessmentTargetsRequest(t)
	return t
end

keys.AssessmentRunNotification = { ["snsPublishStatusCode"] = true, ["snsTopicArn"] = true, ["error"] = true, ["date"] = true, ["message"] = true, ["event"] = true, nil }

function asserts.AssertAssessmentRunNotification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssessmentRunNotification to be of type 'table'")
	assert(struct["date"], "Expected key date to exist in table")
	assert(struct["event"], "Expected key event to exist in table")
	assert(struct["error"], "Expected key error to exist in table")
	if struct["snsPublishStatusCode"] then asserts.AssertAssessmentRunNotificationSnsStatusCode(struct["snsPublishStatusCode"]) end
	if struct["snsTopicArn"] then asserts.AssertArn(struct["snsTopicArn"]) end
	if struct["error"] then asserts.AssertBool(struct["error"]) end
	if struct["date"] then asserts.AssertTimestamp(struct["date"]) end
	if struct["message"] then asserts.AssertMessage(struct["message"]) end
	if struct["event"] then asserts.AssertInspectorEvent(struct["event"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssessmentRunNotification[k], "AssessmentRunNotification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssessmentRunNotification
-- <p>Used as one of the elements of the <a>AssessmentRun</a> data type.</p>
-- @param _snsPublishStatusCode [AssessmentRunNotificationSnsStatusCode] <p>The status code of the SNS notification.</p>
-- @param _snsTopicArn [Arn] <p>The SNS topic to which the SNS notification is sent.</p>
-- @param _error [Bool] <p>The Boolean value that specifies whether the notification represents an error.</p>
-- @param _date [Timestamp] <p>The date of the notification.</p>
-- @param _message [Message] <p>The message included in the notification.</p>
-- @param _event [InspectorEvent] <p>The event for which a notification is sent.</p>
-- Required parameter: date
-- Required parameter: event
-- Required parameter: error
function M.AssessmentRunNotification(_snsPublishStatusCode, _snsTopicArn, _error, _date, _message, _event, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssessmentRunNotification")
	local t = { 
		["snsPublishStatusCode"] = _snsPublishStatusCode,
		["snsTopicArn"] = _snsTopicArn,
		["error"] = _error,
		["date"] = _date,
		["message"] = _message,
		["event"] = _event,
	}
	asserts.AssertAssessmentRunNotification(t)
	return t
end

keys.ListEventSubscriptionsRequest = { ["resourceArn"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListEventSubscriptionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEventSubscriptionsRequest to be of type 'table'")
	if struct["resourceArn"] then asserts.AssertArn(struct["resourceArn"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertListEventSubscriptionsMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListEventSubscriptionsRequest[k], "ListEventSubscriptionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEventSubscriptionsRequest
--  
-- @param _resourceArn [Arn] <p>The ARN of the assessment template for which you want to list the existing event subscriptions.</p>
-- @param _nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>ListEventSubscriptions</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- @param _maxResults [ListEventSubscriptionsMaxResults] <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.</p>
function M.ListEventSubscriptionsRequest(_resourceArn, _nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListEventSubscriptionsRequest")
	local t = { 
		["resourceArn"] = _resourceArn,
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
	}
	asserts.AssertListEventSubscriptionsRequest(t)
	return t
end

keys.AgentFilter = { ["agentHealthCodes"] = true, ["agentHealths"] = true, nil }

function asserts.AssertAgentFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AgentFilter to be of type 'table'")
	assert(struct["agentHealths"], "Expected key agentHealths to exist in table")
	assert(struct["agentHealthCodes"], "Expected key agentHealthCodes to exist in table")
	if struct["agentHealthCodes"] then asserts.AssertAgentHealthCodeList(struct["agentHealthCodes"]) end
	if struct["agentHealths"] then asserts.AssertAgentHealthList(struct["agentHealths"]) end
	for k,_ in pairs(struct) do
		assert(keys.AgentFilter[k], "AgentFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AgentFilter
-- <p>Contains information about an Amazon Inspector agent. This data type is used as a request parameter in the <a>ListAssessmentRunAgents</a> action.</p>
-- @param _agentHealthCodes [AgentHealthCodeList] <p>The detailed health state of the agent. Values can be set to <b>IDLE</b>, <b>RUNNING</b>, <b>SHUTDOWN</b>, <b>UNHEALTHY</b>, <b>THROTTLED</b>, and <b>UNKNOWN</b>. </p>
-- @param _agentHealths [AgentHealthList] <p>The current health state of the agent. Values can be set to <b>HEALTHY</b> or <b>UNHEALTHY</b>.</p>
-- Required parameter: agentHealths
-- Required parameter: agentHealthCodes
function M.AgentFilter(_agentHealthCodes, _agentHealths, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AgentFilter")
	local t = { 
		["agentHealthCodes"] = _agentHealthCodes,
		["agentHealths"] = _agentHealths,
	}
	asserts.AssertAgentFilter(t)
	return t
end

keys.DescribeAssessmentRunsResponse = { ["failedItems"] = true, ["assessmentRuns"] = true, nil }

function asserts.AssertDescribeAssessmentRunsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAssessmentRunsResponse to be of type 'table'")
	assert(struct["assessmentRuns"], "Expected key assessmentRuns to exist in table")
	assert(struct["failedItems"], "Expected key failedItems to exist in table")
	if struct["failedItems"] then asserts.AssertFailedItems(struct["failedItems"]) end
	if struct["assessmentRuns"] then asserts.AssertAssessmentRunList(struct["assessmentRuns"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAssessmentRunsResponse[k], "DescribeAssessmentRunsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAssessmentRunsResponse
--  
-- @param _failedItems [FailedItems] <p>Assessment run details that cannot be described. An error code is provided for each failed item.</p>
-- @param _assessmentRuns [AssessmentRunList] <p>Information about the assessment run.</p>
-- Required parameter: assessmentRuns
-- Required parameter: failedItems
function M.DescribeAssessmentRunsResponse(_failedItems, _assessmentRuns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAssessmentRunsResponse")
	local t = { 
		["failedItems"] = _failedItems,
		["assessmentRuns"] = _assessmentRuns,
	}
	asserts.AssertDescribeAssessmentRunsResponse(t)
	return t
end

keys.Subscription = { ["eventSubscriptions"] = true, ["resourceArn"] = true, ["topicArn"] = true, nil }

function asserts.AssertSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Subscription to be of type 'table'")
	assert(struct["resourceArn"], "Expected key resourceArn to exist in table")
	assert(struct["topicArn"], "Expected key topicArn to exist in table")
	assert(struct["eventSubscriptions"], "Expected key eventSubscriptions to exist in table")
	if struct["eventSubscriptions"] then asserts.AssertEventSubscriptionList(struct["eventSubscriptions"]) end
	if struct["resourceArn"] then asserts.AssertArn(struct["resourceArn"]) end
	if struct["topicArn"] then asserts.AssertArn(struct["topicArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Subscription[k], "Subscription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Subscription
-- <p>This data type is used as a response element in the <a>ListEventSubscriptions</a> action.</p>
-- @param _eventSubscriptions [EventSubscriptionList] <p>The list of existing event subscriptions.</p>
-- @param _resourceArn [Arn] <p>The ARN of the assessment template that is used during the event for which the SNS notification is sent.</p>
-- @param _topicArn [Arn] <p>The ARN of the Amazon Simple Notification Service (SNS) topic to which the SNS notifications are sent.</p>
-- Required parameter: resourceArn
-- Required parameter: topicArn
-- Required parameter: eventSubscriptions
function M.Subscription(_eventSubscriptions, _resourceArn, _topicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Subscription")
	local t = { 
		["eventSubscriptions"] = _eventSubscriptions,
		["resourceArn"] = _resourceArn,
		["topicArn"] = _topicArn,
	}
	asserts.AssertSubscription(t)
	return t
end

keys.GetTelemetryMetadataResponse = { ["telemetryMetadata"] = true, nil }

function asserts.AssertGetTelemetryMetadataResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTelemetryMetadataResponse to be of type 'table'")
	assert(struct["telemetryMetadata"], "Expected key telemetryMetadata to exist in table")
	if struct["telemetryMetadata"] then asserts.AssertTelemetryMetadataList(struct["telemetryMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTelemetryMetadataResponse[k], "GetTelemetryMetadataResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTelemetryMetadataResponse
--  
-- @param _telemetryMetadata [TelemetryMetadataList] <p>Telemetry details.</p>
-- Required parameter: telemetryMetadata
function M.GetTelemetryMetadataResponse(_telemetryMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTelemetryMetadataResponse")
	local t = { 
		["telemetryMetadata"] = _telemetryMetadata,
	}
	asserts.AssertGetTelemetryMetadataResponse(t)
	return t
end

keys.RulesPackage = { ["description"] = true, ["version"] = true, ["name"] = true, ["arn"] = true, ["provider"] = true, nil }

function asserts.AssertRulesPackage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RulesPackage to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	assert(struct["provider"], "Expected key provider to exist in table")
	if struct["description"] then asserts.AssertText(struct["description"]) end
	if struct["version"] then asserts.AssertVersion(struct["version"]) end
	if struct["name"] then asserts.AssertRulesPackageName(struct["name"]) end
	if struct["arn"] then asserts.AssertArn(struct["arn"]) end
	if struct["provider"] then asserts.AssertProviderName(struct["provider"]) end
	for k,_ in pairs(struct) do
		assert(keys.RulesPackage[k], "RulesPackage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RulesPackage
-- <p>Contains information about an Amazon Inspector rules package. This data type is used as the response element in the <a>DescribeRulesPackages</a> action.</p>
-- @param _description [Text] <p>The description of the rules package.</p>
-- @param _version [Version] <p>The version ID of the rules package.</p>
-- @param _name [RulesPackageName] <p>The name of the rules package.</p>
-- @param _arn [Arn] <p>The ARN of the rules package.</p>
-- @param _provider [ProviderName] <p>The provider of the rules package.</p>
-- Required parameter: arn
-- Required parameter: name
-- Required parameter: version
-- Required parameter: provider
function M.RulesPackage(_description, _version, _name, _arn, _provider, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RulesPackage")
	local t = { 
		["description"] = _description,
		["version"] = _version,
		["name"] = _name,
		["arn"] = _arn,
		["provider"] = _provider,
	}
	asserts.AssertRulesPackage(t)
	return t
end

keys.AssessmentRunInProgressException = { ["canRetry"] = true, ["message"] = true, ["assessmentRunArnsTruncated"] = true, ["assessmentRunArns"] = true, nil }

function asserts.AssertAssessmentRunInProgressException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssessmentRunInProgressException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	assert(struct["assessmentRunArns"], "Expected key assessmentRunArns to exist in table")
	assert(struct["assessmentRunArnsTruncated"], "Expected key assessmentRunArnsTruncated to exist in table")
	assert(struct["canRetry"], "Expected key canRetry to exist in table")
	if struct["canRetry"] then asserts.AssertBool(struct["canRetry"]) end
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	if struct["assessmentRunArnsTruncated"] then asserts.AssertBool(struct["assessmentRunArnsTruncated"]) end
	if struct["assessmentRunArns"] then asserts.AssertAssessmentRunInProgressArnList(struct["assessmentRunArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssessmentRunInProgressException[k], "AssessmentRunInProgressException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssessmentRunInProgressException
-- <p>You cannot perform a specified action if an assessment run is currently in progress.</p>
-- @param _canRetry [Bool] <p>You can immediately retry your request.</p>
-- @param _message [ErrorMessage] <p>Details of the exception error.</p>
-- @param _assessmentRunArnsTruncated [Bool] <p>Boolean value that indicates whether the ARN list of the assessment runs is truncated.</p>
-- @param _assessmentRunArns [AssessmentRunInProgressArnList] <p>The ARNs of the assessment runs that are currently in progress.</p>
-- Required parameter: message
-- Required parameter: assessmentRunArns
-- Required parameter: assessmentRunArnsTruncated
-- Required parameter: canRetry
function M.AssessmentRunInProgressException(_canRetry, _message, _assessmentRunArnsTruncated, _assessmentRunArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssessmentRunInProgressException")
	local t = { 
		["canRetry"] = _canRetry,
		["message"] = _message,
		["assessmentRunArnsTruncated"] = _assessmentRunArnsTruncated,
		["assessmentRunArns"] = _assessmentRunArns,
	}
	asserts.AssertAssessmentRunInProgressException(t)
	return t
end

keys.CreateResourceGroupResponse = { ["resourceGroupArn"] = true, nil }

function asserts.AssertCreateResourceGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateResourceGroupResponse to be of type 'table'")
	assert(struct["resourceGroupArn"], "Expected key resourceGroupArn to exist in table")
	if struct["resourceGroupArn"] then asserts.AssertArn(struct["resourceGroupArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateResourceGroupResponse[k], "CreateResourceGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateResourceGroupResponse
--  
-- @param _resourceGroupArn [Arn] <p>The ARN that specifies the resource group that is created.</p>
-- Required parameter: resourceGroupArn
function M.CreateResourceGroupResponse(_resourceGroupArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateResourceGroupResponse")
	local t = { 
		["resourceGroupArn"] = _resourceGroupArn,
	}
	asserts.AssertCreateResourceGroupResponse(t)
	return t
end

keys.ListFindingsRequest = { ["filter"] = true, ["nextToken"] = true, ["assessmentRunArns"] = true, ["maxResults"] = true, nil }

function asserts.AssertListFindingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFindingsRequest to be of type 'table'")
	if struct["filter"] then asserts.AssertFindingFilter(struct["filter"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["assessmentRunArns"] then asserts.AssertListParentArnList(struct["assessmentRunArns"]) end
	if struct["maxResults"] then asserts.AssertListMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFindingsRequest[k], "ListFindingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFindingsRequest
--  
-- @param _filter [FindingFilter] <p>You can use this parameter to specify a subset of data to be included in the action's response.</p> <p>For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.</p>
-- @param _nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>ListFindings</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- @param _assessmentRunArns [ListParentArnList] <p>The ARNs of the assessment runs that generate the findings that you want to list.</p>
-- @param _maxResults [ListMaxResults] <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.</p>
function M.ListFindingsRequest(_filter, _nextToken, _assessmentRunArns, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFindingsRequest")
	local t = { 
		["filter"] = _filter,
		["nextToken"] = _nextToken,
		["assessmentRunArns"] = _assessmentRunArns,
		["maxResults"] = _maxResults,
	}
	asserts.AssertListFindingsRequest(t)
	return t
end

keys.AssessmentRun = { ["dataCollected"] = true, ["name"] = true, ["completedAt"] = true, ["userAttributesForFindings"] = true, ["stateChanges"] = true, ["createdAt"] = true, ["findingCounts"] = true, ["notifications"] = true, ["state"] = true, ["stateChangedAt"] = true, ["durationInSeconds"] = true, ["rulesPackageArns"] = true, ["startedAt"] = true, ["assessmentTemplateArn"] = true, ["arn"] = true, nil }

function asserts.AssertAssessmentRun(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssessmentRun to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["assessmentTemplateArn"], "Expected key assessmentTemplateArn to exist in table")
	assert(struct["state"], "Expected key state to exist in table")
	assert(struct["durationInSeconds"], "Expected key durationInSeconds to exist in table")
	assert(struct["rulesPackageArns"], "Expected key rulesPackageArns to exist in table")
	assert(struct["userAttributesForFindings"], "Expected key userAttributesForFindings to exist in table")
	assert(struct["createdAt"], "Expected key createdAt to exist in table")
	assert(struct["stateChangedAt"], "Expected key stateChangedAt to exist in table")
	assert(struct["dataCollected"], "Expected key dataCollected to exist in table")
	assert(struct["stateChanges"], "Expected key stateChanges to exist in table")
	assert(struct["notifications"], "Expected key notifications to exist in table")
	assert(struct["findingCounts"], "Expected key findingCounts to exist in table")
	if struct["dataCollected"] then asserts.AssertBool(struct["dataCollected"]) end
	if struct["name"] then asserts.AssertAssessmentRunName(struct["name"]) end
	if struct["completedAt"] then asserts.AssertTimestamp(struct["completedAt"]) end
	if struct["userAttributesForFindings"] then asserts.AssertUserAttributeList(struct["userAttributesForFindings"]) end
	if struct["stateChanges"] then asserts.AssertAssessmentRunStateChangeList(struct["stateChanges"]) end
	if struct["createdAt"] then asserts.AssertTimestamp(struct["createdAt"]) end
	if struct["findingCounts"] then asserts.AssertAssessmentRunFindingCounts(struct["findingCounts"]) end
	if struct["notifications"] then asserts.AssertAssessmentRunNotificationList(struct["notifications"]) end
	if struct["state"] then asserts.AssertAssessmentRunState(struct["state"]) end
	if struct["stateChangedAt"] then asserts.AssertTimestamp(struct["stateChangedAt"]) end
	if struct["durationInSeconds"] then asserts.AssertAssessmentRunDuration(struct["durationInSeconds"]) end
	if struct["rulesPackageArns"] then asserts.AssertAssessmentRulesPackageArnList(struct["rulesPackageArns"]) end
	if struct["startedAt"] then asserts.AssertTimestamp(struct["startedAt"]) end
	if struct["assessmentTemplateArn"] then asserts.AssertArn(struct["assessmentTemplateArn"]) end
	if struct["arn"] then asserts.AssertArn(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssessmentRun[k], "AssessmentRun contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssessmentRun
-- <p>A snapshot of an Amazon Inspector assessment run that contains the findings of the assessment run .</p> <p>Used as the response element in the <a>DescribeAssessmentRuns</a> action.</p>
-- @param _dataCollected [Bool] <p>A Boolean value (true or false) that specifies whether the process of collecting data from the agents is completed.</p>
-- @param _name [AssessmentRunName] <p>The auto-generated name for the assessment run.</p>
-- @param _completedAt [Timestamp] <p>The assessment run completion time that corresponds to the rules packages evaluation completion time or failure.</p>
-- @param _userAttributesForFindings [UserAttributeList] <p>The user-defined attributes that are assigned to every generated finding.</p>
-- @param _stateChanges [AssessmentRunStateChangeList] <p>A list of the assessment run state changes.</p>
-- @param _createdAt [Timestamp] <p>The time when <a>StartAssessmentRun</a> was called.</p>
-- @param _findingCounts [AssessmentRunFindingCounts] <p>Provides a total count of generated findings per severity.</p>
-- @param _notifications [AssessmentRunNotificationList] <p>A list of notifications for the event subscriptions. A notification about a particular generated finding is added to this list only once.</p>
-- @param _state [AssessmentRunState] <p>The state of the assessment run.</p>
-- @param _stateChangedAt [Timestamp] <p>The last time when the assessment run's state changed.</p>
-- @param _durationInSeconds [AssessmentRunDuration] <p>The duration of the assessment run.</p>
-- @param _rulesPackageArns [AssessmentRulesPackageArnList] <p>The rules packages selected for the assessment run.</p>
-- @param _startedAt [Timestamp] <p>The time when <a>StartAssessmentRun</a> was called.</p>
-- @param _assessmentTemplateArn [Arn] <p>The ARN of the assessment template that is associated with the assessment run.</p>
-- @param _arn [Arn] <p>The ARN of the assessment run.</p>
-- Required parameter: arn
-- Required parameter: name
-- Required parameter: assessmentTemplateArn
-- Required parameter: state
-- Required parameter: durationInSeconds
-- Required parameter: rulesPackageArns
-- Required parameter: userAttributesForFindings
-- Required parameter: createdAt
-- Required parameter: stateChangedAt
-- Required parameter: dataCollected
-- Required parameter: stateChanges
-- Required parameter: notifications
-- Required parameter: findingCounts
function M.AssessmentRun(_dataCollected, _name, _completedAt, _userAttributesForFindings, _stateChanges, _createdAt, _findingCounts, _notifications, _state, _stateChangedAt, _durationInSeconds, _rulesPackageArns, _startedAt, _assessmentTemplateArn, _arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssessmentRun")
	local t = { 
		["dataCollected"] = _dataCollected,
		["name"] = _name,
		["completedAt"] = _completedAt,
		["userAttributesForFindings"] = _userAttributesForFindings,
		["stateChanges"] = _stateChanges,
		["createdAt"] = _createdAt,
		["findingCounts"] = _findingCounts,
		["notifications"] = _notifications,
		["state"] = _state,
		["stateChangedAt"] = _stateChangedAt,
		["durationInSeconds"] = _durationInSeconds,
		["rulesPackageArns"] = _rulesPackageArns,
		["startedAt"] = _startedAt,
		["assessmentTemplateArn"] = _assessmentTemplateArn,
		["arn"] = _arn,
	}
	asserts.AssertAssessmentRun(t)
	return t
end

keys.AssessmentTemplate = { ["assessmentTargetArn"] = true, ["name"] = true, ["createdAt"] = true, ["durationInSeconds"] = true, ["rulesPackageArns"] = true, ["userAttributesForFindings"] = true, ["arn"] = true, nil }

function asserts.AssertAssessmentTemplate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssessmentTemplate to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["assessmentTargetArn"], "Expected key assessmentTargetArn to exist in table")
	assert(struct["durationInSeconds"], "Expected key durationInSeconds to exist in table")
	assert(struct["rulesPackageArns"], "Expected key rulesPackageArns to exist in table")
	assert(struct["userAttributesForFindings"], "Expected key userAttributesForFindings to exist in table")
	assert(struct["createdAt"], "Expected key createdAt to exist in table")
	if struct["assessmentTargetArn"] then asserts.AssertArn(struct["assessmentTargetArn"]) end
	if struct["name"] then asserts.AssertAssessmentTemplateName(struct["name"]) end
	if struct["createdAt"] then asserts.AssertTimestamp(struct["createdAt"]) end
	if struct["durationInSeconds"] then asserts.AssertAssessmentRunDuration(struct["durationInSeconds"]) end
	if struct["rulesPackageArns"] then asserts.AssertAssessmentTemplateRulesPackageArnList(struct["rulesPackageArns"]) end
	if struct["userAttributesForFindings"] then asserts.AssertUserAttributeList(struct["userAttributesForFindings"]) end
	if struct["arn"] then asserts.AssertArn(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssessmentTemplate[k], "AssessmentTemplate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssessmentTemplate
-- <p>Contains information about an Amazon Inspector assessment template. This data type is used as the response element in the <a>DescribeAssessmentTemplates</a> action.</p>
-- @param _assessmentTargetArn [Arn] <p>The ARN of the assessment target that corresponds to this assessment template.</p>
-- @param _name [AssessmentTemplateName] <p>The name of the assessment template.</p>
-- @param _createdAt [Timestamp] <p>The time at which the assessment template is created.</p>
-- @param _durationInSeconds [AssessmentRunDuration] <p>The duration in seconds specified for this assessment tempate. The default value is 3600 seconds (one hour). The maximum value is 86400 seconds (one day).</p>
-- @param _rulesPackageArns [AssessmentTemplateRulesPackageArnList] <p>The rules packages that are specified for this assessment template.</p>
-- @param _userAttributesForFindings [UserAttributeList] <p>The user-defined attributes that are assigned to every generated finding from the assessment run that uses this assessment template.</p>
-- @param _arn [Arn] <p>The ARN of the assessment template.</p>
-- Required parameter: arn
-- Required parameter: name
-- Required parameter: assessmentTargetArn
-- Required parameter: durationInSeconds
-- Required parameter: rulesPackageArns
-- Required parameter: userAttributesForFindings
-- Required parameter: createdAt
function M.AssessmentTemplate(_assessmentTargetArn, _name, _createdAt, _durationInSeconds, _rulesPackageArns, _userAttributesForFindings, _arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssessmentTemplate")
	local t = { 
		["assessmentTargetArn"] = _assessmentTargetArn,
		["name"] = _name,
		["createdAt"] = _createdAt,
		["durationInSeconds"] = _durationInSeconds,
		["rulesPackageArns"] = _rulesPackageArns,
		["userAttributesForFindings"] = _userAttributesForFindings,
		["arn"] = _arn,
	}
	asserts.AssertAssessmentTemplate(t)
	return t
end

keys.Tag = { ["value"] = true, ["key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	if struct["value"] then asserts.AssertTagValue(struct["value"]) end
	if struct["key"] then asserts.AssertTagKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>A key and value pair. This data type is used as a request parameter in the <a>SetTagsForResource</a> action and a response element in the <a>ListTagsForResource</a> action.</p>
-- @param _value [TagValue] <p>A value assigned to a tag key.</p>
-- @param _key [TagKey] <p>A tag key.</p>
-- Required parameter: key
function M.Tag(_value, _key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["value"] = _value,
		["key"] = _key,
	}
	asserts.AssertTag(t)
	return t
end

keys.Attribute = { ["value"] = true, ["key"] = true, nil }

function asserts.AssertAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Attribute to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	if struct["value"] then asserts.AssertAttributeValue(struct["value"]) end
	if struct["key"] then asserts.AssertAttributeKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Attribute[k], "Attribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Attribute
-- <p>This data type is used as a request parameter in the <a>AddAttributesToFindings</a> and <a>CreateAssessmentTemplate</a> actions.</p>
-- @param _value [AttributeValue] <p>The value assigned to the attribute key.</p>
-- @param _key [AttributeKey] <p>The attribute key.</p>
-- Required parameter: key
function M.Attribute(_value, _key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Attribute")
	local t = { 
		["value"] = _value,
		["key"] = _key,
	}
	asserts.AssertAttribute(t)
	return t
end

keys.UpdateAssessmentTargetRequest = { ["assessmentTargetArn"] = true, ["assessmentTargetName"] = true, ["resourceGroupArn"] = true, nil }

function asserts.AssertUpdateAssessmentTargetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAssessmentTargetRequest to be of type 'table'")
	assert(struct["assessmentTargetArn"], "Expected key assessmentTargetArn to exist in table")
	assert(struct["assessmentTargetName"], "Expected key assessmentTargetName to exist in table")
	assert(struct["resourceGroupArn"], "Expected key resourceGroupArn to exist in table")
	if struct["assessmentTargetArn"] then asserts.AssertArn(struct["assessmentTargetArn"]) end
	if struct["assessmentTargetName"] then asserts.AssertAssessmentTargetName(struct["assessmentTargetName"]) end
	if struct["resourceGroupArn"] then asserts.AssertArn(struct["resourceGroupArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAssessmentTargetRequest[k], "UpdateAssessmentTargetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAssessmentTargetRequest
--  
-- @param _assessmentTargetArn [Arn] <p>The ARN of the assessment target that you want to update.</p>
-- @param _assessmentTargetName [AssessmentTargetName] <p>The name of the assessment target that you want to update.</p>
-- @param _resourceGroupArn [Arn] <p>The ARN of the resource group that is used to specify the new resource group to associate with the assessment target.</p>
-- Required parameter: assessmentTargetArn
-- Required parameter: assessmentTargetName
-- Required parameter: resourceGroupArn
function M.UpdateAssessmentTargetRequest(_assessmentTargetArn, _assessmentTargetName, _resourceGroupArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAssessmentTargetRequest")
	local t = { 
		["assessmentTargetArn"] = _assessmentTargetArn,
		["assessmentTargetName"] = _assessmentTargetName,
		["resourceGroupArn"] = _resourceGroupArn,
	}
	asserts.AssertUpdateAssessmentTargetRequest(t)
	return t
end

keys.GetAssessmentReportResponse = { ["status"] = true, ["url"] = true, nil }

function asserts.AssertGetAssessmentReportResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAssessmentReportResponse to be of type 'table'")
	assert(struct["status"], "Expected key status to exist in table")
	if struct["status"] then asserts.AssertReportStatus(struct["status"]) end
	if struct["url"] then asserts.AssertUrl(struct["url"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetAssessmentReportResponse[k], "GetAssessmentReportResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAssessmentReportResponse
--  
-- @param _status [ReportStatus] <p>Specifies the status of the request to generate an assessment report. </p>
-- @param _url [Url] <p>Specifies the URL where you can find the generated assessment report. This parameter is only returned if the report is successfully generated.</p>
-- Required parameter: status
function M.GetAssessmentReportResponse(_status, _url, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAssessmentReportResponse")
	local t = { 
		["status"] = _status,
		["url"] = _url,
	}
	asserts.AssertGetAssessmentReportResponse(t)
	return t
end

keys.InvalidInputException = { ["errorCode"] = true, ["canRetry"] = true, ["message"] = true, nil }

function asserts.AssertInvalidInputException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInputException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	assert(struct["errorCode"], "Expected key errorCode to exist in table")
	assert(struct["canRetry"], "Expected key canRetry to exist in table")
	if struct["errorCode"] then asserts.AssertInvalidInputErrorCode(struct["errorCode"]) end
	if struct["canRetry"] then asserts.AssertBool(struct["canRetry"]) end
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidInputException[k], "InvalidInputException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInputException
-- <p>The request was rejected because an invalid or out-of-range value was supplied for an input parameter.</p>
-- @param _errorCode [InvalidInputErrorCode] <p>Code that indicates the type of error that is generated.</p>
-- @param _canRetry [Bool] <p>You can immediately retry your request.</p>
-- @param _message [ErrorMessage] <p>Details of the exception error.</p>
-- Required parameter: message
-- Required parameter: errorCode
-- Required parameter: canRetry
function M.InvalidInputException(_errorCode, _canRetry, _message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInputException")
	local t = { 
		["errorCode"] = _errorCode,
		["canRetry"] = _canRetry,
		["message"] = _message,
	}
	asserts.AssertInvalidInputException(t)
	return t
end

keys.DescribeRulesPackagesResponse = { ["rulesPackages"] = true, ["failedItems"] = true, nil }

function asserts.AssertDescribeRulesPackagesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRulesPackagesResponse to be of type 'table'")
	assert(struct["rulesPackages"], "Expected key rulesPackages to exist in table")
	assert(struct["failedItems"], "Expected key failedItems to exist in table")
	if struct["rulesPackages"] then asserts.AssertRulesPackageList(struct["rulesPackages"]) end
	if struct["failedItems"] then asserts.AssertFailedItems(struct["failedItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRulesPackagesResponse[k], "DescribeRulesPackagesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRulesPackagesResponse
--  
-- @param _rulesPackages [RulesPackageList] <p>Information about the rules package.</p>
-- @param _failedItems [FailedItems] <p>Rules package details that cannot be described. An error code is provided for each failed item.</p>
-- Required parameter: rulesPackages
-- Required parameter: failedItems
function M.DescribeRulesPackagesResponse(_rulesPackages, _failedItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRulesPackagesResponse")
	local t = { 
		["rulesPackages"] = _rulesPackages,
		["failedItems"] = _failedItems,
	}
	asserts.AssertDescribeRulesPackagesResponse(t)
	return t
end

keys.LimitExceededException = { ["errorCode"] = true, ["canRetry"] = true, ["message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	assert(struct["errorCode"], "Expected key errorCode to exist in table")
	assert(struct["canRetry"], "Expected key canRetry to exist in table")
	if struct["errorCode"] then asserts.AssertLimitExceededErrorCode(struct["errorCode"]) end
	if struct["canRetry"] then asserts.AssertBool(struct["canRetry"]) end
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The request was rejected because it attempted to create resources beyond the current AWS account limits. The error code describes the limit exceeded.</p>
-- @param _errorCode [LimitExceededErrorCode] <p>Code that indicates the type of error that is generated.</p>
-- @param _canRetry [Bool] <p>You can immediately retry your request.</p>
-- @param _message [ErrorMessage] <p>Details of the exception error.</p>
-- Required parameter: message
-- Required parameter: errorCode
-- Required parameter: canRetry
function M.LimitExceededException(_errorCode, _canRetry, _message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["errorCode"] = _errorCode,
		["canRetry"] = _canRetry,
		["message"] = _message,
	}
	asserts.AssertLimitExceededException(t)
	return t
end

keys.NoSuchEntityException = { ["errorCode"] = true, ["canRetry"] = true, ["message"] = true, nil }

function asserts.AssertNoSuchEntityException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchEntityException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	assert(struct["errorCode"], "Expected key errorCode to exist in table")
	assert(struct["canRetry"], "Expected key canRetry to exist in table")
	if struct["errorCode"] then asserts.AssertNoSuchEntityErrorCode(struct["errorCode"]) end
	if struct["canRetry"] then asserts.AssertBool(struct["canRetry"]) end
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NoSuchEntityException[k], "NoSuchEntityException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchEntityException
-- <p>The request was rejected because it referenced an entity that does not exist. The error code describes the entity.</p>
-- @param _errorCode [NoSuchEntityErrorCode] <p>Code that indicates the type of error that is generated.</p>
-- @param _canRetry [Bool] <p>You can immediately retry your request.</p>
-- @param _message [ErrorMessage] <p>Details of the exception error.</p>
-- Required parameter: message
-- Required parameter: errorCode
-- Required parameter: canRetry
function M.NoSuchEntityException(_errorCode, _canRetry, _message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchEntityException")
	local t = { 
		["errorCode"] = _errorCode,
		["canRetry"] = _canRetry,
		["message"] = _message,
	}
	asserts.AssertNoSuchEntityException(t)
	return t
end

keys.AssessmentTargetFilter = { ["assessmentTargetNamePattern"] = true, nil }

function asserts.AssertAssessmentTargetFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssessmentTargetFilter to be of type 'table'")
	if struct["assessmentTargetNamePattern"] then asserts.AssertNamePattern(struct["assessmentTargetNamePattern"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssessmentTargetFilter[k], "AssessmentTargetFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssessmentTargetFilter
-- <p>Used as the request parameter in the <a>ListAssessmentTargets</a> action.</p>
-- @param _assessmentTargetNamePattern [NamePattern] <p>For a record to match a filter, an explicit value or a string that contains a wildcard that is specified for this data type property must match the value of the <b>assessmentTargetName</b> property of the <a>AssessmentTarget</a> data type.</p>
function M.AssessmentTargetFilter(_assessmentTargetNamePattern, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssessmentTargetFilter")
	local t = { 
		["assessmentTargetNamePattern"] = _assessmentTargetNamePattern,
	}
	asserts.AssertAssessmentTargetFilter(t)
	return t
end

keys.ListRulesPackagesResponse = { ["nextToken"] = true, ["rulesPackageArns"] = true, nil }

function asserts.AssertListRulesPackagesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRulesPackagesResponse to be of type 'table'")
	assert(struct["rulesPackageArns"], "Expected key rulesPackageArns to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["rulesPackageArns"] then asserts.AssertListReturnedArnList(struct["rulesPackageArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRulesPackagesResponse[k], "ListRulesPackagesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRulesPackagesResponse
--  
-- @param _nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- @param _rulesPackageArns [ListReturnedArnList] <p>The list of ARNs that specifies the rules packages returned by the action.</p>
-- Required parameter: rulesPackageArns
function M.ListRulesPackagesResponse(_nextToken, _rulesPackageArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRulesPackagesResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["rulesPackageArns"] = _rulesPackageArns,
	}
	asserts.AssertListRulesPackagesResponse(t)
	return t
end

keys.Finding = { ["assetType"] = true, ["confidence"] = true, ["numericSeverity"] = true, ["description"] = true, ["service"] = true, ["title"] = true, ["indicatorOfCompromise"] = true, ["assetAttributes"] = true, ["userAttributes"] = true, ["createdAt"] = true, ["recommendation"] = true, ["updatedAt"] = true, ["attributes"] = true, ["schemaVersion"] = true, ["serviceAttributes"] = true, ["id"] = true, ["arn"] = true, ["severity"] = true, nil }

function asserts.AssertFinding(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Finding to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	assert(struct["attributes"], "Expected key attributes to exist in table")
	assert(struct["userAttributes"], "Expected key userAttributes to exist in table")
	assert(struct["createdAt"], "Expected key createdAt to exist in table")
	assert(struct["updatedAt"], "Expected key updatedAt to exist in table")
	if struct["assetType"] then asserts.AssertAssetType(struct["assetType"]) end
	if struct["confidence"] then asserts.AssertIocConfidence(struct["confidence"]) end
	if struct["numericSeverity"] then asserts.AssertNumericSeverity(struct["numericSeverity"]) end
	if struct["description"] then asserts.AssertText(struct["description"]) end
	if struct["service"] then asserts.AssertServiceName(struct["service"]) end
	if struct["title"] then asserts.AssertText(struct["title"]) end
	if struct["indicatorOfCompromise"] then asserts.AssertBool(struct["indicatorOfCompromise"]) end
	if struct["assetAttributes"] then asserts.AssertAssetAttributes(struct["assetAttributes"]) end
	if struct["userAttributes"] then asserts.AssertUserAttributeList(struct["userAttributes"]) end
	if struct["createdAt"] then asserts.AssertTimestamp(struct["createdAt"]) end
	if struct["recommendation"] then asserts.AssertText(struct["recommendation"]) end
	if struct["updatedAt"] then asserts.AssertTimestamp(struct["updatedAt"]) end
	if struct["attributes"] then asserts.AssertAttributeList(struct["attributes"]) end
	if struct["schemaVersion"] then asserts.AssertNumericVersion(struct["schemaVersion"]) end
	if struct["serviceAttributes"] then asserts.AssertInspectorServiceAttributes(struct["serviceAttributes"]) end
	if struct["id"] then asserts.AssertFindingId(struct["id"]) end
	if struct["arn"] then asserts.AssertArn(struct["arn"]) end
	if struct["severity"] then asserts.AssertSeverity(struct["severity"]) end
	for k,_ in pairs(struct) do
		assert(keys.Finding[k], "Finding contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Finding
-- <p>Contains information about an Amazon Inspector finding. This data type is used as the response element in the <a>DescribeFindings</a> action.</p>
-- @param _assetType [AssetType] <p>The type of the host from which the finding is generated.</p>
-- @param _confidence [IocConfidence] <p>This data element is currently not used.</p>
-- @param _numericSeverity [NumericSeverity] <p>The numeric value of the finding severity.</p>
-- @param _description [Text] <p>The description of the finding.</p>
-- @param _service [ServiceName] <p>The data element is set to "Inspector".</p>
-- @param _title [Text] <p>The name of the finding.</p>
-- @param _indicatorOfCompromise [Bool] <p>This data element is currently not used.</p>
-- @param _assetAttributes [AssetAttributes] <p>A collection of attributes of the host from which the finding is generated.</p>
-- @param _userAttributes [UserAttributeList] <p>The user-defined attributes that are assigned to the finding.</p>
-- @param _createdAt [Timestamp] <p>The time when the finding was generated.</p>
-- @param _recommendation [Text] <p>The recommendation for the finding.</p>
-- @param _updatedAt [Timestamp] <p>The time when <a>AddAttributesToFindings</a> is called.</p>
-- @param _attributes [AttributeList] <p>The system-defined attributes for the finding.</p>
-- @param _schemaVersion [NumericVersion] <p>The schema version of this data type.</p>
-- @param _serviceAttributes [InspectorServiceAttributes] <p>This data type is used in the <a>Finding</a> data type.</p>
-- @param _id [FindingId] <p>The ID of the finding.</p>
-- @param _arn [Arn] <p>The ARN that specifies the finding.</p>
-- @param _severity [Severity] <p>The finding severity. Values can be set to High, Medium, Low, and Informational.</p>
-- Required parameter: arn
-- Required parameter: attributes
-- Required parameter: userAttributes
-- Required parameter: createdAt
-- Required parameter: updatedAt
function M.Finding(_assetType, _confidence, _numericSeverity, _description, _service, _title, _indicatorOfCompromise, _assetAttributes, _userAttributes, _createdAt, _recommendation, _updatedAt, _attributes, _schemaVersion, _serviceAttributes, _id, _arn, _severity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Finding")
	local t = { 
		["assetType"] = _assetType,
		["confidence"] = _confidence,
		["numericSeverity"] = _numericSeverity,
		["description"] = _description,
		["service"] = _service,
		["title"] = _title,
		["indicatorOfCompromise"] = _indicatorOfCompromise,
		["assetAttributes"] = _assetAttributes,
		["userAttributes"] = _userAttributes,
		["createdAt"] = _createdAt,
		["recommendation"] = _recommendation,
		["updatedAt"] = _updatedAt,
		["attributes"] = _attributes,
		["schemaVersion"] = _schemaVersion,
		["serviceAttributes"] = _serviceAttributes,
		["id"] = _id,
		["arn"] = _arn,
		["severity"] = _severity,
	}
	asserts.AssertFinding(t)
	return t
end

keys.ListFindingsResponse = { ["nextToken"] = true, ["findingArns"] = true, nil }

function asserts.AssertListFindingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFindingsResponse to be of type 'table'")
	assert(struct["findingArns"], "Expected key findingArns to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["findingArns"] then asserts.AssertListReturnedArnList(struct["findingArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListFindingsResponse[k], "ListFindingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFindingsResponse
--  
-- @param _nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- @param _findingArns [ListReturnedArnList] <p>A list of ARNs that specifies the findings returned by the action.</p>
-- Required parameter: findingArns
function M.ListFindingsResponse(_nextToken, _findingArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFindingsResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["findingArns"] = _findingArns,
	}
	asserts.AssertListFindingsResponse(t)
	return t
end

keys.AgentPreview = { ["autoScalingGroup"] = true, ["agentId"] = true, nil }

function asserts.AssertAgentPreview(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AgentPreview to be of type 'table'")
	assert(struct["agentId"], "Expected key agentId to exist in table")
	if struct["autoScalingGroup"] then asserts.AssertAutoScalingGroup(struct["autoScalingGroup"]) end
	if struct["agentId"] then asserts.AssertAgentId(struct["agentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AgentPreview[k], "AgentPreview contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AgentPreview
-- <p>Used as a response element in the <a>PreviewAgents</a> action.</p>
-- @param _autoScalingGroup [AutoScalingGroup] <p>The Auto Scaling group for the EC2 instance where the agent is installed.</p>
-- @param _agentId [AgentId] <p>The ID of the EC2 instance where the agent is installed.</p>
-- Required parameter: agentId
function M.AgentPreview(_autoScalingGroup, _agentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AgentPreview")
	local t = { 
		["autoScalingGroup"] = _autoScalingGroup,
		["agentId"] = _agentId,
	}
	asserts.AssertAgentPreview(t)
	return t
end

keys.CreateAssessmentTargetResponse = { ["assessmentTargetArn"] = true, nil }

function asserts.AssertCreateAssessmentTargetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAssessmentTargetResponse to be of type 'table'")
	assert(struct["assessmentTargetArn"], "Expected key assessmentTargetArn to exist in table")
	if struct["assessmentTargetArn"] then asserts.AssertArn(struct["assessmentTargetArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAssessmentTargetResponse[k], "CreateAssessmentTargetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAssessmentTargetResponse
--  
-- @param _assessmentTargetArn [Arn] <p>The ARN that specifies the assessment target that is created.</p>
-- Required parameter: assessmentTargetArn
function M.CreateAssessmentTargetResponse(_assessmentTargetArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAssessmentTargetResponse")
	local t = { 
		["assessmentTargetArn"] = _assessmentTargetArn,
	}
	asserts.AssertCreateAssessmentTargetResponse(t)
	return t
end

keys.ListAssessmentTemplatesResponse = { ["nextToken"] = true, ["assessmentTemplateArns"] = true, nil }

function asserts.AssertListAssessmentTemplatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssessmentTemplatesResponse to be of type 'table'")
	assert(struct["assessmentTemplateArns"], "Expected key assessmentTemplateArns to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["assessmentTemplateArns"] then asserts.AssertListReturnedArnList(struct["assessmentTemplateArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAssessmentTemplatesResponse[k], "ListAssessmentTemplatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssessmentTemplatesResponse
--  
-- @param _nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- @param _assessmentTemplateArns [ListReturnedArnList] <p>A list of ARNs that specifies the assessment templates returned by the action.</p>
-- Required parameter: assessmentTemplateArns
function M.ListAssessmentTemplatesResponse(_nextToken, _assessmentTemplateArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssessmentTemplatesResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["assessmentTemplateArns"] = _assessmentTemplateArns,
	}
	asserts.AssertListAssessmentTemplatesResponse(t)
	return t
end

keys.AddAttributesToFindingsResponse = { ["failedItems"] = true, nil }

function asserts.AssertAddAttributesToFindingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddAttributesToFindingsResponse to be of type 'table'")
	assert(struct["failedItems"], "Expected key failedItems to exist in table")
	if struct["failedItems"] then asserts.AssertFailedItems(struct["failedItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddAttributesToFindingsResponse[k], "AddAttributesToFindingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddAttributesToFindingsResponse
--  
-- @param _failedItems [FailedItems] <p>Attribute details that cannot be described. An error code is provided for each failed item.</p>
-- Required parameter: failedItems
function M.AddAttributesToFindingsResponse(_failedItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddAttributesToFindingsResponse")
	local t = { 
		["failedItems"] = _failedItems,
	}
	asserts.AssertAddAttributesToFindingsResponse(t)
	return t
end

keys.DescribeAssessmentRunsRequest = { ["assessmentRunArns"] = true, nil }

function asserts.AssertDescribeAssessmentRunsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAssessmentRunsRequest to be of type 'table'")
	assert(struct["assessmentRunArns"], "Expected key assessmentRunArns to exist in table")
	if struct["assessmentRunArns"] then asserts.AssertBatchDescribeArnList(struct["assessmentRunArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAssessmentRunsRequest[k], "DescribeAssessmentRunsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAssessmentRunsRequest
--  
-- @param _assessmentRunArns [BatchDescribeArnList] <p>The ARN that specifies the assessment run that you want to describe.</p>
-- Required parameter: assessmentRunArns
function M.DescribeAssessmentRunsRequest(_assessmentRunArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAssessmentRunsRequest")
	local t = { 
		["assessmentRunArns"] = _assessmentRunArns,
	}
	asserts.AssertDescribeAssessmentRunsRequest(t)
	return t
end

keys.CreateAssessmentTargetRequest = { ["assessmentTargetName"] = true, ["resourceGroupArn"] = true, nil }

function asserts.AssertCreateAssessmentTargetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAssessmentTargetRequest to be of type 'table'")
	assert(struct["assessmentTargetName"], "Expected key assessmentTargetName to exist in table")
	assert(struct["resourceGroupArn"], "Expected key resourceGroupArn to exist in table")
	if struct["assessmentTargetName"] then asserts.AssertAssessmentTargetName(struct["assessmentTargetName"]) end
	if struct["resourceGroupArn"] then asserts.AssertArn(struct["resourceGroupArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAssessmentTargetRequest[k], "CreateAssessmentTargetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAssessmentTargetRequest
--  
-- @param _assessmentTargetName [AssessmentTargetName] <p>The user-defined name that identifies the assessment target that you want to create. The name must be unique within the AWS account.</p>
-- @param _resourceGroupArn [Arn] <p>The ARN that specifies the resource group that is used to create the assessment target.</p>
-- Required parameter: assessmentTargetName
-- Required parameter: resourceGroupArn
function M.CreateAssessmentTargetRequest(_assessmentTargetName, _resourceGroupArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAssessmentTargetRequest")
	local t = { 
		["assessmentTargetName"] = _assessmentTargetName,
		["resourceGroupArn"] = _resourceGroupArn,
	}
	asserts.AssertCreateAssessmentTargetRequest(t)
	return t
end

keys.AccessDeniedException = { ["errorCode"] = true, ["canRetry"] = true, ["message"] = true, nil }

function asserts.AssertAccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessDeniedException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	assert(struct["errorCode"], "Expected key errorCode to exist in table")
	assert(struct["canRetry"], "Expected key canRetry to exist in table")
	if struct["errorCode"] then asserts.AssertAccessDeniedErrorCode(struct["errorCode"]) end
	if struct["canRetry"] then asserts.AssertBool(struct["canRetry"]) end
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccessDeniedException[k], "AccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessDeniedException
-- <p>You do not have required permissions to access the requested resource.</p>
-- @param _errorCode [AccessDeniedErrorCode] <p>Code that indicates the type of error that is generated.</p>
-- @param _canRetry [Bool] <p>You can immediately retry your request.</p>
-- @param _message [ErrorMessage] <p>Details of the exception error.</p>
-- Required parameter: message
-- Required parameter: errorCode
-- Required parameter: canRetry
function M.AccessDeniedException(_errorCode, _canRetry, _message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessDeniedException")
	local t = { 
		["errorCode"] = _errorCode,
		["canRetry"] = _canRetry,
		["message"] = _message,
	}
	asserts.AssertAccessDeniedException(t)
	return t
end

keys.DeleteAssessmentTemplateRequest = { ["assessmentTemplateArn"] = true, nil }

function asserts.AssertDeleteAssessmentTemplateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAssessmentTemplateRequest to be of type 'table'")
	assert(struct["assessmentTemplateArn"], "Expected key assessmentTemplateArn to exist in table")
	if struct["assessmentTemplateArn"] then asserts.AssertArn(struct["assessmentTemplateArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAssessmentTemplateRequest[k], "DeleteAssessmentTemplateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAssessmentTemplateRequest
--  
-- @param _assessmentTemplateArn [Arn] <p>The ARN that specifies the assessment template that you want to delete.</p>
-- Required parameter: assessmentTemplateArn
function M.DeleteAssessmentTemplateRequest(_assessmentTemplateArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAssessmentTemplateRequest")
	local t = { 
		["assessmentTemplateArn"] = _assessmentTemplateArn,
	}
	asserts.AssertDeleteAssessmentTemplateRequest(t)
	return t
end

keys.FindingFilter = { ["autoScalingGroups"] = true, ["creationTimeRange"] = true, ["ruleNames"] = true, ["severities"] = true, ["userAttributes"] = true, ["rulesPackageArns"] = true, ["attributes"] = true, ["agentIds"] = true, nil }

function asserts.AssertFindingFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FindingFilter to be of type 'table'")
	if struct["autoScalingGroups"] then asserts.AssertAutoScalingGroupList(struct["autoScalingGroups"]) end
	if struct["creationTimeRange"] then asserts.AssertTimestampRange(struct["creationTimeRange"]) end
	if struct["ruleNames"] then asserts.AssertRuleNameList(struct["ruleNames"]) end
	if struct["severities"] then asserts.AssertSeverityList(struct["severities"]) end
	if struct["userAttributes"] then asserts.AssertAttributeList(struct["userAttributes"]) end
	if struct["rulesPackageArns"] then asserts.AssertFilterRulesPackageArnList(struct["rulesPackageArns"]) end
	if struct["attributes"] then asserts.AssertAttributeList(struct["attributes"]) end
	if struct["agentIds"] then asserts.AssertAgentIdList(struct["agentIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.FindingFilter[k], "FindingFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FindingFilter
-- <p>This data type is used as a request parameter in the <a>ListFindings</a> action.</p>
-- @param _autoScalingGroups [AutoScalingGroupList] <p>For a record to match a filter, one of the values that is specified for this data type property must be the exact match of the value of the <b>autoScalingGroup</b> property of the <a>Finding</a> data type.</p>
-- @param _creationTimeRange [TimestampRange] <p>The time range during which the finding is generated.</p>
-- @param _ruleNames [RuleNameList] <p>For a record to match a filter, one of the values that is specified for this data type property must be the exact match of the value of the <b>ruleName</b> property of the <a>Finding</a> data type.</p>
-- @param _severities [SeverityList] <p>For a record to match a filter, one of the values that is specified for this data type property must be the exact match of the value of the <b>severity</b> property of the <a>Finding</a> data type.</p>
-- @param _userAttributes [AttributeList] <p>For a record to match a filter, the value that is specified for this data type property must be contained in the list of values of the <b>userAttributes</b> property of the <a>Finding</a> data type.</p>
-- @param _rulesPackageArns [FilterRulesPackageArnList] <p>For a record to match a filter, one of the values that is specified for this data type property must be the exact match of the value of the <b>rulesPackageArn</b> property of the <a>Finding</a> data type.</p>
-- @param _attributes [AttributeList] <p>For a record to match a filter, the list of values that are specified for this data type property must be contained in the list of values of the <b>attributes</b> property of the <a>Finding</a> data type.</p>
-- @param _agentIds [AgentIdList] <p>For a record to match a filter, one of the values that is specified for this data type property must be the exact match of the value of the <b>agentId</b> property of the <a>Finding</a> data type.</p>
function M.FindingFilter(_autoScalingGroups, _creationTimeRange, _ruleNames, _severities, _userAttributes, _rulesPackageArns, _attributes, _agentIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FindingFilter")
	local t = { 
		["autoScalingGroups"] = _autoScalingGroups,
		["creationTimeRange"] = _creationTimeRange,
		["ruleNames"] = _ruleNames,
		["severities"] = _severities,
		["userAttributes"] = _userAttributes,
		["rulesPackageArns"] = _rulesPackageArns,
		["attributes"] = _attributes,
		["agentIds"] = _agentIds,
	}
	asserts.AssertFindingFilter(t)
	return t
end

keys.ListAssessmentTargetsResponse = { ["assessmentTargetArns"] = true, ["nextToken"] = true, nil }

function asserts.AssertListAssessmentTargetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssessmentTargetsResponse to be of type 'table'")
	assert(struct["assessmentTargetArns"], "Expected key assessmentTargetArns to exist in table")
	if struct["assessmentTargetArns"] then asserts.AssertListReturnedArnList(struct["assessmentTargetArns"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAssessmentTargetsResponse[k], "ListAssessmentTargetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssessmentTargetsResponse
--  
-- @param _assessmentTargetArns [ListReturnedArnList] <p>A list of ARNs that specifies the assessment targets that are returned by the action.</p>
-- @param _nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- Required parameter: assessmentTargetArns
function M.ListAssessmentTargetsResponse(_assessmentTargetArns, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssessmentTargetsResponse")
	local t = { 
		["assessmentTargetArns"] = _assessmentTargetArns,
		["nextToken"] = _nextToken,
	}
	asserts.AssertListAssessmentTargetsResponse(t)
	return t
end

keys.SetTagsForResourceRequest = { ["resourceArn"] = true, ["tags"] = true, nil }

function asserts.AssertSetTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetTagsForResourceRequest to be of type 'table'")
	assert(struct["resourceArn"], "Expected key resourceArn to exist in table")
	if struct["resourceArn"] then asserts.AssertArn(struct["resourceArn"]) end
	if struct["tags"] then asserts.AssertTagList(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.SetTagsForResourceRequest[k], "SetTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetTagsForResourceRequest
--  
-- @param _resourceArn [Arn] <p>The ARN of the assessment template that you want to set tags to.</p>
-- @param _tags [TagList] <p>A collection of key and value pairs that you want to set to the assessment template.</p>
-- Required parameter: resourceArn
function M.SetTagsForResourceRequest(_resourceArn, _tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetTagsForResourceRequest")
	local t = { 
		["resourceArn"] = _resourceArn,
		["tags"] = _tags,
	}
	asserts.AssertSetTagsForResourceRequest(t)
	return t
end

keys.DeleteAssessmentTargetRequest = { ["assessmentTargetArn"] = true, nil }

function asserts.AssertDeleteAssessmentTargetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAssessmentTargetRequest to be of type 'table'")
	assert(struct["assessmentTargetArn"], "Expected key assessmentTargetArn to exist in table")
	if struct["assessmentTargetArn"] then asserts.AssertArn(struct["assessmentTargetArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAssessmentTargetRequest[k], "DeleteAssessmentTargetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAssessmentTargetRequest
--  
-- @param _assessmentTargetArn [Arn] <p>The ARN that specifies the assessment target that you want to delete.</p>
-- Required parameter: assessmentTargetArn
function M.DeleteAssessmentTargetRequest(_assessmentTargetArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAssessmentTargetRequest")
	local t = { 
		["assessmentTargetArn"] = _assessmentTargetArn,
	}
	asserts.AssertDeleteAssessmentTargetRequest(t)
	return t
end

keys.StartAssessmentRunResponse = { ["assessmentRunArn"] = true, nil }

function asserts.AssertStartAssessmentRunResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartAssessmentRunResponse to be of type 'table'")
	assert(struct["assessmentRunArn"], "Expected key assessmentRunArn to exist in table")
	if struct["assessmentRunArn"] then asserts.AssertArn(struct["assessmentRunArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartAssessmentRunResponse[k], "StartAssessmentRunResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartAssessmentRunResponse
--  
-- @param _assessmentRunArn [Arn] <p>The ARN of the assessment run that has been started.</p>
-- Required parameter: assessmentRunArn
function M.StartAssessmentRunResponse(_assessmentRunArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartAssessmentRunResponse")
	local t = { 
		["assessmentRunArn"] = _assessmentRunArn,
	}
	asserts.AssertStartAssessmentRunResponse(t)
	return t
end

keys.AssessmentTarget = { ["resourceGroupArn"] = true, ["createdAt"] = true, ["name"] = true, ["arn"] = true, ["updatedAt"] = true, nil }

function asserts.AssertAssessmentTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssessmentTarget to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["resourceGroupArn"], "Expected key resourceGroupArn to exist in table")
	assert(struct["createdAt"], "Expected key createdAt to exist in table")
	assert(struct["updatedAt"], "Expected key updatedAt to exist in table")
	if struct["resourceGroupArn"] then asserts.AssertArn(struct["resourceGroupArn"]) end
	if struct["createdAt"] then asserts.AssertTimestamp(struct["createdAt"]) end
	if struct["name"] then asserts.AssertAssessmentTargetName(struct["name"]) end
	if struct["arn"] then asserts.AssertArn(struct["arn"]) end
	if struct["updatedAt"] then asserts.AssertTimestamp(struct["updatedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssessmentTarget[k], "AssessmentTarget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssessmentTarget
-- <p>Contains information about an Amazon Inspector application. This data type is used as the response element in the <a>DescribeAssessmentTargets</a> action.</p>
-- @param _resourceGroupArn [Arn] <p>The ARN that specifies the resource group that is associated with the assessment target.</p>
-- @param _createdAt [Timestamp] <p>The time at which the assessment target is created.</p>
-- @param _name [AssessmentTargetName] <p>The name of the Amazon Inspector assessment target.</p>
-- @param _arn [Arn] <p>The ARN that specifies the Amazon Inspector assessment target.</p>
-- @param _updatedAt [Timestamp] <p>The time at which <a>UpdateAssessmentTarget</a> is called.</p>
-- Required parameter: arn
-- Required parameter: name
-- Required parameter: resourceGroupArn
-- Required parameter: createdAt
-- Required parameter: updatedAt
function M.AssessmentTarget(_resourceGroupArn, _createdAt, _name, _arn, _updatedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssessmentTarget")
	local t = { 
		["resourceGroupArn"] = _resourceGroupArn,
		["createdAt"] = _createdAt,
		["name"] = _name,
		["arn"] = _arn,
		["updatedAt"] = _updatedAt,
	}
	asserts.AssertAssessmentTarget(t)
	return t
end

keys.DescribeAssessmentTemplatesRequest = { ["assessmentTemplateArns"] = true, nil }

function asserts.AssertDescribeAssessmentTemplatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAssessmentTemplatesRequest to be of type 'table'")
	assert(struct["assessmentTemplateArns"], "Expected key assessmentTemplateArns to exist in table")
	if struct["assessmentTemplateArns"] then asserts.AssertBatchDescribeArnList(struct["assessmentTemplateArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAssessmentTemplatesRequest[k], "DescribeAssessmentTemplatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAssessmentTemplatesRequest
--  
-- @param _assessmentTemplateArns [BatchDescribeArnList] 
-- Required parameter: assessmentTemplateArns
function M.DescribeAssessmentTemplatesRequest(_assessmentTemplateArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAssessmentTemplatesRequest")
	local t = { 
		["assessmentTemplateArns"] = _assessmentTemplateArns,
	}
	asserts.AssertDescribeAssessmentTemplatesRequest(t)
	return t
end

keys.StartAssessmentRunRequest = { ["assessmentRunName"] = true, ["assessmentTemplateArn"] = true, nil }

function asserts.AssertStartAssessmentRunRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartAssessmentRunRequest to be of type 'table'")
	assert(struct["assessmentTemplateArn"], "Expected key assessmentTemplateArn to exist in table")
	if struct["assessmentRunName"] then asserts.AssertAssessmentRunName(struct["assessmentRunName"]) end
	if struct["assessmentTemplateArn"] then asserts.AssertArn(struct["assessmentTemplateArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartAssessmentRunRequest[k], "StartAssessmentRunRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartAssessmentRunRequest
--  
-- @param _assessmentRunName [AssessmentRunName] <p>You can specify the name for the assessment run. The name must be unique for the assessment template whose ARN is used to start the assessment run.</p>
-- @param _assessmentTemplateArn [Arn] <p>The ARN of the assessment template of the assessment run that you want to start.</p>
-- Required parameter: assessmentTemplateArn
function M.StartAssessmentRunRequest(_assessmentRunName, _assessmentTemplateArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartAssessmentRunRequest")
	local t = { 
		["assessmentRunName"] = _assessmentRunName,
		["assessmentTemplateArn"] = _assessmentTemplateArn,
	}
	asserts.AssertStartAssessmentRunRequest(t)
	return t
end

keys.DescribeAssessmentTargetsResponse = { ["assessmentTargets"] = true, ["failedItems"] = true, nil }

function asserts.AssertDescribeAssessmentTargetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAssessmentTargetsResponse to be of type 'table'")
	assert(struct["assessmentTargets"], "Expected key assessmentTargets to exist in table")
	assert(struct["failedItems"], "Expected key failedItems to exist in table")
	if struct["assessmentTargets"] then asserts.AssertAssessmentTargetList(struct["assessmentTargets"]) end
	if struct["failedItems"] then asserts.AssertFailedItems(struct["failedItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAssessmentTargetsResponse[k], "DescribeAssessmentTargetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAssessmentTargetsResponse
--  
-- @param _assessmentTargets [AssessmentTargetList] <p>Information about the assessment targets.</p>
-- @param _failedItems [FailedItems] <p>Assessment target details that cannot be described. An error code is provided for each failed item.</p>
-- Required parameter: assessmentTargets
-- Required parameter: failedItems
function M.DescribeAssessmentTargetsResponse(_assessmentTargets, _failedItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAssessmentTargetsResponse")
	local t = { 
		["assessmentTargets"] = _assessmentTargets,
		["failedItems"] = _failedItems,
	}
	asserts.AssertDescribeAssessmentTargetsResponse(t)
	return t
end

keys.ListEventSubscriptionsResponse = { ["nextToken"] = true, ["subscriptions"] = true, nil }

function asserts.AssertListEventSubscriptionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEventSubscriptionsResponse to be of type 'table'")
	assert(struct["subscriptions"], "Expected key subscriptions to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["subscriptions"] then asserts.AssertSubscriptionList(struct["subscriptions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListEventSubscriptionsResponse[k], "ListEventSubscriptionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEventSubscriptionsResponse
--  
-- @param _nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- @param _subscriptions [SubscriptionList] <p>Details of the returned event subscriptions.</p>
-- Required parameter: subscriptions
function M.ListEventSubscriptionsResponse(_nextToken, _subscriptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListEventSubscriptionsResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["subscriptions"] = _subscriptions,
	}
	asserts.AssertListEventSubscriptionsResponse(t)
	return t
end

keys.DescribeAssessmentTemplatesResponse = { ["assessmentTemplates"] = true, ["failedItems"] = true, nil }

function asserts.AssertDescribeAssessmentTemplatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAssessmentTemplatesResponse to be of type 'table'")
	assert(struct["assessmentTemplates"], "Expected key assessmentTemplates to exist in table")
	assert(struct["failedItems"], "Expected key failedItems to exist in table")
	if struct["assessmentTemplates"] then asserts.AssertAssessmentTemplateList(struct["assessmentTemplates"]) end
	if struct["failedItems"] then asserts.AssertFailedItems(struct["failedItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAssessmentTemplatesResponse[k], "DescribeAssessmentTemplatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAssessmentTemplatesResponse
--  
-- @param _assessmentTemplates [AssessmentTemplateList] <p>Information about the assessment templates.</p>
-- @param _failedItems [FailedItems] <p>Assessment template details that cannot be described. An error code is provided for each failed item.</p>
-- Required parameter: assessmentTemplates
-- Required parameter: failedItems
function M.DescribeAssessmentTemplatesResponse(_assessmentTemplates, _failedItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAssessmentTemplatesResponse")
	local t = { 
		["assessmentTemplates"] = _assessmentTemplates,
		["failedItems"] = _failedItems,
	}
	asserts.AssertDescribeAssessmentTemplatesResponse(t)
	return t
end

keys.DurationRange = { ["minSeconds"] = true, ["maxSeconds"] = true, nil }

function asserts.AssertDurationRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DurationRange to be of type 'table'")
	if struct["minSeconds"] then asserts.AssertAssessmentRunDuration(struct["minSeconds"]) end
	if struct["maxSeconds"] then asserts.AssertAssessmentRunDuration(struct["maxSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.DurationRange[k], "DurationRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DurationRange
-- <p>This data type is used in the <a>AssessmentTemplateFilter</a> data type.</p>
-- @param _minSeconds [AssessmentRunDuration] <p>The minimum value of the duration range. Must be greater than zero.</p>
-- @param _maxSeconds [AssessmentRunDuration] <p>The maximum value of the duration range. Must be less than or equal to 604800 seconds (1 week).</p>
function M.DurationRange(_minSeconds, _maxSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DurationRange")
	local t = { 
		["minSeconds"] = _minSeconds,
		["maxSeconds"] = _maxSeconds,
	}
	asserts.AssertDurationRange(t)
	return t
end

keys.GetTelemetryMetadataRequest = { ["assessmentRunArn"] = true, nil }

function asserts.AssertGetTelemetryMetadataRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTelemetryMetadataRequest to be of type 'table'")
	assert(struct["assessmentRunArn"], "Expected key assessmentRunArn to exist in table")
	if struct["assessmentRunArn"] then asserts.AssertArn(struct["assessmentRunArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTelemetryMetadataRequest[k], "GetTelemetryMetadataRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTelemetryMetadataRequest
--  
-- @param _assessmentRunArn [Arn] <p>The ARN that specifies the assessment run that has the telemetry data that you want to obtain.</p>
-- Required parameter: assessmentRunArn
function M.GetTelemetryMetadataRequest(_assessmentRunArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTelemetryMetadataRequest")
	local t = { 
		["assessmentRunArn"] = _assessmentRunArn,
	}
	asserts.AssertGetTelemetryMetadataRequest(t)
	return t
end

keys.ListTagsForResourceRequest = { ["resourceArn"] = true, nil }

function asserts.AssertListTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceRequest to be of type 'table'")
	assert(struct["resourceArn"], "Expected key resourceArn to exist in table")
	if struct["resourceArn"] then asserts.AssertArn(struct["resourceArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceRequest[k], "ListTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceRequest
--  
-- @param _resourceArn [Arn] <p>The ARN that specifies the assessment template whose tags you want to list.</p>
-- Required parameter: resourceArn
function M.ListTagsForResourceRequest(_resourceArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceRequest")
	local t = { 
		["resourceArn"] = _resourceArn,
	}
	asserts.AssertListTagsForResourceRequest(t)
	return t
end

keys.ListAssessmentRunAgentsResponse = { ["assessmentRunAgents"] = true, ["nextToken"] = true, nil }

function asserts.AssertListAssessmentRunAgentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssessmentRunAgentsResponse to be of type 'table'")
	assert(struct["assessmentRunAgents"], "Expected key assessmentRunAgents to exist in table")
	if struct["assessmentRunAgents"] then asserts.AssertAssessmentRunAgentList(struct["assessmentRunAgents"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAssessmentRunAgentsResponse[k], "ListAssessmentRunAgentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssessmentRunAgentsResponse
--  
-- @param _assessmentRunAgents [AssessmentRunAgentList] <p>A list of ARNs that specifies the agents returned by the action.</p>
-- @param _nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- Required parameter: assessmentRunAgents
function M.ListAssessmentRunAgentsResponse(_assessmentRunAgents, _nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssessmentRunAgentsResponse")
	local t = { 
		["assessmentRunAgents"] = _assessmentRunAgents,
		["nextToken"] = _nextToken,
	}
	asserts.AssertListAssessmentRunAgentsResponse(t)
	return t
end

keys.UnsupportedFeatureException = { ["canRetry"] = true, ["message"] = true, nil }

function asserts.AssertUnsupportedFeatureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedFeatureException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	assert(struct["canRetry"], "Expected key canRetry to exist in table")
	if struct["canRetry"] then asserts.AssertBool(struct["canRetry"]) end
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedFeatureException[k], "UnsupportedFeatureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedFeatureException
-- <p>Used by the <a>GetAssessmentReport</a> API. The request was rejected because you tried to generate a report for an assessment run that existed before reporting was supported in Amazon Inspector. You can only generate reports for assessment runs that took place or will take place after generating reports in Amazon Inspector became available.</p>
-- @param _canRetry [Bool] 
-- @param _message [ErrorMessage] 
-- Required parameter: message
-- Required parameter: canRetry
function M.UnsupportedFeatureException(_canRetry, _message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedFeatureException")
	local t = { 
		["canRetry"] = _canRetry,
		["message"] = _message,
	}
	asserts.AssertUnsupportedFeatureException(t)
	return t
end

keys.InspectorServiceAttributes = { ["schemaVersion"] = true, ["rulesPackageArn"] = true, ["assessmentRunArn"] = true, nil }

function asserts.AssertInspectorServiceAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InspectorServiceAttributes to be of type 'table'")
	assert(struct["schemaVersion"], "Expected key schemaVersion to exist in table")
	if struct["schemaVersion"] then asserts.AssertNumericVersion(struct["schemaVersion"]) end
	if struct["rulesPackageArn"] then asserts.AssertArn(struct["rulesPackageArn"]) end
	if struct["assessmentRunArn"] then asserts.AssertArn(struct["assessmentRunArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.InspectorServiceAttributes[k], "InspectorServiceAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InspectorServiceAttributes
-- <p>This data type is used in the <a>Finding</a> data type.</p>
-- @param _schemaVersion [NumericVersion] <p>The schema version of this data type.</p>
-- @param _rulesPackageArn [Arn] <p>The ARN of the rules package that is used to generate the finding.</p>
-- @param _assessmentRunArn [Arn] <p>The ARN of the assessment run during which the finding is generated.</p>
-- Required parameter: schemaVersion
function M.InspectorServiceAttributes(_schemaVersion, _rulesPackageArn, _assessmentRunArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InspectorServiceAttributes")
	local t = { 
		["schemaVersion"] = _schemaVersion,
		["rulesPackageArn"] = _rulesPackageArn,
		["assessmentRunArn"] = _assessmentRunArn,
	}
	asserts.AssertInspectorServiceAttributes(t)
	return t
end

keys.ResourceGroup = { ["createdAt"] = true, ["arn"] = true, ["tags"] = true, nil }

function asserts.AssertResourceGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceGroup to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	assert(struct["tags"], "Expected key tags to exist in table")
	assert(struct["createdAt"], "Expected key createdAt to exist in table")
	if struct["createdAt"] then asserts.AssertTimestamp(struct["createdAt"]) end
	if struct["arn"] then asserts.AssertArn(struct["arn"]) end
	if struct["tags"] then asserts.AssertResourceGroupTags(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceGroup[k], "ResourceGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceGroup
-- <p>Contains information about a resource group. The resource group defines a set of tags that, when queried, identify the AWS resources that make up the assessment target. This data type is used as the response element in the <a>DescribeResourceGroups</a> action.</p>
-- @param _createdAt [Timestamp] <p>The time at which resource group is created.</p>
-- @param _arn [Arn] <p>The ARN of the resource group.</p>
-- @param _tags [ResourceGroupTags] <p>The tags (key and value pairs) of the resource group. This data type property is used in the <a>CreateResourceGroup</a> action.</p>
-- Required parameter: arn
-- Required parameter: tags
-- Required parameter: createdAt
function M.ResourceGroup(_createdAt, _arn, _tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceGroup")
	local t = { 
		["createdAt"] = _createdAt,
		["arn"] = _arn,
		["tags"] = _tags,
	}
	asserts.AssertResourceGroup(t)
	return t
end

keys.UnsubscribeFromEventRequest = { ["resourceArn"] = true, ["event"] = true, ["topicArn"] = true, nil }

function asserts.AssertUnsubscribeFromEventRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsubscribeFromEventRequest to be of type 'table'")
	assert(struct["resourceArn"], "Expected key resourceArn to exist in table")
	assert(struct["event"], "Expected key event to exist in table")
	assert(struct["topicArn"], "Expected key topicArn to exist in table")
	if struct["resourceArn"] then asserts.AssertArn(struct["resourceArn"]) end
	if struct["event"] then asserts.AssertInspectorEvent(struct["event"]) end
	if struct["topicArn"] then asserts.AssertArn(struct["topicArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsubscribeFromEventRequest[k], "UnsubscribeFromEventRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsubscribeFromEventRequest
--  
-- @param _resourceArn [Arn] <p>The ARN of the assessment template that is used during the event for which you want to stop receiving SNS notifications.</p>
-- @param _event [InspectorEvent] <p>The event for which you want to stop receiving SNS notifications.</p>
-- @param _topicArn [Arn] <p>The ARN of the SNS topic to which SNS notifications are sent.</p>
-- Required parameter: resourceArn
-- Required parameter: event
-- Required parameter: topicArn
function M.UnsubscribeFromEventRequest(_resourceArn, _event, _topicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsubscribeFromEventRequest")
	local t = { 
		["resourceArn"] = _resourceArn,
		["event"] = _event,
		["topicArn"] = _topicArn,
	}
	asserts.AssertUnsubscribeFromEventRequest(t)
	return t
end

keys.ResourceGroupTag = { ["value"] = true, ["key"] = true, nil }

function asserts.AssertResourceGroupTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceGroupTag to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	if struct["value"] then asserts.AssertTagValue(struct["value"]) end
	if struct["key"] then asserts.AssertTagKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceGroupTag[k], "ResourceGroupTag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceGroupTag
-- <p>This data type is used as one of the elements of the <a>ResourceGroup</a> data type.</p>
-- @param _value [TagValue] <p>The value assigned to a tag key.</p>
-- @param _key [TagKey] <p>A tag key.</p>
-- Required parameter: key
function M.ResourceGroupTag(_value, _key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceGroupTag")
	local t = { 
		["value"] = _value,
		["key"] = _key,
	}
	asserts.AssertResourceGroupTag(t)
	return t
end

keys.DescribeRulesPackagesRequest = { ["locale"] = true, ["rulesPackageArns"] = true, nil }

function asserts.AssertDescribeRulesPackagesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRulesPackagesRequest to be of type 'table'")
	assert(struct["rulesPackageArns"], "Expected key rulesPackageArns to exist in table")
	if struct["locale"] then asserts.AssertLocale(struct["locale"]) end
	if struct["rulesPackageArns"] then asserts.AssertBatchDescribeArnList(struct["rulesPackageArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeRulesPackagesRequest[k], "DescribeRulesPackagesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRulesPackagesRequest
--  
-- @param _locale [Locale] <p>The locale that you want to translate a rules package description into.</p>
-- @param _rulesPackageArns [BatchDescribeArnList] <p>The ARN that specifies the rules package that you want to describe.</p>
-- Required parameter: rulesPackageArns
function M.DescribeRulesPackagesRequest(_locale, _rulesPackageArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRulesPackagesRequest")
	local t = { 
		["locale"] = _locale,
		["rulesPackageArns"] = _rulesPackageArns,
	}
	asserts.AssertDescribeRulesPackagesRequest(t)
	return t
end

keys.AssetAttributes = { ["amiId"] = true, ["hostname"] = true, ["autoScalingGroup"] = true, ["ipv4Addresses"] = true, ["schemaVersion"] = true, ["agentId"] = true, nil }

function asserts.AssertAssetAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssetAttributes to be of type 'table'")
	assert(struct["schemaVersion"], "Expected key schemaVersion to exist in table")
	if struct["amiId"] then asserts.AssertAmiId(struct["amiId"]) end
	if struct["hostname"] then asserts.AssertHostname(struct["hostname"]) end
	if struct["autoScalingGroup"] then asserts.AssertAutoScalingGroup(struct["autoScalingGroup"]) end
	if struct["ipv4Addresses"] then asserts.AssertIpv4AddressList(struct["ipv4Addresses"]) end
	if struct["schemaVersion"] then asserts.AssertNumericVersion(struct["schemaVersion"]) end
	if struct["agentId"] then asserts.AssertAgentId(struct["agentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssetAttributes[k], "AssetAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssetAttributes
-- <p>A collection of attributes of the host from which the finding is generated.</p>
-- @param _amiId [AmiId] <p>The ID of the Amazon Machine Image (AMI) that is installed on the EC2 instance where the finding is generated.</p>
-- @param _hostname [Hostname] <p>The hostname of the EC2 instance where the finding is generated.</p>
-- @param _autoScalingGroup [AutoScalingGroup] <p>The Auto Scaling group of the EC2 instance where the finding is generated.</p>
-- @param _ipv4Addresses [Ipv4AddressList] <p>The list of IP v4 addresses of the EC2 instance where the finding is generated.</p>
-- @param _schemaVersion [NumericVersion] <p>The schema version of this data type.</p>
-- @param _agentId [AgentId] <p>The ID of the agent that is installed on the EC2 instance where the finding is generated.</p>
-- Required parameter: schemaVersion
function M.AssetAttributes(_amiId, _hostname, _autoScalingGroup, _ipv4Addresses, _schemaVersion, _agentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssetAttributes")
	local t = { 
		["amiId"] = _amiId,
		["hostname"] = _hostname,
		["autoScalingGroup"] = _autoScalingGroup,
		["ipv4Addresses"] = _ipv4Addresses,
		["schemaVersion"] = _schemaVersion,
		["agentId"] = _agentId,
	}
	asserts.AssertAssetAttributes(t)
	return t
end

keys.DescribeFindingsResponse = { ["failedItems"] = true, ["findings"] = true, nil }

function asserts.AssertDescribeFindingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFindingsResponse to be of type 'table'")
	assert(struct["findings"], "Expected key findings to exist in table")
	assert(struct["failedItems"], "Expected key failedItems to exist in table")
	if struct["failedItems"] then asserts.AssertFailedItems(struct["failedItems"]) end
	if struct["findings"] then asserts.AssertFindingList(struct["findings"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeFindingsResponse[k], "DescribeFindingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFindingsResponse
--  
-- @param _failedItems [FailedItems] <p>Finding details that cannot be described. An error code is provided for each failed item.</p>
-- @param _findings [FindingList] <p>Information about the finding.</p>
-- Required parameter: findings
-- Required parameter: failedItems
function M.DescribeFindingsResponse(_failedItems, _findings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFindingsResponse")
	local t = { 
		["failedItems"] = _failedItems,
		["findings"] = _findings,
	}
	asserts.AssertDescribeFindingsResponse(t)
	return t
end

keys.AgentAlreadyRunningAssessment = { ["assessmentRunArn"] = true, ["agentId"] = true, nil }

function asserts.AssertAgentAlreadyRunningAssessment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AgentAlreadyRunningAssessment to be of type 'table'")
	assert(struct["agentId"], "Expected key agentId to exist in table")
	assert(struct["assessmentRunArn"], "Expected key assessmentRunArn to exist in table")
	if struct["assessmentRunArn"] then asserts.AssertArn(struct["assessmentRunArn"]) end
	if struct["agentId"] then asserts.AssertAgentId(struct["agentId"]) end
	for k,_ in pairs(struct) do
		assert(keys.AgentAlreadyRunningAssessment[k], "AgentAlreadyRunningAssessment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AgentAlreadyRunningAssessment
-- <p>Used in the exception error that is thrown if you start an assessment run for an assessment target that includes an EC2 instance that is already participating in another started assessment run.</p>
-- @param _assessmentRunArn [Arn] <p>The ARN of the assessment run that has already been started.</p>
-- @param _agentId [AgentId] <p>ID of the agent that is running on an EC2 instance that is already participating in another started assessment run.</p>
-- Required parameter: agentId
-- Required parameter: assessmentRunArn
function M.AgentAlreadyRunningAssessment(_assessmentRunArn, _agentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AgentAlreadyRunningAssessment")
	local t = { 
		["assessmentRunArn"] = _assessmentRunArn,
		["agentId"] = _agentId,
	}
	asserts.AssertAgentAlreadyRunningAssessment(t)
	return t
end

keys.AddAttributesToFindingsRequest = { ["attributes"] = true, ["findingArns"] = true, nil }

function asserts.AssertAddAttributesToFindingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddAttributesToFindingsRequest to be of type 'table'")
	assert(struct["findingArns"], "Expected key findingArns to exist in table")
	assert(struct["attributes"], "Expected key attributes to exist in table")
	if struct["attributes"] then asserts.AssertUserAttributeList(struct["attributes"]) end
	if struct["findingArns"] then asserts.AssertAddRemoveAttributesFindingArnList(struct["findingArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddAttributesToFindingsRequest[k], "AddAttributesToFindingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddAttributesToFindingsRequest
--  
-- @param _attributes [UserAttributeList] <p>The array of attributes that you want to assign to specified findings.</p>
-- @param _findingArns [AddRemoveAttributesFindingArnList] <p>The ARNs that specify the findings that you want to assign attributes to.</p>
-- Required parameter: findingArns
-- Required parameter: attributes
function M.AddAttributesToFindingsRequest(_attributes, _findingArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddAttributesToFindingsRequest")
	local t = { 
		["attributes"] = _attributes,
		["findingArns"] = _findingArns,
	}
	asserts.AssertAddAttributesToFindingsRequest(t)
	return t
end

keys.StopAssessmentRunRequest = { ["assessmentRunArn"] = true, nil }

function asserts.AssertStopAssessmentRunRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopAssessmentRunRequest to be of type 'table'")
	assert(struct["assessmentRunArn"], "Expected key assessmentRunArn to exist in table")
	if struct["assessmentRunArn"] then asserts.AssertArn(struct["assessmentRunArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopAssessmentRunRequest[k], "StopAssessmentRunRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopAssessmentRunRequest
--  
-- @param _assessmentRunArn [Arn] <p>The ARN of the assessment run that you want to stop.</p>
-- Required parameter: assessmentRunArn
function M.StopAssessmentRunRequest(_assessmentRunArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopAssessmentRunRequest")
	local t = { 
		["assessmentRunArn"] = _assessmentRunArn,
	}
	asserts.AssertStopAssessmentRunRequest(t)
	return t
end

keys.RemoveAttributesFromFindingsRequest = { ["attributeKeys"] = true, ["findingArns"] = true, nil }

function asserts.AssertRemoveAttributesFromFindingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveAttributesFromFindingsRequest to be of type 'table'")
	assert(struct["findingArns"], "Expected key findingArns to exist in table")
	assert(struct["attributeKeys"], "Expected key attributeKeys to exist in table")
	if struct["attributeKeys"] then asserts.AssertUserAttributeKeyList(struct["attributeKeys"]) end
	if struct["findingArns"] then asserts.AssertAddRemoveAttributesFindingArnList(struct["findingArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveAttributesFromFindingsRequest[k], "RemoveAttributesFromFindingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveAttributesFromFindingsRequest
--  
-- @param _attributeKeys [UserAttributeKeyList] <p>The array of attribute keys that you want to remove from specified findings.</p>
-- @param _findingArns [AddRemoveAttributesFindingArnList] <p>The ARNs that specify the findings that you want to remove attributes from.</p>
-- Required parameter: findingArns
-- Required parameter: attributeKeys
function M.RemoveAttributesFromFindingsRequest(_attributeKeys, _findingArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveAttributesFromFindingsRequest")
	local t = { 
		["attributeKeys"] = _attributeKeys,
		["findingArns"] = _findingArns,
	}
	asserts.AssertRemoveAttributesFromFindingsRequest(t)
	return t
end

keys.ListAssessmentTemplatesRequest = { ["filter"] = true, ["assessmentTargetArns"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListAssessmentTemplatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssessmentTemplatesRequest to be of type 'table'")
	if struct["filter"] then asserts.AssertAssessmentTemplateFilter(struct["filter"]) end
	if struct["assessmentTargetArns"] then asserts.AssertListParentArnList(struct["assessmentTargetArns"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertListMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAssessmentTemplatesRequest[k], "ListAssessmentTemplatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssessmentTemplatesRequest
--  
-- @param _filter [AssessmentTemplateFilter] <p>You can use this parameter to specify a subset of data to be included in the action's response.</p> <p>For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.</p>
-- @param _assessmentTargetArns [ListParentArnList] <p>A list of ARNs that specifies the assessment targets whose assessment templates you want to list.</p>
-- @param _nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>ListAssessmentTemplates</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- @param _maxResults [ListMaxResults] <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.</p>
function M.ListAssessmentTemplatesRequest(_filter, _assessmentTargetArns, _nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssessmentTemplatesRequest")
	local t = { 
		["filter"] = _filter,
		["assessmentTargetArns"] = _assessmentTargetArns,
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
	}
	asserts.AssertListAssessmentTemplatesRequest(t)
	return t
end

keys.InvalidCrossAccountRoleException = { ["errorCode"] = true, ["canRetry"] = true, ["message"] = true, nil }

function asserts.AssertInvalidCrossAccountRoleException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCrossAccountRoleException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	assert(struct["errorCode"], "Expected key errorCode to exist in table")
	assert(struct["canRetry"], "Expected key canRetry to exist in table")
	if struct["errorCode"] then asserts.AssertInvalidCrossAccountRoleErrorCode(struct["errorCode"]) end
	if struct["canRetry"] then asserts.AssertBool(struct["canRetry"]) end
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidCrossAccountRoleException[k], "InvalidCrossAccountRoleException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCrossAccountRoleException
-- <p>Amazon Inspector cannot assume the cross-account role that it needs to list your EC2 instances during the assessment run.</p>
-- @param _errorCode [InvalidCrossAccountRoleErrorCode] <p>Code that indicates the type of error that is generated.</p>
-- @param _canRetry [Bool] <p>You can immediately retry your request.</p>
-- @param _message [ErrorMessage] <p>Details of the exception error.</p>
-- Required parameter: message
-- Required parameter: errorCode
-- Required parameter: canRetry
function M.InvalidCrossAccountRoleException(_errorCode, _canRetry, _message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCrossAccountRoleException")
	local t = { 
		["errorCode"] = _errorCode,
		["canRetry"] = _canRetry,
		["message"] = _message,
	}
	asserts.AssertInvalidCrossAccountRoleException(t)
	return t
end

keys.DescribeResourceGroupsResponse = { ["resourceGroups"] = true, ["failedItems"] = true, nil }

function asserts.AssertDescribeResourceGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeResourceGroupsResponse to be of type 'table'")
	assert(struct["resourceGroups"], "Expected key resourceGroups to exist in table")
	assert(struct["failedItems"], "Expected key failedItems to exist in table")
	if struct["resourceGroups"] then asserts.AssertResourceGroupList(struct["resourceGroups"]) end
	if struct["failedItems"] then asserts.AssertFailedItems(struct["failedItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeResourceGroupsResponse[k], "DescribeResourceGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeResourceGroupsResponse
--  
-- @param _resourceGroups [ResourceGroupList] <p>Information about a resource group.</p>
-- @param _failedItems [FailedItems] <p>Resource group details that cannot be described. An error code is provided for each failed item.</p>
-- Required parameter: resourceGroups
-- Required parameter: failedItems
function M.DescribeResourceGroupsResponse(_resourceGroups, _failedItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeResourceGroupsResponse")
	local t = { 
		["resourceGroups"] = _resourceGroups,
		["failedItems"] = _failedItems,
	}
	asserts.AssertDescribeResourceGroupsResponse(t)
	return t
end

keys.DescribeFindingsRequest = { ["locale"] = true, ["findingArns"] = true, nil }

function asserts.AssertDescribeFindingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFindingsRequest to be of type 'table'")
	assert(struct["findingArns"], "Expected key findingArns to exist in table")
	if struct["locale"] then asserts.AssertLocale(struct["locale"]) end
	if struct["findingArns"] then asserts.AssertBatchDescribeArnList(struct["findingArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeFindingsRequest[k], "DescribeFindingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFindingsRequest
--  
-- @param _locale [Locale] <p>The locale into which you want to translate a finding description, recommendation, and the short description that identifies the finding.</p>
-- @param _findingArns [BatchDescribeArnList] <p>The ARN that specifies the finding that you want to describe.</p>
-- Required parameter: findingArns
function M.DescribeFindingsRequest(_locale, _findingArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFindingsRequest")
	local t = { 
		["locale"] = _locale,
		["findingArns"] = _findingArns,
	}
	asserts.AssertDescribeFindingsRequest(t)
	return t
end

keys.ListTagsForResourceResponse = { ["tags"] = true, nil }

function asserts.AssertListTagsForResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceResponse to be of type 'table'")
	assert(struct["tags"], "Expected key tags to exist in table")
	if struct["tags"] then asserts.AssertTagList(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForResourceResponse[k], "ListTagsForResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceResponse
--  
-- @param _tags [TagList] <p>A collection of key and value pairs.</p>
-- Required parameter: tags
function M.ListTagsForResourceResponse(_tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceResponse")
	local t = { 
		["tags"] = _tags,
	}
	asserts.AssertListTagsForResourceResponse(t)
	return t
end

keys.RegisterCrossAccountAccessRoleRequest = { ["roleArn"] = true, nil }

function asserts.AssertRegisterCrossAccountAccessRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterCrossAccountAccessRoleRequest to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	if struct["roleArn"] then asserts.AssertArn(struct["roleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.RegisterCrossAccountAccessRoleRequest[k], "RegisterCrossAccountAccessRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterCrossAccountAccessRoleRequest
--  
-- @param _roleArn [Arn] <p>The ARN of the IAM role that Amazon Inspector uses to list your EC2 instances during the assessment run or when you call the <a>PreviewAgents</a> action. </p>
-- Required parameter: roleArn
function M.RegisterCrossAccountAccessRoleRequest(_roleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterCrossAccountAccessRoleRequest")
	local t = { 
		["roleArn"] = _roleArn,
	}
	asserts.AssertRegisterCrossAccountAccessRoleRequest(t)
	return t
end

keys.InternalException = { ["canRetry"] = true, ["message"] = true, nil }

function asserts.AssertInternalException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	assert(struct["canRetry"], "Expected key canRetry to exist in table")
	if struct["canRetry"] then asserts.AssertBool(struct["canRetry"]) end
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalException[k], "InternalException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalException
-- <p>Internal server error.</p>
-- @param _canRetry [Bool] <p>You can immediately retry your request.</p>
-- @param _message [ErrorMessage] <p>Details of the exception error.</p>
-- Required parameter: message
-- Required parameter: canRetry
function M.InternalException(_canRetry, _message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalException")
	local t = { 
		["canRetry"] = _canRetry,
		["message"] = _message,
	}
	asserts.AssertInternalException(t)
	return t
end

keys.TimestampRange = { ["beginDate"] = true, ["endDate"] = true, nil }

function asserts.AssertTimestampRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimestampRange to be of type 'table'")
	if struct["beginDate"] then asserts.AssertTimestamp(struct["beginDate"]) end
	if struct["endDate"] then asserts.AssertTimestamp(struct["endDate"]) end
	for k,_ in pairs(struct) do
		assert(keys.TimestampRange[k], "TimestampRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimestampRange
-- <p>This data type is used in the <a>AssessmentRunFilter</a> data type.</p>
-- @param _beginDate [Timestamp] <p>The minimum value of the timestamp range.</p>
-- @param _endDate [Timestamp] <p>The maximum value of the timestamp range.</p>
function M.TimestampRange(_beginDate, _endDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimestampRange")
	local t = { 
		["beginDate"] = _beginDate,
		["endDate"] = _endDate,
	}
	asserts.AssertTimestampRange(t)
	return t
end

keys.AssessmentTemplateFilter = { ["namePattern"] = true, ["durationRange"] = true, ["rulesPackageArns"] = true, nil }

function asserts.AssertAssessmentTemplateFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssessmentTemplateFilter to be of type 'table'")
	if struct["namePattern"] then asserts.AssertNamePattern(struct["namePattern"]) end
	if struct["durationRange"] then asserts.AssertDurationRange(struct["durationRange"]) end
	if struct["rulesPackageArns"] then asserts.AssertFilterRulesPackageArnList(struct["rulesPackageArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssessmentTemplateFilter[k], "AssessmentTemplateFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssessmentTemplateFilter
-- <p>Used as the request parameter in the <a>ListAssessmentTemplates</a> action.</p>
-- @param _namePattern [NamePattern] <p>For a record to match a filter, an explicit value or a string that contains a wildcard that is specified for this data type property must match the value of the <b>assessmentTemplateName</b> property of the <a>AssessmentTemplate</a> data type.</p>
-- @param _durationRange [DurationRange] <p>For a record to match a filter, the value specified for this data type property must inclusively match any value between the specified minimum and maximum values of the <b>durationInSeconds</b> property of the <a>AssessmentTemplate</a> data type.</p>
-- @param _rulesPackageArns [FilterRulesPackageArnList] <p>For a record to match a filter, the values that are specified for this data type property must be contained in the list of values of the <b>rulesPackageArns</b> property of the <a>AssessmentTemplate</a> data type.</p>
function M.AssessmentTemplateFilter(_namePattern, _durationRange, _rulesPackageArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssessmentTemplateFilter")
	local t = { 
		["namePattern"] = _namePattern,
		["durationRange"] = _durationRange,
		["rulesPackageArns"] = _rulesPackageArns,
	}
	asserts.AssertAssessmentTemplateFilter(t)
	return t
end

keys.ListAssessmentRunsResponse = { ["nextToken"] = true, ["assessmentRunArns"] = true, nil }

function asserts.AssertListAssessmentRunsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssessmentRunsResponse to be of type 'table'")
	assert(struct["assessmentRunArns"], "Expected key assessmentRunArns to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["assessmentRunArns"] then asserts.AssertListReturnedArnList(struct["assessmentRunArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAssessmentRunsResponse[k], "ListAssessmentRunsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssessmentRunsResponse
--  
-- @param _nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- @param _assessmentRunArns [ListReturnedArnList] <p>A list of ARNs that specifies the assessment runs that are returned by the action.</p>
-- Required parameter: assessmentRunArns
function M.ListAssessmentRunsResponse(_nextToken, _assessmentRunArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssessmentRunsResponse")
	local t = { 
		["nextToken"] = _nextToken,
		["assessmentRunArns"] = _assessmentRunArns,
	}
	asserts.AssertListAssessmentRunsResponse(t)
	return t
end

keys.DescribeCrossAccountAccessRoleResponse = { ["roleArn"] = true, ["valid"] = true, ["registeredAt"] = true, nil }

function asserts.AssertDescribeCrossAccountAccessRoleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCrossAccountAccessRoleResponse to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["valid"], "Expected key valid to exist in table")
	assert(struct["registeredAt"], "Expected key registeredAt to exist in table")
	if struct["roleArn"] then asserts.AssertArn(struct["roleArn"]) end
	if struct["valid"] then asserts.AssertBool(struct["valid"]) end
	if struct["registeredAt"] then asserts.AssertTimestamp(struct["registeredAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeCrossAccountAccessRoleResponse[k], "DescribeCrossAccountAccessRoleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCrossAccountAccessRoleResponse
--  
-- @param _roleArn [Arn] <p>The ARN that specifies the IAM role that Amazon Inspector uses to access your AWS account.</p>
-- @param _valid [Bool] <p>A Boolean value that specifies whether the IAM role has the necessary policies attached to enable Amazon Inspector to access your AWS account.</p>
-- @param _registeredAt [Timestamp] <p>The date when the cross-account access role was registered.</p>
-- Required parameter: roleArn
-- Required parameter: valid
-- Required parameter: registeredAt
function M.DescribeCrossAccountAccessRoleResponse(_roleArn, _valid, _registeredAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCrossAccountAccessRoleResponse")
	local t = { 
		["roleArn"] = _roleArn,
		["valid"] = _valid,
		["registeredAt"] = _registeredAt,
	}
	asserts.AssertDescribeCrossAccountAccessRoleResponse(t)
	return t
end

keys.ListRulesPackagesRequest = { ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListRulesPackagesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRulesPackagesRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertListMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListRulesPackagesRequest[k], "ListRulesPackagesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRulesPackagesRequest
--  
-- @param _nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>ListRulesPackages</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- @param _maxResults [ListMaxResults] <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.</p>
function M.ListRulesPackagesRequest(_nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRulesPackagesRequest")
	local t = { 
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
	}
	asserts.AssertListRulesPackagesRequest(t)
	return t
end

keys.CreateResourceGroupRequest = { ["resourceGroupTags"] = true, nil }

function asserts.AssertCreateResourceGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateResourceGroupRequest to be of type 'table'")
	assert(struct["resourceGroupTags"], "Expected key resourceGroupTags to exist in table")
	if struct["resourceGroupTags"] then asserts.AssertResourceGroupTags(struct["resourceGroupTags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateResourceGroupRequest[k], "CreateResourceGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateResourceGroupRequest
--  
-- @param _resourceGroupTags [ResourceGroupTags] <p>A collection of keys and an array of possible values, '[{"key":"key1","values":["Value1","Value2"]},{"key":"Key2","values":["Value3"]}]'.</p> <p>For example,'[{"key":"Name","values":["TestEC2Instance"]}]'.</p>
-- Required parameter: resourceGroupTags
function M.CreateResourceGroupRequest(_resourceGroupTags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateResourceGroupRequest")
	local t = { 
		["resourceGroupTags"] = _resourceGroupTags,
	}
	asserts.AssertCreateResourceGroupRequest(t)
	return t
end

keys.AssessmentRunStateChange = { ["state"] = true, ["stateChangedAt"] = true, nil }

function asserts.AssertAssessmentRunStateChange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssessmentRunStateChange to be of type 'table'")
	assert(struct["stateChangedAt"], "Expected key stateChangedAt to exist in table")
	assert(struct["state"], "Expected key state to exist in table")
	if struct["state"] then asserts.AssertAssessmentRunState(struct["state"]) end
	if struct["stateChangedAt"] then asserts.AssertTimestamp(struct["stateChangedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssessmentRunStateChange[k], "AssessmentRunStateChange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssessmentRunStateChange
-- <p>Used as one of the elements of the <a>AssessmentRun</a> data type.</p>
-- @param _state [AssessmentRunState] <p>The assessment run state.</p>
-- @param _stateChangedAt [Timestamp] <p>The last time the assessment run state changed.</p>
-- Required parameter: stateChangedAt
-- Required parameter: state
function M.AssessmentRunStateChange(_state, _stateChangedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssessmentRunStateChange")
	local t = { 
		["state"] = _state,
		["stateChangedAt"] = _stateChangedAt,
	}
	asserts.AssertAssessmentRunStateChange(t)
	return t
end

keys.DeleteAssessmentRunRequest = { ["assessmentRunArn"] = true, nil }

function asserts.AssertDeleteAssessmentRunRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAssessmentRunRequest to be of type 'table'")
	assert(struct["assessmentRunArn"], "Expected key assessmentRunArn to exist in table")
	if struct["assessmentRunArn"] then asserts.AssertArn(struct["assessmentRunArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteAssessmentRunRequest[k], "DeleteAssessmentRunRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAssessmentRunRequest
--  
-- @param _assessmentRunArn [Arn] <p>The ARN that specifies the assessment run that you want to delete.</p>
-- Required parameter: assessmentRunArn
function M.DeleteAssessmentRunRequest(_assessmentRunArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAssessmentRunRequest")
	local t = { 
		["assessmentRunArn"] = _assessmentRunArn,
	}
	asserts.AssertDeleteAssessmentRunRequest(t)
	return t
end

keys.PreviewAgentsRequest = { ["nextToken"] = true, ["maxResults"] = true, ["previewAgentsArn"] = true, nil }

function asserts.AssertPreviewAgentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PreviewAgentsRequest to be of type 'table'")
	assert(struct["previewAgentsArn"], "Expected key previewAgentsArn to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertPreviewAgentsMaxResults(struct["maxResults"]) end
	if struct["previewAgentsArn"] then asserts.AssertArn(struct["previewAgentsArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.PreviewAgentsRequest[k], "PreviewAgentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PreviewAgentsRequest
--  
-- @param _nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>PreviewAgents</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- @param _maxResults [PreviewAgentsMaxResults] <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.</p>
-- @param _previewAgentsArn [Arn] <p>The ARN of the assessment target whose agents you want to preview.</p>
-- Required parameter: previewAgentsArn
function M.PreviewAgentsRequest(_nextToken, _maxResults, _previewAgentsArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PreviewAgentsRequest")
	local t = { 
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
		["previewAgentsArn"] = _previewAgentsArn,
	}
	asserts.AssertPreviewAgentsRequest(t)
	return t
end

keys.CreateAssessmentTemplateRequest = { ["assessmentTargetArn"] = true, ["assessmentTemplateName"] = true, ["userAttributesForFindings"] = true, ["durationInSeconds"] = true, ["rulesPackageArns"] = true, nil }

function asserts.AssertCreateAssessmentTemplateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAssessmentTemplateRequest to be of type 'table'")
	assert(struct["assessmentTargetArn"], "Expected key assessmentTargetArn to exist in table")
	assert(struct["assessmentTemplateName"], "Expected key assessmentTemplateName to exist in table")
	assert(struct["durationInSeconds"], "Expected key durationInSeconds to exist in table")
	assert(struct["rulesPackageArns"], "Expected key rulesPackageArns to exist in table")
	if struct["assessmentTargetArn"] then asserts.AssertArn(struct["assessmentTargetArn"]) end
	if struct["assessmentTemplateName"] then asserts.AssertAssessmentTemplateName(struct["assessmentTemplateName"]) end
	if struct["userAttributesForFindings"] then asserts.AssertUserAttributeList(struct["userAttributesForFindings"]) end
	if struct["durationInSeconds"] then asserts.AssertAssessmentRunDuration(struct["durationInSeconds"]) end
	if struct["rulesPackageArns"] then asserts.AssertAssessmentTemplateRulesPackageArnList(struct["rulesPackageArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAssessmentTemplateRequest[k], "CreateAssessmentTemplateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAssessmentTemplateRequest
--  
-- @param _assessmentTargetArn [Arn] <p>The ARN that specifies the assessment target for which you want to create the assessment template.</p>
-- @param _assessmentTemplateName [AssessmentTemplateName] <p>The user-defined name that identifies the assessment template that you want to create. You can create several assessment templates for an assessment target. The names of the assessment templates that correspond to a particular assessment target must be unique.</p>
-- @param _userAttributesForFindings [UserAttributeList] <p>The user-defined attributes that are assigned to every finding that is generated by the assessment run that uses this assessment template.</p>
-- @param _durationInSeconds [AssessmentRunDuration] <p>The duration of the assessment run in seconds. The default value is 3600 seconds (one hour).</p>
-- @param _rulesPackageArns [AssessmentTemplateRulesPackageArnList] <p>The ARNs that specify the rules packages that you want to attach to the assessment template.</p>
-- Required parameter: assessmentTargetArn
-- Required parameter: assessmentTemplateName
-- Required parameter: durationInSeconds
-- Required parameter: rulesPackageArns
function M.CreateAssessmentTemplateRequest(_assessmentTargetArn, _assessmentTemplateName, _userAttributesForFindings, _durationInSeconds, _rulesPackageArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAssessmentTemplateRequest")
	local t = { 
		["assessmentTargetArn"] = _assessmentTargetArn,
		["assessmentTemplateName"] = _assessmentTemplateName,
		["userAttributesForFindings"] = _userAttributesForFindings,
		["durationInSeconds"] = _durationInSeconds,
		["rulesPackageArns"] = _rulesPackageArns,
	}
	asserts.AssertCreateAssessmentTemplateRequest(t)
	return t
end

keys.CreateAssessmentTemplateResponse = { ["assessmentTemplateArn"] = true, nil }

function asserts.AssertCreateAssessmentTemplateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAssessmentTemplateResponse to be of type 'table'")
	assert(struct["assessmentTemplateArn"], "Expected key assessmentTemplateArn to exist in table")
	if struct["assessmentTemplateArn"] then asserts.AssertArn(struct["assessmentTemplateArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAssessmentTemplateResponse[k], "CreateAssessmentTemplateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAssessmentTemplateResponse
--  
-- @param _assessmentTemplateArn [Arn] <p>The ARN that specifies the assessment template that is created.</p>
-- Required parameter: assessmentTemplateArn
function M.CreateAssessmentTemplateResponse(_assessmentTemplateArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAssessmentTemplateResponse")
	local t = { 
		["assessmentTemplateArn"] = _assessmentTemplateArn,
	}
	asserts.AssertCreateAssessmentTemplateResponse(t)
	return t
end

keys.DescribeAssessmentTargetsRequest = { ["assessmentTargetArns"] = true, nil }

function asserts.AssertDescribeAssessmentTargetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAssessmentTargetsRequest to be of type 'table'")
	assert(struct["assessmentTargetArns"], "Expected key assessmentTargetArns to exist in table")
	if struct["assessmentTargetArns"] then asserts.AssertBatchDescribeArnList(struct["assessmentTargetArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeAssessmentTargetsRequest[k], "DescribeAssessmentTargetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAssessmentTargetsRequest
--  
-- @param _assessmentTargetArns [BatchDescribeArnList] <p>The ARNs that specifies the assessment targets that you want to describe.</p>
-- Required parameter: assessmentTargetArns
function M.DescribeAssessmentTargetsRequest(_assessmentTargetArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAssessmentTargetsRequest")
	local t = { 
		["assessmentTargetArns"] = _assessmentTargetArns,
	}
	asserts.AssertDescribeAssessmentTargetsRequest(t)
	return t
end

keys.EventSubscription = { ["event"] = true, ["subscribedAt"] = true, nil }

function asserts.AssertEventSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventSubscription to be of type 'table'")
	assert(struct["event"], "Expected key event to exist in table")
	assert(struct["subscribedAt"], "Expected key subscribedAt to exist in table")
	if struct["event"] then asserts.AssertInspectorEvent(struct["event"]) end
	if struct["subscribedAt"] then asserts.AssertTimestamp(struct["subscribedAt"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventSubscription[k], "EventSubscription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventSubscription
-- <p>This data type is used in the <a>Subscription</a> data type.</p>
-- @param _event [InspectorEvent] <p>The event for which Amazon Simple Notification Service (SNS) notifications are sent.</p>
-- @param _subscribedAt [Timestamp] <p>The time at which <a>SubscribeToEvent</a> is called.</p>
-- Required parameter: event
-- Required parameter: subscribedAt
function M.EventSubscription(_event, _subscribedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventSubscription")
	local t = { 
		["event"] = _event,
		["subscribedAt"] = _subscribedAt,
	}
	asserts.AssertEventSubscription(t)
	return t
end

keys.ListAssessmentRunAgentsRequest = { ["filter"] = true, ["assessmentRunArn"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListAssessmentRunAgentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssessmentRunAgentsRequest to be of type 'table'")
	assert(struct["assessmentRunArn"], "Expected key assessmentRunArn to exist in table")
	if struct["filter"] then asserts.AssertAgentFilter(struct["filter"]) end
	if struct["assessmentRunArn"] then asserts.AssertArn(struct["assessmentRunArn"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertListMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAssessmentRunAgentsRequest[k], "ListAssessmentRunAgentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssessmentRunAgentsRequest
--  
-- @param _filter [AgentFilter] <p>You can use this parameter to specify a subset of data to be included in the action's response.</p> <p>For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.</p>
-- @param _assessmentRunArn [Arn] <p>The ARN that specifies the assessment run whose agents you want to list.</p>
-- @param _nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>ListAssessmentRunAgents</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- @param _maxResults [ListMaxResults] <p>You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 10. The maximum value is 500.</p>
-- Required parameter: assessmentRunArn
function M.ListAssessmentRunAgentsRequest(_filter, _assessmentRunArn, _nextToken, _maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssessmentRunAgentsRequest")
	local t = { 
		["filter"] = _filter,
		["assessmentRunArn"] = _assessmentRunArn,
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
	}
	asserts.AssertListAssessmentRunAgentsRequest(t)
	return t
end

keys.ListAssessmentRunsRequest = { ["filter"] = true, ["nextToken"] = true, ["maxResults"] = true, ["assessmentTemplateArns"] = true, nil }

function asserts.AssertListAssessmentRunsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssessmentRunsRequest to be of type 'table'")
	if struct["filter"] then asserts.AssertAssessmentRunFilter(struct["filter"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertListMaxResults(struct["maxResults"]) end
	if struct["assessmentTemplateArns"] then asserts.AssertListParentArnList(struct["assessmentTemplateArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListAssessmentRunsRequest[k], "ListAssessmentRunsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssessmentRunsRequest
--  
-- @param _filter [AssessmentRunFilter] <p>You can use this parameter to specify a subset of data to be included in the action's response.</p> <p>For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.</p>
-- @param _nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>ListAssessmentRuns</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- @param _maxResults [ListMaxResults] <p>You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 10. The maximum value is 500.</p>
-- @param _assessmentTemplateArns [ListParentArnList] <p>The ARNs that specify the assessment templates whose assessment runs you want to list.</p>
function M.ListAssessmentRunsRequest(_filter, _nextToken, _maxResults, _assessmentTemplateArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssessmentRunsRequest")
	local t = { 
		["filter"] = _filter,
		["nextToken"] = _nextToken,
		["maxResults"] = _maxResults,
		["assessmentTemplateArns"] = _assessmentTemplateArns,
	}
	asserts.AssertListAssessmentRunsRequest(t)
	return t
end

function asserts.AssertSeverity(str)
	assert(str)
	assert(type(str) == "string", "Expected Severity to be of type 'string'")
end

--  
function M.Severity(str)
	asserts.AssertSeverity(str)
	return str
end

function asserts.AssertFindingId(str)
	assert(str)
	assert(type(str) == "string", "Expected FindingId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.FindingId(str)
	asserts.AssertFindingId(str)
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

function asserts.AssertLimitExceededErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected LimitExceededErrorCode to be of type 'string'")
end

--  
function M.LimitExceededErrorCode(str)
	asserts.AssertLimitExceededErrorCode(str)
	return str
end

function asserts.AssertMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageType to be of type 'string'")
	assert(#str <= 300, "Expected string to be max 300 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MessageType(str)
	asserts.AssertMessageType(str)
	return str
end

function asserts.AssertAgentHealthCode(str)
	assert(str)
	assert(type(str) == "string", "Expected AgentHealthCode to be of type 'string'")
end

--  
function M.AgentHealthCode(str)
	asserts.AssertAgentHealthCode(str)
	return str
end

function asserts.AssertNoSuchEntityErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected NoSuchEntityErrorCode to be of type 'string'")
end

--  
function M.NoSuchEntityErrorCode(str)
	asserts.AssertNoSuchEntityErrorCode(str)
	return str
end

function asserts.AssertAssessmentRunState(str)
	assert(str)
	assert(type(str) == "string", "Expected AssessmentRunState to be of type 'string'")
end

--  
function M.AssessmentRunState(str)
	asserts.AssertAssessmentRunState(str)
	return str
end

function asserts.AssertAttributeKey(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AttributeKey(str)
	asserts.AssertAttributeKey(str)
	return str
end

function asserts.AssertAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AttributeValue(str)
	asserts.AssertAttributeValue(str)
	return str
end

function asserts.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
	assert(#str <= 300, "Expected string to be max 300 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Arn(str)
	asserts.AssertArn(str)
	return str
end

function asserts.AssertInspectorEvent(str)
	assert(str)
	assert(type(str) == "string", "Expected InspectorEvent to be of type 'string'")
end

--  
function M.InspectorEvent(str)
	asserts.AssertInspectorEvent(str)
	return str
end

function asserts.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
	assert(#str <= 300, "Expected string to be max 300 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PaginationToken(str)
	asserts.AssertPaginationToken(str)
	return str
end

function asserts.AssertAutoScalingGroup(str)
	assert(str)
	assert(type(str) == "string", "Expected AutoScalingGroup to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AutoScalingGroup(str)
	asserts.AssertAutoScalingGroup(str)
	return str
end

function asserts.AssertFailedItemErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected FailedItemErrorCode to be of type 'string'")
end

--  
function M.FailedItemErrorCode(str)
	asserts.AssertFailedItemErrorCode(str)
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

function asserts.AssertAgentId(str)
	assert(str)
	assert(type(str) == "string", "Expected AgentId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AgentId(str)
	asserts.AssertAgentId(str)
	return str
end

function asserts.AssertText(str)
	assert(str)
	assert(type(str) == "string", "Expected Text to be of type 'string'")
	assert(#str <= 20000, "Expected string to be max 20000 characters")
end

--  
function M.Text(str)
	asserts.AssertText(str)
	return str
end

function asserts.AssertAssetType(str)
	assert(str)
	assert(type(str) == "string", "Expected AssetType to be of type 'string'")
end

--  
function M.AssetType(str)
	asserts.AssertAssetType(str)
	return str
end

function asserts.AssertServiceName(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.ServiceName(str)
	asserts.AssertServiceName(str)
	return str
end

function asserts.AssertReportType(str)
	assert(str)
	assert(type(str) == "string", "Expected ReportType to be of type 'string'")
end

--  
function M.ReportType(str)
	asserts.AssertReportType(str)
	return str
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertNamePattern(str)
	assert(str)
	assert(type(str) == "string", "Expected NamePattern to be of type 'string'")
	assert(#str <= 140, "Expected string to be max 140 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NamePattern(str)
	asserts.AssertNamePattern(str)
	return str
end

function asserts.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.Message(str)
	asserts.AssertMessage(str)
	return str
end

function asserts.AssertHostname(str)
	assert(str)
	assert(type(str) == "string", "Expected Hostname to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.Hostname(str)
	asserts.AssertHostname(str)
	return str
end

function asserts.AssertAssessmentTemplateName(str)
	assert(str)
	assert(type(str) == "string", "Expected AssessmentTemplateName to be of type 'string'")
	assert(#str <= 140, "Expected string to be max 140 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AssessmentTemplateName(str)
	asserts.AssertAssessmentTemplateName(str)
	return str
end

function asserts.AssertIpv4Address(str)
	assert(str)
	assert(type(str) == "string", "Expected Ipv4Address to be of type 'string'")
	assert(#str <= 15, "Expected string to be max 15 characters")
	assert(#str >= 7, "Expected string to be min 7 characters")
end

--  
function M.Ipv4Address(str)
	asserts.AssertIpv4Address(str)
	return str
end

function asserts.AssertAmiId(str)
	assert(str)
	assert(type(str) == "string", "Expected AmiId to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.AmiId(str)
	asserts.AssertAmiId(str)
	return str
end

function asserts.AssertAssessmentRunName(str)
	assert(str)
	assert(type(str) == "string", "Expected AssessmentRunName to be of type 'string'")
	assert(#str <= 140, "Expected string to be max 140 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AssessmentRunName(str)
	asserts.AssertAssessmentRunName(str)
	return str
end

function asserts.AssertInvalidInputErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected InvalidInputErrorCode to be of type 'string'")
end

--  
function M.InvalidInputErrorCode(str)
	asserts.AssertInvalidInputErrorCode(str)
	return str
end

function asserts.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.Version(str)
	asserts.AssertVersion(str)
	return str
end

function asserts.AssertAgentHealth(str)
	assert(str)
	assert(type(str) == "string", "Expected AgentHealth to be of type 'string'")
end

--  
function M.AgentHealth(str)
	asserts.AssertAgentHealth(str)
	return str
end

function asserts.AssertProviderName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProviderName to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.ProviderName(str)
	asserts.AssertProviderName(str)
	return str
end

function asserts.AssertAccessDeniedErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessDeniedErrorCode to be of type 'string'")
end

--  
function M.AccessDeniedErrorCode(str)
	asserts.AssertAccessDeniedErrorCode(str)
	return str
end

function asserts.AssertInvalidCrossAccountRoleErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected InvalidCrossAccountRoleErrorCode to be of type 'string'")
end

--  
function M.InvalidCrossAccountRoleErrorCode(str)
	asserts.AssertInvalidCrossAccountRoleErrorCode(str)
	return str
end

function asserts.AssertReportStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ReportStatus to be of type 'string'")
end

--  
function M.ReportStatus(str)
	asserts.AssertReportStatus(str)
	return str
end

function asserts.AssertReportFileFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected ReportFileFormat to be of type 'string'")
end

--  
function M.ReportFileFormat(str)
	asserts.AssertReportFileFormat(str)
	return str
end

function asserts.AssertUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected Url to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.Url(str)
	asserts.AssertUrl(str)
	return str
end

function asserts.AssertRulesPackageName(str)
	assert(str)
	assert(type(str) == "string", "Expected RulesPackageName to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.RulesPackageName(str)
	asserts.AssertRulesPackageName(str)
	return str
end

function asserts.AssertLocale(str)
	assert(str)
	assert(type(str) == "string", "Expected Locale to be of type 'string'")
end

--  
function M.Locale(str)
	asserts.AssertLocale(str)
	return str
end

function asserts.AssertAssessmentTargetName(str)
	assert(str)
	assert(type(str) == "string", "Expected AssessmentTargetName to be of type 'string'")
	assert(#str <= 140, "Expected string to be max 140 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AssessmentTargetName(str)
	asserts.AssertAssessmentTargetName(str)
	return str
end

function asserts.AssertAssessmentRunNotificationSnsStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected AssessmentRunNotificationSnsStatusCode to be of type 'string'")
end

--  
function M.AssessmentRunNotificationSnsStatusCode(str)
	asserts.AssertAssessmentRunNotificationSnsStatusCode(str)
	return str
end

function asserts.AssertRuleName(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleName to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.RuleName(str)
	asserts.AssertRuleName(str)
	return str
end

function asserts.AssertNumericSeverity(double)
	assert(double)
	assert(type(double) == "number", "Expected NumericSeverity to be of type 'number'")
end

function M.NumericSeverity(double)
	asserts.AssertNumericSeverity(double)
	return double
end

function asserts.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	asserts.AssertLong(long)
	return long
end

function asserts.AssertPreviewAgentsMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PreviewAgentsMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PreviewAgentsMaxResults(integer)
	asserts.AssertPreviewAgentsMaxResults(integer)
	return integer
end

function asserts.AssertFindingCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected FindingCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.FindingCount(integer)
	asserts.AssertFindingCount(integer)
	return integer
end

function asserts.AssertListMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ListMaxResults(integer)
	asserts.AssertListMaxResults(integer)
	return integer
end

function asserts.AssertAssessmentRunDuration(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected AssessmentRunDuration to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 86400, "Expected integer to be max 86400")
	assert(integer >= 180, "Expected integer to be min 180")
end

function M.AssessmentRunDuration(integer)
	asserts.AssertAssessmentRunDuration(integer)
	return integer
end

function asserts.AssertListEventSubscriptionsMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListEventSubscriptionsMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ListEventSubscriptionsMaxResults(integer)
	asserts.AssertListEventSubscriptionsMaxResults(integer)
	return integer
end

function asserts.AssertNumericVersion(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NumericVersion to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.NumericVersion(integer)
	asserts.AssertNumericVersion(integer)
	return integer
end

function asserts.AssertIocConfidence(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected IocConfidence to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
end

function M.IocConfidence(integer)
	asserts.AssertIocConfidence(integer)
	return integer
end

function asserts.AssertBool(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Bool to be of type 'boolean'")
end

function M.Bool(boolean)
	asserts.AssertBool(boolean)
	return boolean
end

function asserts.AssertFailedItems(map)
	assert(map)
	assert(type(map) == "table", "Expected FailedItems to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertArn(k)
		asserts.AssertFailedItemDetails(v)
	end
end

function M.FailedItems(map)
	asserts.AssertFailedItems(map)
	return map
end

function asserts.AssertAssessmentRunFindingCounts(map)
	assert(map)
	assert(type(map) == "table", "Expected AssessmentRunFindingCounts to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertSeverity(k)
		asserts.AssertFindingCount(v)
	end
end

function M.AssessmentRunFindingCounts(map)
	asserts.AssertAssessmentRunFindingCounts(map)
	return map
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertIpv4AddressList(list)
	assert(list)
	assert(type(list) == "table", "Expected Ipv4AddressList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertIpv4Address(v)
	end
end

--  
-- List of Ipv4Address objects
function M.Ipv4AddressList(list)
	asserts.AssertIpv4AddressList(list)
	return list
end

function asserts.AssertAssessmentRulesPackageArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssessmentRulesPackageArnList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertArn(v)
	end
end

--  
-- List of Arn objects
function M.AssessmentRulesPackageArnList(list)
	asserts.AssertAssessmentRulesPackageArnList(list)
	return list
end

function asserts.AssertAgentAlreadyRunningAssessmentList(list)
	assert(list)
	assert(type(list) == "table", "Expected AgentAlreadyRunningAssessmentList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertAgentAlreadyRunningAssessment(v)
	end
end

--  
-- List of AgentAlreadyRunningAssessment objects
function M.AgentAlreadyRunningAssessmentList(list)
	asserts.AssertAgentAlreadyRunningAssessmentList(list)
	return list
end

function asserts.AssertAssessmentRunStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssessmentRunStateList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertAssessmentRunState(v)
	end
end

--  
-- List of AssessmentRunState objects
function M.AssessmentRunStateList(list)
	asserts.AssertAssessmentRunStateList(list)
	return list
end

function asserts.AssertAutoScalingGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected AutoScalingGroupList to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		asserts.AssertAutoScalingGroup(v)
	end
end

--  
-- List of AutoScalingGroup objects
function M.AutoScalingGroupList(list)
	asserts.AssertAutoScalingGroupList(list)
	return list
end

function asserts.AssertAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertAttribute(v)
	end
end

--  
-- List of Attribute objects
function M.AttributeList(list)
	asserts.AssertAttributeList(list)
	return list
end

function asserts.AssertEventSubscriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventSubscriptionList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertEventSubscription(v)
	end
end

--  
-- List of EventSubscription objects
function M.EventSubscriptionList(list)
	asserts.AssertEventSubscriptionList(list)
	return list
end

function asserts.AssertRuleNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected RuleNameList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
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

function asserts.AssertResourceGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceGroupList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertResourceGroup(v)
	end
end

--  
-- List of ResourceGroup objects
function M.ResourceGroupList(list)
	asserts.AssertResourceGroupList(list)
	return list
end

function asserts.AssertAssessmentRunList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssessmentRunList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertAssessmentRun(v)
	end
end

--  
-- List of AssessmentRun objects
function M.AssessmentRunList(list)
	asserts.AssertAssessmentRunList(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
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

function asserts.AssertRulesPackageList(list)
	assert(list)
	assert(type(list) == "table", "Expected RulesPackageList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertRulesPackage(v)
	end
end

--  
-- List of RulesPackage objects
function M.RulesPackageList(list)
	asserts.AssertRulesPackageList(list)
	return list
end

function asserts.AssertSeverityList(list)
	assert(list)
	assert(type(list) == "table", "Expected SeverityList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertSeverity(v)
	end
end

--  
-- List of Severity objects
function M.SeverityList(list)
	asserts.AssertSeverityList(list)
	return list
end

function asserts.AssertAssessmentTemplateList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssessmentTemplateList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertAssessmentTemplate(v)
	end
end

--  
-- List of AssessmentTemplate objects
function M.AssessmentTemplateList(list)
	asserts.AssertAssessmentTemplateList(list)
	return list
end

function asserts.AssertAssessmentRunInProgressArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssessmentRunInProgressArnList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertArn(v)
	end
end

--  
-- List of Arn objects
function M.AssessmentRunInProgressArnList(list)
	asserts.AssertAssessmentRunInProgressArnList(list)
	return list
end

function asserts.AssertListReturnedArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected ListReturnedArnList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertArn(v)
	end
end

--  
-- List of Arn objects
function M.ListReturnedArnList(list)
	asserts.AssertListReturnedArnList(list)
	return list
end

function asserts.AssertAddRemoveAttributesFindingArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected AddRemoveAttributesFindingArnList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertArn(v)
	end
end

--  
-- List of Arn objects
function M.AddRemoveAttributesFindingArnList(list)
	asserts.AssertAddRemoveAttributesFindingArnList(list)
	return list
end

function asserts.AssertFindingList(list)
	assert(list)
	assert(type(list) == "table", "Expected FindingList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertFinding(v)
	end
end

--  
-- List of Finding objects
function M.FindingList(list)
	asserts.AssertFindingList(list)
	return list
end

function asserts.AssertAgentHealthCodeList(list)
	assert(list)
	assert(type(list) == "table", "Expected AgentHealthCodeList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertAgentHealthCode(v)
	end
end

--  
-- List of AgentHealthCode objects
function M.AgentHealthCodeList(list)
	asserts.AssertAgentHealthCodeList(list)
	return list
end

function asserts.AssertAgentHealthList(list)
	assert(list)
	assert(type(list) == "table", "Expected AgentHealthList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertAgentHealth(v)
	end
end

--  
-- List of AgentHealth objects
function M.AgentHealthList(list)
	asserts.AssertAgentHealthList(list)
	return list
end

function asserts.AssertAgentIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected AgentIdList to be of type ''table")
	assert(#list <= 500, "Expected list to be contain 500 elements")
	for _,v in ipairs(list) do
		asserts.AssertAgentId(v)
	end
end

--  
-- List of AgentId objects
function M.AgentIdList(list)
	asserts.AssertAgentIdList(list)
	return list
end

function asserts.AssertFilterRulesPackageArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected FilterRulesPackageArnList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertArn(v)
	end
end

--  
-- List of Arn objects
function M.FilterRulesPackageArnList(list)
	asserts.AssertFilterRulesPackageArnList(list)
	return list
end

function asserts.AssertAssessmentRunStateChangeList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssessmentRunStateChangeList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertAssessmentRunStateChange(v)
	end
end

--  
-- List of AssessmentRunStateChange objects
function M.AssessmentRunStateChangeList(list)
	asserts.AssertAssessmentRunStateChangeList(list)
	return list
end

function asserts.AssertTelemetryMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected TelemetryMetadataList to be of type ''table")
	assert(#list <= 5000, "Expected list to be contain 5000 elements")
	for _,v in ipairs(list) do
		asserts.AssertTelemetryMetadata(v)
	end
end

--  
-- List of TelemetryMetadata objects
function M.TelemetryMetadataList(list)
	asserts.AssertTelemetryMetadataList(list)
	return list
end

function asserts.AssertAssessmentRunNotificationList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssessmentRunNotificationList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertAssessmentRunNotification(v)
	end
end

--  
-- List of AssessmentRunNotification objects
function M.AssessmentRunNotificationList(list)
	asserts.AssertAssessmentRunNotificationList(list)
	return list
end

function asserts.AssertAssessmentRunAgentList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssessmentRunAgentList to be of type ''table")
	assert(#list <= 500, "Expected list to be contain 500 elements")
	for _,v in ipairs(list) do
		asserts.AssertAssessmentRunAgent(v)
	end
end

--  
-- List of AssessmentRunAgent objects
function M.AssessmentRunAgentList(list)
	asserts.AssertAssessmentRunAgentList(list)
	return list
end

function asserts.AssertBatchDescribeArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchDescribeArnList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertArn(v)
	end
end

--  
-- List of Arn objects
function M.BatchDescribeArnList(list)
	asserts.AssertBatchDescribeArnList(list)
	return list
end

function asserts.AssertListParentArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected ListParentArnList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertArn(v)
	end
end

--  
-- List of Arn objects
function M.ListParentArnList(list)
	asserts.AssertListParentArnList(list)
	return list
end

function asserts.AssertAssessmentTemplateRulesPackageArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssessmentTemplateRulesPackageArnList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertArn(v)
	end
end

--  
-- List of Arn objects
function M.AssessmentTemplateRulesPackageArnList(list)
	asserts.AssertAssessmentTemplateRulesPackageArnList(list)
	return list
end

function asserts.AssertSubscriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubscriptionList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertSubscription(v)
	end
end

--  
-- List of Subscription objects
function M.SubscriptionList(list)
	asserts.AssertSubscriptionList(list)
	return list
end

function asserts.AssertUserAttributeKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected UserAttributeKeyList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertAttributeKey(v)
	end
end

--  
-- List of AttributeKey objects
function M.UserAttributeKeyList(list)
	asserts.AssertUserAttributeKeyList(list)
	return list
end

function asserts.AssertAgentPreviewList(list)
	assert(list)
	assert(type(list) == "table", "Expected AgentPreviewList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertAgentPreview(v)
	end
end

--  
-- List of AgentPreview objects
function M.AgentPreviewList(list)
	asserts.AssertAgentPreviewList(list)
	return list
end

function asserts.AssertUserAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected UserAttributeList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertAttribute(v)
	end
end

--  
-- List of Attribute objects
function M.UserAttributeList(list)
	asserts.AssertUserAttributeList(list)
	return list
end

function asserts.AssertAssessmentTargetList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssessmentTargetList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertAssessmentTarget(v)
	end
end

--  
-- List of AssessmentTarget objects
function M.AssessmentTargetList(list)
	asserts.AssertAssessmentTargetList(list)
	return list
end

function asserts.AssertResourceGroupTags(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceGroupTags to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertResourceGroupTag(v)
	end
end

--  
-- List of ResourceGroupTag objects
function M.ResourceGroupTags(list)
	asserts.AssertResourceGroupTags(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "inspector.amazonaws.com"
		end
	end
	local ss = { "inspector" }
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
	settings.uri = scheme_mapper.from_string(config.scheme) .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call DeleteAssessmentTarget asynchronously, invoking a callback when done
-- @param DeleteAssessmentTargetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAssessmentTargetAsync(DeleteAssessmentTargetRequest, cb)
	assert(DeleteAssessmentTargetRequest, "You must provide a DeleteAssessmentTargetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.DeleteAssessmentTarget",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteAssessmentTargetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAssessmentTarget synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAssessmentTargetRequest
-- @return response
-- @return error_message
function M.DeleteAssessmentTargetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAssessmentTargetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAssessmentTarget asynchronously, invoking a callback when done
-- @param UpdateAssessmentTargetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAssessmentTargetAsync(UpdateAssessmentTargetRequest, cb)
	assert(UpdateAssessmentTargetRequest, "You must provide a UpdateAssessmentTargetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.UpdateAssessmentTarget",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateAssessmentTargetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateAssessmentTarget synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateAssessmentTargetRequest
-- @return response
-- @return error_message
function M.UpdateAssessmentTargetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAssessmentTargetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveAttributesFromFindings asynchronously, invoking a callback when done
-- @param RemoveAttributesFromFindingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveAttributesFromFindingsAsync(RemoveAttributesFromFindingsRequest, cb)
	assert(RemoveAttributesFromFindingsRequest, "You must provide a RemoveAttributesFromFindingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.RemoveAttributesFromFindings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveAttributesFromFindingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveAttributesFromFindings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveAttributesFromFindingsRequest
-- @return response
-- @return error_message
function M.RemoveAttributesFromFindingsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveAttributesFromFindingsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTelemetryMetadata asynchronously, invoking a callback when done
-- @param GetTelemetryMetadataRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetTelemetryMetadataAsync(GetTelemetryMetadataRequest, cb)
	assert(GetTelemetryMetadataRequest, "You must provide a GetTelemetryMetadataRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.GetTelemetryMetadata",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetTelemetryMetadataRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTelemetryMetadata synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTelemetryMetadataRequest
-- @return response
-- @return error_message
function M.GetTelemetryMetadataSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTelemetryMetadataAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAssessmentRuns asynchronously, invoking a callback when done
-- @param DescribeAssessmentRunsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAssessmentRunsAsync(DescribeAssessmentRunsRequest, cb)
	assert(DescribeAssessmentRunsRequest, "You must provide a DescribeAssessmentRunsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeAssessmentRuns",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAssessmentRunsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAssessmentRuns synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAssessmentRunsRequest
-- @return response
-- @return error_message
function M.DescribeAssessmentRunsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAssessmentRunsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StartAssessmentRun asynchronously, invoking a callback when done
-- @param StartAssessmentRunRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartAssessmentRunAsync(StartAssessmentRunRequest, cb)
	assert(StartAssessmentRunRequest, "You must provide a StartAssessmentRunRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.StartAssessmentRun",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", StartAssessmentRunRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartAssessmentRun synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartAssessmentRunRequest
-- @return response
-- @return error_message
function M.StartAssessmentRunSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartAssessmentRunAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCrossAccountAccessRole asynchronously, invoking a callback when done
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCrossAccountAccessRoleAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeCrossAccountAccessRole",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCrossAccountAccessRole synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_message
function M.DescribeCrossAccountAccessRoleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCrossAccountAccessRoleAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAssessmentTargets asynchronously, invoking a callback when done
-- @param DescribeAssessmentTargetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAssessmentTargetsAsync(DescribeAssessmentTargetsRequest, cb)
	assert(DescribeAssessmentTargetsRequest, "You must provide a DescribeAssessmentTargetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeAssessmentTargets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAssessmentTargetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAssessmentTargets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAssessmentTargetsRequest
-- @return response
-- @return error_message
function M.DescribeAssessmentTargetsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAssessmentTargetsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRulesPackages asynchronously, invoking a callback when done
-- @param ListRulesPackagesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListRulesPackagesAsync(ListRulesPackagesRequest, cb)
	assert(ListRulesPackagesRequest, "You must provide a ListRulesPackagesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.ListRulesPackages",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListRulesPackagesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListRulesPackages synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListRulesPackagesRequest
-- @return response
-- @return error_message
function M.ListRulesPackagesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRulesPackagesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call StopAssessmentRun asynchronously, invoking a callback when done
-- @param StopAssessmentRunRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopAssessmentRunAsync(StopAssessmentRunRequest, cb)
	assert(StopAssessmentRunRequest, "You must provide a StopAssessmentRunRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.StopAssessmentRun",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", StopAssessmentRunRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopAssessmentRun synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopAssessmentRunRequest
-- @return response
-- @return error_message
function M.StopAssessmentRunSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopAssessmentRunAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAssessmentTemplates asynchronously, invoking a callback when done
-- @param ListAssessmentTemplatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAssessmentTemplatesAsync(ListAssessmentTemplatesRequest, cb)
	assert(ListAssessmentTemplatesRequest, "You must provide a ListAssessmentTemplatesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.ListAssessmentTemplates",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAssessmentTemplatesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAssessmentTemplates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAssessmentTemplatesRequest
-- @return response
-- @return error_message
function M.ListAssessmentTemplatesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAssessmentTemplatesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeFindings asynchronously, invoking a callback when done
-- @param DescribeFindingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeFindingsAsync(DescribeFindingsRequest, cb)
	assert(DescribeFindingsRequest, "You must provide a DescribeFindingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeFindings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeFindingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeFindings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeFindingsRequest
-- @return response
-- @return error_message
function M.DescribeFindingsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeFindingsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAssessmentTemplate asynchronously, invoking a callback when done
-- @param DeleteAssessmentTemplateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAssessmentTemplateAsync(DeleteAssessmentTemplateRequest, cb)
	assert(DeleteAssessmentTemplateRequest, "You must provide a DeleteAssessmentTemplateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.DeleteAssessmentTemplate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteAssessmentTemplateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAssessmentTemplate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAssessmentTemplateRequest
-- @return response
-- @return error_message
function M.DeleteAssessmentTemplateSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAssessmentTemplateAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeResourceGroups asynchronously, invoking a callback when done
-- @param DescribeResourceGroupsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeResourceGroupsAsync(DescribeResourceGroupsRequest, cb)
	assert(DescribeResourceGroupsRequest, "You must provide a DescribeResourceGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeResourceGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeResourceGroupsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeResourceGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeResourceGroupsRequest
-- @return response
-- @return error_message
function M.DescribeResourceGroupsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeResourceGroupsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListFindings asynchronously, invoking a callback when done
-- @param ListFindingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListFindingsAsync(ListFindingsRequest, cb)
	assert(ListFindingsRequest, "You must provide a ListFindingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.ListFindings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListFindingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListFindings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListFindingsRequest
-- @return response
-- @return error_message
function M.ListFindingsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListFindingsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListEventSubscriptions asynchronously, invoking a callback when done
-- @param ListEventSubscriptionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListEventSubscriptionsAsync(ListEventSubscriptionsRequest, cb)
	assert(ListEventSubscriptionsRequest, "You must provide a ListEventSubscriptionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.ListEventSubscriptions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListEventSubscriptionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListEventSubscriptions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListEventSubscriptionsRequest
-- @return response
-- @return error_message
function M.ListEventSubscriptionsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListEventSubscriptionsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAssessmentTargets asynchronously, invoking a callback when done
-- @param ListAssessmentTargetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAssessmentTargetsAsync(ListAssessmentTargetsRequest, cb)
	assert(ListAssessmentTargetsRequest, "You must provide a ListAssessmentTargetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.ListAssessmentTargets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAssessmentTargetsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAssessmentTargets synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAssessmentTargetsRequest
-- @return response
-- @return error_message
function M.ListAssessmentTargetsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAssessmentTargetsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SetTagsForResource asynchronously, invoking a callback when done
-- @param SetTagsForResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetTagsForResourceAsync(SetTagsForResourceRequest, cb)
	assert(SetTagsForResourceRequest, "You must provide a SetTagsForResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.SetTagsForResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", SetTagsForResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SetTagsForResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SetTagsForResourceRequest
-- @return response
-- @return error_message
function M.SetTagsForResourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetTagsForResourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAssessmentRun asynchronously, invoking a callback when done
-- @param DeleteAssessmentRunRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAssessmentRunAsync(DeleteAssessmentRunRequest, cb)
	assert(DeleteAssessmentRunRequest, "You must provide a DeleteAssessmentRunRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.DeleteAssessmentRun",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteAssessmentRunRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteAssessmentRun synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteAssessmentRunRequest
-- @return response
-- @return error_message
function M.DeleteAssessmentRunSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAssessmentRunAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAssessmentTarget asynchronously, invoking a callback when done
-- @param CreateAssessmentTargetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAssessmentTargetAsync(CreateAssessmentTargetRequest, cb)
	assert(CreateAssessmentTargetRequest, "You must provide a CreateAssessmentTargetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.CreateAssessmentTarget",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateAssessmentTargetRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateAssessmentTarget synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAssessmentTargetRequest
-- @return response
-- @return error_message
function M.CreateAssessmentTargetSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAssessmentTargetAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call UnsubscribeFromEvent asynchronously, invoking a callback when done
-- @param UnsubscribeFromEventRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UnsubscribeFromEventAsync(UnsubscribeFromEventRequest, cb)
	assert(UnsubscribeFromEventRequest, "You must provide a UnsubscribeFromEventRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.UnsubscribeFromEvent",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", UnsubscribeFromEventRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UnsubscribeFromEvent synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UnsubscribeFromEventRequest
-- @return response
-- @return error_message
function M.UnsubscribeFromEventSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UnsubscribeFromEventAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAssessmentRuns asynchronously, invoking a callback when done
-- @param ListAssessmentRunsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAssessmentRunsAsync(ListAssessmentRunsRequest, cb)
	assert(ListAssessmentRunsRequest, "You must provide a ListAssessmentRunsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.ListAssessmentRuns",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAssessmentRunsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAssessmentRuns synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAssessmentRunsRequest
-- @return response
-- @return error_message
function M.ListAssessmentRunsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAssessmentRunsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterCrossAccountAccessRole asynchronously, invoking a callback when done
-- @param RegisterCrossAccountAccessRoleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterCrossAccountAccessRoleAsync(RegisterCrossAccountAccessRoleRequest, cb)
	assert(RegisterCrossAccountAccessRoleRequest, "You must provide a RegisterCrossAccountAccessRoleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.RegisterCrossAccountAccessRole",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", RegisterCrossAccountAccessRoleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RegisterCrossAccountAccessRole synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RegisterCrossAccountAccessRoleRequest
-- @return response
-- @return error_message
function M.RegisterCrossAccountAccessRoleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterCrossAccountAccessRoleAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call AddAttributesToFindings asynchronously, invoking a callback when done
-- @param AddAttributesToFindingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddAttributesToFindingsAsync(AddAttributesToFindingsRequest, cb)
	assert(AddAttributesToFindingsRequest, "You must provide a AddAttributesToFindingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.AddAttributesToFindings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", AddAttributesToFindingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddAttributesToFindings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddAttributesToFindingsRequest
-- @return response
-- @return error_message
function M.AddAttributesToFindingsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddAttributesToFindingsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateResourceGroup asynchronously, invoking a callback when done
-- @param CreateResourceGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateResourceGroupAsync(CreateResourceGroupRequest, cb)
	assert(CreateResourceGroupRequest, "You must provide a CreateResourceGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.CreateResourceGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateResourceGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateResourceGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateResourceGroupRequest
-- @return response
-- @return error_message
function M.CreateResourceGroupSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateResourceGroupAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAssessmentTemplates asynchronously, invoking a callback when done
-- @param DescribeAssessmentTemplatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAssessmentTemplatesAsync(DescribeAssessmentTemplatesRequest, cb)
	assert(DescribeAssessmentTemplatesRequest, "You must provide a DescribeAssessmentTemplatesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeAssessmentTemplates",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeAssessmentTemplatesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeAssessmentTemplates synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeAssessmentTemplatesRequest
-- @return response
-- @return error_message
function M.DescribeAssessmentTemplatesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAssessmentTemplatesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call PreviewAgents asynchronously, invoking a callback when done
-- @param PreviewAgentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PreviewAgentsAsync(PreviewAgentsRequest, cb)
	assert(PreviewAgentsRequest, "You must provide a PreviewAgentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.PreviewAgents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", PreviewAgentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PreviewAgents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PreviewAgentsRequest
-- @return response
-- @return error_message
function M.PreviewAgentsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PreviewAgentsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAssessmentTemplate asynchronously, invoking a callback when done
-- @param CreateAssessmentTemplateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAssessmentTemplateAsync(CreateAssessmentTemplateRequest, cb)
	assert(CreateAssessmentTemplateRequest, "You must provide a CreateAssessmentTemplateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.CreateAssessmentTemplate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateAssessmentTemplateRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateAssessmentTemplate synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateAssessmentTemplateRequest
-- @return response
-- @return error_message
function M.CreateAssessmentTemplateSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAssessmentTemplateAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call SubscribeToEvent asynchronously, invoking a callback when done
-- @param SubscribeToEventRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SubscribeToEventAsync(SubscribeToEventRequest, cb)
	assert(SubscribeToEventRequest, "You must provide a SubscribeToEventRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.SubscribeToEvent",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", SubscribeToEventRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call SubscribeToEvent synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param SubscribeToEventRequest
-- @return response
-- @return error_message
function M.SubscribeToEventSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SubscribeToEventAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeRulesPackages asynchronously, invoking a callback when done
-- @param DescribeRulesPackagesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeRulesPackagesAsync(DescribeRulesPackagesRequest, cb)
	assert(DescribeRulesPackagesRequest, "You must provide a DescribeRulesPackagesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeRulesPackages",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeRulesPackagesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeRulesPackages synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeRulesPackagesRequest
-- @return response
-- @return error_message
function M.DescribeRulesPackagesSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeRulesPackagesAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForResource asynchronously, invoking a callback when done
-- @param ListTagsForResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceRequest, cb)
	assert(ListTagsForResourceRequest, "You must provide a ListTagsForResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.ListTagsForResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsForResourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForResource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForResourceRequest
-- @return response
-- @return error_message
function M.ListTagsForResourceSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForResourceAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAssessmentRunAgents asynchronously, invoking a callback when done
-- @param ListAssessmentRunAgentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAssessmentRunAgentsAsync(ListAssessmentRunAgentsRequest, cb)
	assert(ListAssessmentRunAgentsRequest, "You must provide a ListAssessmentRunAgentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.ListAssessmentRunAgents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", ListAssessmentRunAgentsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListAssessmentRunAgents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListAssessmentRunAgentsRequest
-- @return response
-- @return error_message
function M.ListAssessmentRunAgentsSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAssessmentRunAgentsAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAssessmentReport asynchronously, invoking a callback when done
-- @param GetAssessmentReportRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAssessmentReportAsync(GetAssessmentReportRequest, cb)
	assert(GetAssessmentReportRequest, "You must provide a GetAssessmentReportRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.GetAssessmentReport",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(settings.uri, "/", GetAssessmentReportRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetAssessmentReport synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetAssessmentReportRequest
-- @return response
-- @return error_message
function M.GetAssessmentReportSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAssessmentReportAsync(..., function(response, error_message)
		assert(coroutine.resume(co, response, error_message))
	end)
	return coroutine.yield()
end


return M
