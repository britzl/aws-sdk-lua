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

keys.UpdateAssessmentTargetRequest = { ["assessmentTargetArn"] = true, ["assessmentTargetName"] = true, ["resourceGroupArn"] = true, nil }

function asserts.AssertUpdateAssessmentTargetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateAssessmentTargetRequest to be of type 'table'")
	assert(struct["assessmentTargetArn"], "Expected key assessmentTargetArn to exist in table")
	assert(struct["assessmentTargetName"], "Expected key assessmentTargetName to exist in table")
	if struct["assessmentTargetArn"] then asserts.AssertArn(struct["assessmentTargetArn"]) end
	if struct["assessmentTargetName"] then asserts.AssertAssessmentTargetName(struct["assessmentTargetName"]) end
	if struct["resourceGroupArn"] then asserts.AssertArn(struct["resourceGroupArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateAssessmentTargetRequest[k], "UpdateAssessmentTargetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateAssessmentTargetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentTargetArn [Arn] <p>The ARN of the assessment target that you want to update.</p>
-- * assessmentTargetName [AssessmentTargetName] <p>The name of the assessment target that you want to update.</p>
-- * resourceGroupArn [Arn] <p>The ARN of the resource group that is used to specify the new resource group to associate with the assessment target.</p>
-- Required key: assessmentTargetArn
-- Required key: assessmentTargetName
-- @return UpdateAssessmentTargetRequest structure as a key-value pair table
function M.UpdateAssessmentTargetRequest(args)
	assert(args, "You must provide an argument table when creating UpdateAssessmentTargetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentTargetArn"] = args["assessmentTargetArn"],
		["assessmentTargetName"] = args["assessmentTargetName"],
		["resourceGroupArn"] = args["resourceGroupArn"],
	}
	asserts.AssertUpdateAssessmentTargetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * startTimeRange [TimestampRange] <p>For a record to match a filter, the value that is specified for this data type property must inclusively match any value between the specified minimum and maximum values of the <b>startTime</b> property of the <a>AssessmentRun</a> data type.</p>
-- * durationRange [DurationRange] <p>For a record to match a filter, the value that is specified for this data type property must inclusively match any value between the specified minimum and maximum values of the <b>durationInSeconds</b> property of the <a>AssessmentRun</a> data type.</p>
-- * rulesPackageArns [FilterRulesPackageArnList] <p>For a record to match a filter, the value that is specified for this data type property must be contained in the list of values of the <b>rulesPackages</b> property of the <a>AssessmentRun</a> data type.</p>
-- * states [AssessmentRunStateList] <p>For a record to match a filter, one of the values specified for this data type property must be the exact match of the value of the <b>assessmentRunState</b> property of the <a>AssessmentRun</a> data type.</p>
-- * namePattern [NamePattern] <p>For a record to match a filter, an explicit value or a string containing a wildcard that is specified for this data type property must match the value of the <b>assessmentRunName</b> property of the <a>AssessmentRun</a> data type.</p>
-- * completionTimeRange [TimestampRange] <p>For a record to match a filter, the value that is specified for this data type property must inclusively match any value between the specified minimum and maximum values of the <b>completedAt</b> property of the <a>AssessmentRun</a> data type.</p>
-- * stateChangeTimeRange [TimestampRange] <p>For a record to match a filter, the value that is specified for this data type property must match the <b>stateChangedAt</b> property of the <a>AssessmentRun</a> data type.</p>
-- @return AssessmentRunFilter structure as a key-value pair table
function M.AssessmentRunFilter(args)
	assert(args, "You must provide an argument table when creating AssessmentRunFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["startTimeRange"] = args["startTimeRange"],
		["durationRange"] = args["durationRange"],
		["rulesPackageArns"] = args["rulesPackageArns"],
		["states"] = args["states"],
		["namePattern"] = args["namePattern"],
		["completionTimeRange"] = args["completionTimeRange"],
		["stateChangeTimeRange"] = args["stateChangeTimeRange"],
	}
	asserts.AssertAssessmentRunFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * count [Long] <p>The count of messages that the agent sends to the Amazon Inspector service.</p>
-- * dataSize [Long] <p>The data size of messages that the agent sends to the Amazon Inspector service.</p>
-- * messageType [MessageType] <p>A specific type of behavioral data that is collected by the agent.</p>
-- Required key: messageType
-- Required key: count
-- @return TelemetryMetadata structure as a key-value pair table
function M.TelemetryMetadata(args)
	assert(args, "You must provide an argument table when creating TelemetryMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["count"] = args["count"],
		["dataSize"] = args["dataSize"],
		["messageType"] = args["messageType"],
	}
	asserts.AssertTelemetryMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * retryable [Bool] <p>Indicates whether you can immediately retry a request for this item for a specified resource.</p>
-- * failureCode [FailedItemErrorCode] <p>The status code of a failed item.</p>
-- Required key: failureCode
-- Required key: retryable
-- @return FailedItemDetails structure as a key-value pair table
function M.FailedItemDetails(args)
	assert(args, "You must provide an argument table when creating FailedItemDetails")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["retryable"] = args["retryable"],
		["failureCode"] = args["failureCode"],
	}
	asserts.AssertFailedItemDetails(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Scope = { ["value"] = true, ["key"] = true, nil }

function asserts.AssertScope(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Scope to be of type 'table'")
	if struct["value"] then asserts.AssertScopeValue(struct["value"]) end
	if struct["key"] then asserts.AssertScopeType(struct["key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Scope[k], "Scope contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Scope
-- <p>This data type contains key-value pairs that identify various Amazon resources.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * value [ScopeValue] <p>The resource identifier for the specified scope type.</p>
-- * key [ScopeType] <p>The type of the scope.</p>
-- @return Scope structure as a key-value pair table
function M.Scope(args)
	assert(args, "You must provide an argument table when creating Scope")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["value"] = args["value"],
		["key"] = args["key"],
	}
	asserts.AssertScope(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- * agentPreviews [AgentPreviewList] <p>The resulting list of agents.</p>
-- Required key: agentPreviews
-- @return PreviewAgentsResponse structure as a key-value pair table
function M.PreviewAgentsResponse(args)
	assert(args, "You must provide an argument table when creating PreviewAgentsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["agentPreviews"] = args["agentPreviews"],
	}
	asserts.AssertPreviewAgentsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentRunArn [Arn] <p>The ARN that specifies the assessment run for which you want to generate a report.</p>
-- * reportType [ReportType] <p>Specifies the type of the assessment report that you want to generate. There are two types of assessment reports: a finding report and a full report. For more information, see <a href="http://docs.aws.amazon.com/inspector/latest/userguide/inspector_reports.html">Assessment Reports</a>. </p>
-- * reportFileFormat [ReportFileFormat] <p>Specifies the file format (html or pdf) of the assessment report that you want to generate.</p>
-- Required key: assessmentRunArn
-- Required key: reportFileFormat
-- Required key: reportType
-- @return GetAssessmentReportRequest structure as a key-value pair table
function M.GetAssessmentReportRequest(args)
	assert(args, "You must provide an argument table when creating GetAssessmentReportRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentRunArn"] = args["assessmentRunArn"],
		["reportType"] = args["reportType"],
		["reportFileFormat"] = args["reportFileFormat"],
	}
	asserts.AssertGetAssessmentReportRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceArn [Arn] <p>The ARN of the assessment template that is used during the event for which you want to receive SNS notifications.</p>
-- * event [InspectorEvent] <p>The event for which you want to receive SNS notifications.</p>
-- * topicArn [Arn] <p>The ARN of the SNS topic to which the SNS notifications are sent.</p>
-- Required key: resourceArn
-- Required key: event
-- Required key: topicArn
-- @return SubscribeToEventRequest structure as a key-value pair table
function M.SubscribeToEventRequest(args)
	assert(args, "You must provide an argument table when creating SubscribeToEventRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceArn"] = args["resourceArn"],
		["event"] = args["event"],
		["topicArn"] = args["topicArn"],
	}
	asserts.AssertSubscribeToEventRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * failedItems [FailedItems] <p>Attributes details that cannot be described. An error code is provided for each failed item.</p>
-- Required key: failedItems
-- @return RemoveAttributesFromFindingsResponse structure as a key-value pair table
function M.RemoveAttributesFromFindingsResponse(args)
	assert(args, "You must provide an argument table when creating RemoveAttributesFromFindingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["failedItems"] = args["failedItems"],
	}
	asserts.AssertRemoveAttributesFromFindingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentRunArn [Arn] <p>The ARN of the assessment run that is associated with the agent.</p>
-- * agentHealthCode [AgentHealthCode] <p>The detailed health state of the agent.</p>
-- * agentHealth [AgentHealth] <p>The current health state of the agent.</p>
-- * autoScalingGroup [AutoScalingGroup] <p>The Auto Scaling group of the EC2 instance that is specified by the agent ID.</p>
-- * agentHealthDetails [Message] <p>The description for the agent health code.</p>
-- * telemetryMetadata [TelemetryMetadataList] <p>The Amazon Inspector application data metrics that are collected by the agent.</p>
-- * agentId [AgentId] <p>The AWS account of the EC2 instance where the agent is installed.</p>
-- Required key: agentId
-- Required key: assessmentRunArn
-- Required key: agentHealth
-- Required key: agentHealthCode
-- Required key: telemetryMetadata
-- @return AssessmentRunAgent structure as a key-value pair table
function M.AssessmentRunAgent(args)
	assert(args, "You must provide an argument table when creating AssessmentRunAgent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentRunArn"] = args["assessmentRunArn"],
		["agentHealthCode"] = args["agentHealthCode"],
		["agentHealth"] = args["agentHealth"],
		["autoScalingGroup"] = args["autoScalingGroup"],
		["agentHealthDetails"] = args["agentHealthDetails"],
		["telemetryMetadata"] = args["telemetryMetadata"],
		["agentId"] = args["agentId"],
	}
	asserts.AssertAssessmentRunAgent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceGroupArns [BatchDescribeArnList] <p>The ARN that specifies the resource group that you want to describe.</p>
-- Required key: resourceGroupArns
-- @return DescribeResourceGroupsRequest structure as a key-value pair table
function M.DescribeResourceGroupsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeResourceGroupsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceGroupArns"] = args["resourceGroupArns"],
	}
	asserts.AssertDescribeResourceGroupsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeExclusionsResponse = { ["exclusions"] = true, ["failedItems"] = true, nil }

