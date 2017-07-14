--- GENERATED CODE - DO NOT MODIFY
-- Amazon CloudWatch Logs (logs-2014-03-28)

local M = {}

M.metadata = {
	api_version = "2014-03-28",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "logs",
	service_abbreviation = "",
	service_full_name = "Amazon CloudWatch Logs",
	signature_version = "v4",
	target_prefix = "Logs_20140328",
	timestamp_format = "",
	global_endpoint = "",
	uid = "logs-2014-03-28",
}

local DescribeLogGroupsResponse_keys = { "nextToken" = true, "logGroups" = true, nil }

function M.AssertDescribeLogGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLogGroupsResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["logGroups"] then M.AssertLogGroups(struct["logGroups"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLogGroupsResponse_keys[k], "DescribeLogGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLogGroupsResponse
--  
-- @param nextToken [NextToken]  
-- @param logGroups [LogGroups] <p>The log groups.</p>
function M.DescribeLogGroupsResponse(nextToken, logGroups, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLogGroupsResponse")
	local t = { 
		["nextToken"] = nextToken,
		["logGroups"] = logGroups,
	}
	M.AssertDescribeLogGroupsResponse(t)
	return t
end

local DescribeDestinationsResponse_keys = { "nextToken" = true, "destinations" = true, nil }

function M.AssertDescribeDestinationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDestinationsResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["destinations"] then M.AssertDestinations(struct["destinations"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDestinationsResponse_keys[k], "DescribeDestinationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDestinationsResponse
--  
-- @param nextToken [NextToken]  
-- @param destinations [Destinations] <p>The destinations.</p>
function M.DescribeDestinationsResponse(nextToken, destinations, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDestinationsResponse")
	local t = { 
		["nextToken"] = nextToken,
		["destinations"] = destinations,
	}
	M.AssertDescribeDestinationsResponse(t)
	return t
end

local Destination_keys = { "roleArn" = true, "creationTime" = true, "destinationName" = true, "accessPolicy" = true, "targetArn" = true, "arn" = true, nil }

function M.AssertDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Destination to be of type 'table'")
	if struct["roleArn"] then M.AssertRoleArn(struct["roleArn"]) end
	if struct["creationTime"] then M.AssertTimestamp(struct["creationTime"]) end
	if struct["destinationName"] then M.AssertDestinationName(struct["destinationName"]) end
	if struct["accessPolicy"] then M.AssertAccessPolicy(struct["accessPolicy"]) end
	if struct["targetArn"] then M.AssertTargetArn(struct["targetArn"]) end
	if struct["arn"] then M.AssertArn(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(Destination_keys[k], "Destination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Destination
-- <p>Represents a cross-account destination that receives subscription log events.</p>
-- @param roleArn [RoleArn] <p>A role for impersonation, used when delivering log events to the target.</p>
-- @param creationTime [Timestamp] <p>The creation time of the destination, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
-- @param destinationName [DestinationName] <p>The name of the destination.</p>
-- @param accessPolicy [AccessPolicy] <p>An IAM policy document that governs which AWS accounts can create subscription filters against this destination.</p>
-- @param targetArn [TargetArn] <p>The Amazon Resource Name (ARN) of the physical target where the log events will be delivered (for example, a Kinesis stream).</p>
-- @param arn [Arn] <p>The ARN of this destination.</p>
function M.Destination(roleArn, creationTime, destinationName, accessPolicy, targetArn, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Destination")
	local t = { 
		["roleArn"] = roleArn,
		["creationTime"] = creationTime,
		["destinationName"] = destinationName,
		["accessPolicy"] = accessPolicy,
		["targetArn"] = targetArn,
		["arn"] = arn,
	}
	M.AssertDestination(t)
	return t
end

local FilterLogEventsRequest_keys = { "endTime" = true, "filterPattern" = true, "logStreamNames" = true, "logGroupName" = true, "limit" = true, "startTime" = true, "nextToken" = true, "interleaved" = true, nil }

function M.AssertFilterLogEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FilterLogEventsRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	if struct["endTime"] then M.AssertTimestamp(struct["endTime"]) end
	if struct["filterPattern"] then M.AssertFilterPattern(struct["filterPattern"]) end
	if struct["logStreamNames"] then M.AssertInputLogStreamNames(struct["logStreamNames"]) end
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	if struct["limit"] then M.AssertEventsLimit(struct["limit"]) end
	if struct["startTime"] then M.AssertTimestamp(struct["startTime"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["interleaved"] then M.AssertInterleaved(struct["interleaved"]) end
	for k,_ in pairs(struct) do
		assert(FilterLogEventsRequest_keys[k], "FilterLogEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FilterLogEventsRequest
--  
-- @param endTime [Timestamp] <p>The end of the time range, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC. Events with a timestamp later than this time are not returned.</p>
-- @param filterPattern [FilterPattern] <p>The filter pattern to use. If not provided, all the events are matched.</p>
-- @param logStreamNames [InputLogStreamNames] <p>Optional list of log stream names.</p>
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- @param limit [EventsLimit] <p>The maximum number of events to return. The default is 10,000 events.</p>
-- @param startTime [Timestamp] <p>The start of the time range, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC. Events with a timestamp prior to this time are not returned.</p>
-- @param nextToken [NextToken] <p>The token for the next set of events to return. (You received this token from a previous call.)</p>
-- @param interleaved [Interleaved] <p>If the value is true, the operation makes a best effort to provide responses that contain events from multiple log streams within the log group interleaved in a single response. If the value is false all the matched log events in the first log stream are searched first, then those in the next log stream, and so on. The default is false.</p>
-- Required parameter: logGroupName
function M.FilterLogEventsRequest(endTime, filterPattern, logStreamNames, logGroupName, limit, startTime, nextToken, interleaved, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FilterLogEventsRequest")
	local t = { 
		["endTime"] = endTime,
		["filterPattern"] = filterPattern,
		["logStreamNames"] = logStreamNames,
		["logGroupName"] = logGroupName,
		["limit"] = limit,
		["startTime"] = startTime,
		["nextToken"] = nextToken,
		["interleaved"] = interleaved,
	}
	M.AssertFilterLogEventsRequest(t)
	return t
end

local LogStream_keys = { "firstEventTimestamp" = true, "lastEventTimestamp" = true, "creationTime" = true, "uploadSequenceToken" = true, "logStreamName" = true, "lastIngestionTime" = true, "arn" = true, "storedBytes" = true, nil }

function M.AssertLogStream(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LogStream to be of type 'table'")
	if struct["firstEventTimestamp"] then M.AssertTimestamp(struct["firstEventTimestamp"]) end
	if struct["lastEventTimestamp"] then M.AssertTimestamp(struct["lastEventTimestamp"]) end
	if struct["creationTime"] then M.AssertTimestamp(struct["creationTime"]) end
	if struct["uploadSequenceToken"] then M.AssertSequenceToken(struct["uploadSequenceToken"]) end
	if struct["logStreamName"] then M.AssertLogStreamName(struct["logStreamName"]) end
	if struct["lastIngestionTime"] then M.AssertTimestamp(struct["lastIngestionTime"]) end
	if struct["arn"] then M.AssertArn(struct["arn"]) end
	if struct["storedBytes"] then M.AssertStoredBytes(struct["storedBytes"]) end
	for k,_ in pairs(struct) do
		assert(LogStream_keys[k], "LogStream contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LogStream
-- <p>Represents a log stream, which is a sequence of log events from a single emitter of logs.</p>
-- @param firstEventTimestamp [Timestamp] <p>The time of the first event, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
-- @param lastEventTimestamp [Timestamp] <p> the time of the most recent log event in the log stream in CloudWatch Logs. This number is expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC. lastEventTime updates on an eventual consistency basis. It typically updates in less than an hour from ingestion, but may take longer in some rare situations.</p>
-- @param creationTime [Timestamp] <p>The creation time of the stream, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
-- @param uploadSequenceToken [SequenceToken] <p>The sequence token.</p>
-- @param logStreamName [LogStreamName] <p>The name of the log stream.</p>
-- @param lastIngestionTime [Timestamp] <p>The ingestion time, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
-- @param arn [Arn] <p>The Amazon Resource Name (ARN) of the log stream.</p>
-- @param storedBytes [StoredBytes] <p>The number of bytes stored.</p>
function M.LogStream(firstEventTimestamp, lastEventTimestamp, creationTime, uploadSequenceToken, logStreamName, lastIngestionTime, arn, storedBytes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LogStream")
	local t = { 
		["firstEventTimestamp"] = firstEventTimestamp,
		["lastEventTimestamp"] = lastEventTimestamp,
		["creationTime"] = creationTime,
		["uploadSequenceToken"] = uploadSequenceToken,
		["logStreamName"] = logStreamName,
		["lastIngestionTime"] = lastIngestionTime,
		["arn"] = arn,
		["storedBytes"] = storedBytes,
	}
	M.AssertLogStream(t)
	return t
end

local DescribeDestinationsRequest_keys = { "DestinationNamePrefix" = true, "nextToken" = true, "limit" = true, nil }

function M.AssertDescribeDestinationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDestinationsRequest to be of type 'table'")
	if struct["DestinationNamePrefix"] then M.AssertDestinationName(struct["DestinationNamePrefix"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["limit"] then M.AssertDescribeLimit(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(DescribeDestinationsRequest_keys[k], "DescribeDestinationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDestinationsRequest
--  
-- @param DestinationNamePrefix [DestinationName] <p>The prefix to match. If you don't specify a value, no prefix filter is applied.</p>
-- @param nextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param limit [DescribeLimit] <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
function M.DescribeDestinationsRequest(DestinationNamePrefix, nextToken, limit, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeDestinationsRequest")
	local t = { 
		["DestinationNamePrefix"] = DestinationNamePrefix,
		["nextToken"] = nextToken,
		["limit"] = limit,
	}
	M.AssertDescribeDestinationsRequest(t)
	return t
end

local TestMetricFilterRequest_keys = { "filterPattern" = true, "logEventMessages" = true, nil }

function M.AssertTestMetricFilterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestMetricFilterRequest to be of type 'table'")
	assert(struct["filterPattern"], "Expected key filterPattern to exist in table")
	assert(struct["logEventMessages"], "Expected key logEventMessages to exist in table")
	if struct["filterPattern"] then M.AssertFilterPattern(struct["filterPattern"]) end
	if struct["logEventMessages"] then M.AssertTestEventMessages(struct["logEventMessages"]) end
	for k,_ in pairs(struct) do
		assert(TestMetricFilterRequest_keys[k], "TestMetricFilterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestMetricFilterRequest
--  
-- @param filterPattern [FilterPattern]  
-- @param logEventMessages [TestEventMessages] <p>The log event messages to test.</p>
-- Required parameter: filterPattern
-- Required parameter: logEventMessages
function M.TestMetricFilterRequest(filterPattern, logEventMessages, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestMetricFilterRequest")
	local t = { 
		["filterPattern"] = filterPattern,
		["logEventMessages"] = logEventMessages,
	}
	M.AssertTestMetricFilterRequest(t)
	return t
end

local ServiceUnavailableException_keys = { nil }

function M.AssertServiceUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceUnavailableException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ServiceUnavailableException_keys[k], "ServiceUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceUnavailableException
-- <p>The service cannot complete the request.</p>
function M.ServiceUnavailableException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceUnavailableException")
	local t = { 
	}
	M.AssertServiceUnavailableException(t)
	return t
end

local DeleteSubscriptionFilterRequest_keys = { "filterName" = true, "logGroupName" = true, nil }

function M.AssertDeleteSubscriptionFilterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSubscriptionFilterRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["filterName"], "Expected key filterName to exist in table")
	if struct["filterName"] then M.AssertFilterName(struct["filterName"]) end
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteSubscriptionFilterRequest_keys[k], "DeleteSubscriptionFilterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSubscriptionFilterRequest
--  
-- @param filterName [FilterName] <p>The name of the subscription filter.</p>
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required parameter: logGroupName
-- Required parameter: filterName
function M.DeleteSubscriptionFilterRequest(filterName, logGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteSubscriptionFilterRequest")
	local t = { 
		["filterName"] = filterName,
		["logGroupName"] = logGroupName,
	}
	M.AssertDeleteSubscriptionFilterRequest(t)
	return t
end

local OutputLogEvent_keys = { "ingestionTime" = true, "timestamp" = true, "message" = true, nil }

function M.AssertOutputLogEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputLogEvent to be of type 'table'")
	if struct["ingestionTime"] then M.AssertTimestamp(struct["ingestionTime"]) end
	if struct["timestamp"] then M.AssertTimestamp(struct["timestamp"]) end
	if struct["message"] then M.AssertEventMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(OutputLogEvent_keys[k], "OutputLogEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputLogEvent
-- <p>Represents a log event.</p>
-- @param ingestionTime [Timestamp] <p>The time the event was ingested, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
-- @param timestamp [Timestamp] <p>The time the event occurred, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
-- @param message [EventMessage] <p>The data contained in the log event.</p>
function M.OutputLogEvent(ingestionTime, timestamp, message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating OutputLogEvent")
	local t = { 
		["ingestionTime"] = ingestionTime,
		["timestamp"] = timestamp,
		["message"] = message,
	}
	M.AssertOutputLogEvent(t)
	return t
end

local InvalidSequenceTokenException_keys = { "expectedSequenceToken" = true, nil }

function M.AssertInvalidSequenceTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSequenceTokenException to be of type 'table'")
	if struct["expectedSequenceToken"] then M.AssertSequenceToken(struct["expectedSequenceToken"]) end
	for k,_ in pairs(struct) do
		assert(InvalidSequenceTokenException_keys[k], "InvalidSequenceTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSequenceTokenException
-- <p>The sequence token is not valid.</p>
-- @param expectedSequenceToken [SequenceToken] <p>The sequence token is not valid.</p>
function M.InvalidSequenceTokenException(expectedSequenceToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSequenceTokenException")
	local t = { 
		["expectedSequenceToken"] = expectedSequenceToken,
	}
	M.AssertInvalidSequenceTokenException(t)
	return t
end

local MetricFilter_keys = { "filterName" = true, "metricTransformations" = true, "creationTime" = true, "filterPattern" = true, "logGroupName" = true, nil }

function M.AssertMetricFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricFilter to be of type 'table'")
	if struct["filterName"] then M.AssertFilterName(struct["filterName"]) end
	if struct["metricTransformations"] then M.AssertMetricTransformations(struct["metricTransformations"]) end
	if struct["creationTime"] then M.AssertTimestamp(struct["creationTime"]) end
	if struct["filterPattern"] then M.AssertFilterPattern(struct["filterPattern"]) end
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(MetricFilter_keys[k], "MetricFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricFilter
-- <p>Metric filters express how CloudWatch Logs would extract metric observations from ingested log events and transform them into metric data in a CloudWatch metric.</p>
-- @param filterName [FilterName] <p>The name of the metric filter.</p>
-- @param metricTransformations [MetricTransformations] <p>The metric transformations.</p>
-- @param creationTime [Timestamp] <p>The creation time of the metric filter, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
-- @param filterPattern [FilterPattern] <p>Metric filters express how CloudWatch Logs would extract metric observations from ingested log events and transform them into metric data in a CloudWatch metric.</p>
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
function M.MetricFilter(filterName, metricTransformations, creationTime, filterPattern, logGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MetricFilter")
	local t = { 
		["filterName"] = filterName,
		["metricTransformations"] = metricTransformations,
		["creationTime"] = creationTime,
		["filterPattern"] = filterPattern,
		["logGroupName"] = logGroupName,
	}
	M.AssertMetricFilter(t)
	return t
end

local DescribeLogStreamsResponse_keys = { "nextToken" = true, "logStreams" = true, nil }

function M.AssertDescribeLogStreamsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLogStreamsResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["logStreams"] then M.AssertLogStreams(struct["logStreams"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLogStreamsResponse_keys[k], "DescribeLogStreamsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLogStreamsResponse
--  
-- @param nextToken [NextToken]  
-- @param logStreams [LogStreams] <p>The log streams.</p>
function M.DescribeLogStreamsResponse(nextToken, logStreams, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLogStreamsResponse")
	local t = { 
		["nextToken"] = nextToken,
		["logStreams"] = logStreams,
	}
	M.AssertDescribeLogStreamsResponse(t)
	return t
end

local PutDestinationResponse_keys = { "destination" = true, nil }

function M.AssertPutDestinationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutDestinationResponse to be of type 'table'")
	if struct["destination"] then M.AssertDestination(struct["destination"]) end
	for k,_ in pairs(struct) do
		assert(PutDestinationResponse_keys[k], "PutDestinationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutDestinationResponse
--  
-- @param destination [Destination] <p>The destination.</p>
function M.PutDestinationResponse(destination, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutDestinationResponse")
	local t = { 
		["destination"] = destination,
	}
	M.AssertPutDestinationResponse(t)
	return t
end

local ListTagsLogGroupRequest_keys = { "logGroupName" = true, nil }

function M.AssertListTagsLogGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsLogGroupRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsLogGroupRequest_keys[k], "ListTagsLogGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsLogGroupRequest
--  
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required parameter: logGroupName
function M.ListTagsLogGroupRequest(logGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsLogGroupRequest")
	local t = { 
		["logGroupName"] = logGroupName,
	}
	M.AssertListTagsLogGroupRequest(t)
	return t
end

local ExportTaskStatus_keys = { "message" = true, "code" = true, nil }

function M.AssertExportTaskStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportTaskStatus to be of type 'table'")
	if struct["message"] then M.AssertExportTaskStatusMessage(struct["message"]) end
	if struct["code"] then M.AssertExportTaskStatusCode(struct["code"]) end
	for k,_ in pairs(struct) do
		assert(ExportTaskStatus_keys[k], "ExportTaskStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportTaskStatus
-- <p>Represents the status of an export task.</p>
-- @param message [ExportTaskStatusMessage] <p>The status message related to the status code.</p>
-- @param code [ExportTaskStatusCode] <p>The status code of the export task.</p>
function M.ExportTaskStatus(message, code, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExportTaskStatus")
	local t = { 
		["message"] = message,
		["code"] = code,
	}
	M.AssertExportTaskStatus(t)
	return t
end

local LimitExceededException_keys = { nil }

function M.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(LimitExceededException_keys[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>You have reached the maximum number of resources that can be created.</p>
function M.LimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating LimitExceededException")
	local t = { 
	}
	M.AssertLimitExceededException(t)
	return t
end

local PutDestinationPolicyRequest_keys = { "accessPolicy" = true, "destinationName" = true, nil }

function M.AssertPutDestinationPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutDestinationPolicyRequest to be of type 'table'")
	assert(struct["destinationName"], "Expected key destinationName to exist in table")
	assert(struct["accessPolicy"], "Expected key accessPolicy to exist in table")
	if struct["accessPolicy"] then M.AssertAccessPolicy(struct["accessPolicy"]) end
	if struct["destinationName"] then M.AssertDestinationName(struct["destinationName"]) end
	for k,_ in pairs(struct) do
		assert(PutDestinationPolicyRequest_keys[k], "PutDestinationPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutDestinationPolicyRequest
--  
-- @param accessPolicy [AccessPolicy] <p>An IAM policy document that authorizes cross-account users to deliver their log events to the associated destination.</p>
-- @param destinationName [DestinationName] <p>A name for an existing destination.</p>
-- Required parameter: destinationName
-- Required parameter: accessPolicy
function M.PutDestinationPolicyRequest(accessPolicy, destinationName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutDestinationPolicyRequest")
	local t = { 
		["accessPolicy"] = accessPolicy,
		["destinationName"] = destinationName,
	}
	M.AssertPutDestinationPolicyRequest(t)
	return t
end

local CancelExportTaskRequest_keys = { "taskId" = true, nil }

function M.AssertCancelExportTaskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelExportTaskRequest to be of type 'table'")
	assert(struct["taskId"], "Expected key taskId to exist in table")
	if struct["taskId"] then M.AssertExportTaskId(struct["taskId"]) end
	for k,_ in pairs(struct) do
		assert(CancelExportTaskRequest_keys[k], "CancelExportTaskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelExportTaskRequest
--  
-- @param taskId [ExportTaskId] <p>The ID of the export task.</p>
-- Required parameter: taskId
function M.CancelExportTaskRequest(taskId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CancelExportTaskRequest")
	local t = { 
		["taskId"] = taskId,
	}
	M.AssertCancelExportTaskRequest(t)
	return t
end

local CreateLogGroupRequest_keys = { "logGroupName" = true, "tags" = true, nil }

function M.AssertCreateLogGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLogGroupRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	if struct["tags"] then M.AssertTags(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(CreateLogGroupRequest_keys[k], "CreateLogGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLogGroupRequest
--  
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- @param tags [Tags] <p>The key-value pairs to use for the tags.</p>
-- Required parameter: logGroupName
function M.CreateLogGroupRequest(logGroupName, tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLogGroupRequest")
	local t = { 
		["logGroupName"] = logGroupName,
		["tags"] = tags,
	}
	M.AssertCreateLogGroupRequest(t)
	return t
end

local DeleteMetricFilterRequest_keys = { "filterName" = true, "logGroupName" = true, nil }

function M.AssertDeleteMetricFilterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMetricFilterRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["filterName"], "Expected key filterName to exist in table")
	if struct["filterName"] then M.AssertFilterName(struct["filterName"]) end
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteMetricFilterRequest_keys[k], "DeleteMetricFilterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMetricFilterRequest
--  
-- @param filterName [FilterName] <p>The name of the metric filter.</p>
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required parameter: logGroupName
-- Required parameter: filterName
function M.DeleteMetricFilterRequest(filterName, logGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteMetricFilterRequest")
	local t = { 
		["filterName"] = filterName,
		["logGroupName"] = logGroupName,
	}
	M.AssertDeleteMetricFilterRequest(t)
	return t
end

local RejectedLogEventsInfo_keys = { "tooNewLogEventStartIndex" = true, "tooOldLogEventEndIndex" = true, "expiredLogEventEndIndex" = true, nil }

function M.AssertRejectedLogEventsInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectedLogEventsInfo to be of type 'table'")
	if struct["tooNewLogEventStartIndex"] then M.AssertLogEventIndex(struct["tooNewLogEventStartIndex"]) end
	if struct["tooOldLogEventEndIndex"] then M.AssertLogEventIndex(struct["tooOldLogEventEndIndex"]) end
	if struct["expiredLogEventEndIndex"] then M.AssertLogEventIndex(struct["expiredLogEventEndIndex"]) end
	for k,_ in pairs(struct) do
		assert(RejectedLogEventsInfo_keys[k], "RejectedLogEventsInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectedLogEventsInfo
-- <p>Represents the rejected events.</p>
-- @param tooNewLogEventStartIndex [LogEventIndex] <p>The log events that are too new.</p>
-- @param tooOldLogEventEndIndex [LogEventIndex] <p>The log events that are too old.</p>
-- @param expiredLogEventEndIndex [LogEventIndex] <p>The expired log events.</p>
function M.RejectedLogEventsInfo(tooNewLogEventStartIndex, tooOldLogEventEndIndex, expiredLogEventEndIndex, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RejectedLogEventsInfo")
	local t = { 
		["tooNewLogEventStartIndex"] = tooNewLogEventStartIndex,
		["tooOldLogEventEndIndex"] = tooOldLogEventEndIndex,
		["expiredLogEventEndIndex"] = expiredLogEventEndIndex,
	}
	M.AssertRejectedLogEventsInfo(t)
	return t
end

local PutRetentionPolicyRequest_keys = { "retentionInDays" = true, "logGroupName" = true, nil }

function M.AssertPutRetentionPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRetentionPolicyRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["retentionInDays"], "Expected key retentionInDays to exist in table")
	if struct["retentionInDays"] then M.AssertDays(struct["retentionInDays"]) end
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(PutRetentionPolicyRequest_keys[k], "PutRetentionPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRetentionPolicyRequest
--  
-- @param retentionInDays [Days]  
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required parameter: logGroupName
-- Required parameter: retentionInDays
function M.PutRetentionPolicyRequest(retentionInDays, logGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutRetentionPolicyRequest")
	local t = { 
		["retentionInDays"] = retentionInDays,
		["logGroupName"] = logGroupName,
	}
	M.AssertPutRetentionPolicyRequest(t)
	return t
end

local MetricTransformation_keys = { "defaultValue" = true, "metricValue" = true, "metricNamespace" = true, "metricName" = true, nil }

function M.AssertMetricTransformation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricTransformation to be of type 'table'")
	assert(struct["metricName"], "Expected key metricName to exist in table")
	assert(struct["metricNamespace"], "Expected key metricNamespace to exist in table")
	assert(struct["metricValue"], "Expected key metricValue to exist in table")
	if struct["defaultValue"] then M.AssertDefaultValue(struct["defaultValue"]) end
	if struct["metricValue"] then M.AssertMetricValue(struct["metricValue"]) end
	if struct["metricNamespace"] then M.AssertMetricNamespace(struct["metricNamespace"]) end
	if struct["metricName"] then M.AssertMetricName(struct["metricName"]) end
	for k,_ in pairs(struct) do
		assert(MetricTransformation_keys[k], "MetricTransformation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricTransformation
-- <p>Indicates how to transform ingested log events into metric data in a CloudWatch metric.</p>
-- @param defaultValue [DefaultValue] <p>(Optional) The value to emit when a filter pattern does not match a log event. This value can be null.</p>
-- @param metricValue [MetricValue] <p>The value to publish to the CloudWatch metric when a filter pattern matches a log event.</p>
-- @param metricNamespace [MetricNamespace] <p>The namespace of the CloudWatch metric.</p>
-- @param metricName [MetricName] <p>The name of the CloudWatch metric.</p>
-- Required parameter: metricName
-- Required parameter: metricNamespace
-- Required parameter: metricValue
function M.MetricTransformation(defaultValue, metricValue, metricNamespace, metricName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MetricTransformation")
	local t = { 
		["defaultValue"] = defaultValue,
		["metricValue"] = metricValue,
		["metricNamespace"] = metricNamespace,
		["metricName"] = metricName,
	}
	M.AssertMetricTransformation(t)
	return t
end

local DeleteLogStreamRequest_keys = { "logStreamName" = true, "logGroupName" = true, nil }

function M.AssertDeleteLogStreamRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLogStreamRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["logStreamName"], "Expected key logStreamName to exist in table")
	if struct["logStreamName"] then M.AssertLogStreamName(struct["logStreamName"]) end
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteLogStreamRequest_keys[k], "DeleteLogStreamRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLogStreamRequest
--  
-- @param logStreamName [LogStreamName] <p>The name of the log stream.</p>
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required parameter: logGroupName
-- Required parameter: logStreamName
function M.DeleteLogStreamRequest(logStreamName, logGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLogStreamRequest")
	local t = { 
		["logStreamName"] = logStreamName,
		["logGroupName"] = logGroupName,
	}
	M.AssertDeleteLogStreamRequest(t)
	return t
end

local PutMetricFilterRequest_keys = { "filterName" = true, "metricTransformations" = true, "filterPattern" = true, "logGroupName" = true, nil }

function M.AssertPutMetricFilterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutMetricFilterRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["filterName"], "Expected key filterName to exist in table")
	assert(struct["filterPattern"], "Expected key filterPattern to exist in table")
	assert(struct["metricTransformations"], "Expected key metricTransformations to exist in table")
	if struct["filterName"] then M.AssertFilterName(struct["filterName"]) end
	if struct["metricTransformations"] then M.AssertMetricTransformations(struct["metricTransformations"]) end
	if struct["filterPattern"] then M.AssertFilterPattern(struct["filterPattern"]) end
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(PutMetricFilterRequest_keys[k], "PutMetricFilterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutMetricFilterRequest
--  
-- @param filterName [FilterName] <p>A name for the metric filter.</p>
-- @param metricTransformations [MetricTransformations] <p>A collection of information needed to define how metric data gets emitted.</p>
-- @param filterPattern [FilterPattern] <p>A filter pattern for extracting metric data out of ingested log events.</p>
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required parameter: logGroupName
-- Required parameter: filterName
-- Required parameter: filterPattern
-- Required parameter: metricTransformations
function M.PutMetricFilterRequest(filterName, metricTransformations, filterPattern, logGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutMetricFilterRequest")
	local t = { 
		["filterName"] = filterName,
		["metricTransformations"] = metricTransformations,
		["filterPattern"] = filterPattern,
		["logGroupName"] = logGroupName,
	}
	M.AssertPutMetricFilterRequest(t)
	return t
end

local TagLogGroupRequest_keys = { "logGroupName" = true, "tags" = true, nil }

function M.AssertTagLogGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagLogGroupRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["tags"], "Expected key tags to exist in table")
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	if struct["tags"] then M.AssertTags(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(TagLogGroupRequest_keys[k], "TagLogGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagLogGroupRequest
--  
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- @param tags [Tags] <p>The key-value pairs to use for the tags.</p>
-- Required parameter: logGroupName
-- Required parameter: tags
function M.TagLogGroupRequest(logGroupName, tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagLogGroupRequest")
	local t = { 
		["logGroupName"] = logGroupName,
		["tags"] = tags,
	}
	M.AssertTagLogGroupRequest(t)
	return t
end

local MetricFilterMatchRecord_keys = { "eventNumber" = true, "eventMessage" = true, "extractedValues" = true, nil }

function M.AssertMetricFilterMatchRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricFilterMatchRecord to be of type 'table'")
	if struct["eventNumber"] then M.AssertEventNumber(struct["eventNumber"]) end
	if struct["eventMessage"] then M.AssertEventMessage(struct["eventMessage"]) end
	if struct["extractedValues"] then M.AssertExtractedValues(struct["extractedValues"]) end
	for k,_ in pairs(struct) do
		assert(MetricFilterMatchRecord_keys[k], "MetricFilterMatchRecord contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricFilterMatchRecord
-- <p>Represents a matched event.</p>
-- @param eventNumber [EventNumber] <p>The event number.</p>
-- @param eventMessage [EventMessage] <p>The raw event data.</p>
-- @param extractedValues [ExtractedValues] <p>The values extracted from the event data by the filter.</p>
function M.MetricFilterMatchRecord(eventNumber, eventMessage, extractedValues, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MetricFilterMatchRecord")
	local t = { 
		["eventNumber"] = eventNumber,
		["eventMessage"] = eventMessage,
		["extractedValues"] = extractedValues,
	}
	M.AssertMetricFilterMatchRecord(t)
	return t
end

local GetLogEventsResponse_keys = { "nextForwardToken" = true, "events" = true, "nextBackwardToken" = true, nil }

function M.AssertGetLogEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLogEventsResponse to be of type 'table'")
	if struct["nextForwardToken"] then M.AssertNextToken(struct["nextForwardToken"]) end
	if struct["events"] then M.AssertOutputLogEvents(struct["events"]) end
	if struct["nextBackwardToken"] then M.AssertNextToken(struct["nextBackwardToken"]) end
	for k,_ in pairs(struct) do
		assert(GetLogEventsResponse_keys[k], "GetLogEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLogEventsResponse
--  
-- @param nextForwardToken [NextToken] <p>The token for the next set of items in the forward direction. The token expires after 24 hours.</p>
-- @param events [OutputLogEvents] <p>The events.</p>
-- @param nextBackwardToken [NextToken] <p>The token for the next set of items in the backward direction. The token expires after 24 hours.</p>
function M.GetLogEventsResponse(nextForwardToken, events, nextBackwardToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLogEventsResponse")
	local t = { 
		["nextForwardToken"] = nextForwardToken,
		["events"] = events,
		["nextBackwardToken"] = nextBackwardToken,
	}
	M.AssertGetLogEventsResponse(t)
	return t
end

local DataAlreadyAcceptedException_keys = { "expectedSequenceToken" = true, nil }

function M.AssertDataAlreadyAcceptedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DataAlreadyAcceptedException to be of type 'table'")
	if struct["expectedSequenceToken"] then M.AssertSequenceToken(struct["expectedSequenceToken"]) end
	for k,_ in pairs(struct) do
		assert(DataAlreadyAcceptedException_keys[k], "DataAlreadyAcceptedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DataAlreadyAcceptedException
-- <p>The event was already logged.</p>
-- @param expectedSequenceToken [SequenceToken] <p>The event was already logged.</p>
function M.DataAlreadyAcceptedException(expectedSequenceToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DataAlreadyAcceptedException")
	local t = { 
		["expectedSequenceToken"] = expectedSequenceToken,
	}
	M.AssertDataAlreadyAcceptedException(t)
	return t
end

local FilteredLogEvent_keys = { "ingestionTime" = true, "timestamp" = true, "message" = true, "eventId" = true, "logStreamName" = true, nil }

function M.AssertFilteredLogEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FilteredLogEvent to be of type 'table'")
	if struct["ingestionTime"] then M.AssertTimestamp(struct["ingestionTime"]) end
	if struct["timestamp"] then M.AssertTimestamp(struct["timestamp"]) end
	if struct["message"] then M.AssertEventMessage(struct["message"]) end
	if struct["eventId"] then M.AssertEventId(struct["eventId"]) end
	if struct["logStreamName"] then M.AssertLogStreamName(struct["logStreamName"]) end
	for k,_ in pairs(struct) do
		assert(FilteredLogEvent_keys[k], "FilteredLogEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FilteredLogEvent
-- <p>Represents a matched event.</p>
-- @param ingestionTime [Timestamp] <p>The time the event was ingested, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
-- @param timestamp [Timestamp] <p>The time the event occurred, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
-- @param message [EventMessage] <p>The data contained in the log event.</p>
-- @param eventId [EventId] <p>The ID of the event.</p>
-- @param logStreamName [LogStreamName] <p>The name of the log stream this event belongs to.</p>
function M.FilteredLogEvent(ingestionTime, timestamp, message, eventId, logStreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FilteredLogEvent")
	local t = { 
		["ingestionTime"] = ingestionTime,
		["timestamp"] = timestamp,
		["message"] = message,
		["eventId"] = eventId,
		["logStreamName"] = logStreamName,
	}
	M.AssertFilteredLogEvent(t)
	return t
end

local ResourceAlreadyExistsException_keys = { nil }

function M.AssertResourceAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ResourceAlreadyExistsException_keys[k], "ResourceAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceAlreadyExistsException
-- <p>The specified resource already exists.</p>
function M.ResourceAlreadyExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceAlreadyExistsException")
	local t = { 
	}
	M.AssertResourceAlreadyExistsException(t)
	return t
end

local DescribeMetricFiltersResponse_keys = { "metricFilters" = true, "nextToken" = true, nil }

function M.AssertDescribeMetricFiltersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMetricFiltersResponse to be of type 'table'")
	if struct["metricFilters"] then M.AssertMetricFilters(struct["metricFilters"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMetricFiltersResponse_keys[k], "DescribeMetricFiltersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMetricFiltersResponse
--  
-- @param metricFilters [MetricFilters] <p>The metric filters.</p>
-- @param nextToken [NextToken]  
function M.DescribeMetricFiltersResponse(metricFilters, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMetricFiltersResponse")
	local t = { 
		["metricFilters"] = metricFilters,
		["nextToken"] = nextToken,
	}
	M.AssertDescribeMetricFiltersResponse(t)
	return t
end

local CreateLogStreamRequest_keys = { "logStreamName" = true, "logGroupName" = true, nil }

function M.AssertCreateLogStreamRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLogStreamRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["logStreamName"], "Expected key logStreamName to exist in table")
	if struct["logStreamName"] then M.AssertLogStreamName(struct["logStreamName"]) end
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(CreateLogStreamRequest_keys[k], "CreateLogStreamRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLogStreamRequest
--  
-- @param logStreamName [LogStreamName] <p>The name of the log stream.</p>
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required parameter: logGroupName
-- Required parameter: logStreamName
function M.CreateLogStreamRequest(logStreamName, logGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateLogStreamRequest")
	local t = { 
		["logStreamName"] = logStreamName,
		["logGroupName"] = logGroupName,
	}
	M.AssertCreateLogStreamRequest(t)
	return t
end

local OperationAbortedException_keys = { nil }

function M.AssertOperationAbortedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationAbortedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(OperationAbortedException_keys[k], "OperationAbortedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationAbortedException
-- <p>Multiple requests to update the same resource were in conflict.</p>
function M.OperationAbortedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating OperationAbortedException")
	local t = { 
	}
	M.AssertOperationAbortedException(t)
	return t
end

local SubscriptionFilter_keys = { "filterPattern" = true, "filterName" = true, "roleArn" = true, "creationTime" = true, "logGroupName" = true, "destinationArn" = true, "distribution" = true, nil }

function M.AssertSubscriptionFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscriptionFilter to be of type 'table'")
	if struct["filterPattern"] then M.AssertFilterPattern(struct["filterPattern"]) end
	if struct["filterName"] then M.AssertFilterName(struct["filterName"]) end
	if struct["roleArn"] then M.AssertRoleArn(struct["roleArn"]) end
	if struct["creationTime"] then M.AssertTimestamp(struct["creationTime"]) end
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	if struct["destinationArn"] then M.AssertDestinationArn(struct["destinationArn"]) end
	if struct["distribution"] then M.AssertDistribution(struct["distribution"]) end
	for k,_ in pairs(struct) do
		assert(SubscriptionFilter_keys[k], "SubscriptionFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscriptionFilter
-- <p>Represents a subscription filter.</p>
-- @param filterPattern [FilterPattern] <p>Represents a subscription filter.</p>
-- @param filterName [FilterName] <p>The name of the subscription filter.</p>
-- @param roleArn [RoleArn] <p/>
-- @param creationTime [Timestamp] <p>The creation time of the subscription filter, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- @param destinationArn [DestinationArn] <p>The Amazon Resource Name (ARN) of the destination.</p>
-- @param distribution [Distribution] <p>The method used to distribute log data to the destination, when the destination is an Amazon Kinesis stream.</p>
function M.SubscriptionFilter(filterPattern, filterName, roleArn, creationTime, logGroupName, destinationArn, distribution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SubscriptionFilter")
	local t = { 
		["filterPattern"] = filterPattern,
		["filterName"] = filterName,
		["roleArn"] = roleArn,
		["creationTime"] = creationTime,
		["logGroupName"] = logGroupName,
		["destinationArn"] = destinationArn,
		["distribution"] = distribution,
	}
	M.AssertSubscriptionFilter(t)
	return t
end

local CreateExportTaskResponse_keys = { "taskId" = true, nil }

function M.AssertCreateExportTaskResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateExportTaskResponse to be of type 'table'")
	if struct["taskId"] then M.AssertExportTaskId(struct["taskId"]) end
	for k,_ in pairs(struct) do
		assert(CreateExportTaskResponse_keys[k], "CreateExportTaskResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateExportTaskResponse
--  
-- @param taskId [ExportTaskId] <p>The ID of the export task.</p>
function M.CreateExportTaskResponse(taskId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateExportTaskResponse")
	local t = { 
		["taskId"] = taskId,
	}
	M.AssertCreateExportTaskResponse(t)
	return t
end

local PutLogEventsResponse_keys = { "nextSequenceToken" = true, "rejectedLogEventsInfo" = true, nil }

function M.AssertPutLogEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutLogEventsResponse to be of type 'table'")
	if struct["nextSequenceToken"] then M.AssertSequenceToken(struct["nextSequenceToken"]) end
	if struct["rejectedLogEventsInfo"] then M.AssertRejectedLogEventsInfo(struct["rejectedLogEventsInfo"]) end
	for k,_ in pairs(struct) do
		assert(PutLogEventsResponse_keys[k], "PutLogEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutLogEventsResponse
--  
-- @param nextSequenceToken [SequenceToken] <p>The next sequence token.</p>
-- @param rejectedLogEventsInfo [RejectedLogEventsInfo] <p>The rejected events.</p>
function M.PutLogEventsResponse(nextSequenceToken, rejectedLogEventsInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutLogEventsResponse")
	local t = { 
		["nextSequenceToken"] = nextSequenceToken,
		["rejectedLogEventsInfo"] = rejectedLogEventsInfo,
	}
	M.AssertPutLogEventsResponse(t)
	return t
end

local CreateExportTaskRequest_keys = { "from" = true, "destinationPrefix" = true, "destination" = true, "logGroupName" = true, "to" = true, "logStreamNamePrefix" = true, "taskName" = true, nil }

function M.AssertCreateExportTaskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateExportTaskRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["from"], "Expected key from to exist in table")
	assert(struct["to"], "Expected key to to exist in table")
	assert(struct["destination"], "Expected key destination to exist in table")
	if struct["from"] then M.AssertTimestamp(struct["from"]) end
	if struct["destinationPrefix"] then M.AssertExportDestinationPrefix(struct["destinationPrefix"]) end
	if struct["destination"] then M.AssertExportDestinationBucket(struct["destination"]) end
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	if struct["to"] then M.AssertTimestamp(struct["to"]) end
	if struct["logStreamNamePrefix"] then M.AssertLogStreamName(struct["logStreamNamePrefix"]) end
	if struct["taskName"] then M.AssertExportTaskName(struct["taskName"]) end
	for k,_ in pairs(struct) do
		assert(CreateExportTaskRequest_keys[k], "CreateExportTaskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateExportTaskRequest
--  
-- @param from [Timestamp] <p>The start time of the range for the request, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC. Events with a timestamp earlier than this time are not exported.</p>
-- @param destinationPrefix [ExportDestinationPrefix] <p>The prefix used as the start of the key for every object exported. If you don't specify a value, the default is <code>exportedlogs</code>.</p>
-- @param destination [ExportDestinationBucket] <p>The name of S3 bucket for the exported log data. The bucket must be in the same AWS region.</p>
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- @param to [Timestamp] <p>The end time of the range for the request, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC. Events with a timestamp later than this time are not exported.</p>
-- @param logStreamNamePrefix [LogStreamName] <p>Export only log streams that match the provided prefix. If you don't specify a value, no prefix filter is applied.</p>
-- @param taskName [ExportTaskName] <p>The name of the export task.</p>
-- Required parameter: logGroupName
-- Required parameter: from
-- Required parameter: to
-- Required parameter: destination
function M.CreateExportTaskRequest(from, destinationPrefix, destination, logGroupName, to, logStreamNamePrefix, taskName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateExportTaskRequest")
	local t = { 
		["from"] = from,
		["destinationPrefix"] = destinationPrefix,
		["destination"] = destination,
		["logGroupName"] = logGroupName,
		["to"] = to,
		["logStreamNamePrefix"] = logStreamNamePrefix,
		["taskName"] = taskName,
	}
	M.AssertCreateExportTaskRequest(t)
	return t
end

local DescribeMetricFiltersRequest_keys = { "logGroupName" = true, "filterNamePrefix" = true, "limit" = true, "metricNamespace" = true, "nextToken" = true, "metricName" = true, nil }

function M.AssertDescribeMetricFiltersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMetricFiltersRequest to be of type 'table'")
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	if struct["filterNamePrefix"] then M.AssertFilterName(struct["filterNamePrefix"]) end
	if struct["limit"] then M.AssertDescribeLimit(struct["limit"]) end
	if struct["metricNamespace"] then M.AssertMetricNamespace(struct["metricNamespace"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["metricName"] then M.AssertMetricName(struct["metricName"]) end
	for k,_ in pairs(struct) do
		assert(DescribeMetricFiltersRequest_keys[k], "DescribeMetricFiltersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMetricFiltersRequest
--  
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- @param filterNamePrefix [FilterName] <p>The prefix to match.</p>
-- @param limit [DescribeLimit] <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
-- @param metricNamespace [MetricNamespace] <p>The namespace of the CloudWatch metric.</p>
-- @param nextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param metricName [MetricName] <p>The name of the CloudWatch metric.</p>
function M.DescribeMetricFiltersRequest(logGroupName, filterNamePrefix, limit, metricNamespace, nextToken, metricName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeMetricFiltersRequest")
	local t = { 
		["logGroupName"] = logGroupName,
		["filterNamePrefix"] = filterNamePrefix,
		["limit"] = limit,
		["metricNamespace"] = metricNamespace,
		["nextToken"] = nextToken,
		["metricName"] = metricName,
	}
	M.AssertDescribeMetricFiltersRequest(t)
	return t
end

local PutDestinationRequest_keys = { "targetArn" = true, "roleArn" = true, "destinationName" = true, nil }

function M.AssertPutDestinationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutDestinationRequest to be of type 'table'")
	assert(struct["destinationName"], "Expected key destinationName to exist in table")
	assert(struct["targetArn"], "Expected key targetArn to exist in table")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	if struct["targetArn"] then M.AssertTargetArn(struct["targetArn"]) end
	if struct["roleArn"] then M.AssertRoleArn(struct["roleArn"]) end
	if struct["destinationName"] then M.AssertDestinationName(struct["destinationName"]) end
	for k,_ in pairs(struct) do
		assert(PutDestinationRequest_keys[k], "PutDestinationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutDestinationRequest
--  
-- @param targetArn [TargetArn] <p>The ARN of an Amazon Kinesis stream to deliver matching log events to.</p>
-- @param roleArn [RoleArn] <p>The ARN of an IAM role that grants CloudWatch Logs permissions to call Amazon Kinesis PutRecord on the destination stream.</p>
-- @param destinationName [DestinationName] <p>A name for the destination.</p>
-- Required parameter: destinationName
-- Required parameter: targetArn
-- Required parameter: roleArn
function M.PutDestinationRequest(targetArn, roleArn, destinationName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutDestinationRequest")
	local t = { 
		["targetArn"] = targetArn,
		["roleArn"] = roleArn,
		["destinationName"] = destinationName,
	}
	M.AssertPutDestinationRequest(t)
	return t
end

local UntagLogGroupRequest_keys = { "logGroupName" = true, "tags" = true, nil }

function M.AssertUntagLogGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagLogGroupRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["tags"], "Expected key tags to exist in table")
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	if struct["tags"] then M.AssertTagList(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(UntagLogGroupRequest_keys[k], "UntagLogGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagLogGroupRequest
--  
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- @param tags [TagList] <p>The tag keys. The corresponding tags are removed from the log group.</p>
-- Required parameter: logGroupName
-- Required parameter: tags
function M.UntagLogGroupRequest(logGroupName, tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UntagLogGroupRequest")
	local t = { 
		["logGroupName"] = logGroupName,
		["tags"] = tags,
	}
	M.AssertUntagLogGroupRequest(t)
	return t
end

local DescribeExportTasksResponse_keys = { "nextToken" = true, "exportTasks" = true, nil }

function M.AssertDescribeExportTasksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExportTasksResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["exportTasks"] then M.AssertExportTasks(struct["exportTasks"]) end
	for k,_ in pairs(struct) do
		assert(DescribeExportTasksResponse_keys[k], "DescribeExportTasksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExportTasksResponse
--  
-- @param nextToken [NextToken]  
-- @param exportTasks [ExportTasks] <p>The export tasks.</p>
function M.DescribeExportTasksResponse(nextToken, exportTasks, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeExportTasksResponse")
	local t = { 
		["nextToken"] = nextToken,
		["exportTasks"] = exportTasks,
	}
	M.AssertDescribeExportTasksResponse(t)
	return t
end

local PutSubscriptionFilterRequest_keys = { "filterPattern" = true, "filterName" = true, "roleArn" = true, "logGroupName" = true, "destinationArn" = true, "distribution" = true, nil }

function M.AssertPutSubscriptionFilterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutSubscriptionFilterRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["filterName"], "Expected key filterName to exist in table")
	assert(struct["filterPattern"], "Expected key filterPattern to exist in table")
	assert(struct["destinationArn"], "Expected key destinationArn to exist in table")
	if struct["filterPattern"] then M.AssertFilterPattern(struct["filterPattern"]) end
	if struct["filterName"] then M.AssertFilterName(struct["filterName"]) end
	if struct["roleArn"] then M.AssertRoleArn(struct["roleArn"]) end
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	if struct["destinationArn"] then M.AssertDestinationArn(struct["destinationArn"]) end
	if struct["distribution"] then M.AssertDistribution(struct["distribution"]) end
	for k,_ in pairs(struct) do
		assert(PutSubscriptionFilterRequest_keys[k], "PutSubscriptionFilterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutSubscriptionFilterRequest
--  
-- @param filterPattern [FilterPattern] <p>A filter pattern for subscribing to a filtered stream of log events.</p>
-- @param filterName [FilterName] <p>A name for the subscription filter. If you are updating an existing filter, you must specify the correct name in <code>filterName</code>. Otherwise, the call will fail because you cannot associate a second filter with a log group. To find the name of the filter currently associated with a log group, use <a>DescribeSubscriptionFilters</a>.</p>
-- @param roleArn [RoleArn] <p>The ARN of an IAM role that grants CloudWatch Logs permissions to deliver ingested log events to the destination stream. You don't need to provide the ARN when you are working with a logical destination for cross-account delivery.</p>
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- @param destinationArn [DestinationArn] <p>The ARN of the destination to deliver matching log events to. Currently, the supported destinations are:</p> <ul> <li> <p>An Amazon Kinesis stream belonging to the same account as the subscription filter, for same-account delivery.</p> </li> <li> <p>A logical destination (specified using an ARN) belonging to a different account, for cross-account delivery.</p> </li> <li> <p>An Amazon Kinesis Firehose stream belonging to the same account as the subscription filter, for same-account delivery.</p> </li> <li> <p>An AWS Lambda function belonging to the same account as the subscription filter, for same-account delivery.</p> </li> </ul>
-- @param distribution [Distribution] <p>The method used to distribute log data to the destination, when the destination is an Amazon Kinesis stream. By default, log data is grouped by log stream. For a more even distribution, you can group log data randomly.</p>
-- Required parameter: logGroupName
-- Required parameter: filterName
-- Required parameter: filterPattern
-- Required parameter: destinationArn
function M.PutSubscriptionFilterRequest(filterPattern, filterName, roleArn, logGroupName, destinationArn, distribution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutSubscriptionFilterRequest")
	local t = { 
		["filterPattern"] = filterPattern,
		["filterName"] = filterName,
		["roleArn"] = roleArn,
		["logGroupName"] = logGroupName,
		["destinationArn"] = destinationArn,
		["distribution"] = distribution,
	}
	M.AssertPutSubscriptionFilterRequest(t)
	return t
end

local InvalidOperationException_keys = { nil }

function M.AssertInvalidOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidOperationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidOperationException_keys[k], "InvalidOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidOperationException
-- <p>The operation is not valid on the specified resource.</p>
function M.InvalidOperationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidOperationException")
	local t = { 
	}
	M.AssertInvalidOperationException(t)
	return t
end

local DescribeSubscriptionFiltersRequest_keys = { "nextToken" = true, "limit" = true, "logGroupName" = true, "filterNamePrefix" = true, nil }

function M.AssertDescribeSubscriptionFiltersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSubscriptionFiltersRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["limit"] then M.AssertDescribeLimit(struct["limit"]) end
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	if struct["filterNamePrefix"] then M.AssertFilterName(struct["filterNamePrefix"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSubscriptionFiltersRequest_keys[k], "DescribeSubscriptionFiltersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSubscriptionFiltersRequest
--  
-- @param nextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param limit [DescribeLimit] <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- @param filterNamePrefix [FilterName] <p>The prefix to match. If you don't specify a value, no prefix filter is applied.</p>
-- Required parameter: logGroupName
function M.DescribeSubscriptionFiltersRequest(nextToken, limit, logGroupName, filterNamePrefix, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSubscriptionFiltersRequest")
	local t = { 
		["nextToken"] = nextToken,
		["limit"] = limit,
		["logGroupName"] = logGroupName,
		["filterNamePrefix"] = filterNamePrefix,
	}
	M.AssertDescribeSubscriptionFiltersRequest(t)
	return t
end

local ExportTaskExecutionInfo_keys = { "completionTime" = true, "creationTime" = true, nil }

function M.AssertExportTaskExecutionInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportTaskExecutionInfo to be of type 'table'")
	if struct["completionTime"] then M.AssertTimestamp(struct["completionTime"]) end
	if struct["creationTime"] then M.AssertTimestamp(struct["creationTime"]) end
	for k,_ in pairs(struct) do
		assert(ExportTaskExecutionInfo_keys[k], "ExportTaskExecutionInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportTaskExecutionInfo
-- <p>Represents the status of an export task.</p>
-- @param completionTime [Timestamp] <p>The completion time of the export task, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
-- @param creationTime [Timestamp] <p>The creation time of the export task, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
function M.ExportTaskExecutionInfo(completionTime, creationTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExportTaskExecutionInfo")
	local t = { 
		["completionTime"] = completionTime,
		["creationTime"] = creationTime,
	}
	M.AssertExportTaskExecutionInfo(t)
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
-- <p>The specified resource does not exist.</p>
function M.ResourceNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local PutLogEventsRequest_keys = { "sequenceToken" = true, "logEvents" = true, "logStreamName" = true, "logGroupName" = true, nil }

function M.AssertPutLogEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutLogEventsRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["logStreamName"], "Expected key logStreamName to exist in table")
	assert(struct["logEvents"], "Expected key logEvents to exist in table")
	if struct["sequenceToken"] then M.AssertSequenceToken(struct["sequenceToken"]) end
	if struct["logEvents"] then M.AssertInputLogEvents(struct["logEvents"]) end
	if struct["logStreamName"] then M.AssertLogStreamName(struct["logStreamName"]) end
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(PutLogEventsRequest_keys[k], "PutLogEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutLogEventsRequest
--  
-- @param sequenceToken [SequenceToken] <p>The sequence token.</p>
-- @param logEvents [InputLogEvents] <p>The log events.</p>
-- @param logStreamName [LogStreamName] <p>The name of the log stream.</p>
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required parameter: logGroupName
-- Required parameter: logStreamName
-- Required parameter: logEvents
function M.PutLogEventsRequest(sequenceToken, logEvents, logStreamName, logGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutLogEventsRequest")
	local t = { 
		["sequenceToken"] = sequenceToken,
		["logEvents"] = logEvents,
		["logStreamName"] = logStreamName,
		["logGroupName"] = logGroupName,
	}
	M.AssertPutLogEventsRequest(t)
	return t
end

local DescribeLogGroupsRequest_keys = { "limit" = true, "nextToken" = true, "logGroupNamePrefix" = true, nil }

function M.AssertDescribeLogGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLogGroupsRequest to be of type 'table'")
	if struct["limit"] then M.AssertDescribeLimit(struct["limit"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["logGroupNamePrefix"] then M.AssertLogGroupName(struct["logGroupNamePrefix"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLogGroupsRequest_keys[k], "DescribeLogGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLogGroupsRequest
--  
-- @param limit [DescribeLimit] <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
-- @param nextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param logGroupNamePrefix [LogGroupName] <p>The prefix to match.</p>
function M.DescribeLogGroupsRequest(limit, nextToken, logGroupNamePrefix, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLogGroupsRequest")
	local t = { 
		["limit"] = limit,
		["nextToken"] = nextToken,
		["logGroupNamePrefix"] = logGroupNamePrefix,
	}
	M.AssertDescribeLogGroupsRequest(t)
	return t
end

local SearchedLogStream_keys = { "searchedCompletely" = true, "logStreamName" = true, nil }

function M.AssertSearchedLogStream(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchedLogStream to be of type 'table'")
	if struct["searchedCompletely"] then M.AssertLogStreamSearchedCompletely(struct["searchedCompletely"]) end
	if struct["logStreamName"] then M.AssertLogStreamName(struct["logStreamName"]) end
	for k,_ in pairs(struct) do
		assert(SearchedLogStream_keys[k], "SearchedLogStream contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchedLogStream
-- <p>Represents the search status of a log stream.</p>
-- @param searchedCompletely [LogStreamSearchedCompletely] <p>Indicates whether all the events in this log stream were searched.</p>
-- @param logStreamName [LogStreamName] <p>The name of the log stream.</p>
function M.SearchedLogStream(searchedCompletely, logStreamName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating SearchedLogStream")
	local t = { 
		["searchedCompletely"] = searchedCompletely,
		["logStreamName"] = logStreamName,
	}
	M.AssertSearchedLogStream(t)
	return t
end

local DescribeExportTasksRequest_keys = { "nextToken" = true, "limit" = true, "taskId" = true, "statusCode" = true, nil }

function M.AssertDescribeExportTasksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExportTasksRequest to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["limit"] then M.AssertDescribeLimit(struct["limit"]) end
	if struct["taskId"] then M.AssertExportTaskId(struct["taskId"]) end
	if struct["statusCode"] then M.AssertExportTaskStatusCode(struct["statusCode"]) end
	for k,_ in pairs(struct) do
		assert(DescribeExportTasksRequest_keys[k], "DescribeExportTasksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExportTasksRequest
--  
-- @param nextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param limit [DescribeLimit] <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
-- @param taskId [ExportTaskId] <p>The ID of the export task. Specifying a task ID filters the results to zero or one export tasks.</p>
-- @param statusCode [ExportTaskStatusCode] <p>The status code of the export task. Specifying a status code filters the results to zero or more export tasks.</p>
function M.DescribeExportTasksRequest(nextToken, limit, taskId, statusCode, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeExportTasksRequest")
	local t = { 
		["nextToken"] = nextToken,
		["limit"] = limit,
		["taskId"] = taskId,
		["statusCode"] = statusCode,
	}
	M.AssertDescribeExportTasksRequest(t)
	return t
end

local InvalidParameterException_keys = { nil }

function M.AssertInvalidParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidParameterException_keys[k], "InvalidParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterException
-- <p>A parameter is specified incorrectly.</p>
function M.InvalidParameterException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterException")
	local t = { 
	}
	M.AssertInvalidParameterException(t)
	return t
end

local InputLogEvent_keys = { "timestamp" = true, "message" = true, nil }

function M.AssertInputLogEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputLogEvent to be of type 'table'")
	assert(struct["timestamp"], "Expected key timestamp to exist in table")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["timestamp"] then M.AssertTimestamp(struct["timestamp"]) end
	if struct["message"] then M.AssertEventMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InputLogEvent_keys[k], "InputLogEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputLogEvent
-- <p>Represents a log event, which is a record of activity that was recorded by the application or resource being monitored.</p>
-- @param timestamp [Timestamp] <p>The time the event occurred, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
-- @param message [EventMessage] <p>The raw event message.</p>
-- Required parameter: timestamp
-- Required parameter: message
function M.InputLogEvent(timestamp, message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InputLogEvent")
	local t = { 
		["timestamp"] = timestamp,
		["message"] = message,
	}
	M.AssertInputLogEvent(t)
	return t
end

local LogGroup_keys = { "storedBytes" = true, "metricFilterCount" = true, "creationTime" = true, "logGroupName" = true, "retentionInDays" = true, "arn" = true, nil }

function M.AssertLogGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LogGroup to be of type 'table'")
	if struct["storedBytes"] then M.AssertStoredBytes(struct["storedBytes"]) end
	if struct["metricFilterCount"] then M.AssertFilterCount(struct["metricFilterCount"]) end
	if struct["creationTime"] then M.AssertTimestamp(struct["creationTime"]) end
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	if struct["retentionInDays"] then M.AssertDays(struct["retentionInDays"]) end
	if struct["arn"] then M.AssertArn(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(LogGroup_keys[k], "LogGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LogGroup
-- <p>Represents a log group.</p>
-- @param storedBytes [StoredBytes] <p>The number of bytes stored.</p>
-- @param metricFilterCount [FilterCount] <p>The number of metric filters.</p>
-- @param creationTime [Timestamp] <p>The creation time of the log group, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC.</p>
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- @param retentionInDays [Days] <p>Represents a log group.</p>
-- @param arn [Arn] <p>The Amazon Resource Name (ARN) of the log group.</p>
function M.LogGroup(storedBytes, metricFilterCount, creationTime, logGroupName, retentionInDays, arn, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LogGroup")
	local t = { 
		["storedBytes"] = storedBytes,
		["metricFilterCount"] = metricFilterCount,
		["creationTime"] = creationTime,
		["logGroupName"] = logGroupName,
		["retentionInDays"] = retentionInDays,
		["arn"] = arn,
	}
	M.AssertLogGroup(t)
	return t
end

local ListTagsLogGroupResponse_keys = { "tags" = true, nil }

function M.AssertListTagsLogGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsLogGroupResponse to be of type 'table'")
	if struct["tags"] then M.AssertTags(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsLogGroupResponse_keys[k], "ListTagsLogGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsLogGroupResponse
--  
-- @param tags [Tags] <p>The tags.</p>
function M.ListTagsLogGroupResponse(tags, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsLogGroupResponse")
	local t = { 
		["tags"] = tags,
	}
	M.AssertListTagsLogGroupResponse(t)
	return t
end

local DeleteDestinationRequest_keys = { "destinationName" = true, nil }

function M.AssertDeleteDestinationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDestinationRequest to be of type 'table'")
	assert(struct["destinationName"], "Expected key destinationName to exist in table")
	if struct["destinationName"] then M.AssertDestinationName(struct["destinationName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteDestinationRequest_keys[k], "DeleteDestinationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDestinationRequest
--  
-- @param destinationName [DestinationName] <p>The name of the destination.</p>
-- Required parameter: destinationName
function M.DeleteDestinationRequest(destinationName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteDestinationRequest")
	local t = { 
		["destinationName"] = destinationName,
	}
	M.AssertDeleteDestinationRequest(t)
	return t
end

local DescribeLogStreamsRequest_keys = { "orderBy" = true, "logStreamNamePrefix" = true, "logGroupName" = true, "descending" = true, "limit" = true, "nextToken" = true, nil }

function M.AssertDescribeLogStreamsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLogStreamsRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	if struct["orderBy"] then M.AssertOrderBy(struct["orderBy"]) end
	if struct["logStreamNamePrefix"] then M.AssertLogStreamName(struct["logStreamNamePrefix"]) end
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	if struct["descending"] then M.AssertDescending(struct["descending"]) end
	if struct["limit"] then M.AssertDescribeLimit(struct["limit"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeLogStreamsRequest_keys[k], "DescribeLogStreamsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLogStreamsRequest
--  
-- @param orderBy [OrderBy] <p>If the value is <code>LogStreamName</code>, the results are ordered by log stream name. If the value is <code>LastEventTime</code>, the results are ordered by the event time. The default value is <code>LogStreamName</code>.</p> <p>If you order the results by event time, you cannot specify the <code>logStreamNamePrefix</code> parameter.</p> <p>lastEventTimestamp represents the time of the most recent log event in the log stream in CloudWatch Logs. This number is expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC. lastEventTimeStamp updates on an eventual consistency basis. It typically updates in less than an hour from ingestion, but may take longer in some rare situations.</p>
-- @param logStreamNamePrefix [LogStreamName] <p>The prefix to match.</p> <p>You cannot specify this parameter if <code>orderBy</code> is <code>LastEventTime</code>.</p>
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- @param descending [Descending] <p>If the value is true, results are returned in descending order. If the value is to false, results are returned in ascending order. The default value is false.</p>
-- @param limit [DescribeLimit] <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
-- @param nextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- Required parameter: logGroupName
function M.DescribeLogStreamsRequest(orderBy, logStreamNamePrefix, logGroupName, descending, limit, nextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeLogStreamsRequest")
	local t = { 
		["orderBy"] = orderBy,
		["logStreamNamePrefix"] = logStreamNamePrefix,
		["logGroupName"] = logGroupName,
		["descending"] = descending,
		["limit"] = limit,
		["nextToken"] = nextToken,
	}
	M.AssertDescribeLogStreamsRequest(t)
	return t
end

local DeleteRetentionPolicyRequest_keys = { "logGroupName" = true, nil }

function M.AssertDeleteRetentionPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRetentionPolicyRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteRetentionPolicyRequest_keys[k], "DeleteRetentionPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRetentionPolicyRequest
--  
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required parameter: logGroupName
function M.DeleteRetentionPolicyRequest(logGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteRetentionPolicyRequest")
	local t = { 
		["logGroupName"] = logGroupName,
	}
	M.AssertDeleteRetentionPolicyRequest(t)
	return t
end

local GetLogEventsRequest_keys = { "endTime" = true, "logStreamName" = true, "logGroupName" = true, "limit" = true, "startTime" = true, "nextToken" = true, "startFromHead" = true, nil }

function M.AssertGetLogEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLogEventsRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["logStreamName"], "Expected key logStreamName to exist in table")
	if struct["endTime"] then M.AssertTimestamp(struct["endTime"]) end
	if struct["logStreamName"] then M.AssertLogStreamName(struct["logStreamName"]) end
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	if struct["limit"] then M.AssertEventsLimit(struct["limit"]) end
	if struct["startTime"] then M.AssertTimestamp(struct["startTime"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["startFromHead"] then M.AssertStartFromHead(struct["startFromHead"]) end
	for k,_ in pairs(struct) do
		assert(GetLogEventsRequest_keys[k], "GetLogEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLogEventsRequest
--  
-- @param endTime [Timestamp] <p>The end of the time range, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC. Events with a timestamp later than this time are not included.</p>
-- @param logStreamName [LogStreamName] <p>The name of the log stream.</p>
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- @param limit [EventsLimit] <p>The maximum number of log events returned. If you don't specify a value, the maximum is as many log events as can fit in a response size of 1MB, up to 10,000 log events.</p>
-- @param startTime [Timestamp] <p>The start of the time range, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC. Events with a timestamp earlier than this time are not included.</p>
-- @param nextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- @param startFromHead [StartFromHead] <p>If the value is true, the earliest log events are returned first. If the value is false, the latest log events are returned first. The default value is false.</p>
-- Required parameter: logGroupName
-- Required parameter: logStreamName
function M.GetLogEventsRequest(endTime, logStreamName, logGroupName, limit, startTime, nextToken, startFromHead, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetLogEventsRequest")
	local t = { 
		["endTime"] = endTime,
		["logStreamName"] = logStreamName,
		["logGroupName"] = logGroupName,
		["limit"] = limit,
		["startTime"] = startTime,
		["nextToken"] = nextToken,
		["startFromHead"] = startFromHead,
	}
	M.AssertGetLogEventsRequest(t)
	return t
end

local FilterLogEventsResponse_keys = { "searchedLogStreams" = true, "nextToken" = true, "events" = true, nil }

function M.AssertFilterLogEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FilterLogEventsResponse to be of type 'table'")
	if struct["searchedLogStreams"] then M.AssertSearchedLogStreams(struct["searchedLogStreams"]) end
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["events"] then M.AssertFilteredLogEvents(struct["events"]) end
	for k,_ in pairs(struct) do
		assert(FilterLogEventsResponse_keys[k], "FilterLogEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FilterLogEventsResponse
--  
-- @param searchedLogStreams [SearchedLogStreams] <p>Indicates which log streams have been searched and whether each has been searched completely.</p>
-- @param nextToken [NextToken] <p>The token to use when requesting the next set of items. The token expires after 24 hours.</p>
-- @param events [FilteredLogEvents] <p>The matched events.</p>
function M.FilterLogEventsResponse(searchedLogStreams, nextToken, events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FilterLogEventsResponse")
	local t = { 
		["searchedLogStreams"] = searchedLogStreams,
		["nextToken"] = nextToken,
		["events"] = events,
	}
	M.AssertFilterLogEventsResponse(t)
	return t
end

local DescribeSubscriptionFiltersResponse_keys = { "nextToken" = true, "subscriptionFilters" = true, nil }

function M.AssertDescribeSubscriptionFiltersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSubscriptionFiltersResponse to be of type 'table'")
	if struct["nextToken"] then M.AssertNextToken(struct["nextToken"]) end
	if struct["subscriptionFilters"] then M.AssertSubscriptionFilters(struct["subscriptionFilters"]) end
	for k,_ in pairs(struct) do
		assert(DescribeSubscriptionFiltersResponse_keys[k], "DescribeSubscriptionFiltersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSubscriptionFiltersResponse
--  
-- @param nextToken [NextToken]  
-- @param subscriptionFilters [SubscriptionFilters] <p>The subscription filters.</p>
function M.DescribeSubscriptionFiltersResponse(nextToken, subscriptionFilters, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeSubscriptionFiltersResponse")
	local t = { 
		["nextToken"] = nextToken,
		["subscriptionFilters"] = subscriptionFilters,
	}
	M.AssertDescribeSubscriptionFiltersResponse(t)
	return t
end

local TestMetricFilterResponse_keys = { "matches" = true, nil }

function M.AssertTestMetricFilterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestMetricFilterResponse to be of type 'table'")
	if struct["matches"] then M.AssertMetricFilterMatches(struct["matches"]) end
	for k,_ in pairs(struct) do
		assert(TestMetricFilterResponse_keys[k], "TestMetricFilterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestMetricFilterResponse
--  
-- @param matches [MetricFilterMatches] <p>The matched events.</p>
function M.TestMetricFilterResponse(matches, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TestMetricFilterResponse")
	local t = { 
		["matches"] = matches,
	}
	M.AssertTestMetricFilterResponse(t)
	return t
end

local DeleteLogGroupRequest_keys = { "logGroupName" = true, nil }

function M.AssertDeleteLogGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLogGroupRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteLogGroupRequest_keys[k], "DeleteLogGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLogGroupRequest
--  
-- @param logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required parameter: logGroupName
function M.DeleteLogGroupRequest(logGroupName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteLogGroupRequest")
	local t = { 
		["logGroupName"] = logGroupName,
	}
	M.AssertDeleteLogGroupRequest(t)
	return t
end

local ExportTask_keys = { "status" = true, "from" = true, "destinationPrefix" = true, "destination" = true, "logGroupName" = true, "to" = true, "taskId" = true, "taskName" = true, "executionInfo" = true, nil }

function M.AssertExportTask(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportTask to be of type 'table'")
	if struct["status"] then M.AssertExportTaskStatus(struct["status"]) end
	if struct["from"] then M.AssertTimestamp(struct["from"]) end
	if struct["destinationPrefix"] then M.AssertExportDestinationPrefix(struct["destinationPrefix"]) end
	if struct["destination"] then M.AssertExportDestinationBucket(struct["destination"]) end
	if struct["logGroupName"] then M.AssertLogGroupName(struct["logGroupName"]) end
	if struct["to"] then M.AssertTimestamp(struct["to"]) end
	if struct["taskId"] then M.AssertExportTaskId(struct["taskId"]) end
	if struct["taskName"] then M.AssertExportTaskName(struct["taskName"]) end
	if struct["executionInfo"] then M.AssertExportTaskExecutionInfo(struct["executionInfo"]) end
	for k,_ in pairs(struct) do
		assert(ExportTask_keys[k], "ExportTask contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportTask
-- <p>Represents an export task.</p>
-- @param status [ExportTaskStatus] <p>The status of the export task.</p>
-- @param from [Timestamp] <p>The start time, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC. Events with a timestamp prior to this time are not exported.</p>
-- @param destinationPrefix [ExportDestinationPrefix] <p>The prefix that was used as the start of Amazon S3 key for every object exported.</p>
-- @param destination [ExportDestinationBucket] <p>The name of Amazon S3 bucket to which the log data was exported.</p>
-- @param logGroupName [LogGroupName] <p>The name of the log group from which logs data was exported.</p>
-- @param to [Timestamp] <p>The end time, expressed as the number of milliseconds since Jan 1, 1970 00:00:00 UTC. Events with a timestamp later than this time are not exported.</p>
-- @param taskId [ExportTaskId] <p>The ID of the export task.</p>
-- @param taskName [ExportTaskName] <p>The name of the export task.</p>
-- @param executionInfo [ExportTaskExecutionInfo] <p>Execution info about the export task.</p>
function M.ExportTask(status, from, destinationPrefix, destination, logGroupName, to, taskId, taskName, executionInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ExportTask")
	local t = { 
		["status"] = status,
		["from"] = from,
		["destinationPrefix"] = destinationPrefix,
		["destination"] = destination,
		["logGroupName"] = logGroupName,
		["to"] = to,
		["taskId"] = taskId,
		["taskName"] = taskName,
		["executionInfo"] = executionInfo,
	}
	M.AssertExportTask(t)
	return t
end

function M.AssertTagKey(str)
	assert(str)
	assert(type(str) == "string", "Expected TagKey to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-@]+)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-@]+)$'")
end

--  
function M.TagKey(str)
	M.AssertTagKey(str)
	return str
end

function M.AssertValue(str)
	assert(str)
	assert(type(str) == "string", "Expected Value to be of type 'string'")
end

--  
function M.Value(str)
	M.AssertValue(str)
	return str
end

function M.AssertToken(str)
	assert(str)
	assert(type(str) == "string", "Expected Token to be of type 'string'")
end

--  
function M.Token(str)
	M.AssertToken(str)
	return str
end

function M.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
end

--  
function M.Arn(str)
	M.AssertArn(str)
	return str
end

function M.AssertLogStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected LogStreamName to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[^:*]*"), "Expected string to match pattern '[^:*]*'")
end

--  
function M.LogStreamName(str)
	M.AssertLogStreamName(str)
	return str
end

function M.AssertEventMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected EventMessage to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EventMessage(str)
	M.AssertEventMessage(str)
	return str
end

function M.AssertExportDestinationPrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportDestinationPrefix to be of type 'string'")
end

--  
function M.ExportDestinationPrefix(str)
	M.AssertExportDestinationPrefix(str)
	return str
end

function M.AssertFilterPattern(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterPattern to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

-- <p>A symbolic description of how CloudWatch Logs should interpret the data in each log event. For example, a log event may contain timestamps, IP addresses, strings, and so on. You use the filter pattern to specify what to look for in the log event message.</p>
function M.FilterPattern(str)
	M.AssertFilterPattern(str)
	return str
end

function M.AssertExportDestinationBucket(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportDestinationBucket to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ExportDestinationBucket(str)
	M.AssertExportDestinationBucket(str)
	return str
end

function M.AssertDestinationName(str)
	assert(str)
	assert(type(str) == "string", "Expected DestinationName to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[^:*]*"), "Expected string to match pattern '[^:*]*'")
end

--  
function M.DestinationName(str)
	M.AssertDestinationName(str)
	return str
end

function M.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(str:match("^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$"), "Expected string to match pattern '^([%p{L}%p{Z}%p{N}_.:/=+%-@]*)$'")
end

--  
function M.TagValue(str)
	M.AssertTagValue(str)
	return str
end

function M.AssertDistribution(str)
	assert(str)
	assert(type(str) == "string", "Expected Distribution to be of type 'string'")
end

--  
function M.Distribution(str)
	M.AssertDistribution(str)
	return str
end

function M.AssertDestinationArn(str)
	assert(str)
	assert(type(str) == "string", "Expected DestinationArn to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DestinationArn(str)
	M.AssertDestinationArn(str)
	return str
end

function M.AssertMetricValue(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricValue to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
end

-- <p>The value to publish to the CloudWatch metric. For example, if you're counting the occurrences of a term like "Error", the value is "1" for each occurrence. If you're counting the bytes transferred, the value is the value in the log event.</p>
function M.MetricValue(str)
	M.AssertMetricValue(str)
	return str
end

function M.AssertTargetArn(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetArn to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TargetArn(str)
	M.AssertTargetArn(str)
	return str
end

function M.AssertExportTaskStatusMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportTaskStatusMessage to be of type 'string'")
end

--  
function M.ExportTaskStatusMessage(str)
	M.AssertExportTaskStatusMessage(str)
	return str
end

function M.AssertExportTaskStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportTaskStatusCode to be of type 'string'")
end

--  
function M.ExportTaskStatusCode(str)
	M.AssertExportTaskStatusCode(str)
	return str
end

function M.AssertAccessPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessPolicy to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AccessPolicy(str)
	M.AssertAccessPolicy(str)
	return str
end

function M.AssertMetricName(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(str:match("[^:*$]*"), "Expected string to match pattern '[^:*$]*'")
end

-- <p>The name of the CloudWatch metric to which the monitored log information should be published. For example, you may publish to a metric called ErrorCount.</p>
function M.MetricName(str)
	M.AssertMetricName(str)
	return str
end

function M.AssertExportTaskName(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportTaskName to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ExportTaskName(str)
	M.AssertExportTaskName(str)
	return str
end

function M.AssertFilterName(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterName to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[^:*]*"), "Expected string to match pattern '[^:*]*'")
end

--  
function M.FilterName(str)
	M.AssertFilterName(str)
	return str
end

function M.AssertRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleArn to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RoleArn(str)
	M.AssertRoleArn(str)
	return str
end

function M.AssertLogGroupName(str)
	assert(str)
	assert(type(str) == "string", "Expected LogGroupName to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[%.%-_/#A-Za-z0-9]+"), "Expected string to match pattern '[%.%-_/#A-Za-z0-9]+'")
end

--  
function M.LogGroupName(str)
	M.AssertLogGroupName(str)
	return str
end

function M.AssertOrderBy(str)
	assert(str)
	assert(type(str) == "string", "Expected OrderBy to be of type 'string'")
end

--  
function M.OrderBy(str)
	M.AssertOrderBy(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>The token for the next set of items to return. The token expires after 24 hours.</p>
function M.NextToken(str)
	M.AssertNextToken(str)
	return str
end

function M.AssertSequenceToken(str)
	assert(str)
	assert(type(str) == "string", "Expected SequenceToken to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SequenceToken(str)
	M.AssertSequenceToken(str)
	return str
end

function M.AssertMetricNamespace(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricNamespace to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(str:match("[^:*$]*"), "Expected string to match pattern '[^:*$]*'")
end

--  
function M.MetricNamespace(str)
	M.AssertMetricNamespace(str)
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

function M.AssertExportTaskId(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportTaskId to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ExportTaskId(str)
	M.AssertExportTaskId(str)
	return str
end

function M.AssertDefaultValue(double)
	assert(double)
	assert(type(double) == "number", "Expected DefaultValue to be of type 'number'")
end

function M.DefaultValue(double)
	M.AssertDefaultValue(double)
	return double
end

function M.AssertStoredBytes(long)
	assert(long)
	assert(type(long) == "number", "Expected StoredBytes to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.StoredBytes(long)
	M.AssertStoredBytes(long)
	return long
end

function M.AssertTimestamp(long)
	assert(long)
	assert(type(long) == "number", "Expected Timestamp to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Timestamp(long)
	M.AssertTimestamp(long)
	return long
end

function M.AssertEventNumber(long)
	assert(long)
	assert(type(long) == "number", "Expected EventNumber to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.EventNumber(long)
	M.AssertEventNumber(long)
	return long
end

function M.AssertDays(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Days to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Days(integer)
	M.AssertDays(integer)
	return integer
end

function M.AssertFilterCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected FilterCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.FilterCount(integer)
	M.AssertFilterCount(integer)
	return integer
end

function M.AssertEventsLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected EventsLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.EventsLimit(integer)
	M.AssertEventsLimit(integer)
	return integer
end

function M.AssertDescribeLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected DescribeLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.DescribeLimit(integer)
	M.AssertDescribeLimit(integer)
	return integer
end

function M.AssertLogEventIndex(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected LogEventIndex to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.LogEventIndex(integer)
	M.AssertLogEventIndex(integer)
	return integer
end

function M.AssertLogStreamSearchedCompletely(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected LogStreamSearchedCompletely to be of type 'boolean'")
end

function M.LogStreamSearchedCompletely(boolean)
	M.AssertLogStreamSearchedCompletely(boolean)
	return boolean
end

function M.AssertInterleaved(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Interleaved to be of type 'boolean'")
end

function M.Interleaved(boolean)
	M.AssertInterleaved(boolean)
	return boolean
end

function M.AssertDescending(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Descending to be of type 'boolean'")
end

function M.Descending(boolean)
	M.AssertDescending(boolean)
	return boolean
end

function M.AssertStartFromHead(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected StartFromHead to be of type 'boolean'")
end

function M.StartFromHead(boolean)
	M.AssertStartFromHead(boolean)
	return boolean
end

function M.AssertExtractedValues(map)
	assert(map)
	assert(type(map) == "table", "Expected ExtractedValues to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertToken(k)
		M.AssertValue(v)
	end
end

function M.ExtractedValues(map)
	M.AssertExtractedValues(map)
	return map
end

function M.AssertTags(map)
	assert(map)
	assert(type(map) == "table", "Expected Tags to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertTagKey(k)
		M.AssertTagValue(v)
	end
end

function M.Tags(map)
	M.AssertTags(map)
	return map
end

function M.AssertSubscriptionFilters(list)
	assert(list)
	assert(type(list) == "table", "Expected SubscriptionFilters to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSubscriptionFilter(v)
	end
end

--  
-- List of SubscriptionFilter objects
function M.SubscriptionFilters(list)
	M.AssertSubscriptionFilters(list)
	return list
end

function M.AssertTestEventMessages(list)
	assert(list)
	assert(type(list) == "table", "Expected TestEventMessages to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertEventMessage(v)
	end
end

--  
-- List of EventMessage objects
function M.TestEventMessages(list)
	M.AssertTestEventMessages(list)
	return list
end

function M.AssertMetricFilterMatches(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricFilterMatches to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMetricFilterMatchRecord(v)
	end
end

--  
-- List of MetricFilterMatchRecord objects
function M.MetricFilterMatches(list)
	M.AssertMetricFilterMatches(list)
	return list
end

function M.AssertExportTasks(list)
	assert(list)
	assert(type(list) == "table", "Expected ExportTasks to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertExportTask(v)
	end
end

--  
-- List of ExportTask objects
function M.ExportTasks(list)
	M.AssertExportTasks(list)
	return list
end

function M.AssertLogStreams(list)
	assert(list)
	assert(type(list) == "table", "Expected LogStreams to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLogStream(v)
	end
end

--  
-- List of LogStream objects
function M.LogStreams(list)
	M.AssertLogStreams(list)
	return list
end

function M.AssertLogGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected LogGroups to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLogGroup(v)
	end
end

--  
-- List of LogGroup objects
function M.LogGroups(list)
	M.AssertLogGroups(list)
	return list
end

function M.AssertDestinations(list)
	assert(list)
	assert(type(list) == "table", "Expected Destinations to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDestination(v)
	end
end

--  
-- List of Destination objects
function M.Destinations(list)
	M.AssertDestinations(list)
	return list
end

function M.AssertSearchedLogStreams(list)
	assert(list)
	assert(type(list) == "table", "Expected SearchedLogStreams to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSearchedLogStream(v)
	end
end

--  
-- List of SearchedLogStream objects
function M.SearchedLogStreams(list)
	M.AssertSearchedLogStreams(list)
	return list
end

function M.AssertMetricFilters(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricFilters to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertMetricFilter(v)
	end
end

--  
-- List of MetricFilter objects
function M.MetricFilters(list)
	M.AssertMetricFilters(list)
	return list
end

function M.AssertFilteredLogEvents(list)
	assert(list)
	assert(type(list) == "table", "Expected FilteredLogEvents to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertFilteredLogEvent(v)
	end
end

--  
-- List of FilteredLogEvent objects
function M.FilteredLogEvents(list)
	M.AssertFilteredLogEvents(list)
	return list
end

function M.AssertInputLogEvents(list)
	assert(list)
	assert(type(list) == "table", "Expected InputLogEvents to be of type ''table")
	assert(#list <= 10000, "Expected list to be contain 10000 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertInputLogEvent(v)
	end
end

--  
-- List of InputLogEvent objects
function M.InputLogEvents(list)
	M.AssertInputLogEvents(list)
	return list
end

function M.AssertOutputLogEvents(list)
	assert(list)
	assert(type(list) == "table", "Expected OutputLogEvents to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertOutputLogEvent(v)
	end
end

--  
-- List of OutputLogEvent objects
function M.OutputLogEvents(list)
	M.AssertOutputLogEvents(list)
	return list
end

function M.AssertMetricTransformations(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricTransformations to be of type ''table")
	assert(#list <= 1, "Expected list to be contain 1 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertMetricTransformation(v)
	end
end

--  
-- List of MetricTransformation objects
function M.MetricTransformations(list)
	M.AssertMetricTransformations(list)
	return list
end

function M.AssertInputLogStreamNames(list)
	assert(list)
	assert(type(list) == "table", "Expected InputLogStreamNames to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertLogStreamName(v)
	end
end

--  
-- List of LogStreamName objects
function M.InputLogStreamNames(list)
	M.AssertInputLogStreamNames(list)
	return list
end

function M.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
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
			return "logs.amazonaws.com"
		end
	end
	local ss = { "logs" }
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
--- PutDestination
-- @param PutDestinationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutDestinationAsync(PutDestinationRequest, cb)
	assert(PutDestinationRequest, "You must provide a PutDestinationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.PutDestination",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutDestinationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteDestination
-- @param DeleteDestinationRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteDestinationAsync(DeleteDestinationRequest, cb)
	assert(DeleteDestinationRequest, "You must provide a DeleteDestinationRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.DeleteDestination",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteDestinationRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTagsLogGroup
-- @param ListTagsLogGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsLogGroupAsync(ListTagsLogGroupRequest, cb)
	assert(ListTagsLogGroupRequest, "You must provide a ListTagsLogGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.ListTagsLogGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTagsLogGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeLogStreams
-- @param DescribeLogStreamsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLogStreamsAsync(DescribeLogStreamsRequest, cb)
	assert(DescribeLogStreamsRequest, "You must provide a DescribeLogStreamsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.DescribeLogStreams",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeLogStreamsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateExportTask
-- @param CreateExportTaskRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateExportTaskAsync(CreateExportTaskRequest, cb)
	assert(CreateExportTaskRequest, "You must provide a CreateExportTaskRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.CreateExportTask",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateExportTaskRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TestMetricFilter
-- @param TestMetricFilterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TestMetricFilterAsync(TestMetricFilterRequest, cb)
	assert(TestMetricFilterRequest, "You must provide a TestMetricFilterRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.TestMetricFilter",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", TestMetricFilterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteLogGroup
-- @param DeleteLogGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteLogGroupAsync(DeleteLogGroupRequest, cb)
	assert(DeleteLogGroupRequest, "You must provide a DeleteLogGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.DeleteLogGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteLogGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeMetricFilters
-- @param DescribeMetricFiltersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeMetricFiltersAsync(DescribeMetricFiltersRequest, cb)
	assert(DescribeMetricFiltersRequest, "You must provide a DescribeMetricFiltersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.DescribeMetricFilters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeMetricFiltersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- FilterLogEvents
-- @param FilterLogEventsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.FilterLogEventsAsync(FilterLogEventsRequest, cb)
	assert(FilterLogEventsRequest, "You must provide a FilterLogEventsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.FilterLogEvents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", FilterLogEventsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateLogGroup
-- @param CreateLogGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateLogGroupAsync(CreateLogGroupRequest, cb)
	assert(CreateLogGroupRequest, "You must provide a CreateLogGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.CreateLogGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateLogGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteSubscriptionFilter
-- @param DeleteSubscriptionFilterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteSubscriptionFilterAsync(DeleteSubscriptionFilterRequest, cb)
	assert(DeleteSubscriptionFilterRequest, "You must provide a DeleteSubscriptionFilterRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.DeleteSubscriptionFilter",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteSubscriptionFilterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutMetricFilter
-- @param PutMetricFilterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutMetricFilterAsync(PutMetricFilterRequest, cb)
	assert(PutMetricFilterRequest, "You must provide a PutMetricFilterRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.PutMetricFilter",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutMetricFilterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutLogEvents
-- @param PutLogEventsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutLogEventsAsync(PutLogEventsRequest, cb)
	assert(PutLogEventsRequest, "You must provide a PutLogEventsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.PutLogEvents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutLogEventsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeLogGroups
-- @param DescribeLogGroupsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeLogGroupsAsync(DescribeLogGroupsRequest, cb)
	assert(DescribeLogGroupsRequest, "You must provide a DescribeLogGroupsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.DescribeLogGroups",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeLogGroupsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeDestinations
-- @param DescribeDestinationsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeDestinationsAsync(DescribeDestinationsRequest, cb)
	assert(DescribeDestinationsRequest, "You must provide a DescribeDestinationsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.DescribeDestinations",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeDestinationsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutRetentionPolicy
-- @param PutRetentionPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutRetentionPolicyAsync(PutRetentionPolicyRequest, cb)
	assert(PutRetentionPolicyRequest, "You must provide a PutRetentionPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.PutRetentionPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutRetentionPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeSubscriptionFilters
-- @param DescribeSubscriptionFiltersRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeSubscriptionFiltersAsync(DescribeSubscriptionFiltersRequest, cb)
	assert(DescribeSubscriptionFiltersRequest, "You must provide a DescribeSubscriptionFiltersRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.DescribeSubscriptionFilters",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeSubscriptionFiltersRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeExportTasks
-- @param DescribeExportTasksRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeExportTasksAsync(DescribeExportTasksRequest, cb)
	assert(DescribeExportTasksRequest, "You must provide a DescribeExportTasksRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.DescribeExportTasks",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeExportTasksRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- TagLogGroup
-- @param TagLogGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.TagLogGroupAsync(TagLogGroupRequest, cb)
	assert(TagLogGroupRequest, "You must provide a TagLogGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.TagLogGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", TagLogGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutSubscriptionFilter
-- @param PutSubscriptionFilterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutSubscriptionFilterAsync(PutSubscriptionFilterRequest, cb)
	assert(PutSubscriptionFilterRequest, "You must provide a PutSubscriptionFilterRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.PutSubscriptionFilter",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutSubscriptionFilterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteMetricFilter
-- @param DeleteMetricFilterRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteMetricFilterAsync(DeleteMetricFilterRequest, cb)
	assert(DeleteMetricFilterRequest, "You must provide a DeleteMetricFilterRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.DeleteMetricFilter",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteMetricFilterRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutDestinationPolicy
-- @param PutDestinationPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutDestinationPolicyAsync(PutDestinationPolicyRequest, cb)
	assert(PutDestinationPolicyRequest, "You must provide a PutDestinationPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.PutDestinationPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutDestinationPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateLogStream
-- @param CreateLogStreamRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateLogStreamAsync(CreateLogStreamRequest, cb)
	assert(CreateLogStreamRequest, "You must provide a CreateLogStreamRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.CreateLogStream",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateLogStreamRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CancelExportTask
-- @param CancelExportTaskRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CancelExportTaskAsync(CancelExportTaskRequest, cb)
	assert(CancelExportTaskRequest, "You must provide a CancelExportTaskRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.CancelExportTask",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CancelExportTaskRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UntagLogGroup
-- @param UntagLogGroupRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UntagLogGroupAsync(UntagLogGroupRequest, cb)
	assert(UntagLogGroupRequest, "You must provide a UntagLogGroupRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.UntagLogGroup",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UntagLogGroupRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteRetentionPolicy
-- @param DeleteRetentionPolicyRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteRetentionPolicyAsync(DeleteRetentionPolicyRequest, cb)
	assert(DeleteRetentionPolicyRequest, "You must provide a DeleteRetentionPolicyRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.DeleteRetentionPolicy",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteRetentionPolicyRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetLogEvents
-- @param GetLogEventsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetLogEventsAsync(GetLogEventsRequest, cb)
	assert(GetLogEventsRequest, "You must provide a GetLogEventsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.GetLogEvents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetLogEventsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteLogStream
-- @param DeleteLogStreamRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteLogStreamAsync(DeleteLogStreamRequest, cb)
	assert(DeleteLogStreamRequest, "You must provide a DeleteLogStreamRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "Logs_20140328.DeleteLogStream",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteLogStreamRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
