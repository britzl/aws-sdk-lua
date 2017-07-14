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

local AssessmentRunFilter_keys = { "startTimeRange" = true, "durationRange" = true, "rulesPackageArns" = true, "states" = true, "namePattern" = true, "completionTimeRange" = true, "stateChangeTimeRange" = true, nil }

function M.AssertAssessmentRunFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssessmentRunFilter to be of type 'table'")
	if struct["startTimeRange"] then M.AssertTimestampRange(struct["startTimeRange"]) end
	if struct["durationRange"] then M.AssertDurationRange(struct["durationRange"]) end
	if struct["rulesPackageArns"] then M.AssertFilterRulesPackageArnList(struct["rulesPackageArns"]) end
	if struct["states"] then M.AssertAssessmentRunStateList(struct["states"]) end
	if struct["namePattern"] then M.AssertNamePattern(struct["namePattern"]) end
	if struct["completionTimeRange"] then M.AssertTimestampRange(struct["completionTimeRange"]) end
	if struct["stateChangeTimeRange"] then M.AssertTimestampRange(struct["stateChangeTimeRange"]) end
	for k,_ in pairs(struct) do
		assert(AssessmentRunFilter_keys[k], "AssessmentRunFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssessmentRunFilter
-- <p>Used as the request parameter in the <a>ListAssessmentRuns</a> action.</p>
-- @param startTimeRange [TimestampRange] <p>For a record to match a filter, the value that is specified for this data type property must inclusively match any value between the specified minimum and maximum values of the <b>startTime</b> property of the <a>AssessmentRun</a> data type.</p>
-- @param durationRange [DurationRange] <p>For a record to match a filter, the value that is specified for this data type property must inclusively match any value between the specified minimum and maximum values of the <b>durationInSeconds</b> property of the <a>AssessmentRun</a> data type.</p>
-- @param rulesPackageArns [FilterRulesPackageArnList] <p>For a record to match a filter, the value that is specified for this data type property must be contained in the list of values of the <b>rulesPackages</b> property of the <a>AssessmentRun</a> data type.</p>
-- @param states [AssessmentRunStateList] <p>For a record to match a filter, one of the values specified for this data type property must be the exact match of the value of the <b>assessmentRunState</b> property of the <a>AssessmentRun</a> data type.</p>
-- @param namePattern [NamePattern] <p>For a record to match a filter, an explicit value or a string containing a wildcard that is specified for this data type property must match the value of the <b>assessmentRunName</b> property of the <a>AssessmentRun</a> data type.</p>
-- @param completionTimeRange [TimestampRange] <p>For a record to match a filter, the value that is specified for this data type property must inclusively match any value between the specified minimum and maximum values of the <b>completedAt</b> property of the <a>AssessmentRun</a> data type.</p>
-- @param stateChangeTimeRange [TimestampRange] <p>For a record to match a filter, the value that is specified for this data type property must match the <b>stateChangedAt</b> property of the <a>AssessmentRun</a> data type.</p>
function M.AssessmentRunFilter(startTimeRange, durationRange, rulesPackageArns, states, namePattern, completionTimeRange, stateChangeTimeRange, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssessmentRunFilter")
	local t = { 
		["startTimeRange"] = startTimeRange,
		["durationRange"] = durationRange,
		["rulesPackageArns"] = rulesPackageArns,
		["states"] = states,
		["namePattern"] = namePattern,
		["completionTimeRange"] = completionTimeRange,
		["stateChangeTimeRange"] = stateChangeTimeRange,
	}
	M.AssertAssessmentRunFilter(t)
	return t
end

local TelemetryMetadata_keys = { "count" = true, "dataSize" = true, "messageType" = true, nil }

function M.AssertTelemetryMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TelemetryMetadata to be of type 'table'")
	assert(struct["messageType"], "Expected key messageType to exist in table")
	assert(struct["count"], "Expected key count to exist in table")
	if struct["count"] then M.AssertLong(struct["count"]) end
	if struct["dataSize"] then M.AssertLong(struct["dataSize"]) end
	if struct["messageType"] then M.AssertMessageType(struct["messageType"]) end
	for k,_ in pairs(struct) do
		assert(TelemetryMetadata_keys[k], "TelemetryMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TelemetryMetadata
-- <p>The metadata about the Amazon Inspector application data metrics collected by the agent. This data type is used as the response element in the <a>GetTelemetryMetadata</a> action.</p>
-- @param count [Long] <p>The count of messages that the agent sends to the Amazon Inspector service.</p>
-- @param dataSize [Long] <p>The data size of messages that the agent sends to the Amazon Inspector service.</p>
-- @param messageType [MessageType] <p>A specific type of behavioral data that is collected by the agent.</p>
-- Required parameter: messageType
-- Required parameter: count
function M.TelemetryMetadata(count, dataSize, messageType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TelemetryMetadata")
	local t = { 
		["count"] = count,
		["dataSize"] = dataSize,
		["messageType"] = messageType,
	}
	M.AssertTelemetryMetadata(t)
	return t
end

local AgentsAlreadyRunningAssessmentException_keys = { "canRetry" = true, "message" = true, "agents" = true, "agentsTruncated" = true, nil }

function M.AssertAgentsAlreadyRunningAssessmentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AgentsAlreadyRunningAssessmentException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	assert(struct["agents"], "Expected key agents to exist in table")
	assert(struct["agentsTruncated"], "Expected key agentsTruncated to exist in table")
	assert(struct["canRetry"], "Expected key canRetry to exist in table")
	if struct["canRetry"] then M.AssertBool(struct["canRetry"]) end
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	if struct["agents"] then M.AssertAgentAlreadyRunningAssessmentList(struct["agents"]) end
	if struct["agentsTruncated"] then M.AssertBool(struct["agentsTruncated"]) end
	for k,_ in pairs(struct) do
		assert(AgentsAlreadyRunningAssessmentException_keys[k], "AgentsAlreadyRunningAssessmentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AgentsAlreadyRunningAssessmentException
-- <p>You started an assessment run, but one of the instances is already participating in another assessment run.</p>
-- @param canRetry [Bool] <p>You can immediately retry your request.</p>
-- @param message [ErrorMessage] <p>Details of the exception error.</p>
-- @param agents [AgentAlreadyRunningAssessmentList] <p/>
-- @param agentsTruncated [Bool] <p/>
-- Required parameter: message
-- Required parameter: agents
-- Required parameter: agentsTruncated
-- Required parameter: canRetry
function M.AgentsAlreadyRunningAssessmentException(canRetry, message, agents, agentsTruncated, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AgentsAlreadyRunningAssessmentException")
	local t = { 
		["canRetry"] = canRetry,
		["message"] = message,
		["agents"] = agents,
		["agentsTruncated"] = agentsTruncated,
	}
	M.AssertAgentsAlreadyRunningAssessmentException(t)
	return t
end

local FailedItemDetails_keys = { "retryable" = true, "failureCode" = true, nil }

function M.AssertFailedItemDetails(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FailedItemDetails to be of type 'table'")
	assert(struct["failureCode"], "Expected key failureCode to exist in table")
	assert(struct["retryable"], "Expected key retryable to exist in table")
	if struct["retryable"] then M.AssertBool(struct["retryable"]) end
	if struct["failureCode"] then M.AssertFailedItemErrorCode(struct["failureCode"]) end
	for k,_ in pairs(struct) do
		assert(FailedItemDetails_keys[k], "FailedItemDetails contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FailedItemDetails
-- <p>Includes details about the failed items.</p>
-- @param retryable [Bool] <p>Indicates whether you can immediately retry a request for this item for a specified resource.</p>
-- @param failureCode [FailedItemErrorCode] <p>The status code of a failed item.</p>
-- Required parameter: failureCode
-- Required parameter: retryable
function M.FailedItemDetails(retryable, failureCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FailedItemDetails")
	local t = { 
		["retryable"] = retryable,
		["failureCode"] = failureCode,
	}
	M.AssertFailedItemDetails(t)
	return t
end

local PreviewAgentsResponse_keys = { "nextToken" = true, "agentPreviews" = true, nil }

function M.AssertPreviewAgentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PreviewAgentsResponse to be of type 'table'")
	assert(struct["agentPreviews"], "Expected key agentPreviews to exist in table")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["agentPreviews"] then M.AssertAgentPreviewList(struct["agentPreviews"]) end
	for k,_ in pairs(struct) do
		assert(PreviewAgentsResponse_keys[k], "PreviewAgentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PreviewAgentsResponse
--  
-- @param nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- @param agentPreviews [AgentPreviewList] <p>The resulting list of agents.</p>
-- Required parameter: agentPreviews
function M.PreviewAgentsResponse(nextToken, agentPreviews, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PreviewAgentsResponse")
	local t = { 
		["nextToken"] = nextToken,
		["agentPreviews"] = agentPreviews,
	}
	M.AssertPreviewAgentsResponse(t)
	return t
end

local GetAssessmentReportRequest_keys = { "assessmentRunArn" = true, "reportType" = true, "reportFileFormat" = true, nil }

function M.AssertGetAssessmentReportRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAssessmentReportRequest to be of type 'table'")
	assert(struct["assessmentRunArn"], "Expected key assessmentRunArn to exist in table")
	assert(struct["reportFileFormat"], "Expected key reportFileFormat to exist in table")
	assert(struct["reportType"], "Expected key reportType to exist in table")
	if struct["assessmentRunArn"] then M.AssertArn(struct["assessmentRunArn"]) end
	if struct["reportType"] then M.AssertReportType(struct["reportType"]) end
	if struct["reportFileFormat"] then M.AssertReportFileFormat(struct["reportFileFormat"]) end
	for k,_ in pairs(struct) do
		assert(GetAssessmentReportRequest_keys[k], "GetAssessmentReportRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAssessmentReportRequest
--  
-- @param assessmentRunArn [Arn] <p>The ARN that specifies the assessment run for which you want to generate a report.</p>
-- @param reportType [ReportType] <p>Specifies the type of the assessment report that you want to generate. There are two types of assessment reports: a finding report and a full report. For more information, see <a href="http://docs.aws.amazon.com/inspector/latest/userguide/inspector_reports.html">Assessment Reports</a>. </p>
-- @param reportFileFormat [ReportFileFormat] <p>Specifies the file format (html or pdf) of the assessment report that you want to generate.</p>
-- Required parameter: assessmentRunArn
-- Required parameter: reportFileFormat
-- Required parameter: reportType
function M.GetAssessmentReportRequest(assessmentRunArn, reportType, reportFileFormat, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAssessmentReportRequest")
	local t = { 
		["assessmentRunArn"] = assessmentRunArn,
		["reportType"] = reportType,
		["reportFileFormat"] = reportFileFormat,
	}
	M.AssertGetAssessmentReportRequest(t)
	return t
end

local SubscribeToEventRequest_keys = { "resourceArn" = true, "event" = true, "topicArn" = true, nil }

function M.AssertSubscribeToEventRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscribeToEventRequest to be of type 'table'")
	assert(struct["resourceArn"], "Expected key resourceArn to exist in table")
	assert(struct["event"], "Expected key event to exist in table")
	assert(struct["topicArn"], "Expected key topicArn to exist in table")
	if struct["resourceArn"] then M.AssertArn(struct["resourceArn"]) end
	if struct["event"] then M.AssertInspectorEvent(struct["event"]) end
	if struct["topicArn"] then M.AssertArn(struct["topicArn"]) end
	for k,_ in pairs(struct) do
		assert(SubscribeToEventRequest_keys[k], "SubscribeToEventRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscribeToEventRequest
--  
-- @param resourceArn [Arn] <p>The ARN of the assessment template that is used during the event for which you want to receive SNS notifications.</p>
-- @param event [InspectorEvent] <p>The event for which you want to receive SNS notifications.</p>
-- @param topicArn [Arn] <p>The ARN of the SNS topic to which the SNS notifications are sent.</p>
-- Required parameter: resourceArn
-- Required parameter: event
-- Required parameter: topicArn
function M.SubscribeToEventRequest(resourceArn, event, topicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscribeToEventRequest")
	local t = { 
		["resourceArn"] = resourceArn,
		["event"] = event,
		["topicArn"] = topicArn,
	}
	M.AssertSubscribeToEventRequest(t)
	return t
end

local RemoveAttributesFromFindingsResponse_keys = { "failedItems" = true, nil }

function M.AssertRemoveAttributesFromFindingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveAttributesFromFindingsResponse to be of type 'table'")
	assert(struct["failedItems"], "Expected key failedItems to exist in table")
	if struct["failedItems"] then M.AssertFailedItems(struct["failedItems"]) end
	for k,_ in pairs(struct) do
		assert(RemoveAttributesFromFindingsResponse_keys[k], "RemoveAttributesFromFindingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveAttributesFromFindingsResponse
--  
-- @param failedItems [FailedItems] <p>Attributes details that cannot be described. An error code is provided for each failed item.</p>
-- Required parameter: failedItems
function M.RemoveAttributesFromFindingsResponse(failedItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveAttributesFromFindingsResponse")
	local t = { 
		["failedItems"] = failedItems,
	}
	M.AssertRemoveAttributesFromFindingsResponse(t)
	return t
end

local AssessmentRunAgent_keys = { "assessmentRunArn" = true, "agentHealthCode" = true, "agentHealth" = true, "autoScalingGroup" = true, "agentHealthDetails" = true, "telemetryMetadata" = true, "agentId" = true, nil }

function M.AssertAssessmentRunAgent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssessmentRunAgent to be of type 'table'")
	assert(struct["agentId"], "Expected key agentId to exist in table")
	assert(struct["assessmentRunArn"], "Expected key assessmentRunArn to exist in table")
	assert(struct["agentHealth"], "Expected key agentHealth to exist in table")
	assert(struct["agentHealthCode"], "Expected key agentHealthCode to exist in table")
	assert(struct["telemetryMetadata"], "Expected key telemetryMetadata to exist in table")
	if struct["assessmentRunArn"] then M.AssertArn(struct["assessmentRunArn"]) end
	if struct["agentHealthCode"] then M.AssertAgentHealthCode(struct["agentHealthCode"]) end
	if struct["agentHealth"] then M.AssertAgentHealth(struct["agentHealth"]) end
	if struct["autoScalingGroup"] then M.AssertAutoScalingGroup(struct["autoScalingGroup"]) end
	if struct["agentHealthDetails"] then M.AssertMessage(struct["agentHealthDetails"]) end
	if struct["telemetryMetadata"] then M.AssertTelemetryMetadataList(struct["telemetryMetadata"]) end
	if struct["agentId"] then M.AssertAgentId(struct["agentId"]) end
	for k,_ in pairs(struct) do
		assert(AssessmentRunAgent_keys[k], "AssessmentRunAgent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssessmentRunAgent
-- <p>Contains information about an Amazon Inspector agent. This data type is used as a response element in the <a>ListAssessmentRunAgents</a> action.</p>
-- @param assessmentRunArn [Arn] <p>The ARN of the assessment run that is associated with the agent.</p>
-- @param agentHealthCode [AgentHealthCode] <p>The detailed health state of the agent.</p>
-- @param agentHealth [AgentHealth] <p>The current health state of the agent.</p>
-- @param autoScalingGroup [AutoScalingGroup] <p>The Auto Scaling group of the EC2 instance that is specified by the agent ID.</p>
-- @param agentHealthDetails [Message] <p>The description for the agent health code.</p>
-- @param telemetryMetadata [TelemetryMetadataList] <p>The Amazon Inspector application data metrics that are collected by the agent.</p>
-- @param agentId [AgentId] <p>The AWS account of the EC2 instance where the agent is installed.</p>
-- Required parameter: agentId
-- Required parameter: assessmentRunArn
-- Required parameter: agentHealth
-- Required parameter: agentHealthCode
-- Required parameter: telemetryMetadata
function M.AssessmentRunAgent(assessmentRunArn, agentHealthCode, agentHealth, autoScalingGroup, agentHealthDetails, telemetryMetadata, agentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssessmentRunAgent")
	local t = { 
		["assessmentRunArn"] = assessmentRunArn,
		["agentHealthCode"] = agentHealthCode,
		["agentHealth"] = agentHealth,
		["autoScalingGroup"] = autoScalingGroup,
		["agentHealthDetails"] = agentHealthDetails,
		["telemetryMetadata"] = telemetryMetadata,
		["agentId"] = agentId,
	}
	M.AssertAssessmentRunAgent(t)
	return t
end

local DescribeResourceGroupsRequest_keys = { "resourceGroupArns" = true, nil }

function M.AssertDescribeResourceGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeResourceGroupsRequest to be of type 'table'")
	assert(struct["resourceGroupArns"], "Expected key resourceGroupArns to exist in table")
	if struct["resourceGroupArns"] then M.AssertBatchDescribeArnList(struct["resourceGroupArns"]) end
	for k,_ in pairs(struct) do
		assert(DescribeResourceGroupsRequest_keys[k], "DescribeResourceGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeResourceGroupsRequest
--  
-- @param resourceGroupArns [BatchDescribeArnList] <p>The ARN that specifies the resource group that you want to describe.</p>
-- Required parameter: resourceGroupArns
function M.DescribeResourceGroupsRequest(resourceGroupArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeResourceGroupsRequest")
	local t = { 
		["resourceGroupArns"] = resourceGroupArns,
	}
	M.AssertDescribeResourceGroupsRequest(t)
	return t
end

local ListAssessmentTargetsRequest_keys = { "filter" = true, "nextToken" = true, "maxResults" = true, nil }

function M.AssertListAssessmentTargetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssessmentTargetsRequest to be of type 'table'")
	if struct["filter"] then M.AssertAssessmentTargetFilter(struct["filter"]) end
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertListMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListAssessmentTargetsRequest_keys[k], "ListAssessmentTargetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssessmentTargetsRequest
--  
-- @param filter [AssessmentTargetFilter] <p>You can use this parameter to specify a subset of data to be included in the action's response.</p> <p>For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.</p>
-- @param nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>ListAssessmentTargets</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- @param maxResults [ListMaxResults] <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.</p>
function M.ListAssessmentTargetsRequest(filter, nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssessmentTargetsRequest")
	local t = { 
		["filter"] = filter,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertListAssessmentTargetsRequest(t)
	return t
end

local AssessmentRunNotification_keys = { "snsPublishStatusCode" = true, "snsTopicArn" = true, "error" = true, "date" = true, "message" = true, "event" = true, nil }

function M.AssertAssessmentRunNotification(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssessmentRunNotification to be of type 'table'")
	assert(struct["date"], "Expected key date to exist in table")
	assert(struct["event"], "Expected key event to exist in table")
	assert(struct["error"], "Expected key error to exist in table")
	if struct["snsPublishStatusCode"] then M.AssertAssessmentRunNotificationSnsStatusCode(struct["snsPublishStatusCode"]) end
	if struct["snsTopicArn"] then M.AssertArn(struct["snsTopicArn"]) end
	if struct["error"] then M.AssertBool(struct["error"]) end
	if struct["date"] then M.AssertTimestamp(struct["date"]) end
	if struct["message"] then M.AssertMessage(struct["message"]) end
	if struct["event"] then M.AssertInspectorEvent(struct["event"]) end
	for k,_ in pairs(struct) do
		assert(AssessmentRunNotification_keys[k], "AssessmentRunNotification contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssessmentRunNotification
-- <p>Used as one of the elements of the <a>AssessmentRun</a> data type.</p>
-- @param snsPublishStatusCode [AssessmentRunNotificationSnsStatusCode] <p>The status code of the SNS notification.</p>
-- @param snsTopicArn [Arn] <p>The SNS topic to which the SNS notification is sent.</p>
-- @param error [Bool] <p>The Boolean value that specifies whether the notification represents an error.</p>
-- @param date [Timestamp] <p>The date of the notification.</p>
-- @param message [Message] <p>The message included in the notification.</p>
-- @param event [InspectorEvent] <p>The event for which a notification is sent.</p>
-- Required parameter: date
-- Required parameter: event
-- Required parameter: error
function M.AssessmentRunNotification(snsPublishStatusCode, snsTopicArn, error, date, message, event, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssessmentRunNotification")
	local t = { 
		["snsPublishStatusCode"] = snsPublishStatusCode,
		["snsTopicArn"] = snsTopicArn,
		["error"] = error,
		["date"] = date,
		["message"] = message,
		["event"] = event,
	}
	M.AssertAssessmentRunNotification(t)
	return t
end

local ListEventSubscriptionsRequest_keys = { "resourceArn" = true, "nextToken" = true, "maxResults" = true, nil }

function M.AssertListEventSubscriptionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEventSubscriptionsRequest to be of type 'table'")
	if struct["resourceArn"] then M.AssertArn(struct["resourceArn"]) end
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertListEventSubscriptionsMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListEventSubscriptionsRequest_keys[k], "ListEventSubscriptionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEventSubscriptionsRequest
--  
-- @param resourceArn [Arn] <p>The ARN of the assessment template for which you want to list the existing event subscriptions.</p>
-- @param nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>ListEventSubscriptions</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- @param maxResults [ListEventSubscriptionsMaxResults] <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.</p>
function M.ListEventSubscriptionsRequest(resourceArn, nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListEventSubscriptionsRequest")
	local t = { 
		["resourceArn"] = resourceArn,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertListEventSubscriptionsRequest(t)
	return t
end

local AgentFilter_keys = { "agentHealthCodes" = true, "agentHealths" = true, nil }

function M.AssertAgentFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AgentFilter to be of type 'table'")
	assert(struct["agentHealths"], "Expected key agentHealths to exist in table")
	assert(struct["agentHealthCodes"], "Expected key agentHealthCodes to exist in table")
	if struct["agentHealthCodes"] then M.AssertAgentHealthCodeList(struct["agentHealthCodes"]) end
	if struct["agentHealths"] then M.AssertAgentHealthList(struct["agentHealths"]) end
	for k,_ in pairs(struct) do
		assert(AgentFilter_keys[k], "AgentFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AgentFilter
-- <p>Contains information about an Amazon Inspector agent. This data type is used as a request parameter in the <a>ListAssessmentRunAgents</a> action.</p>
-- @param agentHealthCodes [AgentHealthCodeList] <p>The detailed health state of the agent. Values can be set to <b>IDLE</b>, <b>RUNNING</b>, <b>SHUTDOWN</b>, <b>UNHEALTHY</b>, <b>THROTTLED</b>, and <b>UNKNOWN</b>. </p>
-- @param agentHealths [AgentHealthList] <p>The current health state of the agent. Values can be set to <b>HEALTHY</b> or <b>UNHEALTHY</b>.</p>
-- Required parameter: agentHealths
-- Required parameter: agentHealthCodes
function M.AgentFilter(agentHealthCodes, agentHealths, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AgentFilter")
	local t = { 
		["agentHealthCodes"] = agentHealthCodes,
		["agentHealths"] = agentHealths,
	}
	M.AssertAgentFilter(t)
	return t
end

local DescribeAssessmentRunsResponse_keys = { "failedItems" = true, "assessmentRuns" = true, nil }

function M.AssertDescribeAssessmentRunsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAssessmentRunsResponse to be of type 'table'")
	assert(struct["assessmentRuns"], "Expected key assessmentRuns to exist in table")
	assert(struct["failedItems"], "Expected key failedItems to exist in table")
	if struct["failedItems"] then M.AssertFailedItems(struct["failedItems"]) end
	if struct["assessmentRuns"] then M.AssertAssessmentRunList(struct["assessmentRuns"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAssessmentRunsResponse_keys[k], "DescribeAssessmentRunsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAssessmentRunsResponse
--  
-- @param failedItems [FailedItems] <p>Assessment run details that cannot be described. An error code is provided for each failed item.</p>
-- @param assessmentRuns [AssessmentRunList] <p>Information about the assessment run.</p>
-- Required parameter: assessmentRuns
-- Required parameter: failedItems
function M.DescribeAssessmentRunsResponse(failedItems, assessmentRuns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAssessmentRunsResponse")
	local t = { 
		["failedItems"] = failedItems,
		["assessmentRuns"] = assessmentRuns,
	}
	M.AssertDescribeAssessmentRunsResponse(t)
	return t
end

local Subscription_keys = { "eventSubscriptions" = true, "resourceArn" = true, "topicArn" = true, nil }

function M.AssertSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Subscription to be of type 'table'")
	assert(struct["resourceArn"], "Expected key resourceArn to exist in table")
	assert(struct["topicArn"], "Expected key topicArn to exist in table")
	assert(struct["eventSubscriptions"], "Expected key eventSubscriptions to exist in table")
	if struct["eventSubscriptions"] then M.AssertEventSubscriptionList(struct["eventSubscriptions"]) end
	if struct["resourceArn"] then M.AssertArn(struct["resourceArn"]) end
	if struct["topicArn"] then M.AssertArn(struct["topicArn"]) end
	for k,_ in pairs(struct) do
		assert(Subscription_keys[k], "Subscription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Subscription
-- <p>This data type is used as a response element in the <a>ListEventSubscriptions</a> action.</p>
-- @param eventSubscriptions [EventSubscriptionList] <p>The list of existing event subscriptions.</p>
-- @param resourceArn [Arn] <p>The ARN of the assessment template that is used during the event for which the SNS notification is sent.</p>
-- @param topicArn [Arn] <p>The ARN of the Amazon Simple Notification Service (SNS) topic to which the SNS notifications are sent.</p>
-- Required parameter: resourceArn
-- Required parameter: topicArn
-- Required parameter: eventSubscriptions
function M.Subscription(eventSubscriptions, resourceArn, topicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Subscription")
	local t = { 
		["eventSubscriptions"] = eventSubscriptions,
		["resourceArn"] = resourceArn,
		["topicArn"] = topicArn,
	}
	M.AssertSubscription(t)
	return t
end

local GetTelemetryMetadataResponse_keys = { "telemetryMetadata" = true, nil }

function M.AssertGetTelemetryMetadataResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTelemetryMetadataResponse to be of type 'table'")
	assert(struct["telemetryMetadata"], "Expected key telemetryMetadata to exist in table")
	if struct["telemetryMetadata"] then M.AssertTelemetryMetadataList(struct["telemetryMetadata"]) end
	for k,_ in pairs(struct) do
		assert(GetTelemetryMetadataResponse_keys[k], "GetTelemetryMetadataResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTelemetryMetadataResponse
--  
-- @param telemetryMetadata [TelemetryMetadataList] <p>Telemetry details.</p>
-- Required parameter: telemetryMetadata
function M.GetTelemetryMetadataResponse(telemetryMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTelemetryMetadataResponse")
	local t = { 
		["telemetryMetadata"] = telemetryMetadata,
	}
	M.AssertGetTelemetryMetadataResponse(t)
	return t
end

local RulesPackage_keys = { "description" = true, "version" = true, "name" = true, "arn" = true, "provider" = true, nil }

function M.AssertRulesPackage(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RulesPackage to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["version"], "Expected key version to exist in table")
	assert(struct["provider"], "Expected key provider to exist in table")
	if struct["description"] then M.AssertText(struct["description"]) end
	if struct["version"] then M.AssertVersion(struct["version"]) end
	if struct["name"] then M.AssertRulesPackageName(struct["name"]) end
	if struct["arn"] then M.AssertArn(struct["arn"]) end
	if struct["provider"] then M.AssertProviderName(struct["provider"]) end
	for k,_ in pairs(struct) do
		assert(RulesPackage_keys[k], "RulesPackage contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RulesPackage
-- <p>Contains information about an Amazon Inspector rules package. This data type is used as the response element in the <a>DescribeRulesPackages</a> action.</p>
-- @param description [Text] <p>The description of the rules package.</p>
-- @param version [Version] <p>The version ID of the rules package.</p>
-- @param name [RulesPackageName] <p>The name of the rules package.</p>
-- @param arn [Arn] <p>The ARN of the rules package.</p>
-- @param provider [ProviderName] <p>The provider of the rules package.</p>
-- Required parameter: arn
-- Required parameter: name
-- Required parameter: version
-- Required parameter: provider
function M.RulesPackage(description, version, name, arn, provider, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RulesPackage")
	local t = { 
		["description"] = description,
		["version"] = version,
		["name"] = name,
		["arn"] = arn,
		["provider"] = provider,
	}
	M.AssertRulesPackage(t)
	return t
end

local AssessmentRunInProgressException_keys = { "canRetry" = true, "message" = true, "assessmentRunArnsTruncated" = true, "assessmentRunArns" = true, nil }

function M.AssertAssessmentRunInProgressException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssessmentRunInProgressException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	assert(struct["assessmentRunArns"], "Expected key assessmentRunArns to exist in table")
	assert(struct["assessmentRunArnsTruncated"], "Expected key assessmentRunArnsTruncated to exist in table")
	assert(struct["canRetry"], "Expected key canRetry to exist in table")
	if struct["canRetry"] then M.AssertBool(struct["canRetry"]) end
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	if struct["assessmentRunArnsTruncated"] then M.AssertBool(struct["assessmentRunArnsTruncated"]) end
	if struct["assessmentRunArns"] then M.AssertAssessmentRunInProgressArnList(struct["assessmentRunArns"]) end
	for k,_ in pairs(struct) do
		assert(AssessmentRunInProgressException_keys[k], "AssessmentRunInProgressException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssessmentRunInProgressException
-- <p>You cannot perform a specified action if an assessment run is currently in progress.</p>
-- @param canRetry [Bool] <p>You can immediately retry your request.</p>
-- @param message [ErrorMessage] <p>Details of the exception error.</p>
-- @param assessmentRunArnsTruncated [Bool] <p>Boolean value that indicates whether the ARN list of the assessment runs is truncated.</p>
-- @param assessmentRunArns [AssessmentRunInProgressArnList] <p>The ARNs of the assessment runs that are currently in progress.</p>
-- Required parameter: message
-- Required parameter: assessmentRunArns
-- Required parameter: assessmentRunArnsTruncated
-- Required parameter: canRetry
function M.AssessmentRunInProgressException(canRetry, message, assessmentRunArnsTruncated, assessmentRunArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssessmentRunInProgressException")
	local t = { 
		["canRetry"] = canRetry,
		["message"] = message,
		["assessmentRunArnsTruncated"] = assessmentRunArnsTruncated,
		["assessmentRunArns"] = assessmentRunArns,
	}
	M.AssertAssessmentRunInProgressException(t)
	return t
end

local CreateResourceGroupResponse_keys = { "resourceGroupArn" = true, nil }

function M.AssertCreateResourceGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateResourceGroupResponse to be of type 'table'")
	assert(struct["resourceGroupArn"], "Expected key resourceGroupArn to exist in table")
	if struct["resourceGroupArn"] then M.AssertArn(struct["resourceGroupArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateResourceGroupResponse_keys[k], "CreateResourceGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateResourceGroupResponse
--  
-- @param resourceGroupArn [Arn] <p>The ARN that specifies the resource group that is created.</p>
-- Required parameter: resourceGroupArn
function M.CreateResourceGroupResponse(resourceGroupArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateResourceGroupResponse")
	local t = { 
		["resourceGroupArn"] = resourceGroupArn,
	}
	M.AssertCreateResourceGroupResponse(t)
	return t
end

local ListFindingsRequest_keys = { "filter" = true, "nextToken" = true, "assessmentRunArns" = true, "maxResults" = true, nil }

function M.AssertListFindingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFindingsRequest to be of type 'table'")
	if struct["filter"] then M.AssertFindingFilter(struct["filter"]) end
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["assessmentRunArns"] then M.AssertListParentArnList(struct["assessmentRunArns"]) end
	if struct["maxResults"] then M.AssertListMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListFindingsRequest_keys[k], "ListFindingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFindingsRequest
--  
-- @param filter [FindingFilter] <p>You can use this parameter to specify a subset of data to be included in the action's response.</p> <p>For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.</p>
-- @param nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>ListFindings</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- @param assessmentRunArns [ListParentArnList] <p>The ARNs of the assessment runs that generate the findings that you want to list.</p>
-- @param maxResults [ListMaxResults] <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.</p>
function M.ListFindingsRequest(filter, nextToken, assessmentRunArns, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFindingsRequest")
	local t = { 
		["filter"] = filter,
		["nextToken"] = nextToken,
		["assessmentRunArns"] = assessmentRunArns,
		["maxResults"] = maxResults,
	}
	M.AssertListFindingsRequest(t)
	return t
end

local AssessmentRun_keys = { "dataCollected" = true, "name" = true, "completedAt" = true, "userAttributesForFindings" = true, "stateChanges" = true, "createdAt" = true, "findingCounts" = true, "notifications" = true, "state" = true, "stateChangedAt" = true, "durationInSeconds" = true, "rulesPackageArns" = true, "startedAt" = true, "assessmentTemplateArn" = true, "arn" = true, nil }

function M.AssertAssessmentRun(struct)
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
	if struct["dataCollected"] then M.AssertBool(struct["dataCollected"]) end
	if struct["name"] then M.AssertAssessmentRunName(struct["name"]) end
	if struct["completedAt"] then M.AssertTimestamp(struct["completedAt"]) end
	if struct["userAttributesForFindings"] then M.AssertUserAttributeList(struct["userAttributesForFindings"]) end
	if struct["stateChanges"] then M.AssertAssessmentRunStateChangeList(struct["stateChanges"]) end
	if struct["createdAt"] then M.AssertTimestamp(struct["createdAt"]) end
	if struct["findingCounts"] then M.AssertAssessmentRunFindingCounts(struct["findingCounts"]) end
	if struct["notifications"] then M.AssertAssessmentRunNotificationList(struct["notifications"]) end
	if struct["state"] then M.AssertAssessmentRunState(struct["state"]) end
	if struct["stateChangedAt"] then M.AssertTimestamp(struct["stateChangedAt"]) end
	if struct["durationInSeconds"] then M.AssertAssessmentRunDuration(struct["durationInSeconds"]) end
	if struct["rulesPackageArns"] then M.AssertAssessmentRulesPackageArnList(struct["rulesPackageArns"]) end
	if struct["startedAt"] then M.AssertTimestamp(struct["startedAt"]) end
	if struct["assessmentTemplateArn"] then M.AssertArn(struct["assessmentTemplateArn"]) end
	if struct["arn"] then M.AssertArn(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(AssessmentRun_keys[k], "AssessmentRun contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssessmentRun
-- <p>A snapshot of an Amazon Inspector assessment run that contains the findings of the assessment run .</p> <p>Used as the response element in the <a>DescribeAssessmentRuns</a> action.</p>
-- @param dataCollected [Bool] <p>A Boolean value (true or false) that specifies whether the process of collecting data from the agents is completed.</p>
-- @param name [AssessmentRunName] <p>The auto-generated name for the assessment run.</p>
-- @param completedAt [Timestamp] <p>The assessment run completion time that corresponds to the rules packages evaluation completion time or failure.</p>
-- @param userAttributesForFindings [UserAttributeList] <p>The user-defined attributes that are assigned to every generated finding.</p>
-- @param stateChanges [AssessmentRunStateChangeList] <p>A list of the assessment run state changes.</p>
-- @param createdAt [Timestamp] <p>The time when <a>StartAssessmentRun</a> was called.</p>
-- @param findingCounts [AssessmentRunFindingCounts] <p>Provides a total count of generated findings per severity.</p>
-- @param notifications [AssessmentRunNotificationList] <p>A list of notifications for the event subscriptions. A notification about a particular generated finding is added to this list only once.</p>
-- @param state [AssessmentRunState] <p>The state of the assessment run.</p>
-- @param stateChangedAt [Timestamp] <p>The last time when the assessment run's state changed.</p>
-- @param durationInSeconds [AssessmentRunDuration] <p>The duration of the assessment run.</p>
-- @param rulesPackageArns [AssessmentRulesPackageArnList] <p>The rules packages selected for the assessment run.</p>
-- @param startedAt [Timestamp] <p>The time when <a>StartAssessmentRun</a> was called.</p>
-- @param assessmentTemplateArn [Arn] <p>The ARN of the assessment template that is associated with the assessment run.</p>
-- @param arn [Arn] <p>The ARN of the assessment run.</p>
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
function M.AssessmentRun(dataCollected, name, completedAt, userAttributesForFindings, stateChanges, createdAt, findingCounts, notifications, state, stateChangedAt, durationInSeconds, rulesPackageArns, startedAt, assessmentTemplateArn, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssessmentRun")
	local t = { 
		["dataCollected"] = dataCollected,
		["name"] = name,
		["completedAt"] = completedAt,
		["userAttributesForFindings"] = userAttributesForFindings,
		["stateChanges"] = stateChanges,
		["createdAt"] = createdAt,
		["findingCounts"] = findingCounts,
		["notifications"] = notifications,
		["state"] = state,
		["stateChangedAt"] = stateChangedAt,
		["durationInSeconds"] = durationInSeconds,
		["rulesPackageArns"] = rulesPackageArns,
		["startedAt"] = startedAt,
		["assessmentTemplateArn"] = assessmentTemplateArn,
		["arn"] = arn,
	}
	M.AssertAssessmentRun(t)
	return t
end

local AssessmentTemplate_keys = { "assessmentTargetArn" = true, "name" = true, "createdAt" = true, "durationInSeconds" = true, "rulesPackageArns" = true, "userAttributesForFindings" = true, "arn" = true, nil }

function M.AssertAssessmentTemplate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssessmentTemplate to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["assessmentTargetArn"], "Expected key assessmentTargetArn to exist in table")
	assert(struct["durationInSeconds"], "Expected key durationInSeconds to exist in table")
	assert(struct["rulesPackageArns"], "Expected key rulesPackageArns to exist in table")
	assert(struct["userAttributesForFindings"], "Expected key userAttributesForFindings to exist in table")
	assert(struct["createdAt"], "Expected key createdAt to exist in table")
	if struct["assessmentTargetArn"] then M.AssertArn(struct["assessmentTargetArn"]) end
	if struct["name"] then M.AssertAssessmentTemplateName(struct["name"]) end
	if struct["createdAt"] then M.AssertTimestamp(struct["createdAt"]) end
	if struct["durationInSeconds"] then M.AssertAssessmentRunDuration(struct["durationInSeconds"]) end
	if struct["rulesPackageArns"] then M.AssertAssessmentTemplateRulesPackageArnList(struct["rulesPackageArns"]) end
	if struct["userAttributesForFindings"] then M.AssertUserAttributeList(struct["userAttributesForFindings"]) end
	if struct["arn"] then M.AssertArn(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(AssessmentTemplate_keys[k], "AssessmentTemplate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssessmentTemplate
-- <p>Contains information about an Amazon Inspector assessment template. This data type is used as the response element in the <a>DescribeAssessmentTemplates</a> action.</p>
-- @param assessmentTargetArn [Arn] <p>The ARN of the assessment target that corresponds to this assessment template.</p>
-- @param name [AssessmentTemplateName] <p>The name of the assessment template.</p>
-- @param createdAt [Timestamp] <p>The time at which the assessment template is created.</p>
-- @param durationInSeconds [AssessmentRunDuration] <p>The duration in seconds specified for this assessment tempate. The default value is 3600 seconds (one hour). The maximum value is 86400 seconds (one day).</p>
-- @param rulesPackageArns [AssessmentTemplateRulesPackageArnList] <p>The rules packages that are specified for this assessment template.</p>
-- @param userAttributesForFindings [UserAttributeList] <p>The user-defined attributes that are assigned to every generated finding from the assessment run that uses this assessment template.</p>
-- @param arn [Arn] <p>The ARN of the assessment template.</p>
-- Required parameter: arn
-- Required parameter: name
-- Required parameter: assessmentTargetArn
-- Required parameter: durationInSeconds
-- Required parameter: rulesPackageArns
-- Required parameter: userAttributesForFindings
-- Required parameter: createdAt
function M.AssessmentTemplate(assessmentTargetArn, name, createdAt, durationInSeconds, rulesPackageArns, userAttributesForFindings, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssessmentTemplate")
	local t = { 
		["assessmentTargetArn"] = assessmentTargetArn,
		["name"] = name,
		["createdAt"] = createdAt,
		["durationInSeconds"] = durationInSeconds,
		["rulesPackageArns"] = rulesPackageArns,
		["userAttributesForFindings"] = userAttributesForFindings,
		["arn"] = arn,
	}
	M.AssertAssessmentTemplate(t)
	return t
end

local Tag_keys = { "value" = true, "key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	if struct["value"] then M.AssertTagValue(struct["value"]) end
	if struct["key"] then M.AssertTagKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>A key and value pair. This data type is used as a request parameter in the <a>SetTagsForResource</a> action and a response element in the <a>ListTagsForResource</a> action.</p>
-- @param value [TagValue] <p>A value assigned to a tag key.</p>
-- @param key [TagKey] <p>A tag key.</p>
-- Required parameter: key
function M.Tag(value, key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["value"] = value,
		["key"] = key,
	}
	M.AssertTag(t)
	return t
end

local Attribute_keys = { "value" = true, "key" = true, nil }

function M.AssertAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Attribute to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	if struct["value"] then M.AssertAttributeValue(struct["value"]) end
	if struct["key"] then M.AssertAttributeKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(Attribute_keys[k], "Attribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Attribute
-- <p>This data type is used as a request parameter in the <a>AddAttributesToFindings</a> and <a>CreateAssessmentTemplate</a> actions.</p>
-- @param value [AttributeValue] <p>The value assigned to the attribute key.</p>
-- @param key [AttributeKey] <p>The attribute key.</p>
-- Required parameter: key
function M.Attribute(value, key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Attribute")
	local t = { 
		["value"] = value,
		["key"] = key,
	}
	M.AssertAttribute(t)
	return t
end

local UpdateAssessmentTargetRequest_keys = { "assessmentTargetArn" = true, "assessmentTargetName" = true, "resourceGroupArn" = true, nil }

function M.AssertUpdateAssessmentTargetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAssessmentTargetRequest to be of type 'table'")
	assert(struct["assessmentTargetArn"], "Expected key assessmentTargetArn to exist in table")
	assert(struct["assessmentTargetName"], "Expected key assessmentTargetName to exist in table")
	assert(struct["resourceGroupArn"], "Expected key resourceGroupArn to exist in table")
	if struct["assessmentTargetArn"] then M.AssertArn(struct["assessmentTargetArn"]) end
	if struct["assessmentTargetName"] then M.AssertAssessmentTargetName(struct["assessmentTargetName"]) end
	if struct["resourceGroupArn"] then M.AssertArn(struct["resourceGroupArn"]) end
	for k,_ in pairs(struct) do
		assert(UpdateAssessmentTargetRequest_keys[k], "UpdateAssessmentTargetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAssessmentTargetRequest
--  
-- @param assessmentTargetArn [Arn] <p>The ARN of the assessment target that you want to update.</p>
-- @param assessmentTargetName [AssessmentTargetName] <p>The name of the assessment target that you want to update.</p>
-- @param resourceGroupArn [Arn] <p>The ARN of the resource group that is used to specify the new resource group to associate with the assessment target.</p>
-- Required parameter: assessmentTargetArn
-- Required parameter: assessmentTargetName
-- Required parameter: resourceGroupArn
function M.UpdateAssessmentTargetRequest(assessmentTargetArn, assessmentTargetName, resourceGroupArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateAssessmentTargetRequest")
	local t = { 
		["assessmentTargetArn"] = assessmentTargetArn,
		["assessmentTargetName"] = assessmentTargetName,
		["resourceGroupArn"] = resourceGroupArn,
	}
	M.AssertUpdateAssessmentTargetRequest(t)
	return t
end

local GetAssessmentReportResponse_keys = { "status" = true, "url" = true, nil }

function M.AssertGetAssessmentReportResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetAssessmentReportResponse to be of type 'table'")
	assert(struct["status"], "Expected key status to exist in table")
	if struct["status"] then M.AssertReportStatus(struct["status"]) end
	if struct["url"] then M.AssertUrl(struct["url"]) end
	for k,_ in pairs(struct) do
		assert(GetAssessmentReportResponse_keys[k], "GetAssessmentReportResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetAssessmentReportResponse
--  
-- @param status [ReportStatus] <p>Specifies the status of the request to generate an assessment report. </p>
-- @param url [Url] <p>Specifies the URL where you can find the generated assessment report. This parameter is only returned if the report is successfully generated.</p>
-- Required parameter: status
function M.GetAssessmentReportResponse(status, url, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetAssessmentReportResponse")
	local t = { 
		["status"] = status,
		["url"] = url,
	}
	M.AssertGetAssessmentReportResponse(t)
	return t
end

local InvalidInputException_keys = { "errorCode" = true, "canRetry" = true, "message" = true, nil }

function M.AssertInvalidInputException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidInputException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	assert(struct["errorCode"], "Expected key errorCode to exist in table")
	assert(struct["canRetry"], "Expected key canRetry to exist in table")
	if struct["errorCode"] then M.AssertInvalidInputErrorCode(struct["errorCode"]) end
	if struct["canRetry"] then M.AssertBool(struct["canRetry"]) end
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidInputException_keys[k], "InvalidInputException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidInputException
-- <p>The request was rejected because an invalid or out-of-range value was supplied for an input parameter.</p>
-- @param errorCode [InvalidInputErrorCode] <p>Code that indicates the type of error that is generated.</p>
-- @param canRetry [Bool] <p>You can immediately retry your request.</p>
-- @param message [ErrorMessage] <p>Details of the exception error.</p>
-- Required parameter: message
-- Required parameter: errorCode
-- Required parameter: canRetry
function M.InvalidInputException(errorCode, canRetry, message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidInputException")
	local t = { 
		["errorCode"] = errorCode,
		["canRetry"] = canRetry,
		["message"] = message,
	}
	M.AssertInvalidInputException(t)
	return t
end

local DescribeRulesPackagesResponse_keys = { "rulesPackages" = true, "failedItems" = true, nil }

function M.AssertDescribeRulesPackagesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRulesPackagesResponse to be of type 'table'")
	assert(struct["rulesPackages"], "Expected key rulesPackages to exist in table")
	assert(struct["failedItems"], "Expected key failedItems to exist in table")
	if struct["rulesPackages"] then M.AssertRulesPackageList(struct["rulesPackages"]) end
	if struct["failedItems"] then M.AssertFailedItems(struct["failedItems"]) end
	for k,_ in pairs(struct) do
		assert(DescribeRulesPackagesResponse_keys[k], "DescribeRulesPackagesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRulesPackagesResponse
--  
-- @param rulesPackages [RulesPackageList] <p>Information about the rules package.</p>
-- @param failedItems [FailedItems] <p>Rules package details that cannot be described. An error code is provided for each failed item.</p>
-- Required parameter: rulesPackages
-- Required parameter: failedItems
function M.DescribeRulesPackagesResponse(rulesPackages, failedItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRulesPackagesResponse")
	local t = { 
		["rulesPackages"] = rulesPackages,
		["failedItems"] = failedItems,
	}
	M.AssertDescribeRulesPackagesResponse(t)
	return t
end

local LimitExceededException_keys = { "errorCode" = true, "canRetry" = true, "message" = true, nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	assert(struct["errorCode"], "Expected key errorCode to exist in table")
	assert(struct["canRetry"], "Expected key canRetry to exist in table")
	if struct["errorCode"] then M.AssertLimitExceededErrorCode(struct["errorCode"]) end
	if struct["canRetry"] then M.AssertBool(struct["canRetry"]) end
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The request was rejected because it attempted to create resources beyond the current AWS account limits. The error code describes the limit exceeded.</p>
-- @param errorCode [LimitExceededErrorCode] <p>Code that indicates the type of error that is generated.</p>
-- @param canRetry [Bool] <p>You can immediately retry your request.</p>
-- @param message [ErrorMessage] <p>Details of the exception error.</p>
-- Required parameter: message
-- Required parameter: errorCode
-- Required parameter: canRetry
function M.LimitExceededException(errorCode, canRetry, message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
		["errorCode"] = errorCode,
		["canRetry"] = canRetry,
		["message"] = message,
	}
	M.AssertLimitExceededException(t)
	return t
end

local NoSuchEntityException_keys = { "errorCode" = true, "canRetry" = true, "message" = true, nil }

function M.AssertNoSuchEntityException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NoSuchEntityException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	assert(struct["errorCode"], "Expected key errorCode to exist in table")
	assert(struct["canRetry"], "Expected key canRetry to exist in table")
	if struct["errorCode"] then M.AssertNoSuchEntityErrorCode(struct["errorCode"]) end
	if struct["canRetry"] then M.AssertBool(struct["canRetry"]) end
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(NoSuchEntityException_keys[k], "NoSuchEntityException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NoSuchEntityException
-- <p>The request was rejected because it referenced an entity that does not exist. The error code describes the entity.</p>
-- @param errorCode [NoSuchEntityErrorCode] <p>Code that indicates the type of error that is generated.</p>
-- @param canRetry [Bool] <p>You can immediately retry your request.</p>
-- @param message [ErrorMessage] <p>Details of the exception error.</p>
-- Required parameter: message
-- Required parameter: errorCode
-- Required parameter: canRetry
function M.NoSuchEntityException(errorCode, canRetry, message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NoSuchEntityException")
	local t = { 
		["errorCode"] = errorCode,
		["canRetry"] = canRetry,
		["message"] = message,
	}
	M.AssertNoSuchEntityException(t)
	return t
end

local AssessmentTargetFilter_keys = { "assessmentTargetNamePattern" = true, nil }

function M.AssertAssessmentTargetFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssessmentTargetFilter to be of type 'table'")
	if struct["assessmentTargetNamePattern"] then M.AssertNamePattern(struct["assessmentTargetNamePattern"]) end
	for k,_ in pairs(struct) do
		assert(AssessmentTargetFilter_keys[k], "AssessmentTargetFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssessmentTargetFilter
-- <p>Used as the request parameter in the <a>ListAssessmentTargets</a> action.</p>
-- @param assessmentTargetNamePattern [NamePattern] <p>For a record to match a filter, an explicit value or a string that contains a wildcard that is specified for this data type property must match the value of the <b>assessmentTargetName</b> property of the <a>AssessmentTarget</a> data type.</p>
function M.AssessmentTargetFilter(assessmentTargetNamePattern, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssessmentTargetFilter")
	local t = { 
		["assessmentTargetNamePattern"] = assessmentTargetNamePattern,
	}
	M.AssertAssessmentTargetFilter(t)
	return t
end

local ListRulesPackagesResponse_keys = { "nextToken" = true, "rulesPackageArns" = true, nil }

function M.AssertListRulesPackagesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRulesPackagesResponse to be of type 'table'")
	assert(struct["rulesPackageArns"], "Expected key rulesPackageArns to exist in table")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["rulesPackageArns"] then M.AssertListReturnedArnList(struct["rulesPackageArns"]) end
	for k,_ in pairs(struct) do
		assert(ListRulesPackagesResponse_keys[k], "ListRulesPackagesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRulesPackagesResponse
--  
-- @param nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- @param rulesPackageArns [ListReturnedArnList] <p>The list of ARNs that specifies the rules packages returned by the action.</p>
-- Required parameter: rulesPackageArns
function M.ListRulesPackagesResponse(nextToken, rulesPackageArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRulesPackagesResponse")
	local t = { 
		["nextToken"] = nextToken,
		["rulesPackageArns"] = rulesPackageArns,
	}
	M.AssertListRulesPackagesResponse(t)
	return t
end

local Finding_keys = { "assetType" = true, "confidence" = true, "numericSeverity" = true, "description" = true, "service" = true, "title" = true, "indicatorOfCompromise" = true, "assetAttributes" = true, "userAttributes" = true, "createdAt" = true, "recommendation" = true, "updatedAt" = true, "attributes" = true, "schemaVersion" = true, "serviceAttributes" = true, "id" = true, "arn" = true, "severity" = true, nil }

function M.AssertFinding(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Finding to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	assert(struct["attributes"], "Expected key attributes to exist in table")
	assert(struct["userAttributes"], "Expected key userAttributes to exist in table")
	assert(struct["createdAt"], "Expected key createdAt to exist in table")
	assert(struct["updatedAt"], "Expected key updatedAt to exist in table")
	if struct["assetType"] then M.AssertAssetType(struct["assetType"]) end
	if struct["confidence"] then M.AssertIocConfidence(struct["confidence"]) end
	if struct["numericSeverity"] then M.AssertNumericSeverity(struct["numericSeverity"]) end
	if struct["description"] then M.AssertText(struct["description"]) end
	if struct["service"] then M.AssertServiceName(struct["service"]) end
	if struct["title"] then M.AssertText(struct["title"]) end
	if struct["indicatorOfCompromise"] then M.AssertBool(struct["indicatorOfCompromise"]) end
	if struct["assetAttributes"] then M.AssertAssetAttributes(struct["assetAttributes"]) end
	if struct["userAttributes"] then M.AssertUserAttributeList(struct["userAttributes"]) end
	if struct["createdAt"] then M.AssertTimestamp(struct["createdAt"]) end
	if struct["recommendation"] then M.AssertText(struct["recommendation"]) end
	if struct["updatedAt"] then M.AssertTimestamp(struct["updatedAt"]) end
	if struct["attributes"] then M.AssertAttributeList(struct["attributes"]) end
	if struct["schemaVersion"] then M.AssertNumericVersion(struct["schemaVersion"]) end
	if struct["serviceAttributes"] then M.AssertInspectorServiceAttributes(struct["serviceAttributes"]) end
	if struct["id"] then M.AssertFindingId(struct["id"]) end
	if struct["arn"] then M.AssertArn(struct["arn"]) end
	if struct["severity"] then M.AssertSeverity(struct["severity"]) end
	for k,_ in pairs(struct) do
		assert(Finding_keys[k], "Finding contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Finding
-- <p>Contains information about an Amazon Inspector finding. This data type is used as the response element in the <a>DescribeFindings</a> action.</p>
-- @param assetType [AssetType] <p>The type of the host from which the finding is generated.</p>
-- @param confidence [IocConfidence] <p>This data element is currently not used.</p>
-- @param numericSeverity [NumericSeverity] <p>The numeric value of the finding severity.</p>
-- @param description [Text] <p>The description of the finding.</p>
-- @param service [ServiceName] <p>The data element is set to "Inspector".</p>
-- @param title [Text] <p>The name of the finding.</p>
-- @param indicatorOfCompromise [Bool] <p>This data element is currently not used.</p>
-- @param assetAttributes [AssetAttributes] <p>A collection of attributes of the host from which the finding is generated.</p>
-- @param userAttributes [UserAttributeList] <p>The user-defined attributes that are assigned to the finding.</p>
-- @param createdAt [Timestamp] <p>The time when the finding was generated.</p>
-- @param recommendation [Text] <p>The recommendation for the finding.</p>
-- @param updatedAt [Timestamp] <p>The time when <a>AddAttributesToFindings</a> is called.</p>
-- @param attributes [AttributeList] <p>The system-defined attributes for the finding.</p>
-- @param schemaVersion [NumericVersion] <p>The schema version of this data type.</p>
-- @param serviceAttributes [InspectorServiceAttributes] <p>This data type is used in the <a>Finding</a> data type.</p>
-- @param id [FindingId] <p>The ID of the finding.</p>
-- @param arn [Arn] <p>The ARN that specifies the finding.</p>
-- @param severity [Severity] <p>The finding severity. Values can be set to High, Medium, Low, and Informational.</p>
-- Required parameter: arn
-- Required parameter: attributes
-- Required parameter: userAttributes
-- Required parameter: createdAt
-- Required parameter: updatedAt
function M.Finding(assetType, confidence, numericSeverity, description, service, title, indicatorOfCompromise, assetAttributes, userAttributes, createdAt, recommendation, updatedAt, attributes, schemaVersion, serviceAttributes, id, arn, severity, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Finding")
	local t = { 
		["assetType"] = assetType,
		["confidence"] = confidence,
		["numericSeverity"] = numericSeverity,
		["description"] = description,
		["service"] = service,
		["title"] = title,
		["indicatorOfCompromise"] = indicatorOfCompromise,
		["assetAttributes"] = assetAttributes,
		["userAttributes"] = userAttributes,
		["createdAt"] = createdAt,
		["recommendation"] = recommendation,
		["updatedAt"] = updatedAt,
		["attributes"] = attributes,
		["schemaVersion"] = schemaVersion,
		["serviceAttributes"] = serviceAttributes,
		["id"] = id,
		["arn"] = arn,
		["severity"] = severity,
	}
	M.AssertFinding(t)
	return t
end

local ListFindingsResponse_keys = { "nextToken" = true, "findingArns" = true, nil }

function M.AssertListFindingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListFindingsResponse to be of type 'table'")
	assert(struct["findingArns"], "Expected key findingArns to exist in table")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["findingArns"] then M.AssertListReturnedArnList(struct["findingArns"]) end
	for k,_ in pairs(struct) do
		assert(ListFindingsResponse_keys[k], "ListFindingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListFindingsResponse
--  
-- @param nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- @param findingArns [ListReturnedArnList] <p>A list of ARNs that specifies the findings returned by the action.</p>
-- Required parameter: findingArns
function M.ListFindingsResponse(nextToken, findingArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListFindingsResponse")
	local t = { 
		["nextToken"] = nextToken,
		["findingArns"] = findingArns,
	}
	M.AssertListFindingsResponse(t)
	return t
end

local AgentPreview_keys = { "autoScalingGroup" = true, "agentId" = true, nil }

function M.AssertAgentPreview(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AgentPreview to be of type 'table'")
	assert(struct["agentId"], "Expected key agentId to exist in table")
	if struct["autoScalingGroup"] then M.AssertAutoScalingGroup(struct["autoScalingGroup"]) end
	if struct["agentId"] then M.AssertAgentId(struct["agentId"]) end
	for k,_ in pairs(struct) do
		assert(AgentPreview_keys[k], "AgentPreview contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AgentPreview
-- <p>Used as a response element in the <a>PreviewAgents</a> action.</p>
-- @param autoScalingGroup [AutoScalingGroup] <p>The Auto Scaling group for the EC2 instance where the agent is installed.</p>
-- @param agentId [AgentId] <p>The ID of the EC2 instance where the agent is installed.</p>
-- Required parameter: agentId
function M.AgentPreview(autoScalingGroup, agentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AgentPreview")
	local t = { 
		["autoScalingGroup"] = autoScalingGroup,
		["agentId"] = agentId,
	}
	M.AssertAgentPreview(t)
	return t
end

local CreateAssessmentTargetResponse_keys = { "assessmentTargetArn" = true, nil }

function M.AssertCreateAssessmentTargetResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAssessmentTargetResponse to be of type 'table'")
	assert(struct["assessmentTargetArn"], "Expected key assessmentTargetArn to exist in table")
	if struct["assessmentTargetArn"] then M.AssertArn(struct["assessmentTargetArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateAssessmentTargetResponse_keys[k], "CreateAssessmentTargetResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAssessmentTargetResponse
--  
-- @param assessmentTargetArn [Arn] <p>The ARN that specifies the assessment target that is created.</p>
-- Required parameter: assessmentTargetArn
function M.CreateAssessmentTargetResponse(assessmentTargetArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAssessmentTargetResponse")
	local t = { 
		["assessmentTargetArn"] = assessmentTargetArn,
	}
	M.AssertCreateAssessmentTargetResponse(t)
	return t
end

local ListAssessmentTemplatesResponse_keys = { "nextToken" = true, "assessmentTemplateArns" = true, nil }

function M.AssertListAssessmentTemplatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssessmentTemplatesResponse to be of type 'table'")
	assert(struct["assessmentTemplateArns"], "Expected key assessmentTemplateArns to exist in table")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["assessmentTemplateArns"] then M.AssertListReturnedArnList(struct["assessmentTemplateArns"]) end
	for k,_ in pairs(struct) do
		assert(ListAssessmentTemplatesResponse_keys[k], "ListAssessmentTemplatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssessmentTemplatesResponse
--  
-- @param nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- @param assessmentTemplateArns [ListReturnedArnList] <p>A list of ARNs that specifies the assessment templates returned by the action.</p>
-- Required parameter: assessmentTemplateArns
function M.ListAssessmentTemplatesResponse(nextToken, assessmentTemplateArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssessmentTemplatesResponse")
	local t = { 
		["nextToken"] = nextToken,
		["assessmentTemplateArns"] = assessmentTemplateArns,
	}
	M.AssertListAssessmentTemplatesResponse(t)
	return t
end

local AddAttributesToFindingsResponse_keys = { "failedItems" = true, nil }

function M.AssertAddAttributesToFindingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddAttributesToFindingsResponse to be of type 'table'")
	assert(struct["failedItems"], "Expected key failedItems to exist in table")
	if struct["failedItems"] then M.AssertFailedItems(struct["failedItems"]) end
	for k,_ in pairs(struct) do
		assert(AddAttributesToFindingsResponse_keys[k], "AddAttributesToFindingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddAttributesToFindingsResponse
--  
-- @param failedItems [FailedItems] <p>Attribute details that cannot be described. An error code is provided for each failed item.</p>
-- Required parameter: failedItems
function M.AddAttributesToFindingsResponse(failedItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddAttributesToFindingsResponse")
	local t = { 
		["failedItems"] = failedItems,
	}
	M.AssertAddAttributesToFindingsResponse(t)
	return t
end

local DescribeAssessmentRunsRequest_keys = { "assessmentRunArns" = true, nil }

function M.AssertDescribeAssessmentRunsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAssessmentRunsRequest to be of type 'table'")
	assert(struct["assessmentRunArns"], "Expected key assessmentRunArns to exist in table")
	if struct["assessmentRunArns"] then M.AssertBatchDescribeArnList(struct["assessmentRunArns"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAssessmentRunsRequest_keys[k], "DescribeAssessmentRunsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAssessmentRunsRequest
--  
-- @param assessmentRunArns [BatchDescribeArnList] <p>The ARN that specifies the assessment run that you want to describe.</p>
-- Required parameter: assessmentRunArns
function M.DescribeAssessmentRunsRequest(assessmentRunArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAssessmentRunsRequest")
	local t = { 
		["assessmentRunArns"] = assessmentRunArns,
	}
	M.AssertDescribeAssessmentRunsRequest(t)
	return t
end

local CreateAssessmentTargetRequest_keys = { "assessmentTargetName" = true, "resourceGroupArn" = true, nil }

function M.AssertCreateAssessmentTargetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAssessmentTargetRequest to be of type 'table'")
	assert(struct["assessmentTargetName"], "Expected key assessmentTargetName to exist in table")
	assert(struct["resourceGroupArn"], "Expected key resourceGroupArn to exist in table")
	if struct["assessmentTargetName"] then M.AssertAssessmentTargetName(struct["assessmentTargetName"]) end
	if struct["resourceGroupArn"] then M.AssertArn(struct["resourceGroupArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateAssessmentTargetRequest_keys[k], "CreateAssessmentTargetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAssessmentTargetRequest
--  
-- @param assessmentTargetName [AssessmentTargetName] <p>The user-defined name that identifies the assessment target that you want to create. The name must be unique within the AWS account.</p>
-- @param resourceGroupArn [Arn] <p>The ARN that specifies the resource group that is used to create the assessment target.</p>
-- Required parameter: assessmentTargetName
-- Required parameter: resourceGroupArn
function M.CreateAssessmentTargetRequest(assessmentTargetName, resourceGroupArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAssessmentTargetRequest")
	local t = { 
		["assessmentTargetName"] = assessmentTargetName,
		["resourceGroupArn"] = resourceGroupArn,
	}
	M.AssertCreateAssessmentTargetRequest(t)
	return t
end

local AccessDeniedException_keys = { "errorCode" = true, "canRetry" = true, "message" = true, nil }

function M.AssertAccessDeniedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccessDeniedException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	assert(struct["errorCode"], "Expected key errorCode to exist in table")
	assert(struct["canRetry"], "Expected key canRetry to exist in table")
	if struct["errorCode"] then M.AssertAccessDeniedErrorCode(struct["errorCode"]) end
	if struct["canRetry"] then M.AssertBool(struct["canRetry"]) end
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(AccessDeniedException_keys[k], "AccessDeniedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccessDeniedException
-- <p>You do not have required permissions to access the requested resource.</p>
-- @param errorCode [AccessDeniedErrorCode] <p>Code that indicates the type of error that is generated.</p>
-- @param canRetry [Bool] <p>You can immediately retry your request.</p>
-- @param message [ErrorMessage] <p>Details of the exception error.</p>
-- Required parameter: message
-- Required parameter: errorCode
-- Required parameter: canRetry
function M.AccessDeniedException(errorCode, canRetry, message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AccessDeniedException")
	local t = { 
		["errorCode"] = errorCode,
		["canRetry"] = canRetry,
		["message"] = message,
	}
	M.AssertAccessDeniedException(t)
	return t
end

local DeleteAssessmentTemplateRequest_keys = { "assessmentTemplateArn" = true, nil }

function M.AssertDeleteAssessmentTemplateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAssessmentTemplateRequest to be of type 'table'")
	assert(struct["assessmentTemplateArn"], "Expected key assessmentTemplateArn to exist in table")
	if struct["assessmentTemplateArn"] then M.AssertArn(struct["assessmentTemplateArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteAssessmentTemplateRequest_keys[k], "DeleteAssessmentTemplateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAssessmentTemplateRequest
--  
-- @param assessmentTemplateArn [Arn] <p>The ARN that specifies the assessment template that you want to delete.</p>
-- Required parameter: assessmentTemplateArn
function M.DeleteAssessmentTemplateRequest(assessmentTemplateArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAssessmentTemplateRequest")
	local t = { 
		["assessmentTemplateArn"] = assessmentTemplateArn,
	}
	M.AssertDeleteAssessmentTemplateRequest(t)
	return t
end

local FindingFilter_keys = { "autoScalingGroups" = true, "creationTimeRange" = true, "ruleNames" = true, "severities" = true, "userAttributes" = true, "rulesPackageArns" = true, "attributes" = true, "agentIds" = true, nil }

function M.AssertFindingFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FindingFilter to be of type 'table'")
	if struct["autoScalingGroups"] then M.AssertAutoScalingGroupList(struct["autoScalingGroups"]) end
	if struct["creationTimeRange"] then M.AssertTimestampRange(struct["creationTimeRange"]) end
	if struct["ruleNames"] then M.AssertRuleNameList(struct["ruleNames"]) end
	if struct["severities"] then M.AssertSeverityList(struct["severities"]) end
	if struct["userAttributes"] then M.AssertAttributeList(struct["userAttributes"]) end
	if struct["rulesPackageArns"] then M.AssertFilterRulesPackageArnList(struct["rulesPackageArns"]) end
	if struct["attributes"] then M.AssertAttributeList(struct["attributes"]) end
	if struct["agentIds"] then M.AssertAgentIdList(struct["agentIds"]) end
	for k,_ in pairs(struct) do
		assert(FindingFilter_keys[k], "FindingFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FindingFilter
-- <p>This data type is used as a request parameter in the <a>ListFindings</a> action.</p>
-- @param autoScalingGroups [AutoScalingGroupList] <p>For a record to match a filter, one of the values that is specified for this data type property must be the exact match of the value of the <b>autoScalingGroup</b> property of the <a>Finding</a> data type.</p>
-- @param creationTimeRange [TimestampRange] <p>The time range during which the finding is generated.</p>
-- @param ruleNames [RuleNameList] <p>For a record to match a filter, one of the values that is specified for this data type property must be the exact match of the value of the <b>ruleName</b> property of the <a>Finding</a> data type.</p>
-- @param severities [SeverityList] <p>For a record to match a filter, one of the values that is specified for this data type property must be the exact match of the value of the <b>severity</b> property of the <a>Finding</a> data type.</p>
-- @param userAttributes [AttributeList] <p>For a record to match a filter, the value that is specified for this data type property must be contained in the list of values of the <b>userAttributes</b> property of the <a>Finding</a> data type.</p>
-- @param rulesPackageArns [FilterRulesPackageArnList] <p>For a record to match a filter, one of the values that is specified for this data type property must be the exact match of the value of the <b>rulesPackageArn</b> property of the <a>Finding</a> data type.</p>
-- @param attributes [AttributeList] <p>For a record to match a filter, the list of values that are specified for this data type property must be contained in the list of values of the <b>attributes</b> property of the <a>Finding</a> data type.</p>
-- @param agentIds [AgentIdList] <p>For a record to match a filter, one of the values that is specified for this data type property must be the exact match of the value of the <b>agentId</b> property of the <a>Finding</a> data type.</p>
function M.FindingFilter(autoScalingGroups, creationTimeRange, ruleNames, severities, userAttributes, rulesPackageArns, attributes, agentIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FindingFilter")
	local t = { 
		["autoScalingGroups"] = autoScalingGroups,
		["creationTimeRange"] = creationTimeRange,
		["ruleNames"] = ruleNames,
		["severities"] = severities,
		["userAttributes"] = userAttributes,
		["rulesPackageArns"] = rulesPackageArns,
		["attributes"] = attributes,
		["agentIds"] = agentIds,
	}
	M.AssertFindingFilter(t)
	return t
end

local ListAssessmentTargetsResponse_keys = { "assessmentTargetArns" = true, "nextToken" = true, nil }

function M.AssertListAssessmentTargetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssessmentTargetsResponse to be of type 'table'")
	assert(struct["assessmentTargetArns"], "Expected key assessmentTargetArns to exist in table")
	if struct["assessmentTargetArns"] then M.AssertListReturnedArnList(struct["assessmentTargetArns"]) end
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListAssessmentTargetsResponse_keys[k], "ListAssessmentTargetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssessmentTargetsResponse
--  
-- @param assessmentTargetArns [ListReturnedArnList] <p>A list of ARNs that specifies the assessment targets that are returned by the action.</p>
-- @param nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- Required parameter: assessmentTargetArns
function M.ListAssessmentTargetsResponse(assessmentTargetArns, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssessmentTargetsResponse")
	local t = { 
		["assessmentTargetArns"] = assessmentTargetArns,
		["nextToken"] = nextToken,
	}
	M.AssertListAssessmentTargetsResponse(t)
	return t
end

local SetTagsForResourceRequest_keys = { "resourceArn" = true, "tags" = true, nil }

function M.AssertSetTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SetTagsForResourceRequest to be of type 'table'")
	assert(struct["resourceArn"], "Expected key resourceArn to exist in table")
	if struct["resourceArn"] then M.AssertArn(struct["resourceArn"]) end
	if struct["tags"] then M.AssertTagList(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(SetTagsForResourceRequest_keys[k], "SetTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SetTagsForResourceRequest
--  
-- @param resourceArn [Arn] <p>The ARN of the assessment template that you want to set tags to.</p>
-- @param tags [TagList] <p>A collection of key and value pairs that you want to set to the assessment template.</p>
-- Required parameter: resourceArn
function M.SetTagsForResourceRequest(resourceArn, tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SetTagsForResourceRequest")
	local t = { 
		["resourceArn"] = resourceArn,
		["tags"] = tags,
	}
	M.AssertSetTagsForResourceRequest(t)
	return t
end

local DeleteAssessmentTargetRequest_keys = { "assessmentTargetArn" = true, nil }

function M.AssertDeleteAssessmentTargetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAssessmentTargetRequest to be of type 'table'")
	assert(struct["assessmentTargetArn"], "Expected key assessmentTargetArn to exist in table")
	if struct["assessmentTargetArn"] then M.AssertArn(struct["assessmentTargetArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteAssessmentTargetRequest_keys[k], "DeleteAssessmentTargetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAssessmentTargetRequest
--  
-- @param assessmentTargetArn [Arn] <p>The ARN that specifies the assessment target that you want to delete.</p>
-- Required parameter: assessmentTargetArn
function M.DeleteAssessmentTargetRequest(assessmentTargetArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAssessmentTargetRequest")
	local t = { 
		["assessmentTargetArn"] = assessmentTargetArn,
	}
	M.AssertDeleteAssessmentTargetRequest(t)
	return t
end

local StartAssessmentRunResponse_keys = { "assessmentRunArn" = true, nil }

function M.AssertStartAssessmentRunResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartAssessmentRunResponse to be of type 'table'")
	assert(struct["assessmentRunArn"], "Expected key assessmentRunArn to exist in table")
	if struct["assessmentRunArn"] then M.AssertArn(struct["assessmentRunArn"]) end
	for k,_ in pairs(struct) do
		assert(StartAssessmentRunResponse_keys[k], "StartAssessmentRunResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartAssessmentRunResponse
--  
-- @param assessmentRunArn [Arn] <p>The ARN of the assessment run that has been started.</p>
-- Required parameter: assessmentRunArn
function M.StartAssessmentRunResponse(assessmentRunArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartAssessmentRunResponse")
	local t = { 
		["assessmentRunArn"] = assessmentRunArn,
	}
	M.AssertStartAssessmentRunResponse(t)
	return t
end

local AssessmentTarget_keys = { "resourceGroupArn" = true, "createdAt" = true, "name" = true, "arn" = true, "updatedAt" = true, nil }

function M.AssertAssessmentTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssessmentTarget to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["resourceGroupArn"], "Expected key resourceGroupArn to exist in table")
	assert(struct["createdAt"], "Expected key createdAt to exist in table")
	assert(struct["updatedAt"], "Expected key updatedAt to exist in table")
	if struct["resourceGroupArn"] then M.AssertArn(struct["resourceGroupArn"]) end
	if struct["createdAt"] then M.AssertTimestamp(struct["createdAt"]) end
	if struct["name"] then M.AssertAssessmentTargetName(struct["name"]) end
	if struct["arn"] then M.AssertArn(struct["arn"]) end
	if struct["updatedAt"] then M.AssertTimestamp(struct["updatedAt"]) end
	for k,_ in pairs(struct) do
		assert(AssessmentTarget_keys[k], "AssessmentTarget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssessmentTarget
-- <p>Contains information about an Amazon Inspector application. This data type is used as the response element in the <a>DescribeAssessmentTargets</a> action.</p>
-- @param resourceGroupArn [Arn] <p>The ARN that specifies the resource group that is associated with the assessment target.</p>
-- @param createdAt [Timestamp] <p>The time at which the assessment target is created.</p>
-- @param name [AssessmentTargetName] <p>The name of the Amazon Inspector assessment target.</p>
-- @param arn [Arn] <p>The ARN that specifies the Amazon Inspector assessment target.</p>
-- @param updatedAt [Timestamp] <p>The time at which <a>UpdateAssessmentTarget</a> is called.</p>
-- Required parameter: arn
-- Required parameter: name
-- Required parameter: resourceGroupArn
-- Required parameter: createdAt
-- Required parameter: updatedAt
function M.AssessmentTarget(resourceGroupArn, createdAt, name, arn, updatedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssessmentTarget")
	local t = { 
		["resourceGroupArn"] = resourceGroupArn,
		["createdAt"] = createdAt,
		["name"] = name,
		["arn"] = arn,
		["updatedAt"] = updatedAt,
	}
	M.AssertAssessmentTarget(t)
	return t
end

local DescribeAssessmentTemplatesRequest_keys = { "assessmentTemplateArns" = true, nil }

function M.AssertDescribeAssessmentTemplatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAssessmentTemplatesRequest to be of type 'table'")
	assert(struct["assessmentTemplateArns"], "Expected key assessmentTemplateArns to exist in table")
	if struct["assessmentTemplateArns"] then M.AssertBatchDescribeArnList(struct["assessmentTemplateArns"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAssessmentTemplatesRequest_keys[k], "DescribeAssessmentTemplatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAssessmentTemplatesRequest
--  
-- @param assessmentTemplateArns [BatchDescribeArnList]  
-- Required parameter: assessmentTemplateArns
function M.DescribeAssessmentTemplatesRequest(assessmentTemplateArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAssessmentTemplatesRequest")
	local t = { 
		["assessmentTemplateArns"] = assessmentTemplateArns,
	}
	M.AssertDescribeAssessmentTemplatesRequest(t)
	return t
end

local StartAssessmentRunRequest_keys = { "assessmentRunName" = true, "assessmentTemplateArn" = true, nil }

function M.AssertStartAssessmentRunRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartAssessmentRunRequest to be of type 'table'")
	assert(struct["assessmentTemplateArn"], "Expected key assessmentTemplateArn to exist in table")
	if struct["assessmentRunName"] then M.AssertAssessmentRunName(struct["assessmentRunName"]) end
	if struct["assessmentTemplateArn"] then M.AssertArn(struct["assessmentTemplateArn"]) end
	for k,_ in pairs(struct) do
		assert(StartAssessmentRunRequest_keys[k], "StartAssessmentRunRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartAssessmentRunRequest
--  
-- @param assessmentRunName [AssessmentRunName] <p>You can specify the name for the assessment run. The name must be unique for the assessment template whose ARN is used to start the assessment run.</p>
-- @param assessmentTemplateArn [Arn] <p>The ARN of the assessment template of the assessment run that you want to start.</p>
-- Required parameter: assessmentTemplateArn
function M.StartAssessmentRunRequest(assessmentRunName, assessmentTemplateArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartAssessmentRunRequest")
	local t = { 
		["assessmentRunName"] = assessmentRunName,
		["assessmentTemplateArn"] = assessmentTemplateArn,
	}
	M.AssertStartAssessmentRunRequest(t)
	return t
end

local DescribeAssessmentTargetsResponse_keys = { "assessmentTargets" = true, "failedItems" = true, nil }

function M.AssertDescribeAssessmentTargetsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAssessmentTargetsResponse to be of type 'table'")
	assert(struct["assessmentTargets"], "Expected key assessmentTargets to exist in table")
	assert(struct["failedItems"], "Expected key failedItems to exist in table")
	if struct["assessmentTargets"] then M.AssertAssessmentTargetList(struct["assessmentTargets"]) end
	if struct["failedItems"] then M.AssertFailedItems(struct["failedItems"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAssessmentTargetsResponse_keys[k], "DescribeAssessmentTargetsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAssessmentTargetsResponse
--  
-- @param assessmentTargets [AssessmentTargetList] <p>Information about the assessment targets.</p>
-- @param failedItems [FailedItems] <p>Assessment target details that cannot be described. An error code is provided for each failed item.</p>
-- Required parameter: assessmentTargets
-- Required parameter: failedItems
function M.DescribeAssessmentTargetsResponse(assessmentTargets, failedItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAssessmentTargetsResponse")
	local t = { 
		["assessmentTargets"] = assessmentTargets,
		["failedItems"] = failedItems,
	}
	M.AssertDescribeAssessmentTargetsResponse(t)
	return t
end

local ListEventSubscriptionsResponse_keys = { "nextToken" = true, "subscriptions" = true, nil }

function M.AssertListEventSubscriptionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListEventSubscriptionsResponse to be of type 'table'")
	assert(struct["subscriptions"], "Expected key subscriptions to exist in table")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["subscriptions"] then M.AssertSubscriptionList(struct["subscriptions"]) end
	for k,_ in pairs(struct) do
		assert(ListEventSubscriptionsResponse_keys[k], "ListEventSubscriptionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListEventSubscriptionsResponse
--  
-- @param nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- @param subscriptions [SubscriptionList] <p>Details of the returned event subscriptions.</p>
-- Required parameter: subscriptions
function M.ListEventSubscriptionsResponse(nextToken, subscriptions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListEventSubscriptionsResponse")
	local t = { 
		["nextToken"] = nextToken,
		["subscriptions"] = subscriptions,
	}
	M.AssertListEventSubscriptionsResponse(t)
	return t
end

local DescribeAssessmentTemplatesResponse_keys = { "assessmentTemplates" = true, "failedItems" = true, nil }

function M.AssertDescribeAssessmentTemplatesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAssessmentTemplatesResponse to be of type 'table'")
	assert(struct["assessmentTemplates"], "Expected key assessmentTemplates to exist in table")
	assert(struct["failedItems"], "Expected key failedItems to exist in table")
	if struct["assessmentTemplates"] then M.AssertAssessmentTemplateList(struct["assessmentTemplates"]) end
	if struct["failedItems"] then M.AssertFailedItems(struct["failedItems"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAssessmentTemplatesResponse_keys[k], "DescribeAssessmentTemplatesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAssessmentTemplatesResponse
--  
-- @param assessmentTemplates [AssessmentTemplateList] <p>Information about the assessment templates.</p>
-- @param failedItems [FailedItems] <p>Assessment template details that cannot be described. An error code is provided for each failed item.</p>
-- Required parameter: assessmentTemplates
-- Required parameter: failedItems
function M.DescribeAssessmentTemplatesResponse(assessmentTemplates, failedItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAssessmentTemplatesResponse")
	local t = { 
		["assessmentTemplates"] = assessmentTemplates,
		["failedItems"] = failedItems,
	}
	M.AssertDescribeAssessmentTemplatesResponse(t)
	return t
end

local DurationRange_keys = { "minSeconds" = true, "maxSeconds" = true, nil }

function M.AssertDurationRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DurationRange to be of type 'table'")
	if struct["minSeconds"] then M.AssertAssessmentRunDuration(struct["minSeconds"]) end
	if struct["maxSeconds"] then M.AssertAssessmentRunDuration(struct["maxSeconds"]) end
	for k,_ in pairs(struct) do
		assert(DurationRange_keys[k], "DurationRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DurationRange
-- <p>This data type is used in the <a>AssessmentTemplateFilter</a> data type.</p>
-- @param minSeconds [AssessmentRunDuration] <p>The minimum value of the duration range. Must be greater than zero.</p>
-- @param maxSeconds [AssessmentRunDuration] <p>The maximum value of the duration range. Must be less than or equal to 604800 seconds (1 week).</p>
function M.DurationRange(minSeconds, maxSeconds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DurationRange")
	local t = { 
		["minSeconds"] = minSeconds,
		["maxSeconds"] = maxSeconds,
	}
	M.AssertDurationRange(t)
	return t
end

local GetTelemetryMetadataRequest_keys = { "assessmentRunArn" = true, nil }

function M.AssertGetTelemetryMetadataRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTelemetryMetadataRequest to be of type 'table'")
	assert(struct["assessmentRunArn"], "Expected key assessmentRunArn to exist in table")
	if struct["assessmentRunArn"] then M.AssertArn(struct["assessmentRunArn"]) end
	for k,_ in pairs(struct) do
		assert(GetTelemetryMetadataRequest_keys[k], "GetTelemetryMetadataRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTelemetryMetadataRequest
--  
-- @param assessmentRunArn [Arn] <p>The ARN that specifies the assessment run that has the telemetry data that you want to obtain.</p>
-- Required parameter: assessmentRunArn
function M.GetTelemetryMetadataRequest(assessmentRunArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTelemetryMetadataRequest")
	local t = { 
		["assessmentRunArn"] = assessmentRunArn,
	}
	M.AssertGetTelemetryMetadataRequest(t)
	return t
end

local ListTagsForResourceRequest_keys = { "resourceArn" = true, nil }

function M.AssertListTagsForResourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceRequest to be of type 'table'")
	assert(struct["resourceArn"], "Expected key resourceArn to exist in table")
	if struct["resourceArn"] then M.AssertArn(struct["resourceArn"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourceRequest_keys[k], "ListTagsForResourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceRequest
--  
-- @param resourceArn [Arn] <p>The ARN that specifies the assessment template whose tags you want to list.</p>
-- Required parameter: resourceArn
function M.ListTagsForResourceRequest(resourceArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceRequest")
	local t = { 
		["resourceArn"] = resourceArn,
	}
	M.AssertListTagsForResourceRequest(t)
	return t
end

local ListAssessmentRunAgentsResponse_keys = { "assessmentRunAgents" = true, "nextToken" = true, nil }

function M.AssertListAssessmentRunAgentsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssessmentRunAgentsResponse to be of type 'table'")
	assert(struct["assessmentRunAgents"], "Expected key assessmentRunAgents to exist in table")
	if struct["assessmentRunAgents"] then M.AssertAssessmentRunAgentList(struct["assessmentRunAgents"]) end
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListAssessmentRunAgentsResponse_keys[k], "ListAssessmentRunAgentsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssessmentRunAgentsResponse
--  
-- @param assessmentRunAgents [AssessmentRunAgentList] <p>A list of ARNs that specifies the agents returned by the action.</p>
-- @param nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- Required parameter: assessmentRunAgents
function M.ListAssessmentRunAgentsResponse(assessmentRunAgents, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssessmentRunAgentsResponse")
	local t = { 
		["assessmentRunAgents"] = assessmentRunAgents,
		["nextToken"] = nextToken,
	}
	M.AssertListAssessmentRunAgentsResponse(t)
	return t
end

local UnsupportedFeatureException_keys = { "canRetry" = true, "message" = true, nil }

function M.AssertUnsupportedFeatureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedFeatureException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	assert(struct["canRetry"], "Expected key canRetry to exist in table")
	if struct["canRetry"] then M.AssertBool(struct["canRetry"]) end
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnsupportedFeatureException_keys[k], "UnsupportedFeatureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedFeatureException
-- <p>Used by the <a>GetAssessmentReport</a> API. The request was rejected because you tried to generate a report for an assessment run that existed before reporting was supported in Amazon Inspector. You can only generate reports for assessment runs that took place or will take place after generating reports in Amazon Inspector became available.</p>
-- @param canRetry [Bool] <p>Used by the <a>GetAssessmentReport</a> API. The request was rejected because you tried to generate a report for an assessment run that existed before reporting was supported in Amazon Inspector. You can only generate reports for assessment runs that took place or will take place after generating reports in Amazon Inspector became available.</p>
-- @param message [ErrorMessage] <p>Used by the <a>GetAssessmentReport</a> API. The request was rejected because you tried to generate a report for an assessment run that existed before reporting was supported in Amazon Inspector. You can only generate reports for assessment runs that took place or will take place after generating reports in Amazon Inspector became available.</p>
-- Required parameter: message
-- Required parameter: canRetry
function M.UnsupportedFeatureException(canRetry, message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedFeatureException")
	local t = { 
		["canRetry"] = canRetry,
		["message"] = message,
	}
	M.AssertUnsupportedFeatureException(t)
	return t
end

local InspectorServiceAttributes_keys = { "schemaVersion" = true, "rulesPackageArn" = true, "assessmentRunArn" = true, nil }

function M.AssertInspectorServiceAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InspectorServiceAttributes to be of type 'table'")
	assert(struct["schemaVersion"], "Expected key schemaVersion to exist in table")
	if struct["schemaVersion"] then M.AssertNumericVersion(struct["schemaVersion"]) end
	if struct["rulesPackageArn"] then M.AssertArn(struct["rulesPackageArn"]) end
	if struct["assessmentRunArn"] then M.AssertArn(struct["assessmentRunArn"]) end
	for k,_ in pairs(struct) do
		assert(InspectorServiceAttributes_keys[k], "InspectorServiceAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InspectorServiceAttributes
-- <p>This data type is used in the <a>Finding</a> data type.</p>
-- @param schemaVersion [NumericVersion] <p>The schema version of this data type.</p>
-- @param rulesPackageArn [Arn] <p>The ARN of the rules package that is used to generate the finding.</p>
-- @param assessmentRunArn [Arn] <p>The ARN of the assessment run during which the finding is generated.</p>
-- Required parameter: schemaVersion
function M.InspectorServiceAttributes(schemaVersion, rulesPackageArn, assessmentRunArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InspectorServiceAttributes")
	local t = { 
		["schemaVersion"] = schemaVersion,
		["rulesPackageArn"] = rulesPackageArn,
		["assessmentRunArn"] = assessmentRunArn,
	}
	M.AssertInspectorServiceAttributes(t)
	return t
end

local ResourceGroup_keys = { "createdAt" = true, "arn" = true, "tags" = true, nil }

function M.AssertResourceGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceGroup to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	assert(struct["tags"], "Expected key tags to exist in table")
	assert(struct["createdAt"], "Expected key createdAt to exist in table")
	if struct["createdAt"] then M.AssertTimestamp(struct["createdAt"]) end
	if struct["arn"] then M.AssertArn(struct["arn"]) end
	if struct["tags"] then M.AssertResourceGroupTags(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(ResourceGroup_keys[k], "ResourceGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceGroup
-- <p>Contains information about a resource group. The resource group defines a set of tags that, when queried, identify the AWS resources that make up the assessment target. This data type is used as the response element in the <a>DescribeResourceGroups</a> action.</p>
-- @param createdAt [Timestamp] <p>The time at which resource group is created.</p>
-- @param arn [Arn] <p>The ARN of the resource group.</p>
-- @param tags [ResourceGroupTags] <p>The tags (key and value pairs) of the resource group. This data type property is used in the <a>CreateResourceGroup</a> action.</p>
-- Required parameter: arn
-- Required parameter: tags
-- Required parameter: createdAt
function M.ResourceGroup(createdAt, arn, tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceGroup")
	local t = { 
		["createdAt"] = createdAt,
		["arn"] = arn,
		["tags"] = tags,
	}
	M.AssertResourceGroup(t)
	return t
end

local UnsubscribeFromEventRequest_keys = { "resourceArn" = true, "event" = true, "topicArn" = true, nil }

function M.AssertUnsubscribeFromEventRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsubscribeFromEventRequest to be of type 'table'")
	assert(struct["resourceArn"], "Expected key resourceArn to exist in table")
	assert(struct["event"], "Expected key event to exist in table")
	assert(struct["topicArn"], "Expected key topicArn to exist in table")
	if struct["resourceArn"] then M.AssertArn(struct["resourceArn"]) end
	if struct["event"] then M.AssertInspectorEvent(struct["event"]) end
	if struct["topicArn"] then M.AssertArn(struct["topicArn"]) end
	for k,_ in pairs(struct) do
		assert(UnsubscribeFromEventRequest_keys[k], "UnsubscribeFromEventRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsubscribeFromEventRequest
--  
-- @param resourceArn [Arn] <p>The ARN of the assessment template that is used during the event for which you want to stop receiving SNS notifications.</p>
-- @param event [InspectorEvent] <p>The event for which you want to stop receiving SNS notifications.</p>
-- @param topicArn [Arn] <p>The ARN of the SNS topic to which SNS notifications are sent.</p>
-- Required parameter: resourceArn
-- Required parameter: event
-- Required parameter: topicArn
function M.UnsubscribeFromEventRequest(resourceArn, event, topicArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsubscribeFromEventRequest")
	local t = { 
		["resourceArn"] = resourceArn,
		["event"] = event,
		["topicArn"] = topicArn,
	}
	M.AssertUnsubscribeFromEventRequest(t)
	return t
end

local ResourceGroupTag_keys = { "value" = true, "key" = true, nil }

function M.AssertResourceGroupTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceGroupTag to be of type 'table'")
	assert(struct["key"], "Expected key key to exist in table")
	if struct["value"] then M.AssertTagValue(struct["value"]) end
	if struct["key"] then M.AssertTagKey(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(ResourceGroupTag_keys[k], "ResourceGroupTag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceGroupTag
-- <p>This data type is used as one of the elements of the <a>ResourceGroup</a> data type.</p>
-- @param value [TagValue] <p>The value assigned to a tag key.</p>
-- @param key [TagKey] <p>A tag key.</p>
-- Required parameter: key
function M.ResourceGroupTag(value, key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceGroupTag")
	local t = { 
		["value"] = value,
		["key"] = key,
	}
	M.AssertResourceGroupTag(t)
	return t
end

local DescribeRulesPackagesRequest_keys = { "locale" = true, "rulesPackageArns" = true, nil }

function M.AssertDescribeRulesPackagesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeRulesPackagesRequest to be of type 'table'")
	assert(struct["rulesPackageArns"], "Expected key rulesPackageArns to exist in table")
	if struct["locale"] then M.AssertLocale(struct["locale"]) end
	if struct["rulesPackageArns"] then M.AssertBatchDescribeArnList(struct["rulesPackageArns"]) end
	for k,_ in pairs(struct) do
		assert(DescribeRulesPackagesRequest_keys[k], "DescribeRulesPackagesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeRulesPackagesRequest
--  
-- @param locale [Locale] <p>The locale that you want to translate a rules package description into.</p>
-- @param rulesPackageArns [BatchDescribeArnList] <p>The ARN that specifies the rules package that you want to describe.</p>
-- Required parameter: rulesPackageArns
function M.DescribeRulesPackagesRequest(locale, rulesPackageArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeRulesPackagesRequest")
	local t = { 
		["locale"] = locale,
		["rulesPackageArns"] = rulesPackageArns,
	}
	M.AssertDescribeRulesPackagesRequest(t)
	return t
end

local AssetAttributes_keys = { "amiId" = true, "hostname" = true, "autoScalingGroup" = true, "ipv4Addresses" = true, "schemaVersion" = true, "agentId" = true, nil }

function M.AssertAssetAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssetAttributes to be of type 'table'")
	assert(struct["schemaVersion"], "Expected key schemaVersion to exist in table")
	if struct["amiId"] then M.AssertAmiId(struct["amiId"]) end
	if struct["hostname"] then M.AssertHostname(struct["hostname"]) end
	if struct["autoScalingGroup"] then M.AssertAutoScalingGroup(struct["autoScalingGroup"]) end
	if struct["ipv4Addresses"] then M.AssertIpv4AddressList(struct["ipv4Addresses"]) end
	if struct["schemaVersion"] then M.AssertNumericVersion(struct["schemaVersion"]) end
	if struct["agentId"] then M.AssertAgentId(struct["agentId"]) end
	for k,_ in pairs(struct) do
		assert(AssetAttributes_keys[k], "AssetAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssetAttributes
-- <p>A collection of attributes of the host from which the finding is generated.</p>
-- @param amiId [AmiId] <p>The ID of the Amazon Machine Image (AMI) that is installed on the EC2 instance where the finding is generated.</p>
-- @param hostname [Hostname] <p>The hostname of the EC2 instance where the finding is generated.</p>
-- @param autoScalingGroup [AutoScalingGroup] <p>The Auto Scaling group of the EC2 instance where the finding is generated.</p>
-- @param ipv4Addresses [Ipv4AddressList] <p>The list of IP v4 addresses of the EC2 instance where the finding is generated.</p>
-- @param schemaVersion [NumericVersion] <p>The schema version of this data type.</p>
-- @param agentId [AgentId] <p>The ID of the agent that is installed on the EC2 instance where the finding is generated.</p>
-- Required parameter: schemaVersion
function M.AssetAttributes(amiId, hostname, autoScalingGroup, ipv4Addresses, schemaVersion, agentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssetAttributes")
	local t = { 
		["amiId"] = amiId,
		["hostname"] = hostname,
		["autoScalingGroup"] = autoScalingGroup,
		["ipv4Addresses"] = ipv4Addresses,
		["schemaVersion"] = schemaVersion,
		["agentId"] = agentId,
	}
	M.AssertAssetAttributes(t)
	return t
end

local DescribeFindingsResponse_keys = { "failedItems" = true, "findings" = true, nil }

function M.AssertDescribeFindingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFindingsResponse to be of type 'table'")
	assert(struct["findings"], "Expected key findings to exist in table")
	assert(struct["failedItems"], "Expected key failedItems to exist in table")
	if struct["failedItems"] then M.AssertFailedItems(struct["failedItems"]) end
	if struct["findings"] then M.AssertFindingList(struct["findings"]) end
	for k,_ in pairs(struct) do
		assert(DescribeFindingsResponse_keys[k], "DescribeFindingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFindingsResponse
--  
-- @param failedItems [FailedItems] <p>Finding details that cannot be described. An error code is provided for each failed item.</p>
-- @param findings [FindingList] <p>Information about the finding.</p>
-- Required parameter: findings
-- Required parameter: failedItems
function M.DescribeFindingsResponse(failedItems, findings, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFindingsResponse")
	local t = { 
		["failedItems"] = failedItems,
		["findings"] = findings,
	}
	M.AssertDescribeFindingsResponse(t)
	return t
end

local AgentAlreadyRunningAssessment_keys = { "assessmentRunArn" = true, "agentId" = true, nil }

function M.AssertAgentAlreadyRunningAssessment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AgentAlreadyRunningAssessment to be of type 'table'")
	assert(struct["agentId"], "Expected key agentId to exist in table")
	assert(struct["assessmentRunArn"], "Expected key assessmentRunArn to exist in table")
	if struct["assessmentRunArn"] then M.AssertArn(struct["assessmentRunArn"]) end
	if struct["agentId"] then M.AssertAgentId(struct["agentId"]) end
	for k,_ in pairs(struct) do
		assert(AgentAlreadyRunningAssessment_keys[k], "AgentAlreadyRunningAssessment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AgentAlreadyRunningAssessment
-- <p>Used in the exception error that is thrown if you start an assessment run for an assessment target that includes an EC2 instance that is already participating in another started assessment run.</p>
-- @param assessmentRunArn [Arn] <p>The ARN of the assessment run that has already been started.</p>
-- @param agentId [AgentId] <p>ID of the agent that is running on an EC2 instance that is already participating in another started assessment run.</p>
-- Required parameter: agentId
-- Required parameter: assessmentRunArn
function M.AgentAlreadyRunningAssessment(assessmentRunArn, agentId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AgentAlreadyRunningAssessment")
	local t = { 
		["assessmentRunArn"] = assessmentRunArn,
		["agentId"] = agentId,
	}
	M.AssertAgentAlreadyRunningAssessment(t)
	return t
end

local AddAttributesToFindingsRequest_keys = { "attributes" = true, "findingArns" = true, nil }

function M.AssertAddAttributesToFindingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddAttributesToFindingsRequest to be of type 'table'")
	assert(struct["findingArns"], "Expected key findingArns to exist in table")
	assert(struct["attributes"], "Expected key attributes to exist in table")
	if struct["attributes"] then M.AssertUserAttributeList(struct["attributes"]) end
	if struct["findingArns"] then M.AssertAddRemoveAttributesFindingArnList(struct["findingArns"]) end
	for k,_ in pairs(struct) do
		assert(AddAttributesToFindingsRequest_keys[k], "AddAttributesToFindingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddAttributesToFindingsRequest
--  
-- @param attributes [UserAttributeList] <p>The array of attributes that you want to assign to specified findings.</p>
-- @param findingArns [AddRemoveAttributesFindingArnList] <p>The ARNs that specify the findings that you want to assign attributes to.</p>
-- Required parameter: findingArns
-- Required parameter: attributes
function M.AddAttributesToFindingsRequest(attributes, findingArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddAttributesToFindingsRequest")
	local t = { 
		["attributes"] = attributes,
		["findingArns"] = findingArns,
	}
	M.AssertAddAttributesToFindingsRequest(t)
	return t
end

local StopAssessmentRunRequest_keys = { "assessmentRunArn" = true, nil }

function M.AssertStopAssessmentRunRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopAssessmentRunRequest to be of type 'table'")
	assert(struct["assessmentRunArn"], "Expected key assessmentRunArn to exist in table")
	if struct["assessmentRunArn"] then M.AssertArn(struct["assessmentRunArn"]) end
	for k,_ in pairs(struct) do
		assert(StopAssessmentRunRequest_keys[k], "StopAssessmentRunRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopAssessmentRunRequest
--  
-- @param assessmentRunArn [Arn] <p>The ARN of the assessment run that you want to stop.</p>
-- Required parameter: assessmentRunArn
function M.StopAssessmentRunRequest(assessmentRunArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopAssessmentRunRequest")
	local t = { 
		["assessmentRunArn"] = assessmentRunArn,
	}
	M.AssertStopAssessmentRunRequest(t)
	return t
end

local RemoveAttributesFromFindingsRequest_keys = { "attributeKeys" = true, "findingArns" = true, nil }

function M.AssertRemoveAttributesFromFindingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveAttributesFromFindingsRequest to be of type 'table'")
	assert(struct["findingArns"], "Expected key findingArns to exist in table")
	assert(struct["attributeKeys"], "Expected key attributeKeys to exist in table")
	if struct["attributeKeys"] then M.AssertUserAttributeKeyList(struct["attributeKeys"]) end
	if struct["findingArns"] then M.AssertAddRemoveAttributesFindingArnList(struct["findingArns"]) end
	for k,_ in pairs(struct) do
		assert(RemoveAttributesFromFindingsRequest_keys[k], "RemoveAttributesFromFindingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveAttributesFromFindingsRequest
--  
-- @param attributeKeys [UserAttributeKeyList] <p>The array of attribute keys that you want to remove from specified findings.</p>
-- @param findingArns [AddRemoveAttributesFindingArnList] <p>The ARNs that specify the findings that you want to remove attributes from.</p>
-- Required parameter: findingArns
-- Required parameter: attributeKeys
function M.RemoveAttributesFromFindingsRequest(attributeKeys, findingArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveAttributesFromFindingsRequest")
	local t = { 
		["attributeKeys"] = attributeKeys,
		["findingArns"] = findingArns,
	}
	M.AssertRemoveAttributesFromFindingsRequest(t)
	return t
end

local ListAssessmentTemplatesRequest_keys = { "filter" = true, "assessmentTargetArns" = true, "nextToken" = true, "maxResults" = true, nil }

function M.AssertListAssessmentTemplatesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssessmentTemplatesRequest to be of type 'table'")
	if struct["filter"] then M.AssertAssessmentTemplateFilter(struct["filter"]) end
	if struct["assessmentTargetArns"] then M.AssertListParentArnList(struct["assessmentTargetArns"]) end
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertListMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListAssessmentTemplatesRequest_keys[k], "ListAssessmentTemplatesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssessmentTemplatesRequest
--  
-- @param filter [AssessmentTemplateFilter] <p>You can use this parameter to specify a subset of data to be included in the action's response.</p> <p>For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.</p>
-- @param assessmentTargetArns [ListParentArnList] <p>A list of ARNs that specifies the assessment targets whose assessment templates you want to list.</p>
-- @param nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>ListAssessmentTemplates</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- @param maxResults [ListMaxResults] <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.</p>
function M.ListAssessmentTemplatesRequest(filter, assessmentTargetArns, nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssessmentTemplatesRequest")
	local t = { 
		["filter"] = filter,
		["assessmentTargetArns"] = assessmentTargetArns,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertListAssessmentTemplatesRequest(t)
	return t
end

local InvalidCrossAccountRoleException_keys = { "errorCode" = true, "canRetry" = true, "message" = true, nil }

function M.AssertInvalidCrossAccountRoleException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCrossAccountRoleException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	assert(struct["errorCode"], "Expected key errorCode to exist in table")
	assert(struct["canRetry"], "Expected key canRetry to exist in table")
	if struct["errorCode"] then M.AssertInvalidCrossAccountRoleErrorCode(struct["errorCode"]) end
	if struct["canRetry"] then M.AssertBool(struct["canRetry"]) end
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidCrossAccountRoleException_keys[k], "InvalidCrossAccountRoleException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCrossAccountRoleException
-- <p>Amazon Inspector cannot assume the cross-account role that it needs to list your EC2 instances during the assessment run.</p>
-- @param errorCode [InvalidCrossAccountRoleErrorCode] <p>Code that indicates the type of error that is generated.</p>
-- @param canRetry [Bool] <p>You can immediately retry your request.</p>
-- @param message [ErrorMessage] <p>Details of the exception error.</p>
-- Required parameter: message
-- Required parameter: errorCode
-- Required parameter: canRetry
function M.InvalidCrossAccountRoleException(errorCode, canRetry, message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCrossAccountRoleException")
	local t = { 
		["errorCode"] = errorCode,
		["canRetry"] = canRetry,
		["message"] = message,
	}
	M.AssertInvalidCrossAccountRoleException(t)
	return t
end

local DescribeResourceGroupsResponse_keys = { "resourceGroups" = true, "failedItems" = true, nil }

function M.AssertDescribeResourceGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeResourceGroupsResponse to be of type 'table'")
	assert(struct["resourceGroups"], "Expected key resourceGroups to exist in table")
	assert(struct["failedItems"], "Expected key failedItems to exist in table")
	if struct["resourceGroups"] then M.AssertResourceGroupList(struct["resourceGroups"]) end
	if struct["failedItems"] then M.AssertFailedItems(struct["failedItems"]) end
	for k,_ in pairs(struct) do
		assert(DescribeResourceGroupsResponse_keys[k], "DescribeResourceGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeResourceGroupsResponse
--  
-- @param resourceGroups [ResourceGroupList] <p>Information about a resource group.</p>
-- @param failedItems [FailedItems] <p>Resource group details that cannot be described. An error code is provided for each failed item.</p>
-- Required parameter: resourceGroups
-- Required parameter: failedItems
function M.DescribeResourceGroupsResponse(resourceGroups, failedItems, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeResourceGroupsResponse")
	local t = { 
		["resourceGroups"] = resourceGroups,
		["failedItems"] = failedItems,
	}
	M.AssertDescribeResourceGroupsResponse(t)
	return t
end

local DescribeFindingsRequest_keys = { "locale" = true, "findingArns" = true, nil }

function M.AssertDescribeFindingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeFindingsRequest to be of type 'table'")
	assert(struct["findingArns"], "Expected key findingArns to exist in table")
	if struct["locale"] then M.AssertLocale(struct["locale"]) end
	if struct["findingArns"] then M.AssertBatchDescribeArnList(struct["findingArns"]) end
	for k,_ in pairs(struct) do
		assert(DescribeFindingsRequest_keys[k], "DescribeFindingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeFindingsRequest
--  
-- @param locale [Locale] <p>The locale into which you want to translate a finding description, recommendation, and the short description that identifies the finding.</p>
-- @param findingArns [BatchDescribeArnList] <p>The ARN that specifies the finding that you want to describe.</p>
-- Required parameter: findingArns
function M.DescribeFindingsRequest(locale, findingArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeFindingsRequest")
	local t = { 
		["locale"] = locale,
		["findingArns"] = findingArns,
	}
	M.AssertDescribeFindingsRequest(t)
	return t
end

local ListTagsForResourceResponse_keys = { "tags" = true, nil }

function M.AssertListTagsForResourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForResourceResponse to be of type 'table'")
	assert(struct["tags"], "Expected key tags to exist in table")
	if struct["tags"] then M.AssertTagList(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsForResourceResponse_keys[k], "ListTagsForResourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForResourceResponse
--  
-- @param tags [TagList] <p>A collection of key and value pairs.</p>
-- Required parameter: tags
function M.ListTagsForResourceResponse(tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsForResourceResponse")
	local t = { 
		["tags"] = tags,
	}
	M.AssertListTagsForResourceResponse(t)
	return t
end

local RegisterCrossAccountAccessRoleRequest_keys = { "roleArn" = true, nil }

function M.AssertRegisterCrossAccountAccessRoleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RegisterCrossAccountAccessRoleRequest to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	if struct["roleArn"] then M.AssertArn(struct["roleArn"]) end
	for k,_ in pairs(struct) do
		assert(RegisterCrossAccountAccessRoleRequest_keys[k], "RegisterCrossAccountAccessRoleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RegisterCrossAccountAccessRoleRequest
--  
-- @param roleArn [Arn] <p>The ARN of the IAM role that Amazon Inspector uses to list your EC2 instances during the assessment run or when you call the <a>PreviewAgents</a> action. </p>
-- Required parameter: roleArn
function M.RegisterCrossAccountAccessRoleRequest(roleArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RegisterCrossAccountAccessRoleRequest")
	local t = { 
		["roleArn"] = roleArn,
	}
	M.AssertRegisterCrossAccountAccessRoleRequest(t)
	return t
end

local InternalException_keys = { "canRetry" = true, "message" = true, nil }

function M.AssertInternalException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalException to be of type 'table'")
	assert(struct["message"], "Expected key message to exist in table")
	assert(struct["canRetry"], "Expected key canRetry to exist in table")
	if struct["canRetry"] then M.AssertBool(struct["canRetry"]) end
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InternalException_keys[k], "InternalException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalException
-- <p>Internal server error.</p>
-- @param canRetry [Bool] <p>You can immediately retry your request.</p>
-- @param message [ErrorMessage] <p>Details of the exception error.</p>
-- Required parameter: message
-- Required parameter: canRetry
function M.InternalException(canRetry, message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalException")
	local t = { 
		["canRetry"] = canRetry,
		["message"] = message,
	}
	M.AssertInternalException(t)
	return t
end

local TimestampRange_keys = { "beginDate" = true, "endDate" = true, nil }

function M.AssertTimestampRange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TimestampRange to be of type 'table'")
	if struct["beginDate"] then M.AssertTimestamp(struct["beginDate"]) end
	if struct["endDate"] then M.AssertTimestamp(struct["endDate"]) end
	for k,_ in pairs(struct) do
		assert(TimestampRange_keys[k], "TimestampRange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TimestampRange
-- <p>This data type is used in the <a>AssessmentRunFilter</a> data type.</p>
-- @param beginDate [Timestamp] <p>The minimum value of the timestamp range.</p>
-- @param endDate [Timestamp] <p>The maximum value of the timestamp range.</p>
function M.TimestampRange(beginDate, endDate, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TimestampRange")
	local t = { 
		["beginDate"] = beginDate,
		["endDate"] = endDate,
	}
	M.AssertTimestampRange(t)
	return t
end

local AssessmentTemplateFilter_keys = { "namePattern" = true, "durationRange" = true, "rulesPackageArns" = true, nil }

function M.AssertAssessmentTemplateFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssessmentTemplateFilter to be of type 'table'")
	if struct["namePattern"] then M.AssertNamePattern(struct["namePattern"]) end
	if struct["durationRange"] then M.AssertDurationRange(struct["durationRange"]) end
	if struct["rulesPackageArns"] then M.AssertFilterRulesPackageArnList(struct["rulesPackageArns"]) end
	for k,_ in pairs(struct) do
		assert(AssessmentTemplateFilter_keys[k], "AssessmentTemplateFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssessmentTemplateFilter
-- <p>Used as the request parameter in the <a>ListAssessmentTemplates</a> action.</p>
-- @param namePattern [NamePattern] <p>For a record to match a filter, an explicit value or a string that contains a wildcard that is specified for this data type property must match the value of the <b>assessmentTemplateName</b> property of the <a>AssessmentTemplate</a> data type.</p>
-- @param durationRange [DurationRange] <p>For a record to match a filter, the value specified for this data type property must inclusively match any value between the specified minimum and maximum values of the <b>durationInSeconds</b> property of the <a>AssessmentTemplate</a> data type.</p>
-- @param rulesPackageArns [FilterRulesPackageArnList] <p>For a record to match a filter, the values that are specified for this data type property must be contained in the list of values of the <b>rulesPackageArns</b> property of the <a>AssessmentTemplate</a> data type.</p>
function M.AssessmentTemplateFilter(namePattern, durationRange, rulesPackageArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssessmentTemplateFilter")
	local t = { 
		["namePattern"] = namePattern,
		["durationRange"] = durationRange,
		["rulesPackageArns"] = rulesPackageArns,
	}
	M.AssertAssessmentTemplateFilter(t)
	return t
end

local ListAssessmentRunsResponse_keys = { "nextToken" = true, "assessmentRunArns" = true, nil }

function M.AssertListAssessmentRunsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssessmentRunsResponse to be of type 'table'")
	assert(struct["assessmentRunArns"], "Expected key assessmentRunArns to exist in table")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["assessmentRunArns"] then M.AssertListReturnedArnList(struct["assessmentRunArns"]) end
	for k,_ in pairs(struct) do
		assert(ListAssessmentRunsResponse_keys[k], "ListAssessmentRunsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssessmentRunsResponse
--  
-- @param nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- @param assessmentRunArns [ListReturnedArnList] <p>A list of ARNs that specifies the assessment runs that are returned by the action.</p>
-- Required parameter: assessmentRunArns
function M.ListAssessmentRunsResponse(nextToken, assessmentRunArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssessmentRunsResponse")
	local t = { 
		["nextToken"] = nextToken,
		["assessmentRunArns"] = assessmentRunArns,
	}
	M.AssertListAssessmentRunsResponse(t)
	return t
end

local DescribeCrossAccountAccessRoleResponse_keys = { "roleArn" = true, "valid" = true, "registeredAt" = true, nil }

function M.AssertDescribeCrossAccountAccessRoleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeCrossAccountAccessRoleResponse to be of type 'table'")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	assert(struct["valid"], "Expected key valid to exist in table")
	assert(struct["registeredAt"], "Expected key registeredAt to exist in table")
	if struct["roleArn"] then M.AssertArn(struct["roleArn"]) end
	if struct["valid"] then M.AssertBool(struct["valid"]) end
	if struct["registeredAt"] then M.AssertTimestamp(struct["registeredAt"]) end
	for k,_ in pairs(struct) do
		assert(DescribeCrossAccountAccessRoleResponse_keys[k], "DescribeCrossAccountAccessRoleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeCrossAccountAccessRoleResponse
--  
-- @param roleArn [Arn] <p>The ARN that specifies the IAM role that Amazon Inspector uses to access your AWS account.</p>
-- @param valid [Bool] <p>A Boolean value that specifies whether the IAM role has the necessary policies attached to enable Amazon Inspector to access your AWS account.</p>
-- @param registeredAt [Timestamp] <p>The date when the cross-account access role was registered.</p>
-- Required parameter: roleArn
-- Required parameter: valid
-- Required parameter: registeredAt
function M.DescribeCrossAccountAccessRoleResponse(roleArn, valid, registeredAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeCrossAccountAccessRoleResponse")
	local t = { 
		["roleArn"] = roleArn,
		["valid"] = valid,
		["registeredAt"] = registeredAt,
	}
	M.AssertDescribeCrossAccountAccessRoleResponse(t)
	return t
end

local ListRulesPackagesRequest_keys = { "nextToken" = true, "maxResults" = true, nil }

function M.AssertListRulesPackagesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListRulesPackagesRequest to be of type 'table'")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertListMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListRulesPackagesRequest_keys[k], "ListRulesPackagesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListRulesPackagesRequest
--  
-- @param nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>ListRulesPackages</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- @param maxResults [ListMaxResults] <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.</p>
function M.ListRulesPackagesRequest(nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListRulesPackagesRequest")
	local t = { 
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertListRulesPackagesRequest(t)
	return t
end

local CreateResourceGroupRequest_keys = { "resourceGroupTags" = true, nil }

function M.AssertCreateResourceGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateResourceGroupRequest to be of type 'table'")
	assert(struct["resourceGroupTags"], "Expected key resourceGroupTags to exist in table")
	if struct["resourceGroupTags"] then M.AssertResourceGroupTags(struct["resourceGroupTags"]) end
	for k,_ in pairs(struct) do
		assert(CreateResourceGroupRequest_keys[k], "CreateResourceGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateResourceGroupRequest
--  
-- @param resourceGroupTags [ResourceGroupTags] <p>A collection of keys and an array of possible values, '[{"key":"key1","values":["Value1","Value2"]},{"key":"Key2","values":["Value3"]}]'.</p> <p>For example,'[{"key":"Name","values":["TestEC2Instance"]}]'.</p>
-- Required parameter: resourceGroupTags
function M.CreateResourceGroupRequest(resourceGroupTags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateResourceGroupRequest")
	local t = { 
		["resourceGroupTags"] = resourceGroupTags,
	}
	M.AssertCreateResourceGroupRequest(t)
	return t
end

local AssessmentRunStateChange_keys = { "state" = true, "stateChangedAt" = true, nil }

function M.AssertAssessmentRunStateChange(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssessmentRunStateChange to be of type 'table'")
	assert(struct["stateChangedAt"], "Expected key stateChangedAt to exist in table")
	assert(struct["state"], "Expected key state to exist in table")
	if struct["state"] then M.AssertAssessmentRunState(struct["state"]) end
	if struct["stateChangedAt"] then M.AssertTimestamp(struct["stateChangedAt"]) end
	for k,_ in pairs(struct) do
		assert(AssessmentRunStateChange_keys[k], "AssessmentRunStateChange contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssessmentRunStateChange
-- <p>Used as one of the elements of the <a>AssessmentRun</a> data type.</p>
-- @param state [AssessmentRunState] <p>The assessment run state.</p>
-- @param stateChangedAt [Timestamp] <p>The last time the assessment run state changed.</p>
-- Required parameter: stateChangedAt
-- Required parameter: state
function M.AssessmentRunStateChange(state, stateChangedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AssessmentRunStateChange")
	local t = { 
		["state"] = state,
		["stateChangedAt"] = stateChangedAt,
	}
	M.AssertAssessmentRunStateChange(t)
	return t
end

local DeleteAssessmentRunRequest_keys = { "assessmentRunArn" = true, nil }

function M.AssertDeleteAssessmentRunRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteAssessmentRunRequest to be of type 'table'")
	assert(struct["assessmentRunArn"], "Expected key assessmentRunArn to exist in table")
	if struct["assessmentRunArn"] then M.AssertArn(struct["assessmentRunArn"]) end
	for k,_ in pairs(struct) do
		assert(DeleteAssessmentRunRequest_keys[k], "DeleteAssessmentRunRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteAssessmentRunRequest
--  
-- @param assessmentRunArn [Arn] <p>The ARN that specifies the assessment run that you want to delete.</p>
-- Required parameter: assessmentRunArn
function M.DeleteAssessmentRunRequest(assessmentRunArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteAssessmentRunRequest")
	local t = { 
		["assessmentRunArn"] = assessmentRunArn,
	}
	M.AssertDeleteAssessmentRunRequest(t)
	return t
end

local PreviewAgentsRequest_keys = { "nextToken" = true, "maxResults" = true, "previewAgentsArn" = true, nil }

function M.AssertPreviewAgentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PreviewAgentsRequest to be of type 'table'")
	assert(struct["previewAgentsArn"], "Expected key previewAgentsArn to exist in table")
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertPreviewAgentsMaxResults(struct["maxResults"]) end
	if struct["previewAgentsArn"] then M.AssertArn(struct["previewAgentsArn"]) end
	for k,_ in pairs(struct) do
		assert(PreviewAgentsRequest_keys[k], "PreviewAgentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PreviewAgentsRequest
--  
-- @param nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>PreviewAgents</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- @param maxResults [PreviewAgentsMaxResults] <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.</p>
-- @param previewAgentsArn [Arn] <p>The ARN of the assessment target whose agents you want to preview.</p>
-- Required parameter: previewAgentsArn
function M.PreviewAgentsRequest(nextToken, maxResults, previewAgentsArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PreviewAgentsRequest")
	local t = { 
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
		["previewAgentsArn"] = previewAgentsArn,
	}
	M.AssertPreviewAgentsRequest(t)
	return t
end

local CreateAssessmentTemplateRequest_keys = { "assessmentTargetArn" = true, "assessmentTemplateName" = true, "userAttributesForFindings" = true, "durationInSeconds" = true, "rulesPackageArns" = true, nil }

function M.AssertCreateAssessmentTemplateRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAssessmentTemplateRequest to be of type 'table'")
	assert(struct["assessmentTargetArn"], "Expected key assessmentTargetArn to exist in table")
	assert(struct["assessmentTemplateName"], "Expected key assessmentTemplateName to exist in table")
	assert(struct["durationInSeconds"], "Expected key durationInSeconds to exist in table")
	assert(struct["rulesPackageArns"], "Expected key rulesPackageArns to exist in table")
	if struct["assessmentTargetArn"] then M.AssertArn(struct["assessmentTargetArn"]) end
	if struct["assessmentTemplateName"] then M.AssertAssessmentTemplateName(struct["assessmentTemplateName"]) end
	if struct["userAttributesForFindings"] then M.AssertUserAttributeList(struct["userAttributesForFindings"]) end
	if struct["durationInSeconds"] then M.AssertAssessmentRunDuration(struct["durationInSeconds"]) end
	if struct["rulesPackageArns"] then M.AssertAssessmentTemplateRulesPackageArnList(struct["rulesPackageArns"]) end
	for k,_ in pairs(struct) do
		assert(CreateAssessmentTemplateRequest_keys[k], "CreateAssessmentTemplateRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAssessmentTemplateRequest
--  
-- @param assessmentTargetArn [Arn] <p>The ARN that specifies the assessment target for which you want to create the assessment template.</p>
-- @param assessmentTemplateName [AssessmentTemplateName] <p>The user-defined name that identifies the assessment template that you want to create. You can create several assessment templates for an assessment target. The names of the assessment templates that correspond to a particular assessment target must be unique.</p>
-- @param userAttributesForFindings [UserAttributeList] <p>The user-defined attributes that are assigned to every finding that is generated by the assessment run that uses this assessment template.</p>
-- @param durationInSeconds [AssessmentRunDuration] <p>The duration of the assessment run in seconds. The default value is 3600 seconds (one hour).</p>
-- @param rulesPackageArns [AssessmentTemplateRulesPackageArnList] <p>The ARNs that specify the rules packages that you want to attach to the assessment template.</p>
-- Required parameter: assessmentTargetArn
-- Required parameter: assessmentTemplateName
-- Required parameter: durationInSeconds
-- Required parameter: rulesPackageArns
function M.CreateAssessmentTemplateRequest(assessmentTargetArn, assessmentTemplateName, userAttributesForFindings, durationInSeconds, rulesPackageArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAssessmentTemplateRequest")
	local t = { 
		["assessmentTargetArn"] = assessmentTargetArn,
		["assessmentTemplateName"] = assessmentTemplateName,
		["userAttributesForFindings"] = userAttributesForFindings,
		["durationInSeconds"] = durationInSeconds,
		["rulesPackageArns"] = rulesPackageArns,
	}
	M.AssertCreateAssessmentTemplateRequest(t)
	return t
end

local CreateAssessmentTemplateResponse_keys = { "assessmentTemplateArn" = true, nil }

function M.AssertCreateAssessmentTemplateResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAssessmentTemplateResponse to be of type 'table'")
	assert(struct["assessmentTemplateArn"], "Expected key assessmentTemplateArn to exist in table")
	if struct["assessmentTemplateArn"] then M.AssertArn(struct["assessmentTemplateArn"]) end
	for k,_ in pairs(struct) do
		assert(CreateAssessmentTemplateResponse_keys[k], "CreateAssessmentTemplateResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAssessmentTemplateResponse
--  
-- @param assessmentTemplateArn [Arn] <p>The ARN that specifies the assessment template that is created.</p>
-- Required parameter: assessmentTemplateArn
function M.CreateAssessmentTemplateResponse(assessmentTemplateArn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateAssessmentTemplateResponse")
	local t = { 
		["assessmentTemplateArn"] = assessmentTemplateArn,
	}
	M.AssertCreateAssessmentTemplateResponse(t)
	return t
end

local DescribeAssessmentTargetsRequest_keys = { "assessmentTargetArns" = true, nil }

function M.AssertDescribeAssessmentTargetsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeAssessmentTargetsRequest to be of type 'table'")
	assert(struct["assessmentTargetArns"], "Expected key assessmentTargetArns to exist in table")
	if struct["assessmentTargetArns"] then M.AssertBatchDescribeArnList(struct["assessmentTargetArns"]) end
	for k,_ in pairs(struct) do
		assert(DescribeAssessmentTargetsRequest_keys[k], "DescribeAssessmentTargetsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeAssessmentTargetsRequest
--  
-- @param assessmentTargetArns [BatchDescribeArnList] <p>The ARNs that specifies the assessment targets that you want to describe.</p>
-- Required parameter: assessmentTargetArns
function M.DescribeAssessmentTargetsRequest(assessmentTargetArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeAssessmentTargetsRequest")
	local t = { 
		["assessmentTargetArns"] = assessmentTargetArns,
	}
	M.AssertDescribeAssessmentTargetsRequest(t)
	return t
end

local EventSubscription_keys = { "event" = true, "subscribedAt" = true, nil }

function M.AssertEventSubscription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventSubscription to be of type 'table'")
	assert(struct["event"], "Expected key event to exist in table")
	assert(struct["subscribedAt"], "Expected key subscribedAt to exist in table")
	if struct["event"] then M.AssertInspectorEvent(struct["event"]) end
	if struct["subscribedAt"] then M.AssertTimestamp(struct["subscribedAt"]) end
	for k,_ in pairs(struct) do
		assert(EventSubscription_keys[k], "EventSubscription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventSubscription
-- <p>This data type is used in the <a>Subscription</a> data type.</p>
-- @param event [InspectorEvent] <p>The event for which Amazon Simple Notification Service (SNS) notifications are sent.</p>
-- @param subscribedAt [Timestamp] <p>The time at which <a>SubscribeToEvent</a> is called.</p>
-- Required parameter: event
-- Required parameter: subscribedAt
function M.EventSubscription(event, subscribedAt, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventSubscription")
	local t = { 
		["event"] = event,
		["subscribedAt"] = subscribedAt,
	}
	M.AssertEventSubscription(t)
	return t
end

local ListAssessmentRunAgentsRequest_keys = { "filter" = true, "assessmentRunArn" = true, "nextToken" = true, "maxResults" = true, nil }

function M.AssertListAssessmentRunAgentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssessmentRunAgentsRequest to be of type 'table'")
	assert(struct["assessmentRunArn"], "Expected key assessmentRunArn to exist in table")
	if struct["filter"] then M.AssertAgentFilter(struct["filter"]) end
	if struct["assessmentRunArn"] then M.AssertArn(struct["assessmentRunArn"]) end
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertListMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListAssessmentRunAgentsRequest_keys[k], "ListAssessmentRunAgentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssessmentRunAgentsRequest
--  
-- @param filter [AgentFilter] <p>You can use this parameter to specify a subset of data to be included in the action's response.</p> <p>For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.</p>
-- @param assessmentRunArn [Arn] <p>The ARN that specifies the assessment run whose agents you want to list.</p>
-- @param nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>ListAssessmentRunAgents</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- @param maxResults [ListMaxResults] <p>You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 10. The maximum value is 500.</p>
-- Required parameter: assessmentRunArn
function M.ListAssessmentRunAgentsRequest(filter, assessmentRunArn, nextToken, maxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssessmentRunAgentsRequest")
	local t = { 
		["filter"] = filter,
		["assessmentRunArn"] = assessmentRunArn,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
	}
	M.AssertListAssessmentRunAgentsRequest(t)
	return t
end

local ListAssessmentRunsRequest_keys = { "filter" = true, "nextToken" = true, "maxResults" = true, "assessmentTemplateArns" = true, nil }

function M.AssertListAssessmentRunsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListAssessmentRunsRequest to be of type 'table'")
	if struct["filter"] then M.AssertAssessmentRunFilter(struct["filter"]) end
	if struct["nextToken"] then M.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then M.AssertListMaxResults(struct["maxResults"]) end
	if struct["assessmentTemplateArns"] then M.AssertListParentArnList(struct["assessmentTemplateArns"]) end
	for k,_ in pairs(struct) do
		assert(ListAssessmentRunsRequest_keys[k], "ListAssessmentRunsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListAssessmentRunsRequest
--  
-- @param filter [AssessmentRunFilter] <p>You can use this parameter to specify a subset of data to be included in the action's response.</p> <p>For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.</p>
-- @param nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>ListAssessmentRuns</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- @param maxResults [ListMaxResults] <p>You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 10. The maximum value is 500.</p>
-- @param assessmentTemplateArns [ListParentArnList] <p>The ARNs that specify the assessment templates whose assessment runs you want to list.</p>
function M.ListAssessmentRunsRequest(filter, nextToken, maxResults, assessmentTemplateArns, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListAssessmentRunsRequest")
	local t = { 
		["filter"] = filter,
		["nextToken"] = nextToken,
		["maxResults"] = maxResults,
		["assessmentTemplateArns"] = assessmentTemplateArns,
	}
	M.AssertListAssessmentRunsRequest(t)
	return t
end

function M.AssertSeverity(str)
	assert(str)
	assert(type(str) == "string", "Expected Severity to be of type 'string'")
end

--  
function M.Severity(str)
	M.AssertSeverity(str)
	return str
end

function M.AssertFindingId(str)
	assert(str)
	assert(type(str) == "string", "Expected FindingId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.FindingId(str)
	M.AssertFindingId(str)
	return str
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertLimitExceededErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected LimitExceededErrorCode to be of type 'string'")
end

--  
function M.LimitExceededErrorCode(str)
	M.AssertLimitExceededErrorCode(str)
	return str
end

function M.AssertMessageType(str)
	assert(str)
	assert(type(str) == "string", "Expected MessageType to be of type 'string'")
	assert(#str <= 300, "Expected string to be max 300 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MessageType(str)
	M.AssertMessageType(str)
	return str
end

function M.AssertAgentHealthCode(str)
	assert(str)
	assert(type(str) == "string", "Expected AgentHealthCode to be of type 'string'")
end

--  
function M.AgentHealthCode(str)
	M.AssertAgentHealthCode(str)
	return str
end

function M.AssertNoSuchEntityErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected NoSuchEntityErrorCode to be of type 'string'")
end

--  
function M.NoSuchEntityErrorCode(str)
	M.AssertNoSuchEntityErrorCode(str)
	return str
end

function M.AssertAssessmentRunState(str)
	assert(str)
	assert(type(str) == "string", "Expected AssessmentRunState to be of type 'string'")
end

--  
function M.AssessmentRunState(str)
	M.AssertAssessmentRunState(str)
	return str
end

function M.AssertAttributeKey(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AttributeKey(str)
	M.AssertAttributeKey(str)
	return str
end

function M.AssertAttributeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected AttributeValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AttributeValue(str)
	M.AssertAttributeValue(str)
	return str
end

function M.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
	assert(#str <= 300, "Expected string to be max 300 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Arn(str)
	M.AssertArn(str)
	return str
end

function M.AssertInspectorEvent(str)
	assert(str)
	assert(type(str) == "string", "Expected InspectorEvent to be of type 'string'")
end

--  
function M.InspectorEvent(str)
	M.AssertInspectorEvent(str)
	return str
end

function M.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
	assert(#str <= 300, "Expected string to be max 300 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PaginationToken(str)
	M.AssertPaginationToken(str)
	return str
end

function M.AssertAutoScalingGroup(str)
	assert(str)
	assert(type(str) == "string", "Expected AutoScalingGroup to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AutoScalingGroup(str)
	M.AssertAutoScalingGroup(str)
	return str
end

function M.AssertFailedItemErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected FailedItemErrorCode to be of type 'string'")
end

--  
function M.FailedItemErrorCode(str)
	M.AssertFailedItemErrorCode(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertAgentId(str)
	assert(str)
	assert(type(str) == "string", "Expected AgentId to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AgentId(str)
	M.AssertAgentId(str)
	return str
end

function M.AssertText(str)
	assert(str)
	assert(type(str) == "string", "Expected Text to be of type 'string'")
	assert(#str <= 20000, "Expected string to be max 20000 characters")
end

--  
function M.Text(str)
	M.AssertText(str)
	return str
end

function M.AssertAssetType(str)
	assert(str)
	assert(type(str) == "string", "Expected AssetType to be of type 'string'")
end

--  
function M.AssetType(str)
	M.AssertAssetType(str)
	return str
end

function M.AssertServiceName(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.ServiceName(str)
	M.AssertServiceName(str)
	return str
end

function M.AssertReportType(str)
	assert(str)
	assert(type(str) == "string", "Expected ReportType to be of type 'string'")
end

--  
function M.ReportType(str)
	M.AssertReportType(str)
	return str
end

function M.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.ErrorMessage(str)
	M.AssertErrorMessage(str)
	return str
end

function M.AssertNamePattern(str)
	assert(str)
	assert(type(str) == "string", "Expected NamePattern to be of type 'string'")
	assert(#str <= 140, "Expected string to be max 140 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NamePattern(str)
	M.AssertNamePattern(str)
	return str
end

function M.AssertMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected Message to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.Message(str)
	M.AssertMessage(str)
	return str
end

function M.AssertHostname(str)
	assert(str)
	assert(type(str) == "string", "Expected Hostname to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.Hostname(str)
	M.AssertHostname(str)
	return str
end

function M.AssertAssessmentTemplateName(str)
	assert(str)
	assert(type(str) == "string", "Expected AssessmentTemplateName to be of type 'string'")
	assert(#str <= 140, "Expected string to be max 140 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AssessmentTemplateName(str)
	M.AssertAssessmentTemplateName(str)
	return str
end

function M.AssertIpv4Address(str)
	assert(str)
	assert(type(str) == "string", "Expected Ipv4Address to be of type 'string'")
	assert(#str <= 15, "Expected string to be max 15 characters")
	assert(#str >= 7, "Expected string to be min 7 characters")
end

--  
function M.Ipv4Address(str)
	M.AssertIpv4Address(str)
	return str
end

function M.AssertAmiId(str)
	assert(str)
	assert(type(str) == "string", "Expected AmiId to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.AmiId(str)
	M.AssertAmiId(str)
	return str
end

function M.AssertAssessmentRunName(str)
	assert(str)
	assert(type(str) == "string", "Expected AssessmentRunName to be of type 'string'")
	assert(#str <= 140, "Expected string to be max 140 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AssessmentRunName(str)
	M.AssertAssessmentRunName(str)
	return str
end

function M.AssertInvalidInputErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected InvalidInputErrorCode to be of type 'string'")
end

--  
function M.InvalidInputErrorCode(str)
	M.AssertInvalidInputErrorCode(str)
	return str
end

function M.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.Version(str)
	M.AssertVersion(str)
	return str
end

function M.AssertAgentHealth(str)
	assert(str)
	assert(type(str) == "string", "Expected AgentHealth to be of type 'string'")
end

--  
function M.AgentHealth(str)
	M.AssertAgentHealth(str)
	return str
end

function M.AssertProviderName(str)
	assert(str)
	assert(type(str) == "string", "Expected ProviderName to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.ProviderName(str)
	M.AssertProviderName(str)
	return str
end

function M.AssertAccessDeniedErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessDeniedErrorCode to be of type 'string'")
end

--  
function M.AccessDeniedErrorCode(str)
	M.AssertAccessDeniedErrorCode(str)
	return str
end

function M.AssertInvalidCrossAccountRoleErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected InvalidCrossAccountRoleErrorCode to be of type 'string'")
end

--  
function M.InvalidCrossAccountRoleErrorCode(str)
	M.AssertInvalidCrossAccountRoleErrorCode(str)
	return str
end

function M.AssertReportStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected ReportStatus to be of type 'string'")
end

--  
function M.ReportStatus(str)
	M.AssertReportStatus(str)
	return str
end

function M.AssertReportFileFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected ReportFileFormat to be of type 'string'")
end

--  
function M.ReportFileFormat(str)
	M.AssertReportFileFormat(str)
	return str
end

function M.AssertUrl(str)
	assert(str)
	assert(type(str) == "string", "Expected Url to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.Url(str)
	M.AssertUrl(str)
	return str
end

function M.AssertRulesPackageName(str)
	assert(str)
	assert(type(str) == "string", "Expected RulesPackageName to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.RulesPackageName(str)
	M.AssertRulesPackageName(str)
	return str
end

function M.AssertLocale(str)
	assert(str)
	assert(type(str) == "string", "Expected Locale to be of type 'string'")
end

--  
function M.Locale(str)
	M.AssertLocale(str)
	return str
end

function M.AssertAssessmentTargetName(str)
	assert(str)
	assert(type(str) == "string", "Expected AssessmentTargetName to be of type 'string'")
	assert(#str <= 140, "Expected string to be max 140 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AssessmentTargetName(str)
	M.AssertAssessmentTargetName(str)
	return str
end

function M.AssertAssessmentRunNotificationSnsStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected AssessmentRunNotificationSnsStatusCode to be of type 'string'")
end

--  
function M.AssessmentRunNotificationSnsStatusCode(str)
	M.AssertAssessmentRunNotificationSnsStatusCode(str)
	return str
end

function M.AssertRuleName(str)
	assert(str)
	assert(type(str) == "string", "Expected RuleName to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.RuleName(str)
	M.AssertRuleName(str)
	return str
end

function M.AssertNumericSeverity(double)
	assert(double)
	assert(type(double) == "number", "Expected NumericSeverity to be of type 'number'")
end

function M.NumericSeverity(double)
	M.AssertNumericSeverity(double)
	return double
end

function M.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	M.AssertLong(long)
	return long
end

function M.AssertPreviewAgentsMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PreviewAgentsMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.PreviewAgentsMaxResults(integer)
	M.AssertPreviewAgentsMaxResults(integer)
	return integer
end

function M.AssertFindingCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected FindingCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.FindingCount(integer)
	M.AssertFindingCount(integer)
	return integer
end

function M.AssertListMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ListMaxResults(integer)
	M.AssertListMaxResults(integer)
	return integer
end

function M.AssertAssessmentRunDuration(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected AssessmentRunDuration to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 86400, "Expected integer to be max 86400")
	assert(integer >= 180, "Expected integer to be min 180")
end

function M.AssessmentRunDuration(integer)
	M.AssertAssessmentRunDuration(integer)
	return integer
end

function M.AssertListEventSubscriptionsMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListEventSubscriptionsMaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ListEventSubscriptionsMaxResults(integer)
	M.AssertListEventSubscriptionsMaxResults(integer)
	return integer
end

function M.AssertNumericVersion(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NumericVersion to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.NumericVersion(integer)
	M.AssertNumericVersion(integer)
	return integer
end

function M.AssertIocConfidence(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected IocConfidence to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
end

function M.IocConfidence(integer)
	M.AssertIocConfidence(integer)
	return integer
end

function M.AssertBool(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Bool to be of type 'boolean'")
end

function M.Bool(boolean)
	M.AssertBool(boolean)
	return boolean
end

function M.AssertFailedItems(map)
	assert(map)
	assert(type(map) == "table", "Expected FailedItems to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertArn(k)
		M.AssertFailedItemDetails(v)
	end
end

function M.FailedItems(map)
	M.AssertFailedItems(map)
	return map
end

function M.AssertAssessmentRunFindingCounts(map)
	assert(map)
	assert(type(map) == "table", "Expected AssessmentRunFindingCounts to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertSeverity(k)
		M.AssertFindingCount(v)
	end
end

function M.AssessmentRunFindingCounts(map)
	M.AssertAssessmentRunFindingCounts(map)
	return map
end

function M.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	M.AssertTimestamp(timestamp)
	return timestamp
end

function M.AssertIpv4AddressList(list)
	assert(list)
	assert(type(list) == "table", "Expected Ipv4AddressList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AssertIpv4Address(v)
	end
end

--  
-- List of Ipv4Address objects
function M.Ipv4AddressList(list)
	M.AssertIpv4AddressList(list)
	return list
end

function M.AssertAssessmentRulesPackageArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssessmentRulesPackageArnList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertArn(v)
	end
end

--  
-- List of Arn objects
function M.AssessmentRulesPackageArnList(list)
	M.AssertAssessmentRulesPackageArnList(list)
	return list
end

function M.AssertAgentAlreadyRunningAssessmentList(list)
	assert(list)
	assert(type(list) == "table", "Expected AgentAlreadyRunningAssessmentList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertAgentAlreadyRunningAssessment(v)
	end
end

--  
-- List of AgentAlreadyRunningAssessment objects
function M.AgentAlreadyRunningAssessmentList(list)
	M.AssertAgentAlreadyRunningAssessmentList(list)
	return list
end

function M.AssertAssessmentRunStateList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssessmentRunStateList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AssertAssessmentRunState(v)
	end
end

--  
-- List of AssessmentRunState objects
function M.AssessmentRunStateList(list)
	M.AssertAssessmentRunStateList(list)
	return list
end

function M.AssertAutoScalingGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected AutoScalingGroupList to be of type ''table")
	assert(#list <= 20, "Expected list to be contain 20 elements")
	for _,v in ipairs(list) do
		M.AssertAutoScalingGroup(v)
	end
end

--  
-- List of AutoScalingGroup objects
function M.AutoScalingGroupList(list)
	M.AssertAutoScalingGroupList(list)
	return list
end

function M.AssertAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected AttributeList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AssertAttribute(v)
	end
end

--  
-- List of Attribute objects
function M.AttributeList(list)
	M.AssertAttributeList(list)
	return list
end

function M.AssertEventSubscriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventSubscriptionList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertEventSubscription(v)
	end
end

--  
-- List of EventSubscription objects
function M.EventSubscriptionList(list)
	M.AssertEventSubscriptionList(list)
	return list
end

function M.AssertRuleNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected RuleNameList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
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

function M.AssertResourceGroupList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceGroupList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		M.AssertResourceGroup(v)
	end
end

--  
-- List of ResourceGroup objects
function M.ResourceGroupList(list)
	M.AssertResourceGroupList(list)
	return list
end

function M.AssertAssessmentRunList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssessmentRunList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		M.AssertAssessmentRun(v)
	end
end

--  
-- List of AssessmentRun objects
function M.AssessmentRunList(list)
	M.AssertAssessmentRunList(list)
	return list
end

function M.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
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

function M.AssertRulesPackageList(list)
	assert(list)
	assert(type(list) == "table", "Expected RulesPackageList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		M.AssertRulesPackage(v)
	end
end

--  
-- List of RulesPackage objects
function M.RulesPackageList(list)
	M.AssertRulesPackageList(list)
	return list
end

function M.AssertSeverityList(list)
	assert(list)
	assert(type(list) == "table", "Expected SeverityList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AssertSeverity(v)
	end
end

--  
-- List of Severity objects
function M.SeverityList(list)
	M.AssertSeverityList(list)
	return list
end

function M.AssertAssessmentTemplateList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssessmentTemplateList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		M.AssertAssessmentTemplate(v)
	end
end

--  
-- List of AssessmentTemplate objects
function M.AssessmentTemplateList(list)
	M.AssertAssessmentTemplateList(list)
	return list
end

function M.AssertAssessmentRunInProgressArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssessmentRunInProgressArnList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertArn(v)
	end
end

--  
-- List of Arn objects
function M.AssessmentRunInProgressArnList(list)
	M.AssertAssessmentRunInProgressArnList(list)
	return list
end

function M.AssertListReturnedArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected ListReturnedArnList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		M.AssertArn(v)
	end
end

--  
-- List of Arn objects
function M.ListReturnedArnList(list)
	M.AssertListReturnedArnList(list)
	return list
end

function M.AssertAddRemoveAttributesFindingArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected AddRemoveAttributesFindingArnList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertArn(v)
	end
end

--  
-- List of Arn objects
function M.AddRemoveAttributesFindingArnList(list)
	M.AssertAddRemoveAttributesFindingArnList(list)
	return list
end

function M.AssertFindingList(list)
	assert(list)
	assert(type(list) == "table", "Expected FindingList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		M.AssertFinding(v)
	end
end

--  
-- List of Finding objects
function M.FindingList(list)
	M.AssertFindingList(list)
	return list
end

function M.AssertAgentHealthCodeList(list)
	assert(list)
	assert(type(list) == "table", "Expected AgentHealthCodeList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		M.AssertAgentHealthCode(v)
	end
end

--  
-- List of AgentHealthCode objects
function M.AgentHealthCodeList(list)
	M.AssertAgentHealthCodeList(list)
	return list
end

function M.AssertAgentHealthList(list)
	assert(list)
	assert(type(list) == "table", "Expected AgentHealthList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		M.AssertAgentHealth(v)
	end
end

--  
-- List of AgentHealth objects
function M.AgentHealthList(list)
	M.AssertAgentHealthList(list)
	return list
end

function M.AssertAgentIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected AgentIdList to be of type ''table")
	assert(#list <= 500, "Expected list to be contain 500 elements")
	for _,v in ipairs(list) do
		M.AssertAgentId(v)
	end
end

--  
-- List of AgentId objects
function M.AgentIdList(list)
	M.AssertAgentIdList(list)
	return list
end

function M.AssertFilterRulesPackageArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected FilterRulesPackageArnList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AssertArn(v)
	end
end

--  
-- List of Arn objects
function M.FilterRulesPackageArnList(list)
	M.AssertFilterRulesPackageArnList(list)
	return list
end

function M.AssertAssessmentRunStateChangeList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssessmentRunStateChangeList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AssertAssessmentRunStateChange(v)
	end
end

--  
-- List of AssessmentRunStateChange objects
function M.AssessmentRunStateChangeList(list)
	M.AssertAssessmentRunStateChangeList(list)
	return list
end

function M.AssertTelemetryMetadataList(list)
	assert(list)
	assert(type(list) == "table", "Expected TelemetryMetadataList to be of type ''table")
	assert(#list <= 5000, "Expected list to be contain 5000 elements")
	for _,v in ipairs(list) do
		M.AssertTelemetryMetadata(v)
	end
end

--  
-- List of TelemetryMetadata objects
function M.TelemetryMetadataList(list)
	M.AssertTelemetryMetadataList(list)
	return list
end

function M.AssertAssessmentRunNotificationList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssessmentRunNotificationList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AssertAssessmentRunNotification(v)
	end
end

--  
-- List of AssessmentRunNotification objects
function M.AssessmentRunNotificationList(list)
	M.AssertAssessmentRunNotificationList(list)
	return list
end

function M.AssertAssessmentRunAgentList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssessmentRunAgentList to be of type ''table")
	assert(#list <= 500, "Expected list to be contain 500 elements")
	for _,v in ipairs(list) do
		M.AssertAssessmentRunAgent(v)
	end
end

--  
-- List of AssessmentRunAgent objects
function M.AssessmentRunAgentList(list)
	M.AssertAssessmentRunAgentList(list)
	return list
end

function M.AssertBatchDescribeArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchDescribeArnList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertArn(v)
	end
end

--  
-- List of Arn objects
function M.BatchDescribeArnList(list)
	M.AssertBatchDescribeArnList(list)
	return list
end

function M.AssertListParentArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected ListParentArnList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AssertArn(v)
	end
end

--  
-- List of Arn objects
function M.ListParentArnList(list)
	M.AssertListParentArnList(list)
	return list
end

function M.AssertAssessmentTemplateRulesPackageArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssessmentTemplateRulesPackageArnList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AssertArn(v)
	end
end

--  
-- List of Arn objects
function M.AssessmentTemplateRulesPackageArnList(list)
	M.AssertAssessmentTemplateRulesPackageArnList(list)
	return list
end

function M.AssertSubscriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected SubscriptionList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		M.AssertSubscription(v)
	end
end

--  
-- List of Subscription objects
function M.SubscriptionList(list)
	M.AssertSubscriptionList(list)
	return list
end

function M.AssertUserAttributeKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected UserAttributeKeyList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		M.AssertAttributeKey(v)
	end
end

--  
-- List of AttributeKey objects
function M.UserAttributeKeyList(list)
	M.AssertUserAttributeKeyList(list)
	return list
end

function M.AssertAgentPreviewList(list)
	assert(list)
	assert(type(list) == "table", "Expected AgentPreviewList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		M.AssertAgentPreview(v)
	end
end

--  
-- List of AgentPreview objects
function M.AgentPreviewList(list)
	M.AssertAgentPreviewList(list)
	return list
end

function M.AssertUserAttributeList(list)
	assert(list)
	assert(type(list) == "table", "Expected UserAttributeList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		M.AssertAttribute(v)
	end
end

--  
-- List of Attribute objects
function M.UserAttributeList(list)
	M.AssertUserAttributeList(list)
	return list
end

function M.AssertAssessmentTargetList(list)
	assert(list)
	assert(type(list) == "table", "Expected AssessmentTargetList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		M.AssertAssessmentTarget(v)
	end
end

--  
-- List of AssessmentTarget objects
function M.AssessmentTargetList(list)
	M.AssertAssessmentTargetList(list)
	return list
end

function M.AssertResourceGroupTags(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceGroupTags to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertResourceGroupTag(v)
	end
end

--  
-- List of ResourceGroupTag objects
function M.ResourceGroupTags(list)
	M.AssertResourceGroupTags(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- DeleteAssessmentTarget
-- @param DeleteAssessmentTargetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAssessmentTargetAsync(DeleteAssessmentTargetRequest, cb)
	assert(DeleteAssessmentTargetRequest, "You must provide a DeleteAssessmentTargetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.DeleteAssessmentTarget",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteAssessmentTargetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateAssessmentTarget
-- @param UpdateAssessmentTargetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateAssessmentTargetAsync(UpdateAssessmentTargetRequest, cb)
	assert(UpdateAssessmentTargetRequest, "You must provide a UpdateAssessmentTargetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.UpdateAssessmentTarget",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateAssessmentTargetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveAttributesFromFindings
-- @param RemoveAttributesFromFindingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveAttributesFromFindingsAsync(RemoveAttributesFromFindingsRequest, cb)
	assert(RemoveAttributesFromFindingsRequest, "You must provide a RemoveAttributesFromFindingsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.RemoveAttributesFromFindings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveAttributesFromFindingsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetTelemetryMetadata
-- @param GetTelemetryMetadataRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetTelemetryMetadataAsync(GetTelemetryMetadataRequest, cb)
	assert(GetTelemetryMetadataRequest, "You must provide a GetTelemetryMetadataRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.GetTelemetryMetadata",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetTelemetryMetadataRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAssessmentRuns
-- @param DescribeAssessmentRunsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAssessmentRunsAsync(DescribeAssessmentRunsRequest, cb)
	assert(DescribeAssessmentRunsRequest, "You must provide a DescribeAssessmentRunsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeAssessmentRuns",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAssessmentRunsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartAssessmentRun
-- @param StartAssessmentRunRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartAssessmentRunAsync(StartAssessmentRunRequest, cb)
	assert(StartAssessmentRunRequest, "You must provide a StartAssessmentRunRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.StartAssessmentRun",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartAssessmentRunRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeCrossAccountAccessRole
-- @param 
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeCrossAccountAccessRoleAsync(, cb)
	assert(, "You must provide a ")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeCrossAccountAccessRole",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", , headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAssessmentTargets
-- @param DescribeAssessmentTargetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAssessmentTargetsAsync(DescribeAssessmentTargetsRequest, cb)
	assert(DescribeAssessmentTargetsRequest, "You must provide a DescribeAssessmentTargetsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeAssessmentTargets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAssessmentTargetsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListRulesPackages
-- @param ListRulesPackagesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListRulesPackagesAsync(ListRulesPackagesRequest, cb)
	assert(ListRulesPackagesRequest, "You must provide a ListRulesPackagesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.ListRulesPackages",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListRulesPackagesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopAssessmentRun
-- @param StopAssessmentRunRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopAssessmentRunAsync(StopAssessmentRunRequest, cb)
	assert(StopAssessmentRunRequest, "You must provide a StopAssessmentRunRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.StopAssessmentRun",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopAssessmentRunRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAssessmentTemplates
-- @param ListAssessmentTemplatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAssessmentTemplatesAsync(ListAssessmentTemplatesRequest, cb)
	assert(ListAssessmentTemplatesRequest, "You must provide a ListAssessmentTemplatesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.ListAssessmentTemplates",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAssessmentTemplatesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeFindings
-- @param DescribeFindingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeFindingsAsync(DescribeFindingsRequest, cb)
	assert(DescribeFindingsRequest, "You must provide a DescribeFindingsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeFindings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeFindingsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteAssessmentTemplate
-- @param DeleteAssessmentTemplateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAssessmentTemplateAsync(DeleteAssessmentTemplateRequest, cb)
	assert(DeleteAssessmentTemplateRequest, "You must provide a DeleteAssessmentTemplateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.DeleteAssessmentTemplate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteAssessmentTemplateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeResourceGroups
-- @param DescribeResourceGroupsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeResourceGroupsAsync(DescribeResourceGroupsRequest, cb)
	assert(DescribeResourceGroupsRequest, "You must provide a DescribeResourceGroupsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeResourceGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeResourceGroupsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListFindings
-- @param ListFindingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListFindingsAsync(ListFindingsRequest, cb)
	assert(ListFindingsRequest, "You must provide a ListFindingsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.ListFindings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListFindingsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListEventSubscriptions
-- @param ListEventSubscriptionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListEventSubscriptionsAsync(ListEventSubscriptionsRequest, cb)
	assert(ListEventSubscriptionsRequest, "You must provide a ListEventSubscriptionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.ListEventSubscriptions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListEventSubscriptionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAssessmentTargets
-- @param ListAssessmentTargetsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAssessmentTargetsAsync(ListAssessmentTargetsRequest, cb)
	assert(ListAssessmentTargetsRequest, "You must provide a ListAssessmentTargetsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.ListAssessmentTargets",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAssessmentTargetsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SetTagsForResource
-- @param SetTagsForResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SetTagsForResourceAsync(SetTagsForResourceRequest, cb)
	assert(SetTagsForResourceRequest, "You must provide a SetTagsForResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.SetTagsForResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SetTagsForResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteAssessmentRun
-- @param DeleteAssessmentRunRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteAssessmentRunAsync(DeleteAssessmentRunRequest, cb)
	assert(DeleteAssessmentRunRequest, "You must provide a DeleteAssessmentRunRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.DeleteAssessmentRun",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteAssessmentRunRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateAssessmentTarget
-- @param CreateAssessmentTargetRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAssessmentTargetAsync(CreateAssessmentTargetRequest, cb)
	assert(CreateAssessmentTargetRequest, "You must provide a CreateAssessmentTargetRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.CreateAssessmentTarget",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateAssessmentTargetRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UnsubscribeFromEvent
-- @param UnsubscribeFromEventRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UnsubscribeFromEventAsync(UnsubscribeFromEventRequest, cb)
	assert(UnsubscribeFromEventRequest, "You must provide a UnsubscribeFromEventRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.UnsubscribeFromEvent",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UnsubscribeFromEventRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAssessmentRuns
-- @param ListAssessmentRunsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAssessmentRunsAsync(ListAssessmentRunsRequest, cb)
	assert(ListAssessmentRunsRequest, "You must provide a ListAssessmentRunsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.ListAssessmentRuns",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAssessmentRunsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RegisterCrossAccountAccessRole
-- @param RegisterCrossAccountAccessRoleRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RegisterCrossAccountAccessRoleAsync(RegisterCrossAccountAccessRoleRequest, cb)
	assert(RegisterCrossAccountAccessRoleRequest, "You must provide a RegisterCrossAccountAccessRoleRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.RegisterCrossAccountAccessRole",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RegisterCrossAccountAccessRoleRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddAttributesToFindings
-- @param AddAttributesToFindingsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddAttributesToFindingsAsync(AddAttributesToFindingsRequest, cb)
	assert(AddAttributesToFindingsRequest, "You must provide a AddAttributesToFindingsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.AddAttributesToFindings",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddAttributesToFindingsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateResourceGroup
-- @param CreateResourceGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateResourceGroupAsync(CreateResourceGroupRequest, cb)
	assert(CreateResourceGroupRequest, "You must provide a CreateResourceGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.CreateResourceGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateResourceGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeAssessmentTemplates
-- @param DescribeAssessmentTemplatesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeAssessmentTemplatesAsync(DescribeAssessmentTemplatesRequest, cb)
	assert(DescribeAssessmentTemplatesRequest, "You must provide a DescribeAssessmentTemplatesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeAssessmentTemplates",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeAssessmentTemplatesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PreviewAgents
-- @param PreviewAgentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PreviewAgentsAsync(PreviewAgentsRequest, cb)
	assert(PreviewAgentsRequest, "You must provide a PreviewAgentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.PreviewAgents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PreviewAgentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateAssessmentTemplate
-- @param CreateAssessmentTemplateRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateAssessmentTemplateAsync(CreateAssessmentTemplateRequest, cb)
	assert(CreateAssessmentTemplateRequest, "You must provide a CreateAssessmentTemplateRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.CreateAssessmentTemplate",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateAssessmentTemplateRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- SubscribeToEvent
-- @param SubscribeToEventRequest
-- @param cb Callback function accepting two args: response, error_message
function M.SubscribeToEventAsync(SubscribeToEventRequest, cb)
	assert(SubscribeToEventRequest, "You must provide a SubscribeToEventRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.SubscribeToEvent",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", SubscribeToEventRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeRulesPackages
-- @param DescribeRulesPackagesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeRulesPackagesAsync(DescribeRulesPackagesRequest, cb)
	assert(DescribeRulesPackagesRequest, "You must provide a DescribeRulesPackagesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeRulesPackages",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeRulesPackagesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTagsForResource
-- @param ListTagsForResourceRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceRequest, cb)
	assert(ListTagsForResourceRequest, "You must provide a ListTagsForResourceRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.ListTagsForResource",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTagsForResourceRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListAssessmentRunAgents
-- @param ListAssessmentRunAgentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListAssessmentRunAgentsAsync(ListAssessmentRunAgentsRequest, cb)
	assert(ListAssessmentRunAgentsRequest, "You must provide a ListAssessmentRunAgentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.ListAssessmentRunAgents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListAssessmentRunAgentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetAssessmentReport
-- @param GetAssessmentReportRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetAssessmentReportAsync(GetAssessmentReportRequest, cb)
	assert(GetAssessmentReportRequest, "You must provide a GetAssessmentReportRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "InspectorService.GetAssessmentReport",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetAssessmentReportRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
