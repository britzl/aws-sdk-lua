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
-- <p>The request is missing required parameters or has invalid parameters.</p>
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
-- <p>Value of a segment annotation. Has one of three value types: Number, Boolean or String.</p>
-- @param NumberValue [NullableDouble] <p>Value for a Number annotation.</p>
-- @param BooleanValue [NullableBoolean] <p>Value for a Boolean annotation.</p>
-- @param StringValue [String] <p>Value for a String annotation.</p>
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
-- <p>Information about requests that failed with a 5xx Server Error status code.</p>
-- @param OtherCount [NullableLong] <p>The number of requests that failed with untracked 5xx Server Error status codes.</p>
-- @param TotalCount [NullableLong] <p>The total number of requests that failed with a 5xx Server Error status code.</p>
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
-- <p>Information about a user recorded in segment documents.</p>
-- @param UserName [String] <p>The user's name.</p>
-- @param ServiceIds [ServiceIds] <p>Services that the user's request hit.</p>
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
-- @param FilterExpression [FilterExpression] <p>Specify a filter expression to retrieve trace summaries for services or requests that meet certain requirements.</p>
-- @param EndTime [Timestamp] <p>The end of the time frame for which to retrieve traces.</p>
-- @param NextToken [String] <p>Specify the pagination token returned by a previous request to retrieve the next page of results.</p>
-- @param StartTime [Timestamp] <p>The start of the time frame for which to retrieve traces.</p>
-- @param Sampling [NullableBoolean] <p>Set to <code>true</code> to get summaries for only a subset of available traces.</p>
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
-- <p>Information about an application that processed requests, users that made requests, or downstream services, resources and applications that an application used.</p>
-- @param SummaryStatistics [ServiceStatistics] <p>Aggregated statistics for the service.</p>
-- @param ReferenceId [NullableInteger] <p>Identifier for the service. Unique within the service map.</p>
-- @param Name [String] <p>The canonical name of the service.</p>
-- @param DurationHistogram [Histogram] <p>A histogram that maps the spread of service durations.</p>
-- @param Root [NullableBoolean] <p>Indicates that the service was the first service to process a request.</p>
-- @param ResponseTimeHistogram [Histogram] <p>A histogram that maps the spread of service response times.</p>
-- @param State [String] <p>The service's state.</p>
-- @param Edges [EdgeList] <p>Connections to downstream services.</p>
-- @param Names [ServiceNames] <p>A list of names for the service, including the canonical name.</p>
-- @param StartTime [Timestamp] <p>The start time of the first segment that the service generated.</p>
-- @param EndTime [Timestamp] <p>The end time of the last segment that the service generated.</p>
-- @param Type [String] <p>The type of service.</p> <ul> <li> <p>AWS Resource - The type of an AWS resource. For example, <code>AWS::EC2::Instance</code> for a application running on Amazon EC2 or <code>AWS::DynamoDB::Table</code> for an Amazon DynamoDB table that the application used.</p> </li> <li> <p>AWS Service - The type of an AWS service. For example, <code>AWS::DynamoDB</code> for downstream calls to Amazon DynamoDB that didn't target a specific table.</p> </li> <li> <p> <code>client</code> - Represents the clients that sent requests to a root service.</p> </li> <li> <p> <code>remote</code> - A downstream service of indeterminate type.</p> </li> </ul>
-- @param AccountId [String] <p>Identifier of the AWS account in which the service runs.</p>
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
-- @param Services [ServiceList] <p>The services that have processed a traced request during the specified time frame.</p>
-- @param EndTime [Timestamp] <p>The end of the time frame for which the graph was generated.</p>
-- @param NextToken [String] <p>Pagination token. Not used.</p>
-- @param StartTime [Timestamp] <p>The start of the time frame for which the graph was generated.</p>
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
-- @param EndTime [Timestamp] <p>The end of the time frame for which to generate a graph.</p>
-- @param NextToken [String] <p>Pagination token. Not used.</p>
-- @param StartTime [Timestamp] <p>The start of the time frame for which to generate a graph.</p>
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
-- <p>The request exceeds the maximum number of requests per second.</p>
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
-- <p>An entry in a histogram for a statistic. A histogram maps the range of observed values on the X axis, and the prevalence of each value on the Y axis.</p>
-- @param Count [Integer] <p>The prevalence of the entry.</p>
-- @param Value [Double] <p>The value of the entry.</p>
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
-- @param TraceSummaries [TraceSummaryList] <p>Trace IDs and metadata for traces that were found in the specified time frame.</p>
-- @param NextToken [String] <p>If the requested time frame contained more than one page of results, you can use this token to retrieve the next page. The first page contains the most most recent results, closest to the end of the time frame.</p>
-- @param ApproximateTime [Timestamp] <p>The start time of this page of results.</p>
-- @param TracesProcessedCount [NullableLong] <p>The number of traces that were processed to get this set of summaries.</p>
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
-- <p>Information about an HTTP request.</p>
-- @param HttpStatus [NullableInteger] <p>The response status.</p>
-- @param ClientIp [String] <p>The IP address of the requestor.</p>
-- @param HttpURL [String] <p>The request URL.</p>
-- @param UserAgent [String] <p>The request's user agent string.</p>
-- @param HttpMethod [String] <p>The request method.</p>
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
-- <p>A collection of segment documents with matching trace IDs.</p>
-- @param Duration [NullableDouble] <p>The length of time in seconds between the start time of the root segment and the end time of the last segment that completed.</p>
-- @param Segments [SegmentList] <p>Segment documents for the segments and subsegments that comprise the trace.</p>
-- @param Id [TraceId] <p>The unique identifier for the request that generated the trace's segments and subsegments.</p>
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
-- @param ResourceARN [String] <p/>
-- @param Hostname [String] <p/>
-- @param TelemetryRecords [TelemetryRecordList] <p/>
-- @param EC2InstanceId [String] <p/>
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
-- @param NextToken [String] <p>Pagination token. Not used.</p>
-- @param TraceIds [TraceIdList] <p>Specify the trace IDs of requests for which to retrieve segments.</p>
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
-- <p>Information about requests that failed with a 4xx Client Error status code.</p>
-- @param OtherCount [NullableLong] <p>The number of requests that failed with untracked 4xx Client Error status codes.</p>
-- @param ThrottleCount [NullableLong] <p>The number of requests that failed with a 419 throttling status code.</p>
-- @param TotalCount [NullableLong] <p>The total number of requests that failed with a 4xx Client Error status code.</p>
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
-- <p>Information about a segment annotation.</p>
-- @param AnnotationValue [AnnotationValue] <p>Values of the annotation.</p>
-- @param ServiceIds [ServiceIds] <p>Services to which the annotation applies.</p>
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
-- <p>A segment from a trace that has been ingested by the X-Ray service. The segment can be compiled from documents uploaded with <a>PutTraceSegments</a>, or an <code>inferred</code> segment for a downstream service, generated from a subsegment sent by the service that called it.</p>
-- @param Document [SegmentDocument] <p>The segment document</p>
-- @param Id [SegmentId] <p>The segment's ID.</p>
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
-- @param NextToken [String] <p>Pagination token. Not used.</p>
-- @param Traces [TraceList] <p>Full traces for the specified requests.</p>
-- @param UnprocessedTraceIds [UnprocessedTraceIdList] <p>Trace IDs of requests that haven't been processed.</p>
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
-- <p>Metadata generated from the segment documents in a trace.</p>
-- @param HasError [NullableBoolean] <p>One or more of the segment documents has a 400 series error.</p>
-- @param Http [Http] <p>Information about the HTTP request served by the trace.</p>
-- @param Users [TraceUsers] <p>Users from the trace's segment documents.</p>
-- @param HasFault [NullableBoolean] <p>One or more of the segment documents has a 500 series error.</p>
-- @param Annotations [Annotations] <p>Annotations from the trace's segment documents.</p>
-- @param IsPartial [NullableBoolean] <p>One or more of the segment documents is in progress.</p>
-- @param ResponseTime [NullableDouble] <p>The length of time in seconds between the start and end times of the root segment. If the service performs work asynchronously, the response time measures the time before the response is sent to the user, while the duration measures the amount of time before the last traced activity completes.</p>
-- @param ServiceIds [ServiceIds] <p>Service IDs from the trace's segment documents.</p>
-- @param Duration [NullableDouble] <p>The length of time in seconds between the start time of the root segment and the end time of the last segment that completed.</p>
-- @param Id [TraceId] <p>The unique identifier for the request that generated the trace's segments and subsegments.</p>
-- @param HasThrottle [NullableBoolean] <p>One or more of the segment documents has a 429 throttling error.</p>
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
-- <p/>
-- @param ConnectionRefusedCount [NullableInteger] <p/>
-- @param HTTPCode5XXCount [NullableInteger] <p/>
-- @param OtherCount [NullableInteger] <p/>
-- @param HTTPCode4XXCount [NullableInteger] <p/>
-- @param UnknownHostCount [NullableInteger] <p/>
-- @param TimeoutCount [NullableInteger] <p/>
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
-- @param NextToken [String] <p>Pagination token. Not used.</p>
-- @param TraceIds [TraceIdList] <p>Trace IDs of requests for which to generate a service graph.</p>
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
-- <p/>
-- @param SegmentsSpilloverCount [NullableInteger] <p/>
-- @param BackendConnectionErrors [BackendConnectionErrors] <p/>
-- @param Timestamp [Timestamp] <p/>
-- @param SegmentsSentCount [NullableInteger] <p/>
-- @param SegmentsRejectedCount [NullableInteger] <p/>
-- @param SegmentsReceivedCount [NullableInteger] <p/>
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
-- <p>An alias for an edge.</p>
-- @param Type [String] <p>The type of the alias.</p>
-- @param Name [String] <p>The canonical name of the alias.</p>
-- @param Names [AliasNames] <p>A list of names for the alias, including the canonical name.</p>
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
-- <p>Information about a connection between two services.</p>
-- @param SummaryStatistics [EdgeStatistics] <p>Response statistics for segments on the edge.</p>
-- @param ReferenceId [NullableInteger] <p>Identifier of the edge. Unique within a service map.</p>
-- @param ResponseTimeHistogram [Histogram] <p>A histogram that maps the spread of client response times on an edge.</p>
-- @param StartTime [Timestamp] <p>The start time of the first segment on the edge.</p>
-- @param EndTime [Timestamp] <p>The end time of the last segment on the edge.</p>
-- @param Aliases [AliasList] <p>Aliases for the edge.</p>
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
-- @param TraceSegmentDocuments [TraceSegmentDocumentList] <p>A string containing a JSON document defining one or more segments or subsegments.</p>
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
-- @param UnprocessedTraceSegments [UnprocessedTraceSegmentList] <p>Segments that failed processing.</p>
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
-- @param Services [ServiceList] <p>The services that have processed one of the specified requests.</p>
-- @param NextToken [String] <p>Pagination token. Not used.</p>
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
-- <p>Response statistics for a service.</p>
-- @param ErrorStatistics [ErrorStatistics] <p>Information about requests that failed with a 4xx Client Error status code.</p>
-- @param FaultStatistics [FaultStatistics] <p>Information about requests that failed with a 5xx Server Error status code.</p>
-- @param OkCount [NullableLong] <p>The number of requests that completed with a 2xx Success status code.</p>
-- @param TotalResponseTime [NullableDouble] <p>The aggregate response time of completed requests.</p>
-- @param TotalCount [NullableLong] <p>The total number of completed requests.</p>
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
-- <p>Information about a segment that failed processing.</p>
-- @param ErrorCode [String] <p>The error that caused processing to fail.</p>
-- @param Message [String] <p>The error message.</p>
-- @param Id [String] <p>The segment's ID.</p>
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
-- <p>Response statistics for an edge.</p>
-- @param ErrorStatistics [ErrorStatistics] <p>Information about requests that failed with a 4xx Client Error status code.</p>
-- @param FaultStatistics [FaultStatistics] <p>Information about requests that failed with a 5xx Server Error status code.</p>
-- @param OkCount [NullableLong] <p>The number of requests that completed with a 2xx Success status code.</p>
-- @param TotalResponseTime [NullableDouble] <p>The aggregate response time of completed requests.</p>
-- @param TotalCount [NullableLong] <p>The total number of completed requests.</p>
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
-- <p/>
-- @param AccountId [String] <p/>
-- @param Type [String] <p/>
-- @param Name [String] <p/>
-- @param Names [ServiceNames] <p/>
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
