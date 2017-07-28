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

local keys = {}
local asserts = {}

keys.InvalidRequestException = { nil }

function asserts.AssertInvalidRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidRequestException[k], "InvalidRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestException
-- <p>The request is missing required parameters or has invalid parameters.</p>
function M.InvalidRequestException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRequestException")
	local t = { 
	}
	asserts.AssertInvalidRequestException(t)
	return t
end

keys.AnnotationValue = { ["NumberValue"] = true, ["BooleanValue"] = true, ["StringValue"] = true, nil }

function asserts.AssertAnnotationValue(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AnnotationValue to be of type 'table'")
	if struct["NumberValue"] then asserts.AssertNullableDouble(struct["NumberValue"]) end
	if struct["BooleanValue"] then asserts.AssertNullableBoolean(struct["BooleanValue"]) end
	if struct["StringValue"] then asserts.AssertString(struct["StringValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.AnnotationValue[k], "AnnotationValue contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AnnotationValue
-- <p>Value of a segment annotation. Has one of three value types: Number, Boolean or String.</p>
-- @param _NumberValue [NullableDouble] <p>Value for a Number annotation.</p>
-- @param _BooleanValue [NullableBoolean] <p>Value for a Boolean annotation.</p>
-- @param _StringValue [String] <p>Value for a String annotation.</p>
function M.AnnotationValue(_NumberValue, _BooleanValue, _StringValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AnnotationValue")
	local t = { 
		["NumberValue"] = _NumberValue,
		["BooleanValue"] = _BooleanValue,
		["StringValue"] = _StringValue,
	}
	asserts.AssertAnnotationValue(t)
	return t
end

keys.FaultStatistics = { ["OtherCount"] = true, ["TotalCount"] = true, nil }

function asserts.AssertFaultStatistics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FaultStatistics to be of type 'table'")
	if struct["OtherCount"] then asserts.AssertNullableLong(struct["OtherCount"]) end
	if struct["TotalCount"] then asserts.AssertNullableLong(struct["TotalCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.FaultStatistics[k], "FaultStatistics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FaultStatistics
-- <p>Information about requests that failed with a 5xx Server Error status code.</p>
-- @param _OtherCount [NullableLong] <p>The number of requests that failed with untracked 5xx Server Error status codes.</p>
-- @param _TotalCount [NullableLong] <p>The total number of requests that failed with a 5xx Server Error status code.</p>
function M.FaultStatistics(_OtherCount, _TotalCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating FaultStatistics")
	local t = { 
		["OtherCount"] = _OtherCount,
		["TotalCount"] = _TotalCount,
	}
	asserts.AssertFaultStatistics(t)
	return t
end

keys.TraceUser = { ["UserName"] = true, ["ServiceIds"] = true, nil }

function asserts.AssertTraceUser(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TraceUser to be of type 'table'")
	if struct["UserName"] then asserts.AssertString(struct["UserName"]) end
	if struct["ServiceIds"] then asserts.AssertServiceIds(struct["ServiceIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.TraceUser[k], "TraceUser contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TraceUser
-- <p>Information about a user recorded in segment documents.</p>
-- @param _UserName [String] <p>The user's name.</p>
-- @param _ServiceIds [ServiceIds] <p>Services that the user's request hit.</p>
function M.TraceUser(_UserName, _ServiceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TraceUser")
	local t = { 
		["UserName"] = _UserName,
		["ServiceIds"] = _ServiceIds,
	}
	asserts.AssertTraceUser(t)
	return t
end

keys.GetTraceSummariesRequest = { ["FilterExpression"] = true, ["EndTime"] = true, ["NextToken"] = true, ["StartTime"] = true, ["Sampling"] = true, nil }

function asserts.AssertGetTraceSummariesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTraceSummariesRequest to be of type 'table'")
	assert(struct["StartTime"], "Expected key StartTime to exist in table")
	assert(struct["EndTime"], "Expected key EndTime to exist in table")
	if struct["FilterExpression"] then asserts.AssertFilterExpression(struct["FilterExpression"]) end
	if struct["EndTime"] then asserts.AssertTimestamp(struct["EndTime"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["StartTime"] then asserts.AssertTimestamp(struct["StartTime"]) end
	if struct["Sampling"] then asserts.AssertNullableBoolean(struct["Sampling"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTraceSummariesRequest[k], "GetTraceSummariesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTraceSummariesRequest
--  
-- @param _FilterExpression [FilterExpression] <p>Specify a filter expression to retrieve trace summaries for services or requests that meet certain requirements.</p>
-- @param _EndTime [Timestamp] <p>The end of the time frame for which to retrieve traces.</p>
-- @param _NextToken [String] <p>Specify the pagination token returned by a previous request to retrieve the next page of results.</p>
-- @param _StartTime [Timestamp] <p>The start of the time frame for which to retrieve traces.</p>
-- @param _Sampling [NullableBoolean] <p>Set to <code>true</code> to get summaries for only a subset of available traces.</p>
-- Required parameter: StartTime
-- Required parameter: EndTime
function M.GetTraceSummariesRequest(_FilterExpression, _EndTime, _NextToken, _StartTime, _Sampling, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTraceSummariesRequest")
	local t = { 
		["FilterExpression"] = _FilterExpression,
		["EndTime"] = _EndTime,
		["NextToken"] = _NextToken,
		["StartTime"] = _StartTime,
		["Sampling"] = _Sampling,
	}
	asserts.AssertGetTraceSummariesRequest(t)
	return t
end

keys.Service = { ["SummaryStatistics"] = true, ["ReferenceId"] = true, ["Name"] = true, ["DurationHistogram"] = true, ["Root"] = true, ["ResponseTimeHistogram"] = true, ["State"] = true, ["Edges"] = true, ["Names"] = true, ["StartTime"] = true, ["EndTime"] = true, ["Type"] = true, ["AccountId"] = true, nil }

function asserts.AssertService(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Service to be of type 'table'")
	if struct["SummaryStatistics"] then asserts.AssertServiceStatistics(struct["SummaryStatistics"]) end
	if struct["ReferenceId"] then asserts.AssertNullableInteger(struct["ReferenceId"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["DurationHistogram"] then asserts.AssertHistogram(struct["DurationHistogram"]) end
	if struct["Root"] then asserts.AssertNullableBoolean(struct["Root"]) end
	if struct["ResponseTimeHistogram"] then asserts.AssertHistogram(struct["ResponseTimeHistogram"]) end
	if struct["State"] then asserts.AssertString(struct["State"]) end
	if struct["Edges"] then asserts.AssertEdgeList(struct["Edges"]) end
	if struct["Names"] then asserts.AssertServiceNames(struct["Names"]) end
	if struct["StartTime"] then asserts.AssertTimestamp(struct["StartTime"]) end
	if struct["EndTime"] then asserts.AssertTimestamp(struct["EndTime"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	if struct["AccountId"] then asserts.AssertString(struct["AccountId"]) end
	for k,_ in pairs(struct) do
		assert(keys.Service[k], "Service contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Service
-- <p>Information about an application that processed requests, users that made requests, or downstream services, resources and applications that an application used.</p>
-- @param _SummaryStatistics [ServiceStatistics] <p>Aggregated statistics for the service.</p>
-- @param _ReferenceId [NullableInteger] <p>Identifier for the service. Unique within the service map.</p>
-- @param _Name [String] <p>The canonical name of the service.</p>
-- @param _DurationHistogram [Histogram] <p>A histogram that maps the spread of service durations.</p>
-- @param _Root [NullableBoolean] <p>Indicates that the service was the first service to process a request.</p>
-- @param _ResponseTimeHistogram [Histogram] <p>A histogram that maps the spread of service response times.</p>
-- @param _State [String] <p>The service's state.</p>
-- @param _Edges [EdgeList] <p>Connections to downstream services.</p>
-- @param _Names [ServiceNames] <p>A list of names for the service, including the canonical name.</p>
-- @param _StartTime [Timestamp] <p>The start time of the first segment that the service generated.</p>
-- @param _EndTime [Timestamp] <p>The end time of the last segment that the service generated.</p>
-- @param _Type [String] <p>The type of service.</p> <ul> <li> <p>AWS Resource - The type of an AWS resource. For example, <code>AWS::EC2::Instance</code> for a application running on Amazon EC2 or <code>AWS::DynamoDB::Table</code> for an Amazon DynamoDB table that the application used.</p> </li> <li> <p>AWS Service - The type of an AWS service. For example, <code>AWS::DynamoDB</code> for downstream calls to Amazon DynamoDB that didn't target a specific table.</p> </li> <li> <p> <code>client</code> - Represents the clients that sent requests to a root service.</p> </li> <li> <p> <code>remote</code> - A downstream service of indeterminate type.</p> </li> </ul>
-- @param _AccountId [String] <p>Identifier of the AWS account in which the service runs.</p>
function M.Service(_SummaryStatistics, _ReferenceId, _Name, _DurationHistogram, _Root, _ResponseTimeHistogram, _State, _Edges, _Names, _StartTime, _EndTime, _Type, _AccountId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Service")
	local t = { 
		["SummaryStatistics"] = _SummaryStatistics,
		["ReferenceId"] = _ReferenceId,
		["Name"] = _Name,
		["DurationHistogram"] = _DurationHistogram,
		["Root"] = _Root,
		["ResponseTimeHistogram"] = _ResponseTimeHistogram,
		["State"] = _State,
		["Edges"] = _Edges,
		["Names"] = _Names,
		["StartTime"] = _StartTime,
		["EndTime"] = _EndTime,
		["Type"] = _Type,
		["AccountId"] = _AccountId,
	}
	asserts.AssertService(t)
	return t
end

keys.GetServiceGraphResult = { ["Services"] = true, ["EndTime"] = true, ["NextToken"] = true, ["StartTime"] = true, nil }

function asserts.AssertGetServiceGraphResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetServiceGraphResult to be of type 'table'")
	if struct["Services"] then asserts.AssertServiceList(struct["Services"]) end
	if struct["EndTime"] then asserts.AssertTimestamp(struct["EndTime"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["StartTime"] then asserts.AssertTimestamp(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetServiceGraphResult[k], "GetServiceGraphResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetServiceGraphResult
--  
-- @param _Services [ServiceList] <p>The services that have processed a traced request during the specified time frame.</p>
-- @param _EndTime [Timestamp] <p>The end of the time frame for which the graph was generated.</p>
-- @param _NextToken [String] <p>Pagination token. Not used.</p>
-- @param _StartTime [Timestamp] <p>The start of the time frame for which the graph was generated.</p>
function M.GetServiceGraphResult(_Services, _EndTime, _NextToken, _StartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetServiceGraphResult")
	local t = { 
		["Services"] = _Services,
		["EndTime"] = _EndTime,
		["NextToken"] = _NextToken,
		["StartTime"] = _StartTime,
	}
	asserts.AssertGetServiceGraphResult(t)
	return t
end

keys.GetServiceGraphRequest = { ["EndTime"] = true, ["NextToken"] = true, ["StartTime"] = true, nil }

function asserts.AssertGetServiceGraphRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetServiceGraphRequest to be of type 'table'")
	assert(struct["StartTime"], "Expected key StartTime to exist in table")
	assert(struct["EndTime"], "Expected key EndTime to exist in table")
	if struct["EndTime"] then asserts.AssertTimestamp(struct["EndTime"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["StartTime"] then asserts.AssertTimestamp(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetServiceGraphRequest[k], "GetServiceGraphRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetServiceGraphRequest
--  
-- @param _EndTime [Timestamp] <p>The end of the time frame for which to generate a graph.</p>
-- @param _NextToken [String] <p>Pagination token. Not used.</p>
-- @param _StartTime [Timestamp] <p>The start of the time frame for which to generate a graph.</p>
-- Required parameter: StartTime
-- Required parameter: EndTime
function M.GetServiceGraphRequest(_EndTime, _NextToken, _StartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetServiceGraphRequest")
	local t = { 
		["EndTime"] = _EndTime,
		["NextToken"] = _NextToken,
		["StartTime"] = _StartTime,
	}
	asserts.AssertGetServiceGraphRequest(t)
	return t
end

keys.ThrottledException = { nil }

function asserts.AssertThrottledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottledException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ThrottledException[k], "ThrottledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottledException
-- <p>The request exceeds the maximum number of requests per second.</p>
function M.ThrottledException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThrottledException")
	local t = { 
	}
	asserts.AssertThrottledException(t)
	return t
end

keys.HistogramEntry = { ["Count"] = true, ["Value"] = true, nil }

function asserts.AssertHistogramEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HistogramEntry to be of type 'table'")
	if struct["Count"] then asserts.AssertInteger(struct["Count"]) end
	if struct["Value"] then asserts.AssertDouble(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.HistogramEntry[k], "HistogramEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HistogramEntry
-- <p>An entry in a histogram for a statistic. A histogram maps the range of observed values on the X axis, and the prevalence of each value on the Y axis.</p>
-- @param _Count [Integer] <p>The prevalence of the entry.</p>
-- @param _Value [Double] <p>The value of the entry.</p>
function M.HistogramEntry(_Count, _Value, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating HistogramEntry")
	local t = { 
		["Count"] = _Count,
		["Value"] = _Value,
	}
	asserts.AssertHistogramEntry(t)
	return t
end

keys.GetTraceSummariesResult = { ["TraceSummaries"] = true, ["NextToken"] = true, ["ApproximateTime"] = true, ["TracesProcessedCount"] = true, nil }

function asserts.AssertGetTraceSummariesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTraceSummariesResult to be of type 'table'")
	if struct["TraceSummaries"] then asserts.AssertTraceSummaryList(struct["TraceSummaries"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["ApproximateTime"] then asserts.AssertTimestamp(struct["ApproximateTime"]) end
	if struct["TracesProcessedCount"] then asserts.AssertNullableLong(struct["TracesProcessedCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTraceSummariesResult[k], "GetTraceSummariesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTraceSummariesResult
--  
-- @param _TraceSummaries [TraceSummaryList] <p>Trace IDs and metadata for traces that were found in the specified time frame.</p>
-- @param _NextToken [String] <p>If the requested time frame contained more than one page of results, you can use this token to retrieve the next page. The first page contains the most most recent results, closest to the end of the time frame.</p>
-- @param _ApproximateTime [Timestamp] <p>The start time of this page of results.</p>
-- @param _TracesProcessedCount [NullableLong] <p>The number of traces that were processed to get this set of summaries.</p>
function M.GetTraceSummariesResult(_TraceSummaries, _NextToken, _ApproximateTime, _TracesProcessedCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTraceSummariesResult")
	local t = { 
		["TraceSummaries"] = _TraceSummaries,
		["NextToken"] = _NextToken,
		["ApproximateTime"] = _ApproximateTime,
		["TracesProcessedCount"] = _TracesProcessedCount,
	}
	asserts.AssertGetTraceSummariesResult(t)
	return t
end

keys.Http = { ["HttpStatus"] = true, ["ClientIp"] = true, ["HttpURL"] = true, ["UserAgent"] = true, ["HttpMethod"] = true, nil }

function asserts.AssertHttp(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Http to be of type 'table'")
	if struct["HttpStatus"] then asserts.AssertNullableInteger(struct["HttpStatus"]) end
	if struct["ClientIp"] then asserts.AssertString(struct["ClientIp"]) end
	if struct["HttpURL"] then asserts.AssertString(struct["HttpURL"]) end
	if struct["UserAgent"] then asserts.AssertString(struct["UserAgent"]) end
	if struct["HttpMethod"] then asserts.AssertString(struct["HttpMethod"]) end
	for k,_ in pairs(struct) do
		assert(keys.Http[k], "Http contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Http
-- <p>Information about an HTTP request.</p>
-- @param _HttpStatus [NullableInteger] <p>The response status.</p>
-- @param _ClientIp [String] <p>The IP address of the requestor.</p>
-- @param _HttpURL [String] <p>The request URL.</p>
-- @param _UserAgent [String] <p>The request's user agent string.</p>
-- @param _HttpMethod [String] <p>The request method.</p>
function M.Http(_HttpStatus, _ClientIp, _HttpURL, _UserAgent, _HttpMethod, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Http")
	local t = { 
		["HttpStatus"] = _HttpStatus,
		["ClientIp"] = _ClientIp,
		["HttpURL"] = _HttpURL,
		["UserAgent"] = _UserAgent,
		["HttpMethod"] = _HttpMethod,
	}
	asserts.AssertHttp(t)
	return t
end

keys.Trace = { ["Duration"] = true, ["Segments"] = true, ["Id"] = true, nil }

function asserts.AssertTrace(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Trace to be of type 'table'")
	if struct["Duration"] then asserts.AssertNullableDouble(struct["Duration"]) end
	if struct["Segments"] then asserts.AssertSegmentList(struct["Segments"]) end
	if struct["Id"] then asserts.AssertTraceId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Trace[k], "Trace contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Trace
-- <p>A collection of segment documents with matching trace IDs.</p>
-- @param _Duration [NullableDouble] <p>The length of time in seconds between the start time of the root segment and the end time of the last segment that completed.</p>
-- @param _Segments [SegmentList] <p>Segment documents for the segments and subsegments that comprise the trace.</p>
-- @param _Id [TraceId] <p>The unique identifier for the request that generated the trace's segments and subsegments.</p>
function M.Trace(_Duration, _Segments, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Trace")
	local t = { 
		["Duration"] = _Duration,
		["Segments"] = _Segments,
		["Id"] = _Id,
	}
	asserts.AssertTrace(t)
	return t
end

keys.PutTelemetryRecordsRequest = { ["ResourceARN"] = true, ["Hostname"] = true, ["TelemetryRecords"] = true, ["EC2InstanceId"] = true, nil }

function asserts.AssertPutTelemetryRecordsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutTelemetryRecordsRequest to be of type 'table'")
	assert(struct["TelemetryRecords"], "Expected key TelemetryRecords to exist in table")
	if struct["ResourceARN"] then asserts.AssertString(struct["ResourceARN"]) end
	if struct["Hostname"] then asserts.AssertString(struct["Hostname"]) end
	if struct["TelemetryRecords"] then asserts.AssertTelemetryRecordList(struct["TelemetryRecords"]) end
	if struct["EC2InstanceId"] then asserts.AssertString(struct["EC2InstanceId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutTelemetryRecordsRequest[k], "PutTelemetryRecordsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutTelemetryRecordsRequest
--  
-- @param _ResourceARN [String] <p/>
-- @param _Hostname [String] <p/>
-- @param _TelemetryRecords [TelemetryRecordList] <p/>
-- @param _EC2InstanceId [String] <p/>
-- Required parameter: TelemetryRecords
function M.PutTelemetryRecordsRequest(_ResourceARN, _Hostname, _TelemetryRecords, _EC2InstanceId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutTelemetryRecordsRequest")
	local t = { 
		["ResourceARN"] = _ResourceARN,
		["Hostname"] = _Hostname,
		["TelemetryRecords"] = _TelemetryRecords,
		["EC2InstanceId"] = _EC2InstanceId,
	}
	asserts.AssertPutTelemetryRecordsRequest(t)
	return t
end

keys.BatchGetTracesRequest = { ["NextToken"] = true, ["TraceIds"] = true, nil }

function asserts.AssertBatchGetTracesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetTracesRequest to be of type 'table'")
	assert(struct["TraceIds"], "Expected key TraceIds to exist in table")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["TraceIds"] then asserts.AssertTraceIdList(struct["TraceIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetTracesRequest[k], "BatchGetTracesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetTracesRequest
--  
-- @param _NextToken [String] <p>Pagination token. Not used.</p>
-- @param _TraceIds [TraceIdList] <p>Specify the trace IDs of requests for which to retrieve segments.</p>
-- Required parameter: TraceIds
function M.BatchGetTracesRequest(_NextToken, _TraceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetTracesRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["TraceIds"] = _TraceIds,
	}
	asserts.AssertBatchGetTracesRequest(t)
	return t
end

keys.ErrorStatistics = { ["OtherCount"] = true, ["ThrottleCount"] = true, ["TotalCount"] = true, nil }

function asserts.AssertErrorStatistics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ErrorStatistics to be of type 'table'")
	if struct["OtherCount"] then asserts.AssertNullableLong(struct["OtherCount"]) end
	if struct["ThrottleCount"] then asserts.AssertNullableLong(struct["ThrottleCount"]) end
	if struct["TotalCount"] then asserts.AssertNullableLong(struct["TotalCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.ErrorStatistics[k], "ErrorStatistics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ErrorStatistics
-- <p>Information about requests that failed with a 4xx Client Error status code.</p>
-- @param _OtherCount [NullableLong] <p>The number of requests that failed with untracked 4xx Client Error status codes.</p>
-- @param _ThrottleCount [NullableLong] <p>The number of requests that failed with a 419 throttling status code.</p>
-- @param _TotalCount [NullableLong] <p>The total number of requests that failed with a 4xx Client Error status code.</p>
function M.ErrorStatistics(_OtherCount, _ThrottleCount, _TotalCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ErrorStatistics")
	local t = { 
		["OtherCount"] = _OtherCount,
		["ThrottleCount"] = _ThrottleCount,
		["TotalCount"] = _TotalCount,
	}
	asserts.AssertErrorStatistics(t)
	return t
end

keys.ValueWithServiceIds = { ["AnnotationValue"] = true, ["ServiceIds"] = true, nil }

function asserts.AssertValueWithServiceIds(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValueWithServiceIds to be of type 'table'")
	if struct["AnnotationValue"] then asserts.AssertAnnotationValue(struct["AnnotationValue"]) end
	if struct["ServiceIds"] then asserts.AssertServiceIds(struct["ServiceIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.ValueWithServiceIds[k], "ValueWithServiceIds contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValueWithServiceIds
-- <p>Information about a segment annotation.</p>
-- @param _AnnotationValue [AnnotationValue] <p>Values of the annotation.</p>
-- @param _ServiceIds [ServiceIds] <p>Services to which the annotation applies.</p>
function M.ValueWithServiceIds(_AnnotationValue, _ServiceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValueWithServiceIds")
	local t = { 
		["AnnotationValue"] = _AnnotationValue,
		["ServiceIds"] = _ServiceIds,
	}
	asserts.AssertValueWithServiceIds(t)
	return t
end

keys.Segment = { ["Document"] = true, ["Id"] = true, nil }

function asserts.AssertSegment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Segment to be of type 'table'")
	if struct["Document"] then asserts.AssertSegmentDocument(struct["Document"]) end
	if struct["Id"] then asserts.AssertSegmentId(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.Segment[k], "Segment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Segment
-- <p>A segment from a trace that has been ingested by the X-Ray service. The segment can be compiled from documents uploaded with <a>PutTraceSegments</a>, or an <code>inferred</code> segment for a downstream service, generated from a subsegment sent by the service that called it.</p>
-- @param _Document [SegmentDocument] <p>The segment document</p>
-- @param _Id [SegmentId] <p>The segment's ID.</p>
function M.Segment(_Document, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Segment")
	local t = { 
		["Document"] = _Document,
		["Id"] = _Id,
	}
	asserts.AssertSegment(t)
	return t
end

keys.BatchGetTracesResult = { ["NextToken"] = true, ["Traces"] = true, ["UnprocessedTraceIds"] = true, nil }

function asserts.AssertBatchGetTracesResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetTracesResult to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Traces"] then asserts.AssertTraceList(struct["Traces"]) end
	if struct["UnprocessedTraceIds"] then asserts.AssertUnprocessedTraceIdList(struct["UnprocessedTraceIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetTracesResult[k], "BatchGetTracesResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetTracesResult
--  
-- @param _NextToken [String] <p>Pagination token. Not used.</p>
-- @param _Traces [TraceList] <p>Full traces for the specified requests.</p>
-- @param _UnprocessedTraceIds [UnprocessedTraceIdList] <p>Trace IDs of requests that haven't been processed.</p>
function M.BatchGetTracesResult(_NextToken, _Traces, _UnprocessedTraceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetTracesResult")
	local t = { 
		["NextToken"] = _NextToken,
		["Traces"] = _Traces,
		["UnprocessedTraceIds"] = _UnprocessedTraceIds,
	}
	asserts.AssertBatchGetTracesResult(t)
	return t
end

keys.TraceSummary = { ["HasError"] = true, ["Http"] = true, ["Users"] = true, ["HasFault"] = true, ["Annotations"] = true, ["IsPartial"] = true, ["ResponseTime"] = true, ["ServiceIds"] = true, ["Duration"] = true, ["Id"] = true, ["HasThrottle"] = true, nil }

function asserts.AssertTraceSummary(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TraceSummary to be of type 'table'")
	if struct["HasError"] then asserts.AssertNullableBoolean(struct["HasError"]) end
	if struct["Http"] then asserts.AssertHttp(struct["Http"]) end
	if struct["Users"] then asserts.AssertTraceUsers(struct["Users"]) end
	if struct["HasFault"] then asserts.AssertNullableBoolean(struct["HasFault"]) end
	if struct["Annotations"] then asserts.AssertAnnotations(struct["Annotations"]) end
	if struct["IsPartial"] then asserts.AssertNullableBoolean(struct["IsPartial"]) end
	if struct["ResponseTime"] then asserts.AssertNullableDouble(struct["ResponseTime"]) end
	if struct["ServiceIds"] then asserts.AssertServiceIds(struct["ServiceIds"]) end
	if struct["Duration"] then asserts.AssertNullableDouble(struct["Duration"]) end
	if struct["Id"] then asserts.AssertTraceId(struct["Id"]) end
	if struct["HasThrottle"] then asserts.AssertNullableBoolean(struct["HasThrottle"]) end
	for k,_ in pairs(struct) do
		assert(keys.TraceSummary[k], "TraceSummary contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TraceSummary
-- <p>Metadata generated from the segment documents in a trace.</p>
-- @param _HasError [NullableBoolean] <p>One or more of the segment documents has a 400 series error.</p>
-- @param _Http [Http] <p>Information about the HTTP request served by the trace.</p>
-- @param _Users [TraceUsers] <p>Users from the trace's segment documents.</p>
-- @param _HasFault [NullableBoolean] <p>One or more of the segment documents has a 500 series error.</p>
-- @param _Annotations [Annotations] <p>Annotations from the trace's segment documents.</p>
-- @param _IsPartial [NullableBoolean] <p>One or more of the segment documents is in progress.</p>
-- @param _ResponseTime [NullableDouble] <p>The length of time in seconds between the start and end times of the root segment. If the service performs work asynchronously, the response time measures the time before the response is sent to the user, while the duration measures the amount of time before the last traced activity completes.</p>
-- @param _ServiceIds [ServiceIds] <p>Service IDs from the trace's segment documents.</p>
-- @param _Duration [NullableDouble] <p>The length of time in seconds between the start time of the root segment and the end time of the last segment that completed.</p>
-- @param _Id [TraceId] <p>The unique identifier for the request that generated the trace's segments and subsegments.</p>
-- @param _HasThrottle [NullableBoolean] <p>One or more of the segment documents has a 429 throttling error.</p>
function M.TraceSummary(_HasError, _Http, _Users, _HasFault, _Annotations, _IsPartial, _ResponseTime, _ServiceIds, _Duration, _Id, _HasThrottle, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TraceSummary")
	local t = { 
		["HasError"] = _HasError,
		["Http"] = _Http,
		["Users"] = _Users,
		["HasFault"] = _HasFault,
		["Annotations"] = _Annotations,
		["IsPartial"] = _IsPartial,
		["ResponseTime"] = _ResponseTime,
		["ServiceIds"] = _ServiceIds,
		["Duration"] = _Duration,
		["Id"] = _Id,
		["HasThrottle"] = _HasThrottle,
	}
	asserts.AssertTraceSummary(t)
	return t
end

keys.BackendConnectionErrors = { ["ConnectionRefusedCount"] = true, ["HTTPCode5XXCount"] = true, ["OtherCount"] = true, ["HTTPCode4XXCount"] = true, ["UnknownHostCount"] = true, ["TimeoutCount"] = true, nil }

function asserts.AssertBackendConnectionErrors(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BackendConnectionErrors to be of type 'table'")
	if struct["ConnectionRefusedCount"] then asserts.AssertNullableInteger(struct["ConnectionRefusedCount"]) end
	if struct["HTTPCode5XXCount"] then asserts.AssertNullableInteger(struct["HTTPCode5XXCount"]) end
	if struct["OtherCount"] then asserts.AssertNullableInteger(struct["OtherCount"]) end
	if struct["HTTPCode4XXCount"] then asserts.AssertNullableInteger(struct["HTTPCode4XXCount"]) end
	if struct["UnknownHostCount"] then asserts.AssertNullableInteger(struct["UnknownHostCount"]) end
	if struct["TimeoutCount"] then asserts.AssertNullableInteger(struct["TimeoutCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.BackendConnectionErrors[k], "BackendConnectionErrors contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BackendConnectionErrors
-- <p/>
-- @param _ConnectionRefusedCount [NullableInteger] <p/>
-- @param _HTTPCode5XXCount [NullableInteger] <p/>
-- @param _OtherCount [NullableInteger] <p/>
-- @param _HTTPCode4XXCount [NullableInteger] <p/>
-- @param _UnknownHostCount [NullableInteger] <p/>
-- @param _TimeoutCount [NullableInteger] <p/>
function M.BackendConnectionErrors(_ConnectionRefusedCount, _HTTPCode5XXCount, _OtherCount, _HTTPCode4XXCount, _UnknownHostCount, _TimeoutCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BackendConnectionErrors")
	local t = { 
		["ConnectionRefusedCount"] = _ConnectionRefusedCount,
		["HTTPCode5XXCount"] = _HTTPCode5XXCount,
		["OtherCount"] = _OtherCount,
		["HTTPCode4XXCount"] = _HTTPCode4XXCount,
		["UnknownHostCount"] = _UnknownHostCount,
		["TimeoutCount"] = _TimeoutCount,
	}
	asserts.AssertBackendConnectionErrors(t)
	return t
end

keys.GetTraceGraphRequest = { ["NextToken"] = true, ["TraceIds"] = true, nil }

function asserts.AssertGetTraceGraphRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTraceGraphRequest to be of type 'table'")
	assert(struct["TraceIds"], "Expected key TraceIds to exist in table")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["TraceIds"] then asserts.AssertTraceIdList(struct["TraceIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTraceGraphRequest[k], "GetTraceGraphRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTraceGraphRequest
--  
-- @param _NextToken [String] <p>Pagination token. Not used.</p>
-- @param _TraceIds [TraceIdList] <p>Trace IDs of requests for which to generate a service graph.</p>
-- Required parameter: TraceIds
function M.GetTraceGraphRequest(_NextToken, _TraceIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTraceGraphRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["TraceIds"] = _TraceIds,
	}
	asserts.AssertGetTraceGraphRequest(t)
	return t
end

keys.TelemetryRecord = { ["SegmentsSpilloverCount"] = true, ["BackendConnectionErrors"] = true, ["Timestamp"] = true, ["SegmentsSentCount"] = true, ["SegmentsRejectedCount"] = true, ["SegmentsReceivedCount"] = true, nil }

function asserts.AssertTelemetryRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TelemetryRecord to be of type 'table'")
	if struct["SegmentsSpilloverCount"] then asserts.AssertNullableInteger(struct["SegmentsSpilloverCount"]) end
	if struct["BackendConnectionErrors"] then asserts.AssertBackendConnectionErrors(struct["BackendConnectionErrors"]) end
	if struct["Timestamp"] then asserts.AssertTimestamp(struct["Timestamp"]) end
	if struct["SegmentsSentCount"] then asserts.AssertNullableInteger(struct["SegmentsSentCount"]) end
	if struct["SegmentsRejectedCount"] then asserts.AssertNullableInteger(struct["SegmentsRejectedCount"]) end
	if struct["SegmentsReceivedCount"] then asserts.AssertNullableInteger(struct["SegmentsReceivedCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.TelemetryRecord[k], "TelemetryRecord contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TelemetryRecord
-- <p/>
-- @param _SegmentsSpilloverCount [NullableInteger] <p/>
-- @param _BackendConnectionErrors [BackendConnectionErrors] <p/>
-- @param _Timestamp [Timestamp] <p/>
-- @param _SegmentsSentCount [NullableInteger] <p/>
-- @param _SegmentsRejectedCount [NullableInteger] <p/>
-- @param _SegmentsReceivedCount [NullableInteger] <p/>
function M.TelemetryRecord(_SegmentsSpilloverCount, _BackendConnectionErrors, _Timestamp, _SegmentsSentCount, _SegmentsRejectedCount, _SegmentsReceivedCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TelemetryRecord")
	local t = { 
		["SegmentsSpilloverCount"] = _SegmentsSpilloverCount,
		["BackendConnectionErrors"] = _BackendConnectionErrors,
		["Timestamp"] = _Timestamp,
		["SegmentsSentCount"] = _SegmentsSentCount,
		["SegmentsRejectedCount"] = _SegmentsRejectedCount,
		["SegmentsReceivedCount"] = _SegmentsReceivedCount,
	}
	asserts.AssertTelemetryRecord(t)
	return t
end

keys.Alias = { ["Type"] = true, ["Name"] = true, ["Names"] = true, nil }

function asserts.AssertAlias(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Alias to be of type 'table'")
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Names"] then asserts.AssertAliasNames(struct["Names"]) end
	for k,_ in pairs(struct) do
		assert(keys.Alias[k], "Alias contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Alias
-- <p>An alias for an edge.</p>
-- @param _Type [String] <p>The type of the alias.</p>
-- @param _Name [String] <p>The canonical name of the alias.</p>
-- @param _Names [AliasNames] <p>A list of names for the alias, including the canonical name.</p>
function M.Alias(_Type, _Name, _Names, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Alias")
	local t = { 
		["Type"] = _Type,
		["Name"] = _Name,
		["Names"] = _Names,
	}
	asserts.AssertAlias(t)
	return t
end

keys.Edge = { ["SummaryStatistics"] = true, ["ReferenceId"] = true, ["ResponseTimeHistogram"] = true, ["StartTime"] = true, ["EndTime"] = true, ["Aliases"] = true, nil }

function asserts.AssertEdge(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Edge to be of type 'table'")
	if struct["SummaryStatistics"] then asserts.AssertEdgeStatistics(struct["SummaryStatistics"]) end
	if struct["ReferenceId"] then asserts.AssertNullableInteger(struct["ReferenceId"]) end
	if struct["ResponseTimeHistogram"] then asserts.AssertHistogram(struct["ResponseTimeHistogram"]) end
	if struct["StartTime"] then asserts.AssertTimestamp(struct["StartTime"]) end
	if struct["EndTime"] then asserts.AssertTimestamp(struct["EndTime"]) end
	if struct["Aliases"] then asserts.AssertAliasList(struct["Aliases"]) end
	for k,_ in pairs(struct) do
		assert(keys.Edge[k], "Edge contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Edge
-- <p>Information about a connection between two services.</p>
-- @param _SummaryStatistics [EdgeStatistics] <p>Response statistics for segments on the edge.</p>
-- @param _ReferenceId [NullableInteger] <p>Identifier of the edge. Unique within a service map.</p>
-- @param _ResponseTimeHistogram [Histogram] <p>A histogram that maps the spread of client response times on an edge.</p>
-- @param _StartTime [Timestamp] <p>The start time of the first segment on the edge.</p>
-- @param _EndTime [Timestamp] <p>The end time of the last segment on the edge.</p>
-- @param _Aliases [AliasList] <p>Aliases for the edge.</p>
function M.Edge(_SummaryStatistics, _ReferenceId, _ResponseTimeHistogram, _StartTime, _EndTime, _Aliases, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Edge")
	local t = { 
		["SummaryStatistics"] = _SummaryStatistics,
		["ReferenceId"] = _ReferenceId,
		["ResponseTimeHistogram"] = _ResponseTimeHistogram,
		["StartTime"] = _StartTime,
		["EndTime"] = _EndTime,
		["Aliases"] = _Aliases,
	}
	asserts.AssertEdge(t)
	return t
end

keys.PutTelemetryRecordsResult = { nil }

function asserts.AssertPutTelemetryRecordsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutTelemetryRecordsResult to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PutTelemetryRecordsResult[k], "PutTelemetryRecordsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutTelemetryRecordsResult
--  
function M.PutTelemetryRecordsResult(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutTelemetryRecordsResult")
	local t = { 
	}
	asserts.AssertPutTelemetryRecordsResult(t)
	return t
end

keys.PutTraceSegmentsRequest = { ["TraceSegmentDocuments"] = true, nil }

function asserts.AssertPutTraceSegmentsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutTraceSegmentsRequest to be of type 'table'")
	assert(struct["TraceSegmentDocuments"], "Expected key TraceSegmentDocuments to exist in table")
	if struct["TraceSegmentDocuments"] then asserts.AssertTraceSegmentDocumentList(struct["TraceSegmentDocuments"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutTraceSegmentsRequest[k], "PutTraceSegmentsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutTraceSegmentsRequest
--  
-- @param _TraceSegmentDocuments [TraceSegmentDocumentList] <p>A string containing a JSON document defining one or more segments or subsegments.</p>
-- Required parameter: TraceSegmentDocuments
function M.PutTraceSegmentsRequest(_TraceSegmentDocuments, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutTraceSegmentsRequest")
	local t = { 
		["TraceSegmentDocuments"] = _TraceSegmentDocuments,
	}
	asserts.AssertPutTraceSegmentsRequest(t)
	return t
end

keys.PutTraceSegmentsResult = { ["UnprocessedTraceSegments"] = true, nil }

function asserts.AssertPutTraceSegmentsResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutTraceSegmentsResult to be of type 'table'")
	if struct["UnprocessedTraceSegments"] then asserts.AssertUnprocessedTraceSegmentList(struct["UnprocessedTraceSegments"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutTraceSegmentsResult[k], "PutTraceSegmentsResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutTraceSegmentsResult
--  
-- @param _UnprocessedTraceSegments [UnprocessedTraceSegmentList] <p>Segments that failed processing.</p>
function M.PutTraceSegmentsResult(_UnprocessedTraceSegments, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutTraceSegmentsResult")
	local t = { 
		["UnprocessedTraceSegments"] = _UnprocessedTraceSegments,
	}
	asserts.AssertPutTraceSegmentsResult(t)
	return t
end

keys.GetTraceGraphResult = { ["Services"] = true, ["NextToken"] = true, nil }

function asserts.AssertGetTraceGraphResult(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTraceGraphResult to be of type 'table'")
	if struct["Services"] then asserts.AssertServiceList(struct["Services"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTraceGraphResult[k], "GetTraceGraphResult contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTraceGraphResult
--  
-- @param _Services [ServiceList] <p>The services that have processed one of the specified requests.</p>
-- @param _NextToken [String] <p>Pagination token. Not used.</p>
function M.GetTraceGraphResult(_Services, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTraceGraphResult")
	local t = { 
		["Services"] = _Services,
		["NextToken"] = _NextToken,
	}
	asserts.AssertGetTraceGraphResult(t)
	return t
end

keys.ServiceStatistics = { ["ErrorStatistics"] = true, ["FaultStatistics"] = true, ["OkCount"] = true, ["TotalResponseTime"] = true, ["TotalCount"] = true, nil }

function asserts.AssertServiceStatistics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceStatistics to be of type 'table'")
	if struct["ErrorStatistics"] then asserts.AssertErrorStatistics(struct["ErrorStatistics"]) end
	if struct["FaultStatistics"] then asserts.AssertFaultStatistics(struct["FaultStatistics"]) end
	if struct["OkCount"] then asserts.AssertNullableLong(struct["OkCount"]) end
	if struct["TotalResponseTime"] then asserts.AssertNullableDouble(struct["TotalResponseTime"]) end
	if struct["TotalCount"] then asserts.AssertNullableLong(struct["TotalCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceStatistics[k], "ServiceStatistics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceStatistics
-- <p>Response statistics for a service.</p>
-- @param _ErrorStatistics [ErrorStatistics] <p>Information about requests that failed with a 4xx Client Error status code.</p>
-- @param _FaultStatistics [FaultStatistics] <p>Information about requests that failed with a 5xx Server Error status code.</p>
-- @param _OkCount [NullableLong] <p>The number of requests that completed with a 2xx Success status code.</p>
-- @param _TotalResponseTime [NullableDouble] <p>The aggregate response time of completed requests.</p>
-- @param _TotalCount [NullableLong] <p>The total number of completed requests.</p>
function M.ServiceStatistics(_ErrorStatistics, _FaultStatistics, _OkCount, _TotalResponseTime, _TotalCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceStatistics")
	local t = { 
		["ErrorStatistics"] = _ErrorStatistics,
		["FaultStatistics"] = _FaultStatistics,
		["OkCount"] = _OkCount,
		["TotalResponseTime"] = _TotalResponseTime,
		["TotalCount"] = _TotalCount,
	}
	asserts.AssertServiceStatistics(t)
	return t
end

keys.UnprocessedTraceSegment = { ["ErrorCode"] = true, ["Message"] = true, ["Id"] = true, nil }

function asserts.AssertUnprocessedTraceSegment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnprocessedTraceSegment to be of type 'table'")
	if struct["ErrorCode"] then asserts.AssertString(struct["ErrorCode"]) end
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["Id"] then asserts.AssertString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnprocessedTraceSegment[k], "UnprocessedTraceSegment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnprocessedTraceSegment
-- <p>Information about a segment that failed processing.</p>
-- @param _ErrorCode [String] <p>The error that caused processing to fail.</p>
-- @param _Message [String] <p>The error message.</p>
-- @param _Id [String] <p>The segment's ID.</p>
function M.UnprocessedTraceSegment(_ErrorCode, _Message, _Id, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnprocessedTraceSegment")
	local t = { 
		["ErrorCode"] = _ErrorCode,
		["Message"] = _Message,
		["Id"] = _Id,
	}
	asserts.AssertUnprocessedTraceSegment(t)
	return t
end

keys.EdgeStatistics = { ["ErrorStatistics"] = true, ["FaultStatistics"] = true, ["OkCount"] = true, ["TotalResponseTime"] = true, ["TotalCount"] = true, nil }

function asserts.AssertEdgeStatistics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EdgeStatistics to be of type 'table'")
	if struct["ErrorStatistics"] then asserts.AssertErrorStatistics(struct["ErrorStatistics"]) end
	if struct["FaultStatistics"] then asserts.AssertFaultStatistics(struct["FaultStatistics"]) end
	if struct["OkCount"] then asserts.AssertNullableLong(struct["OkCount"]) end
	if struct["TotalResponseTime"] then asserts.AssertNullableDouble(struct["TotalResponseTime"]) end
	if struct["TotalCount"] then asserts.AssertNullableLong(struct["TotalCount"]) end
	for k,_ in pairs(struct) do
		assert(keys.EdgeStatistics[k], "EdgeStatistics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EdgeStatistics
-- <p>Response statistics for an edge.</p>
-- @param _ErrorStatistics [ErrorStatistics] <p>Information about requests that failed with a 4xx Client Error status code.</p>
-- @param _FaultStatistics [FaultStatistics] <p>Information about requests that failed with a 5xx Server Error status code.</p>
-- @param _OkCount [NullableLong] <p>The number of requests that completed with a 2xx Success status code.</p>
-- @param _TotalResponseTime [NullableDouble] <p>The aggregate response time of completed requests.</p>
-- @param _TotalCount [NullableLong] <p>The total number of completed requests.</p>
function M.EdgeStatistics(_ErrorStatistics, _FaultStatistics, _OkCount, _TotalResponseTime, _TotalCount, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EdgeStatistics")
	local t = { 
		["ErrorStatistics"] = _ErrorStatistics,
		["FaultStatistics"] = _FaultStatistics,
		["OkCount"] = _OkCount,
		["TotalResponseTime"] = _TotalResponseTime,
		["TotalCount"] = _TotalCount,
	}
	asserts.AssertEdgeStatistics(t)
	return t
end

keys.ServiceId = { ["AccountId"] = true, ["Type"] = true, ["Name"] = true, ["Names"] = true, nil }

function asserts.AssertServiceId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceId to be of type 'table'")
	if struct["AccountId"] then asserts.AssertString(struct["AccountId"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Names"] then asserts.AssertServiceNames(struct["Names"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceId[k], "ServiceId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceId
-- <p/>
-- @param _AccountId [String] <p/>
-- @param _Type [String] <p/>
-- @param _Name [String] <p/>
-- @param _Names [ServiceNames] <p/>
function M.ServiceId(_AccountId, _Type, _Name, _Names, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceId")
	local t = { 
		["AccountId"] = _AccountId,
		["Type"] = _Type,
		["Name"] = _Name,
		["Names"] = _Names,
	}
	asserts.AssertServiceId(t)
	return t
end

function asserts.AssertFilterExpression(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterExpression to be of type 'string'")
	assert(#str <= 2000, "Expected string to be max 2000 characters")
end

--  
function M.FilterExpression(str)
	asserts.AssertFilterExpression(str)
	return str
end

function asserts.AssertTraceSegmentDocument(str)
	assert(str)
	assert(type(str) == "string", "Expected TraceSegmentDocument to be of type 'string'")
end

--  
function M.TraceSegmentDocument(str)
	asserts.AssertTraceSegmentDocument(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertSegmentDocument(str)
	assert(str)
	assert(type(str) == "string", "Expected SegmentDocument to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SegmentDocument(str)
	asserts.AssertSegmentDocument(str)
	return str
end

function asserts.AssertTraceId(str)
	assert(str)
	assert(type(str) == "string", "Expected TraceId to be of type 'string'")
	assert(#str <= 35, "Expected string to be max 35 characters")
	assert(#str >= 35, "Expected string to be min 35 characters")
end

--  
function M.TraceId(str)
	asserts.AssertTraceId(str)
	return str
end

function asserts.AssertSegmentId(str)
	assert(str)
	assert(type(str) == "string", "Expected SegmentId to be of type 'string'")
	assert(#str <= 16, "Expected string to be max 16 characters")
	assert(#str >= 16, "Expected string to be min 16 characters")
end

--  
function M.SegmentId(str)
	asserts.AssertSegmentId(str)
	return str
end

function asserts.AssertAnnotationKey(str)
	assert(str)
	assert(type(str) == "string", "Expected AnnotationKey to be of type 'string'")
end

--  
function M.AnnotationKey(str)
	asserts.AssertAnnotationKey(str)
	return str
end

function asserts.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	asserts.AssertDouble(double)
	return double
end

function asserts.AssertNullableDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected NullableDouble to be of type 'number'")
end

function M.NullableDouble(double)
	asserts.AssertNullableDouble(double)
	return double
end

function asserts.AssertNullableLong(long)
	assert(long)
	assert(type(long) == "number", "Expected NullableLong to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.NullableLong(long)
	asserts.AssertNullableLong(long)
	return long
end

function asserts.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	asserts.AssertInteger(integer)
	return integer
end

function asserts.AssertNullableInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NullableInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.NullableInteger(integer)
	asserts.AssertNullableInteger(integer)
	return integer
end

function asserts.AssertNullableBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected NullableBoolean to be of type 'boolean'")
end

function M.NullableBoolean(boolean)
	asserts.AssertNullableBoolean(boolean)
	return boolean
end

function asserts.AssertAnnotations(map)
	assert(map)
	assert(type(map) == "table", "Expected Annotations to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertAnnotationKey(k)
		asserts.AssertValuesWithServiceIds(v)
	end
end

function M.Annotations(map)
	asserts.AssertAnnotations(map)
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

function asserts.AssertAliasNames(list)
	assert(list)
	assert(type(list) == "table", "Expected AliasNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.AliasNames(list)
	asserts.AssertAliasNames(list)
	return list
end

function asserts.AssertEdgeList(list)
	assert(list)
	assert(type(list) == "table", "Expected EdgeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEdge(v)
	end
end

--  
-- List of Edge objects
function M.EdgeList(list)
	asserts.AssertEdgeList(list)
	return list
end

function asserts.AssertServiceIds(list)
	assert(list)
	assert(type(list) == "table", "Expected ServiceIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertServiceId(v)
	end
end

--  
-- List of ServiceId objects
function M.ServiceIds(list)
	asserts.AssertServiceIds(list)
	return list
end

function asserts.AssertSegmentList(list)
	assert(list)
	assert(type(list) == "table", "Expected SegmentList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSegment(v)
	end
end

--  
-- List of Segment objects
function M.SegmentList(list)
	asserts.AssertSegmentList(list)
	return list
end

function asserts.AssertTraceList(list)
	assert(list)
	assert(type(list) == "table", "Expected TraceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTrace(v)
	end
end

--  
-- List of Trace objects
function M.TraceList(list)
	asserts.AssertTraceList(list)
	return list
end

function asserts.AssertValuesWithServiceIds(list)
	assert(list)
	assert(type(list) == "table", "Expected ValuesWithServiceIds to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertValueWithServiceIds(v)
	end
end

--  
-- List of ValueWithServiceIds objects
function M.ValuesWithServiceIds(list)
	asserts.AssertValuesWithServiceIds(list)
	return list
end

function asserts.AssertUnprocessedTraceIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected UnprocessedTraceIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTraceId(v)
	end
end

--  
-- List of TraceId objects
function M.UnprocessedTraceIdList(list)
	asserts.AssertUnprocessedTraceIdList(list)
	return list
end

function asserts.AssertHistogram(list)
	assert(list)
	assert(type(list) == "table", "Expected Histogram to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertHistogramEntry(v)
	end
end

--  
-- List of HistogramEntry objects
function M.Histogram(list)
	asserts.AssertHistogram(list)
	return list
end

function asserts.AssertTraceUsers(list)
	assert(list)
	assert(type(list) == "table", "Expected TraceUsers to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTraceUser(v)
	end
end

--  
-- List of TraceUser objects
function M.TraceUsers(list)
	asserts.AssertTraceUsers(list)
	return list
end

function asserts.AssertTraceSummaryList(list)
	assert(list)
	assert(type(list) == "table", "Expected TraceSummaryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTraceSummary(v)
	end
end

--  
-- List of TraceSummary objects
function M.TraceSummaryList(list)
	asserts.AssertTraceSummaryList(list)
	return list
end

function asserts.AssertUnprocessedTraceSegmentList(list)
	assert(list)
	assert(type(list) == "table", "Expected UnprocessedTraceSegmentList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUnprocessedTraceSegment(v)
	end
end

--  
-- List of UnprocessedTraceSegment objects
function M.UnprocessedTraceSegmentList(list)
	asserts.AssertUnprocessedTraceSegmentList(list)
	return list
end

function asserts.AssertTraceSegmentDocumentList(list)
	assert(list)
	assert(type(list) == "table", "Expected TraceSegmentDocumentList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTraceSegmentDocument(v)
	end
end

--  
-- List of TraceSegmentDocument objects
function M.TraceSegmentDocumentList(list)
	asserts.AssertTraceSegmentDocumentList(list)
	return list
end

function asserts.AssertTelemetryRecordList(list)
	assert(list)
	assert(type(list) == "table", "Expected TelemetryRecordList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTelemetryRecord(v)
	end
end

--  
-- List of TelemetryRecord objects
function M.TelemetryRecordList(list)
	asserts.AssertTelemetryRecordList(list)
	return list
end

function asserts.AssertTraceIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected TraceIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTraceId(v)
	end
end

--  
-- List of TraceId objects
function M.TraceIdList(list)
	asserts.AssertTraceIdList(list)
	return list
end

function asserts.AssertAliasList(list)
	assert(list)
	assert(type(list) == "table", "Expected AliasList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAlias(v)
	end
end

--  
-- List of Alias objects
function M.AliasList(list)
	asserts.AssertAliasList(list)
	return list
end

function asserts.AssertServiceNames(list)
	assert(list)
	assert(type(list) == "table", "Expected ServiceNames to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ServiceNames(list)
	asserts.AssertServiceNames(list)
	return list
end

function asserts.AssertServiceList(list)
	assert(list)
	assert(type(list) == "table", "Expected ServiceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertService(v)
	end
end

--  
-- List of Service objects
function M.ServiceList(list)
	asserts.AssertServiceList(list)
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