function asserts.AssertDescribeExclusionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExclusionsResponse to be of type 'table'")
	assert(struct["exclusions"], "Expected key exclusions to exist in table")
	assert(struct["failedItems"], "Expected key failedItems to exist in table")
	if struct["exclusions"] then asserts.AssertExclusionMap(struct["exclusions"]) end
	if struct["failedItems"] then asserts.AssertFailedItems(struct["failedItems"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeExclusionsResponse[k], "DescribeExclusionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExclusionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * exclusions [ExclusionMap] <p>Information about the exclusions.</p>
-- * failedItems [FailedItems] <p>Exclusion details that cannot be described. An error code is provided for each failed item.</p>
-- Required key: exclusions
-- Required key: failedItems
-- @return DescribeExclusionsResponse structure as a key-value pair table
function M.DescribeExclusionsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeExclusionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["exclusions"] = args["exclusions"],
		["failedItems"] = args["failedItems"],
	}
	asserts.AssertDescribeExclusionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * snsPublishStatusCode [AssessmentRunNotificationSnsStatusCode] <p>The status code of the SNS notification.</p>
-- * snsTopicArn [Arn] <p>The SNS topic to which the SNS notification is sent.</p>
-- * error [Bool] <p>The Boolean value that specifies whether the notification represents an error.</p>
-- * date [Timestamp] <p>The date of the notification.</p>
-- * message [Message] <p>The message included in the notification.</p>
-- * event [InspectorEvent] <p>The event for which a notification is sent.</p>
-- Required key: date
-- Required key: event
-- Required key: error
-- @return AssessmentRunNotification structure as a key-value pair table
function M.AssessmentRunNotification(args)
	assert(args, "You must provide an argument table when creating AssessmentRunNotification")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["snsPublishStatusCode"] = args["snsPublishStatusCode"],
		["snsTopicArn"] = args["snsTopicArn"],
		["error"] = args["error"],
		["date"] = args["date"],
		["message"] = args["message"],
		["event"] = args["event"],
	}
	asserts.AssertAssessmentRunNotification(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceArn [Arn] <p>The ARN of the assessment template for which you want to list the existing event subscriptions.</p>
-- * nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>ListEventSubscriptions</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- * maxResults [ListEventSubscriptionsMaxResults] <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.</p>
-- @return ListEventSubscriptionsRequest structure as a key-value pair table
function M.ListEventSubscriptionsRequest(args)
	assert(args, "You must provide an argument table when creating ListEventSubscriptionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceArn"] = args["resourceArn"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListEventSubscriptionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * agentHealthCodes [AgentHealthCodeList] <p>The detailed health state of the agent. Values can be set to <b>IDLE</b>, <b>RUNNING</b>, <b>SHUTDOWN</b>, <b>UNHEALTHY</b>, <b>THROTTLED</b>, and <b>UNKNOWN</b>. </p>
-- * agentHealths [AgentHealthList] <p>The current health state of the agent. Values can be set to <b>HEALTHY</b> or <b>UNHEALTHY</b>.</p>
-- Required key: agentHealths
-- Required key: agentHealthCodes
-- @return AgentFilter structure as a key-value pair table
function M.AgentFilter(args)
	assert(args, "You must provide an argument table when creating AgentFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["agentHealthCodes"] = args["agentHealthCodes"],
		["agentHealths"] = args["agentHealths"],
	}
	asserts.AssertAgentFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * failedItems [FailedItems] <p>Assessment run details that cannot be described. An error code is provided for each failed item.</p>
-- * assessmentRuns [AssessmentRunList] <p>Information about the assessment run.</p>
-- Required key: assessmentRuns
-- Required key: failedItems
-- @return DescribeAssessmentRunsResponse structure as a key-value pair table
function M.DescribeAssessmentRunsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeAssessmentRunsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["failedItems"] = args["failedItems"],
		["assessmentRuns"] = args["assessmentRuns"],
	}
	asserts.AssertDescribeAssessmentRunsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * eventSubscriptions [EventSubscriptionList] <p>The list of existing event subscriptions.</p>
-- * resourceArn [Arn] <p>The ARN of the assessment template that is used during the event for which the SNS notification is sent.</p>
-- * topicArn [Arn] <p>The ARN of the Amazon Simple Notification Service (SNS) topic to which the SNS notifications are sent.</p>
-- Required key: resourceArn
-- Required key: topicArn
-- Required key: eventSubscriptions
-- @return Subscription structure as a key-value pair table
function M.Subscription(args)
	assert(args, "You must provide an argument table when creating Subscription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["eventSubscriptions"] = args["eventSubscriptions"],
		["resourceArn"] = args["resourceArn"],
		["topicArn"] = args["topicArn"],
	}
	asserts.AssertSubscription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * telemetryMetadata [TelemetryMetadataList] <p>Telemetry details.</p>
-- Required key: telemetryMetadata
-- @return GetTelemetryMetadataResponse structure as a key-value pair table
function M.GetTelemetryMetadataResponse(args)
	assert(args, "You must provide an argument table when creating GetTelemetryMetadataResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["telemetryMetadata"] = args["telemetryMetadata"],
	}
	asserts.AssertGetTelemetryMetadataResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * description [Text] <p>The description of the rules package.</p>
-- * version [Version] <p>The version ID of the rules package.</p>
-- * name [RulesPackageName] <p>The name of the rules package.</p>
-- * arn [Arn] <p>The ARN of the rules package.</p>
-- * provider [ProviderName] <p>The provider of the rules package.</p>
-- Required key: arn
-- Required key: name
-- Required key: version
-- Required key: provider
-- @return RulesPackage structure as a key-value pair table
function M.RulesPackage(args)
	assert(args, "You must provide an argument table when creating RulesPackage")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["description"] = args["description"],
		["version"] = args["version"],
		["name"] = args["name"],
		["arn"] = args["arn"],
		["provider"] = args["provider"],
	}
	asserts.AssertRulesPackage(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceGroupArn [Arn] <p>The ARN that specifies the resource group that is created.</p>
-- Required key: resourceGroupArn
-- @return CreateResourceGroupResponse structure as a key-value pair table
function M.CreateResourceGroupResponse(args)
	assert(args, "You must provide an argument table when creating CreateResourceGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceGroupArn"] = args["resourceGroupArn"],
	}
	asserts.AssertCreateResourceGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * filter [FindingFilter] <p>You can use this parameter to specify a subset of data to be included in the action's response.</p> <p>For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.</p>
-- * nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>ListFindings</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- * assessmentRunArns [ListParentArnList] <p>The ARNs of the assessment runs that generate the findings that you want to list.</p>
-- * maxResults [ListMaxResults] <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.</p>
-- @return ListFindingsRequest structure as a key-value pair table
function M.ListFindingsRequest(args)
	assert(args, "You must provide an argument table when creating ListFindingsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["filter"] = args["filter"],
		["nextToken"] = args["nextToken"],
		["assessmentRunArns"] = args["assessmentRunArns"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListFindingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssessmentTemplate = { ["assessmentTargetArn"] = true, ["name"] = true, ["lastAssessmentRunArn"] = true, ["createdAt"] = true, ["assessmentRunCount"] = true, ["durationInSeconds"] = true, ["rulesPackageArns"] = true, ["userAttributesForFindings"] = true, ["arn"] = true, nil }

function asserts.AssertAssessmentTemplate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssessmentTemplate to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["assessmentTargetArn"], "Expected key assessmentTargetArn to exist in table")
	assert(struct["durationInSeconds"], "Expected key durationInSeconds to exist in table")
	assert(struct["rulesPackageArns"], "Expected key rulesPackageArns to exist in table")
	assert(struct["userAttributesForFindings"], "Expected key userAttributesForFindings to exist in table")
	assert(struct["assessmentRunCount"], "Expected key assessmentRunCount to exist in table")
	assert(struct["createdAt"], "Expected key createdAt to exist in table")
	if struct["assessmentTargetArn"] then asserts.AssertArn(struct["assessmentTargetArn"]) end
	if struct["name"] then asserts.AssertAssessmentTemplateName(struct["name"]) end
	if struct["lastAssessmentRunArn"] then asserts.AssertArn(struct["lastAssessmentRunArn"]) end
	if struct["createdAt"] then asserts.AssertTimestamp(struct["createdAt"]) end
	if struct["assessmentRunCount"] then asserts.AssertArnCount(struct["assessmentRunCount"]) end
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentTargetArn [Arn] <p>The ARN of the assessment target that corresponds to this assessment template.</p>
-- * name [AssessmentTemplateName] <p>The name of the assessment template.</p>
-- * lastAssessmentRunArn [Arn] <p>The Amazon Resource Name (ARN) of the most recent assessment run associated with this assessment template. This value exists only when the value of assessmentRunCount is greaterpa than zero.</p>
-- * createdAt [Timestamp] <p>The time at which the assessment template is created.</p>
-- * assessmentRunCount [ArnCount] <p>The number of existing assessment runs associated with this assessment template. This value can be zero or a positive integer.</p>
-- * durationInSeconds [AssessmentRunDuration] <p>The duration in seconds specified for this assessment template. The default value is 3600 seconds (one hour). The maximum value is 86400 seconds (one day).</p>
-- * rulesPackageArns [AssessmentTemplateRulesPackageArnList] <p>The rules packages that are specified for this assessment template.</p>
-- * userAttributesForFindings [UserAttributeList] <p>The user-defined attributes that are assigned to every generated finding from the assessment run that uses this assessment template.</p>
-- * arn [Arn] <p>The ARN of the assessment template.</p>
-- Required key: arn
-- Required key: name
-- Required key: assessmentTargetArn
-- Required key: durationInSeconds
-- Required key: rulesPackageArns
-- Required key: userAttributesForFindings
-- Required key: assessmentRunCount
-- Required key: createdAt
-- @return AssessmentTemplate structure as a key-value pair table
function M.AssessmentTemplate(args)
	assert(args, "You must provide an argument table when creating AssessmentTemplate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentTargetArn"] = args["assessmentTargetArn"],
		["name"] = args["name"],
		["lastAssessmentRunArn"] = args["lastAssessmentRunArn"],
		["createdAt"] = args["createdAt"],
		["assessmentRunCount"] = args["assessmentRunCount"],
		["durationInSeconds"] = args["durationInSeconds"],
		["rulesPackageArns"] = args["rulesPackageArns"],
		["userAttributesForFindings"] = args["userAttributesForFindings"],
		["arn"] = args["arn"],
	}
	asserts.AssertAssessmentTemplate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * value [TagValue] <p>A value assigned to a tag key.</p>
-- * key [TagKey] <p>A tag key.</p>
-- Required key: key
-- @return Tag structure as a key-value pair table
function M.Tag(args)
	assert(args, "You must provide an argument table when creating Tag")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["value"] = args["value"],
		["key"] = args["key"],
	}
	asserts.AssertTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * value [AttributeValue] <p>The value assigned to the attribute key.</p>
