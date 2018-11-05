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

local keys = {}
local asserts = {}

keys.DescribeLogGroupsResponse = { ["nextToken"] = true, ["logGroups"] = true, nil }

function asserts.AssertDescribeLogGroupsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLogGroupsResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["logGroups"] then asserts.AssertLogGroups(struct["logGroups"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLogGroupsResponse[k], "DescribeLogGroupsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLogGroupsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] 
-- * logGroups [LogGroups] <p>The log groups.</p>
-- @return DescribeLogGroupsResponse structure as a key-value pair table
function M.DescribeLogGroupsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeLogGroupsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["logGroups"] = args["logGroups"],
	}
	asserts.AssertDescribeLogGroupsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDestinationsResponse = { ["nextToken"] = true, ["destinations"] = true, nil }

function asserts.AssertDescribeDestinationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDestinationsResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["destinations"] then asserts.AssertDestinations(struct["destinations"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDestinationsResponse[k], "DescribeDestinationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDestinationsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] 
-- * destinations [Destinations] <p>The destinations.</p>
-- @return DescribeDestinationsResponse structure as a key-value pair table
function M.DescribeDestinationsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeDestinationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["destinations"] = args["destinations"],
	}
	asserts.AssertDescribeDestinationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Destination = { ["roleArn"] = true, ["creationTime"] = true, ["destinationName"] = true, ["accessPolicy"] = true, ["targetArn"] = true, ["arn"] = true, nil }

function asserts.AssertDestination(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Destination to be of type 'table'")
	if struct["roleArn"] then asserts.AssertRoleArn(struct["roleArn"]) end
	if struct["creationTime"] then asserts.AssertTimestamp(struct["creationTime"]) end
	if struct["destinationName"] then asserts.AssertDestinationName(struct["destinationName"]) end
	if struct["accessPolicy"] then asserts.AssertAccessPolicy(struct["accessPolicy"]) end
	if struct["targetArn"] then asserts.AssertTargetArn(struct["targetArn"]) end
	if struct["arn"] then asserts.AssertArn(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.Destination[k], "Destination contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Destination
-- <p>Represents a cross-account destination that receives subscription log events.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * roleArn [RoleArn] <p>A role for impersonation, used when delivering log events to the target.</p>
-- * creationTime [Timestamp] <p>The creation time of the destination, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.</p>
-- * destinationName [DestinationName] <p>The name of the destination.</p>
-- * accessPolicy [AccessPolicy] <p>An IAM policy document that governs which AWS accounts can create subscription filters against this destination.</p>
-- * targetArn [TargetArn] <p>The Amazon Resource Name (ARN) of the physical target to where the log events are delivered (for example, a Kinesis stream).</p>
-- * arn [Arn] <p>The ARN of this destination.</p>
-- @return Destination structure as a key-value pair table
function M.Destination(args)
	assert(args, "You must provide an argument table when creating Destination")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["roleArn"] = args["roleArn"],
		["creationTime"] = args["creationTime"],
		["destinationName"] = args["destinationName"],
		["accessPolicy"] = args["accessPolicy"],
		["targetArn"] = args["targetArn"],
		["arn"] = args["arn"],
	}
	asserts.AssertDestination(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FilterLogEventsRequest = { ["nextToken"] = true, ["logStreamNamePrefix"] = true, ["filterPattern"] = true, ["logStreamNames"] = true, ["logGroupName"] = true, ["limit"] = true, ["startTime"] = true, ["endTime"] = true, ["interleaved"] = true, nil }

function asserts.AssertFilterLogEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FilterLogEventsRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["logStreamNamePrefix"] then asserts.AssertLogStreamName(struct["logStreamNamePrefix"]) end
	if struct["filterPattern"] then asserts.AssertFilterPattern(struct["filterPattern"]) end
	if struct["logStreamNames"] then asserts.AssertInputLogStreamNames(struct["logStreamNames"]) end
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	if struct["limit"] then asserts.AssertEventsLimit(struct["limit"]) end
	if struct["startTime"] then asserts.AssertTimestamp(struct["startTime"]) end
	if struct["endTime"] then asserts.AssertTimestamp(struct["endTime"]) end
	if struct["interleaved"] then asserts.AssertInterleaved(struct["interleaved"]) end
	for k,_ in pairs(struct) do
		assert(keys.FilterLogEventsRequest[k], "FilterLogEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FilterLogEventsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The token for the next set of events to return. (You received this token from a previous call.)</p>
-- * logStreamNamePrefix [LogStreamName] <p>Filters the results to include only events from log streams that have names starting with this prefix.</p> <p>If you specify a value for both <code>logStreamNamePrefix</code> and <code>logStreamNames</code>, but the value for <code>logStreamNamePrefix</code> does not match any log stream names specified in <code>logStreamNames</code>, the action returns an <code>InvalidParameterException</code> error.</p>
-- * filterPattern [FilterPattern] <p>The filter pattern to use. For more information, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/FilterAndPatternSyntax.html">Filter and Pattern Syntax</a>.</p> <p>If not provided, all the events are matched.</p>
-- * logStreamNames [InputLogStreamNames] <p>Filters the results to only logs from the log streams in this list.</p> <p>If you specify a value for both <code>logStreamNamePrefix</code> and <code>logStreamNames</code>, but the value for <code>logStreamNamePrefix</code> does not match any log stream names specified in <code>logStreamNames</code>, the action returns an <code>InvalidParameterException</code> error.</p>
-- * logGroupName [LogGroupName] <p>The name of the log group to search.</p>
-- * limit [EventsLimit] <p>The maximum number of events to return. The default is 10,000 events.</p>
-- * startTime [Timestamp] <p>The start of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp before this time are not returned.</p>
-- * endTime [Timestamp] <p>The end of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp later than this time are not returned.</p>
-- * interleaved [Interleaved] <p>If the value is true, the operation makes a best effort to provide responses that contain events from multiple log streams within the log group, interleaved in a single response. If the value is false, all the matched log events in the first log stream are searched first, then those in the next log stream, and so on. The default is false.</p>
-- Required key: logGroupName
-- @return FilterLogEventsRequest structure as a key-value pair table
function M.FilterLogEventsRequest(args)
	assert(args, "You must provide an argument table when creating FilterLogEventsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["logStreamNamePrefix"] = args["logStreamNamePrefix"],
		["filterPattern"] = args["filterPattern"],
		["logStreamNames"] = args["logStreamNames"],
		["logGroupName"] = args["logGroupName"],
		["limit"] = args["limit"],
		["startTime"] = args["startTime"],
		["endTime"] = args["endTime"],
		["interleaved"] = args["interleaved"],
	}
	asserts.AssertFilterLogEventsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LogStream = { ["firstEventTimestamp"] = true, ["lastEventTimestamp"] = true, ["creationTime"] = true, ["uploadSequenceToken"] = true, ["logStreamName"] = true, ["lastIngestionTime"] = true, ["arn"] = true, ["storedBytes"] = true, nil }

function asserts.AssertLogStream(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LogStream to be of type 'table'")
	if struct["firstEventTimestamp"] then asserts.AssertTimestamp(struct["firstEventTimestamp"]) end
	if struct["lastEventTimestamp"] then asserts.AssertTimestamp(struct["lastEventTimestamp"]) end
	if struct["creationTime"] then asserts.AssertTimestamp(struct["creationTime"]) end
	if struct["uploadSequenceToken"] then asserts.AssertSequenceToken(struct["uploadSequenceToken"]) end
	if struct["logStreamName"] then asserts.AssertLogStreamName(struct["logStreamName"]) end
	if struct["lastIngestionTime"] then asserts.AssertTimestamp(struct["lastIngestionTime"]) end
	if struct["arn"] then asserts.AssertArn(struct["arn"]) end
	if struct["storedBytes"] then asserts.AssertStoredBytes(struct["storedBytes"]) end
	for k,_ in pairs(struct) do
		assert(keys.LogStream[k], "LogStream contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LogStream
-- <p>Represents a log stream, which is a sequence of log events from a single emitter of logs.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * firstEventTimestamp [Timestamp] <p>The time of the first event, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.</p>
-- * lastEventTimestamp [Timestamp] <p> the time of the most recent log event in the log stream in CloudWatch Logs. This number is expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. lastEventTime updates on an eventual consistency basis. It typically updates in less than an hour from ingestion, but may take longer in some rare situations.</p>
-- * creationTime [Timestamp] <p>The creation time of the stream, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.</p>
-- * uploadSequenceToken [SequenceToken] <p>The sequence token.</p>
-- * logStreamName [LogStreamName] <p>The name of the log stream.</p>
-- * lastIngestionTime [Timestamp] <p>The ingestion time, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.</p>
-- * arn [Arn] <p>The Amazon Resource Name (ARN) of the log stream.</p>
-- * storedBytes [StoredBytes] <p>The number of bytes stored.</p>
-- @return LogStream structure as a key-value pair table
function M.LogStream(args)
	assert(args, "You must provide an argument table when creating LogStream")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["firstEventTimestamp"] = args["firstEventTimestamp"],
		["lastEventTimestamp"] = args["lastEventTimestamp"],
		["creationTime"] = args["creationTime"],
		["uploadSequenceToken"] = args["uploadSequenceToken"],
		["logStreamName"] = args["logStreamName"],
		["lastIngestionTime"] = args["lastIngestionTime"],
		["arn"] = args["arn"],
		["storedBytes"] = args["storedBytes"],
	}
	asserts.AssertLogStream(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeDestinationsRequest = { ["DestinationNamePrefix"] = true, ["nextToken"] = true, ["limit"] = true, nil }

function asserts.AssertDescribeDestinationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeDestinationsRequest to be of type 'table'")
	if struct["DestinationNamePrefix"] then asserts.AssertDestinationName(struct["DestinationNamePrefix"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["limit"] then asserts.AssertDescribeLimit(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeDestinationsRequest[k], "DescribeDestinationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeDestinationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DestinationNamePrefix [DestinationName] <p>The prefix to match. If you don't specify a value, no prefix filter is applied.</p>
-- * nextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * limit [DescribeLimit] <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
-- @return DescribeDestinationsRequest structure as a key-value pair table
function M.DescribeDestinationsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeDestinationsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DestinationNamePrefix"] = args["DestinationNamePrefix"],
		["nextToken"] = args["nextToken"],
		["limit"] = args["limit"],
	}
	asserts.AssertDescribeDestinationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutResourcePolicyRequest = { ["policyName"] = true, ["policyDocument"] = true, nil }

function asserts.AssertPutResourcePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutResourcePolicyRequest to be of type 'table'")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["policyDocument"] then asserts.AssertPolicyDocument(struct["policyDocument"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutResourcePolicyRequest[k], "PutResourcePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutResourcePolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyName [PolicyName] <p>Name of the new policy. This parameter is required.</p>
-- * policyDocument [PolicyDocument] <p>Details of the new policy, including the identity of the principal that is enabled to put logs to this account. This is formatted as a JSON string.</p> <p>The following example creates a resource policy enabling the Route 53 service to put DNS query logs in to the specified log group. Replace "logArn" with the ARN of your CloudWatch Logs resource, such as a log group or log stream.</p> <p> <code>{ "Version": "2012-10-17", "Statement": [ { "Sid": "Route53LogsToCloudWatchLogs", "Effect": "Allow", "Principal": { "Service": [ "route53.amazonaws.com" ] }, "Action":"logs:PutLogEvents", "Resource": "logArn" } ] } </code> </p>
-- @return PutResourcePolicyRequest structure as a key-value pair table
function M.PutResourcePolicyRequest(args)
	assert(args, "You must provide an argument table when creating PutResourcePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["policyName"] = args["policyName"],
		["policyDocument"] = args["policyDocument"],
	}
	asserts.AssertPutResourcePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourcePolicy = { ["policyName"] = true, ["policyDocument"] = true, ["lastUpdatedTime"] = true, nil }

function asserts.AssertResourcePolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourcePolicy to be of type 'table'")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	if struct["policyDocument"] then asserts.AssertPolicyDocument(struct["policyDocument"]) end
	if struct["lastUpdatedTime"] then asserts.AssertTimestamp(struct["lastUpdatedTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourcePolicy[k], "ResourcePolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourcePolicy
-- <p>A policy enabling one or more entities to put logs to a log group in this account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyName [PolicyName] <p>The name of the resource policy.</p>
-- * policyDocument [PolicyDocument] <p>The details of the policy.</p>
-- * lastUpdatedTime [Timestamp] <p>Time stamp showing when this policy was last updated, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.</p>
-- @return ResourcePolicy structure as a key-value pair table
function M.ResourcePolicy(args)
	assert(args, "You must provide an argument table when creating ResourcePolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["policyName"] = args["policyName"],
		["policyDocument"] = args["policyDocument"],
		["lastUpdatedTime"] = args["lastUpdatedTime"],
	}
	asserts.AssertResourcePolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DisassociateKmsKeyRequest = { ["logGroupName"] = true, nil }

function asserts.AssertDisassociateKmsKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DisassociateKmsKeyRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DisassociateKmsKeyRequest[k], "DisassociateKmsKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DisassociateKmsKeyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required key: logGroupName
-- @return DisassociateKmsKeyRequest structure as a key-value pair table
function M.DisassociateKmsKeyRequest(args)
	assert(args, "You must provide an argument table when creating DisassociateKmsKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["logGroupName"] = args["logGroupName"],
	}
	asserts.AssertDisassociateKmsKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TestMetricFilterRequest = { ["filterPattern"] = true, ["logEventMessages"] = true, nil }

function asserts.AssertTestMetricFilterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestMetricFilterRequest to be of type 'table'")
	assert(struct["filterPattern"], "Expected key filterPattern to exist in table")
	assert(struct["logEventMessages"], "Expected key logEventMessages to exist in table")
	if struct["filterPattern"] then asserts.AssertFilterPattern(struct["filterPattern"]) end
	if struct["logEventMessages"] then asserts.AssertTestEventMessages(struct["logEventMessages"]) end
	for k,_ in pairs(struct) do
		assert(keys.TestMetricFilterRequest[k], "TestMetricFilterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestMetricFilterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * filterPattern [FilterPattern] 
-- * logEventMessages [TestEventMessages] <p>The log event messages to test.</p>
-- Required key: filterPattern
-- Required key: logEventMessages
-- @return TestMetricFilterRequest structure as a key-value pair table
function M.TestMetricFilterRequest(args)
	assert(args, "You must provide an argument table when creating TestMetricFilterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["filterPattern"] = args["filterPattern"],
		["logEventMessages"] = args["logEventMessages"],
	}
	asserts.AssertTestMetricFilterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteSubscriptionFilterRequest = { ["filterName"] = true, ["logGroupName"] = true, nil }

function asserts.AssertDeleteSubscriptionFilterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSubscriptionFilterRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["filterName"], "Expected key filterName to exist in table")
	if struct["filterName"] then asserts.AssertFilterName(struct["filterName"]) end
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSubscriptionFilterRequest[k], "DeleteSubscriptionFilterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSubscriptionFilterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * filterName [FilterName] <p>The name of the subscription filter.</p>
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required key: logGroupName
-- Required key: filterName
-- @return DeleteSubscriptionFilterRequest structure as a key-value pair table
function M.DeleteSubscriptionFilterRequest(args)
	assert(args, "You must provide an argument table when creating DeleteSubscriptionFilterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["filterName"] = args["filterName"],
		["logGroupName"] = args["logGroupName"],
	}
	asserts.AssertDeleteSubscriptionFilterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OutputLogEvent = { ["ingestionTime"] = true, ["timestamp"] = true, ["message"] = true, nil }

function asserts.AssertOutputLogEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OutputLogEvent to be of type 'table'")
	if struct["ingestionTime"] then asserts.AssertTimestamp(struct["ingestionTime"]) end
	if struct["timestamp"] then asserts.AssertTimestamp(struct["timestamp"]) end
	if struct["message"] then asserts.AssertEventMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.OutputLogEvent[k], "OutputLogEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OutputLogEvent
-- <p>Represents a log event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ingestionTime [Timestamp] <p>The time the event was ingested, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.</p>
-- * timestamp [Timestamp] <p>The time the event occurred, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.</p>
-- * message [EventMessage] <p>The data contained in the log event.</p>
-- @return OutputLogEvent structure as a key-value pair table
function M.OutputLogEvent(args)
	assert(args, "You must provide an argument table when creating OutputLogEvent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ingestionTime"] = args["ingestionTime"],
		["timestamp"] = args["timestamp"],
		["message"] = args["message"],
	}
	asserts.AssertOutputLogEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MetricFilter = { ["filterName"] = true, ["metricTransformations"] = true, ["creationTime"] = true, ["filterPattern"] = true, ["logGroupName"] = true, nil }

function asserts.AssertMetricFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricFilter to be of type 'table'")
	if struct["filterName"] then asserts.AssertFilterName(struct["filterName"]) end
	if struct["metricTransformations"] then asserts.AssertMetricTransformations(struct["metricTransformations"]) end
	if struct["creationTime"] then asserts.AssertTimestamp(struct["creationTime"]) end
	if struct["filterPattern"] then asserts.AssertFilterPattern(struct["filterPattern"]) end
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricFilter[k], "MetricFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricFilter
-- <p>Metric filters express how CloudWatch Logs would extract metric observations from ingested log events and transform them into metric data in a CloudWatch metric.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * filterName [FilterName] <p>The name of the metric filter.</p>
-- * metricTransformations [MetricTransformations] <p>The metric transformations.</p>
-- * creationTime [Timestamp] <p>The creation time of the metric filter, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.</p>
-- * filterPattern [FilterPattern] 
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- @return MetricFilter structure as a key-value pair table
function M.MetricFilter(args)
	assert(args, "You must provide an argument table when creating MetricFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["filterName"] = args["filterName"],
		["metricTransformations"] = args["metricTransformations"],
		["creationTime"] = args["creationTime"],
		["filterPattern"] = args["filterPattern"],
		["logGroupName"] = args["logGroupName"],
	}
	asserts.AssertMetricFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLogStreamsResponse = { ["nextToken"] = true, ["logStreams"] = true, nil }

function asserts.AssertDescribeLogStreamsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLogStreamsResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["logStreams"] then asserts.AssertLogStreams(struct["logStreams"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLogStreamsResponse[k], "DescribeLogStreamsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLogStreamsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] 
-- * logStreams [LogStreams] <p>The log streams.</p>
-- @return DescribeLogStreamsResponse structure as a key-value pair table
function M.DescribeLogStreamsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeLogStreamsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["logStreams"] = args["logStreams"],
	}
	asserts.AssertDescribeLogStreamsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutDestinationResponse = { ["destination"] = true, nil }

function asserts.AssertPutDestinationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutDestinationResponse to be of type 'table'")
	if struct["destination"] then asserts.AssertDestination(struct["destination"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutDestinationResponse[k], "PutDestinationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutDestinationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * destination [Destination] <p>The destination.</p>
-- @return PutDestinationResponse structure as a key-value pair table
function M.PutDestinationResponse(args)
	assert(args, "You must provide an argument table when creating PutDestinationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["destination"] = args["destination"],
	}
	asserts.AssertPutDestinationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsLogGroupRequest = { ["logGroupName"] = true, nil }

function asserts.AssertListTagsLogGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsLogGroupRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsLogGroupRequest[k], "ListTagsLogGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsLogGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required key: logGroupName
-- @return ListTagsLogGroupRequest structure as a key-value pair table
function M.ListTagsLogGroupRequest(args)
	assert(args, "You must provide an argument table when creating ListTagsLogGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["logGroupName"] = args["logGroupName"],
	}
	asserts.AssertListTagsLogGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExportTaskStatus = { ["message"] = true, ["code"] = true, nil }

function asserts.AssertExportTaskStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportTaskStatus to be of type 'table'")
	if struct["message"] then asserts.AssertExportTaskStatusMessage(struct["message"]) end
	if struct["code"] then asserts.AssertExportTaskStatusCode(struct["code"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExportTaskStatus[k], "ExportTaskStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportTaskStatus
-- <p>Represents the status of an export task.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ExportTaskStatusMessage] <p>The status message related to the status code.</p>
-- * code [ExportTaskStatusCode] <p>The status code of the export task.</p>
-- @return ExportTaskStatus structure as a key-value pair table
function M.ExportTaskStatus(args)
	assert(args, "You must provide an argument table when creating ExportTaskStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
		["code"] = args["code"],
	}
	asserts.AssertExportTaskStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutDestinationPolicyRequest = { ["accessPolicy"] = true, ["destinationName"] = true, nil }

function asserts.AssertPutDestinationPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutDestinationPolicyRequest to be of type 'table'")
	assert(struct["destinationName"], "Expected key destinationName to exist in table")
	assert(struct["accessPolicy"], "Expected key accessPolicy to exist in table")
	if struct["accessPolicy"] then asserts.AssertAccessPolicy(struct["accessPolicy"]) end
	if struct["destinationName"] then asserts.AssertDestinationName(struct["destinationName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutDestinationPolicyRequest[k], "PutDestinationPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutDestinationPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * accessPolicy [AccessPolicy] <p>An IAM policy document that authorizes cross-account users to deliver their log events to the associated destination.</p>
-- * destinationName [DestinationName] <p>A name for an existing destination.</p>
-- Required key: destinationName
-- Required key: accessPolicy
-- @return PutDestinationPolicyRequest structure as a key-value pair table
function M.PutDestinationPolicyRequest(args)
	assert(args, "You must provide an argument table when creating PutDestinationPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["accessPolicy"] = args["accessPolicy"],
		["destinationName"] = args["destinationName"],
	}
	asserts.AssertPutDestinationPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CancelExportTaskRequest = { ["taskId"] = true, nil }

function asserts.AssertCancelExportTaskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CancelExportTaskRequest to be of type 'table'")
	assert(struct["taskId"], "Expected key taskId to exist in table")
	if struct["taskId"] then asserts.AssertExportTaskId(struct["taskId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CancelExportTaskRequest[k], "CancelExportTaskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CancelExportTaskRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * taskId [ExportTaskId] <p>The ID of the export task.</p>
-- Required key: taskId
-- @return CancelExportTaskRequest structure as a key-value pair table
function M.CancelExportTaskRequest(args)
	assert(args, "You must provide an argument table when creating CancelExportTaskRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["taskId"] = args["taskId"],
	}
	asserts.AssertCancelExportTaskRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateLogGroupRequest = { ["kmsKeyId"] = true, ["logGroupName"] = true, ["tags"] = true, nil }

function asserts.AssertCreateLogGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLogGroupRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	if struct["kmsKeyId"] then asserts.AssertKmsKeyId(struct["kmsKeyId"]) end
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	if struct["tags"] then asserts.AssertTags(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLogGroupRequest[k], "CreateLogGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLogGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * kmsKeyId [KmsKeyId] <p>The Amazon Resource Name (ARN) of the CMK to use when encrypting log data. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms">Amazon Resource Names - AWS Key Management Service (AWS KMS)</a>.</p>
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- * tags [Tags] <p>The key-value pairs to use for the tags.</p>
-- Required key: logGroupName
-- @return CreateLogGroupRequest structure as a key-value pair table
function M.CreateLogGroupRequest(args)
	assert(args, "You must provide an argument table when creating CreateLogGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["kmsKeyId"] = args["kmsKeyId"],
		["logGroupName"] = args["logGroupName"],
		["tags"] = args["tags"],
	}
	asserts.AssertCreateLogGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteMetricFilterRequest = { ["filterName"] = true, ["logGroupName"] = true, nil }

function asserts.AssertDeleteMetricFilterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteMetricFilterRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["filterName"], "Expected key filterName to exist in table")
	if struct["filterName"] then asserts.AssertFilterName(struct["filterName"]) end
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteMetricFilterRequest[k], "DeleteMetricFilterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteMetricFilterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * filterName [FilterName] <p>The name of the metric filter.</p>
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required key: logGroupName
-- Required key: filterName
-- @return DeleteMetricFilterRequest structure as a key-value pair table
function M.DeleteMetricFilterRequest(args)
	assert(args, "You must provide an argument table when creating DeleteMetricFilterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["filterName"] = args["filterName"],
		["logGroupName"] = args["logGroupName"],
	}
	asserts.AssertDeleteMetricFilterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RejectedLogEventsInfo = { ["tooNewLogEventStartIndex"] = true, ["tooOldLogEventEndIndex"] = true, ["expiredLogEventEndIndex"] = true, nil }

function asserts.AssertRejectedLogEventsInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RejectedLogEventsInfo to be of type 'table'")
	if struct["tooNewLogEventStartIndex"] then asserts.AssertLogEventIndex(struct["tooNewLogEventStartIndex"]) end
	if struct["tooOldLogEventEndIndex"] then asserts.AssertLogEventIndex(struct["tooOldLogEventEndIndex"]) end
	if struct["expiredLogEventEndIndex"] then asserts.AssertLogEventIndex(struct["expiredLogEventEndIndex"]) end
	for k,_ in pairs(struct) do
		assert(keys.RejectedLogEventsInfo[k], "RejectedLogEventsInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RejectedLogEventsInfo
-- <p>Represents the rejected events.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * tooNewLogEventStartIndex [LogEventIndex] <p>The log events that are too new.</p>
-- * tooOldLogEventEndIndex [LogEventIndex] <p>The log events that are too old.</p>
-- * expiredLogEventEndIndex [LogEventIndex] <p>The expired log events.</p>
-- @return RejectedLogEventsInfo structure as a key-value pair table
function M.RejectedLogEventsInfo(args)
	assert(args, "You must provide an argument table when creating RejectedLogEventsInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["tooNewLogEventStartIndex"] = args["tooNewLogEventStartIndex"],
		["tooOldLogEventEndIndex"] = args["tooOldLogEventEndIndex"],
		["expiredLogEventEndIndex"] = args["expiredLogEventEndIndex"],
	}
	asserts.AssertRejectedLogEventsInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutRetentionPolicyRequest = { ["retentionInDays"] = true, ["logGroupName"] = true, nil }

function asserts.AssertPutRetentionPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutRetentionPolicyRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["retentionInDays"], "Expected key retentionInDays to exist in table")
	if struct["retentionInDays"] then asserts.AssertDays(struct["retentionInDays"]) end
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutRetentionPolicyRequest[k], "PutRetentionPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutRetentionPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * retentionInDays [Days] 
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required key: logGroupName
-- Required key: retentionInDays
-- @return PutRetentionPolicyRequest structure as a key-value pair table
function M.PutRetentionPolicyRequest(args)
	assert(args, "You must provide an argument table when creating PutRetentionPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["retentionInDays"] = args["retentionInDays"],
		["logGroupName"] = args["logGroupName"],
	}
	asserts.AssertPutRetentionPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MetricTransformation = { ["defaultValue"] = true, ["metricValue"] = true, ["metricNamespace"] = true, ["metricName"] = true, nil }

function asserts.AssertMetricTransformation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricTransformation to be of type 'table'")
	assert(struct["metricName"], "Expected key metricName to exist in table")
	assert(struct["metricNamespace"], "Expected key metricNamespace to exist in table")
	assert(struct["metricValue"], "Expected key metricValue to exist in table")
	if struct["defaultValue"] then asserts.AssertDefaultValue(struct["defaultValue"]) end
	if struct["metricValue"] then asserts.AssertMetricValue(struct["metricValue"]) end
	if struct["metricNamespace"] then asserts.AssertMetricNamespace(struct["metricNamespace"]) end
	if struct["metricName"] then asserts.AssertMetricName(struct["metricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricTransformation[k], "MetricTransformation contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricTransformation
-- <p>Indicates how to transform ingested log events in to metric data in a CloudWatch metric.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * defaultValue [DefaultValue] <p>(Optional) The value to emit when a filter pattern does not match a log event. This value can be null.</p>
-- * metricValue [MetricValue] <p>The value to publish to the CloudWatch metric when a filter pattern matches a log event.</p>
-- * metricNamespace [MetricNamespace] <p>The namespace of the CloudWatch metric.</p>
-- * metricName [MetricName] <p>The name of the CloudWatch metric.</p>
-- Required key: metricName
-- Required key: metricNamespace
-- Required key: metricValue
-- @return MetricTransformation structure as a key-value pair table
function M.MetricTransformation(args)
	assert(args, "You must provide an argument table when creating MetricTransformation")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["defaultValue"] = args["defaultValue"],
		["metricValue"] = args["metricValue"],
		["metricNamespace"] = args["metricNamespace"],
		["metricName"] = args["metricName"],
	}
	asserts.AssertMetricTransformation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLogStreamRequest = { ["logStreamName"] = true, ["logGroupName"] = true, nil }

function asserts.AssertDeleteLogStreamRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLogStreamRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["logStreamName"], "Expected key logStreamName to exist in table")
	if struct["logStreamName"] then asserts.AssertLogStreamName(struct["logStreamName"]) end
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLogStreamRequest[k], "DeleteLogStreamRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLogStreamRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * logStreamName [LogStreamName] <p>The name of the log stream.</p>
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required key: logGroupName
-- Required key: logStreamName
-- @return DeleteLogStreamRequest structure as a key-value pair table
function M.DeleteLogStreamRequest(args)
	assert(args, "You must provide an argument table when creating DeleteLogStreamRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["logStreamName"] = args["logStreamName"],
		["logGroupName"] = args["logGroupName"],
	}
	asserts.AssertDeleteLogStreamRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutMetricFilterRequest = { ["filterName"] = true, ["metricTransformations"] = true, ["filterPattern"] = true, ["logGroupName"] = true, nil }

function asserts.AssertPutMetricFilterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutMetricFilterRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["filterName"], "Expected key filterName to exist in table")
	assert(struct["filterPattern"], "Expected key filterPattern to exist in table")
	assert(struct["metricTransformations"], "Expected key metricTransformations to exist in table")
	if struct["filterName"] then asserts.AssertFilterName(struct["filterName"]) end
	if struct["metricTransformations"] then asserts.AssertMetricTransformations(struct["metricTransformations"]) end
	if struct["filterPattern"] then asserts.AssertFilterPattern(struct["filterPattern"]) end
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutMetricFilterRequest[k], "PutMetricFilterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutMetricFilterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * filterName [FilterName] <p>A name for the metric filter.</p>
-- * metricTransformations [MetricTransformations] <p>A collection of information that defines how metric data gets emitted.</p>
-- * filterPattern [FilterPattern] <p>A filter pattern for extracting metric data out of ingested log events.</p>
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required key: logGroupName
-- Required key: filterName
-- Required key: filterPattern
-- Required key: metricTransformations
-- @return PutMetricFilterRequest structure as a key-value pair table
function M.PutMetricFilterRequest(args)
	assert(args, "You must provide an argument table when creating PutMetricFilterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["filterName"] = args["filterName"],
		["metricTransformations"] = args["metricTransformations"],
		["filterPattern"] = args["filterPattern"],
		["logGroupName"] = args["logGroupName"],
	}
	asserts.AssertPutMetricFilterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagLogGroupRequest = { ["logGroupName"] = true, ["tags"] = true, nil }

function asserts.AssertTagLogGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagLogGroupRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["tags"], "Expected key tags to exist in table")
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	if struct["tags"] then asserts.AssertTags(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagLogGroupRequest[k], "TagLogGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagLogGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- * tags [Tags] <p>The key-value pairs to use for the tags.</p>
-- Required key: logGroupName
-- Required key: tags
-- @return TagLogGroupRequest structure as a key-value pair table
function M.TagLogGroupRequest(args)
	assert(args, "You must provide an argument table when creating TagLogGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["logGroupName"] = args["logGroupName"],
		["tags"] = args["tags"],
	}
	asserts.AssertTagLogGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MetricFilterMatchRecord = { ["eventNumber"] = true, ["eventMessage"] = true, ["extractedValues"] = true, nil }

function asserts.AssertMetricFilterMatchRecord(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MetricFilterMatchRecord to be of type 'table'")
	if struct["eventNumber"] then asserts.AssertEventNumber(struct["eventNumber"]) end
	if struct["eventMessage"] then asserts.AssertEventMessage(struct["eventMessage"]) end
	if struct["extractedValues"] then asserts.AssertExtractedValues(struct["extractedValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.MetricFilterMatchRecord[k], "MetricFilterMatchRecord contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MetricFilterMatchRecord
-- <p>Represents a matched event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * eventNumber [EventNumber] <p>The event number.</p>
-- * eventMessage [EventMessage] <p>The raw event data.</p>
-- * extractedValues [ExtractedValues] <p>The values extracted from the event data by the filter.</p>
-- @return MetricFilterMatchRecord structure as a key-value pair table
function M.MetricFilterMatchRecord(args)
	assert(args, "You must provide an argument table when creating MetricFilterMatchRecord")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["eventNumber"] = args["eventNumber"],
		["eventMessage"] = args["eventMessage"],
		["extractedValues"] = args["extractedValues"],
	}
	asserts.AssertMetricFilterMatchRecord(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetLogEventsResponse = { ["nextForwardToken"] = true, ["events"] = true, ["nextBackwardToken"] = true, nil }

function asserts.AssertGetLogEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLogEventsResponse to be of type 'table'")
	if struct["nextForwardToken"] then asserts.AssertNextToken(struct["nextForwardToken"]) end
	if struct["events"] then asserts.AssertOutputLogEvents(struct["events"]) end
	if struct["nextBackwardToken"] then asserts.AssertNextToken(struct["nextBackwardToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLogEventsResponse[k], "GetLogEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLogEventsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextForwardToken [NextToken] <p>The token for the next set of items in the forward direction. The token expires after 24 hours. If you have reached the end of the stream, it will return the same token you passed in.</p>
-- * events [OutputLogEvents] <p>The events.</p>
-- * nextBackwardToken [NextToken] <p>The token for the next set of items in the backward direction. The token expires after 24 hours. This token will never be null. If you have reached the end of the stream, it will return the same token you passed in.</p>
-- @return GetLogEventsResponse structure as a key-value pair table
function M.GetLogEventsResponse(args)
	assert(args, "You must provide an argument table when creating GetLogEventsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextForwardToken"] = args["nextForwardToken"],
		["events"] = args["events"],
		["nextBackwardToken"] = args["nextBackwardToken"],
	}
	asserts.AssertGetLogEventsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FilteredLogEvent = { ["ingestionTime"] = true, ["timestamp"] = true, ["message"] = true, ["eventId"] = true, ["logStreamName"] = true, nil }

function asserts.AssertFilteredLogEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FilteredLogEvent to be of type 'table'")
	if struct["ingestionTime"] then asserts.AssertTimestamp(struct["ingestionTime"]) end
	if struct["timestamp"] then asserts.AssertTimestamp(struct["timestamp"]) end
	if struct["message"] then asserts.AssertEventMessage(struct["message"]) end
	if struct["eventId"] then asserts.AssertEventId(struct["eventId"]) end
	if struct["logStreamName"] then asserts.AssertLogStreamName(struct["logStreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.FilteredLogEvent[k], "FilteredLogEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FilteredLogEvent
-- <p>Represents a matched event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ingestionTime [Timestamp] <p>The time the event was ingested, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.</p>
-- * timestamp [Timestamp] <p>The time the event occurred, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.</p>
-- * message [EventMessage] <p>The data contained in the log event.</p>
-- * eventId [EventId] <p>The ID of the event.</p>
-- * logStreamName [LogStreamName] <p>The name of the log stream this event belongs to.</p>
-- @return FilteredLogEvent structure as a key-value pair table
function M.FilteredLogEvent(args)
	assert(args, "You must provide an argument table when creating FilteredLogEvent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ingestionTime"] = args["ingestionTime"],
		["timestamp"] = args["timestamp"],
		["message"] = args["message"],
		["eventId"] = args["eventId"],
		["logStreamName"] = args["logStreamName"],
	}
	asserts.AssertFilteredLogEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagLogGroupRequest = { ["logGroupName"] = true, ["tags"] = true, nil }

function asserts.AssertUntagLogGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagLogGroupRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["tags"], "Expected key tags to exist in table")
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	if struct["tags"] then asserts.AssertTagList(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagLogGroupRequest[k], "UntagLogGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagLogGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- * tags [TagList] <p>The tag keys. The corresponding tags are removed from the log group.</p>
-- Required key: logGroupName
-- Required key: tags
-- @return UntagLogGroupRequest structure as a key-value pair table
function M.UntagLogGroupRequest(args)
	assert(args, "You must provide an argument table when creating UntagLogGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["logGroupName"] = args["logGroupName"],
		["tags"] = args["tags"],
	}
	asserts.AssertUntagLogGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeMetricFiltersResponse = { ["metricFilters"] = true, ["nextToken"] = true, nil }

function asserts.AssertDescribeMetricFiltersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMetricFiltersResponse to be of type 'table'")
	if struct["metricFilters"] then asserts.AssertMetricFilters(struct["metricFilters"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMetricFiltersResponse[k], "DescribeMetricFiltersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMetricFiltersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * metricFilters [MetricFilters] <p>The metric filters.</p>
-- * nextToken [NextToken] 
-- @return DescribeMetricFiltersResponse structure as a key-value pair table
function M.DescribeMetricFiltersResponse(args)
	assert(args, "You must provide an argument table when creating DescribeMetricFiltersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["metricFilters"] = args["metricFilters"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertDescribeMetricFiltersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateLogStreamRequest = { ["logStreamName"] = true, ["logGroupName"] = true, nil }

function asserts.AssertCreateLogStreamRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateLogStreamRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["logStreamName"], "Expected key logStreamName to exist in table")
	if struct["logStreamName"] then asserts.AssertLogStreamName(struct["logStreamName"]) end
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateLogStreamRequest[k], "CreateLogStreamRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateLogStreamRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * logStreamName [LogStreamName] <p>The name of the log stream.</p>
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required key: logGroupName
-- Required key: logStreamName
-- @return CreateLogStreamRequest structure as a key-value pair table
function M.CreateLogStreamRequest(args)
	assert(args, "You must provide an argument table when creating CreateLogStreamRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["logStreamName"] = args["logStreamName"],
		["logGroupName"] = args["logGroupName"],
	}
	asserts.AssertCreateLogStreamRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SubscriptionFilter = { ["filterPattern"] = true, ["filterName"] = true, ["roleArn"] = true, ["creationTime"] = true, ["logGroupName"] = true, ["destinationArn"] = true, ["distribution"] = true, nil }

function asserts.AssertSubscriptionFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SubscriptionFilter to be of type 'table'")
	if struct["filterPattern"] then asserts.AssertFilterPattern(struct["filterPattern"]) end
	if struct["filterName"] then asserts.AssertFilterName(struct["filterName"]) end
	if struct["roleArn"] then asserts.AssertRoleArn(struct["roleArn"]) end
	if struct["creationTime"] then asserts.AssertTimestamp(struct["creationTime"]) end
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	if struct["destinationArn"] then asserts.AssertDestinationArn(struct["destinationArn"]) end
	if struct["distribution"] then asserts.AssertDistribution(struct["distribution"]) end
	for k,_ in pairs(struct) do
		assert(keys.SubscriptionFilter[k], "SubscriptionFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SubscriptionFilter
-- <p>Represents a subscription filter.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * filterPattern [FilterPattern] 
-- * filterName [FilterName] <p>The name of the subscription filter.</p>
-- * roleArn [RoleArn] <p/>
-- * creationTime [Timestamp] <p>The creation time of the subscription filter, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.</p>
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- * destinationArn [DestinationArn] <p>The Amazon Resource Name (ARN) of the destination.</p>
-- * distribution [Distribution] 
-- @return SubscriptionFilter structure as a key-value pair table
function M.SubscriptionFilter(args)
	assert(args, "You must provide an argument table when creating SubscriptionFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["filterPattern"] = args["filterPattern"],
		["filterName"] = args["filterName"],
		["roleArn"] = args["roleArn"],
		["creationTime"] = args["creationTime"],
		["logGroupName"] = args["logGroupName"],
		["destinationArn"] = args["destinationArn"],
		["distribution"] = args["distribution"],
	}
	asserts.AssertSubscriptionFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateExportTaskResponse = { ["taskId"] = true, nil }

function asserts.AssertCreateExportTaskResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateExportTaskResponse to be of type 'table'")
	if struct["taskId"] then asserts.AssertExportTaskId(struct["taskId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateExportTaskResponse[k], "CreateExportTaskResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateExportTaskResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * taskId [ExportTaskId] <p>The ID of the export task.</p>
-- @return CreateExportTaskResponse structure as a key-value pair table
function M.CreateExportTaskResponse(args)
	assert(args, "You must provide an argument table when creating CreateExportTaskResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["taskId"] = args["taskId"],
	}
	asserts.AssertCreateExportTaskResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutLogEventsResponse = { ["nextSequenceToken"] = true, ["rejectedLogEventsInfo"] = true, nil }

function asserts.AssertPutLogEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutLogEventsResponse to be of type 'table'")
	if struct["nextSequenceToken"] then asserts.AssertSequenceToken(struct["nextSequenceToken"]) end
	if struct["rejectedLogEventsInfo"] then asserts.AssertRejectedLogEventsInfo(struct["rejectedLogEventsInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutLogEventsResponse[k], "PutLogEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutLogEventsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextSequenceToken [SequenceToken] <p>The next sequence token.</p>
-- * rejectedLogEventsInfo [RejectedLogEventsInfo] <p>The rejected events.</p>
-- @return PutLogEventsResponse structure as a key-value pair table
function M.PutLogEventsResponse(args)
	assert(args, "You must provide an argument table when creating PutLogEventsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextSequenceToken"] = args["nextSequenceToken"],
		["rejectedLogEventsInfo"] = args["rejectedLogEventsInfo"],
	}
	asserts.AssertPutLogEventsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateExportTaskRequest = { ["from"] = true, ["destinationPrefix"] = true, ["destination"] = true, ["logGroupName"] = true, ["to"] = true, ["logStreamNamePrefix"] = true, ["taskName"] = true, nil }

function asserts.AssertCreateExportTaskRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateExportTaskRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["from"], "Expected key from to exist in table")
	assert(struct["to"], "Expected key to to exist in table")
	assert(struct["destination"], "Expected key destination to exist in table")
	if struct["from"] then asserts.AssertTimestamp(struct["from"]) end
	if struct["destinationPrefix"] then asserts.AssertExportDestinationPrefix(struct["destinationPrefix"]) end
	if struct["destination"] then asserts.AssertExportDestinationBucket(struct["destination"]) end
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	if struct["to"] then asserts.AssertTimestamp(struct["to"]) end
	if struct["logStreamNamePrefix"] then asserts.AssertLogStreamName(struct["logStreamNamePrefix"]) end
	if struct["taskName"] then asserts.AssertExportTaskName(struct["taskName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateExportTaskRequest[k], "CreateExportTaskRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateExportTaskRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * from [Timestamp] <p>The start time of the range for the request, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp earlier than this time are not exported.</p>
-- * destinationPrefix [ExportDestinationPrefix] <p>The prefix used as the start of the key for every object exported. If you don't specify a value, the default is <code>exportedlogs</code>.</p>
-- * destination [ExportDestinationBucket] <p>The name of S3 bucket for the exported log data. The bucket must be in the same AWS region.</p>
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- * to [Timestamp] <p>The end time of the range for the request, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp later than this time are not exported.</p>
-- * logStreamNamePrefix [LogStreamName] <p>Export only log streams that match the provided prefix. If you don't specify a value, no prefix filter is applied.</p>
-- * taskName [ExportTaskName] <p>The name of the export task.</p>
-- Required key: logGroupName
-- Required key: from
-- Required key: to
-- Required key: destination
-- @return CreateExportTaskRequest structure as a key-value pair table
function M.CreateExportTaskRequest(args)
	assert(args, "You must provide an argument table when creating CreateExportTaskRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["from"] = args["from"],
		["destinationPrefix"] = args["destinationPrefix"],
		["destination"] = args["destination"],
		["logGroupName"] = args["logGroupName"],
		["to"] = args["to"],
		["logStreamNamePrefix"] = args["logStreamNamePrefix"],
		["taskName"] = args["taskName"],
	}
	asserts.AssertCreateExportTaskRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeMetricFiltersRequest = { ["logGroupName"] = true, ["filterNamePrefix"] = true, ["limit"] = true, ["metricNamespace"] = true, ["nextToken"] = true, ["metricName"] = true, nil }

function asserts.AssertDescribeMetricFiltersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeMetricFiltersRequest to be of type 'table'")
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	if struct["filterNamePrefix"] then asserts.AssertFilterName(struct["filterNamePrefix"]) end
	if struct["limit"] then asserts.AssertDescribeLimit(struct["limit"]) end
	if struct["metricNamespace"] then asserts.AssertMetricNamespace(struct["metricNamespace"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["metricName"] then asserts.AssertMetricName(struct["metricName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeMetricFiltersRequest[k], "DescribeMetricFiltersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeMetricFiltersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- * filterNamePrefix [FilterName] <p>The prefix to match.</p>
-- * limit [DescribeLimit] <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
-- * metricNamespace [MetricNamespace] <p>Filters results to include only those in the specified namespace. If you include this parameter in your request, you must also include the <code>metricName</code> parameter.</p>
-- * nextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * metricName [MetricName] <p>Filters results to include only those with the specified metric name. If you include this parameter in your request, you must also include the <code>metricNamespace</code> parameter.</p>
-- @return DescribeMetricFiltersRequest structure as a key-value pair table
function M.DescribeMetricFiltersRequest(args)
	assert(args, "You must provide an argument table when creating DescribeMetricFiltersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["logGroupName"] = args["logGroupName"],
		["filterNamePrefix"] = args["filterNamePrefix"],
		["limit"] = args["limit"],
		["metricNamespace"] = args["metricNamespace"],
		["nextToken"] = args["nextToken"],
		["metricName"] = args["metricName"],
	}
	asserts.AssertDescribeMetricFiltersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutDestinationRequest = { ["targetArn"] = true, ["roleArn"] = true, ["destinationName"] = true, nil }

function asserts.AssertPutDestinationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutDestinationRequest to be of type 'table'")
	assert(struct["destinationName"], "Expected key destinationName to exist in table")
	assert(struct["targetArn"], "Expected key targetArn to exist in table")
	assert(struct["roleArn"], "Expected key roleArn to exist in table")
	if struct["targetArn"] then asserts.AssertTargetArn(struct["targetArn"]) end
	if struct["roleArn"] then asserts.AssertRoleArn(struct["roleArn"]) end
	if struct["destinationName"] then asserts.AssertDestinationName(struct["destinationName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutDestinationRequest[k], "PutDestinationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutDestinationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * targetArn [TargetArn] <p>The ARN of an Amazon Kinesis stream to which to deliver matching log events.</p>
-- * roleArn [RoleArn] <p>The ARN of an IAM role that grants CloudWatch Logs permissions to call the Amazon Kinesis PutRecord operation on the destination stream.</p>
-- * destinationName [DestinationName] <p>A name for the destination.</p>
-- Required key: destinationName
-- Required key: targetArn
-- Required key: roleArn
-- @return PutDestinationRequest structure as a key-value pair table
function M.PutDestinationRequest(args)
	assert(args, "You must provide an argument table when creating PutDestinationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["targetArn"] = args["targetArn"],
		["roleArn"] = args["roleArn"],
		["destinationName"] = args["destinationName"],
	}
	asserts.AssertPutDestinationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeExportTasksResponse = { ["nextToken"] = true, ["exportTasks"] = true, nil }

function asserts.AssertDescribeExportTasksResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExportTasksResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["exportTasks"] then asserts.AssertExportTasks(struct["exportTasks"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeExportTasksResponse[k], "DescribeExportTasksResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExportTasksResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] 
-- * exportTasks [ExportTasks] <p>The export tasks.</p>
-- @return DescribeExportTasksResponse structure as a key-value pair table
function M.DescribeExportTasksResponse(args)
	assert(args, "You must provide an argument table when creating DescribeExportTasksResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["exportTasks"] = args["exportTasks"],
	}
	asserts.AssertDescribeExportTasksResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutSubscriptionFilterRequest = { ["filterPattern"] = true, ["filterName"] = true, ["roleArn"] = true, ["logGroupName"] = true, ["destinationArn"] = true, ["distribution"] = true, nil }

function asserts.AssertPutSubscriptionFilterRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutSubscriptionFilterRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["filterName"], "Expected key filterName to exist in table")
	assert(struct["filterPattern"], "Expected key filterPattern to exist in table")
	assert(struct["destinationArn"], "Expected key destinationArn to exist in table")
	if struct["filterPattern"] then asserts.AssertFilterPattern(struct["filterPattern"]) end
	if struct["filterName"] then asserts.AssertFilterName(struct["filterName"]) end
	if struct["roleArn"] then asserts.AssertRoleArn(struct["roleArn"]) end
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	if struct["destinationArn"] then asserts.AssertDestinationArn(struct["destinationArn"]) end
	if struct["distribution"] then asserts.AssertDistribution(struct["distribution"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutSubscriptionFilterRequest[k], "PutSubscriptionFilterRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutSubscriptionFilterRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * filterPattern [FilterPattern] <p>A filter pattern for subscribing to a filtered stream of log events.</p>
-- * filterName [FilterName] <p>A name for the subscription filter. If you are updating an existing filter, you must specify the correct name in <code>filterName</code>. Otherwise, the call fails because you cannot associate a second filter with a log group. To find the name of the filter currently associated with a log group, use <a>DescribeSubscriptionFilters</a>.</p>
-- * roleArn [RoleArn] <p>The ARN of an IAM role that grants CloudWatch Logs permissions to deliver ingested log events to the destination stream. You don't need to provide the ARN when you are working with a logical destination for cross-account delivery.</p>
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- * destinationArn [DestinationArn] <p>The ARN of the destination to deliver matching log events to. Currently, the supported destinations are:</p> <ul> <li> <p>An Amazon Kinesis stream belonging to the same account as the subscription filter, for same-account delivery.</p> </li> <li> <p>A logical destination (specified using an ARN) belonging to a different account, for cross-account delivery.</p> </li> <li> <p>An Amazon Kinesis Firehose delivery stream belonging to the same account as the subscription filter, for same-account delivery.</p> </li> <li> <p>An AWS Lambda function belonging to the same account as the subscription filter, for same-account delivery.</p> </li> </ul>
-- * distribution [Distribution] <p>The method used to distribute log data to the destination. By default log data is grouped by log stream, but the grouping can be set to random for a more even distribution. This property is only applicable when the destination is an Amazon Kinesis stream. </p>
-- Required key: logGroupName
-- Required key: filterName
-- Required key: filterPattern
-- Required key: destinationArn
-- @return PutSubscriptionFilterRequest structure as a key-value pair table
function M.PutSubscriptionFilterRequest(args)
	assert(args, "You must provide an argument table when creating PutSubscriptionFilterRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["filterPattern"] = args["filterPattern"],
		["filterName"] = args["filterName"],
		["roleArn"] = args["roleArn"],
		["logGroupName"] = args["logGroupName"],
		["destinationArn"] = args["destinationArn"],
		["distribution"] = args["distribution"],
	}
	asserts.AssertPutSubscriptionFilterRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteResourcePolicyRequest = { ["policyName"] = true, nil }

function asserts.AssertDeleteResourcePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteResourcePolicyRequest to be of type 'table'")
	if struct["policyName"] then asserts.AssertPolicyName(struct["policyName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteResourcePolicyRequest[k], "DeleteResourcePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteResourcePolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * policyName [PolicyName] <p>The name of the policy to be revoked. This parameter is required.</p>
-- @return DeleteResourcePolicyRequest structure as a key-value pair table
function M.DeleteResourcePolicyRequest(args)
	assert(args, "You must provide an argument table when creating DeleteResourcePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["policyName"] = args["policyName"],
	}
	asserts.AssertDeleteResourcePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSubscriptionFiltersRequest = { ["nextToken"] = true, ["limit"] = true, ["logGroupName"] = true, ["filterNamePrefix"] = true, nil }

function asserts.AssertDescribeSubscriptionFiltersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSubscriptionFiltersRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["limit"] then asserts.AssertDescribeLimit(struct["limit"]) end
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	if struct["filterNamePrefix"] then asserts.AssertFilterName(struct["filterNamePrefix"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSubscriptionFiltersRequest[k], "DescribeSubscriptionFiltersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSubscriptionFiltersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * limit [DescribeLimit] <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- * filterNamePrefix [FilterName] <p>The prefix to match. If you don't specify a value, no prefix filter is applied.</p>
-- Required key: logGroupName
-- @return DescribeSubscriptionFiltersRequest structure as a key-value pair table
function M.DescribeSubscriptionFiltersRequest(args)
	assert(args, "You must provide an argument table when creating DescribeSubscriptionFiltersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["limit"] = args["limit"],
		["logGroupName"] = args["logGroupName"],
		["filterNamePrefix"] = args["filterNamePrefix"],
	}
	asserts.AssertDescribeSubscriptionFiltersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AssociateKmsKeyRequest = { ["kmsKeyId"] = true, ["logGroupName"] = true, nil }

function asserts.AssertAssociateKmsKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AssociateKmsKeyRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["kmsKeyId"], "Expected key kmsKeyId to exist in table")
	if struct["kmsKeyId"] then asserts.AssertKmsKeyId(struct["kmsKeyId"]) end
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.AssociateKmsKeyRequest[k], "AssociateKmsKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AssociateKmsKeyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * kmsKeyId [KmsKeyId] <p>The Amazon Resource Name (ARN) of the CMK to use when encrypting log data. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kms">Amazon Resource Names - AWS Key Management Service (AWS KMS)</a>.</p>
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required key: logGroupName
-- Required key: kmsKeyId
-- @return AssociateKmsKeyRequest structure as a key-value pair table
function M.AssociateKmsKeyRequest(args)
	assert(args, "You must provide an argument table when creating AssociateKmsKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["kmsKeyId"] = args["kmsKeyId"],
		["logGroupName"] = args["logGroupName"],
	}
	asserts.AssertAssociateKmsKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExportTaskExecutionInfo = { ["completionTime"] = true, ["creationTime"] = true, nil }

function asserts.AssertExportTaskExecutionInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportTaskExecutionInfo to be of type 'table'")
	if struct["completionTime"] then asserts.AssertTimestamp(struct["completionTime"]) end
	if struct["creationTime"] then asserts.AssertTimestamp(struct["creationTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExportTaskExecutionInfo[k], "ExportTaskExecutionInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportTaskExecutionInfo
-- <p>Represents the status of an export task.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * completionTime [Timestamp] <p>The completion time of the export task, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.</p>
-- * creationTime [Timestamp] <p>The creation time of the export task, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.</p>
-- @return ExportTaskExecutionInfo structure as a key-value pair table
function M.ExportTaskExecutionInfo(args)
	assert(args, "You must provide an argument table when creating ExportTaskExecutionInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["completionTime"] = args["completionTime"],
		["creationTime"] = args["creationTime"],
	}
	asserts.AssertExportTaskExecutionInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutResourcePolicyResponse = { ["resourcePolicy"] = true, nil }

function asserts.AssertPutResourcePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutResourcePolicyResponse to be of type 'table'")
	if struct["resourcePolicy"] then asserts.AssertResourcePolicy(struct["resourcePolicy"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutResourcePolicyResponse[k], "PutResourcePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutResourcePolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourcePolicy [ResourcePolicy] <p>The new policy.</p>
-- @return PutResourcePolicyResponse structure as a key-value pair table
function M.PutResourcePolicyResponse(args)
	assert(args, "You must provide an argument table when creating PutResourcePolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourcePolicy"] = args["resourcePolicy"],
	}
	asserts.AssertPutResourcePolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutLogEventsRequest = { ["sequenceToken"] = true, ["logEvents"] = true, ["logStreamName"] = true, ["logGroupName"] = true, nil }

function asserts.AssertPutLogEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutLogEventsRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["logStreamName"], "Expected key logStreamName to exist in table")
	assert(struct["logEvents"], "Expected key logEvents to exist in table")
	if struct["sequenceToken"] then asserts.AssertSequenceToken(struct["sequenceToken"]) end
	if struct["logEvents"] then asserts.AssertInputLogEvents(struct["logEvents"]) end
	if struct["logStreamName"] then asserts.AssertLogStreamName(struct["logStreamName"]) end
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutLogEventsRequest[k], "PutLogEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutLogEventsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * sequenceToken [SequenceToken] <p>The sequence token obtained from the response of the previous <code>PutLogEvents</code> call. An upload in a newly created log stream does not require a sequence token. You can also get the sequence token using <a>DescribeLogStreams</a>. If you call <code>PutLogEvents</code> twice within a narrow time period using the same value for <code>sequenceToken</code>, both calls may be successful, or one may be rejected.</p>
-- * logEvents [InputLogEvents] <p>The log events.</p>
-- * logStreamName [LogStreamName] <p>The name of the log stream.</p>
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required key: logGroupName
-- Required key: logStreamName
-- Required key: logEvents
-- @return PutLogEventsRequest structure as a key-value pair table
function M.PutLogEventsRequest(args)
	assert(args, "You must provide an argument table when creating PutLogEventsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["sequenceToken"] = args["sequenceToken"],
		["logEvents"] = args["logEvents"],
		["logStreamName"] = args["logStreamName"],
		["logGroupName"] = args["logGroupName"],
	}
	asserts.AssertPutLogEventsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLogGroupsRequest = { ["limit"] = true, ["nextToken"] = true, ["logGroupNamePrefix"] = true, nil }

function asserts.AssertDescribeLogGroupsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLogGroupsRequest to be of type 'table'")
	if struct["limit"] then asserts.AssertDescribeLimit(struct["limit"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["logGroupNamePrefix"] then asserts.AssertLogGroupName(struct["logGroupNamePrefix"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLogGroupsRequest[k], "DescribeLogGroupsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLogGroupsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * limit [DescribeLimit] <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
-- * nextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * logGroupNamePrefix [LogGroupName] <p>The prefix to match.</p>
-- @return DescribeLogGroupsRequest structure as a key-value pair table
function M.DescribeLogGroupsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeLogGroupsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["limit"] = args["limit"],
		["nextToken"] = args["nextToken"],
		["logGroupNamePrefix"] = args["logGroupNamePrefix"],
	}
	asserts.AssertDescribeLogGroupsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SearchedLogStream = { ["searchedCompletely"] = true, ["logStreamName"] = true, nil }

function asserts.AssertSearchedLogStream(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SearchedLogStream to be of type 'table'")
	if struct["searchedCompletely"] then asserts.AssertLogStreamSearchedCompletely(struct["searchedCompletely"]) end
	if struct["logStreamName"] then asserts.AssertLogStreamName(struct["logStreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.SearchedLogStream[k], "SearchedLogStream contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SearchedLogStream
-- <p>Represents the search status of a log stream.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * searchedCompletely [LogStreamSearchedCompletely] <p>Indicates whether all the events in this log stream were searched.</p>
-- * logStreamName [LogStreamName] <p>The name of the log stream.</p>
-- @return SearchedLogStream structure as a key-value pair table
function M.SearchedLogStream(args)
	assert(args, "You must provide an argument table when creating SearchedLogStream")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["searchedCompletely"] = args["searchedCompletely"],
		["logStreamName"] = args["logStreamName"],
	}
	asserts.AssertSearchedLogStream(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeExportTasksRequest = { ["nextToken"] = true, ["limit"] = true, ["taskId"] = true, ["statusCode"] = true, nil }

function asserts.AssertDescribeExportTasksRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeExportTasksRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["limit"] then asserts.AssertDescribeLimit(struct["limit"]) end
	if struct["taskId"] then asserts.AssertExportTaskId(struct["taskId"]) end
	if struct["statusCode"] then asserts.AssertExportTaskStatusCode(struct["statusCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeExportTasksRequest[k], "DescribeExportTasksRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeExportTasksRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * limit [DescribeLimit] <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
-- * taskId [ExportTaskId] <p>The ID of the export task. Specifying a task ID filters the results to zero or one export tasks.</p>
-- * statusCode [ExportTaskStatusCode] <p>The status code of the export task. Specifying a status code filters the results to zero or more export tasks.</p>
-- @return DescribeExportTasksRequest structure as a key-value pair table
function M.DescribeExportTasksRequest(args)
	assert(args, "You must provide an argument table when creating DescribeExportTasksRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["limit"] = args["limit"],
		["taskId"] = args["taskId"],
		["statusCode"] = args["statusCode"],
	}
	asserts.AssertDescribeExportTasksRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeResourcePoliciesResponse = { ["resourcePolicies"] = true, ["nextToken"] = true, nil }

function asserts.AssertDescribeResourcePoliciesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeResourcePoliciesResponse to be of type 'table'")
	if struct["resourcePolicies"] then asserts.AssertResourcePolicies(struct["resourcePolicies"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeResourcePoliciesResponse[k], "DescribeResourcePoliciesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeResourcePoliciesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resourcePolicies [ResourcePolicies] <p>The resource policies that exist in this account.</p>
-- * nextToken [NextToken] 
-- @return DescribeResourcePoliciesResponse structure as a key-value pair table
function M.DescribeResourcePoliciesResponse(args)
	assert(args, "You must provide an argument table when creating DescribeResourcePoliciesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resourcePolicies"] = args["resourcePolicies"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertDescribeResourcePoliciesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InputLogEvent = { ["timestamp"] = true, ["message"] = true, nil }

function asserts.AssertInputLogEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InputLogEvent to be of type 'table'")
	assert(struct["timestamp"], "Expected key timestamp to exist in table")
	assert(struct["message"], "Expected key message to exist in table")
	if struct["timestamp"] then asserts.AssertTimestamp(struct["timestamp"]) end
	if struct["message"] then asserts.AssertEventMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InputLogEvent[k], "InputLogEvent contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InputLogEvent
-- <p>Represents a log event, which is a record of activity that was recorded by the application or resource being monitored.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * timestamp [Timestamp] <p>The time the event occurred, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.</p>
-- * message [EventMessage] <p>The raw event message.</p>
-- Required key: timestamp
-- Required key: message
-- @return InputLogEvent structure as a key-value pair table
function M.InputLogEvent(args)
	assert(args, "You must provide an argument table when creating InputLogEvent")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["timestamp"] = args["timestamp"],
		["message"] = args["message"],
	}
	asserts.AssertInputLogEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LogGroup = { ["storedBytes"] = true, ["metricFilterCount"] = true, ["creationTime"] = true, ["logGroupName"] = true, ["kmsKeyId"] = true, ["retentionInDays"] = true, ["arn"] = true, nil }

function asserts.AssertLogGroup(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LogGroup to be of type 'table'")
	if struct["storedBytes"] then asserts.AssertStoredBytes(struct["storedBytes"]) end
	if struct["metricFilterCount"] then asserts.AssertFilterCount(struct["metricFilterCount"]) end
	if struct["creationTime"] then asserts.AssertTimestamp(struct["creationTime"]) end
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	if struct["kmsKeyId"] then asserts.AssertKmsKeyId(struct["kmsKeyId"]) end
	if struct["retentionInDays"] then asserts.AssertDays(struct["retentionInDays"]) end
	if struct["arn"] then asserts.AssertArn(struct["arn"]) end
	for k,_ in pairs(struct) do
		assert(keys.LogGroup[k], "LogGroup contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LogGroup
-- <p>Represents a log group.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * storedBytes [StoredBytes] <p>The number of bytes stored.</p>
-- * metricFilterCount [FilterCount] <p>The number of metric filters.</p>
-- * creationTime [Timestamp] <p>The creation time of the log group, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC.</p>
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- * kmsKeyId [KmsKeyId] <p>The Amazon Resource Name (ARN) of the CMK to use when encrypting log data.</p>
-- * retentionInDays [Days] 
-- * arn [Arn] <p>The Amazon Resource Name (ARN) of the log group.</p>
-- @return LogGroup structure as a key-value pair table
function M.LogGroup(args)
	assert(args, "You must provide an argument table when creating LogGroup")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["storedBytes"] = args["storedBytes"],
		["metricFilterCount"] = args["metricFilterCount"],
		["creationTime"] = args["creationTime"],
		["logGroupName"] = args["logGroupName"],
		["kmsKeyId"] = args["kmsKeyId"],
		["retentionInDays"] = args["retentionInDays"],
		["arn"] = args["arn"],
	}
	asserts.AssertLogGroup(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsLogGroupResponse = { ["tags"] = true, nil }

function asserts.AssertListTagsLogGroupResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsLogGroupResponse to be of type 'table'")
	if struct["tags"] then asserts.AssertTags(struct["tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsLogGroupResponse[k], "ListTagsLogGroupResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsLogGroupResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * tags [Tags] <p>The tags for the log group.</p>
-- @return ListTagsLogGroupResponse structure as a key-value pair table
function M.ListTagsLogGroupResponse(args)
	assert(args, "You must provide an argument table when creating ListTagsLogGroupResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["tags"] = args["tags"],
	}
	asserts.AssertListTagsLogGroupResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDestinationRequest = { ["destinationName"] = true, nil }

function asserts.AssertDeleteDestinationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDestinationRequest to be of type 'table'")
	assert(struct["destinationName"], "Expected key destinationName to exist in table")
	if struct["destinationName"] then asserts.AssertDestinationName(struct["destinationName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDestinationRequest[k], "DeleteDestinationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDestinationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * destinationName [DestinationName] <p>The name of the destination.</p>
-- Required key: destinationName
-- @return DeleteDestinationRequest structure as a key-value pair table
function M.DeleteDestinationRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDestinationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["destinationName"] = args["destinationName"],
	}
	asserts.AssertDeleteDestinationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeLogStreamsRequest = { ["orderBy"] = true, ["logStreamNamePrefix"] = true, ["logGroupName"] = true, ["descending"] = true, ["limit"] = true, ["nextToken"] = true, nil }

function asserts.AssertDescribeLogStreamsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeLogStreamsRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	if struct["orderBy"] then asserts.AssertOrderBy(struct["orderBy"]) end
	if struct["logStreamNamePrefix"] then asserts.AssertLogStreamName(struct["logStreamNamePrefix"]) end
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	if struct["descending"] then asserts.AssertDescending(struct["descending"]) end
	if struct["limit"] then asserts.AssertDescribeLimit(struct["limit"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeLogStreamsRequest[k], "DescribeLogStreamsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeLogStreamsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * orderBy [OrderBy] <p>If the value is <code>LogStreamName</code>, the results are ordered by log stream name. If the value is <code>LastEventTime</code>, the results are ordered by the event time. The default value is <code>LogStreamName</code>.</p> <p>If you order the results by event time, you cannot specify the <code>logStreamNamePrefix</code> parameter.</p> <p>lastEventTimestamp represents the time of the most recent log event in the log stream in CloudWatch Logs. This number is expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. lastEventTimeStamp updates on an eventual consistency basis. It typically updates in less than an hour from ingestion, but may take longer in some rare situations.</p>
-- * logStreamNamePrefix [LogStreamName] <p>The prefix to match.</p> <p>If <code>orderBy</code> is <code>LastEventTime</code>,you cannot specify this parameter.</p>
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- * descending [Descending] <p>If the value is true, results are returned in descending order. If the value is to false, results are returned in ascending order. The default value is false.</p>
-- * limit [DescribeLimit] <p>The maximum number of items returned. If you don't specify a value, the default is up to 50 items.</p>
-- * nextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- Required key: logGroupName
-- @return DescribeLogStreamsRequest structure as a key-value pair table
function M.DescribeLogStreamsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeLogStreamsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["orderBy"] = args["orderBy"],
		["logStreamNamePrefix"] = args["logStreamNamePrefix"],
		["logGroupName"] = args["logGroupName"],
		["descending"] = args["descending"],
		["limit"] = args["limit"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertDescribeLogStreamsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteRetentionPolicyRequest = { ["logGroupName"] = true, nil }

function asserts.AssertDeleteRetentionPolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteRetentionPolicyRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteRetentionPolicyRequest[k], "DeleteRetentionPolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteRetentionPolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required key: logGroupName
-- @return DeleteRetentionPolicyRequest structure as a key-value pair table
function M.DeleteRetentionPolicyRequest(args)
	assert(args, "You must provide an argument table when creating DeleteRetentionPolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["logGroupName"] = args["logGroupName"],
	}
	asserts.AssertDeleteRetentionPolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetLogEventsRequest = { ["endTime"] = true, ["logStreamName"] = true, ["logGroupName"] = true, ["limit"] = true, ["startTime"] = true, ["nextToken"] = true, ["startFromHead"] = true, nil }

function asserts.AssertGetLogEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetLogEventsRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	assert(struct["logStreamName"], "Expected key logStreamName to exist in table")
	if struct["endTime"] then asserts.AssertTimestamp(struct["endTime"]) end
	if struct["logStreamName"] then asserts.AssertLogStreamName(struct["logStreamName"]) end
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	if struct["limit"] then asserts.AssertEventsLimit(struct["limit"]) end
	if struct["startTime"] then asserts.AssertTimestamp(struct["startTime"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["startFromHead"] then asserts.AssertStartFromHead(struct["startFromHead"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetLogEventsRequest[k], "GetLogEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetLogEventsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * endTime [Timestamp] <p>The end of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp equal to or later than this time are not included.</p>
-- * logStreamName [LogStreamName] <p>The name of the log stream.</p>
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- * limit [EventsLimit] <p>The maximum number of log events returned. If you don't specify a value, the maximum is as many log events as can fit in a response size of 1 MB, up to 10,000 log events.</p>
-- * startTime [Timestamp] <p>The start of the time range, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp equal to this time or later than this time are included. Events with a time stamp earlier than this time are not included.</p>
-- * nextToken [NextToken] <p>The token for the next set of items to return. (You received this token from a previous call.)</p>
-- * startFromHead [StartFromHead] <p>If the value is true, the earliest log events are returned first. If the value is false, the latest log events are returned first. The default value is false.</p>
-- Required key: logGroupName
-- Required key: logStreamName
-- @return GetLogEventsRequest structure as a key-value pair table
function M.GetLogEventsRequest(args)
	assert(args, "You must provide an argument table when creating GetLogEventsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["endTime"] = args["endTime"],
		["logStreamName"] = args["logStreamName"],
		["logGroupName"] = args["logGroupName"],
		["limit"] = args["limit"],
		["startTime"] = args["startTime"],
		["nextToken"] = args["nextToken"],
		["startFromHead"] = args["startFromHead"],
	}
	asserts.AssertGetLogEventsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.FilterLogEventsResponse = { ["searchedLogStreams"] = true, ["nextToken"] = true, ["events"] = true, nil }

function asserts.AssertFilterLogEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected FilterLogEventsResponse to be of type 'table'")
	if struct["searchedLogStreams"] then asserts.AssertSearchedLogStreams(struct["searchedLogStreams"]) end
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["events"] then asserts.AssertFilteredLogEvents(struct["events"]) end
	for k,_ in pairs(struct) do
		assert(keys.FilterLogEventsResponse[k], "FilterLogEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type FilterLogEventsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * searchedLogStreams [SearchedLogStreams] <p>Indicates which log streams have been searched and whether each has been searched completely.</p>
-- * nextToken [NextToken] <p>The token to use when requesting the next set of items. The token expires after 24 hours.</p>
-- * events [FilteredLogEvents] <p>The matched events.</p>
-- @return FilterLogEventsResponse structure as a key-value pair table
function M.FilterLogEventsResponse(args)
	assert(args, "You must provide an argument table when creating FilterLogEventsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["searchedLogStreams"] = args["searchedLogStreams"],
		["nextToken"] = args["nextToken"],
		["events"] = args["events"],
	}
	asserts.AssertFilterLogEventsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeSubscriptionFiltersResponse = { ["nextToken"] = true, ["subscriptionFilters"] = true, nil }

function asserts.AssertDescribeSubscriptionFiltersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeSubscriptionFiltersResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["subscriptionFilters"] then asserts.AssertSubscriptionFilters(struct["subscriptionFilters"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeSubscriptionFiltersResponse[k], "DescribeSubscriptionFiltersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeSubscriptionFiltersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] 
-- * subscriptionFilters [SubscriptionFilters] <p>The subscription filters.</p>
-- @return DescribeSubscriptionFiltersResponse structure as a key-value pair table
function M.DescribeSubscriptionFiltersResponse(args)
	assert(args, "You must provide an argument table when creating DescribeSubscriptionFiltersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["subscriptionFilters"] = args["subscriptionFilters"],
	}
	asserts.AssertDescribeSubscriptionFiltersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TestMetricFilterResponse = { ["matches"] = true, nil }

function asserts.AssertTestMetricFilterResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TestMetricFilterResponse to be of type 'table'")
	if struct["matches"] then asserts.AssertMetricFilterMatches(struct["matches"]) end
	for k,_ in pairs(struct) do
		assert(keys.TestMetricFilterResponse[k], "TestMetricFilterResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TestMetricFilterResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * matches [MetricFilterMatches] <p>The matched events.</p>
-- @return TestMetricFilterResponse structure as a key-value pair table
function M.TestMetricFilterResponse(args)
	assert(args, "You must provide an argument table when creating TestMetricFilterResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["matches"] = args["matches"],
	}
	asserts.AssertTestMetricFilterResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteLogGroupRequest = { ["logGroupName"] = true, nil }

function asserts.AssertDeleteLogGroupRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteLogGroupRequest to be of type 'table'")
	assert(struct["logGroupName"], "Expected key logGroupName to exist in table")
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteLogGroupRequest[k], "DeleteLogGroupRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteLogGroupRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * logGroupName [LogGroupName] <p>The name of the log group.</p>
-- Required key: logGroupName
-- @return DeleteLogGroupRequest structure as a key-value pair table
function M.DeleteLogGroupRequest(args)
	assert(args, "You must provide an argument table when creating DeleteLogGroupRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["logGroupName"] = args["logGroupName"],
	}
	asserts.AssertDeleteLogGroupRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExportTask = { ["status"] = true, ["from"] = true, ["destinationPrefix"] = true, ["destination"] = true, ["logGroupName"] = true, ["to"] = true, ["taskId"] = true, ["taskName"] = true, ["executionInfo"] = true, nil }

function asserts.AssertExportTask(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExportTask to be of type 'table'")
	if struct["status"] then asserts.AssertExportTaskStatus(struct["status"]) end
	if struct["from"] then asserts.AssertTimestamp(struct["from"]) end
	if struct["destinationPrefix"] then asserts.AssertExportDestinationPrefix(struct["destinationPrefix"]) end
	if struct["destination"] then asserts.AssertExportDestinationBucket(struct["destination"]) end
	if struct["logGroupName"] then asserts.AssertLogGroupName(struct["logGroupName"]) end
	if struct["to"] then asserts.AssertTimestamp(struct["to"]) end
	if struct["taskId"] then asserts.AssertExportTaskId(struct["taskId"]) end
	if struct["taskName"] then asserts.AssertExportTaskName(struct["taskName"]) end
	if struct["executionInfo"] then asserts.AssertExportTaskExecutionInfo(struct["executionInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExportTask[k], "ExportTask contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExportTask
-- <p>Represents an export task.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [ExportTaskStatus] <p>The status of the export task.</p>
-- * from [Timestamp] <p>The start time, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp before this time are not exported.</p>
-- * destinationPrefix [ExportDestinationPrefix] <p>The prefix that was used as the start of Amazon S3 key for every object exported.</p>
-- * destination [ExportDestinationBucket] <p>The name of Amazon S3 bucket to which the log data was exported.</p>
-- * logGroupName [LogGroupName] <p>The name of the log group from which logs data was exported.</p>
-- * to [Timestamp] <p>The end time, expressed as the number of milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp later than this time are not exported.</p>
-- * taskId [ExportTaskId] <p>The ID of the export task.</p>
-- * taskName [ExportTaskName] <p>The name of the export task.</p>
-- * executionInfo [ExportTaskExecutionInfo] <p>Execution info about the export task.</p>
-- @return ExportTask structure as a key-value pair table
function M.ExportTask(args)
	assert(args, "You must provide an argument table when creating ExportTask")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["from"] = args["from"],
		["destinationPrefix"] = args["destinationPrefix"],
		["destination"] = args["destination"],
		["logGroupName"] = args["logGroupName"],
		["to"] = args["to"],
		["taskId"] = args["taskId"],
		["taskName"] = args["taskName"],
		["executionInfo"] = args["executionInfo"],
	}
	asserts.AssertExportTask(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeResourcePoliciesRequest = { ["nextToken"] = true, ["limit"] = true, nil }

function asserts.AssertDescribeResourcePoliciesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeResourcePoliciesRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertNextToken(struct["nextToken"]) end
	if struct["limit"] then asserts.AssertDescribeLimit(struct["limit"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeResourcePoliciesRequest[k], "DescribeResourcePoliciesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeResourcePoliciesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [NextToken] 
-- * limit [DescribeLimit] <p>The maximum number of resource policies to be displayed with one call of this API.</p>
-- @return DescribeResourcePoliciesRequest structure as a key-value pair table
function M.DescribeResourcePoliciesRequest(args)
	assert(args, "You must provide an argument table when creating DescribeResourcePoliciesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["limit"] = args["limit"],
	}
	asserts.AssertDescribeResourcePoliciesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

function asserts.AssertPolicyName(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyName to be of type 'string'")
end

--  
function M.PolicyName(str)
	asserts.AssertPolicyName(str)
	return str
end

function asserts.AssertValue(str)
	assert(str)
	assert(type(str) == "string", "Expected Value to be of type 'string'")
end

--  
function M.Value(str)
	asserts.AssertValue(str)
	return str
end

function asserts.AssertToken(str)
	assert(str)
	assert(type(str) == "string", "Expected Token to be of type 'string'")
end

--  
function M.Token(str)
	asserts.AssertToken(str)
	return str
end

function asserts.AssertArn(str)
	assert(str)
	assert(type(str) == "string", "Expected Arn to be of type 'string'")
end

--  
function M.Arn(str)
	asserts.AssertArn(str)
	return str
end

function asserts.AssertSequenceToken(str)
	assert(str)
	assert(type(str) == "string", "Expected SequenceToken to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.SequenceToken(str)
	asserts.AssertSequenceToken(str)
	return str
end

function asserts.AssertLogStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected LogStreamName to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.LogStreamName(str)
	asserts.AssertLogStreamName(str)
	return str
end

function asserts.AssertEventMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected EventMessage to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.EventMessage(str)
	asserts.AssertEventMessage(str)
	return str
end

function asserts.AssertExportDestinationPrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportDestinationPrefix to be of type 'string'")
end

--  
function M.ExportDestinationPrefix(str)
	asserts.AssertExportDestinationPrefix(str)
	return str
end

function asserts.AssertFilterPattern(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterPattern to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

-- <p>A symbolic description of how CloudWatch Logs should interpret the data in each log event. For example, a log event may contain time stamps, IP addresses, strings, and so on. You use the filter pattern to specify what to look for in the log event message.</p>
function M.FilterPattern(str)
	asserts.AssertFilterPattern(str)
	return str
end

function asserts.AssertExportDestinationBucket(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportDestinationBucket to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ExportDestinationBucket(str)
	asserts.AssertExportDestinationBucket(str)
	return str
end

function asserts.AssertDestinationName(str)
	assert(str)
	assert(type(str) == "string", "Expected DestinationName to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DestinationName(str)
	asserts.AssertDestinationName(str)
	return str
end

function asserts.AssertTagValue(str)
	assert(str)
	assert(type(str) == "string", "Expected TagValue to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.TagValue(str)
	asserts.AssertTagValue(str)
	return str
end

function asserts.AssertDistribution(str)
	assert(str)
	assert(type(str) == "string", "Expected Distribution to be of type 'string'")
end

-- <p>The method used to distribute log data to the destination, which can be either random or grouped by log stream.</p>
function M.Distribution(str)
	asserts.AssertDistribution(str)
	return str
end

function asserts.AssertKmsKeyId(str)
	assert(str)
	assert(type(str) == "string", "Expected KmsKeyId to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

--  
function M.KmsKeyId(str)
	asserts.AssertKmsKeyId(str)
	return str
end

function asserts.AssertMetricValue(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricValue to be of type 'string'")
	assert(#str <= 100, "Expected string to be max 100 characters")
end

-- <p>The value to publish to the CloudWatch metric. For example, if you're counting the occurrences of a term like "Error", the value is "1" for each occurrence. If you're counting the bytes transferred, the value is the value in the log event.</p>
function M.MetricValue(str)
	asserts.AssertMetricValue(str)
	return str
end

function asserts.AssertTargetArn(str)
	assert(str)
	assert(type(str) == "string", "Expected TargetArn to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.TargetArn(str)
	asserts.AssertTargetArn(str)
	return str
end

function asserts.AssertExportTaskStatusMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportTaskStatusMessage to be of type 'string'")
end

--  
function M.ExportTaskStatusMessage(str)
	asserts.AssertExportTaskStatusMessage(str)
	return str
end

function asserts.AssertExportTaskStatusCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportTaskStatusCode to be of type 'string'")
end

--  
function M.ExportTaskStatusCode(str)
	asserts.AssertExportTaskStatusCode(str)
	return str
end

function asserts.AssertAccessPolicy(str)
	assert(str)
	assert(type(str) == "string", "Expected AccessPolicy to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.AccessPolicy(str)
	asserts.AssertAccessPolicy(str)
	return str
end

function asserts.AssertMetricName(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricName to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

-- <p>The name of the CloudWatch metric to which the monitored log information should be published. For example, you may publish to a metric called ErrorCount.</p>
function M.MetricName(str)
	asserts.AssertMetricName(str)
	return str
end

function asserts.AssertExportTaskName(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportTaskName to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ExportTaskName(str)
	asserts.AssertExportTaskName(str)
	return str
end

function asserts.AssertFilterName(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterName to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.FilterName(str)
	asserts.AssertFilterName(str)
	return str
end

function asserts.AssertRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleArn to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.RoleArn(str)
	asserts.AssertRoleArn(str)
	return str
end

function asserts.AssertLogGroupName(str)
	assert(str)
	assert(type(str) == "string", "Expected LogGroupName to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.LogGroupName(str)
	asserts.AssertLogGroupName(str)
	return str
end

function asserts.AssertOrderBy(str)
	assert(str)
	assert(type(str) == "string", "Expected OrderBy to be of type 'string'")
end

--  
function M.OrderBy(str)
	asserts.AssertOrderBy(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

-- <p>The token for the next set of items to return. The token expires after 24 hours.</p>
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertDestinationArn(str)
	assert(str)
	assert(type(str) == "string", "Expected DestinationArn to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DestinationArn(str)
	asserts.AssertDestinationArn(str)
	return str
end

function asserts.AssertMetricNamespace(str)
	assert(str)
	assert(type(str) == "string", "Expected MetricNamespace to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.MetricNamespace(str)
	asserts.AssertMetricNamespace(str)
	return str
end

function asserts.AssertEventId(str)
	assert(str)
	assert(type(str) == "string", "Expected EventId to be of type 'string'")
end

--  
function M.EventId(str)
	asserts.AssertEventId(str)
	return str
end

function asserts.AssertPolicyDocument(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyDocument to be of type 'string'")
	assert(#str <= 5120, "Expected string to be max 5120 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.PolicyDocument(str)
	asserts.AssertPolicyDocument(str)
	return str
end

function asserts.AssertExportTaskId(str)
	assert(str)
	assert(type(str) == "string", "Expected ExportTaskId to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ExportTaskId(str)
	asserts.AssertExportTaskId(str)
	return str
end

function asserts.AssertDefaultValue(double)
	assert(double)
	assert(type(double) == "number", "Expected DefaultValue to be of type 'number'")
end

function M.DefaultValue(double)
	asserts.AssertDefaultValue(double)
	return double
end

function asserts.AssertStoredBytes(long)
	assert(long)
	assert(type(long) == "number", "Expected StoredBytes to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.StoredBytes(long)
	asserts.AssertStoredBytes(long)
	return long
end

function asserts.AssertTimestamp(long)
	assert(long)
	assert(type(long) == "number", "Expected Timestamp to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Timestamp(long)
	asserts.AssertTimestamp(long)
	return long
end

function asserts.AssertEventNumber(long)
	assert(long)
	assert(type(long) == "number", "Expected EventNumber to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.EventNumber(long)
	asserts.AssertEventNumber(long)
	return long
end

function asserts.AssertDays(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Days to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Days(integer)
	asserts.AssertDays(integer)
	return integer
end

function asserts.AssertFilterCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected FilterCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.FilterCount(integer)
	asserts.AssertFilterCount(integer)
	return integer
end

function asserts.AssertEventsLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected EventsLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.EventsLimit(integer)
	asserts.AssertEventsLimit(integer)
	return integer
end

function asserts.AssertDescribeLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected DescribeLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.DescribeLimit(integer)
	asserts.AssertDescribeLimit(integer)
	return integer
end

function asserts.AssertLogEventIndex(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected LogEventIndex to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.LogEventIndex(integer)
	asserts.AssertLogEventIndex(integer)
	return integer
end

function asserts.AssertLogStreamSearchedCompletely(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected LogStreamSearchedCompletely to be of type 'boolean'")
end

function M.LogStreamSearchedCompletely(boolean)
	asserts.AssertLogStreamSearchedCompletely(boolean)
	return boolean
end

function asserts.AssertInterleaved(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Interleaved to be of type 'boolean'")
end

function M.Interleaved(boolean)
	asserts.AssertInterleaved(boolean)
	return boolean
end

function asserts.AssertDescending(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Descending to be of type 'boolean'")
end

function M.Descending(boolean)
	asserts.AssertDescending(boolean)
	return boolean
end

function asserts.AssertStartFromHead(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected StartFromHead to be of type 'boolean'")
end

function M.StartFromHead(boolean)
	asserts.AssertStartFromHead(boolean)
	return boolean
end

function asserts.AssertExtractedValues(map)
	assert(map)
	assert(type(map) == "table", "Expected ExtractedValues to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertToken(k)
		asserts.AssertValue(v)
	end
end

function M.ExtractedValues(map)
	asserts.AssertExtractedValues(map)
	return map
end

function asserts.AssertTags(map)
	assert(map)
	assert(type(map) == "table", "Expected Tags to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertTagKey(k)
		asserts.AssertTagValue(v)
	end
end

function M.Tags(map)
	asserts.AssertTags(map)
	return map
end

function asserts.AssertSubscriptionFilters(list)
	assert(list)
	assert(type(list) == "table", "Expected SubscriptionFilters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSubscriptionFilter(v)
	end
end

--  
-- List of SubscriptionFilter objects
function M.SubscriptionFilters(list)
	asserts.AssertSubscriptionFilters(list)
	return list
end

function asserts.AssertTestEventMessages(list)
	assert(list)
	assert(type(list) == "table", "Expected TestEventMessages to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertEventMessage(v)
	end
end

--  
-- List of EventMessage objects
function M.TestEventMessages(list)
	asserts.AssertTestEventMessages(list)
	return list
end

function asserts.AssertMetricFilterMatches(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricFilterMatches to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMetricFilterMatchRecord(v)
	end
end

--  
-- List of MetricFilterMatchRecord objects
function M.MetricFilterMatches(list)
	asserts.AssertMetricFilterMatches(list)
	return list
end

function asserts.AssertExportTasks(list)
	assert(list)
	assert(type(list) == "table", "Expected ExportTasks to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertExportTask(v)
	end
end

--  
-- List of ExportTask objects
function M.ExportTasks(list)
	asserts.AssertExportTasks(list)
	return list
end

function asserts.AssertResourcePolicies(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourcePolicies to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourcePolicy(v)
	end
end

--  
-- List of ResourcePolicy objects
function M.ResourcePolicies(list)
	asserts.AssertResourcePolicies(list)
	return list
end

function asserts.AssertLogStreams(list)
	assert(list)
	assert(type(list) == "table", "Expected LogStreams to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLogStream(v)
	end
end

--  
-- List of LogStream objects
function M.LogStreams(list)
	asserts.AssertLogStreams(list)
	return list
end

function asserts.AssertLogGroups(list)
	assert(list)
	assert(type(list) == "table", "Expected LogGroups to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLogGroup(v)
	end
end

--  
-- List of LogGroup objects
function M.LogGroups(list)
	asserts.AssertLogGroups(list)
	return list
end

function asserts.AssertDestinations(list)
	assert(list)
	assert(type(list) == "table", "Expected Destinations to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDestination(v)
	end
end

--  
-- List of Destination objects
function M.Destinations(list)
	asserts.AssertDestinations(list)
	return list
end

function asserts.AssertSearchedLogStreams(list)
	assert(list)
	assert(type(list) == "table", "Expected SearchedLogStreams to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSearchedLogStream(v)
	end
end

--  
-- List of SearchedLogStream objects
function M.SearchedLogStreams(list)
	asserts.AssertSearchedLogStreams(list)
	return list
end

function asserts.AssertMetricFilters(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricFilters to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMetricFilter(v)
	end
end

--  
-- List of MetricFilter objects
function M.MetricFilters(list)
	asserts.AssertMetricFilters(list)
	return list
end

function asserts.AssertFilteredLogEvents(list)
	assert(list)
	assert(type(list) == "table", "Expected FilteredLogEvents to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertFilteredLogEvent(v)
	end
end

--  
-- List of FilteredLogEvent objects
function M.FilteredLogEvents(list)
	asserts.AssertFilteredLogEvents(list)
	return list
end

function asserts.AssertInputLogEvents(list)
	assert(list)
	assert(type(list) == "table", "Expected InputLogEvents to be of type ''table")
	assert(#list <= 10000, "Expected list to be contain 10000 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertInputLogEvent(v)
	end
end

--  
-- List of InputLogEvent objects
function M.InputLogEvents(list)
	asserts.AssertInputLogEvents(list)
	return list
end

function asserts.AssertOutputLogEvents(list)
	assert(list)
	assert(type(list) == "table", "Expected OutputLogEvents to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOutputLogEvent(v)
	end
end

--  
-- List of OutputLogEvent objects
function M.OutputLogEvents(list)
	asserts.AssertOutputLogEvents(list)
	return list
end

function asserts.AssertMetricTransformations(list)
	assert(list)
	assert(type(list) == "table", "Expected MetricTransformations to be of type ''table")
	assert(#list <= 1, "Expected list to be contain 1 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertMetricTransformation(v)
	end
end

--  
-- List of MetricTransformation objects
function M.MetricTransformations(list)
	asserts.AssertMetricTransformations(list)
	return list
end

function asserts.AssertInputLogStreamNames(list)
	assert(list)
	assert(type(list) == "table", "Expected InputLogStreamNames to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertLogStreamName(v)
	end
end

--  
-- List of LogStreamName objects
function M.InputLogStreamNames(list)
	asserts.AssertInputLogStreamNames(list)
	return list
end

function asserts.AssertTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagList to be of type ''table")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
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
--- Call PutDestination asynchronously, invoking a callback when done
-- @param PutDestinationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutDestinationAsync(PutDestinationRequest, cb)
	assert(PutDestinationRequest, "You must provide a PutDestinationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.PutDestination",
	}
	for header,value in pairs(PutDestinationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutDestinationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutDestination synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutDestinationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutDestinationSync(PutDestinationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutDestinationAsync(PutDestinationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutResourcePolicy asynchronously, invoking a callback when done
-- @param PutResourcePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutResourcePolicyAsync(PutResourcePolicyRequest, cb)
	assert(PutResourcePolicyRequest, "You must provide a PutResourcePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.PutResourcePolicy",
	}
	for header,value in pairs(PutResourcePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutResourcePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutResourcePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutResourcePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutResourcePolicySync(PutResourcePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutResourcePolicyAsync(PutResourcePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDestination asynchronously, invoking a callback when done
-- @param DeleteDestinationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDestinationAsync(DeleteDestinationRequest, cb)
	assert(DeleteDestinationRequest, "You must provide a DeleteDestinationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.DeleteDestination",
	}
	for header,value in pairs(DeleteDestinationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDestinationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDestination synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDestinationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDestinationSync(DeleteDestinationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDestinationAsync(DeleteDestinationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsLogGroup asynchronously, invoking a callback when done
-- @param ListTagsLogGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsLogGroupAsync(ListTagsLogGroupRequest, cb)
	assert(ListTagsLogGroupRequest, "You must provide a ListTagsLogGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.ListTagsLogGroup",
	}
	for header,value in pairs(ListTagsLogGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsLogGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsLogGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsLogGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagsLogGroupSync(ListTagsLogGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsLogGroupAsync(ListTagsLogGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLogStreams asynchronously, invoking a callback when done
-- @param DescribeLogStreamsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLogStreamsAsync(DescribeLogStreamsRequest, cb)
	assert(DescribeLogStreamsRequest, "You must provide a DescribeLogStreamsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.DescribeLogStreams",
	}
	for header,value in pairs(DescribeLogStreamsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeLogStreamsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLogStreams synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeLogStreamsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeLogStreamsSync(DescribeLogStreamsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLogStreamsAsync(DescribeLogStreamsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateExportTask asynchronously, invoking a callback when done
-- @param CreateExportTaskRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateExportTaskAsync(CreateExportTaskRequest, cb)
	assert(CreateExportTaskRequest, "You must provide a CreateExportTaskRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.CreateExportTask",
	}
	for header,value in pairs(CreateExportTaskRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateExportTaskRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateExportTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateExportTaskRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateExportTaskSync(CreateExportTaskRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateExportTaskAsync(CreateExportTaskRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TestMetricFilter asynchronously, invoking a callback when done
-- @param TestMetricFilterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TestMetricFilterAsync(TestMetricFilterRequest, cb)
	assert(TestMetricFilterRequest, "You must provide a TestMetricFilterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.TestMetricFilter",
	}
	for header,value in pairs(TestMetricFilterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TestMetricFilterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TestMetricFilter synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TestMetricFilterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.TestMetricFilterSync(TestMetricFilterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TestMetricFilterAsync(TestMetricFilterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLogGroup asynchronously, invoking a callback when done
-- @param DeleteLogGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteLogGroupAsync(DeleteLogGroupRequest, cb)
	assert(DeleteLogGroupRequest, "You must provide a DeleteLogGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.DeleteLogGroup",
	}
	for header,value in pairs(DeleteLogGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteLogGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteLogGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteLogGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteLogGroupSync(DeleteLogGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLogGroupAsync(DeleteLogGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeMetricFilters asynchronously, invoking a callback when done
-- @param DescribeMetricFiltersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeMetricFiltersAsync(DescribeMetricFiltersRequest, cb)
	assert(DescribeMetricFiltersRequest, "You must provide a DescribeMetricFiltersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.DescribeMetricFilters",
	}
	for header,value in pairs(DescribeMetricFiltersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeMetricFiltersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeMetricFilters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeMetricFiltersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeMetricFiltersSync(DescribeMetricFiltersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeMetricFiltersAsync(DescribeMetricFiltersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call FilterLogEvents asynchronously, invoking a callback when done
-- @param FilterLogEventsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.FilterLogEventsAsync(FilterLogEventsRequest, cb)
	assert(FilterLogEventsRequest, "You must provide a FilterLogEventsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.FilterLogEvents",
	}
	for header,value in pairs(FilterLogEventsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", FilterLogEventsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call FilterLogEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param FilterLogEventsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.FilterLogEventsSync(FilterLogEventsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.FilterLogEventsAsync(FilterLogEventsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLogGroup asynchronously, invoking a callback when done
-- @param CreateLogGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateLogGroupAsync(CreateLogGroupRequest, cb)
	assert(CreateLogGroupRequest, "You must provide a CreateLogGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.CreateLogGroup",
	}
	for header,value in pairs(CreateLogGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateLogGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateLogGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateLogGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateLogGroupSync(CreateLogGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLogGroupAsync(CreateLogGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSubscriptionFilter asynchronously, invoking a callback when done
-- @param DeleteSubscriptionFilterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteSubscriptionFilterAsync(DeleteSubscriptionFilterRequest, cb)
	assert(DeleteSubscriptionFilterRequest, "You must provide a DeleteSubscriptionFilterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.DeleteSubscriptionFilter",
	}
	for header,value in pairs(DeleteSubscriptionFilterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteSubscriptionFilterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSubscriptionFilter synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSubscriptionFilterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteSubscriptionFilterSync(DeleteSubscriptionFilterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSubscriptionFilterAsync(DeleteSubscriptionFilterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutMetricFilter asynchronously, invoking a callback when done
-- @param PutMetricFilterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutMetricFilterAsync(PutMetricFilterRequest, cb)
	assert(PutMetricFilterRequest, "You must provide a PutMetricFilterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.PutMetricFilter",
	}
	for header,value in pairs(PutMetricFilterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutMetricFilterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutMetricFilter synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutMetricFilterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutMetricFilterSync(PutMetricFilterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutMetricFilterAsync(PutMetricFilterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteResourcePolicy asynchronously, invoking a callback when done
-- @param DeleteResourcePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteResourcePolicyAsync(DeleteResourcePolicyRequest, cb)
	assert(DeleteResourcePolicyRequest, "You must provide a DeleteResourcePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.DeleteResourcePolicy",
	}
	for header,value in pairs(DeleteResourcePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteResourcePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteResourcePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteResourcePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteResourcePolicySync(DeleteResourcePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteResourcePolicyAsync(DeleteResourcePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutLogEvents asynchronously, invoking a callback when done
-- @param PutLogEventsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutLogEventsAsync(PutLogEventsRequest, cb)
	assert(PutLogEventsRequest, "You must provide a PutLogEventsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.PutLogEvents",
	}
	for header,value in pairs(PutLogEventsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutLogEventsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutLogEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutLogEventsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutLogEventsSync(PutLogEventsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutLogEventsAsync(PutLogEventsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeLogGroups asynchronously, invoking a callback when done
-- @param DescribeLogGroupsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeLogGroupsAsync(DescribeLogGroupsRequest, cb)
	assert(DescribeLogGroupsRequest, "You must provide a DescribeLogGroupsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.DescribeLogGroups",
	}
	for header,value in pairs(DescribeLogGroupsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeLogGroupsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeLogGroups synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeLogGroupsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeLogGroupsSync(DescribeLogGroupsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeLogGroupsAsync(DescribeLogGroupsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeDestinations asynchronously, invoking a callback when done
-- @param DescribeDestinationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeDestinationsAsync(DescribeDestinationsRequest, cb)
	assert(DescribeDestinationsRequest, "You must provide a DescribeDestinationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.DescribeDestinations",
	}
	for header,value in pairs(DescribeDestinationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeDestinationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeDestinations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeDestinationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeDestinationsSync(DescribeDestinationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeDestinationsAsync(DescribeDestinationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AssociateKmsKey asynchronously, invoking a callback when done
-- @param AssociateKmsKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AssociateKmsKeyAsync(AssociateKmsKeyRequest, cb)
	assert(AssociateKmsKeyRequest, "You must provide a AssociateKmsKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.AssociateKmsKey",
	}
	for header,value in pairs(AssociateKmsKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AssociateKmsKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AssociateKmsKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AssociateKmsKeyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AssociateKmsKeySync(AssociateKmsKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AssociateKmsKeyAsync(AssociateKmsKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutRetentionPolicy asynchronously, invoking a callback when done
-- @param PutRetentionPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutRetentionPolicyAsync(PutRetentionPolicyRequest, cb)
	assert(PutRetentionPolicyRequest, "You must provide a PutRetentionPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.PutRetentionPolicy",
	}
	for header,value in pairs(PutRetentionPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutRetentionPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutRetentionPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutRetentionPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutRetentionPolicySync(PutRetentionPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutRetentionPolicyAsync(PutRetentionPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeSubscriptionFilters asynchronously, invoking a callback when done
-- @param DescribeSubscriptionFiltersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeSubscriptionFiltersAsync(DescribeSubscriptionFiltersRequest, cb)
	assert(DescribeSubscriptionFiltersRequest, "You must provide a DescribeSubscriptionFiltersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.DescribeSubscriptionFilters",
	}
	for header,value in pairs(DescribeSubscriptionFiltersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeSubscriptionFiltersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeSubscriptionFilters synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeSubscriptionFiltersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeSubscriptionFiltersSync(DescribeSubscriptionFiltersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeSubscriptionFiltersAsync(DescribeSubscriptionFiltersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeExportTasks asynchronously, invoking a callback when done
-- @param DescribeExportTasksRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeExportTasksAsync(DescribeExportTasksRequest, cb)
	assert(DescribeExportTasksRequest, "You must provide a DescribeExportTasksRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.DescribeExportTasks",
	}
	for header,value in pairs(DescribeExportTasksRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeExportTasksRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeExportTasks synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeExportTasksRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeExportTasksSync(DescribeExportTasksRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeExportTasksAsync(DescribeExportTasksRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TagLogGroup asynchronously, invoking a callback when done
-- @param TagLogGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TagLogGroupAsync(TagLogGroupRequest, cb)
	assert(TagLogGroupRequest, "You must provide a TagLogGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.TagLogGroup",
	}
	for header,value in pairs(TagLogGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TagLogGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TagLogGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TagLogGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.TagLogGroupSync(TagLogGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagLogGroupAsync(TagLogGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutSubscriptionFilter asynchronously, invoking a callback when done
-- @param PutSubscriptionFilterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutSubscriptionFilterAsync(PutSubscriptionFilterRequest, cb)
	assert(PutSubscriptionFilterRequest, "You must provide a PutSubscriptionFilterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.PutSubscriptionFilter",
	}
	for header,value in pairs(PutSubscriptionFilterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutSubscriptionFilterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutSubscriptionFilter synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutSubscriptionFilterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutSubscriptionFilterSync(PutSubscriptionFilterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutSubscriptionFilterAsync(PutSubscriptionFilterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteMetricFilter asynchronously, invoking a callback when done
-- @param DeleteMetricFilterRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteMetricFilterAsync(DeleteMetricFilterRequest, cb)
	assert(DeleteMetricFilterRequest, "You must provide a DeleteMetricFilterRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.DeleteMetricFilter",
	}
	for header,value in pairs(DeleteMetricFilterRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteMetricFilterRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteMetricFilter synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteMetricFilterRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteMetricFilterSync(DeleteMetricFilterRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteMetricFilterAsync(DeleteMetricFilterRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutDestinationPolicy asynchronously, invoking a callback when done
-- @param PutDestinationPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutDestinationPolicyAsync(PutDestinationPolicyRequest, cb)
	assert(PutDestinationPolicyRequest, "You must provide a PutDestinationPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.PutDestinationPolicy",
	}
	for header,value in pairs(PutDestinationPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutDestinationPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutDestinationPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutDestinationPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutDestinationPolicySync(PutDestinationPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutDestinationPolicyAsync(PutDestinationPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateLogStream asynchronously, invoking a callback when done
-- @param CreateLogStreamRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateLogStreamAsync(CreateLogStreamRequest, cb)
	assert(CreateLogStreamRequest, "You must provide a CreateLogStreamRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.CreateLogStream",
	}
	for header,value in pairs(CreateLogStreamRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateLogStreamRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateLogStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateLogStreamRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateLogStreamSync(CreateLogStreamRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateLogStreamAsync(CreateLogStreamRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CancelExportTask asynchronously, invoking a callback when done
-- @param CancelExportTaskRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CancelExportTaskAsync(CancelExportTaskRequest, cb)
	assert(CancelExportTaskRequest, "You must provide a CancelExportTaskRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.CancelExportTask",
	}
	for header,value in pairs(CancelExportTaskRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CancelExportTaskRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CancelExportTask synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CancelExportTaskRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CancelExportTaskSync(CancelExportTaskRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CancelExportTaskAsync(CancelExportTaskRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UntagLogGroup asynchronously, invoking a callback when done
-- @param UntagLogGroupRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UntagLogGroupAsync(UntagLogGroupRequest, cb)
	assert(UntagLogGroupRequest, "You must provide a UntagLogGroupRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.UntagLogGroup",
	}
	for header,value in pairs(UntagLogGroupRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UntagLogGroupRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UntagLogGroup synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UntagLogGroupRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UntagLogGroupSync(UntagLogGroupRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagLogGroupAsync(UntagLogGroupRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DisassociateKmsKey asynchronously, invoking a callback when done
-- @param DisassociateKmsKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DisassociateKmsKeyAsync(DisassociateKmsKeyRequest, cb)
	assert(DisassociateKmsKeyRequest, "You must provide a DisassociateKmsKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.DisassociateKmsKey",
	}
	for header,value in pairs(DisassociateKmsKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DisassociateKmsKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DisassociateKmsKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DisassociateKmsKeyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DisassociateKmsKeySync(DisassociateKmsKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DisassociateKmsKeyAsync(DisassociateKmsKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteRetentionPolicy asynchronously, invoking a callback when done
-- @param DeleteRetentionPolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteRetentionPolicyAsync(DeleteRetentionPolicyRequest, cb)
	assert(DeleteRetentionPolicyRequest, "You must provide a DeleteRetentionPolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.DeleteRetentionPolicy",
	}
	for header,value in pairs(DeleteRetentionPolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteRetentionPolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteRetentionPolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteRetentionPolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteRetentionPolicySync(DeleteRetentionPolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteRetentionPolicyAsync(DeleteRetentionPolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetLogEvents asynchronously, invoking a callback when done
-- @param GetLogEventsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetLogEventsAsync(GetLogEventsRequest, cb)
	assert(GetLogEventsRequest, "You must provide a GetLogEventsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.GetLogEvents",
	}
	for header,value in pairs(GetLogEventsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetLogEventsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetLogEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetLogEventsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetLogEventsSync(GetLogEventsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetLogEventsAsync(GetLogEventsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeResourcePolicies asynchronously, invoking a callback when done
-- @param DescribeResourcePoliciesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeResourcePoliciesAsync(DescribeResourcePoliciesRequest, cb)
	assert(DescribeResourcePoliciesRequest, "You must provide a DescribeResourcePoliciesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.DescribeResourcePolicies",
	}
	for header,value in pairs(DescribeResourcePoliciesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeResourcePoliciesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeResourcePolicies synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeResourcePoliciesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeResourcePoliciesSync(DescribeResourcePoliciesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeResourcePoliciesAsync(DescribeResourcePoliciesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteLogStream asynchronously, invoking a callback when done
-- @param DeleteLogStreamRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteLogStreamAsync(DeleteLogStreamRequest, cb)
	assert(DeleteLogStreamRequest, "You must provide a DeleteLogStreamRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "Logs_20140328.DeleteLogStream",
	}
	for header,value in pairs(DeleteLogStreamRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteLogStreamRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteLogStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteLogStreamRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteLogStreamSync(DeleteLogStreamRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteLogStreamAsync(DeleteLogStreamRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
