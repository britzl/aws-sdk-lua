--- GENERATED CODE - DO NOT MODIFY
-- AWS X-Ray (xray-2016-04-12)

local M = {}

M.metadata = {
	api_version = "2016-04-12",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "xray",
	service_abbreviation = "",
	service_full_name = "AWS X-Ray",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "xray-2016-04-12",
}

local InvalidRequestException_keys = { nil }

function M.AssertInvalidRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidRequestException_keys[k], "InvalidRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestException
-- &lt;p&gt;The request is missing required parameters or has invalid parameters.&lt;/p&gt;
function M.InvalidRequestException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRequestException")
	local t = { 
	}
	M.AssertInvalidRequestException(t)
	return t
end

local AnnotationValue_keys = { "NumberValue" = true, "BooleanValue" = true, "StringValue" = true, nil }

function M.AssertAnnotationValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AnnotationValue to be of type 'table'")
	if struct["NumberValue"] then M.AssertNullableDouble(struct["NumberValue"]) end
	if struct["BooleanValue"] then M.AssertNullableBoolean(struct["BooleanValue"]) end
	if struct["StringValue"] then M.AssertString(struct["StringValue"]) end
	for k,_ in pairs(struct) do
		assert(AnnotationValue_keys[k], "AnnotationValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AnnotationValue
-- &lt;p&gt;Value of a segment annotation. Has one of three value types: Number, Boolean or String.&lt;/p&gt;
-- @param NumberValue [NullableDouble] &lt;p&gt;Value for a Number annotation.&lt;/p&gt;
-- @param BooleanValue [NullableBoolean] &lt;p&gt;Value for a Boolean annotation.&lt;/p&gt;
-- @param StringValue [String] &lt;p&gt;Value for a String annotation.&lt;/p&gt;
function M.AnnotationValue(NumberValue, BooleanValue, StringValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AnnotationValue")
	local t = { 
		["NumberValue"] = NumberValue,
		["BooleanValue"] = BooleanValue,
		["StringValue"] = StringValue,
	}
	M.AssertAnnotationValue(t)
	return t
end

local FaultStatistics_keys = { "OtherCount" = true, "TotalCount" = true, nil }

function M.AssertFaultStatistics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FaultStatistics to be of type 'table'")
	if struct["OtherCount"] then M.AssertNullableLong(struct["OtherCount"]) end
	if struct["TotalCount"] then M.AssertNullableLong(struct["TotalCount"]) end
	for k,_ in pairs(struct) do
		assert(FaultStatistics_keys[k], "FaultStatistics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FaultStatistics
-- &lt;p&gt;Information about requests that failed with a 5xx Server Error status code.&lt;/p&gt;
-- @param OtherCount [NullableLong] &lt;p&gt;The number of requests that failed with untracked 5xx Server Error status codes.&lt;/p&gt;
-- @param TotalCount [NullableLong] &lt;p&gt;The total number of requests that failed with a 5xx Server Error status code.&lt;/p&gt;
function M.FaultStatistics(OtherCount, TotalCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FaultStatistics")
	local t = { 
		["OtherCount"] = OtherCount,
		["TotalCount"] = TotalCount,
	}
	M.AssertFaultStatistics(t)
	return t
end

local TraceUser_keys = { "UserName" = true, "ServiceIds" = true, nil }

function M.AssertTraceUser(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TraceUser to be of type 'table'")
	if struct["UserName"] then M.AssertString(struct["UserName"]) end
	if struct["ServiceIds"] then M.AssertServiceIds(struct["ServiceIds"]) end
	for k,_ in pairs(struct) do
		assert(TraceUser_keys[k], "TraceUser contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TraceUser
-- &lt;p&gt;Information about a user recorded in segment documents.&lt;/p&gt;
-- @param UserName [String] &lt;p&gt;The user's name.&lt;/p&gt;
-- @param ServiceIds [ServiceIds] &lt;p&gt;Services that the user's request hit.&lt;/p&gt;
function M.TraceUser(UserName, ServiceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TraceUser")
	local t = { 
		["UserName"] = UserName,
		["ServiceIds"] = ServiceIds,
	}
	M.AssertTraceUser(t)
	return t
end

local GetTraceSummariesRequest_keys = { "FilterExpression" = true, "EndTime" = true, "NextToken" = true, "StartTime" = true, "Sampling" = true, nil }

function M.AssertGetTraceSummariesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTraceSummariesRequest to be of type 'table'")
	assert(struct["StartTime"], "Expected key StartTime to exist in table")
	assert(struct["EndTime"], "Expected key EndTime to exist in table")
	if struct["FilterExpression"] then M.AssertFilterExpression(struct["FilterExpression"]) end
	if struct["EndTime"] then M.AssertTimestamp(struct["EndTime"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["StartTime"] then M.AssertTimestamp(struct["StartTime"]) end
	if struct["Sampling"] then M.AssertNullableBoolean(struct["Sampling"]) end
	for k,_ in pairs(struct) do
		assert(GetTraceSummariesRequest_keys[k], "GetTraceSummariesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTraceSummariesRequest
--  
-- @param FilterExpression [FilterExpression] &lt;p&gt;Specify a filter expression to retrieve trace summaries for services or requests that meet certain requirements.&lt;/p&gt;
-- @param EndTime [Timestamp] &lt;p&gt;The end of the time frame for which to retrieve traces.&lt;/p&gt;
-- @param NextToken [String] &lt;p&gt;Specify the pagination token returned by a previous request to retrieve the next page of results.&lt;/p&gt;
-- @param StartTime [Timestamp] &lt;p&gt;The start of the time frame for which to retrieve traces.&lt;/p&gt;
-- @param Sampling [NullableBoolean] &lt;p&gt;Set to &lt;code&gt;true&lt;/code&gt; to get summaries for only a subset of available traces.&lt;/p&gt;
-- Required parameter: StartTime
-- Required parameter: EndTime
function M.GetTraceSummariesRequest(FilterExpression, EndTime, NextToken, StartTime, Sampling, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTraceSummariesRequest")
	local t = { 
		["FilterExpression"] = FilterExpression,
		["EndTime"] = EndTime,
		["NextToken"] = NextToken,
		["StartTime"] = StartTime,
		["Sampling"] = Sampling,
	}
	M.AssertGetTraceSummariesRequest(t)
	return t
end

local Service_keys = { "SummaryStatistics" = true, "ReferenceId" = true, "Name" = true, "DurationHistogram" = true, "Root" = true, "ResponseTimeHistogram" = true, "State" = true, "Edges" = true, "Names" = true, "StartTime" = true, "EndTime" = true, "Type" = true, "AccountId" = true, nil }

function M.AssertService(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Service to be of type 'table'")
	if struct["SummaryStatistics"] then M.AssertServiceStatistics(struct["SummaryStatistics"]) end
	if struct["ReferenceId"] then M.AssertNullableInteger(struct["ReferenceId"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["DurationHistogram"] then M.AssertHistogram(struct["DurationHistogram"]) end
	if struct["Root"] then M.AssertNullableBoolean(struct["Root"]) end
	if struct["ResponseTimeHistogram"] then M.AssertHistogram(struct["ResponseTimeHistogram"]) end
	if struct["State"] then M.AssertString(struct["State"]) end
	if struct["Edges"] then M.AssertEdgeList(struct["Edges"]) end
	if struct["Names"] then M.AssertServiceNames(struct["Names"]) end
	if struct["StartTime"] then M.AssertTimestamp(struct["StartTime"]) end
	if struct["EndTime"] then M.AssertTimestamp(struct["EndTime"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	if struct["AccountId"] then M.AssertString(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(Service_keys[k], "Service contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Service
-- &lt;p&gt;Information about an application that processed requests, users that made requests, or downstream services, resources and applications that an application used.&lt;/p&gt;
-- @param SummaryStatistics [ServiceStatistics] &lt;p&gt;Aggregated statistics for the service.&lt;/p&gt;
-- @param ReferenceId [NullableInteger] &lt;p&gt;Identifier for the service. Unique within the service map.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The canonical name of the service.&lt;/p&gt;
-- @param DurationHistogram [Histogram] &lt;p&gt;A histogram that maps the spread of service durations.&lt;/p&gt;
-- @param Root [NullableBoolean] &lt;p&gt;Indicates that the service was the first service to process a request.&lt;/p&gt;
-- @param ResponseTimeHistogram [Histogram] &lt;p&gt;A histogram that maps the spread of service response times.&lt;/p&gt;
-- @param State [String] &lt;p&gt;The service's state.&lt;/p&gt;
-- @param Edges [EdgeList] &lt;p&gt;Connections to downstream services.&lt;/p&gt;
-- @param Names [ServiceNames] &lt;p&gt;A list of names for the service, including the canonical name.&lt;/p&gt;
-- @param StartTime [Timestamp] &lt;p&gt;The start time of the first segment that the service generated.&lt;/p&gt;
-- @param EndTime [Timestamp] &lt;p&gt;The end time of the last segment that the service generated.&lt;/p&gt;
-- @param Type [String] &lt;p&gt;The type of service.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;AWS Resource - The type of an AWS resource. For example, &lt;code&gt;AWS::EC2::Instance&lt;/code&gt; for a application running on Amazon EC2 or &lt;code&gt;AWS::DynamoDB::Table&lt;/code&gt; for an Amazon DynamoDB table that the application used.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;AWS Service - The type of an AWS service. For example, &lt;code&gt;AWS::DynamoDB&lt;/code&gt; for downstream calls to Amazon DynamoDB that didn't target a specific table.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;client&lt;/code&gt; - Represents the clients that sent requests to a root service.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;code&gt;remote&lt;/code&gt; - A downstream service of indeterminate type.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param AccountId [String] &lt;p&gt;Identifier of the AWS account in which the service runs.&lt;/p&gt;
function M.Service(SummaryStatistics, ReferenceId, Name, DurationHistogram, Root, ResponseTimeHistogram, State, Edges, Names, StartTime, EndTime, Type, AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Service")
	local t = { 
		["SummaryStatistics"] = SummaryStatistics,
		["ReferenceId"] = ReferenceId,
		["Name"] = Name,
		["DurationHistogram"] = DurationHistogram,
		["Root"] = Root,
		["ResponseTimeHistogram"] = ResponseTimeHistogram,
		["State"] = State,
		["Edges"] = Edges,
		["Names"] = Names,
		["StartTime"] = StartTime,
		["EndTime"] = EndTime,
		["Type"] = Type,
		["AccountId"] = AccountId,
	}
	M.AssertService(t)
	return t
end

local GetServiceGraphResult_keys = { "Services" = true, "EndTime" = true, "NextToken" = true, "StartTime" = true, nil }

function M.AssertGetServiceGraphResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetServiceGraphResult to be of type 'table'")
	if struct["Services"] then M.AssertServiceList(struct["Services"]) end
	if struct["EndTime"] then M.AssertTimestamp(struct["EndTime"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["StartTime"] then M.AssertTimestamp(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(GetServiceGraphResult_keys[k], "GetServiceGraphResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetServiceGraphResult
--  
-- @param Services [ServiceList] &lt;p&gt;The services that have processed a traced request during the specified time frame.&lt;/p&gt;
-- @param EndTime [Timestamp] &lt;p&gt;The end of the time frame for which the graph was generated.&lt;/p&gt;
-- @param NextToken [String] &lt;p&gt;Pagination token. Not used.&lt;/p&gt;
-- @param StartTime [Timestamp] &lt;p&gt;The start of the time frame for which the graph was generated.&lt;/p&gt;
function M.GetServiceGraphResult(Services, EndTime, NextToken, StartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetServiceGraphResult")
	local t = { 
		["Services"] = Services,
		["EndTime"] = EndTime,
		["NextToken"] = NextToken,
		["StartTime"] = StartTime,
	}
	M.AssertGetServiceGraphResult(t)
	return t
end

local GetServiceGraphRequest_keys = { "EndTime" = true, "NextToken" = true, "StartTime" = true, nil }

function M.AssertGetServiceGraphRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetServiceGraphRequest to be of type 'table'")
	assert(struct["StartTime"], "Expected key StartTime to exist in table")
	assert(struct["EndTime"], "Expected key EndTime to exist in table")
	if struct["EndTime"] then M.AssertTimestamp(struct["EndTime"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["StartTime"] then M.AssertTimestamp(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(GetServiceGraphRequest_keys[k], "GetServiceGraphRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetServiceGraphRequest
--  
-- @param EndTime [Timestamp] &lt;p&gt;The end of the time frame for which to generate a graph.&lt;/p&gt;
-- @param NextToken [String] &lt;p&gt;Pagination token. Not used.&lt;/p&gt;
-- @param StartTime [Timestamp] &lt;p&gt;The start of the time frame for which to generate a graph.&lt;/p&gt;
-- Required parameter: StartTime
-- Required parameter: EndTime
function M.GetServiceGraphRequest(EndTime, NextToken, StartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetServiceGraphRequest")
	local t = { 
		["EndTime"] = EndTime,
		["NextToken"] = NextToken,
		["StartTime"] = StartTime,
	}
	M.AssertGetServiceGraphRequest(t)
	return t
end

local ThrottledException_keys = { nil }

function M.AssertThrottledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottledException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ThrottledException_keys[k], "ThrottledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottledException
-- &lt;p&gt;The request exceeds the maximum number of requests per second.&lt;/p&gt;
function M.ThrottledException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThrottledException")
	local t = { 
	}
	M.AssertThrottledException(t)
	return t
end

local HistogramEntry_keys = { "Count" = true, "Value" = true, nil }

function M.AssertHistogramEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HistogramEntry to be of type 'table'")
	if struct["Count"] then M.AssertInteger(struct["Count"]) end
	if struct["Value"] then M.AssertDouble(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(HistogramEntry_keys[k], "HistogramEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HistogramEntry
-- &lt;p&gt;An entry in a histogram for a statistic. A histogram maps the range of observed values on the X axis, and the prevalence of each value on the Y axis.&lt;/p&gt;
-- @param Count [Integer] &lt;p&gt;The prevalence of the entry.&lt;/p&gt;
-- @param Value [Double] &lt;p&gt;The value of the entry.&lt;/p&gt;
function M.HistogramEntry(Count, Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HistogramEntry")
	local t = { 
		["Count"] = Count,
		["Value"] = Value,
	}
	M.AssertHistogramEntry(t)
	return t
end

local GetTraceSummariesResult_keys = { "TraceSummaries" = true, "NextToken" = true, "ApproximateTime" = true, "TracesProcessedCount" = true, nil }

function M.AssertGetTraceSummariesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTraceSummariesResult to be of type 'table'")
	if struct["TraceSummaries"] then M.AssertTraceSummaryList(struct["TraceSummaries"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["ApproximateTime"] then M.AssertTimestamp(struct["ApproximateTime"]) end
	if struct["TracesProcessedCount"] then M.AssertNullableLong(struct["TracesProcessedCount"]) end
	for k,_ in pairs(struct) do
		assert(GetTraceSummariesResult_keys[k], "GetTraceSummariesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTraceSummariesResult
--  
-- @param TraceSummaries [TraceSummaryList] &lt;p&gt;Trace IDs and metadata for traces that were found in the specified time frame.&lt;/p&gt;
-- @param NextToken [String] &lt;p&gt;If the requested time frame contained more than one page of results, you can use this token to retrieve the next page. The first page contains the most most recent results, closest to the end of the time frame.&lt;/p&gt;
-- @param ApproximateTime [Timestamp] &lt;p&gt;The start time of this page of results.&lt;/p&gt;
-- @param TracesProcessedCount [NullableLong] &lt;p&gt;The number of traces that were processed to get this set of summaries.&lt;/p&gt;
function M.GetTraceSummariesResult(TraceSummaries, NextToken, ApproximateTime, TracesProcessedCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTraceSummariesResult")
	local t = { 
		["TraceSummaries"] = TraceSummaries,
		["NextToken"] = NextToken,
		["ApproximateTime"] = ApproximateTime,
		["TracesProcessedCount"] = TracesProcessedCount,
	}
	M.AssertGetTraceSummariesResult(t)
	return t
end

local Http_keys = { "HttpStatus" = true, "ClientIp" = true, "HttpURL" = true, "UserAgent" = true, "HttpMethod" = true, nil }

function M.AssertHttp(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Http to be of type 'table'")
	if struct["HttpStatus"] then M.AssertNullableInteger(struct["HttpStatus"]) end
	if struct["ClientIp"] then M.AssertString(struct["ClientIp"]) end
	if struct["HttpURL"] then M.AssertString(struct["HttpURL"]) end
	if struct["UserAgent"] then M.AssertString(struct["UserAgent"]) end
	if struct["HttpMethod"] then M.AssertString(struct["HttpMethod"]) end
	for k,_ in pairs(struct) do
		assert(Http_keys[k], "Http contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Http
-- &lt;p&gt;Information about an HTTP request.&lt;/p&gt;
-- @param HttpStatus [NullableInteger] &lt;p&gt;The response status.&lt;/p&gt;
-- @param ClientIp [String] &lt;p&gt;The IP address of the requestor.&lt;/p&gt;
-- @param HttpURL [String] &lt;p&gt;The request URL.&lt;/p&gt;
-- @param UserAgent [String] &lt;p&gt;The request's user agent string.&lt;/p&gt;
-- @param HttpMethod [String] &lt;p&gt;The request method.&lt;/p&gt;
function M.Http(HttpStatus, ClientIp, HttpURL, UserAgent, HttpMethod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Http")
	local t = { 
		["HttpStatus"] = HttpStatus,
		["ClientIp"] = ClientIp,
		["HttpURL"] = HttpURL,
		["UserAgent"] = UserAgent,
		["HttpMethod"] = HttpMethod,
	}
	M.AssertHttp(t)
	return t
end

local Trace_keys = { "Duration" = true, "Segments" = true, "Id" = true, nil }

function M.AssertTrace(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Trace to be of type 'table'")
	if struct["Duration"] then M.AssertNullableDouble(struct["Duration"]) end
	if struct["Segments"] then M.AssertSegmentList(struct["Segments"]) end
	if struct["Id"] then M.AssertTraceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(Trace_keys[k], "Trace contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Trace
-- &lt;p&gt;A collection of segment documents with matching trace IDs.&lt;/p&gt;
-- @param Duration [NullableDouble] &lt;p&gt;The length of time in seconds between the start time of the root segment and the end time of the last segment that completed.&lt;/p&gt;
-- @param Segments [SegmentList] &lt;p&gt;Segment documents for the segments and subsegments that comprise the trace.&lt;/p&gt;
-- @param Id [TraceId] &lt;p&gt;The unique identifier for the request that generated the trace's segments and subsegments.&lt;/p&gt;
function M.Trace(Duration, Segments, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Trace")
	local t = { 
		["Duration"] = Duration,
		["Segments"] = Segments,
		["Id"] = Id,
	}
	M.AssertTrace(t)
	return t
end

local PutTelemetryRecordsRequest_keys = { "ResourceARN" = true, "Hostname" = true, "TelemetryRecords" = true, "EC2InstanceId" = true, nil }

function M.AssertPutTelemetryRecordsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutTelemetryRecordsRequest to be of type 'table'")
	assert(struct["TelemetryRecords"], "Expected key TelemetryRecords to exist in table")
	if struct["ResourceARN"] then M.AssertString(struct["ResourceARN"]) end
	if struct["Hostname"] then M.AssertString(struct["Hostname"]) end
	if struct["TelemetryRecords"] then M.AssertTelemetryRecordList(struct["TelemetryRecords"]) end
	if struct["EC2InstanceId"] then M.AssertString(struct["EC2InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(PutTelemetryRecordsRequest_keys[k], "PutTelemetryRecordsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutTelemetryRecordsRequest
--  
-- @param ResourceARN [String] &lt;p/&gt;
-- @param Hostname [String] &lt;p/&gt;
-- @param TelemetryRecords [TelemetryRecordList] &lt;p/&gt;
-- @param EC2InstanceId [String] &lt;p/&gt;
-- Required parameter: TelemetryRecords
function M.PutTelemetryRecordsRequest(ResourceARN, Hostname, TelemetryRecords, EC2InstanceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutTelemetryRecordsRequest")
	local t = { 
		["ResourceARN"] = ResourceARN,
		["Hostname"] = Hostname,
		["TelemetryRecords"] = TelemetryRecords,
		["EC2InstanceId"] = EC2InstanceId,
	}
	M.AssertPutTelemetryRecordsRequest(t)
	return t
end

local BatchGetTracesRequest_keys = { "NextToken" = true, "TraceIds" = true, nil }

function M.AssertBatchGetTracesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetTracesRequest to be of type 'table'")
	assert(struct["TraceIds"], "Expected key TraceIds to exist in table")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["TraceIds"] then M.AssertTraceIdList(struct["TraceIds"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetTracesRequest_keys[k], "BatchGetTracesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetTracesRequest
--  
-- @param NextToken [String] &lt;p&gt;Pagination token. Not used.&lt;/p&gt;
-- @param TraceIds [TraceIdList] &lt;p&gt;Specify the trace IDs of requests for which to retrieve segments.&lt;/p&gt;
-- Required parameter: TraceIds
function M.BatchGetTracesRequest(NextToken, TraceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetTracesRequest")
	local t = { 
		["NextToken"] = NextToken,
		["TraceIds"] = TraceIds,
	}
	M.AssertBatchGetTracesRequest(t)
	return t
end

local ErrorStatistics_keys = { "OtherCount" = true, "ThrottleCount" = true, "TotalCount" = true, nil }

function M.AssertErrorStatistics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ErrorStatistics to be of type 'table'")
	if struct["OtherCount"] then M.AssertNullableLong(struct["OtherCount"]) end
	if struct["ThrottleCount"] then M.AssertNullableLong(struct["ThrottleCount"]) end
	if struct["TotalCount"] then M.AssertNullableLong(struct["TotalCount"]) end
	for k,_ in pairs(struct) do
		assert(ErrorStatistics_keys[k], "ErrorStatistics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ErrorStatistics
-- &lt;p&gt;Information about requests that failed with a 4xx Client Error status code.&lt;/p&gt;
-- @param OtherCount [NullableLong] &lt;p&gt;The number of requests that failed with untracked 4xx Client Error status codes.&lt;/p&gt;
-- @param ThrottleCount [NullableLong] &lt;p&gt;The number of requests that failed with a 419 throttling status code.&lt;/p&gt;
-- @param TotalCount [NullableLong] &lt;p&gt;The total number of requests that failed with a 4xx Client Error status code.&lt;/p&gt;
function M.ErrorStatistics(OtherCount, ThrottleCount, TotalCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ErrorStatistics")
	local t = { 
		["OtherCount"] = OtherCount,
		["ThrottleCount"] = ThrottleCount,
		["TotalCount"] = TotalCount,
	}
	M.AssertErrorStatistics(t)
	return t
end

local ValueWithServiceIds_keys = { "AnnotationValue" = true, "ServiceIds" = true, nil }

function M.AssertValueWithServiceIds(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValueWithServiceIds to be of type 'table'")
	if struct["AnnotationValue"] then M.AssertAnnotationValue(struct["AnnotationValue"]) end
	if struct["ServiceIds"] then M.AssertServiceIds(struct["ServiceIds"]) end
	for k,_ in pairs(struct) do
		assert(ValueWithServiceIds_keys[k], "ValueWithServiceIds contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValueWithServiceIds
-- &lt;p&gt;Information about a segment annotation.&lt;/p&gt;
-- @param AnnotationValue [AnnotationValue] &lt;p&gt;Values of the annotation.&lt;/p&gt;
-- @param ServiceIds [ServiceIds] &lt;p&gt;Services to which the annotation applies.&lt;/p&gt;
function M.ValueWithServiceIds(AnnotationValue, ServiceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValueWithServiceIds")
	local t = { 
		["AnnotationValue"] = AnnotationValue,
		["ServiceIds"] = ServiceIds,
	}
	M.AssertValueWithServiceIds(t)
	return t
end

local Segment_keys = { "Document" = true, "Id" = true, nil }

function M.AssertSegment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Segment to be of type 'table'")
	if struct["Document"] then M.AssertSegmentDocument(struct["Document"]) end
	if struct["Id"] then M.AssertSegmentId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(Segment_keys[k], "Segment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Segment
-- &lt;p&gt;A segment from a trace that has been ingested by the X-Ray service. The segment can be compiled from documents uploaded with &lt;a&gt;PutTraceSegments&lt;/a&gt;, or an &lt;code&gt;inferred&lt;/code&gt; segment for a downstream service, generated from a subsegment sent by the service that called it.&lt;/p&gt;
-- @param Document [SegmentDocument] &lt;p&gt;The segment document&lt;/p&gt;
-- @param Id [SegmentId] &lt;p&gt;The segment's ID.&lt;/p&gt;
function M.Segment(Document, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Segment")
	local t = { 
		["Document"] = Document,
		["Id"] = Id,
	}
	M.AssertSegment(t)
	return t
end

local BatchGetTracesResult_keys = { "NextToken" = true, "Traces" = true, "UnprocessedTraceIds" = true, nil }

function M.AssertBatchGetTracesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetTracesResult to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["Traces"] then M.AssertTraceList(struct["Traces"]) end
	if struct["UnprocessedTraceIds"] then M.AssertUnprocessedTraceIdList(struct["UnprocessedTraceIds"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetTracesResult_keys[k], "BatchGetTracesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetTracesResult
--  
-- @param NextToken [String] &lt;p&gt;Pagination token. Not used.&lt;/p&gt;
-- @param Traces [TraceList] &lt;p&gt;Full traces for the specified requests.&lt;/p&gt;
-- @param UnprocessedTraceIds [UnprocessedTraceIdList] &lt;p&gt;Trace IDs of requests that haven't been processed.&lt;/p&gt;
function M.BatchGetTracesResult(NextToken, Traces, UnprocessedTraceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetTracesResult")
	local t = { 
		["NextToken"] = NextToken,
		["Traces"] = Traces,
		["UnprocessedTraceIds"] = UnprocessedTraceIds,
	}
	M.AssertBatchGetTracesResult(t)
	return t
end

local TraceSummary_keys = { "HasError" = true, "Http" = true, "Users" = true, "HasFault" = true, "Annotations" = true, "IsPartial" = true, "ResponseTime" = true, "ServiceIds" = true, "Duration" = true, "Id" = true, "HasThrottle" = true, nil }

function M.AssertTraceSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TraceSummary to be of type 'table'")
	if struct["HasError"] then M.AssertNullableBoolean(struct["HasError"]) end
	if struct["Http"] then M.AssertHttp(struct["Http"]) end
	if struct["Users"] then M.AssertTraceUsers(struct["Users"]) end
	if struct["HasFault"] then M.AssertNullableBoolean(struct["HasFault"]) end
	if struct["Annotations"] then M.AssertAnnotations(struct["Annotations"]) end
	if struct["IsPartial"] then M.AssertNullableBoolean(struct["IsPartial"]) end
	if struct["ResponseTime"] then M.AssertNullableDouble(struct["ResponseTime"]) end
	if struct["ServiceIds"] then M.AssertServiceIds(struct["ServiceIds"]) end
	if struct["Duration"] then M.AssertNullableDouble(struct["Duration"]) end
	if struct["Id"] then M.AssertTraceId(struct["Id"]) end
	if struct["HasThrottle"] then M.AssertNullableBoolean(struct["HasThrottle"]) end
	for k,_ in pairs(struct) do
		assert(TraceSummary_keys[k], "TraceSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TraceSummary
-- &lt;p&gt;Metadata generated from the segment documents in a trace.&lt;/p&gt;
-- @param HasError [NullableBoolean] &lt;p&gt;One or more of the segment documents has a 400 series error.&lt;/p&gt;
-- @param Http [Http] &lt;p&gt;Information about the HTTP request served by the trace.&lt;/p&gt;
-- @param Users [TraceUsers] &lt;p&gt;Users from the trace's segment documents.&lt;/p&gt;
-- @param HasFault [NullableBoolean] &lt;p&gt;One or more of the segment documents has a 500 series error.&lt;/p&gt;
-- @param Annotations [Annotations] &lt;p&gt;Annotations from the trace's segment documents.&lt;/p&gt;
-- @param IsPartial [NullableBoolean] &lt;p&gt;One or more of the segment documents is in progress.&lt;/p&gt;
-- @param ResponseTime [NullableDouble] &lt;p&gt;The length of time in seconds between the start and end times of the root segment. If the service performs work asynchronously, the response time measures the time before the response is sent to the user, while the duration measures the amount of time before the last traced activity completes.&lt;/p&gt;
-- @param ServiceIds [ServiceIds] &lt;p&gt;Service IDs from the trace's segment documents.&lt;/p&gt;
-- @param Duration [NullableDouble] &lt;p&gt;The length of time in seconds between the start time of the root segment and the end time of the last segment that completed.&lt;/p&gt;
-- @param Id [TraceId] &lt;p&gt;The unique identifier for the request that generated the trace's segments and subsegments.&lt;/p&gt;
-- @param HasThrottle [NullableBoolean] &lt;p&gt;One or more of the segment documents has a 429 throttling error.&lt;/p&gt;
function M.TraceSummary(HasError, Http, Users, HasFault, Annotations, IsPartial, ResponseTime, ServiceIds, Duration, Id, HasThrottle, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TraceSummary")
	local t = { 
		["HasError"] = HasError,
		["Http"] = Http,
		["Users"] = Users,
		["HasFault"] = HasFault,
		["Annotations"] = Annotations,
		["IsPartial"] = IsPartial,
		["ResponseTime"] = ResponseTime,
		["ServiceIds"] = ServiceIds,
		["Duration"] = Duration,
		["Id"] = Id,
		["HasThrottle"] = HasThrottle,
	}
	M.AssertTraceSummary(t)
	return t
end

local BackendConnectionErrors_keys = { "ConnectionRefusedCount" = true, "HTTPCode5XXCount" = true, "OtherCount" = true, "HTTPCode4XXCount" = true, "UnknownHostCount" = true, "TimeoutCount" = true, nil }

function M.AssertBackendConnectionErrors(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BackendConnectionErrors to be of type 'table'")
	if struct["ConnectionRefusedCount"] then M.AssertNullableInteger(struct["ConnectionRefusedCount"]) end
	if struct["HTTPCode5XXCount"] then M.AssertNullableInteger(struct["HTTPCode5XXCount"]) end
	if struct["OtherCount"] then M.AssertNullableInteger(struct["OtherCount"]) end
	if struct["HTTPCode4XXCount"] then M.AssertNullableInteger(struct["HTTPCode4XXCount"]) end
	if struct["UnknownHostCount"] then M.AssertNullableInteger(struct["UnknownHostCount"]) end
	if struct["TimeoutCount"] then M.AssertNullableInteger(struct["TimeoutCount"]) end
	for k,_ in pairs(struct) do
		assert(BackendConnectionErrors_keys[k], "BackendConnectionErrors contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BackendConnectionErrors
-- &lt;p/&gt;
-- @param ConnectionRefusedCount [NullableInteger] &lt;p/&gt;
-- @param HTTPCode5XXCount [NullableInteger] &lt;p/&gt;
-- @param OtherCount [NullableInteger] &lt;p/&gt;
-- @param HTTPCode4XXCount [NullableInteger] &lt;p/&gt;
-- @param UnknownHostCount [NullableInteger] &lt;p/&gt;
-- @param TimeoutCount [NullableInteger] &lt;p/&gt;
function M.BackendConnectionErrors(ConnectionRefusedCount, HTTPCode5XXCount, OtherCount, HTTPCode4XXCount, UnknownHostCount, TimeoutCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BackendConnectionErrors")
	local t = { 
		["ConnectionRefusedCount"] = ConnectionRefusedCount,
		["HTTPCode5XXCount"] = HTTPCode5XXCount,
		["OtherCount"] = OtherCount,
		["HTTPCode4XXCount"] = HTTPCode4XXCount,
		["UnknownHostCount"] = UnknownHostCount,
		["TimeoutCount"] = TimeoutCount,
	}
	M.AssertBackendConnectionErrors(t)
	return t
end

local GetTraceGraphRequest_keys = { "NextToken" = true, "TraceIds" = true, nil }

function M.AssertGetTraceGraphRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTraceGraphRequest to be of type 'table'")
	assert(struct["TraceIds"], "Expected key TraceIds to exist in table")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["TraceIds"] then M.AssertTraceIdList(struct["TraceIds"]) end
	for k,_ in pairs(struct) do
		assert(GetTraceGraphRequest_keys[k], "GetTraceGraphRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTraceGraphRequest
--  
-- @param NextToken [String] &lt;p&gt;Pagination token. Not used.&lt;/p&gt;
-- @param TraceIds [TraceIdList] &lt;p&gt;Trace IDs of requests for which to generate a service graph.&lt;/p&gt;
-- Required parameter: TraceIds
function M.GetTraceGraphRequest(NextToken, TraceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTraceGraphRequest")
	local t = { 
		["NextToken"] = NextToken,
		["TraceIds"] = TraceIds,
	}
	M.AssertGetTraceGraphRequest(t)
	return t
end

local TelemetryRecord_keys = { "SegmentsSpilloverCount" = true, "BackendConnectionErrors" = true, "Timestamp" = true, "SegmentsSentCount" = true, "SegmentsRejectedCount" = true, "SegmentsReceivedCount" = true, nil }

function M.AssertTelemetryRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TelemetryRecord to be of type 'table'")
	if struct["SegmentsSpilloverCount"] then M.AssertNullableInteger(struct["SegmentsSpilloverCount"]) end
	if struct["BackendConnectionErrors"] then M.AssertBackendConnectionErrors(struct["BackendConnectionErrors"]) end
	if struct["Timestamp"] then M.AssertTimestamp(struct["Timestamp"]) end
	if struct["SegmentsSentCount"] then M.AssertNullableInteger(struct["SegmentsSentCount"]) end
	if struct["SegmentsRejectedCount"] then M.AssertNullableInteger(struct["SegmentsRejectedCount"]) end
	if struct["SegmentsReceivedCount"] then M.AssertNullableInteger(struct["SegmentsReceivedCount"]) end
	for k,_ in pairs(struct) do
		assert(TelemetryRecord_keys[k], "TelemetryRecord contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TelemetryRecord
-- &lt;p/&gt;
-- @param SegmentsSpilloverCount [NullableInteger] &lt;p/&gt;
-- @param BackendConnectionErrors [BackendConnectionErrors] &lt;p/&gt;
-- @param Timestamp [Timestamp] &lt;p/&gt;
-- @param SegmentsSentCount [NullableInteger] &lt;p/&gt;
-- @param SegmentsRejectedCount [NullableInteger] &lt;p/&gt;
-- @param SegmentsReceivedCount [NullableInteger] &lt;p/&gt;
function M.TelemetryRecord(SegmentsSpilloverCount, BackendConnectionErrors, Timestamp, SegmentsSentCount, SegmentsRejectedCount, SegmentsReceivedCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TelemetryRecord")
	local t = { 
		["SegmentsSpilloverCount"] = SegmentsSpilloverCount,
		["BackendConnectionErrors"] = BackendConnectionErrors,
		["Timestamp"] = Timestamp,
		["SegmentsSentCount"] = SegmentsSentCount,
		["SegmentsRejectedCount"] = SegmentsRejectedCount,
		["SegmentsReceivedCount"] = SegmentsReceivedCount,
	}
	M.AssertTelemetryRecord(t)
	return t
end

local Alias_keys = { "Type" = true, "Name" = true, "Names" = true, nil }

function M.AssertAlias(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Alias to be of type 'table'")
	if struct["Type"] then M.AssertString(struct["Type"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["Names"] then M.AssertAliasNames(struct["Names"]) end
	for k,_ in pairs(struct) do
		assert(Alias_keys[k], "Alias contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Alias
-- &lt;p&gt;An alias for an edge.&lt;/p&gt;
-- @param Type [String] &lt;p&gt;The type of the alias.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;The canonical name of the alias.&lt;/p&gt;
-- @param Names [AliasNames] &lt;p&gt;A list of names for the alias, including the canonical name.&lt;/p&gt;
function M.Alias(Type, Name, Names, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Alias")
	local t = { 
		["Type"] = Type,
		["Name"] = Name,
		["Names"] = Names,
	}
	M.AssertAlias(t)
	return t
end

local Edge_keys = { "SummaryStatistics" = true, "ReferenceId" = true, "ResponseTimeHistogram" = true, "StartTime" = true, "EndTime" = true, "Aliases" = true, nil }

function M.AssertEdge(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Edge to be of type 'table'")
	if struct["SummaryStatistics"] then M.AssertEdgeStatistics(struct["SummaryStatistics"]) end
	if struct["ReferenceId"] then M.AssertNullableInteger(struct["ReferenceId"]) end
	if struct["ResponseTimeHistogram"] then M.AssertHistogram(struct["ResponseTimeHistogram"]) end
	if struct["StartTime"] then M.AssertTimestamp(struct["StartTime"]) end
	if struct["EndTime"] then M.AssertTimestamp(struct["EndTime"]) end
	if struct["Aliases"] then M.AssertAliasList(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(Edge_keys[k], "Edge contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Edge
-- &lt;p&gt;Information about a connection between two services.&lt;/p&gt;
-- @param SummaryStatistics [EdgeStatistics] &lt;p&gt;Response statistics for segments on the edge.&lt;/p&gt;
-- @param ReferenceId [NullableInteger] &lt;p&gt;Identifier of the edge. Unique within a service map.&lt;/p&gt;
-- @param ResponseTimeHistogram [Histogram] &lt;p&gt;A histogram that maps the spread of client response times on an edge.&lt;/p&gt;
-- @param StartTime [Timestamp] &lt;p&gt;The start time of the first segment on the edge.&lt;/p&gt;
-- @param EndTime [Timestamp] &lt;p&gt;The end time of the last segment on the edge.&lt;/p&gt;
-- @param Aliases [AliasList] &lt;p&gt;Aliases for the edge.&lt;/p&gt;
function M.Edge(SummaryStatistics, ReferenceId, ResponseTimeHistogram, StartTime, EndTime, Aliases, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Edge")
	local t = { 
		["SummaryStatistics"] = SummaryStatistics,
		["ReferenceId"] = ReferenceId,
		["ResponseTimeHistogram"] = ResponseTimeHistogram,
		["StartTime"] = StartTime,
		["EndTime"] = EndTime,
		["Aliases"] = Aliases,
	}
	M.AssertEdge(t)
	return t
end

local PutTelemetryRecordsResult_keys = { nil }

function M.AssertPutTelemetryRecordsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutTelemetryRecordsResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(PutTelemetryRecordsResult_keys[k], "PutTelemetryRecordsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutTelemetryRecordsResult
--  
function M.PutTelemetryRecordsResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutTelemetryRecordsResult")
	local t = { 
	}
	M.AssertPutTelemetryRecordsResult(t)
	return t
end

local PutTraceSegmentsRequest_keys = { "TraceSegmentDocuments" = true, nil }

function M.AssertPutTraceSegmentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutTraceSegmentsRequest to be of type 'table'")
	assert(struct["TraceSegmentDocuments"], "Expected key TraceSegmentDocuments to exist in table")
	if struct["TraceSegmentDocuments"] then M.AssertTraceSegmentDocumentList(struct["TraceSegmentDocuments"]) end
	for k,_ in pairs(struct) do
		assert(PutTraceSegmentsRequest_keys[k], "PutTraceSegmentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutTraceSegmentsRequest
--  
-- @param TraceSegmentDocuments [TraceSegmentDocumentList] &lt;p&gt;A string containing a JSON document defining one or more segments or subsegments.&lt;/p&gt;
-- Required parameter: TraceSegmentDocuments
function M.PutTraceSegmentsRequest(TraceSegmentDocuments, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutTraceSegmentsRequest")
	local t = { 
		["TraceSegmentDocuments"] = TraceSegmentDocuments,
	}
	M.AssertPutTraceSegmentsRequest(t)
	return t
end

local PutTraceSegmentsResult_keys = { "UnprocessedTraceSegments" = true, nil }

function M.AssertPutTraceSegmentsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutTraceSegmentsResult to be of type 'table'")
	if struct["UnprocessedTraceSegments"] then M.AssertUnprocessedTraceSegmentList(struct["UnprocessedTraceSegments"]) end
	for k,_ in pairs(struct) do
		assert(PutTraceSegmentsResult_keys[k], "PutTraceSegmentsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutTraceSegmentsResult
--  
-- @param UnprocessedTraceSegments [UnprocessedTraceSegmentList] &lt;p&gt;Segments that failed processing.&lt;/p&gt;
function M.PutTraceSegmentsResult(UnprocessedTraceSegments, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutTraceSegmentsResult")
	local t = { 
		["UnprocessedTraceSegments"] = UnprocessedTraceSegments,
	}
	M.AssertPutTraceSegmentsResult(t)
	return t
end

local GetTraceGraphResult_keys = { "Services" = true, "NextToken" = true, nil }

function M.AssertGetTraceGraphResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTraceGraphResult to be of type 'table'")
	if struct["Services"] then M.AssertServiceList(struct["Services"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(GetTraceGraphResult_keys[k], "GetTraceGraphResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTraceGraphResult
--  
-- @param Services [ServiceList] &lt;p&gt;The services that have processed one of the specified requests.&lt;/p&gt;
-- @param NextToken [String] &lt;p&gt;Pagination token. Not used.&lt;/p&gt;
function M.GetTraceGraphResult(Services, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTraceGraphResult")
	local t = { 
		["Services"] = Services,
		["NextToken"] = NextToken,
	}
	M.AssertGetTraceGraphResult(t)
	return t
end

local ServiceStatistics_keys = { "ErrorStatistics" = true, "FaultStatistics" = true, "OkCount" = true, "TotalResponseTime" = true, "TotalCount" = true, nil }

function M.AssertServiceStatistics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceStatistics to be of type 'table'")
	if struct["ErrorStatistics"] then M.AssertErrorStatistics(struct["ErrorStatistics"]) end
	if struct["FaultStatistics"] then M.AssertFaultStatistics(struct["FaultStatistics"]) end
	if struct["OkCount"] then M.AssertNullableLong(struct["OkCount"]) end
	if struct["TotalResponseTime"] then M.AssertNullableDouble(struct["TotalResponseTime"]) end
	if struct["TotalCount"] then M.AssertNullableLong(struct["TotalCount"]) end
	for k,_ in pairs(struct) do
		assert(ServiceStatistics_keys[k], "ServiceStatistics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceStatistics
-- &lt;p&gt;Response statistics for a service.&lt;/p&gt;
-- @param ErrorStatistics [ErrorStatistics] &lt;p&gt;Information about requests that failed with a 4xx Client Error status code.&lt;/p&gt;
-- @param FaultStatistics [FaultStatistics] &lt;p&gt;Information about requests that failed with a 5xx Server Error status code.&lt;/p&gt;
-- @param OkCount [NullableLong] &lt;p&gt;The number of requests that completed with a 2xx Success status code.&lt;/p&gt;
-- @param TotalResponseTime [NullableDouble] &lt;p&gt;The aggregate response time of completed requests.&lt;/p&gt;
-- @param TotalCount [NullableLong] &lt;p&gt;The total number of completed requests.&lt;/p&gt;
function M.ServiceStatistics(ErrorStatistics, FaultStatistics, OkCount, TotalResponseTime, TotalCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceStatistics")
	local t = { 
		["ErrorStatistics"] = ErrorStatistics,
		["FaultStatistics"] = FaultStatistics,
		["OkCount"] = OkCount,
		["TotalResponseTime"] = TotalResponseTime,
		["TotalCount"] = TotalCount,
	}
	M.AssertServiceStatistics(t)
	return t
end

local UnprocessedTraceSegment_keys = { "ErrorCode" = true, "Message" = true, "Id" = true, nil }

function M.AssertUnprocessedTraceSegment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnprocessedTraceSegment to be of type 'table'")
	if struct["ErrorCode"] then M.AssertString(struct["ErrorCode"]) end
	if struct["Message"] then M.AssertString(struct["Message"]) end
	if struct["Id"] then M.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(UnprocessedTraceSegment_keys[k], "UnprocessedTraceSegment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnprocessedTraceSegment
-- &lt;p&gt;Information about a segment that failed processing.&lt;/p&gt;
-- @param ErrorCode [String] &lt;p&gt;The error that caused processing to fail.&lt;/p&gt;
-- @param Message [String] &lt;p&gt;The error message.&lt;/p&gt;
-- @param Id [String] &lt;p&gt;The segment's ID.&lt;/p&gt;
function M.UnprocessedTraceSegment(ErrorCode, Message, Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnprocessedTraceSegment")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["Message"] = Message,
		["Id"] = Id,
	}
	M.AssertUnprocessedTraceSegment(t)
	return t
end

local EdgeStatistics_keys = { "ErrorStatistics" = true, "FaultStatistics" = true, "OkCount" = true, "TotalResponseTime" = true, "TotalCount" = true, nil }

function M.AssertEdgeStatistics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EdgeStatistics to be of type 'table'")
	if struct["ErrorStatistics"] then M.AssertErrorStatistics(struct["ErrorStatistics"]) end
	if struct["FaultStatistics"] then M.AssertFaultStatistics(struct["FaultStatistics"]) end
	if struct["OkCount"] then M.AssertNullableLong(struct["OkCount"]) end
	if struct["TotalResponseTime"] then M.AssertNullableDouble(struct["TotalResponseTime"]) end
	if struct["TotalCount"] then M.AssertNullableLong(struct["TotalCount"]) end
	for k,_ in pairs(struct) do
		assert(EdgeStatistics_keys[k], "EdgeStatistics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EdgeStatistics
-- &lt;p&gt;Response statistics for an edge.&lt;/p&gt;
-- @param ErrorStatistics [ErrorStatistics] &lt;p&gt;Information about requests that failed with a 4xx Client Error status code.&lt;/p&gt;
-- @param FaultStatistics [FaultStatistics] &lt;p&gt;Information about requests that failed with a 5xx Server Error status code.&lt;/p&gt;
-- @param OkCount [NullableLong] &lt;p&gt;The number of requests that completed with a 2xx Success status code.&lt;/p&gt;
-- @param TotalResponseTime [NullableDouble] &lt;p&gt;The aggregate response time of completed requests.&lt;/p&gt;
-- @param TotalCount [NullableLong] &lt;p&gt;The total number of completed requests.&lt;/p&gt;
function M.EdgeStatistics(ErrorStatistics, FaultStatistics, OkCount, TotalResponseTime, TotalCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EdgeStatistics")
	local t = { 
		["ErrorStatistics"] = ErrorStatistics,
		["FaultStatistics"] = FaultStatistics,
		["OkCount"] = OkCount,
		["TotalResponseTime"] = TotalResponseTime,
		["TotalCount"] = TotalCount,
	}
	M.AssertEdgeStatistics(t)
	return t
end

local ServiceId_keys = { "AccountId" = true, "Type" = true, "Name" = true, "Names" = true, nil }

function M.AssertServiceId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceId to be of type 'table'")
	if struct["AccountId"] then M.AssertString(struct["AccountId"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["Names"] then M.AssertServiceNames(struct["Names"]) end
	for k,_ in pairs(struct) do
		assert(ServiceId_keys[k], "ServiceId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceId
-- &lt;p/&gt;
-- @param AccountId [String] &lt;p/&gt;
-- @param Type [String] &lt;p/&gt;
-- @param Name [String] &lt;p/&gt;
-- @param Names [ServiceNames] &lt;p/&gt;
function M.ServiceId(AccountId, Type, Name, Names, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceId")
	local t = { 
		["AccountId"] = AccountId,
		["Type"] = Type,
		["Name"] = Name,
		["Names"] = Names,
	}
	M.AssertServiceId(t)
	return t
end

function M.AssertFilterExpression(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterExpression to be of type 'string'")
	assert(#str <= 2000, "Expected string to be max 2000 characters")
end

--  
function M.FilterExpression(str)
	M.AssertFilterExpression(str)
	return str
end

function M.AssertTraceSegmentDocument(str)
	assert(str)
	assert(type(str) == "string", "Expected TraceSegmentDocument to be of type 'string'")
end

--  
function M.TraceSegmentDocument(str)
	M.AssertTraceSegmentDocument(str)
	return str
end

function M.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	M.AssertString(str)
	return str
end

function M.AssertSegmentDocument(str)
	assert(str)
	assert(type(str) == "string", "Expected SegmentDocument to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SegmentDocument(str)
	M.AssertSegmentDocument(str)
	return str
end

function M.AssertTraceId(str)
	assert(str)
	assert(type(str) == "string", "Expected TraceId to be of type 'string'")
	assert(#str <= 35, "Expected string to be max 35 characters")
	assert(#str >= 35, "Expected string to be min 35 characters")
end

--  
function M.TraceId(str)
	M.AssertTraceId(str)
	return str
end

function M.AssertSegmentId(str)
	assert(str)
	assert(type(str) == "string", "Expected SegmentId to be of type 'string'")
	assert(#str <= 16, "Expected string to be max 16 characters")
	assert(#str >= 16, "Expected string to be min 16 characters")
end

--  
function M.SegmentId(str)
	M.AssertSegmentId(str)
	return str
end

function M.AssertAnnotationKey(str)
	assert(str)
	assert(type(str) == "string", "Expected AnnotationKey to be of type 'string'")
end

--  
function M.AnnotationKey(str)
	M.AssertAnnotationKey(str)
	return str
end

function M.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	M.AssertDouble(double)
	return double
end

function M.AssertNullableDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected NullableDouble to be of type 'number'")
end

function M.NullableDouble(double)
	M.AssertNullableDouble(double)
	return double
end

function M.AssertNullableLong(long)
	assert(long)
	assert(type(long) == "number", "Expected NullableLong to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.NullableLong(long)
	M.AssertNullableLong(long)
	return long
end

function M.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	M.AssertInteger(integer)
	return integer
end

function M.AssertNullableInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NullableInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.NullableInteger(integer)
	M.AssertNullableInteger(integer)
	return integer
end

function M.AssertNullableBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected NullableBoolean to be of type 'boolean'")
end

function M.NullableBoolean(boolean)
	M.AssertNullableBoolean(boolean)
	return boolean
end

function M.AssertAnnotations(map)
	assert(map)
	assert(type(map) == "table", "Expected Annotations to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertAnnotationKey(k)
		M.AssertValuesWithServiceIds(v)
	end
end

function M.Annotations(map)
	M.AssertAnnotations(map)
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

function M.AssertAliasNames(list)
	assert(list)
	assert(type(list) == "table", "Expected AliasNames to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.AliasNames(list)
	M.AssertAliasNames(list)
	return list
end

function M.AssertEdgeList(list)
	assert(list)
	assert(type(list) == "table", "Expected EdgeList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEdge(v)
	end
end

--  
-- List of Edge objects
function M.EdgeList(list)
	M.AssertEdgeList(list)
	return list
end

function M.AssertServiceIds(list)
	assert(list)
	assert(type(list) == "table", "Expected ServiceIds to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertServiceId(v)
	end
end

--  
-- List of ServiceId objects
function M.ServiceIds(list)
	M.AssertServiceIds(list)
	return list
end

function M.AssertSegmentList(list)
	assert(list)
	assert(type(list) == "table", "Expected SegmentList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSegment(v)
	end
end

--  
-- List of Segment objects
function M.SegmentList(list)
	M.AssertSegmentList(list)
	return list
end

function M.AssertTraceList(list)
	assert(list)
	assert(type(list) == "table", "Expected TraceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTrace(v)
	end
end

--  
-- List of Trace objects
function M.TraceList(list)
	M.AssertTraceList(list)
	return list
end

function M.AssertValuesWithServiceIds(list)
	assert(list)
	assert(type(list) == "table", "Expected ValuesWithServiceIds to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertValueWithServiceIds(v)
	end
end

--  
-- List of ValueWithServiceIds objects
function M.ValuesWithServiceIds(list)
	M.AssertValuesWithServiceIds(list)
	return list
end

function M.AssertUnprocessedTraceIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected UnprocessedTraceIdList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTraceId(v)
	end
end

--  
-- List of TraceId objects
function M.UnprocessedTraceIdList(list)
	M.AssertUnprocessedTraceIdList(list)
	return list
end

function M.AssertHistogram(list)
	assert(list)
	assert(type(list) == "table", "Expected Histogram to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertHistogramEntry(v)
	end
end

--  
-- List of HistogramEntry objects
function M.Histogram(list)
	M.AssertHistogram(list)
	return list
end

function M.AssertTraceUsers(list)
	assert(list)
	assert(type(list) == "table", "Expected TraceUsers to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTraceUser(v)
	end
end

--  
-- List of TraceUser objects
function M.TraceUsers(list)
	M.AssertTraceUsers(list)
	return list
end

function M.AssertTraceSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected TraceSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTraceSummary(v)
	end
end

--  
-- List of TraceSummary objects
function M.TraceSummaryList(list)
	M.AssertTraceSummaryList(list)
	return list
end

function M.AssertUnprocessedTraceSegmentList(list)
	assert(list)
	assert(type(list) == "table", "Expected UnprocessedTraceSegmentList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUnprocessedTraceSegment(v)
	end
end

--  
-- List of UnprocessedTraceSegment objects
function M.UnprocessedTraceSegmentList(list)
	M.AssertUnprocessedTraceSegmentList(list)
	return list
end

function M.AssertTraceSegmentDocumentList(list)
	assert(list)
	assert(type(list) == "table", "Expected TraceSegmentDocumentList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTraceSegmentDocument(v)
	end
end

--  
-- List of TraceSegmentDocument objects
function M.TraceSegmentDocumentList(list)
	M.AssertTraceSegmentDocumentList(list)
	return list
end

function M.AssertTelemetryRecordList(list)
	assert(list)
	assert(type(list) == "table", "Expected TelemetryRecordList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTelemetryRecord(v)
	end
end

--  
-- List of TelemetryRecord objects
function M.TelemetryRecordList(list)
	M.AssertTelemetryRecordList(list)
	return list
end

function M.AssertTraceIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected TraceIdList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTraceId(v)
	end
end

--  
-- List of TraceId objects
function M.TraceIdList(list)
	M.AssertTraceIdList(list)
	return list
end

function M.AssertAliasList(list)
	assert(list)
	assert(type(list) == "table", "Expected AliasList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAlias(v)
	end
end

--  
-- List of Alias objects
function M.AliasList(list)
	M.AssertAliasList(list)
	return list
end

function M.AssertServiceNames(list)
	assert(list)
	assert(type(list) == "table", "Expected ServiceNames to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.ServiceNames(list)
	M.AssertServiceNames(list)
	return list
end

function M.AssertServiceList(list)
	assert(list)
	assert(type(list) == "table", "Expected ServiceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertService(v)
	end
end

--  
-- List of Service objects
function M.ServiceList(list)
	M.AssertServiceList(list)
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
			return "xray.amazonaws.com"
		end
	end
	local ss = { "xray" }
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
--- GetServiceGraph
-- @param GetServiceGraphRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetServiceGraphAsync(GetServiceGraphRequest, cb)
	assert(GetServiceGraphRequest, "You must provide a GetServiceGraphRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetServiceGraph",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/ServiceGraph", GetServiceGraphRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutTraceSegments
-- @param PutTraceSegmentsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutTraceSegmentsAsync(PutTraceSegmentsRequest, cb)
	assert(PutTraceSegmentsRequest, "You must provide a PutTraceSegmentsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutTraceSegments",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/TraceSegments", PutTraceSegmentsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetTraceSummaries
-- @param GetTraceSummariesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetTraceSummariesAsync(GetTraceSummariesRequest, cb)
	assert(GetTraceSummariesRequest, "You must provide a GetTraceSummariesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetTraceSummaries",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/TraceSummaries", GetTraceSummariesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetTraceGraph
-- @param GetTraceGraphRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetTraceGraphAsync(GetTraceGraphRequest, cb)
	assert(GetTraceGraphRequest, "You must provide a GetTraceGraphRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetTraceGraph",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/TraceGraph", GetTraceGraphRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchGetTraces
-- @param BatchGetTracesRequest
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetTracesAsync(BatchGetTracesRequest, cb)
	assert(BatchGetTracesRequest, "You must provide a BatchGetTracesRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".BatchGetTraces",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/Traces", BatchGetTracesRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutTelemetryRecords
-- @param PutTelemetryRecordsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutTelemetryRecordsAsync(PutTelemetryRecordsRequest, cb)
	assert(PutTelemetryRecordsRequest, "You must provide a PutTelemetryRecordsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutTelemetryRecords",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/TelemetryRecords", PutTelemetryRecordsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