-- * key [AttributeKey] <p>The attribute key.</p>
-- Required key: key
-- @return Attribute structure as a key-value pair table
function M.Attribute(args)
	assert(args, "You must provide an argument table when creating Attribute")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["value"] = args["value"],
		["key"] = args["key"],
	}
	asserts.AssertAttribute(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListExclusionsResponse = { ["nextToken"] = true, ["exclusionArns"] = true, nil }

function asserts.AssertListExclusionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListExclusionsResponse to be of type 'table'")
	assert(struct["exclusionArns"], "Expected key exclusionArns to exist in table")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["exclusionArns"] then asserts.AssertListReturnedArnList(struct["exclusionArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListExclusionsResponse[k], "ListExclusionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListExclusionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>When a response is generated, if there is more data to be listed, this parameters is present in the response and contains the value to use for the nextToken parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- * exclusionArns [ListReturnedArnList] <p>A list of exclusions' ARNs returned by the action.</p>
-- Required key: exclusionArns
-- @return ListExclusionsResponse structure as a key-value pair table
function M.ListExclusionsResponse(args)
	assert(args, "You must provide an argument table when creating ListExclusionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["exclusionArns"] = args["exclusionArns"],
	}
	asserts.AssertListExclusionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [ReportStatus] <p>Specifies the status of the request to generate an assessment report. </p>
-- * url [Url] <p>Specifies the URL where you can find the generated assessment report. This parameter is only returned if the report is successfully generated.</p>
-- Required key: status
-- @return GetAssessmentReportResponse structure as a key-value pair table
function M.GetAssessmentReportResponse(args)
	assert(args, "You must provide an argument table when creating GetAssessmentReportResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["url"] = args["url"],
	}
	asserts.AssertGetAssessmentReportResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * rulesPackages [RulesPackageList] <p>Information about the rules package.</p>
-- * failedItems [FailedItems] <p>Rules package details that cannot be described. An error code is provided for each failed item.</p>
-- Required key: rulesPackages
-- Required key: failedItems
-- @return DescribeRulesPackagesResponse structure as a key-value pair table
function M.DescribeRulesPackagesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeRulesPackagesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["rulesPackages"] = args["rulesPackages"],
		["failedItems"] = args["failedItems"],
	}
	asserts.AssertDescribeRulesPackagesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * dataCollected [Bool] <p>A Boolean value (true or false) that specifies whether the process of collecting data from the agents is completed.</p>
-- * name [AssessmentRunName] <p>The auto-generated name for the assessment run.</p>
-- * completedAt [Timestamp] <p>The assessment run completion time that corresponds to the rules packages evaluation completion time or failure.</p>
-- * userAttributesForFindings [UserAttributeList] <p>The user-defined attributes that are assigned to every generated finding.</p>
-- * stateChanges [AssessmentRunStateChangeList] <p>A list of the assessment run state changes.</p>
-- * createdAt [Timestamp] <p>The time when <a>StartAssessmentRun</a> was called.</p>
-- * findingCounts [AssessmentRunFindingCounts] <p>Provides a total count of generated findings per severity.</p>
-- * notifications [AssessmentRunNotificationList] <p>A list of notifications for the event subscriptions. A notification about a particular generated finding is added to this list only once.</p>
-- * state [AssessmentRunState] <p>The state of the assessment run.</p>
-- * stateChangedAt [Timestamp] <p>The last time when the assessment run's state changed.</p>
-- * durationInSeconds [AssessmentRunDuration] <p>The duration of the assessment run.</p>
-- * rulesPackageArns [AssessmentRulesPackageArnList] <p>The rules packages selected for the assessment run.</p>
-- * startedAt [Timestamp] <p>The time when <a>StartAssessmentRun</a> was called.</p>
-- * assessmentTemplateArn [Arn] <p>The ARN of the assessment template that is associated with the assessment run.</p>
-- * arn [Arn] <p>The ARN of the assessment run.</p>
-- Required key: arn
-- Required key: name
-- Required key: assessmentTemplateArn
-- Required key: state
-- Required key: durationInSeconds
-- Required key: rulesPackageArns
-- Required key: userAttributesForFindings
-- Required key: createdAt
-- Required key: stateChangedAt
-- Required key: dataCollected
-- Required key: stateChanges
-- Required key: notifications
-- Required key: findingCounts
-- @return AssessmentRun structure as a key-value pair table
function M.AssessmentRun(args)
	assert(args, "You must provide an argument table when creating AssessmentRun")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["dataCollected"] = args["dataCollected"],
		["name"] = args["name"],
		["completedAt"] = args["completedAt"],
		["userAttributesForFindings"] = args["userAttributesForFindings"],
		["stateChanges"] = args["stateChanges"],
		["createdAt"] = args["createdAt"],
		["findingCounts"] = args["findingCounts"],
		["notifications"] = args["notifications"],
		["state"] = args["state"],
		["stateChangedAt"] = args["stateChangedAt"],
		["durationInSeconds"] = args["durationInSeconds"],
		["rulesPackageArns"] = args["rulesPackageArns"],
		["startedAt"] = args["startedAt"],
		["assessmentTemplateArn"] = args["assessmentTemplateArn"],
		["arn"] = args["arn"],
	}
	asserts.AssertAssessmentRun(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentTargetNamePattern [NamePattern] <p>For a record to match a filter, an explicit value or a string that contains a wildcard that is specified for this data type property must match the value of the <b>assessmentTargetName</b> property of the <a>AssessmentTarget</a> data type.</p>
-- @return AssessmentTargetFilter structure as a key-value pair table
function M.AssessmentTargetFilter(args)
	assert(args, "You must provide an argument table when creating AssessmentTargetFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentTargetNamePattern"] = args["assessmentTargetNamePattern"],
	}
	asserts.AssertAssessmentTargetFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListExclusionsRequest = { ["assessmentRunArn"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListExclusionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListExclusionsRequest to be of type 'table'")
	assert(struct["assessmentRunArn"], "Expected key assessmentRunArn to exist in table")
	if struct["assessmentRunArn"] then asserts.AssertArn(struct["assessmentRunArn"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertListMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListExclusionsRequest[k], "ListExclusionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListExclusionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentRunArn [Arn] <p>The ARN of the assessment run that generated the exclusions that you want to list.</p>
-- * nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListExclusionsRequest action. Subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data.</p>
-- * maxResults [ListMaxResults] <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 100. The maximum value is 500.</p>
-- Required key: assessmentRunArn
-- @return ListExclusionsRequest structure as a key-value pair table
function M.ListExclusionsRequest(args)
	assert(args, "You must provide an argument table when creating ListExclusionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentRunArn"] = args["assessmentRunArn"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListExclusionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentTargetArns [ListReturnedArnList] <p>A list of ARNs that specifies the assessment targets that are returned by the action.</p>
-- * nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- Required key: assessmentTargetArns
-- @return ListAssessmentTargetsResponse structure as a key-value pair table
function M.ListAssessmentTargetsResponse(args)
	assert(args, "You must provide an argument table when creating ListAssessmentTargetsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentTargetArns"] = args["assessmentTargetArns"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListAssessmentTargetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentRunAgents [AssessmentRunAgentList] <p>A list of ARNs that specifies the agents returned by the action.</p>
-- * nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- Required key: assessmentRunAgents
-- @return ListAssessmentRunAgentsResponse structure as a key-value pair table
function M.ListAssessmentRunAgentsResponse(args)
	assert(args, "You must provide an argument table when creating ListAssessmentRunAgentsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentRunAgents"] = args["assessmentRunAgents"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListAssessmentRunAgentsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assetType [AssetType] <p>The type of the host from which the finding is generated.</p>
-- * confidence [IocConfidence] <p>This data element is currently not used.</p>
-- * numericSeverity [NumericSeverity] <p>The numeric value of the finding severity.</p>
-- * description [Text] <p>The description of the finding.</p>
-- * service [ServiceName] <p>The data element is set to "Inspector".</p>
-- * title [Text] <p>The name of the finding.</p>
-- * indicatorOfCompromise [Bool] <p>This data element is currently not used.</p>
-- * assetAttributes [AssetAttributes] <p>A collection of attributes of the host from which the finding is generated.</p>
-- * userAttributes [UserAttributeList] <p>The user-defined attributes that are assigned to the finding.</p>
-- * createdAt [Timestamp] <p>The time when the finding was generated.</p>
-- * recommendation [Text] <p>The recommendation for the finding.</p>
-- * updatedAt [Timestamp] <p>The time when <a>AddAttributesToFindings</a> is called.</p>
-- * attributes [AttributeList] <p>The system-defined attributes for the finding.</p>
-- * schemaVersion [NumericVersion] <p>The schema version of this data type.</p>
-- * serviceAttributes [InspectorServiceAttributes] <p>This data type is used in the <a>Finding</a> data type.</p>
-- * id [FindingId] <p>The ID of the finding.</p>
-- * arn [Arn] <p>The ARN that specifies the finding.</p>
-- * severity [Severity] <p>The finding severity. Values can be set to High, Medium, Low, and Informational.</p>
-- Required key: arn
-- Required key: attributes
-- Required key: userAttributes
-- Required key: createdAt
-- Required key: updatedAt
-- @return Finding structure as a key-value pair table
function M.Finding(args)
	assert(args, "You must provide an argument table when creating Finding")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assetType"] = args["assetType"],
		["confidence"] = args["confidence"],
		["numericSeverity"] = args["numericSeverity"],
		["description"] = args["description"],
		["service"] = args["service"],
		["title"] = args["title"],
		["indicatorOfCompromise"] = args["indicatorOfCompromise"],
		["assetAttributes"] = args["assetAttributes"],
		["userAttributes"] = args["userAttributes"],
		["createdAt"] = args["createdAt"],
		["recommendation"] = args["recommendation"],
		["updatedAt"] = args["updatedAt"],
		["attributes"] = args["attributes"],
		["schemaVersion"] = args["schemaVersion"],
		["serviceAttributes"] = args["serviceAttributes"],
		["id"] = args["id"],
		["arn"] = args["arn"],
		["severity"] = args["severity"],
	}
	asserts.AssertFinding(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- * findingArns [ListReturnedArnList] <p>A list of ARNs that specifies the findings returned by the action.</p>
-- Required key: findingArns
-- @return ListFindingsResponse structure as a key-value pair table
function M.ListFindingsResponse(args)
	assert(args, "You must provide an argument table when creating ListFindingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["findingArns"] = args["findingArns"],
	}
	asserts.AssertListFindingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * state [AssessmentRunState] <p>The assessment run state.</p>
-- * stateChangedAt [Timestamp] <p>The last time the assessment run state changed.</p>
-- Required key: stateChangedAt
-- Required key: state
-- @return AssessmentRunStateChange structure as a key-value pair table
function M.AssessmentRunStateChange(args)
	assert(args, "You must provide an argument table when creating AssessmentRunStateChange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["state"] = args["state"],
		["stateChangedAt"] = args["stateChangedAt"],
	}
	asserts.AssertAssessmentRunStateChange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AgentPreview = { ["kernelVersion"] = true, ["ipv4Address"] = true, ["agentHealth"] = true, ["hostname"] = true, ["autoScalingGroup"] = true, ["agentVersion"] = true, ["agentId"] = true, ["operatingSystem"] = true, nil }

function asserts.AssertAgentPreview(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AgentPreview to be of type 'table'")
	assert(struct["agentId"], "Expected key agentId to exist in table")
	if struct["kernelVersion"] then asserts.AssertKernelVersion(struct["kernelVersion"]) end
	if struct["ipv4Address"] then asserts.AssertIpv4Address(struct["ipv4Address"]) end
	if struct["agentHealth"] then asserts.AssertAgentHealth(struct["agentHealth"]) end
	if struct["hostname"] then asserts.AssertHostname(struct["hostname"]) end
	if struct["autoScalingGroup"] then asserts.AssertAutoScalingGroup(struct["autoScalingGroup"]) end
	if struct["agentVersion"] then asserts.AssertAgentVersion(struct["agentVersion"]) end
	if struct["agentId"] then asserts.AssertAgentId(struct["agentId"]) end
	if struct["operatingSystem"] then asserts.AssertOperatingSystem(struct["operatingSystem"]) end
	for k,_ in pairs(struct) do
		assert(keys.AgentPreview[k], "AgentPreview contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AgentPreview
-- <p>Used as a response element in the <a>PreviewAgents</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * kernelVersion [KernelVersion] <p>The kernel version of the operating system running on the EC2 instance on which the Amazon Inspector Agent is installed.</p>
-- * ipv4Address [Ipv4Address] <p>The IP address of the EC2 instance on which the Amazon Inspector Agent is installed.</p>
-- * agentHealth [AgentHealth] <p>The health status of the Amazon Inspector Agent.</p>
-- * hostname [Hostname] <p>The hostname of the EC2 instance on which the Amazon Inspector Agent is installed.</p>
-- * autoScalingGroup [AutoScalingGroup] <p>The Auto Scaling group for the EC2 instance where the agent is installed.</p>
-- * agentVersion [AgentVersion] <p>The version of the Amazon Inspector Agent.</p>
-- * agentId [AgentId] <p>The ID of the EC2 instance where the agent is installed.</p>
-- * operatingSystem [OperatingSystem] <p>The operating system running on the EC2 instance on which the Amazon Inspector Agent is installed.</p>
-- Required key: agentId
-- @return AgentPreview structure as a key-value pair table
function M.AgentPreview(args)
	assert(args, "You must provide an argument table when creating AgentPreview")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["kernelVersion"] = args["kernelVersion"],
		["ipv4Address"] = args["ipv4Address"],
		["agentHealth"] = args["agentHealth"],
		["hostname"] = args["hostname"],
		["autoScalingGroup"] = args["autoScalingGroup"],
		["agentVersion"] = args["agentVersion"],
		["agentId"] = args["agentId"],
		["operatingSystem"] = args["operatingSystem"],
	}
	asserts.AssertAgentPreview(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PrivateIp = { ["privateDnsName"] = true, ["privateIpAddress"] = true, nil }

function asserts.AssertPrivateIp(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PrivateIp to be of type 'table'")
	if struct["privateDnsName"] then asserts.AssertText(struct["privateDnsName"]) end
	if struct["privateIpAddress"] then asserts.AssertText(struct["privateIpAddress"]) end
	for k,_ in pairs(struct) do
		assert(keys.PrivateIp[k], "PrivateIp contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PrivateIp
-- <p>Contains information about a private IP address associated with a network interface. This data type is used as a response element in the <a>DescribeFindings</a> action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * privateDnsName [Text] <p>The DNS name of the private IP address.</p>
-- * privateIpAddress [Text] <p>The full IP address of the network inteface.</p>
-- @return PrivateIp structure as a key-value pair table
function M.PrivateIp(args)
	assert(args, "You must provide an argument table when creating PrivateIp")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["privateDnsName"] = args["privateDnsName"],
		["privateIpAddress"] = args["privateIpAddress"],
	}
	asserts.AssertPrivateIp(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentTargetArn [Arn] <p>The ARN that specifies the assessment target that is created.</p>
-- Required key: assessmentTargetArn
-- @return CreateAssessmentTargetResponse structure as a key-value pair table
function M.CreateAssessmentTargetResponse(args)
	assert(args, "You must provide an argument table when creating CreateAssessmentTargetResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentTargetArn"] = args["assessmentTargetArn"],
	}
	asserts.AssertCreateAssessmentTargetResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- * assessmentTemplateArns [ListReturnedArnList] <p>A list of ARNs that specifies the assessment templates returned by the action.</p>
-- Required key: assessmentTemplateArns
-- @return ListAssessmentTemplatesResponse structure as a key-value pair table
function M.ListAssessmentTemplatesResponse(args)
	assert(args, "You must provide an argument table when creating ListAssessmentTemplatesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["assessmentTemplateArns"] = args["assessmentTemplateArns"],
	}
	asserts.AssertListAssessmentTemplatesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * failedItems [FailedItems] <p>Attribute details that cannot be described. An error code is provided for each failed item.</p>
-- Required key: failedItems
-- @return AddAttributesToFindingsResponse structure as a key-value pair table
function M.AddAttributesToFindingsResponse(args)
	assert(args, "You must provide an argument table when creating AddAttributesToFindingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["failedItems"] = args["failedItems"],
	}
	asserts.AssertAddAttributesToFindingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentRunArns [BatchDescribeArnList] <p>The ARN that specifies the assessment run that you want to describe.</p>
-- Required key: assessmentRunArns
-- @return DescribeAssessmentRunsRequest structure as a key-value pair table
function M.DescribeAssessmentRunsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeAssessmentRunsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentRunArns"] = args["assessmentRunArns"],
	}
	asserts.AssertDescribeAssessmentRunsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateAssessmentTargetRequest = { ["assessmentTargetName"] = true, ["resourceGroupArn"] = true, nil }

function asserts.AssertCreateAssessmentTargetRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateAssessmentTargetRequest to be of type 'table'")
	assert(struct["assessmentTargetName"], "Expected key assessmentTargetName to exist in table")
	if struct["assessmentTargetName"] then asserts.AssertAssessmentTargetName(struct["assessmentTargetName"]) end
	if struct["resourceGroupArn"] then asserts.AssertArn(struct["resourceGroupArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateAssessmentTargetRequest[k], "CreateAssessmentTargetRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateAssessmentTargetRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentTargetName [AssessmentTargetName] <p>The user-defined name that identifies the assessment target that you want to create. The name must be unique within the AWS account.</p>
-- * resourceGroupArn [Arn] <p>The ARN that specifies the resource group that is used to create the assessment target. If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target.</p>
-- Required key: assessmentTargetName
-- @return CreateAssessmentTargetRequest structure as a key-value pair table
function M.CreateAssessmentTargetRequest(args)
	assert(args, "You must provide an argument table when creating CreateAssessmentTargetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentTargetName"] = args["assessmentTargetName"],
		["resourceGroupArn"] = args["resourceGroupArn"],
	}
	asserts.AssertCreateAssessmentTargetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateExclusionsPreviewRequest = { ["assessmentTemplateArn"] = true, nil }

function asserts.AssertCreateExclusionsPreviewRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateExclusionsPreviewRequest to be of type 'table'")
	assert(struct["assessmentTemplateArn"], "Expected key assessmentTemplateArn to exist in table")
	if struct["assessmentTemplateArn"] then asserts.AssertArn(struct["assessmentTemplateArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateExclusionsPreviewRequest[k], "CreateExclusionsPreviewRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateExclusionsPreviewRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentTemplateArn [Arn] <p>The ARN that specifies the assessment template for which you want to create an exclusions preview.</p>
-- Required key: assessmentTemplateArn
-- @return CreateExclusionsPreviewRequest structure as a key-value pair table
function M.CreateExclusionsPreviewRequest(args)
	assert(args, "You must provide an argument table when creating CreateExclusionsPreviewRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentTemplateArn"] = args["assessmentTemplateArn"],
	}
	asserts.AssertCreateExclusionsPreviewRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentTemplateArn [Arn] <p>The ARN that specifies the assessment template that you want to delete.</p>
-- Required key: assessmentTemplateArn
-- @return DeleteAssessmentTemplateRequest structure as a key-value pair table
function M.DeleteAssessmentTemplateRequest(args)
	assert(args, "You must provide an argument table when creating DeleteAssessmentTemplateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentTemplateArn"] = args["assessmentTemplateArn"],
	}
	asserts.AssertDeleteAssessmentTemplateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * autoScalingGroups [AutoScalingGroupList] <p>For a record to match a filter, one of the values that is specified for this data type property must be the exact match of the value of the <b>autoScalingGroup</b> property of the <a>Finding</a> data type.</p>
-- * creationTimeRange [TimestampRange] <p>The time range during which the finding is generated.</p>
-- * ruleNames [RuleNameList] <p>For a record to match a filter, one of the values that is specified for this data type property must be the exact match of the value of the <b>ruleName</b> property of the <a>Finding</a> data type.</p>
-- * severities [SeverityList] <p>For a record to match a filter, one of the values that is specified for this data type property must be the exact match of the value of the <b>severity</b> property of the <a>Finding</a> data type.</p>
-- * userAttributes [AttributeList] <p>For a record to match a filter, the value that is specified for this data type property must be contained in the list of values of the <b>userAttributes</b> property of the <a>Finding</a> data type.</p>
-- * rulesPackageArns [FilterRulesPackageArnList] <p>For a record to match a filter, one of the values that is specified for this data type property must be the exact match of the value of the <b>rulesPackageArn</b> property of the <a>Finding</a> data type.</p>
-- * attributes [AttributeList] <p>For a record to match a filter, the list of values that are specified for this data type property must be contained in the list of values of the <b>attributes</b> property of the <a>Finding</a> data type.</p>
-- * agentIds [AgentIdList] <p>For a record to match a filter, one of the values that is specified for this data type property must be the exact match of the value of the <b>agentId</b> property of the <a>Finding</a> data type.</p>
-- @return FindingFilter structure as a key-value pair table
function M.FindingFilter(args)
	assert(args, "You must provide an argument table when creating FindingFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["autoScalingGroups"] = args["autoScalingGroups"],
		["creationTimeRange"] = args["creationTimeRange"],
		["ruleNames"] = args["ruleNames"],
		["severities"] = args["severities"],
		["userAttributes"] = args["userAttributes"],
		["rulesPackageArns"] = args["rulesPackageArns"],
		["attributes"] = args["attributes"],
		["agentIds"] = args["agentIds"],
	}
	asserts.AssertFindingFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * value [TagValue] <p>The value assigned to a tag key.</p>
-- * key [TagKey] <p>A tag key.</p>
-- Required key: key
-- @return ResourceGroupTag structure as a key-value pair table
function M.ResourceGroupTag(args)
	assert(args, "You must provide an argument table when creating ResourceGroupTag")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["value"] = args["value"],
		["key"] = args["key"],
	}
	asserts.AssertResourceGroupTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExclusionPreview = { ["attributes"] = true, ["scopes"] = true, ["recommendation"] = true, ["description"] = true, ["title"] = true, nil }

function asserts.AssertExclusionPreview(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExclusionPreview to be of type 'table'")
	assert(struct["title"], "Expected key title to exist in table")
	assert(struct["description"], "Expected key description to exist in table")
	assert(struct["recommendation"], "Expected key recommendation to exist in table")
	assert(struct["scopes"], "Expected key scopes to exist in table")
	if struct["attributes"] then asserts.AssertAttributeList(struct["attributes"]) end
	if struct["scopes"] then asserts.AssertScopeList(struct["scopes"]) end
	if struct["recommendation"] then asserts.AssertText(struct["recommendation"]) end
	if struct["description"] then asserts.AssertText(struct["description"]) end
	if struct["title"] then asserts.AssertText(struct["title"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExclusionPreview[k], "ExclusionPreview contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExclusionPreview
-- <p>Contains information about what is excluded from an assessment run given the current state of the assessment template.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attributes [AttributeList] <p>The system-defined attributes for the exclusion preview.</p>
-- * scopes [ScopeList] <p>The AWS resources for which the exclusion preview pertains.</p>
-- * recommendation [Text] <p>The recommendation for the exclusion preview.</p>
-- * description [Text] <p>The description of the exclusion preview.</p>
-- * title [Text] <p>The name of the exclusion preview.</p>
-- Required key: title
-- Required key: description
-- Required key: recommendation
-- Required key: scopes
-- @return ExclusionPreview structure as a key-value pair table
function M.ExclusionPreview(args)
	assert(args, "You must provide an argument table when creating ExclusionPreview")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attributes"] = args["attributes"],
		["scopes"] = args["scopes"],
		["recommendation"] = args["recommendation"],
		["description"] = args["description"],
		["title"] = args["title"],
	}
	asserts.AssertExclusionPreview(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceArn [Arn] <p>The ARN of the assessment template that you want to set tags to.</p>
-- * tags [TagList] <p>A collection of key and value pairs that you want to set to the assessment template.</p>
-- Required key: resourceArn
-- @return SetTagsForResourceRequest structure as a key-value pair table
function M.SetTagsForResourceRequest(args)
	assert(args, "You must provide an argument table when creating SetTagsForResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceArn"] = args["resourceArn"],
		["tags"] = args["tags"],
	}
	asserts.AssertSetTagsForResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceArn [Arn] <p>The ARN of the assessment template that is used during the event for which you want to stop receiving SNS notifications.</p>
-- * event [InspectorEvent] <p>The event for which you want to stop receiving SNS notifications.</p>
-- * topicArn [Arn] <p>The ARN of the SNS topic to which SNS notifications are sent.</p>
-- Required key: resourceArn
-- Required key: event
-- Required key: topicArn
-- @return UnsubscribeFromEventRequest structure as a key-value pair table
function M.UnsubscribeFromEventRequest(args)
	assert(args, "You must provide an argument table when creating UnsubscribeFromEventRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceArn"] = args["resourceArn"],
		["event"] = args["event"],
		["topicArn"] = args["topicArn"],
	}
	asserts.AssertUnsubscribeFromEventRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentTargetArn [Arn] <p>The ARN that specifies the assessment target that you want to delete.</p>
-- Required key: assessmentTargetArn
-- @return DeleteAssessmentTargetRequest structure as a key-value pair table
function M.DeleteAssessmentTargetRequest(args)
	assert(args, "You must provide an argument table when creating DeleteAssessmentTargetRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentTargetArn"] = args["assessmentTargetArn"],
	}
	asserts.AssertDeleteAssessmentTargetRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentRunArn [Arn] <p>The ARN of the assessment run that has been started.</p>
-- Required key: assessmentRunArn
-- @return StartAssessmentRunResponse structure as a key-value pair table
function M.StartAssessmentRunResponse(args)
	assert(args, "You must provide an argument table when creating StartAssessmentRunResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentRunArn"] = args["assessmentRunArn"],
	}
	asserts.AssertStartAssessmentRunResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssessmentTarget = { ["resourceGroupArn"] = true, ["createdAt"] = true, ["name"] = true, ["arn"] = true, ["updatedAt"] = true, nil }

function asserts.AssertAssessmentTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssessmentTarget to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceGroupArn [Arn] <p>The ARN that specifies the resource group that is associated with the assessment target.</p>
-- * createdAt [Timestamp] <p>The time at which the assessment target is created.</p>
-- * name [AssessmentTargetName] <p>The name of the Amazon Inspector assessment target.</p>
-- * arn [Arn] <p>The ARN that specifies the Amazon Inspector assessment target.</p>
-- * updatedAt [Timestamp] <p>The time at which <a>UpdateAssessmentTarget</a> is called.</p>
-- Required key: arn
-- Required key: name
-- Required key: createdAt
-- Required key: updatedAt
-- @return AssessmentTarget structure as a key-value pair table
function M.AssessmentTarget(args)
	assert(args, "You must provide an argument table when creating AssessmentTarget")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceGroupArn"] = args["resourceGroupArn"],
		["createdAt"] = args["createdAt"],
		["name"] = args["name"],
		["arn"] = args["arn"],
		["updatedAt"] = args["updatedAt"],
	}
	asserts.AssertAssessmentTarget(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentTemplateArns [BatchDescribeArnList] 
-- Required key: assessmentTemplateArns
-- @return DescribeAssessmentTemplatesRequest structure as a key-value pair table
function M.DescribeAssessmentTemplatesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeAssessmentTemplatesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentTemplateArns"] = args["assessmentTemplateArns"],
	}
	asserts.AssertDescribeAssessmentTemplatesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * roleArn [Arn] <p>The ARN that specifies the IAM role that Amazon Inspector uses to access your AWS account.</p>
-- * valid [Bool] <p>A Boolean value that specifies whether the IAM role has the necessary policies attached to enable Amazon Inspector to access your AWS account.</p>
-- * registeredAt [Timestamp] <p>The date when the cross-account access role was registered.</p>
-- Required key: roleArn
-- Required key: valid
-- Required key: registeredAt
-- @return DescribeCrossAccountAccessRoleResponse structure as a key-value pair table
function M.DescribeCrossAccountAccessRoleResponse(args)
	assert(args, "You must provide an argument table when creating DescribeCrossAccountAccessRoleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["roleArn"] = args["roleArn"],
		["valid"] = args["valid"],
		["registeredAt"] = args["registeredAt"],
	}
	asserts.AssertDescribeCrossAccountAccessRoleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentRunName [AssessmentRunName] <p>You can specify the name for the assessment run. The name must be unique for the assessment template whose ARN is used to start the assessment run.</p>
-- * assessmentTemplateArn [Arn] <p>The ARN of the assessment template of the assessment run that you want to start.</p>
-- Required key: assessmentTemplateArn
-- @return StartAssessmentRunRequest structure as a key-value pair table
function M.StartAssessmentRunRequest(args)
	assert(args, "You must provide an argument table when creating StartAssessmentRunRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentRunName"] = args["assessmentRunName"],
		["assessmentTemplateArn"] = args["assessmentTemplateArn"],
	}
	asserts.AssertStartAssessmentRunRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentTargets [AssessmentTargetList] <p>Information about the assessment targets.</p>
-- * failedItems [FailedItems] <p>Assessment target details that cannot be described. An error code is provided for each failed item.</p>
-- Required key: assessmentTargets
-- Required key: failedItems
-- @return DescribeAssessmentTargetsResponse structure as a key-value pair table
function M.DescribeAssessmentTargetsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeAssessmentTargetsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentTargets"] = args["assessmentTargets"],
		["failedItems"] = args["failedItems"],
	}
	asserts.AssertDescribeAssessmentTargetsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Exclusion = { ["scopes"] = true, ["description"] = true, ["title"] = true, ["recommendation"] = true, ["attributes"] = true, ["arn"] = true, nil }

function asserts.AssertExclusion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Exclusion to be of type 'table'")
	assert(struct["arn"], "Expected key arn to exist in table")
	assert(struct["title"], "Expected key title to exist in table")
	assert(struct["description"], "Expected key description to exist in table")
	assert(struct["recommendation"], "Expected key recommendation to exist in table")
	assert(struct["scopes"], "Expected key scopes to exist in table")
	if struct["scopes"] then asserts.AssertScopeList(struct["scopes"]) end
	if struct["description"] then asserts.AssertText(struct["description"]) end
	if struct["title"] then asserts.AssertText(struct["title"]) end
	if struct["recommendation"] then asserts.AssertText(struct["recommendation"]) end
	if struct["attributes"] then asserts.AssertAttributeList(struct["attributes"]) end
	if struct["arn"] then asserts.AssertArn(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Exclusion[k], "Exclusion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Exclusion
-- <p>Contains information about what was excluded from an assessment run.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * scopes [ScopeList] <p>The AWS resources for which the exclusion pertains.</p>
-- * description [Text] <p>The description of the exclusion.</p>
-- * title [Text] <p>The name of the exclusion.</p>
-- * recommendation [Text] <p>The recommendation for the exclusion.</p>
-- * attributes [AttributeList] <p>The system-defined attributes for the exclusion.</p>
-- * arn [Arn] <p>The ARN that specifies the exclusion.</p>
-- Required key: arn
-- Required key: title
-- Required key: description
-- Required key: recommendation
-- Required key: scopes
-- @return Exclusion structure as a key-value pair table
function M.Exclusion(args)
	assert(args, "You must provide an argument table when creating Exclusion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["scopes"] = args["scopes"],
		["description"] = args["description"],
		["title"] = args["title"],
		["recommendation"] = args["recommendation"],
		["attributes"] = args["attributes"],
		["arn"] = args["arn"],
	}
	asserts.AssertExclusion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentTemplates [AssessmentTemplateList] <p>Information about the assessment templates.</p>
-- * failedItems [FailedItems] <p>Assessment template details that cannot be described. An error code is provided for each failed item.</p>
-- Required key: assessmentTemplates
-- Required key: failedItems
-- @return DescribeAssessmentTemplatesResponse structure as a key-value pair table
function M.DescribeAssessmentTemplatesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeAssessmentTemplatesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentTemplates"] = args["assessmentTemplates"],
		["failedItems"] = args["failedItems"],
	}
	asserts.AssertDescribeAssessmentTemplatesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * minSeconds [AssessmentRunDuration] <p>The minimum value of the duration range. Must be greater than zero.</p>
-- * maxSeconds [AssessmentRunDuration] <p>The maximum value of the duration range. Must be less than or equal to 604800 seconds (1 week).</p>
-- @return DurationRange structure as a key-value pair table
function M.DurationRange(args)
	assert(args, "You must provide an argument table when creating DurationRange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["minSeconds"] = args["minSeconds"],
		["maxSeconds"] = args["maxSeconds"],
	}
	asserts.AssertDurationRange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- * rulesPackageArns [ListReturnedArnList] <p>The list of ARNs that specifies the rules packages returned by the action.</p>
-- Required key: rulesPackageArns
-- @return ListRulesPackagesResponse structure as a key-value pair table
function M.ListRulesPackagesResponse(args)
	assert(args, "You must provide an argument table when creating ListRulesPackagesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["rulesPackageArns"] = args["rulesPackageArns"],
	}
	asserts.AssertListRulesPackagesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentRunArn [Arn] <p>The ARN that specifies the assessment run that has the telemetry data that you want to obtain.</p>
-- Required key: assessmentRunArn
-- @return GetTelemetryMetadataRequest structure as a key-value pair table
function M.GetTelemetryMetadataRequest(args)
	assert(args, "You must provide an argument table when creating GetTelemetryMetadataRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentRunArn"] = args["assessmentRunArn"],
	}
	asserts.AssertGetTelemetryMetadataRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceArn [Arn] <p>The ARN that specifies the assessment template whose tags you want to list.</p>
-- Required key: resourceArn
-- @return ListTagsForResourceRequest structure as a key-value pair table
function M.ListTagsForResourceRequest(args)
	assert(args, "You must provide an argument table when creating ListTagsForResourceRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceArn"] = args["resourceArn"],
	}
	asserts.AssertListTagsForResourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SecurityGroup = { ["groupName"] = true, ["groupId"] = true, nil }

function asserts.AssertSecurityGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SecurityGroup to be of type 'table'")
	if struct["groupName"] then asserts.AssertText(struct["groupName"]) end
	if struct["groupId"] then asserts.AssertText(struct["groupId"]) end
	for k,_ in pairs(struct) do
		assert(keys.SecurityGroup[k], "SecurityGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SecurityGroup
-- <p>Contains information about a security group associated with a network interface. This data type is used as one of the elements of the <a>NetworkInterface</a> data type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * groupName [Text] <p>The name of the security group.</p>
-- * groupId [Text] <p>The ID of the security group.</p>
-- @return SecurityGroup structure as a key-value pair table
function M.SecurityGroup(args)
	assert(args, "You must provide an argument table when creating SecurityGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["groupName"] = args["groupName"],
		["groupId"] = args["groupId"],
	}
	asserts.AssertSecurityGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateExclusionsPreviewResponse = { ["previewToken"] = true, nil }

function asserts.AssertCreateExclusionsPreviewResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateExclusionsPreviewResponse to be of type 'table'")
	assert(struct["previewToken"], "Expected key previewToken to exist in table")
	if struct["previewToken"] then asserts.AssertUUID(struct["previewToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateExclusionsPreviewResponse[k], "CreateExclusionsPreviewResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateExclusionsPreviewResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * previewToken [UUID] <p>Specifies the unique identifier of the requested exclusions preview. You can use the unique identifier to retrieve the exclusions preview when running the GetExclusionsPreview API.</p>
-- Required key: previewToken
-- @return CreateExclusionsPreviewResponse structure as a key-value pair table
function M.CreateExclusionsPreviewResponse(args)
	assert(args, "You must provide an argument table when creating CreateExclusionsPreviewResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["previewToken"] = args["previewToken"],
	}
	asserts.AssertCreateExclusionsPreviewResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * schemaVersion [NumericVersion] <p>The schema version of this data type.</p>
-- * rulesPackageArn [Arn] <p>The ARN of the rules package that is used to generate the finding.</p>
-- * assessmentRunArn [Arn] <p>The ARN of the assessment run during which the finding is generated.</p>
-- Required key: schemaVersion
-- @return InspectorServiceAttributes structure as a key-value pair table
function M.InspectorServiceAttributes(args)
	assert(args, "You must provide an argument table when creating InspectorServiceAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["schemaVersion"] = args["schemaVersion"],
		["rulesPackageArn"] = args["rulesPackageArn"],
		["assessmentRunArn"] = args["assessmentRunArn"],
	}
	asserts.AssertInspectorServiceAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * filter [AssessmentTargetFilter] <p>You can use this parameter to specify a subset of data to be included in the action's response.</p> <p>For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.</p>
-- * nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>ListAssessmentTargets</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- * maxResults [ListMaxResults] <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.</p>
-- @return ListAssessmentTargetsRequest structure as a key-value pair table
function M.ListAssessmentTargetsRequest(args)
	assert(args, "You must provide an argument table when creating ListAssessmentTargetsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["filter"] = args["filter"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListAssessmentTargetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * createdAt [Timestamp] <p>The time at which resource group is created.</p>
-- * arn [Arn] <p>The ARN of the resource group.</p>
-- * tags [ResourceGroupTags] <p>The tags (key and value pairs) of the resource group. This data type property is used in the <a>CreateResourceGroup</a> action.</p>
-- Required key: arn
-- Required key: tags
-- Required key: createdAt
-- @return ResourceGroup structure as a key-value pair table
function M.ResourceGroup(args)
	assert(args, "You must provide an argument table when creating ResourceGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["createdAt"] = args["createdAt"],
		["arn"] = args["arn"],
		["tags"] = args["tags"],
	}
	asserts.AssertResourceGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attributeKeys [UserAttributeKeyList] <p>The array of attribute keys that you want to remove from specified findings.</p>
-- * findingArns [AddRemoveAttributesFindingArnList] <p>The ARNs that specify the findings that you want to remove attributes from.</p>
-- Required key: findingArns
-- Required key: attributeKeys
-- @return RemoveAttributesFromFindingsRequest structure as a key-value pair table
function M.RemoveAttributesFromFindingsRequest(args)
	assert(args, "You must provide an argument table when creating RemoveAttributesFromFindingsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attributeKeys"] = args["attributeKeys"],
		["findingArns"] = args["findingArns"],
	}
	asserts.AssertRemoveAttributesFromFindingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetExclusionsPreviewResponse = { ["exclusionPreviews"] = true, ["nextToken"] = true, ["previewStatus"] = true, nil }

function asserts.AssertGetExclusionsPreviewResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetExclusionsPreviewResponse to be of type 'table'")
	assert(struct["previewStatus"], "Expected key previewStatus to exist in table")
	if struct["exclusionPreviews"] then asserts.AssertExclusionPreviewList(struct["exclusionPreviews"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["previewStatus"] then asserts.AssertPreviewStatus(struct["previewStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetExclusionsPreviewResponse[k], "GetExclusionsPreviewResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetExclusionsPreviewResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * exclusionPreviews [ExclusionPreviewList] <p>Information about the exclusions included in the preview.</p>
-- * nextToken [PaginationToken] <p>When a response is generated, if there is more data to be listed, this parameters is present in the response and contains the value to use for the nextToken parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- * previewStatus [PreviewStatus] <p>Specifies the status of the request to generate an exclusions preview.</p>
-- Required key: previewStatus
-- @return GetExclusionsPreviewResponse structure as a key-value pair table
function M.GetExclusionsPreviewResponse(args)
	assert(args, "You must provide an argument table when creating GetExclusionsPreviewResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["exclusionPreviews"] = args["exclusionPreviews"],
		["nextToken"] = args["nextToken"],
		["previewStatus"] = args["previewStatus"],
	}
	asserts.AssertGetExclusionsPreviewResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * locale [Locale] <p>The locale that you want to translate a rules package description into.</p>
-- * rulesPackageArns [BatchDescribeArnList] <p>The ARN that specifies the rules package that you want to describe.</p>
-- Required key: rulesPackageArns
-- @return DescribeRulesPackagesRequest structure as a key-value pair table
function M.DescribeRulesPackagesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeRulesPackagesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["locale"] = args["locale"],
		["rulesPackageArns"] = args["rulesPackageArns"],
	}
	asserts.AssertDescribeRulesPackagesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssetAttributes = { ["amiId"] = true, ["tags"] = true, ["hostname"] = true, ["autoScalingGroup"] = true, ["ipv4Addresses"] = true, ["schemaVersion"] = true, ["agentId"] = true, ["networkInterfaces"] = true, nil }

function asserts.AssertAssetAttributes(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssetAttributes to be of type 'table'")
	assert(struct["schemaVersion"], "Expected key schemaVersion to exist in table")
	if struct["amiId"] then asserts.AssertAmiId(struct["amiId"]) end
	if struct["tags"] then asserts.AssertTags(struct["tags"]) end
	if struct["hostname"] then asserts.AssertHostname(struct["hostname"]) end
	if struct["autoScalingGroup"] then asserts.AssertAutoScalingGroup(struct["autoScalingGroup"]) end
	if struct["ipv4Addresses"] then asserts.AssertIpv4AddressList(struct["ipv4Addresses"]) end
	if struct["schemaVersion"] then asserts.AssertNumericVersion(struct["schemaVersion"]) end
	if struct["agentId"] then asserts.AssertAgentId(struct["agentId"]) end
	if struct["networkInterfaces"] then asserts.AssertNetworkInterfaces(struct["networkInterfaces"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssetAttributes[k], "AssetAttributes contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssetAttributes
-- <p>A collection of attributes of the host from which the finding is generated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * amiId [AmiId] <p>The ID of the Amazon Machine Image (AMI) that is installed on the EC2 instance where the finding is generated.</p>
-- * tags [Tags] <p>The tags related to the EC2 instance where the finding is generated.</p>
-- * hostname [Hostname] <p>The hostname of the EC2 instance where the finding is generated.</p>
-- * autoScalingGroup [AutoScalingGroup] <p>The Auto Scaling group of the EC2 instance where the finding is generated.</p>
-- * ipv4Addresses [Ipv4AddressList] <p>The list of IP v4 addresses of the EC2 instance where the finding is generated.</p>
-- * schemaVersion [NumericVersion] <p>The schema version of this data type.</p>
-- * agentId [AgentId] <p>The ID of the agent that is installed on the EC2 instance where the finding is generated.</p>
-- * networkInterfaces [NetworkInterfaces] <p>An array of the network interfaces interacting with the EC2 instance where the finding is generated.</p>
-- Required key: schemaVersion
-- @return AssetAttributes structure as a key-value pair table
function M.AssetAttributes(args)
	assert(args, "You must provide an argument table when creating AssetAttributes")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["amiId"] = args["amiId"],
		["tags"] = args["tags"],
		["hostname"] = args["hostname"],
		["autoScalingGroup"] = args["autoScalingGroup"],
		["ipv4Addresses"] = args["ipv4Addresses"],
		["schemaVersion"] = args["schemaVersion"],
		["agentId"] = args["agentId"],
		["networkInterfaces"] = args["networkInterfaces"],
	}
	asserts.AssertAssetAttributes(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * failedItems [FailedItems] <p>Finding details that cannot be described. An error code is provided for each failed item.</p>
-- * findings [FindingList] <p>Information about the finding.</p>
-- Required key: findings
-- Required key: failedItems
-- @return DescribeFindingsResponse structure as a key-value pair table
function M.DescribeFindingsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeFindingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["failedItems"] = args["failedItems"],
		["findings"] = args["findings"],
	}
	asserts.AssertDescribeFindingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- * subscriptions [SubscriptionList] <p>Details of the returned event subscriptions.</p>
-- Required key: subscriptions
-- @return ListEventSubscriptionsResponse structure as a key-value pair table
function M.ListEventSubscriptionsResponse(args)
	assert(args, "You must provide an argument table when creating ListEventSubscriptionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["subscriptions"] = args["subscriptions"],
	}
	asserts.AssertListEventSubscriptionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * attributes [UserAttributeList] <p>The array of attributes that you want to assign to specified findings.</p>
-- * findingArns [AddRemoveAttributesFindingArnList] <p>The ARNs that specify the findings that you want to assign attributes to.</p>
-- Required key: findingArns
-- Required key: attributes
-- @return AddAttributesToFindingsRequest structure as a key-value pair table
function M.AddAttributesToFindingsRequest(args)
	assert(args, "You must provide an argument table when creating AddAttributesToFindingsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["attributes"] = args["attributes"],
		["findingArns"] = args["findingArns"],
	}
	asserts.AssertAddAttributesToFindingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopAssessmentRunRequest = { ["assessmentRunArn"] = true, ["stopAction"] = true, nil }

function asserts.AssertStopAssessmentRunRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopAssessmentRunRequest to be of type 'table'")
	assert(struct["assessmentRunArn"], "Expected key assessmentRunArn to exist in table")
	if struct["assessmentRunArn"] then asserts.AssertArn(struct["assessmentRunArn"]) end
	if struct["stopAction"] then asserts.AssertStopAction(struct["stopAction"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopAssessmentRunRequest[k], "StopAssessmentRunRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopAssessmentRunRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentRunArn [Arn] <p>The ARN of the assessment run that you want to stop.</p>
-- * stopAction [StopAction] <p>An input option that can be set to either START_EVALUATION or SKIP_EVALUATION. START_EVALUATION (the default value), stops the AWS agent from collecting data and begins the results evaluation and the findings generation process. SKIP_EVALUATION cancels the assessment run immediately, after which no findings are generated.</p>
-- Required key: assessmentRunArn
-- @return StopAssessmentRunRequest structure as a key-value pair table
function M.StopAssessmentRunRequest(args)
	assert(args, "You must provide an argument table when creating StopAssessmentRunRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentRunArn"] = args["assessmentRunArn"],
		["stopAction"] = args["stopAction"],
	}
	asserts.AssertStopAssessmentRunRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetExclusionsPreviewRequest = { ["locale"] = true, ["nextToken"] = true, ["assessmentTemplateArn"] = true, ["maxResults"] = true, ["previewToken"] = true, nil }

function asserts.AssertGetExclusionsPreviewRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetExclusionsPreviewRequest to be of type 'table'")
	assert(struct["assessmentTemplateArn"], "Expected key assessmentTemplateArn to exist in table")
	assert(struct["previewToken"], "Expected key previewToken to exist in table")
	if struct["locale"] then asserts.AssertLocale(struct["locale"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["assessmentTemplateArn"] then asserts.AssertArn(struct["assessmentTemplateArn"]) end
	if struct["maxResults"] then asserts.AssertListMaxResults(struct["maxResults"]) end
	if struct["previewToken"] then asserts.AssertUUID(struct["previewToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetExclusionsPreviewRequest[k], "GetExclusionsPreviewRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetExclusionsPreviewRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * locale [Locale] <p>The locale into which you want to translate the exclusion's title, description, and recommendation.</p>
-- * nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the GetExclusionsPreviewRequest action. Subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data.</p>
-- * assessmentTemplateArn [Arn] <p>The ARN that specifies the assessment template for which the exclusions preview was requested.</p>
-- * maxResults [ListMaxResults] <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 100. The maximum value is 500.</p>
-- * previewToken [UUID] <p>The unique identifier associated of the exclusions preview.</p>
-- Required key: assessmentTemplateArn
-- Required key: previewToken
-- @return GetExclusionsPreviewRequest structure as a key-value pair table
function M.GetExclusionsPreviewRequest(args)
	assert(args, "You must provide an argument table when creating GetExclusionsPreviewRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["locale"] = args["locale"],
		["nextToken"] = args["nextToken"],
		["assessmentTemplateArn"] = args["assessmentTemplateArn"],
		["maxResults"] = args["maxResults"],
		["previewToken"] = args["previewToken"],
	}
	asserts.AssertGetExclusionsPreviewRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * filter [AssessmentTemplateFilter] <p>You can use this parameter to specify a subset of data to be included in the action's response.</p> <p>For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.</p>
-- * assessmentTargetArns [ListParentArnList] <p>A list of ARNs that specifies the assessment targets whose assessment templates you want to list.</p>
-- * nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>ListAssessmentTemplates</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- * maxResults [ListMaxResults] <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.</p>
-- @return ListAssessmentTemplatesRequest structure as a key-value pair table
function M.ListAssessmentTemplatesRequest(args)
	assert(args, "You must provide an argument table when creating ListAssessmentTemplatesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["filter"] = args["filter"],
		["assessmentTargetArns"] = args["assessmentTargetArns"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListAssessmentTemplatesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceGroups [ResourceGroupList] <p>Information about a resource group.</p>
-- * failedItems [FailedItems] <p>Resource group details that cannot be described. An error code is provided for each failed item.</p>
-- Required key: resourceGroups
-- Required key: failedItems
-- @return DescribeResourceGroupsResponse structure as a key-value pair table
function M.DescribeResourceGroupsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeResourceGroupsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceGroups"] = args["resourceGroups"],
		["failedItems"] = args["failedItems"],
	}
	asserts.AssertDescribeResourceGroupsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * locale [Locale] <p>The locale into which you want to translate a finding description, recommendation, and the short description that identifies the finding.</p>
-- * findingArns [BatchDescribeArnList] <p>The ARN that specifies the finding that you want to describe.</p>
-- Required key: findingArns
-- @return DescribeFindingsRequest structure as a key-value pair table
function M.DescribeFindingsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeFindingsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["locale"] = args["locale"],
		["findingArns"] = args["findingArns"],
	}
	asserts.AssertDescribeFindingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * tags [TagList] <p>A collection of key and value pairs.</p>
-- Required key: tags
-- @return ListTagsForResourceResponse structure as a key-value pair table
function M.ListTagsForResourceResponse(args)
	assert(args, "You must provide an argument table when creating ListTagsForResourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["tags"] = args["tags"],
	}
	asserts.AssertListTagsForResourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * roleArn [Arn] <p>The ARN of the IAM role that grants Amazon Inspector access to AWS Services needed to perform security assessments. </p>
-- Required key: roleArn
-- @return RegisterCrossAccountAccessRoleRequest structure as a key-value pair table
function M.RegisterCrossAccountAccessRoleRequest(args)
	assert(args, "You must provide an argument table when creating RegisterCrossAccountAccessRoleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["roleArn"] = args["roleArn"],
	}
	asserts.AssertRegisterCrossAccountAccessRoleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * beginDate [Timestamp] <p>The minimum value of the timestamp range.</p>
-- * endDate [Timestamp] <p>The maximum value of the timestamp range.</p>
-- @return TimestampRange structure as a key-value pair table
function M.TimestampRange(args)
	assert(args, "You must provide an argument table when creating TimestampRange")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["beginDate"] = args["beginDate"],
		["endDate"] = args["endDate"],
	}
	asserts.AssertTimestampRange(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * namePattern [NamePattern] <p>For a record to match a filter, an explicit value or a string that contains a wildcard that is specified for this data type property must match the value of the <b>assessmentTemplateName</b> property of the <a>AssessmentTemplate</a> data type.</p>
-- * durationRange [DurationRange] <p>For a record to match a filter, the value specified for this data type property must inclusively match any value between the specified minimum and maximum values of the <b>durationInSeconds</b> property of the <a>AssessmentTemplate</a> data type.</p>
-- * rulesPackageArns [FilterRulesPackageArnList] <p>For a record to match a filter, the values that are specified for this data type property must be contained in the list of values of the <b>rulesPackageArns</b> property of the <a>AssessmentTemplate</a> data type.</p>
-- @return AssessmentTemplateFilter structure as a key-value pair table
function M.AssessmentTemplateFilter(args)
	assert(args, "You must provide an argument table when creating AssessmentTemplateFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["namePattern"] = args["namePattern"],
		["durationRange"] = args["durationRange"],
		["rulesPackageArns"] = args["rulesPackageArns"],
	}
	asserts.AssertAssessmentTemplateFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p> When a response is generated, if there is more data to be listed, this parameter is present in the response and contains the value to use for the <b>nextToken</b> parameter in a subsequent pagination request. If there is no more data to be listed, this parameter is set to null.</p>
-- * assessmentRunArns [ListReturnedArnList] <p>A list of ARNs that specifies the assessment runs that are returned by the action.</p>
-- Required key: assessmentRunArns
-- @return ListAssessmentRunsResponse structure as a key-value pair table
function M.ListAssessmentRunsResponse(args)
	assert(args, "You must provide an argument table when creating ListAssessmentRunsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["assessmentRunArns"] = args["assessmentRunArns"],
	}
	asserts.AssertListAssessmentRunsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>ListRulesPackages</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- * maxResults [ListMaxResults] <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.</p>
-- @return ListRulesPackagesRequest structure as a key-value pair table
function M.ListRulesPackagesRequest(args)
	assert(args, "You must provide an argument table when creating ListRulesPackagesRequest")
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
	asserts.AssertListRulesPackagesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NetworkInterface = { ["vpcId"] = true, ["publicDnsName"] = true, ["networkInterfaceId"] = true, ["privateIpAddresses"] = true, ["publicIp"] = true, ["privateDnsName"] = true, ["securityGroups"] = true, ["subnetId"] = true, ["ipv6Addresses"] = true, ["privateIpAddress"] = true, nil }

function asserts.AssertNetworkInterface(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NetworkInterface to be of type 'table'")
	if struct["vpcId"] then asserts.AssertText(struct["vpcId"]) end
	if struct["publicDnsName"] then asserts.AssertText(struct["publicDnsName"]) end
	if struct["networkInterfaceId"] then asserts.AssertText(struct["networkInterfaceId"]) end
	if struct["privateIpAddresses"] then asserts.AssertPrivateIpAddresses(struct["privateIpAddresses"]) end
	if struct["publicIp"] then asserts.AssertText(struct["publicIp"]) end
	if struct["privateDnsName"] then asserts.AssertText(struct["privateDnsName"]) end
	if struct["securityGroups"] then asserts.AssertSecurityGroups(struct["securityGroups"]) end
	if struct["subnetId"] then asserts.AssertText(struct["subnetId"]) end
	if struct["ipv6Addresses"] then asserts.AssertIpv6Addresses(struct["ipv6Addresses"]) end
	if struct["privateIpAddress"] then asserts.AssertText(struct["privateIpAddress"]) end
	for k,_ in pairs(struct) do
		assert(keys.NetworkInterface[k], "NetworkInterface contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NetworkInterface
-- <p>Contains information about the network interfaces interacting with an EC2 instance. This data type is used as one of the elements of the <a>AssetAttributes</a> data type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * vpcId [Text] <p>The ID of a VPC associated with the network interface.</p>
-- * publicDnsName [Text] <p>The name of a public DNS associated with the network interface.</p>
-- * networkInterfaceId [Text] <p>The ID of the network interface.</p>
-- * privateIpAddresses [PrivateIpAddresses] <p>A list of the private IP addresses associated with the network interface. Includes the privateDnsName and privateIpAddress.</p>
-- * publicIp [Text] <p>The public IP address from which the network interface is reachable.</p>
-- * privateDnsName [Text] <p>The name of a private DNS associated with the network interface.</p>
-- * securityGroups [SecurityGroups] <p>A list of the security groups associated with the network interface. Includes the groupId and groupName.</p>
-- * subnetId [Text] <p>The ID of a subnet associated with the network interface.</p>
-- * ipv6Addresses [Ipv6Addresses] <p>The IP addresses associated with the network interface.</p>
-- * privateIpAddress [Text] <p>The private IP address associated with the network interface.</p>
-- @return NetworkInterface structure as a key-value pair table
function M.NetworkInterface(args)
	assert(args, "You must provide an argument table when creating NetworkInterface")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["vpcId"] = args["vpcId"],
		["publicDnsName"] = args["publicDnsName"],
		["networkInterfaceId"] = args["networkInterfaceId"],
		["privateIpAddresses"] = args["privateIpAddresses"],
		["publicIp"] = args["publicIp"],
		["privateDnsName"] = args["privateDnsName"],
		["securityGroups"] = args["securityGroups"],
		["subnetId"] = args["subnetId"],
		["ipv6Addresses"] = args["ipv6Addresses"],
		["privateIpAddress"] = args["privateIpAddress"],
	}
	asserts.AssertNetworkInterface(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourceGroupTags [ResourceGroupTags] <p>A collection of keys and an array of possible values, '[{"key":"key1","values":["Value1","Value2"]},{"key":"Key2","values":["Value3"]}]'.</p> <p>For example,'[{"key":"Name","values":["TestEC2Instance"]}]'.</p>
-- Required key: resourceGroupTags
-- @return CreateResourceGroupRequest structure as a key-value pair table
function M.CreateResourceGroupRequest(args)
	assert(args, "You must provide an argument table when creating CreateResourceGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourceGroupTags"] = args["resourceGroupTags"],
	}
	asserts.AssertCreateResourceGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentRunArn [Arn] <p>The ARN that specifies the assessment run that you want to delete.</p>
-- Required key: assessmentRunArn
-- @return DeleteAssessmentRunRequest structure as a key-value pair table
function M.DeleteAssessmentRunRequest(args)
	assert(args, "You must provide an argument table when creating DeleteAssessmentRunRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentRunArn"] = args["assessmentRunArn"],
	}
	asserts.AssertDeleteAssessmentRunRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeExclusionsRequest = { ["locale"] = true, ["exclusionArns"] = true, nil }

function asserts.AssertDescribeExclusionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExclusionsRequest to be of type 'table'")
	assert(struct["exclusionArns"], "Expected key exclusionArns to exist in table")
	if struct["locale"] then asserts.AssertLocale(struct["locale"]) end
	if struct["exclusionArns"] then asserts.AssertBatchDescribeExclusionsArnList(struct["exclusionArns"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeExclusionsRequest[k], "DescribeExclusionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExclusionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * locale [Locale] <p>The locale into which you want to translate the exclusion's title, description, and recommendation.</p>
-- * exclusionArns [BatchDescribeExclusionsArnList] <p>The list of ARNs that specify the exclusions that you want to describe.</p>
-- Required key: exclusionArns
-- @return DescribeExclusionsRequest structure as a key-value pair table
function M.DescribeExclusionsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeExclusionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["locale"] = args["locale"],
		["exclusionArns"] = args["exclusionArns"],
	}
	asserts.AssertDescribeExclusionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>PreviewAgents</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- * maxResults [PreviewAgentsMaxResults] <p>You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.</p>
-- * previewAgentsArn [Arn] <p>The ARN of the assessment target whose agents you want to preview.</p>
-- Required key: previewAgentsArn
-- @return PreviewAgentsRequest structure as a key-value pair table
function M.PreviewAgentsRequest(args)
	assert(args, "You must provide an argument table when creating PreviewAgentsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
		["previewAgentsArn"] = args["previewAgentsArn"],
	}
	asserts.AssertPreviewAgentsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentTargetArn [Arn] <p>The ARN that specifies the assessment target for which you want to create the assessment template.</p>
-- * assessmentTemplateName [AssessmentTemplateName] <p>The user-defined name that identifies the assessment template that you want to create. You can create several assessment templates for an assessment target. The names of the assessment templates that correspond to a particular assessment target must be unique.</p>
-- * userAttributesForFindings [UserAttributeList] <p>The user-defined attributes that are assigned to every finding that is generated by the assessment run that uses this assessment template. An attribute is a key and value pair (an <a>Attribute</a> object). Within an assessment template, each key must be unique.</p>
-- * durationInSeconds [AssessmentRunDuration] <p>The duration of the assessment run in seconds.</p>
-- * rulesPackageArns [AssessmentTemplateRulesPackageArnList] <p>The ARNs that specify the rules packages that you want to attach to the assessment template.</p>
-- Required key: assessmentTargetArn
-- Required key: assessmentTemplateName
-- Required key: durationInSeconds
-- Required key: rulesPackageArns
-- @return CreateAssessmentTemplateRequest structure as a key-value pair table
function M.CreateAssessmentTemplateRequest(args)
	assert(args, "You must provide an argument table when creating CreateAssessmentTemplateRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentTargetArn"] = args["assessmentTargetArn"],
		["assessmentTemplateName"] = args["assessmentTemplateName"],
		["userAttributesForFindings"] = args["userAttributesForFindings"],
		["durationInSeconds"] = args["durationInSeconds"],
		["rulesPackageArns"] = args["rulesPackageArns"],
	}
	asserts.AssertCreateAssessmentTemplateRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentTemplateArn [Arn] <p>The ARN that specifies the assessment template that is created.</p>
-- Required key: assessmentTemplateArn
-- @return CreateAssessmentTemplateResponse structure as a key-value pair table
function M.CreateAssessmentTemplateResponse(args)
	assert(args, "You must provide an argument table when creating CreateAssessmentTemplateResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentTemplateArn"] = args["assessmentTemplateArn"],
	}
	asserts.AssertCreateAssessmentTemplateResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * assessmentTargetArns [BatchDescribeArnList] <p>The ARNs that specifies the assessment targets that you want to describe.</p>
-- Required key: assessmentTargetArns
-- @return DescribeAssessmentTargetsRequest structure as a key-value pair table
function M.DescribeAssessmentTargetsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeAssessmentTargetsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["assessmentTargetArns"] = args["assessmentTargetArns"],
	}
	asserts.AssertDescribeAssessmentTargetsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * event [InspectorEvent] <p>The event for which Amazon Simple Notification Service (SNS) notifications are sent.</p>
-- * subscribedAt [Timestamp] <p>The time at which <a>SubscribeToEvent</a> is called.</p>
-- Required key: event
-- Required key: subscribedAt
-- @return EventSubscription structure as a key-value pair table
function M.EventSubscription(args)
	assert(args, "You must provide an argument table when creating EventSubscription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["event"] = args["event"],
		["subscribedAt"] = args["subscribedAt"],
	}
	asserts.AssertEventSubscription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * filter [AgentFilter] <p>You can use this parameter to specify a subset of data to be included in the action's response.</p> <p>For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.</p>
-- * assessmentRunArn [Arn] <p>The ARN that specifies the assessment run whose agents you want to list.</p>
-- * nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>ListAssessmentRunAgents</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- * maxResults [ListMaxResults] <p>You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 10. The maximum value is 500.</p>
-- Required key: assessmentRunArn
-- @return ListAssessmentRunAgentsRequest structure as a key-value pair table
function M.ListAssessmentRunAgentsRequest(args)
	assert(args, "You must provide an argument table when creating ListAssessmentRunAgentsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["filter"] = args["filter"],
		["assessmentRunArn"] = args["assessmentRunArn"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListAssessmentRunAgentsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * filter [AssessmentRunFilter] <p>You can use this parameter to specify a subset of data to be included in the action's response.</p> <p>For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.</p>
-- * nextToken [PaginationToken] <p>You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the <b>ListAssessmentRuns</b> action. Subsequent calls to the action fill <b>nextToken</b> in the request with the value of <b>NextToken</b> from the previous response to continue listing data.</p>
-- * maxResults [ListMaxResults] <p>You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 10. The maximum value is 500.</p>
-- * assessmentTemplateArns [ListParentArnList] <p>The ARNs that specify the assessment templates whose assessment runs you want to list.</p>
-- @return ListAssessmentRunsRequest structure as a key-value pair table
function M.ListAssessmentRunsRequest(args)
	assert(args, "You must provide an argument table when creating ListAssessmentRunsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["filter"] = args["filter"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
		["assessmentTemplateArns"] = args["assessmentTemplateArns"],
	}
	asserts.AssertListAssessmentRunsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

function asserts.AssertPreviewStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected PreviewStatus to be of type 'string'")
end

--  
function M.PreviewStatus(str)
	asserts.AssertPreviewStatus(str)
	return str
end

function asserts.AssertStopAction(str)
	assert(str)
	assert(type(str) == "string", "Expected StopAction to be of type 'string'")
end

--  
function M.StopAction(str)
	asserts.AssertStopAction(str)
	return str
end

function asserts.AssertAgentVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected AgentVersion to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AgentVersion(str)
	asserts.AssertAgentVersion(str)
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

function asserts.AssertScopeValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ScopeValue to be of type 'string'")
end

--  
function M.ScopeValue(str)
	asserts.AssertScopeValue(str)
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

function asserts.AssertScopeType(str)
	assert(str)
	assert(type(str) == "string", "Expected ScopeType to be of type 'string'")
end

--  
function M.ScopeType(str)
	asserts.AssertScopeType(str)
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

function asserts.AssertUUID(str)
	assert(str)
	assert(type(str) == "string", "Expected UUID to be of type 'string'")
end

--  
function M.UUID(str)
	asserts.AssertUUID(str)
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

function asserts.AssertOperatingSystem(str)
	assert(str)
	assert(type(str) == "string", "Expected OperatingSystem to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.OperatingSystem(str)
	asserts.AssertOperatingSystem(str)
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

function asserts.AssertFailedItemErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected FailedItemErrorCode to be of type 'string'")
end

--  
function M.FailedItemErrorCode(str)
	asserts.AssertFailedItemErrorCode(str)
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

function asserts.AssertKernelVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected KernelVersion to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.KernelVersion(str)
	asserts.AssertKernelVersion(str)
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

function asserts.AssertArnCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ArnCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ArnCount(integer)
	asserts.AssertArnCount(integer)
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

function asserts.AssertExclusionMap(map)
	assert(map)
	assert(type(map) == "table", "Expected ExclusionMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertArn(k)
		asserts.AssertExclusion(v)
	end
end

function M.ExclusionMap(map)
	asserts.AssertExclusionMap(map)
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

function asserts.AssertBatchDescribeExclusionsArnList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchDescribeExclusionsArnList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertArn(v)
	end
end

--  
-- List of Arn objects
function M.BatchDescribeExclusionsArnList(list)
	asserts.AssertBatchDescribeExclusionsArnList(list)
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

function asserts.AssertExclusionPreviewList(list)
	assert(list)
	assert(type(list) == "table", "Expected ExclusionPreviewList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertExclusionPreview(v)
	end
end

--  
-- List of ExclusionPreview objects
function M.ExclusionPreviewList(list)
	asserts.AssertExclusionPreviewList(list)
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

function asserts.AssertTags(list)
	assert(list)
	assert(type(list) == "table", "Expected Tags to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

--  
-- List of Tag objects
function M.Tags(list)
	asserts.AssertTags(list)
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

function asserts.AssertScopeList(list)
	assert(list)
	assert(type(list) == "table", "Expected ScopeList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertScope(v)
	end
end

--  
-- List of Scope objects
function M.ScopeList(list)
	asserts.AssertScopeList(list)
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

function asserts.AssertNetworkInterfaces(list)
	assert(list)
	assert(type(list) == "table", "Expected NetworkInterfaces to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNetworkInterface(v)
	end
end

--  
-- List of NetworkInterface objects
function M.NetworkInterfaces(list)
	asserts.AssertNetworkInterfaces(list)
	return list
end

function asserts.AssertPrivateIpAddresses(list)
	assert(list)
	assert(type(list) == "table", "Expected PrivateIpAddresses to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPrivateIp(v)
	end
end

--  
-- List of PrivateIp objects
function M.PrivateIpAddresses(list)
	asserts.AssertPrivateIpAddresses(list)
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

function asserts.AssertSecurityGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSecurityGroup(v)
	end
end

--  
-- List of SecurityGroup objects
function M.SecurityGroups(list)
	asserts.AssertSecurityGroups(list)
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

function asserts.AssertIpv6Addresses(list)
	assert(list)
	assert(type(list) == "table", "Expected Ipv6Addresses to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertText(v)
	end
end

--  
-- List of Text objects
function M.Ipv6Addresses(list)
	asserts.AssertIpv6Addresses(list)
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
	settings.signature_version = M.metadata.signature_version
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call DeleteAssessmentTarget asynchronously, invoking a callback when done
-- @param DeleteAssessmentTargetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteAssessmentTargetAsync(DeleteAssessmentTargetRequest, cb)
	assert(DeleteAssessmentTargetRequest, "You must provide a DeleteAssessmentTargetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.DeleteAssessmentTarget",
	}
	for header,value in pairs(DeleteAssessmentTargetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteAssessmentTargetSync(DeleteAssessmentTargetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAssessmentTargetAsync(DeleteAssessmentTargetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateAssessmentTarget asynchronously, invoking a callback when done
-- @param UpdateAssessmentTargetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateAssessmentTargetAsync(UpdateAssessmentTargetRequest, cb)
	assert(UpdateAssessmentTargetRequest, "You must provide a UpdateAssessmentTargetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.UpdateAssessmentTarget",
	}
	for header,value in pairs(UpdateAssessmentTargetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.UpdateAssessmentTargetSync(UpdateAssessmentTargetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateAssessmentTargetAsync(UpdateAssessmentTargetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveAttributesFromFindings asynchronously, invoking a callback when done
-- @param RemoveAttributesFromFindingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveAttributesFromFindingsAsync(RemoveAttributesFromFindingsRequest, cb)
	assert(RemoveAttributesFromFindingsRequest, "You must provide a RemoveAttributesFromFindingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.RemoveAttributesFromFindings",
	}
	for header,value in pairs(RemoveAttributesFromFindingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.RemoveAttributesFromFindingsSync(RemoveAttributesFromFindingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveAttributesFromFindingsAsync(RemoveAttributesFromFindingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTelemetryMetadata asynchronously, invoking a callback when done
-- @param GetTelemetryMetadataRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetTelemetryMetadataAsync(GetTelemetryMetadataRequest, cb)
	assert(GetTelemetryMetadataRequest, "You must provide a GetTelemetryMetadataRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.GetTelemetryMetadata",
	}
	for header,value in pairs(GetTelemetryMetadataRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.GetTelemetryMetadataSync(GetTelemetryMetadataRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTelemetryMetadataAsync(GetTelemetryMetadataRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAssessmentRuns asynchronously, invoking a callback when done
-- @param DescribeAssessmentRunsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAssessmentRunsAsync(DescribeAssessmentRunsRequest, cb)
	assert(DescribeAssessmentRunsRequest, "You must provide a DescribeAssessmentRunsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeAssessmentRuns",
	}
	for header,value in pairs(DescribeAssessmentRunsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeAssessmentRunsSync(DescribeAssessmentRunsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAssessmentRunsAsync(DescribeAssessmentRunsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartAssessmentRun asynchronously, invoking a callback when done
-- @param StartAssessmentRunRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartAssessmentRunAsync(StartAssessmentRunRequest, cb)
	assert(StartAssessmentRunRequest, "You must provide a StartAssessmentRunRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.StartAssessmentRun",
	}
	for header,value in pairs(StartAssessmentRunRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.StartAssessmentRunSync(StartAssessmentRunRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartAssessmentRunAsync(StartAssessmentRunRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeCrossAccountAccessRole asynchronously, invoking a callback when done
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeCrossAccountAccessRoleAsync(cb)
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeCrossAccountAccessRole",
	}


	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", {}, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeCrossAccountAccessRole synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeCrossAccountAccessRoleSync(...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeCrossAccountAccessRoleAsync(function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAssessmentTargets asynchronously, invoking a callback when done
-- @param DescribeAssessmentTargetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAssessmentTargetsAsync(DescribeAssessmentTargetsRequest, cb)
	assert(DescribeAssessmentTargetsRequest, "You must provide a DescribeAssessmentTargetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeAssessmentTargets",
	}
	for header,value in pairs(DescribeAssessmentTargetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeAssessmentTargetsSync(DescribeAssessmentTargetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAssessmentTargetsAsync(DescribeAssessmentTargetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListRulesPackages asynchronously, invoking a callback when done
-- @param ListRulesPackagesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListRulesPackagesAsync(ListRulesPackagesRequest, cb)
	assert(ListRulesPackagesRequest, "You must provide a ListRulesPackagesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.ListRulesPackages",
	}
	for header,value in pairs(ListRulesPackagesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ListRulesPackagesSync(ListRulesPackagesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListRulesPackagesAsync(ListRulesPackagesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopAssessmentRun asynchronously, invoking a callback when done
-- @param StopAssessmentRunRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopAssessmentRunAsync(StopAssessmentRunRequest, cb)
	assert(StopAssessmentRunRequest, "You must provide a StopAssessmentRunRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.StopAssessmentRun",
	}
	for header,value in pairs(StopAssessmentRunRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.StopAssessmentRunSync(StopAssessmentRunRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopAssessmentRunAsync(StopAssessmentRunRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAssessmentTemplates asynchronously, invoking a callback when done
-- @param ListAssessmentTemplatesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAssessmentTemplatesAsync(ListAssessmentTemplatesRequest, cb)
	assert(ListAssessmentTemplatesRequest, "You must provide a ListAssessmentTemplatesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.ListAssessmentTemplates",
	}
	for header,value in pairs(ListAssessmentTemplatesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ListAssessmentTemplatesSync(ListAssessmentTemplatesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAssessmentTemplatesAsync(ListAssessmentTemplatesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeFindings asynchronously, invoking a callback when done
-- @param DescribeFindingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeFindingsAsync(DescribeFindingsRequest, cb)
	assert(DescribeFindingsRequest, "You must provide a DescribeFindingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeFindings",
	}
	for header,value in pairs(DescribeFindingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeFindingsSync(DescribeFindingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeFindingsAsync(DescribeFindingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAssessmentTemplate asynchronously, invoking a callback when done
-- @param DeleteAssessmentTemplateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteAssessmentTemplateAsync(DeleteAssessmentTemplateRequest, cb)
	assert(DeleteAssessmentTemplateRequest, "You must provide a DeleteAssessmentTemplateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.DeleteAssessmentTemplate",
	}
	for header,value in pairs(DeleteAssessmentTemplateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteAssessmentTemplateSync(DeleteAssessmentTemplateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAssessmentTemplateAsync(DeleteAssessmentTemplateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeResourceGroups asynchronously, invoking a callback when done
-- @param DescribeResourceGroupsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeResourceGroupsAsync(DescribeResourceGroupsRequest, cb)
	assert(DescribeResourceGroupsRequest, "You must provide a DescribeResourceGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeResourceGroups",
	}
	for header,value in pairs(DescribeResourceGroupsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeResourceGroupsSync(DescribeResourceGroupsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeResourceGroupsAsync(DescribeResourceGroupsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListFindings asynchronously, invoking a callback when done
-- @param ListFindingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListFindingsAsync(ListFindingsRequest, cb)
	assert(ListFindingsRequest, "You must provide a ListFindingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.ListFindings",
	}
	for header,value in pairs(ListFindingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ListFindingsSync(ListFindingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListFindingsAsync(ListFindingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListEventSubscriptions asynchronously, invoking a callback when done
-- @param ListEventSubscriptionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListEventSubscriptionsAsync(ListEventSubscriptionsRequest, cb)
	assert(ListEventSubscriptionsRequest, "You must provide a ListEventSubscriptionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.ListEventSubscriptions",
	}
	for header,value in pairs(ListEventSubscriptionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ListEventSubscriptionsSync(ListEventSubscriptionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListEventSubscriptionsAsync(ListEventSubscriptionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAssessmentTargets asynchronously, invoking a callback when done
-- @param ListAssessmentTargetsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAssessmentTargetsAsync(ListAssessmentTargetsRequest, cb)
	assert(ListAssessmentTargetsRequest, "You must provide a ListAssessmentTargetsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.ListAssessmentTargets",
	}
	for header,value in pairs(ListAssessmentTargetsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ListAssessmentTargetsSync(ListAssessmentTargetsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAssessmentTargetsAsync(ListAssessmentTargetsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeExclusions asynchronously, invoking a callback when done
-- @param DescribeExclusionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeExclusionsAsync(DescribeExclusionsRequest, cb)
	assert(DescribeExclusionsRequest, "You must provide a DescribeExclusionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeExclusions",
	}
	for header,value in pairs(DescribeExclusionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeExclusionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeExclusions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeExclusionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeExclusionsSync(DescribeExclusionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeExclusionsAsync(DescribeExclusionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListExclusions asynchronously, invoking a callback when done
-- @param ListExclusionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListExclusionsAsync(ListExclusionsRequest, cb)
	assert(ListExclusionsRequest, "You must provide a ListExclusionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.ListExclusions",
	}
	for header,value in pairs(ListExclusionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListExclusionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListExclusions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListExclusionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListExclusionsSync(ListExclusionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListExclusionsAsync(ListExclusionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetExclusionsPreview asynchronously, invoking a callback when done
-- @param GetExclusionsPreviewRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetExclusionsPreviewAsync(GetExclusionsPreviewRequest, cb)
	assert(GetExclusionsPreviewRequest, "You must provide a GetExclusionsPreviewRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.GetExclusionsPreview",
	}
	for header,value in pairs(GetExclusionsPreviewRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetExclusionsPreviewRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetExclusionsPreview synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetExclusionsPreviewRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetExclusionsPreviewSync(GetExclusionsPreviewRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetExclusionsPreviewAsync(GetExclusionsPreviewRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SetTagsForResource asynchronously, invoking a callback when done
-- @param SetTagsForResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SetTagsForResourceAsync(SetTagsForResourceRequest, cb)
	assert(SetTagsForResourceRequest, "You must provide a SetTagsForResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.SetTagsForResource",
	}
	for header,value in pairs(SetTagsForResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.SetTagsForResourceSync(SetTagsForResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SetTagsForResourceAsync(SetTagsForResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteAssessmentRun asynchronously, invoking a callback when done
-- @param DeleteAssessmentRunRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteAssessmentRunAsync(DeleteAssessmentRunRequest, cb)
	assert(DeleteAssessmentRunRequest, "You must provide a DeleteAssessmentRunRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.DeleteAssessmentRun",
	}
	for header,value in pairs(DeleteAssessmentRunRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DeleteAssessmentRunSync(DeleteAssessmentRunRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteAssessmentRunAsync(DeleteAssessmentRunRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAssessmentTarget asynchronously, invoking a callback when done
-- @param CreateAssessmentTargetRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateAssessmentTargetAsync(CreateAssessmentTargetRequest, cb)
	assert(CreateAssessmentTargetRequest, "You must provide a CreateAssessmentTargetRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.CreateAssessmentTarget",
	}
	for header,value in pairs(CreateAssessmentTargetRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateAssessmentTargetSync(CreateAssessmentTargetRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAssessmentTargetAsync(CreateAssessmentTargetRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UnsubscribeFromEvent asynchronously, invoking a callback when done
-- @param UnsubscribeFromEventRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UnsubscribeFromEventAsync(UnsubscribeFromEventRequest, cb)
	assert(UnsubscribeFromEventRequest, "You must provide a UnsubscribeFromEventRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.UnsubscribeFromEvent",
	}
	for header,value in pairs(UnsubscribeFromEventRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.UnsubscribeFromEventSync(UnsubscribeFromEventRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UnsubscribeFromEventAsync(UnsubscribeFromEventRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAssessmentRuns asynchronously, invoking a callback when done
-- @param ListAssessmentRunsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAssessmentRunsAsync(ListAssessmentRunsRequest, cb)
	assert(ListAssessmentRunsRequest, "You must provide a ListAssessmentRunsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.ListAssessmentRuns",
	}
	for header,value in pairs(ListAssessmentRunsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ListAssessmentRunsSync(ListAssessmentRunsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAssessmentRunsAsync(ListAssessmentRunsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateExclusionsPreview asynchronously, invoking a callback when done
-- @param CreateExclusionsPreviewRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateExclusionsPreviewAsync(CreateExclusionsPreviewRequest, cb)
	assert(CreateExclusionsPreviewRequest, "You must provide a CreateExclusionsPreviewRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.CreateExclusionsPreview",
	}
	for header,value in pairs(CreateExclusionsPreviewRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateExclusionsPreviewRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateExclusionsPreview synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateExclusionsPreviewRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateExclusionsPreviewSync(CreateExclusionsPreviewRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateExclusionsPreviewAsync(CreateExclusionsPreviewRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RegisterCrossAccountAccessRole asynchronously, invoking a callback when done
-- @param RegisterCrossAccountAccessRoleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RegisterCrossAccountAccessRoleAsync(RegisterCrossAccountAccessRoleRequest, cb)
	assert(RegisterCrossAccountAccessRoleRequest, "You must provide a RegisterCrossAccountAccessRoleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.RegisterCrossAccountAccessRole",
	}
	for header,value in pairs(RegisterCrossAccountAccessRoleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.RegisterCrossAccountAccessRoleSync(RegisterCrossAccountAccessRoleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RegisterCrossAccountAccessRoleAsync(RegisterCrossAccountAccessRoleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddAttributesToFindings asynchronously, invoking a callback when done
-- @param AddAttributesToFindingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddAttributesToFindingsAsync(AddAttributesToFindingsRequest, cb)
	assert(AddAttributesToFindingsRequest, "You must provide a AddAttributesToFindingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.AddAttributesToFindings",
	}
	for header,value in pairs(AddAttributesToFindingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.AddAttributesToFindingsSync(AddAttributesToFindingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddAttributesToFindingsAsync(AddAttributesToFindingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateResourceGroup asynchronously, invoking a callback when done
-- @param CreateResourceGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateResourceGroupAsync(CreateResourceGroupRequest, cb)
	assert(CreateResourceGroupRequest, "You must provide a CreateResourceGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.CreateResourceGroup",
	}
	for header,value in pairs(CreateResourceGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateResourceGroupSync(CreateResourceGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateResourceGroupAsync(CreateResourceGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeAssessmentTemplates asynchronously, invoking a callback when done
-- @param DescribeAssessmentTemplatesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeAssessmentTemplatesAsync(DescribeAssessmentTemplatesRequest, cb)
	assert(DescribeAssessmentTemplatesRequest, "You must provide a DescribeAssessmentTemplatesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeAssessmentTemplates",
	}
	for header,value in pairs(DescribeAssessmentTemplatesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeAssessmentTemplatesSync(DescribeAssessmentTemplatesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeAssessmentTemplatesAsync(DescribeAssessmentTemplatesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PreviewAgents asynchronously, invoking a callback when done
-- @param PreviewAgentsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PreviewAgentsAsync(PreviewAgentsRequest, cb)
	assert(PreviewAgentsRequest, "You must provide a PreviewAgentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.PreviewAgents",
	}
	for header,value in pairs(PreviewAgentsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.PreviewAgentsSync(PreviewAgentsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PreviewAgentsAsync(PreviewAgentsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateAssessmentTemplate asynchronously, invoking a callback when done
-- @param CreateAssessmentTemplateRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateAssessmentTemplateAsync(CreateAssessmentTemplateRequest, cb)
	assert(CreateAssessmentTemplateRequest, "You must provide a CreateAssessmentTemplateRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.CreateAssessmentTemplate",
	}
	for header,value in pairs(CreateAssessmentTemplateRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.CreateAssessmentTemplateSync(CreateAssessmentTemplateRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateAssessmentTemplateAsync(CreateAssessmentTemplateRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call SubscribeToEvent asynchronously, invoking a callback when done
-- @param SubscribeToEventRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.SubscribeToEventAsync(SubscribeToEventRequest, cb)
	assert(SubscribeToEventRequest, "You must provide a SubscribeToEventRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.SubscribeToEvent",
	}
	for header,value in pairs(SubscribeToEventRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.SubscribeToEventSync(SubscribeToEventRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.SubscribeToEventAsync(SubscribeToEventRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeRulesPackages asynchronously, invoking a callback when done
-- @param DescribeRulesPackagesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeRulesPackagesAsync(DescribeRulesPackagesRequest, cb)
	assert(DescribeRulesPackagesRequest, "You must provide a DescribeRulesPackagesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.DescribeRulesPackages",
	}
	for header,value in pairs(DescribeRulesPackagesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.DescribeRulesPackagesSync(DescribeRulesPackagesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeRulesPackagesAsync(DescribeRulesPackagesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForResource asynchronously, invoking a callback when done
-- @param ListTagsForResourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsForResourceAsync(ListTagsForResourceRequest, cb)
	assert(ListTagsForResourceRequest, "You must provide a ListTagsForResourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.ListTagsForResource",
	}
	for header,value in pairs(ListTagsForResourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ListTagsForResourceSync(ListTagsForResourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForResourceAsync(ListTagsForResourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListAssessmentRunAgents asynchronously, invoking a callback when done
-- @param ListAssessmentRunAgentsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListAssessmentRunAgentsAsync(ListAssessmentRunAgentsRequest, cb)
	assert(ListAssessmentRunAgentsRequest, "You must provide a ListAssessmentRunAgentsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.ListAssessmentRunAgents",
	}
	for header,value in pairs(ListAssessmentRunAgentsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.ListAssessmentRunAgentsSync(ListAssessmentRunAgentsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListAssessmentRunAgentsAsync(ListAssessmentRunAgentsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetAssessmentReport asynchronously, invoking a callback when done
-- @param GetAssessmentReportRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetAssessmentReportAsync(GetAssessmentReportRequest, cb)
	assert(GetAssessmentReportRequest, "You must provide a GetAssessmentReportRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "InspectorService.GetAssessmentReport",
	}
	for header,value in pairs(GetAssessmentReportRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
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
-- @return error_type
-- @return error_message
function M.GetAssessmentReportSync(GetAssessmentReportRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetAssessmentReportAsync(GetAssessmentReportRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
