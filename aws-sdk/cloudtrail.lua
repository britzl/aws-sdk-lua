--- GENERATED CODE - DO NOT MODIFY
-- AWS CloudTrail (cloudtrail-2013-11-01)

local M = {}

M.metadata = {
	api_version = "2013-11-01",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "cloudtrail",
	service_abbreviation = "CloudTrail",
	service_full_name = "AWS CloudTrail",
	signature_version = "v4",
	target_prefix = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101",
	timestamp_format = "",
	global_endpoint = "",
	uid = "cloudtrail-2013-11-01",
}

local keys = {}
local asserts = {}

keys.StopLoggingRequest = { ["Name"] = true, nil }

function asserts.AssertStopLoggingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopLoggingRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopLoggingRequest[k], "StopLoggingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopLoggingRequest
-- <p>Passes the request to CloudTrail to stop logging AWS API calls for the specified account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] <p>Specifies the name or the CloudTrail ARN of the trail for which CloudTrail will stop logging AWS API calls. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>
-- Required key: Name
-- @return StopLoggingRequest structure as a key-value pair table
function M.StopLoggingRequest(args)
	assert(args, "You must provide an argument table when creating StopLoggingRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertStopLoggingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTrailStatusResponse = { ["LatestNotificationError"] = true, ["LatestCloudWatchLogsDeliveryTime"] = true, ["LatestNotificationTime"] = true, ["LatestNotificationAttemptSucceeded"] = true, ["LatestDeliveryError"] = true, ["LatestDeliveryTime"] = true, ["TimeLoggingStarted"] = true, ["LatestDigestDeliveryError"] = true, ["LatestDeliveryAttemptSucceeded"] = true, ["IsLogging"] = true, ["LatestCloudWatchLogsDeliveryError"] = true, ["StartLoggingTime"] = true, ["LatestDigestDeliveryTime"] = true, ["StopLoggingTime"] = true, ["LatestNotificationAttemptTime"] = true, ["LatestDeliveryAttemptTime"] = true, ["TimeLoggingStopped"] = true, nil }

function asserts.AssertGetTrailStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTrailStatusResponse to be of type 'table'")
	if struct["LatestNotificationError"] then asserts.AssertString(struct["LatestNotificationError"]) end
	if struct["LatestCloudWatchLogsDeliveryTime"] then asserts.AssertDate(struct["LatestCloudWatchLogsDeliveryTime"]) end
	if struct["LatestNotificationTime"] then asserts.AssertDate(struct["LatestNotificationTime"]) end
	if struct["LatestNotificationAttemptSucceeded"] then asserts.AssertString(struct["LatestNotificationAttemptSucceeded"]) end
	if struct["LatestDeliveryError"] then asserts.AssertString(struct["LatestDeliveryError"]) end
	if struct["LatestDeliveryTime"] then asserts.AssertDate(struct["LatestDeliveryTime"]) end
	if struct["TimeLoggingStarted"] then asserts.AssertString(struct["TimeLoggingStarted"]) end
	if struct["LatestDigestDeliveryError"] then asserts.AssertString(struct["LatestDigestDeliveryError"]) end
	if struct["LatestDeliveryAttemptSucceeded"] then asserts.AssertString(struct["LatestDeliveryAttemptSucceeded"]) end
	if struct["IsLogging"] then asserts.AssertBoolean(struct["IsLogging"]) end
	if struct["LatestCloudWatchLogsDeliveryError"] then asserts.AssertString(struct["LatestCloudWatchLogsDeliveryError"]) end
	if struct["StartLoggingTime"] then asserts.AssertDate(struct["StartLoggingTime"]) end
	if struct["LatestDigestDeliveryTime"] then asserts.AssertDate(struct["LatestDigestDeliveryTime"]) end
	if struct["StopLoggingTime"] then asserts.AssertDate(struct["StopLoggingTime"]) end
	if struct["LatestNotificationAttemptTime"] then asserts.AssertString(struct["LatestNotificationAttemptTime"]) end
	if struct["LatestDeliveryAttemptTime"] then asserts.AssertString(struct["LatestDeliveryAttemptTime"]) end
	if struct["TimeLoggingStopped"] then asserts.AssertString(struct["TimeLoggingStopped"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTrailStatusResponse[k], "GetTrailStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTrailStatusResponse
-- <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LatestNotificationError [String] <p>Displays any Amazon SNS error that CloudTrail encountered when attempting to send a notification. For more information about Amazon SNS errors, see the <a href="http://docs.aws.amazon.com/sns/latest/dg/welcome.html">Amazon SNS Developer Guide</a>. </p>
-- * LatestCloudWatchLogsDeliveryTime [Date] <p>Displays the most recent date and time when CloudTrail delivered logs to CloudWatch Logs.</p>
-- * LatestNotificationTime [Date] <p>Specifies the date and time of the most recent Amazon SNS notification that CloudTrail has written a new log file to an account's Amazon S3 bucket.</p>
-- * LatestNotificationAttemptSucceeded [String] <p>This field is deprecated.</p>
-- * LatestDeliveryError [String] <p>Displays any Amazon S3 error that CloudTrail encountered when attempting to deliver log files to the designated bucket. For more information see the topic <a href="http://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html">Error Responses</a> in the Amazon S3 API Reference. </p> <note> <p>This error occurs only when there is a problem with the destination S3 bucket and will not occur for timeouts. To resolve the issue, create a new bucket and call <code>UpdateTrail</code> to specify the new bucket, or fix the existing objects so that CloudTrail can again write to the bucket.</p> </note>
-- * LatestDeliveryTime [Date] <p>Specifies the date and time that CloudTrail last delivered log files to an account's Amazon S3 bucket.</p>
-- * TimeLoggingStarted [String] <p>This field is deprecated.</p>
-- * LatestDigestDeliveryError [String] <p>Displays any Amazon S3 error that CloudTrail encountered when attempting to deliver a digest file to the designated bucket. For more information see the topic <a href="http://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html">Error Responses</a> in the Amazon S3 API Reference. </p> <note> <p>This error occurs only when there is a problem with the destination S3 bucket and will not occur for timeouts. To resolve the issue, create a new bucket and call <code>UpdateTrail</code> to specify the new bucket, or fix the existing objects so that CloudTrail can again write to the bucket.</p> </note>
-- * LatestDeliveryAttemptSucceeded [String] <p>This field is deprecated.</p>
-- * IsLogging [Boolean] <p>Whether the CloudTrail is currently logging AWS API calls.</p>
-- * LatestCloudWatchLogsDeliveryError [String] <p>Displays any CloudWatch Logs error that CloudTrail encountered when attempting to deliver logs to CloudWatch Logs.</p>
-- * StartLoggingTime [Date] <p>Specifies the most recent date and time when CloudTrail started recording API calls for an AWS account.</p>
-- * LatestDigestDeliveryTime [Date] <p>Specifies the date and time that CloudTrail last delivered a digest file to an account's Amazon S3 bucket.</p>
-- * StopLoggingTime [Date] <p>Specifies the most recent date and time when CloudTrail stopped recording API calls for an AWS account.</p>
-- * LatestNotificationAttemptTime [String] <p>This field is deprecated.</p>
-- * LatestDeliveryAttemptTime [String] <p>This field is deprecated.</p>
-- * TimeLoggingStopped [String] <p>This field is deprecated.</p>
-- @return GetTrailStatusResponse structure as a key-value pair table
function M.GetTrailStatusResponse(args)
	assert(args, "You must provide an argument table when creating GetTrailStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LatestNotificationError"] = args["LatestNotificationError"],
		["LatestCloudWatchLogsDeliveryTime"] = args["LatestCloudWatchLogsDeliveryTime"],
		["LatestNotificationTime"] = args["LatestNotificationTime"],
		["LatestNotificationAttemptSucceeded"] = args["LatestNotificationAttemptSucceeded"],
		["LatestDeliveryError"] = args["LatestDeliveryError"],
		["LatestDeliveryTime"] = args["LatestDeliveryTime"],
		["TimeLoggingStarted"] = args["TimeLoggingStarted"],
		["LatestDigestDeliveryError"] = args["LatestDigestDeliveryError"],
		["LatestDeliveryAttemptSucceeded"] = args["LatestDeliveryAttemptSucceeded"],
		["IsLogging"] = args["IsLogging"],
		["LatestCloudWatchLogsDeliveryError"] = args["LatestCloudWatchLogsDeliveryError"],
		["StartLoggingTime"] = args["StartLoggingTime"],
		["LatestDigestDeliveryTime"] = args["LatestDigestDeliveryTime"],
		["StopLoggingTime"] = args["StopLoggingTime"],
		["LatestNotificationAttemptTime"] = args["LatestNotificationAttemptTime"],
		["LatestDeliveryAttemptTime"] = args["LatestDeliveryAttemptTime"],
		["TimeLoggingStopped"] = args["TimeLoggingStopped"],
	}
	asserts.AssertGetTrailStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsRequest = { ["ResourceIdList"] = true, ["NextToken"] = true, nil }

function asserts.AssertListTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsRequest to be of type 'table'")
	assert(struct["ResourceIdList"], "Expected key ResourceIdList to exist in table")
	if struct["ResourceIdList"] then asserts.AssertResourceIdList(struct["ResourceIdList"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsRequest[k], "ListTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsRequest
-- <p>Specifies a list of trail tags to return.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceIdList [ResourceIdList] <p>Specifies a list of trail ARNs whose tags will be listed. The list has a limit of 20 ARNs. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>
-- * NextToken [String] <p>Reserved for future use.</p>
-- Required key: ResourceIdList
-- @return ListTagsRequest structure as a key-value pair table
function M.ListTagsRequest(args)
	assert(args, "You must provide an argument table when creating ListTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceIdList"] = args["ResourceIdList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EventSelector = { ["IncludeManagementEvents"] = true, ["DataResources"] = true, ["ReadWriteType"] = true, nil }

function asserts.AssertEventSelector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventSelector to be of type 'table'")
	if struct["IncludeManagementEvents"] then asserts.AssertBoolean(struct["IncludeManagementEvents"]) end
	if struct["DataResources"] then asserts.AssertDataResources(struct["DataResources"]) end
	if struct["ReadWriteType"] then asserts.AssertReadWriteType(struct["ReadWriteType"]) end
	for k,_ in pairs(struct) do
		assert(keys.EventSelector[k], "EventSelector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventSelector
-- <p>Use event selectors to further specify the management and data event settings for your trail. By default, trails created without specific event selectors will be configured to log all read and write management events, and no data events. When an event occurs in your account, CloudTrail evaluates the event selector for all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event.</p> <p>You can configure up to five event selectors for a trail.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IncludeManagementEvents [Boolean] <p>Specify if you want your event selector to include management events for your trail.</p> <p> For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html#logging-management-events">Management Events</a> in the <i>AWS CloudTrail User Guide</i>.</p> <p>By default, the value is <code>true</code>.</p>
-- * DataResources [DataResources] <p>CloudTrail supports data event logging for Amazon S3 objects and AWS Lambda functions. You can specify up to 250 resources for an individual event selector, but the total number of data resources cannot exceed 250 across all event selectors in a trail. This limit does not apply if you configure resource logging for all data events. </p> <p>For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html#logging-data-events">Data Events</a> and <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html">Limits in AWS CloudTrail</a> in the <i>AWS CloudTrail User Guide</i>.</p>
-- * ReadWriteType [ReadWriteType] <p>Specify if you want your trail to log read-only events, write-only events, or all. For example, the EC2 <code>GetConsoleOutput</code> is a read-only API operation and <code>RunInstances</code> is a write-only API operation.</p> <p> By default, the value is <code>All</code>.</p>
-- @return EventSelector structure as a key-value pair table
function M.EventSelector(args)
	assert(args, "You must provide an argument table when creating EventSelector")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IncludeManagementEvents"] = args["IncludeManagementEvents"],
		["DataResources"] = args["DataResources"],
		["ReadWriteType"] = args["ReadWriteType"],
	}
	asserts.AssertEventSelector(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveTagsRequest = { ["ResourceId"] = true, ["TagsList"] = true, nil }

function asserts.AssertRemoveTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["ResourceId"] then asserts.AssertString(struct["ResourceId"]) end
	if struct["TagsList"] then asserts.AssertTagsList(struct["TagsList"]) end
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsRequest[k], "RemoveTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsRequest
-- <p>Specifies the tags to remove from a trail.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceId [String] <p>Specifies the ARN of the trail from which tags should be removed. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>
-- * TagsList [TagsList] <p>Specifies a list of tags to be removed.</p>
-- Required key: ResourceId
-- @return RemoveTagsRequest structure as a key-value pair table
function M.RemoveTagsRequest(args)
	assert(args, "You must provide an argument table when creating RemoveTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceId"] = args["ResourceId"],
		["TagsList"] = args["TagsList"],
	}
	asserts.AssertRemoveTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LookupEventsResponse = { ["NextToken"] = true, ["Events"] = true, nil }

function asserts.AssertLookupEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LookupEventsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Events"] then asserts.AssertEventsList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(keys.LookupEventsResponse[k], "LookupEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LookupEventsResponse
-- <p>Contains a response to a LookupEvents action.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>The token to use to get the next page of results after a previous API call. If the token does not appear, there are no more results to return. The token must be passed in with the same parameters as the previous call. For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should include those same parameters.</p>
-- * Events [EventsList] <p>A list of events returned based on the lookup attributes specified and the CloudTrail event. The events list is sorted by time. The most recent event is listed first.</p>
-- @return LookupEventsResponse structure as a key-value pair table
function M.LookupEventsResponse(args)
	assert(args, "You must provide an argument table when creating LookupEventsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Events"] = args["Events"],
	}
	asserts.AssertLookupEventsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DataResource = { ["Values"] = true, ["Type"] = true, nil }

function asserts.AssertDataResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DataResource to be of type 'table'")
	if struct["Values"] then asserts.AssertDataResourceValues(struct["Values"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(keys.DataResource[k], "DataResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DataResource
-- <p>The Amazon S3 buckets or AWS Lambda functions that you specify in your event selectors for your trail to log data events. Data events provide insight into the resource operations performed on or within a resource itself. These are also known as data plane operations. You can specify up to 250 data resources for a trail.</p> <note> <p>The total number of allowed data resources is 250. This number can be distributed between 1 and 5 event selectors, but the total cannot exceed 250 across all selectors.</p> </note> <p>The following example demonstrates how logging works when you configure logging of all data events for an S3 bucket named <code>bucket-1</code>. In this example, the CloudTrail user spcified an empty prefix, and the option to log both <code>Read</code> and <code>Write</code> data events.</p> <ol> <li> <p>A user uploads an image file to <code>bucket-1</code>.</p> </li> <li> <p>The <code>PutObject</code> API operation is an Amazon S3 object-level API. It is recorded as a data event in CloudTrail. Because the CloudTrail user specified an S3 bucket with an empty prefix, events that occur on any object in that bucket are logged. The trail processes and logs the event.</p> </li> <li> <p>A user uploads an object to an Amazon S3 bucket named <code>arn:aws:s3:::bucket-2</code>.</p> </li> <li> <p>The <code>PutObject</code> API operation occurred for an object in an S3 bucket that the CloudTrail user didn't specify for the trail. The trail doesn’t log the event.</p> </li> </ol> <p>The following example demonstrates how logging works when you configure logging of AWS Lambda data events for a Lambda function named <i>MyLambdaFunction</i>, but not for all AWS Lambda functions.</p> <ol> <li> <p>A user runs a script that includes a call to the <i>MyLambdaFunction</i> function and the <i>MyOtherLambdaFunction</i> function.</p> </li> <li> <p>The <code>Invoke</code> API operation on <i>MyLambdaFunction</i> is an AWS Lambda API. It is recorded as a data event in CloudTrail. Because the CloudTrail user specified logging data events for <i>MyLambdaFunction</i>, any invocations of that function are logged. The trail processes and logs the event. </p> </li> <li> <p>The <code>Invoke</code> API operation on <i>MyOtherLambdaFunction</i> is an AWS Lambda API. Because the CloudTrail user did not specify logging data events for all Lambda functions, the <code>Invoke</code> operation for <i>MyOtherLambdaFunction</i> does not match the function specified for the trail. The trail doesn’t log the event. </p> </li> </ol>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [DataResourceValues] <p>An array of Amazon Resource Name (ARN) strings or partial ARN strings for the specified objects.</p> <ul> <li> <p>To log data events for all objects in all S3 buckets in your AWS account, specify the prefix as <code>arn:aws:s3:::</code>. </p> <note> <p>This will also enable logging of data event activity performed by any user or role in your AWS account, even if that activity is performed on a bucket that belongs to another AWS account. </p> </note> </li> <li> <p>To log data events for all objects in all S3 buckets that include <i>my-bucket</i> in their names, specify the prefix as <code>aws:s3:::my-bucket</code>. The trail logs data events for all objects in all buckets whose name contains a match for <i>my-bucket</i>. </p> </li> <li> <p>To log data events for all objects in an S3 bucket, specify the bucket and an empty object prefix such as <code>arn:aws:s3:::bucket-1/</code>. The trail logs data events for all objects in this S3 bucket.</p> </li> <li> <p>To log data events for specific objects, specify the S3 bucket and object prefix such as <code>arn:aws:s3:::bucket-1/example-images</code>. The trail logs data events for objects in this S3 bucket that match the prefix.</p> </li> <li> <p>To log data events for all functions in your AWS account, specify the prefix as <code>arn:aws:lambda</code>.</p> <note> <p>This will also enable logging of <code>Invoke</code> activity performed by any user or role in your AWS account, even if that activity is performed on a function that belongs to another AWS account. </p> </note> </li> <li> <p>To log data eents for a specific Lambda function, specify the function ARN.</p> <note> <p>Lambda function ARNs are exact. Unlike S3, you cannot use matching. For example, if you specify a function ARN <i>arn:aws:lambda:us-west-2:111111111111:function:helloworld</i>, data events will only be logged for <i>arn:aws:lambda:us-west-2:111111111111:function:helloworld</i>. They will not be logged for <i>arn:aws:lambda:us-west-2:111111111111:function:helloworld2</i>.</p> </note> </li> </ul>
-- * Type [String] <p>The resource type in which you want to log data events. You can specify <code>AWS::S3::Object</code> or <code>AWS::Lambda::Function</code> resources.</p>
-- @return DataResource structure as a key-value pair table
function M.DataResource(args)
	assert(args, "You must provide an argument table when creating DataResource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Values"] = args["Values"],
		["Type"] = args["Type"],
	}
	asserts.AssertDataResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPublicKeysRequest = { ["EndTime"] = true, ["NextToken"] = true, ["StartTime"] = true, nil }

function asserts.AssertListPublicKeysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPublicKeysRequest to be of type 'table'")
	if struct["EndTime"] then asserts.AssertDate(struct["EndTime"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["StartTime"] then asserts.AssertDate(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPublicKeysRequest[k], "ListPublicKeysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPublicKeysRequest
-- <p>Requests the public keys for a specified time range.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndTime [Date] <p>Optionally specifies, in UTC, the end of the time range to look up public keys for CloudTrail digest files. If not specified, the current time is used.</p>
-- * NextToken [String] <p>Reserved for future use.</p>
-- * StartTime [Date] <p>Optionally specifies, in UTC, the start of the time range to look up public keys for CloudTrail digest files. If not specified, the current time is used, and the current public key is returned.</p>
-- @return ListPublicKeysRequest structure as a key-value pair table
function M.ListPublicKeysRequest(args)
	assert(args, "You must provide an argument table when creating ListPublicKeysRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndTime"] = args["EndTime"],
		["NextToken"] = args["NextToken"],
		["StartTime"] = args["StartTime"],
	}
	asserts.AssertListPublicKeysRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTrailRequest = { ["IncludeGlobalServiceEvents"] = true, ["Name"] = true, ["S3KeyPrefix"] = true, ["KmsKeyId"] = true, ["IsMultiRegionTrail"] = true, ["S3BucketName"] = true, ["CloudWatchLogsRoleArn"] = true, ["CloudWatchLogsLogGroupArn"] = true, ["SnsTopicName"] = true, ["EnableLogFileValidation"] = true, nil }

function asserts.AssertCreateTrailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrailRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["S3BucketName"], "Expected key S3BucketName to exist in table")
	if struct["IncludeGlobalServiceEvents"] then asserts.AssertBoolean(struct["IncludeGlobalServiceEvents"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["S3KeyPrefix"] then asserts.AssertString(struct["S3KeyPrefix"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["IsMultiRegionTrail"] then asserts.AssertBoolean(struct["IsMultiRegionTrail"]) end
	if struct["S3BucketName"] then asserts.AssertString(struct["S3BucketName"]) end
	if struct["CloudWatchLogsRoleArn"] then asserts.AssertString(struct["CloudWatchLogsRoleArn"]) end
	if struct["CloudWatchLogsLogGroupArn"] then asserts.AssertString(struct["CloudWatchLogsLogGroupArn"]) end
	if struct["SnsTopicName"] then asserts.AssertString(struct["SnsTopicName"]) end
	if struct["EnableLogFileValidation"] then asserts.AssertBoolean(struct["EnableLogFileValidation"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTrailRequest[k], "CreateTrailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrailRequest
-- <p>Specifies the settings for each trail.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IncludeGlobalServiceEvents [Boolean] <p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>
-- * Name [String] <p>Specifies the name of the trail. The name must meet the following requirements:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p> </li> <li> <p>Start with a letter or number, and end with a letter or number</p> </li> <li> <p>Be between 3 and 128 characters</p> </li> <li> <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code> and <code>my--namespace</code> are invalid.</p> </li> <li> <p>Not be in IP address format (for example, 192.168.5.4)</p> </li> </ul>
-- * S3KeyPrefix [String] <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html">Finding Your CloudTrail Log Files</a>. The maximum length is 200 characters.</p>
-- * KmsKeyId [String] <p>Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by "alias/", a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.</p> <p>Examples:</p> <ul> <li> <p>alias/MyAliasName</p> </li> <li> <p>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</p> </li> <li> <p>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</p> </li> <li> <p>12345678-1234-1234-1234-123456789012</p> </li> </ul>
-- * IsMultiRegionTrail [Boolean] <p>Specifies whether the trail is created in the current region or in all regions. The default is false.</p>
-- * S3BucketName [String] <p>Specifies the name of the Amazon S3 bucket designated for publishing log files. See <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html">Amazon S3 Bucket Naming Requirements</a>.</p>
-- * CloudWatchLogsRoleArn [String] <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>
-- * CloudWatchLogsLogGroupArn [String] <p>Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered. Not required unless you specify CloudWatchLogsRoleArn.</p>
-- * SnsTopicName [String] <p>Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.</p>
-- * EnableLogFileValidation [Boolean] <p>Specifies whether log file integrity validation is enabled. The default is false.</p> <note> <p>When you disable log file integrity validation, the chain of digest files is broken after one hour. CloudTrail will not create digest files for log files that were delivered during a period in which log file integrity validation was disabled. For example, if you enable log file integrity validation at noon on January 1, disable it at noon on January 2, and re-enable it at noon on January 10, digest files will not be created for the log files delivered from noon on January 2 to noon on January 10. The same applies whenever you stop CloudTrail logging or delete a trail.</p> </note>
-- Required key: Name
-- Required key: S3BucketName
-- @return CreateTrailRequest structure as a key-value pair table
function M.CreateTrailRequest(args)
	assert(args, "You must provide an argument table when creating CreateTrailRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IncludeGlobalServiceEvents"] = args["IncludeGlobalServiceEvents"],
		["Name"] = args["Name"],
		["S3KeyPrefix"] = args["S3KeyPrefix"],
		["KmsKeyId"] = args["KmsKeyId"],
		["IsMultiRegionTrail"] = args["IsMultiRegionTrail"],
		["S3BucketName"] = args["S3BucketName"],
		["CloudWatchLogsRoleArn"] = args["CloudWatchLogsRoleArn"],
		["CloudWatchLogsLogGroupArn"] = args["CloudWatchLogsLogGroupArn"],
		["SnsTopicName"] = args["SnsTopicName"],
		["EnableLogFileValidation"] = args["EnableLogFileValidation"],
	}
	asserts.AssertCreateTrailRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTrailsResponse = { ["trailList"] = true, nil }

function asserts.AssertDescribeTrailsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrailsResponse to be of type 'table'")
	if struct["trailList"] then asserts.AssertTrailList(struct["trailList"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTrailsResponse[k], "DescribeTrailsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrailsResponse
-- <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * trailList [TrailList] <p>The list of trail objects.</p>
-- @return DescribeTrailsResponse structure as a key-value pair table
function M.DescribeTrailsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeTrailsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["trailList"] = args["trailList"],
	}
	asserts.AssertDescribeTrailsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetEventSelectorsResponse = { ["EventSelectors"] = true, ["TrailARN"] = true, nil }

function asserts.AssertGetEventSelectorsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEventSelectorsResponse to be of type 'table'")
	if struct["EventSelectors"] then asserts.AssertEventSelectors(struct["EventSelectors"]) end
	if struct["TrailARN"] then asserts.AssertString(struct["TrailARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetEventSelectorsResponse[k], "GetEventSelectorsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEventSelectorsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventSelectors [EventSelectors] <p>The event selectors that are configured for the trail.</p>
-- * TrailARN [String] <p>The specified trail ARN that has the event selectors.</p>
-- @return GetEventSelectorsResponse structure as a key-value pair table
function M.GetEventSelectorsResponse(args)
	assert(args, "You must provide an argument table when creating GetEventSelectorsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventSelectors"] = args["EventSelectors"],
		["TrailARN"] = args["TrailARN"],
	}
	asserts.AssertGetEventSelectorsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddTagsResponse = { nil }

function asserts.AssertAddTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.AddTagsResponse[k], "AddTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsResponse
-- <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return AddTagsResponse structure as a key-value pair table
function M.AddTagsResponse(args)
	assert(args, "You must provide an argument table when creating AddTagsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertAddTagsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartLoggingRequest = { ["Name"] = true, nil }

function asserts.AssertStartLoggingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartLoggingRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartLoggingRequest[k], "StartLoggingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartLoggingRequest
-- <p>The request to CloudTrail to start logging AWS API calls for an account.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] <p>Specifies the name or the CloudTrail ARN of the trail for which CloudTrail logs AWS API calls. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>
-- Required key: Name
-- @return StartLoggingRequest structure as a key-value pair table
function M.StartLoggingRequest(args)
	assert(args, "You must provide an argument table when creating StartLoggingRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertStartLoggingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTrailRequest = { ["Name"] = true, nil }

function asserts.AssertDeleteTrailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTrailRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTrailRequest[k], "DeleteTrailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTrailRequest
-- <p>The request that specifies the name of a trail to delete.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] <p>Specifies the name or the CloudTrail ARN of the trail to be deleted. The format of a trail ARN is: <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>
-- Required key: Name
-- @return DeleteTrailRequest structure as a key-value pair table
function M.DeleteTrailRequest(args)
	assert(args, "You must provide an argument table when creating DeleteTrailRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteTrailRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PublicKey = { ["ValidityStartTime"] = true, ["ValidityEndTime"] = true, ["Value"] = true, ["Fingerprint"] = true, nil }

function asserts.AssertPublicKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublicKey to be of type 'table'")
	if struct["ValidityStartTime"] then asserts.AssertDate(struct["ValidityStartTime"]) end
	if struct["ValidityEndTime"] then asserts.AssertDate(struct["ValidityEndTime"]) end
	if struct["Value"] then asserts.AssertByteBuffer(struct["Value"]) end
	if struct["Fingerprint"] then asserts.AssertString(struct["Fingerprint"]) end
	for k,_ in pairs(struct) do
		assert(keys.PublicKey[k], "PublicKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublicKey
-- <p>Contains information about a returned public key.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ValidityStartTime [Date] <p>The starting time of validity of the public key.</p>
-- * ValidityEndTime [Date] <p>The ending time of validity of the public key.</p>
-- * Value [ByteBuffer] <p>The DER encoded public key value in PKCS#1 format.</p>
-- * Fingerprint [String] <p>The fingerprint of the public key.</p>
-- @return PublicKey structure as a key-value pair table
function M.PublicKey(args)
	assert(args, "You must provide an argument table when creating PublicKey")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ValidityStartTime"] = args["ValidityStartTime"],
		["ValidityEndTime"] = args["ValidityEndTime"],
		["Value"] = args["Value"],
		["Fingerprint"] = args["Fingerprint"],
	}
	asserts.AssertPublicKey(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartLoggingResponse = { nil }

function asserts.AssertStartLoggingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartLoggingResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StartLoggingResponse[k], "StartLoggingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartLoggingResponse
-- <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StartLoggingResponse structure as a key-value pair table
function M.StartLoggingResponse(args)
	assert(args, "You must provide an argument table when creating StartLoggingResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStartLoggingResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LookupAttribute = { ["AttributeKey"] = true, ["AttributeValue"] = true, nil }

function asserts.AssertLookupAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LookupAttribute to be of type 'table'")
	assert(struct["AttributeKey"], "Expected key AttributeKey to exist in table")
	assert(struct["AttributeValue"], "Expected key AttributeValue to exist in table")
	if struct["AttributeKey"] then asserts.AssertLookupAttributeKey(struct["AttributeKey"]) end
	if struct["AttributeValue"] then asserts.AssertString(struct["AttributeValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.LookupAttribute[k], "LookupAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LookupAttribute
-- <p>Specifies an attribute and value that filter the events returned.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AttributeKey [LookupAttributeKey] <p>Specifies an attribute on which to filter the events returned.</p>
-- * AttributeValue [String] <p>Specifies a value for the specified AttributeKey.</p>
-- Required key: AttributeKey
-- Required key: AttributeValue
-- @return LookupAttribute structure as a key-value pair table
function M.LookupAttribute(args)
	assert(args, "You must provide an argument table when creating LookupAttribute")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AttributeKey"] = args["AttributeKey"],
		["AttributeValue"] = args["AttributeValue"],
	}
	asserts.AssertLookupAttribute(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTrailResponse = { ["IncludeGlobalServiceEvents"] = true, ["Name"] = true, ["S3KeyPrefix"] = true, ["TrailARN"] = true, ["LogFileValidationEnabled"] = true, ["SnsTopicARN"] = true, ["IsMultiRegionTrail"] = true, ["S3BucketName"] = true, ["CloudWatchLogsRoleArn"] = true, ["KmsKeyId"] = true, ["CloudWatchLogsLogGroupArn"] = true, ["SnsTopicName"] = true, nil }

function asserts.AssertUpdateTrailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTrailResponse to be of type 'table'")
	if struct["IncludeGlobalServiceEvents"] then asserts.AssertBoolean(struct["IncludeGlobalServiceEvents"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["S3KeyPrefix"] then asserts.AssertString(struct["S3KeyPrefix"]) end
	if struct["TrailARN"] then asserts.AssertString(struct["TrailARN"]) end
	if struct["LogFileValidationEnabled"] then asserts.AssertBoolean(struct["LogFileValidationEnabled"]) end
	if struct["SnsTopicARN"] then asserts.AssertString(struct["SnsTopicARN"]) end
	if struct["IsMultiRegionTrail"] then asserts.AssertBoolean(struct["IsMultiRegionTrail"]) end
	if struct["S3BucketName"] then asserts.AssertString(struct["S3BucketName"]) end
	if struct["CloudWatchLogsRoleArn"] then asserts.AssertString(struct["CloudWatchLogsRoleArn"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["CloudWatchLogsLogGroupArn"] then asserts.AssertString(struct["CloudWatchLogsLogGroupArn"]) end
	if struct["SnsTopicName"] then asserts.AssertString(struct["SnsTopicName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTrailResponse[k], "UpdateTrailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTrailResponse
-- <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IncludeGlobalServiceEvents [Boolean] <p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>
-- * Name [String] <p>Specifies the name of the trail.</p>
-- * S3KeyPrefix [String] <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html">Finding Your CloudTrail Log Files</a>.</p>
-- * TrailARN [String] <p>Specifies the ARN of the trail that was updated. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>
-- * LogFileValidationEnabled [Boolean] <p>Specifies whether log file integrity validation is enabled.</p>
-- * SnsTopicARN [String] <p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered. The format of a topic ARN is:</p> <p> <code>arn:aws:sns:us-east-2:123456789012:MyTopic</code> </p>
-- * IsMultiRegionTrail [Boolean] <p>Specifies whether the trail exists in one region or in all regions.</p>
-- * S3BucketName [String] <p>Specifies the name of the Amazon S3 bucket designated for publishing log files.</p>
-- * CloudWatchLogsRoleArn [String] <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>
-- * KmsKeyId [String] <p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the format:</p> <p> <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code> </p>
-- * CloudWatchLogsLogGroupArn [String] <p>Specifies the Amazon Resource Name (ARN) of the log group to which CloudTrail logs will be delivered.</p>
-- * SnsTopicName [String] <p>This field is deprecated. Use SnsTopicARN.</p>
-- @return UpdateTrailResponse structure as a key-value pair table
function M.UpdateTrailResponse(args)
	assert(args, "You must provide an argument table when creating UpdateTrailResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IncludeGlobalServiceEvents"] = args["IncludeGlobalServiceEvents"],
		["Name"] = args["Name"],
		["S3KeyPrefix"] = args["S3KeyPrefix"],
		["TrailARN"] = args["TrailARN"],
		["LogFileValidationEnabled"] = args["LogFileValidationEnabled"],
		["SnsTopicARN"] = args["SnsTopicARN"],
		["IsMultiRegionTrail"] = args["IsMultiRegionTrail"],
		["S3BucketName"] = args["S3BucketName"],
		["CloudWatchLogsRoleArn"] = args["CloudWatchLogsRoleArn"],
		["KmsKeyId"] = args["KmsKeyId"],
		["CloudWatchLogsLogGroupArn"] = args["CloudWatchLogsLogGroupArn"],
		["SnsTopicName"] = args["SnsTopicName"],
	}
	asserts.AssertUpdateTrailResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTrailStatusRequest = { ["Name"] = true, nil }

function asserts.AssertGetTrailStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTrailStatusRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTrailStatusRequest[k], "GetTrailStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTrailStatusRequest
-- <p>The name of a trail about which you want the current status.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [String] <p>Specifies the name or the CloudTrail ARN of the trail for which you are requesting status. To get the status of a shadow trail (a replication of the trail in another region), you must specify its ARN. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>
-- Required key: Name
-- @return GetTrailStatusRequest structure as a key-value pair table
function M.GetTrailStatusRequest(args)
	assert(args, "You must provide an argument table when creating GetTrailStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertGetTrailStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Tag = { ["Value"] = true, ["Key"] = true, nil }

function asserts.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["Value"] then asserts.AssertString(struct["Value"]) end
	if struct["Key"] then asserts.AssertString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(keys.Tag[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- <p>A custom key-value pair associated with a resource such as a CloudTrail trail.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Value [String] <p>The value in a key-value pair of a tag. The value must be no longer than 256 Unicode characters.</p>
-- * Key [String] <p>The key in a key-value pair. The key must be must be no longer than 128 Unicode characters. The key must be unique for the resource to which it applies.</p>
-- Required key: Key
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
		["Value"] = args["Value"],
		["Key"] = args["Key"],
	}
	asserts.AssertTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Resource = { ["ResourceType"] = true, ["ResourceName"] = true, nil }

function asserts.AssertResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Resource to be of type 'table'")
	if struct["ResourceType"] then asserts.AssertString(struct["ResourceType"]) end
	if struct["ResourceName"] then asserts.AssertString(struct["ResourceName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Resource[k], "Resource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Resource
-- <p>Specifies the type and name of a resource referenced by an event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [String] <p>The type of a resource referenced by the event returned. When the resource type cannot be determined, null is returned. Some examples of resource types are: <b>Instance</b> for EC2, <b>Trail</b> for CloudTrail, <b>DBInstance</b> for RDS, and <b>AccessKey</b> for IAM. For a list of resource types supported for event lookup, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/lookup_supported_resourcetypes.html">Resource Types Supported for Event Lookup</a>.</p>
-- * ResourceName [String] <p>The name of the resource referenced by the event returned. These are user-created names whose values will depend on the environment. For example, the resource name might be "auto-scaling-test-group" for an Auto Scaling Group or "i-1234567" for an EC2 Instance.</p>
-- @return Resource structure as a key-value pair table
function M.Resource(args)
	assert(args, "You must provide an argument table when creating Resource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceType"] = args["ResourceType"],
		["ResourceName"] = args["ResourceName"],
	}
	asserts.AssertResource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LookupEventsRequest = { ["LookupAttributes"] = true, ["EndTime"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["StartTime"] = true, nil }

function asserts.AssertLookupEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LookupEventsRequest to be of type 'table'")
	if struct["LookupAttributes"] then asserts.AssertLookupAttributesList(struct["LookupAttributes"]) end
	if struct["EndTime"] then asserts.AssertDate(struct["EndTime"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	if struct["StartTime"] then asserts.AssertDate(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.LookupEventsRequest[k], "LookupEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LookupEventsRequest
-- <p>Contains a request for LookupEvents.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LookupAttributes [LookupAttributesList] <p>Contains a list of lookup attributes. Currently the list can contain only one item.</p>
-- * EndTime [Date] <p>Specifies that only events that occur before or at the specified time are returned. If the specified end time is before the specified start time, an error is returned.</p>
-- * NextToken [NextToken] <p>The token to use to get the next page of results after a previous API call. This token must be passed in with the same parameters that were specified in the the original call. For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should include those same parameters.</p>
-- * MaxResults [MaxResults] <p>The number of events to return. Possible values are 1 through 50. The default is 50.</p>
-- * StartTime [Date] <p>Specifies that only events that occur after or at the specified time are returned. If the specified start time is after the specified end time, an error is returned.</p>
-- @return LookupEventsRequest structure as a key-value pair table
function M.LookupEventsRequest(args)
	assert(args, "You must provide an argument table when creating LookupEventsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LookupAttributes"] = args["LookupAttributes"],
		["EndTime"] = args["EndTime"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["StartTime"] = args["StartTime"],
	}
	asserts.AssertLookupEventsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutEventSelectorsRequest = { ["EventSelectors"] = true, ["TrailName"] = true, nil }

function asserts.AssertPutEventSelectorsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEventSelectorsRequest to be of type 'table'")
	assert(struct["TrailName"], "Expected key TrailName to exist in table")
	assert(struct["EventSelectors"], "Expected key EventSelectors to exist in table")
	if struct["EventSelectors"] then asserts.AssertEventSelectors(struct["EventSelectors"]) end
	if struct["TrailName"] then asserts.AssertString(struct["TrailName"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutEventSelectorsRequest[k], "PutEventSelectorsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEventSelectorsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventSelectors [EventSelectors] <p>Specifies the settings for your event selectors. You can configure up to five event selectors for a trail.</p>
-- * TrailName [String] <p>Specifies the name of the trail or trail ARN. If you specify a trail name, the string must meet the following requirements:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p> </li> <li> <p>Start with a letter or number, and end with a letter or number</p> </li> <li> <p>Be between 3 and 128 characters</p> </li> <li> <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code> and <code>my--namespace</code> are invalid.</p> </li> <li> <p>Not be in IP address format (for example, 192.168.5.4)</p> </li> </ul> <p>If you specify a trail ARN, it must be in the format:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>
-- Required key: TrailName
-- Required key: EventSelectors
-- @return PutEventSelectorsRequest structure as a key-value pair table
function M.PutEventSelectorsRequest(args)
	assert(args, "You must provide an argument table when creating PutEventSelectorsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventSelectors"] = args["EventSelectors"],
		["TrailName"] = args["TrailName"],
	}
	asserts.AssertPutEventSelectorsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AddTagsRequest = { ["ResourceId"] = true, ["TagsList"] = true, nil }

function asserts.AssertAddTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["ResourceId"] then asserts.AssertString(struct["ResourceId"]) end
	if struct["TagsList"] then asserts.AssertTagsList(struct["TagsList"]) end
	for k,_ in pairs(struct) do
		assert(keys.AddTagsRequest[k], "AddTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsRequest
-- <p>Specifies the tags to add to a trail.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceId [String] <p>Specifies the ARN of the trail to which one or more tags will be added. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>
-- * TagsList [TagsList] <p>Contains a list of CloudTrail tags, up to a limit of 50</p>
-- Required key: ResourceId
-- @return AddTagsRequest structure as a key-value pair table
function M.AddTagsRequest(args)
	assert(args, "You must provide an argument table when creating AddTagsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceId"] = args["ResourceId"],
		["TagsList"] = args["TagsList"],
	}
	asserts.AssertAddTagsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeTrailsRequest = { ["trailNameList"] = true, ["includeShadowTrails"] = true, nil }

function asserts.AssertDescribeTrailsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrailsRequest to be of type 'table'")
	if struct["trailNameList"] then asserts.AssertTrailNameList(struct["trailNameList"]) end
	if struct["includeShadowTrails"] then asserts.AssertBoolean(struct["includeShadowTrails"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeTrailsRequest[k], "DescribeTrailsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrailsRequest
-- <p>Returns information about the trail.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * trailNameList [TrailNameList] <p>Specifies a list of trail names, trail ARNs, or both, of the trails to describe. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p> <p>If an empty list is specified, information for the trail in the current region is returned.</p> <ul> <li> <p>If an empty list is specified and <code>IncludeShadowTrails</code> is false, then information for all trails in the current region is returned.</p> </li> <li> <p>If an empty list is specified and IncludeShadowTrails is null or true, then information for all trails in the current region and any associated shadow trails in other regions is returned.</p> </li> </ul> <note> <p>If one or more trail names are specified, information is returned only if the names match the names of trails belonging only to the current region. To return information about a trail in another region, you must specify its trail ARN.</p> </note>
-- * includeShadowTrails [Boolean] <p>Specifies whether to include shadow trails in the response. A shadow trail is the replication in a region of a trail that was created in a different region. The default is true.</p>
-- @return DescribeTrailsRequest structure as a key-value pair table
function M.DescribeTrailsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeTrailsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["trailNameList"] = args["trailNameList"],
		["includeShadowTrails"] = args["includeShadowTrails"],
	}
	asserts.AssertDescribeTrailsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RemoveTagsResponse = { nil }

function asserts.AssertRemoveTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.RemoveTagsResponse[k], "RemoveTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsResponse
-- <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return RemoveTagsResponse structure as a key-value pair table
function M.RemoveTagsResponse(args)
	assert(args, "You must provide an argument table when creating RemoveTagsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertRemoveTagsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsResponse = { ["ResourceTagList"] = true, ["NextToken"] = true, nil }

function asserts.AssertListTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsResponse to be of type 'table'")
	if struct["ResourceTagList"] then asserts.AssertResourceTagList(struct["ResourceTagList"]) end
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsResponse[k], "ListTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsResponse
-- <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceTagList [ResourceTagList] <p>A list of resource tags.</p>
-- * NextToken [String] <p>Reserved for future use.</p>
-- @return ListTagsResponse structure as a key-value pair table
function M.ListTagsResponse(args)
	assert(args, "You must provide an argument table when creating ListTagsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceTagList"] = args["ResourceTagList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListTagsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopLoggingResponse = { nil }

function asserts.AssertStopLoggingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopLoggingResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StopLoggingResponse[k], "StopLoggingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopLoggingResponse
-- <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StopLoggingResponse structure as a key-value pair table
function M.StopLoggingResponse(args)
	assert(args, "You must provide an argument table when creating StopLoggingResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStopLoggingResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Trail = { ["IncludeGlobalServiceEvents"] = true, ["Name"] = true, ["S3KeyPrefix"] = true, ["TrailARN"] = true, ["LogFileValidationEnabled"] = true, ["SnsTopicARN"] = true, ["IsMultiRegionTrail"] = true, ["HasCustomEventSelectors"] = true, ["S3BucketName"] = true, ["CloudWatchLogsRoleArn"] = true, ["KmsKeyId"] = true, ["CloudWatchLogsLogGroupArn"] = true, ["SnsTopicName"] = true, ["HomeRegion"] = true, nil }

function asserts.AssertTrail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Trail to be of type 'table'")
	if struct["IncludeGlobalServiceEvents"] then asserts.AssertBoolean(struct["IncludeGlobalServiceEvents"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["S3KeyPrefix"] then asserts.AssertString(struct["S3KeyPrefix"]) end
	if struct["TrailARN"] then asserts.AssertString(struct["TrailARN"]) end
	if struct["LogFileValidationEnabled"] then asserts.AssertBoolean(struct["LogFileValidationEnabled"]) end
	if struct["SnsTopicARN"] then asserts.AssertString(struct["SnsTopicARN"]) end
	if struct["IsMultiRegionTrail"] then asserts.AssertBoolean(struct["IsMultiRegionTrail"]) end
	if struct["HasCustomEventSelectors"] then asserts.AssertBoolean(struct["HasCustomEventSelectors"]) end
	if struct["S3BucketName"] then asserts.AssertString(struct["S3BucketName"]) end
	if struct["CloudWatchLogsRoleArn"] then asserts.AssertString(struct["CloudWatchLogsRoleArn"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["CloudWatchLogsLogGroupArn"] then asserts.AssertString(struct["CloudWatchLogsLogGroupArn"]) end
	if struct["SnsTopicName"] then asserts.AssertString(struct["SnsTopicName"]) end
	if struct["HomeRegion"] then asserts.AssertString(struct["HomeRegion"]) end
	for k,_ in pairs(struct) do
		assert(keys.Trail[k], "Trail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Trail
-- <p>The settings for a trail.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IncludeGlobalServiceEvents [Boolean] <p>Set to <b>True</b> to include AWS API calls from AWS global services such as IAM. Otherwise, <b>False</b>.</p>
-- * Name [String] <p>Name of the trail set by calling <a>CreateTrail</a>. The maximum length is 128 characters.</p>
-- * S3KeyPrefix [String] <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html">Finding Your CloudTrail Log Files</a>.The maximum length is 200 characters.</p>
-- * TrailARN [String] <p>Specifies the ARN of the trail. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>
-- * LogFileValidationEnabled [Boolean] <p>Specifies whether log file validation is enabled.</p>
-- * SnsTopicARN [String] <p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered. The format of a topic ARN is:</p> <p> <code>arn:aws:sns:us-east-2:123456789012:MyTopic</code> </p>
-- * IsMultiRegionTrail [Boolean] <p>Specifies whether the trail belongs only to one region or exists in all regions.</p>
-- * HasCustomEventSelectors [Boolean] <p>Specifies if the trail has custom event selectors.</p>
-- * S3BucketName [String] <p>Name of the Amazon S3 bucket into which CloudTrail delivers your trail files. See <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html">Amazon S3 Bucket Naming Requirements</a>.</p>
-- * CloudWatchLogsRoleArn [String] <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>
-- * KmsKeyId [String] <p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the format:</p> <p> <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code> </p>
-- * CloudWatchLogsLogGroupArn [String] <p>Specifies an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered.</p>
-- * SnsTopicName [String] <p>This field is deprecated. Use SnsTopicARN.</p>
-- * HomeRegion [String] <p>The region in which the trail was created.</p>
-- @return Trail structure as a key-value pair table
function M.Trail(args)
	assert(args, "You must provide an argument table when creating Trail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IncludeGlobalServiceEvents"] = args["IncludeGlobalServiceEvents"],
		["Name"] = args["Name"],
		["S3KeyPrefix"] = args["S3KeyPrefix"],
		["TrailARN"] = args["TrailARN"],
		["LogFileValidationEnabled"] = args["LogFileValidationEnabled"],
		["SnsTopicARN"] = args["SnsTopicARN"],
		["IsMultiRegionTrail"] = args["IsMultiRegionTrail"],
		["HasCustomEventSelectors"] = args["HasCustomEventSelectors"],
		["S3BucketName"] = args["S3BucketName"],
		["CloudWatchLogsRoleArn"] = args["CloudWatchLogsRoleArn"],
		["KmsKeyId"] = args["KmsKeyId"],
		["CloudWatchLogsLogGroupArn"] = args["CloudWatchLogsLogGroupArn"],
		["SnsTopicName"] = args["SnsTopicName"],
		["HomeRegion"] = args["HomeRegion"],
	}
	asserts.AssertTrail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTrailResponse = { nil }

function asserts.AssertDeleteTrailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTrailResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteTrailResponse[k], "DeleteTrailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTrailResponse
-- <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteTrailResponse structure as a key-value pair table
function M.DeleteTrailResponse(args)
	assert(args, "You must provide an argument table when creating DeleteTrailResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteTrailResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListPublicKeysResponse = { ["NextToken"] = true, ["PublicKeyList"] = true, nil }

function asserts.AssertListPublicKeysResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPublicKeysResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertString(struct["NextToken"]) end
	if struct["PublicKeyList"] then asserts.AssertPublicKeyList(struct["PublicKeyList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListPublicKeysResponse[k], "ListPublicKeysResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPublicKeysResponse
-- <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [String] <p>Reserved for future use.</p>
-- * PublicKeyList [PublicKeyList] <p>Contains an array of PublicKey objects.</p> <note> <p>The returned public keys may have validity time ranges that overlap.</p> </note>
-- @return ListPublicKeysResponse structure as a key-value pair table
function M.ListPublicKeysResponse(args)
	assert(args, "You must provide an argument table when creating ListPublicKeysResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["PublicKeyList"] = args["PublicKeyList"],
	}
	asserts.AssertListPublicKeysResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetEventSelectorsRequest = { ["TrailName"] = true, nil }

function asserts.AssertGetEventSelectorsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEventSelectorsRequest to be of type 'table'")
	assert(struct["TrailName"], "Expected key TrailName to exist in table")
	if struct["TrailName"] then asserts.AssertString(struct["TrailName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetEventSelectorsRequest[k], "GetEventSelectorsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEventSelectorsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TrailName [String] <p>Specifies the name of the trail or trail ARN. If you specify a trail name, the string must meet the following requirements:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p> </li> <li> <p>Start with a letter or number, and end with a letter or number</p> </li> <li> <p>Be between 3 and 128 characters</p> </li> <li> <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code> and <code>my--namespace</code> are not valid.</p> </li> <li> <p>Not be in IP address format (for example, 192.168.5.4)</p> </li> </ul> <p>If you specify a trail ARN, it must be in the format:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>
-- Required key: TrailName
-- @return GetEventSelectorsRequest structure as a key-value pair table
function M.GetEventSelectorsRequest(args)
	assert(args, "You must provide an argument table when creating GetEventSelectorsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TrailName"] = args["TrailName"],
	}
	asserts.AssertGetEventSelectorsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutEventSelectorsResponse = { ["EventSelectors"] = true, ["TrailARN"] = true, nil }

function asserts.AssertPutEventSelectorsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEventSelectorsResponse to be of type 'table'")
	if struct["EventSelectors"] then asserts.AssertEventSelectors(struct["EventSelectors"]) end
	if struct["TrailARN"] then asserts.AssertString(struct["TrailARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutEventSelectorsResponse[k], "PutEventSelectorsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEventSelectorsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventSelectors [EventSelectors] <p>Specifies the event selectors configured for your trail.</p>
-- * TrailARN [String] <p>Specifies the ARN of the trail that was updated with event selectors. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>
-- @return PutEventSelectorsResponse structure as a key-value pair table
function M.PutEventSelectorsResponse(args)
	assert(args, "You must provide an argument table when creating PutEventSelectorsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventSelectors"] = args["EventSelectors"],
		["TrailARN"] = args["TrailARN"],
	}
	asserts.AssertPutEventSelectorsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTrailRequest = { ["IncludeGlobalServiceEvents"] = true, ["Name"] = true, ["S3KeyPrefix"] = true, ["KmsKeyId"] = true, ["IsMultiRegionTrail"] = true, ["S3BucketName"] = true, ["CloudWatchLogsRoleArn"] = true, ["CloudWatchLogsLogGroupArn"] = true, ["SnsTopicName"] = true, ["EnableLogFileValidation"] = true, nil }

function asserts.AssertUpdateTrailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTrailRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["IncludeGlobalServiceEvents"] then asserts.AssertBoolean(struct["IncludeGlobalServiceEvents"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["S3KeyPrefix"] then asserts.AssertString(struct["S3KeyPrefix"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["IsMultiRegionTrail"] then asserts.AssertBoolean(struct["IsMultiRegionTrail"]) end
	if struct["S3BucketName"] then asserts.AssertString(struct["S3BucketName"]) end
	if struct["CloudWatchLogsRoleArn"] then asserts.AssertString(struct["CloudWatchLogsRoleArn"]) end
	if struct["CloudWatchLogsLogGroupArn"] then asserts.AssertString(struct["CloudWatchLogsLogGroupArn"]) end
	if struct["SnsTopicName"] then asserts.AssertString(struct["SnsTopicName"]) end
	if struct["EnableLogFileValidation"] then asserts.AssertBoolean(struct["EnableLogFileValidation"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTrailRequest[k], "UpdateTrailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTrailRequest
-- <p>Specifies settings to update for the trail.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IncludeGlobalServiceEvents [Boolean] <p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>
-- * Name [String] <p>Specifies the name of the trail or trail ARN. If <code>Name</code> is a trail name, the string must meet the following requirements:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p> </li> <li> <p>Start with a letter or number, and end with a letter or number</p> </li> <li> <p>Be between 3 and 128 characters</p> </li> <li> <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code> and <code>my--namespace</code> are invalid.</p> </li> <li> <p>Not be in IP address format (for example, 192.168.5.4)</p> </li> </ul> <p>If <code>Name</code> is a trail ARN, it must be in the format:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>
-- * S3KeyPrefix [String] <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html">Finding Your CloudTrail Log Files</a>. The maximum length is 200 characters.</p>
-- * KmsKeyId [String] <p>Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by "alias/", a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.</p> <p>Examples:</p> <ul> <li> <p>alias/MyAliasName</p> </li> <li> <p>arn:aws:kms:us-east-2:123456789012:alias/MyAliasName</p> </li> <li> <p>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</p> </li> <li> <p>12345678-1234-1234-1234-123456789012</p> </li> </ul>
-- * IsMultiRegionTrail [Boolean] <p>Specifies whether the trail applies only to the current region or to all regions. The default is false. If the trail exists only in the current region and this value is set to true, shadow trails (replications of the trail) will be created in the other regions. If the trail exists in all regions and this value is set to false, the trail will remain in the region where it was created, and its shadow trails in other regions will be deleted.</p>
-- * S3BucketName [String] <p>Specifies the name of the Amazon S3 bucket designated for publishing log files. See <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html">Amazon S3 Bucket Naming Requirements</a>.</p>
-- * CloudWatchLogsRoleArn [String] <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>
-- * CloudWatchLogsLogGroupArn [String] <p>Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered. Not required unless you specify CloudWatchLogsRoleArn.</p>
-- * SnsTopicName [String] <p>Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.</p>
-- * EnableLogFileValidation [Boolean] <p>Specifies whether log file validation is enabled. The default is false.</p> <note> <p>When you disable log file integrity validation, the chain of digest files is broken after one hour. CloudTrail will not create digest files for log files that were delivered during a period in which log file integrity validation was disabled. For example, if you enable log file integrity validation at noon on January 1, disable it at noon on January 2, and re-enable it at noon on January 10, digest files will not be created for the log files delivered from noon on January 2 to noon on January 10. The same applies whenever you stop CloudTrail logging or delete a trail.</p> </note>
-- Required key: Name
-- @return UpdateTrailRequest structure as a key-value pair table
function M.UpdateTrailRequest(args)
	assert(args, "You must provide an argument table when creating UpdateTrailRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IncludeGlobalServiceEvents"] = args["IncludeGlobalServiceEvents"],
		["Name"] = args["Name"],
		["S3KeyPrefix"] = args["S3KeyPrefix"],
		["KmsKeyId"] = args["KmsKeyId"],
		["IsMultiRegionTrail"] = args["IsMultiRegionTrail"],
		["S3BucketName"] = args["S3BucketName"],
		["CloudWatchLogsRoleArn"] = args["CloudWatchLogsRoleArn"],
		["CloudWatchLogsLogGroupArn"] = args["CloudWatchLogsLogGroupArn"],
		["SnsTopicName"] = args["SnsTopicName"],
		["EnableLogFileValidation"] = args["EnableLogFileValidation"],
	}
	asserts.AssertUpdateTrailRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Event = { ["EventId"] = true, ["Username"] = true, ["EventTime"] = true, ["CloudTrailEvent"] = true, ["AccessKeyId"] = true, ["EventName"] = true, ["ReadOnly"] = true, ["EventSource"] = true, ["Resources"] = true, nil }

function asserts.AssertEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Event to be of type 'table'")
	if struct["EventId"] then asserts.AssertString(struct["EventId"]) end
	if struct["Username"] then asserts.AssertString(struct["Username"]) end
	if struct["EventTime"] then asserts.AssertDate(struct["EventTime"]) end
	if struct["CloudTrailEvent"] then asserts.AssertString(struct["CloudTrailEvent"]) end
	if struct["AccessKeyId"] then asserts.AssertString(struct["AccessKeyId"]) end
	if struct["EventName"] then asserts.AssertString(struct["EventName"]) end
	if struct["ReadOnly"] then asserts.AssertString(struct["ReadOnly"]) end
	if struct["EventSource"] then asserts.AssertString(struct["EventSource"]) end
	if struct["Resources"] then asserts.AssertResourceList(struct["Resources"]) end
	for k,_ in pairs(struct) do
		assert(keys.Event[k], "Event contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Event
-- <p>Contains information about an event that was returned by a lookup request. The result includes a representation of a CloudTrail event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EventId [String] <p>The CloudTrail ID of the event returned.</p>
-- * Username [String] <p>A user name or role name of the requester that called the API in the event returned.</p>
-- * EventTime [Date] <p>The date and time of the event returned.</p>
-- * CloudTrailEvent [String] <p>A JSON string that contains a representation of the event returned.</p>
-- * AccessKeyId [String] <p>The AWS access key ID that was used to sign the request. If the request was made with temporary security credentials, this is the access key ID of the temporary credentials.</p>
-- * EventName [String] <p>The name of the event returned.</p>
-- * ReadOnly [String] <p>Information about whether the event is a write event or a read event. </p>
-- * EventSource [String] <p>The AWS service that the request was made to.</p>
-- * Resources [ResourceList] <p>A list of resources referenced by the event returned.</p>
-- @return Event structure as a key-value pair table
function M.Event(args)
	assert(args, "You must provide an argument table when creating Event")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EventId"] = args["EventId"],
		["Username"] = args["Username"],
		["EventTime"] = args["EventTime"],
		["CloudTrailEvent"] = args["CloudTrailEvent"],
		["AccessKeyId"] = args["AccessKeyId"],
		["EventName"] = args["EventName"],
		["ReadOnly"] = args["ReadOnly"],
		["EventSource"] = args["EventSource"],
		["Resources"] = args["Resources"],
	}
	asserts.AssertEvent(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTrailResponse = { ["IncludeGlobalServiceEvents"] = true, ["Name"] = true, ["S3KeyPrefix"] = true, ["TrailARN"] = true, ["LogFileValidationEnabled"] = true, ["SnsTopicARN"] = true, ["IsMultiRegionTrail"] = true, ["S3BucketName"] = true, ["CloudWatchLogsRoleArn"] = true, ["KmsKeyId"] = true, ["CloudWatchLogsLogGroupArn"] = true, ["SnsTopicName"] = true, nil }

function asserts.AssertCreateTrailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrailResponse to be of type 'table'")
	if struct["IncludeGlobalServiceEvents"] then asserts.AssertBoolean(struct["IncludeGlobalServiceEvents"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["S3KeyPrefix"] then asserts.AssertString(struct["S3KeyPrefix"]) end
	if struct["TrailARN"] then asserts.AssertString(struct["TrailARN"]) end
	if struct["LogFileValidationEnabled"] then asserts.AssertBoolean(struct["LogFileValidationEnabled"]) end
	if struct["SnsTopicARN"] then asserts.AssertString(struct["SnsTopicARN"]) end
	if struct["IsMultiRegionTrail"] then asserts.AssertBoolean(struct["IsMultiRegionTrail"]) end
	if struct["S3BucketName"] then asserts.AssertString(struct["S3BucketName"]) end
	if struct["CloudWatchLogsRoleArn"] then asserts.AssertString(struct["CloudWatchLogsRoleArn"]) end
	if struct["KmsKeyId"] then asserts.AssertString(struct["KmsKeyId"]) end
	if struct["CloudWatchLogsLogGroupArn"] then asserts.AssertString(struct["CloudWatchLogsLogGroupArn"]) end
	if struct["SnsTopicName"] then asserts.AssertString(struct["SnsTopicName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTrailResponse[k], "CreateTrailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrailResponse
-- <p>Returns the objects or data listed below if successful. Otherwise, returns an error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * IncludeGlobalServiceEvents [Boolean] <p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>
-- * Name [String] <p>Specifies the name of the trail.</p>
-- * S3KeyPrefix [String] <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html">Finding Your CloudTrail Log Files</a>.</p>
-- * TrailARN [String] <p>Specifies the ARN of the trail that was created. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail</code> </p>
-- * LogFileValidationEnabled [Boolean] <p>Specifies whether log file integrity validation is enabled.</p>
-- * SnsTopicARN [String] <p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered. The format of a topic ARN is:</p> <p> <code>arn:aws:sns:us-east-2:123456789012:MyTopic</code> </p>
-- * IsMultiRegionTrail [Boolean] <p>Specifies whether the trail exists in one region or in all regions.</p>
-- * S3BucketName [String] <p>Specifies the name of the Amazon S3 bucket designated for publishing log files.</p>
-- * CloudWatchLogsRoleArn [String] <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>
-- * KmsKeyId [String] <p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the format:</p> <p> <code>arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012</code> </p>
-- * CloudWatchLogsLogGroupArn [String] <p>Specifies the Amazon Resource Name (ARN) of the log group to which CloudTrail logs will be delivered.</p>
-- * SnsTopicName [String] <p>This field is deprecated. Use SnsTopicARN.</p>
-- @return CreateTrailResponse structure as a key-value pair table
function M.CreateTrailResponse(args)
	assert(args, "You must provide an argument table when creating CreateTrailResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["IncludeGlobalServiceEvents"] = args["IncludeGlobalServiceEvents"],
		["Name"] = args["Name"],
		["S3KeyPrefix"] = args["S3KeyPrefix"],
		["TrailARN"] = args["TrailARN"],
		["LogFileValidationEnabled"] = args["LogFileValidationEnabled"],
		["SnsTopicARN"] = args["SnsTopicARN"],
		["IsMultiRegionTrail"] = args["IsMultiRegionTrail"],
		["S3BucketName"] = args["S3BucketName"],
		["CloudWatchLogsRoleArn"] = args["CloudWatchLogsRoleArn"],
		["KmsKeyId"] = args["KmsKeyId"],
		["CloudWatchLogsLogGroupArn"] = args["CloudWatchLogsLogGroupArn"],
		["SnsTopicName"] = args["SnsTopicName"],
	}
	asserts.AssertCreateTrailResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceTag = { ["ResourceId"] = true, ["TagsList"] = true, nil }

function asserts.AssertResourceTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceTag to be of type 'table'")
	if struct["ResourceId"] then asserts.AssertString(struct["ResourceId"]) end
	if struct["TagsList"] then asserts.AssertTagsList(struct["TagsList"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceTag[k], "ResourceTag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceTag
-- <p>A resource tag.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceId [String] <p>Specifies the ARN of the resource.</p>
-- * TagsList [TagsList] <p>A list of tags.</p>
-- @return ResourceTag structure as a key-value pair table
function M.ResourceTag(args)
	assert(args, "You must provide an argument table when creating ResourceTag")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceId"] = args["ResourceId"],
		["TagsList"] = args["TagsList"],
	}
	asserts.AssertResourceTag(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertReadWriteType(str)
	assert(str)
	assert(type(str) == "string", "Expected ReadWriteType to be of type 'string'")
end

--  
function M.ReadWriteType(str)
	asserts.AssertReadWriteType(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
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

function asserts.AssertLookupAttributeKey(str)
	assert(str)
	assert(type(str) == "string", "Expected LookupAttributeKey to be of type 'string'")
end

--  
function M.LookupAttributeKey(str)
	asserts.AssertLookupAttributeKey(str)
	return str
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Date to be of type 'string'")
end

function M.Date(timestamp)
	asserts.AssertDate(timestamp)
	return timestamp
end

function asserts.AssertByteBuffer(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected ByteBuffer to be of type 'string'")
end

function M.ByteBuffer(blob)
	asserts.AssertByteBuffer(blob)
	return blob
end

function asserts.AssertTrailList(list)
	assert(list)
	assert(type(list) == "table", "Expected TrailList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTrail(v)
	end
end

--  
-- List of Trail objects
function M.TrailList(list)
	asserts.AssertTrailList(list)
	return list
end

function asserts.AssertResourceIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.ResourceIdList(list)
	asserts.AssertResourceIdList(list)
	return list
end

function asserts.AssertTagsList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTag(v)
	end
end

-- <p>A list of tags.</p>
-- List of Tag objects
function M.TagsList(list)
	asserts.AssertTagsList(list)
	return list
end

function asserts.AssertDataResources(list)
	assert(list)
	assert(type(list) == "table", "Expected DataResources to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDataResource(v)
	end
end

--  
-- List of DataResource objects
function M.DataResources(list)
	asserts.AssertDataResources(list)
	return list
end

function asserts.AssertPublicKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected PublicKeyList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPublicKey(v)
	end
end

--  
-- List of PublicKey objects
function M.PublicKeyList(list)
	asserts.AssertPublicKeyList(list)
	return list
end

function asserts.AssertLookupAttributesList(list)
	assert(list)
	assert(type(list) == "table", "Expected LookupAttributesList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertLookupAttribute(v)
	end
end

--  
-- List of LookupAttribute objects
function M.LookupAttributesList(list)
	asserts.AssertLookupAttributesList(list)
	return list
end

function asserts.AssertResourceTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceTagList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResourceTag(v)
	end
end

--  
-- List of ResourceTag objects
function M.ResourceTagList(list)
	asserts.AssertResourceTagList(list)
	return list
end

function asserts.AssertEventSelectors(list)
	assert(list)
	assert(type(list) == "table", "Expected EventSelectors to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEventSelector(v)
	end
end

--  
-- List of EventSelector objects
function M.EventSelectors(list)
	asserts.AssertEventSelectors(list)
	return list
end

function asserts.AssertDataResourceValues(list)
	assert(list)
	assert(type(list) == "table", "Expected DataResourceValues to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.DataResourceValues(list)
	asserts.AssertDataResourceValues(list)
	return list
end

function asserts.AssertEventsList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEvent(v)
	end
end

--  
-- List of Event objects
function M.EventsList(list)
	asserts.AssertEventsList(list)
	return list
end

function asserts.AssertTrailNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected TrailNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertString(v)
	end
end

--  
-- List of String objects
function M.TrailNameList(list)
	asserts.AssertTrailNameList(list)
	return list
end

function asserts.AssertResourceList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResource(v)
	end
end

-- <p>A list of resources referenced by the event returned.</p>
-- List of Resource objects
function M.ResourceList(list)
	asserts.AssertResourceList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "cloudtrail.amazonaws.com"
		end
	end
	local ss = { "cloudtrail" }
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
--- Call DeleteTrail asynchronously, invoking a callback when done
-- @param DeleteTrailRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteTrailAsync(DeleteTrailRequest, cb)
	assert(DeleteTrailRequest, "You must provide a DeleteTrailRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.DeleteTrail",
	}
	for header,value in pairs(DeleteTrailRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteTrailRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTrail synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTrailRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteTrailSync(DeleteTrailRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTrailAsync(DeleteTrailRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call RemoveTags asynchronously, invoking a callback when done
-- @param RemoveTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.RemoveTagsAsync(RemoveTagsRequest, cb)
	assert(RemoveTagsRequest, "You must provide a RemoveTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.RemoveTags",
	}
	for header,value in pairs(RemoveTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", RemoveTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call RemoveTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param RemoveTagsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.RemoveTagsSync(RemoveTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.RemoveTagsAsync(RemoveTagsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetEventSelectors asynchronously, invoking a callback when done
-- @param GetEventSelectorsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetEventSelectorsAsync(GetEventSelectorsRequest, cb)
	assert(GetEventSelectorsRequest, "You must provide a GetEventSelectorsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.GetEventSelectors",
	}
	for header,value in pairs(GetEventSelectorsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetEventSelectorsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetEventSelectors synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetEventSelectorsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetEventSelectorsSync(GetEventSelectorsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetEventSelectorsAsync(GetEventSelectorsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call AddTags asynchronously, invoking a callback when done
-- @param AddTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.AddTagsAsync(AddTagsRequest, cb)
	assert(AddTagsRequest, "You must provide a AddTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.AddTags",
	}
	for header,value in pairs(AddTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", AddTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call AddTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param AddTagsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.AddTagsSync(AddTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.AddTagsAsync(AddTagsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartLogging asynchronously, invoking a callback when done
-- @param StartLoggingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartLoggingAsync(StartLoggingRequest, cb)
	assert(StartLoggingRequest, "You must provide a StartLoggingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.StartLogging",
	}
	for header,value in pairs(StartLoggingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartLoggingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartLogging synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartLoggingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartLoggingSync(StartLoggingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartLoggingAsync(StartLoggingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTrailStatus asynchronously, invoking a callback when done
-- @param GetTrailStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetTrailStatusAsync(GetTrailStatusRequest, cb)
	assert(GetTrailStatusRequest, "You must provide a GetTrailStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.GetTrailStatus",
	}
	for header,value in pairs(GetTrailStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetTrailStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTrailStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTrailStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetTrailStatusSync(GetTrailStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTrailStatusAsync(GetTrailStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListPublicKeys asynchronously, invoking a callback when done
-- @param ListPublicKeysRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListPublicKeysAsync(ListPublicKeysRequest, cb)
	assert(ListPublicKeysRequest, "You must provide a ListPublicKeysRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.ListPublicKeys",
	}
	for header,value in pairs(ListPublicKeysRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListPublicKeysRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListPublicKeys synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListPublicKeysRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListPublicKeysSync(ListPublicKeysRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListPublicKeysAsync(ListPublicKeysRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopLogging asynchronously, invoking a callback when done
-- @param StopLoggingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopLoggingAsync(StopLoggingRequest, cb)
	assert(StopLoggingRequest, "You must provide a StopLoggingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.StopLogging",
	}
	for header,value in pairs(StopLoggingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopLoggingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopLogging synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopLoggingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopLoggingSync(StopLoggingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopLoggingAsync(StopLoggingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutEventSelectors asynchronously, invoking a callback when done
-- @param PutEventSelectorsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutEventSelectorsAsync(PutEventSelectorsRequest, cb)
	assert(PutEventSelectorsRequest, "You must provide a PutEventSelectorsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.PutEventSelectors",
	}
	for header,value in pairs(PutEventSelectorsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutEventSelectorsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutEventSelectors synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutEventSelectorsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutEventSelectorsSync(PutEventSelectorsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutEventSelectorsAsync(PutEventSelectorsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeTrails asynchronously, invoking a callback when done
-- @param DescribeTrailsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeTrailsAsync(DescribeTrailsRequest, cb)
	assert(DescribeTrailsRequest, "You must provide a DescribeTrailsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.DescribeTrails",
	}
	for header,value in pairs(DescribeTrailsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeTrailsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeTrails synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeTrailsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeTrailsSync(DescribeTrailsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeTrailsAsync(DescribeTrailsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTrail asynchronously, invoking a callback when done
-- @param CreateTrailRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateTrailAsync(CreateTrailRequest, cb)
	assert(CreateTrailRequest, "You must provide a CreateTrailRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.CreateTrail",
	}
	for header,value in pairs(CreateTrailRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateTrailRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateTrail synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTrailRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateTrailSync(CreateTrailRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTrailAsync(CreateTrailRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateTrail asynchronously, invoking a callback when done
-- @param UpdateTrailRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateTrailAsync(UpdateTrailRequest, cb)
	assert(UpdateTrailRequest, "You must provide a UpdateTrailRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.UpdateTrail",
	}
	for header,value in pairs(UpdateTrailRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateTrailRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateTrail synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateTrailRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateTrailSync(UpdateTrailRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateTrailAsync(UpdateTrailRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTags asynchronously, invoking a callback when done
-- @param ListTagsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsAsync(ListTagsRequest, cb)
	assert(ListTagsRequest, "You must provide a ListTagsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.ListTags",
	}
	for header,value in pairs(ListTagsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListTagsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTags synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagsSync(ListTagsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsAsync(ListTagsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call LookupEvents asynchronously, invoking a callback when done
-- @param LookupEventsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.LookupEventsAsync(LookupEventsRequest, cb)
	assert(LookupEventsRequest, "You must provide a LookupEventsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.LookupEvents",
	}
	for header,value in pairs(LookupEventsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", LookupEventsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call LookupEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param LookupEventsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.LookupEventsSync(LookupEventsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.LookupEventsAsync(LookupEventsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
