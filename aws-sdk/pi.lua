--- GENERATED CODE - DO NOT MODIFY
-- AWS Performance Insights (pi-2018-02-27)

local M = {}

M.metadata = {
	api_version = "2018-02-27",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "pi",
	service_abbreviation = "AWS PI",
	service_full_name = "AWS Performance Insights",
	signature_version = "v4",
	target_prefix = "PerformanceInsightsv20180227",
	timestamp_format = "",
	global_endpoint = "",
	uid = "pi-2018-02-27",
}

local keys = {}
local asserts = {}

keys.InternalServiceError = { ["Message"] = true, nil }

function asserts.AssertInternalServiceError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServiceError to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServiceError[k], "InternalServiceError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServiceError
-- <p>The request failed due to an unknown error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InternalServiceError structure as a key-value pair table
function M.InternalServiceError(args)
	assert(args, "You must provide an argument table when creating InternalServiceError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInternalServiceError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDimensionKeysResponse = { ["Keys"] = true, ["PartitionKeys"] = true, ["AlignedStartTime"] = true, ["NextToken"] = true, ["AlignedEndTime"] = true, nil }

function asserts.AssertDescribeDimensionKeysResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDimensionKeysResponse to be of type 'table'")
	if struct["Keys"] then asserts.AssertDimensionKeyDescriptionList(struct["Keys"]) end
	if struct["PartitionKeys"] then asserts.AssertResponsePartitionKeyList(struct["PartitionKeys"]) end
	if struct["AlignedStartTime"] then asserts.AssertISOTimestamp(struct["AlignedStartTime"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["AlignedEndTime"] then asserts.AssertISOTimestamp(struct["AlignedEndTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDimensionKeysResponse[k], "DescribeDimensionKeysResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDimensionKeysResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Keys [DimensionKeyDescriptionList] <p>The dimension keys that were requested.</p>
-- * PartitionKeys [ResponsePartitionKeyList] <p>If <code>PartitionBy</code> was present in the request, <code>PartitionKeys</code> contains the breakdown of dimension keys by the specified partitions.</p>
-- * AlignedStartTime [ISOTimestamp] <p>The start time for the returned dimension keys, after alignment to a granular boundary (as specified by <code>PeriodInSeconds</code>). <code>AlignedStartTime</code> will be less than or equal to the value of the user-specified <code>StartTime</code>.</p>
-- * NextToken [String] <p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the token, up to the value specified by <code>MaxRecords</code>.</p>
-- * AlignedEndTime [ISOTimestamp] <p>The end time for the returned dimension keys, after alignment to a granular boundary (as specified by <code>PeriodInSeconds</code>). <code>AlignedEndTime</code> will be greater than or equal to the value of the user-specified <code>Endtime</code>.</p>
-- @return DescribeDimensionKeysResponse structure as a key-value pair table
function M.DescribeDimensionKeysResponse(args)
	assert(args, "You must provide an argument table when creating DescribeDimensionKeysResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Keys"] = args["Keys"],
		["PartitionKeys"] = args["PartitionKeys"],
		["AlignedStartTime"] = args["AlignedStartTime"],
		["NextToken"] = args["NextToken"],
		["AlignedEndTime"] = args["AlignedEndTime"],
	}
	asserts.AssertDescribeDimensionKeysResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DimensionGroup = { ["Limit"] = true, ["Group"] = true, ["Dimensions"] = true, nil }

function asserts.AssertDimensionGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DimensionGroup to be of type 'table'")
	assert(struct["Group"], "Expected key Group to exist in table")
	if struct["Limit"] then asserts.AssertLimit(struct["Limit"]) end
	if struct["Group"] then asserts.AssertString(struct["Group"]) end
	if struct["Dimensions"] then asserts.AssertStringList(struct["Dimensions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DimensionGroup[k], "DimensionGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DimensionGroup
-- <p>A logical grouping of Performance Insights metrics for a related subject area. For example, the <code>db.sql</code> dimension group consists of the following dimensions: <code>db.sql.id</code>, <code>db.sql.db_id</code>, <code>db.sql.statement</code>, and <code>db.sql.tokenized_id</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Limit [Limit] <p>The maximum number of items to fetch for this dimension group.</p>
-- * Group [String] <p>The name of the dimension group. Valid values are:</p> <ul> <li> <p> <code>db.user</code> </p> </li> <li> <p> <code>db.host</code> </p> </li> <li> <p> <code>db.sql</code> </p> </li> <li> <p> <code>db.sql_tokenized</code> </p> </li> <li> <p> <code>db.wait_event</code> </p> </li> <li> <p> <code>db.wait_event_type</code> </p> </li> </ul>
-- * Dimensions [StringList] <p>A list of specific dimensions from a dimension group. If this parameter is not present, then it signifies that all of the dimensions in the group were requested, or are present in the response.</p> <p>Valid values for elements in the <code>Dimensions</code> array are:</p> <ul> <li> <p>db.user.id</p> </li> <li> <p>db.user.name</p> </li> <li> <p>db.host.id</p> </li> <li> <p>db.host.name</p> </li> <li> <p>db.sql.id</p> </li> <li> <p>db.sql.db_id</p> </li> <li> <p>db.sql.statement</p> </li> <li> <p>db.sql.tokenized_id</p> </li> <li> <p>db.sql_tokenized.id</p> </li> <li> <p>db.sql_tokenized.db_id</p> </li> <li> <p>db.sql_tokenized.statement</p> </li> <li> <p>db.wait_event.name</p> </li> <li> <p>db.wait_event.type</p> </li> <li> <p>db.wait_event_type.name</p> </li> </ul>
-- Required key: Group
-- @return DimensionGroup structure as a key-value pair table
function M.DimensionGroup(args)
	assert(args, "You must provide an argument table when creating DimensionGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Limit"] = args["Limit"],
		["Group"] = args["Group"],
		["Dimensions"] = args["Dimensions"],
	}
	asserts.AssertDimensionGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDimensionKeysRequest = { ["ServiceType"] = true, ["Identifier"] = true, ["NextToken"] = true, ["Metric"] = true, ["MaxResults"] = true, ["Filter"] = true, ["PeriodInSeconds"] = true, ["StartTime"] = true, ["EndTime"] = true, ["GroupBy"] = true, ["PartitionBy"] = true, nil }

function asserts.AssertDescribeDimensionKeysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDimensionKeysRequest to be of type 'table'")
	assert(struct["ServiceType"], "Expected key ServiceType to exist in table")
	assert(struct["Identifier"], "Expected key Identifier to exist in table")
	assert(struct["StartTime"], "Expected key StartTime to exist in table")
	assert(struct["EndTime"], "Expected key EndTime to exist in table")
	assert(struct["Metric"], "Expected key Metric to exist in table")
	assert(struct["GroupBy"], "Expected key GroupBy to exist in table")
	if struct["ServiceType"] then asserts.AssertServiceType(struct["ServiceType"]) end
	if struct["Identifier"] then asserts.AssertString(struct["Identifier"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["Metric"] then asserts.AssertString(struct["Metric"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["Filter"] then asserts.AssertMetricQueryFilterMap(struct["Filter"]) end
	if struct["PeriodInSeconds"] then asserts.AssertInteger(struct["PeriodInSeconds"]) end
	if struct["StartTime"] then asserts.AssertISOTimestamp(struct["StartTime"]) end
	if struct["EndTime"] then asserts.AssertISOTimestamp(struct["EndTime"]) end
	if struct["GroupBy"] then asserts.AssertDimensionGroup(struct["GroupBy"]) end
	if struct["PartitionBy"] then asserts.AssertDimensionGroup(struct["PartitionBy"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDimensionKeysRequest[k], "DescribeDimensionKeysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDimensionKeysRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceType [ServiceType] <p>The AWS service for which Performance Insights will return metrics. The only valid value for <i>ServiceType</i> is: <code>RDS</code> </p>
-- * Identifier [String] <p>An immutable, AWS Region-unique identifier for a data source. Performance Insights gathers metrics from this data source.</p> <p>To use an Amazon RDS instance as a data source, you specify its <code>DbiResourceId</code> value - for example: <code>db-FAIHNTYBKTGAUSUZQYPDS2GW4A</code> </p>
-- * NextToken [String] <p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the token, up to the value specified by <code>MaxRecords</code>.</p>
-- * Metric [String] <p>The name of a Performance Insights metric to be measured.</p> <p>Valid values for <code>Metric</code> are:</p> <ul> <li> <p> <code>db.load.avg</code> - a scaled representation of the number of active sessions for the database engine.</p> </li> <li> <p> <code>db.sampledload.avg</code> - the raw number of active sessions for the database engine.</p> </li> </ul>
-- * MaxResults [MaxResults] <p>The maximum number of items to return in the response. If more items exist than the specified <code>MaxRecords</code> value, a pagination token is included in the response so that the remaining results can be retrieved. </p>
-- * Filter [MetricQueryFilterMap] <p>One or more filters to apply in the request. Restrictions:</p> <ul> <li> <p>Any number of filters by the same dimension, as specified in the <code>GroupBy</code> or <code>Partition</code> parameters.</p> </li> <li> <p>A single filter for any other dimension in this dimension group.</p> </li> </ul>
-- * PeriodInSeconds [Integer] <p>The granularity, in seconds, of the data points returned from Performance Insights. A period can be as short as one second, or as long as one day (86400 seconds). Valid values are:</p> <ul> <li> <p> <code>1</code> (one second)</p> </li> <li> <p> <code>60</code> (one minute)</p> </li> <li> <p> <code>300</code> (five minutes)</p> </li> <li> <p> <code>3600</code> (one hour)</p> </li> <li> <p> <code>86400</code> (twenty-four hours)</p> </li> </ul> <p>If you don't specify <code>PeriodInSeconds</code>, then Performance Insights will choose a value for you, with a goal of returning roughly 100-200 data points in the response.</p>
-- * StartTime [ISOTimestamp] <p>The date and time specifying the beginning of the requested time series data. You can't specify a <code>StartTime</code> that's earlier than 7 days ago. The value specified is <i>inclusive</i> - data points equal to or greater than <code>StartTime</code> will be returned.</p> <p>The value for <code>StartTime</code> must be earlier than the value for <code>EndTime</code>.</p>
-- * EndTime [ISOTimestamp] <p>The date and time specifying the end of the requested time series data. The value specified is <i>exclusive</i> - data points less than (but not equal to) <code>EndTime</code> will be returned.</p> <p>The value for <code>EndTime</code> must be later than the value for <code>StartTime</code>.</p>
-- * GroupBy [DimensionGroup] <p>A specification for how to aggregate the data points from a query result. You must specify a valid dimension group. Performance Insights will return all of the dimensions within that group, unless you provide the names of specific dimensions within that group. You can also request that Performance Insights return a limited number of values for a dimension.</p>
-- * PartitionBy [DimensionGroup] <p>For each dimension specified in <code>GroupBy</code>, specify a secondary dimension to further subdivide the partition keys in the response.</p>
-- Required key: ServiceType
-- Required key: Identifier
-- Required key: StartTime
-- Required key: EndTime
-- Required key: Metric
-- Required key: GroupBy
-- @return DescribeDimensionKeysRequest structure as a key-value pair table
function M.DescribeDimensionKeysRequest(args)
	assert(args, "You must provide an argument table when creating DescribeDimensionKeysRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServiceType"] = args["ServiceType"],
		["Identifier"] = args["Identifier"],
		["NextToken"] = args["NextToken"],
		["Metric"] = args["Metric"],
		["MaxResults"] = args["MaxResults"],
		["Filter"] = args["Filter"],
		["PeriodInSeconds"] = args["PeriodInSeconds"],
		["StartTime"] = args["StartTime"],
		["EndTime"] = args["EndTime"],
		["GroupBy"] = args["GroupBy"],
		["PartitionBy"] = args["PartitionBy"],
	}
	asserts.AssertDescribeDimensionKeysRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResponsePartitionKey = { ["Dimensions"] = true, nil }

function asserts.AssertResponsePartitionKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResponsePartitionKey to be of type 'table'")
	assert(struct["Dimensions"], "Expected key Dimensions to exist in table")
	if struct["Dimensions"] then asserts.AssertDimensionMap(struct["Dimensions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResponsePartitionKey[k], "ResponsePartitionKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResponsePartitionKey
-- <p>If <code>PartitionBy</code> was specified in a <code>DescribeDimensionKeys</code> request, the dimensions are returned in an array. Each element in the array specifies one dimension. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Dimensions [DimensionMap] <p>A dimension map that contains the dimension(s) for this partition.</p>
-- Required key: Dimensions
-- @return ResponsePartitionKey structure as a key-value pair table
function M.ResponsePartitionKey(args)
	assert(args, "You must provide an argument table when creating ResponsePartitionKey")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Dimensions"] = args["Dimensions"],
	}
	asserts.AssertResponsePartitionKey(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotAuthorizedException = { ["Message"] = true, nil }

function asserts.AssertNotAuthorizedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotAuthorizedException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotAuthorizedException[k], "NotAuthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotAuthorizedException
-- <p>The user is not authorized to perform this request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return NotAuthorizedException structure as a key-value pair table
function M.NotAuthorizedException(args)
	assert(args, "You must provide an argument table when creating NotAuthorizedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertNotAuthorizedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DimensionKeyDescription = { ["Total"] = true, ["Dimensions"] = true, ["Partitions"] = true, nil }

function asserts.AssertDimensionKeyDescription(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DimensionKeyDescription to be of type 'table'")
	if struct["Total"] then asserts.AssertDouble(struct["Total"]) end
	if struct["Dimensions"] then asserts.AssertDimensionMap(struct["Dimensions"]) end
	if struct["Partitions"] then asserts.AssertMetricValuesList(struct["Partitions"]) end
	for k,_ in pairs(struct) do
		assert(keys.DimensionKeyDescription[k], "DimensionKeyDescription contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DimensionKeyDescription
-- <p>An array of descriptions and aggregated values for each dimension within a dimension group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Total [Double] <p>The aggregated metric value for the dimension(s), over the requested time range.</p>
-- * Dimensions [DimensionMap] <p>A map of name-value pairs for the dimensions in the group.</p>
-- * Partitions [MetricValuesList] <p>If <code>PartitionBy</code> was specified, <code>PartitionKeys</code> contains the dimensions that were.</p>
-- @return DimensionKeyDescription structure as a key-value pair table
function M.DimensionKeyDescription(args)
	assert(args, "You must provide an argument table when creating DimensionKeyDescription")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Total"] = args["Total"],
		["Dimensions"] = args["Dimensions"],
		["Partitions"] = args["Partitions"],
	}
	asserts.AssertDimensionKeyDescription(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetResourceMetricsResponse = { ["Identifier"] = true, ["AlignedStartTime"] = true, ["NextToken"] = true, ["MetricList"] = true, ["AlignedEndTime"] = true, nil }

function asserts.AssertGetResourceMetricsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetResourceMetricsResponse to be of type 'table'")
	if struct["Identifier"] then asserts.AssertString(struct["Identifier"]) end
	if struct["AlignedStartTime"] then asserts.AssertISOTimestamp(struct["AlignedStartTime"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MetricList"] then asserts.AssertMetricKeyDataPointsList(struct["MetricList"]) end
	if struct["AlignedEndTime"] then asserts.AssertISOTimestamp(struct["AlignedEndTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetResourceMetricsResponse[k], "GetResourceMetricsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetResourceMetricsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Identifier [String] <p>An immutable, AWS Region-unique identifier for a data source. Performance Insights gathers metrics from this data source.</p> <p>To use an Amazon RDS instance as a data source, you specify its <code>DbiResourceId</code> value - for example: <code>db-FAIHNTYBKTGAUSUZQYPDS2GW4A</code> </p>
-- * AlignedStartTime [ISOTimestamp] <p>The start time for the returned metrics, after alignment to a granular boundary (as specified by <code>PeriodInSeconds</code>). <code>AlignedStartTime</code> will be less than or equal to the value of the user-specified <code>StartTime</code>.</p>
-- * NextToken [String] <p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the token, up to the value specified by <code>MaxRecords</code>.</p>
-- * MetricList [MetricKeyDataPointsList] <p>An array of metric results,, where each array element contains all of the data points for a particular dimension.</p>
-- * AlignedEndTime [ISOTimestamp] <p>The end time for the returned metrics, after alignment to a granular boundary (as specified by <code>PeriodInSeconds</code>). <code>AlignedEndTime</code> will be greater than or equal to the value of the user-specified <code>Endtime</code>.</p>
-- @return GetResourceMetricsResponse structure as a key-value pair table
function M.GetResourceMetricsResponse(args)
	assert(args, "You must provide an argument table when creating GetResourceMetricsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Identifier"] = args["Identifier"],
		["AlignedStartTime"] = args["AlignedStartTime"],
		["NextToken"] = args["NextToken"],
		["MetricList"] = args["MetricList"],
		["AlignedEndTime"] = args["AlignedEndTime"],
	}
	asserts.AssertGetResourceMetricsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MetricKeyDataPoints = { ["Key"] = true, ["DataPoints"] = true, nil }

function asserts.AssertMetricKeyDataPoints(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricKeyDataPoints to be of type 'table'")
	if struct["Key"] then asserts.AssertResponseResourceMetricKey(struct["Key"]) end
	if struct["DataPoints"] then asserts.AssertDataPointsList(struct["DataPoints"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricKeyDataPoints[k], "MetricKeyDataPoints contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricKeyDataPoints
-- <p>A time-ordered series of data points, correpsonding to a dimension of a Performance Insights metric.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Key [ResponseResourceMetricKey] <p>The dimension(s) to which the data points apply.</p>
-- * DataPoints [DataPointsList] <p>An array of timestamp-value pairs, representing measurements over a period of time.</p>
-- @return MetricKeyDataPoints structure as a key-value pair table
function M.MetricKeyDataPoints(args)
	assert(args, "You must provide an argument table when creating MetricKeyDataPoints")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Key"] = args["Key"],
		["DataPoints"] = args["DataPoints"],
	}
	asserts.AssertMetricKeyDataPoints(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidArgumentException = { ["Message"] = true, nil }

function asserts.AssertInvalidArgumentException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidArgumentException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidArgumentException[k], "InvalidArgumentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArgumentException
-- <p>One of the arguments provided is invalid for this request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidArgumentException structure as a key-value pair table
function M.InvalidArgumentException(args)
	assert(args, "You must provide an argument table when creating InvalidArgumentException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidArgumentException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetResourceMetricsRequest = { ["ServiceType"] = true, ["Identifier"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["MetricQueries"] = true, ["PeriodInSeconds"] = true, ["StartTime"] = true, ["EndTime"] = true, nil }

function asserts.AssertGetResourceMetricsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetResourceMetricsRequest to be of type 'table'")
	assert(struct["ServiceType"], "Expected key ServiceType to exist in table")
	assert(struct["Identifier"], "Expected key Identifier to exist in table")
	assert(struct["MetricQueries"], "Expected key MetricQueries to exist in table")
	assert(struct["StartTime"], "Expected key StartTime to exist in table")
	assert(struct["EndTime"], "Expected key EndTime to exist in table")
	if struct["ServiceType"] then asserts.AssertServiceType(struct["ServiceType"]) end
	if struct["Identifier"] then asserts.AssertString(struct["Identifier"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["MetricQueries"] then asserts.AssertMetricQueryList(struct["MetricQueries"]) end
	if struct["PeriodInSeconds"] then asserts.AssertInteger(struct["PeriodInSeconds"]) end
	if struct["StartTime"] then asserts.AssertISOTimestamp(struct["StartTime"]) end
	if struct["EndTime"] then asserts.AssertISOTimestamp(struct["EndTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetResourceMetricsRequest[k], "GetResourceMetricsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetResourceMetricsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ServiceType [ServiceType] <p>The AWS service for which Performance Insights will return metrics. The only valid value for <i>ServiceType</i> is: <code>RDS</code> </p>
-- * Identifier [String] <p>An immutable, AWS Region-unique identifier for a data source. Performance Insights gathers metrics from this data source.</p> <p>To use an Amazon RDS instance as a data source, you specify its <code>DbiResourceId</code> value - for example: <code>db-FAIHNTYBKTGAUSUZQYPDS2GW4A</code> </p>
-- * NextToken [String] <p>An optional pagination token provided by a previous request. If this parameter is specified, the response includes only records beyond the token, up to the value specified by <code>MaxRecords</code>.</p>
-- * MaxResults [MaxResults] <p>The maximum number of items to return in the response. If more items exist than the specified <code>MaxRecords</code> value, a pagination token is included in the response so that the remaining results can be retrieved. </p>
-- * MetricQueries [MetricQueryList] <p>An array of one or more queries to perform. Each query must specify a Performance Insights metric, and can optionally specify aggregation and filtering criteria.</p>
-- * PeriodInSeconds [Integer] <p>The granularity, in seconds, of the data points returned from Performance Insights. A period can be as short as one second, or as long as one day (86400 seconds). Valid values are:</p> <ul> <li> <p> <code>1</code> (one second)</p> </li> <li> <p> <code>60</code> (one minute)</p> </li> <li> <p> <code>300</code> (five minutes)</p> </li> <li> <p> <code>3600</code> (one hour)</p> </li> <li> <p> <code>86400</code> (twenty-four hours)</p> </li> </ul> <p>If you don't specify <code>PeriodInSeconds</code>, then Performance Insights will choose a value for you, with a goal of returning roughly 100-200 data points in the response.</p>
-- * StartTime [ISOTimestamp] <p>The date and time specifying the beginning of the requested time series data. You can't specify a <code>StartTime</code> that's earlier than 7 days ago. The value specified is <i>inclusive</i> - data points equal to or greater than <code>StartTime</code> will be returned.</p> <p>The value for <code>StartTime</code> must be earlier than the value for <code>EndTime</code>.</p>
-- * EndTime [ISOTimestamp] <p>The date and time specifiying the end of the requested time series data. The value specified is <i>exclusive</i> - data points less than (but not equal to) <code>EndTime</code> will be returned.</p> <p>The value for <code>EndTime</code> must be later than the value for <code>StartTime</code>.</p>
-- Required key: ServiceType
-- Required key: Identifier
-- Required key: MetricQueries
-- Required key: StartTime
-- Required key: EndTime
-- @return GetResourceMetricsRequest structure as a key-value pair table
function M.GetResourceMetricsRequest(args)
	assert(args, "You must provide an argument table when creating GetResourceMetricsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ServiceType"] = args["ServiceType"],
		["Identifier"] = args["Identifier"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["MetricQueries"] = args["MetricQueries"],
		["PeriodInSeconds"] = args["PeriodInSeconds"],
		["StartTime"] = args["StartTime"],
		["EndTime"] = args["EndTime"],
	}
	asserts.AssertGetResourceMetricsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DataPoint = { ["Timestamp"] = true, ["Value"] = true, nil }

function asserts.AssertDataPoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DataPoint to be of type 'table'")
	assert(struct["Timestamp"], "Expected key Timestamp to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Timestamp"] then asserts.AssertISOTimestamp(struct["Timestamp"]) end
	if struct["Value"] then asserts.AssertDouble(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.DataPoint[k], "DataPoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DataPoint
-- <p>A timestamp, and a single numerical value, which together represent a measurement at a particular point in time.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Timestamp [ISOTimestamp] <p>The time, in epoch format, associated with a particular <code>Value</code>.</p>
-- * Value [Double] <p>The actual value associated with a particular <code>Timestamp</code>.</p>
-- Required key: Timestamp
-- Required key: Value
-- @return DataPoint structure as a key-value pair table
function M.DataPoint(args)
	assert(args, "You must provide an argument table when creating DataPoint")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Timestamp"] = args["Timestamp"],
		["Value"] = args["Value"],
	}
	asserts.AssertDataPoint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResponseResourceMetricKey = { ["Metric"] = true, ["Dimensions"] = true, nil }

function asserts.AssertResponseResourceMetricKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResponseResourceMetricKey to be of type 'table'")
	assert(struct["Metric"], "Expected key Metric to exist in table")
	if struct["Metric"] then asserts.AssertString(struct["Metric"]) end
	if struct["Dimensions"] then asserts.AssertDimensionMap(struct["Dimensions"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResponseResourceMetricKey[k], "ResponseResourceMetricKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResponseResourceMetricKey
-- <p>An object describing a Performance Insights metric and one or more dimensions for that metric.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Metric [String] <p>The name of a Performance Insights metric to be measured.</p> <p>Valid values for <code>Metric</code> are:</p> <ul> <li> <p> <code>db.load.avg</code> - a scaled representation of the number of active sessions for the database engine.</p> </li> <li> <p> <code>db.sampledload.avg</code> - the raw number of active sessions for the database engine.</p> </li> </ul>
-- * Dimensions [DimensionMap] <p>The valid dimensions for the metric.</p>
-- Required key: Metric
-- @return ResponseResourceMetricKey structure as a key-value pair table
function M.ResponseResourceMetricKey(args)
	assert(args, "You must provide an argument table when creating ResponseResourceMetricKey")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Metric"] = args["Metric"],
		["Dimensions"] = args["Dimensions"],
	}
	asserts.AssertResponseResourceMetricKey(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MetricQuery = { ["Filter"] = true, ["Metric"] = true, ["GroupBy"] = true, nil }

function asserts.AssertMetricQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricQuery to be of type 'table'")
	assert(struct["Metric"], "Expected key Metric to exist in table")
	if struct["Filter"] then asserts.AssertMetricQueryFilterMap(struct["Filter"]) end
	if struct["Metric"] then asserts.AssertString(struct["Metric"]) end
	if struct["GroupBy"] then asserts.AssertDimensionGroup(struct["GroupBy"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricQuery[k], "MetricQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricQuery
-- <p>A single query to be processed. You must provide the metric to query. If no other parameters are specified, Performance Insights returns all of the data points for that metric. You can optionally request that the data points be aggregated by dimension group ( <code>GroupBy</code>), and return only those data points that match your criteria (<code>Filter</code>).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [MetricQueryFilterMap] <p>One or more filters to apply in the request. Restrictions:</p> <ul> <li> <p>Any number of filters by the same dimension, as specified in the <code>GroupBy</code> parameter.</p> </li> <li> <p>A single filter for any other dimension in this dimension group.</p> </li> </ul>
-- * Metric [String] <p>The name of a Performance Insights metric to be measured.</p> <p>Valid values for <code>Metric</code> are:</p> <ul> <li> <p> <code>db.load.avg</code> - a scaled representation of the number of active sessions for the database engine.</p> </li> <li> <p> <code>db.sampledload.avg</code> - the raw number of active sessions for the database engine.</p> </li> </ul>
-- * GroupBy [DimensionGroup] <p>A specification for how to aggregate the data points from a query result. You must specify a valid dimension group. Performance Insights will return all of the dimensions within that group, unless you provide the names of specific dimensions within that group. You can also request that Performance Insights return a limited number of values for a dimension.</p>
-- Required key: Metric
-- @return MetricQuery structure as a key-value pair table
function M.MetricQuery(args)
	assert(args, "You must provide an argument table when creating MetricQuery")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Filter"] = args["Filter"],
		["Metric"] = args["Metric"],
		["GroupBy"] = args["GroupBy"],
	}
	asserts.AssertMetricQuery(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

function asserts.AssertServiceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ServiceType to be of type 'string'")
end

--  
function M.ServiceType(str)
	asserts.AssertServiceType(str)
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

function asserts.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	asserts.AssertInteger(integer)
	return integer
end

function asserts.AssertLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Limit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.Limit(integer)
	asserts.AssertLimit(integer)
	return integer
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 20, "Expected integer to be max 20")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertMetricQueryFilterMap(map)
	assert(map)
	assert(type(map) == "table", "Expected MetricQueryFilterMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.MetricQueryFilterMap(map)
	asserts.AssertMetricQueryFilterMap(map)
	return map
end

function asserts.AssertDimensionMap(map)
	assert(map)
	assert(type(map) == "table", "Expected DimensionMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.DimensionMap(map)
	asserts.AssertDimensionMap(map)
	return map
end

function asserts.AssertISOTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected ISOTimestamp to be of type 'string'")
end

function M.ISOTimestamp(timestamp)
	asserts.AssertISOTimestamp(timestamp)
	return timestamp
end

function asserts.AssertDataPointsList(list)
	assert(list)
	assert(type(list) == "table", "Expected DataPointsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDataPoint(v)
	end
end

--  
-- List of DataPoint objects
function M.DataPointsList(list)
	asserts.AssertDataPointsList(list)
	return list
end

function asserts.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.StringList(list)
	asserts.AssertStringList(list)
	return list
end

function asserts.AssertMetricKeyDataPointsList(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricKeyDataPointsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMetricKeyDataPoints(v)
	end
end

--  
-- List of MetricKeyDataPoints objects
function M.MetricKeyDataPointsList(list)
	asserts.AssertMetricKeyDataPointsList(list)
	return list
end

function asserts.AssertResponsePartitionKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResponsePartitionKeyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResponsePartitionKey(v)
	end
end

--  
-- List of ResponsePartitionKey objects
function M.ResponsePartitionKeyList(list)
	asserts.AssertResponsePartitionKeyList(list)
	return list
end

function asserts.AssertDimensionKeyDescriptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected DimensionKeyDescriptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDimensionKeyDescription(v)
	end
end

--  
-- List of DimensionKeyDescription objects
function M.DimensionKeyDescriptionList(list)
	asserts.AssertDimensionKeyDescriptionList(list)
	return list
end

function asserts.AssertMetricValuesList(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricValuesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDouble(v)
	end
end

--  
-- List of Double objects
function M.MetricValuesList(list)
	asserts.AssertMetricValuesList(list)
	return list
end

function asserts.AssertMetricQueryList(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricQueryList to be of type ''table")
	assert(#list <= 15, "Expected list to be contain 15 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertMetricQuery(v)
	end
end

--  
-- List of MetricQuery objects
function M.MetricQueryList(list)
	asserts.AssertMetricQueryList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "pi.amazonaws.com"
		end
	end
	local ss = { "pi" }
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
--- Call DescribeDimensionKeys asynchronously, invoking a callback when done
-- @param DescribeDimensionKeysRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDimensionKeysAsync(DescribeDimensionKeysRequest, cb)
	assert(DescribeDimensionKeysRequest, "You must provide a DescribeDimensionKeysRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PerformanceInsightsv20180227.DescribeDimensionKeys",
	}
	for header,value in pairs(DescribeDimensionKeysRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDimensionKeysRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDimensionKeys synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDimensionKeysRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDimensionKeysSync(DescribeDimensionKeysRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDimensionKeysAsync(DescribeDimensionKeysRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetResourceMetrics asynchronously, invoking a callback when done
-- @param GetResourceMetricsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetResourceMetricsAsync(GetResourceMetricsRequest, cb)
	assert(GetResourceMetricsRequest, "You must provide a GetResourceMetricsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "PerformanceInsightsv20180227.GetResourceMetrics",
	}
	for header,value in pairs(GetResourceMetricsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetResourceMetricsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetResourceMetrics synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetResourceMetricsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetResourceMetricsSync(GetResourceMetricsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetResourceMetricsAsync(GetResourceMetricsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
