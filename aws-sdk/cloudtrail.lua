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
-- @param _Name [String] <p>Specifies the name or the CloudTrail ARN of the trail for which CloudTrail will stop logging AWS API calls. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail</code> </p>
-- Required parameter: Name
function M.StopLoggingRequest(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopLoggingRequest")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertStopLoggingRequest(t)
	return t
end

keys.UnsupportedOperationException = { nil }

function asserts.AssertUnsupportedOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedOperationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedOperationException[k], "UnsupportedOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedOperationException
-- <p>This exception is thrown when the requested operation is not supported.</p>
function M.UnsupportedOperationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedOperationException")
	local t = { 
	}
	asserts.AssertUnsupportedOperationException(t)
	return t
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
function M.AddTagsResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsResponse")
	local t = { 
	}
	asserts.AssertAddTagsResponse(t)
	return t
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
-- @param _ResourceIdList [ResourceIdList] <p>Specifies a list of trail ARNs whose tags will be listed. The list has a limit of 20 ARNs. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail</code> </p>
-- @param _NextToken [String] <p>Reserved for future use.</p>
-- Required parameter: ResourceIdList
function M.ListTagsRequest(_ResourceIdList, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsRequest")
	local t = { 
		["ResourceIdList"] = _ResourceIdList,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListTagsRequest(t)
	return t
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
-- @param _ResourceId [String] <p>Specifies the ARN of the trail from which tags should be removed. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail</code> </p>
-- @param _TagsList [TagsList] <p>Specifies a list of tags to be removed.</p>
-- Required parameter: ResourceId
function M.RemoveTagsRequest(_ResourceId, _TagsList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsRequest")
	local t = { 
		["ResourceId"] = _ResourceId,
		["TagsList"] = _TagsList,
	}
	asserts.AssertRemoveTagsRequest(t)
	return t
end

keys.TrailNotProvidedException = { nil }

function asserts.AssertTrailNotProvidedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrailNotProvidedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TrailNotProvidedException[k], "TrailNotProvidedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrailNotProvidedException
-- <p>This exception is deprecated.</p>
function M.TrailNotProvidedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrailNotProvidedException")
	local t = { 
	}
	asserts.AssertTrailNotProvidedException(t)
	return t
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
-- @param _Name [String] <p>Specifies the name or the CloudTrail ARN of the trail to be deleted. The format of a trail ARN is: <code>arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail</code> </p>
-- Required parameter: Name
function M.DeleteTrailRequest(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTrailRequest")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertDeleteTrailRequest(t)
	return t
end

keys.InsufficientEncryptionPolicyException = { nil }

function asserts.AssertInsufficientEncryptionPolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientEncryptionPolicyException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InsufficientEncryptionPolicyException[k], "InsufficientEncryptionPolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientEncryptionPolicyException
-- <p>This exception is thrown when the policy on the S3 bucket or KMS key is not sufficient.</p>
function M.InsufficientEncryptionPolicyException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientEncryptionPolicyException")
	local t = { 
	}
	asserts.AssertInsufficientEncryptionPolicyException(t)
	return t
end

keys.OperationNotPermittedException = { nil }

function asserts.AssertOperationNotPermittedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationNotPermittedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.OperationNotPermittedException[k], "OperationNotPermittedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationNotPermittedException
-- <p>This exception is thrown when the requested operation is not permitted.</p>
function M.OperationNotPermittedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating OperationNotPermittedException")
	local t = { 
	}
	asserts.AssertOperationNotPermittedException(t)
	return t
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
function M.StartLoggingResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartLoggingResponse")
	local t = { 
	}
	asserts.AssertStartLoggingResponse(t)
	return t
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
-- @param _trailNameList [TrailNameList] <p>Specifies a list of trail names, trail ARNs, or both, of the trails to describe. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail</code> </p> <p>If an empty list is specified, information for the trail in the current region is returned.</p> <ul> <li> <p>If an empty list is specified and <code>IncludeShadowTrails</code> is false, then information for all trails in the current region is returned.</p> </li> <li> <p>If an empty list is specified and IncludeShadowTrails is null or true, then information for all trails in the current region and any associated shadow trails in other regions is returned.</p> </li> </ul> <note> <p>If one or more trail names are specified, information is returned only if the names match the names of trails belonging only to the current region. To return information about a trail in another region, you must specify its trail ARN.</p> </note>
-- @param _includeShadowTrails [Boolean] <p>Specifies whether to include shadow trails in the response. A shadow trail is the replication in a region of a trail that was created in a different region. The default is true.</p>
function M.DescribeTrailsRequest(_trailNameList, _includeShadowTrails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrailsRequest")
	local t = { 
		["trailNameList"] = _trailNameList,
		["includeShadowTrails"] = _includeShadowTrails,
	}
	asserts.AssertDescribeTrailsRequest(t)
	return t
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
-- @param _Name [String] <p>Specifies the name or the CloudTrail ARN of the trail for which you are requesting status. To get the status of a shadow trail (a replication of the trail in another region), you must specify its ARN. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail</code> </p>
-- Required parameter: Name
function M.GetTrailStatusRequest(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTrailStatusRequest")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertGetTrailStatusRequest(t)
	return t
end

keys.MaximumNumberOfTrailsExceededException = { nil }

function asserts.AssertMaximumNumberOfTrailsExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaximumNumberOfTrailsExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.MaximumNumberOfTrailsExceededException[k], "MaximumNumberOfTrailsExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaximumNumberOfTrailsExceededException
-- <p>This exception is thrown when the maximum number of trails is reached.</p>
function M.MaximumNumberOfTrailsExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaximumNumberOfTrailsExceededException")
	local t = { 
	}
	asserts.AssertMaximumNumberOfTrailsExceededException(t)
	return t
end

keys.ResourceTypeNotSupportedException = { nil }

function asserts.AssertResourceTypeNotSupportedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceTypeNotSupportedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ResourceTypeNotSupportedException[k], "ResourceTypeNotSupportedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceTypeNotSupportedException
-- <p>This exception is thrown when the specified resource type is not supported by CloudTrail.</p>
function M.ResourceTypeNotSupportedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceTypeNotSupportedException")
	local t = { 
	}
	asserts.AssertResourceTypeNotSupportedException(t)
	return t
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
-- @param _IncludeGlobalServiceEvents [Boolean] <p>Set to <b>True</b> to include AWS API calls from AWS global services such as IAM. Otherwise, <b>False</b>.</p>
-- @param _Name [String] <p>Name of the trail set by calling <a>CreateTrail</a>. The maximum length is 128 characters.</p>
-- @param _S3KeyPrefix [String] <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html">Finding Your CloudTrail Log Files</a>.The maximum length is 200 characters.</p>
-- @param _TrailARN [String] <p>Specifies the ARN of the trail. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail</code> </p>
-- @param _LogFileValidationEnabled [Boolean] <p>Specifies whether log file validation is enabled.</p>
-- @param _SnsTopicARN [String] <p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered. The format of a topic ARN is:</p> <p> <code>arn:aws:sns:us-east-1:123456789012:MyTopic</code> </p>
-- @param _IsMultiRegionTrail [Boolean] <p>Specifies whether the trail belongs only to one region or exists in all regions.</p>
-- @param _HasCustomEventSelectors [Boolean] <p>Specifies if the trail has custom event selectors.</p>
-- @param _S3BucketName [String] <p>Name of the Amazon S3 bucket into which CloudTrail delivers your trail files. See <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html">Amazon S3 Bucket Naming Requirements</a>.</p>
-- @param _CloudWatchLogsRoleArn [String] <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>
-- @param _KmsKeyId [String] <p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the format:</p> <p> <code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code> </p>
-- @param _CloudWatchLogsLogGroupArn [String] <p>Specifies an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered.</p>
-- @param _SnsTopicName [String] <p>This field is deprecated. Use SnsTopicARN.</p>
-- @param _HomeRegion [String] <p>The region in which the trail was created.</p>
function M.Trail(_IncludeGlobalServiceEvents, _Name, _S3KeyPrefix, _TrailARN, _LogFileValidationEnabled, _SnsTopicARN, _IsMultiRegionTrail, _HasCustomEventSelectors, _S3BucketName, _CloudWatchLogsRoleArn, _KmsKeyId, _CloudWatchLogsLogGroupArn, _SnsTopicName, _HomeRegion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Trail")
	local t = { 
		["IncludeGlobalServiceEvents"] = _IncludeGlobalServiceEvents,
		["Name"] = _Name,
		["S3KeyPrefix"] = _S3KeyPrefix,
		["TrailARN"] = _TrailARN,
		["LogFileValidationEnabled"] = _LogFileValidationEnabled,
		["SnsTopicARN"] = _SnsTopicARN,
		["IsMultiRegionTrail"] = _IsMultiRegionTrail,
		["HasCustomEventSelectors"] = _HasCustomEventSelectors,
		["S3BucketName"] = _S3BucketName,
		["CloudWatchLogsRoleArn"] = _CloudWatchLogsRoleArn,
		["KmsKeyId"] = _KmsKeyId,
		["CloudWatchLogsLogGroupArn"] = _CloudWatchLogsLogGroupArn,
		["SnsTopicName"] = _SnsTopicName,
		["HomeRegion"] = _HomeRegion,
	}
	asserts.AssertTrail(t)
	return t
end

keys.KmsKeyDisabledException = { nil }

function asserts.AssertKmsKeyDisabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KmsKeyDisabledException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.KmsKeyDisabledException[k], "KmsKeyDisabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KmsKeyDisabledException
-- <p>This exception is deprecated.</p>
function M.KmsKeyDisabledException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating KmsKeyDisabledException")
	local t = { 
	}
	asserts.AssertKmsKeyDisabledException(t)
	return t
end

keys.InvalidEventSelectorsException = { nil }

function asserts.AssertInvalidEventSelectorsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidEventSelectorsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidEventSelectorsException[k], "InvalidEventSelectorsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidEventSelectorsException
-- <p>This exception is thrown when the <code>PutEventSelectors</code> operation is called with an invalid number of event selectors, data resources, or an invalid value for a parameter:</p> <ul> <li> <p>Specify a valid number of event selectors (1 to 5) for a trail.</p> </li> <li> <p>Specify a valid number of data resources (1 to 250) for an event selector.</p> </li> <li> <p>Specify a valid value for a parameter. For example, specifying the <code>ReadWriteType</code> parameter with a value of <code>read-only</code> is invalid.</p> </li> </ul>
function M.InvalidEventSelectorsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidEventSelectorsException")
	local t = { 
	}
	asserts.AssertInvalidEventSelectorsException(t)
	return t
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
-- @param _Value [String] <p>The value in a key-value pair of a tag. The value must be no longer than 256 Unicode characters.</p>
-- @param _Key [String] <p>The key in a key-value pair. The key must be must be no longer than 128 Unicode characters. The key must be unique for the resource to which it applies.</p>
-- Required parameter: Key
function M.Tag(_Value, _Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = _Value,
		["Key"] = _Key,
	}
	asserts.AssertTag(t)
	return t
end

keys.Event = { ["EventId"] = true, ["Username"] = true, ["EventTime"] = true, ["CloudTrailEvent"] = true, ["EventName"] = true, ["EventSource"] = true, ["Resources"] = true, nil }

function asserts.AssertEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Event to be of type 'table'")
	if struct["EventId"] then asserts.AssertString(struct["EventId"]) end
	if struct["Username"] then asserts.AssertString(struct["Username"]) end
	if struct["EventTime"] then asserts.AssertDate(struct["EventTime"]) end
	if struct["CloudTrailEvent"] then asserts.AssertString(struct["CloudTrailEvent"]) end
	if struct["EventName"] then asserts.AssertString(struct["EventName"]) end
	if struct["EventSource"] then asserts.AssertString(struct["EventSource"]) end
	if struct["Resources"] then asserts.AssertResourceList(struct["Resources"]) end
	for k,_ in pairs(struct) do
		assert(keys.Event[k], "Event contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Event
-- <p>Contains information about an event that was returned by a lookup request. The result includes a representation of a CloudTrail event.</p>
-- @param _EventId [String] <p>The CloudTrail ID of the event returned.</p>
-- @param _Username [String] <p>A user name or role name of the requester that called the API in the event returned.</p>
-- @param _EventTime [Date] <p>The date and time of the event returned.</p>
-- @param _CloudTrailEvent [String] <p>A JSON string that contains a representation of the event returned.</p>
-- @param _EventName [String] <p>The name of the event returned.</p>
-- @param _EventSource [String] <p>The AWS service that the request was made to.</p>
-- @param _Resources [ResourceList] <p>A list of resources referenced by the event returned.</p>
function M.Event(_EventId, _Username, _EventTime, _CloudTrailEvent, _EventName, _EventSource, _Resources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Event")
	local t = { 
		["EventId"] = _EventId,
		["Username"] = _Username,
		["EventTime"] = _EventTime,
		["CloudTrailEvent"] = _CloudTrailEvent,
		["EventName"] = _EventName,
		["EventSource"] = _EventSource,
		["Resources"] = _Resources,
	}
	asserts.AssertEvent(t)
	return t
end

keys.TrailAlreadyExistsException = { nil }

function asserts.AssertTrailAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrailAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TrailAlreadyExistsException[k], "TrailAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrailAlreadyExistsException
-- <p>This exception is thrown when the specified trail already exists.</p>
function M.TrailAlreadyExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrailAlreadyExistsException")
	local t = { 
	}
	asserts.AssertTrailAlreadyExistsException(t)
	return t
end

keys.CloudTrailARNInvalidException = { nil }

function asserts.AssertCloudTrailARNInvalidException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudTrailARNInvalidException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CloudTrailARNInvalidException[k], "CloudTrailARNInvalidException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudTrailARNInvalidException
-- <p>This exception is thrown when an operation is called with an invalid trail ARN. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail</code> </p>
function M.CloudTrailARNInvalidException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudTrailARNInvalidException")
	local t = { 
	}
	asserts.AssertCloudTrailARNInvalidException(t)
	return t
end

keys.InvalidNextTokenException = { nil }

function asserts.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidNextTokenException[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- <p>Invalid token or token that was previously used in a request with different parameters. This exception is thrown if the token is invalid.</p>
function M.InvalidNextTokenException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextTokenException")
	local t = { 
	}
	asserts.AssertInvalidNextTokenException(t)
	return t
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
-- @param _IncludeGlobalServiceEvents [Boolean] <p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>
-- @param _Name [String] <p>Specifies the name of the trail. The name must meet the following requirements:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p> </li> <li> <p>Start with a letter or number, and end with a letter or number</p> </li> <li> <p>Be between 3 and 128 characters</p> </li> <li> <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code> and <code>my--namespace</code> are invalid.</p> </li> <li> <p>Not be in IP address format (for example, 192.168.5.4)</p> </li> </ul>
-- @param _S3KeyPrefix [String] <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html">Finding Your CloudTrail Log Files</a>. The maximum length is 200 characters.</p>
-- @param _KmsKeyId [String] <p>Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by "alias/", a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.</p> <p>Examples:</p> <ul> <li> <p>alias/MyAliasName</p> </li> <li> <p>arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</p> </li> <li> <p>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</p> </li> <li> <p>12345678-1234-1234-1234-123456789012</p> </li> </ul>
-- @param _IsMultiRegionTrail [Boolean] <p>Specifies whether the trail is created in the current region or in all regions. The default is false.</p>
-- @param _S3BucketName [String] <p>Specifies the name of the Amazon S3 bucket designated for publishing log files. See <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html">Amazon S3 Bucket Naming Requirements</a>.</p>
-- @param _CloudWatchLogsRoleArn [String] <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>
-- @param _CloudWatchLogsLogGroupArn [String] <p>Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered. Not required unless you specify CloudWatchLogsRoleArn.</p>
-- @param _SnsTopicName [String] <p>Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.</p>
-- @param _EnableLogFileValidation [Boolean] <p>Specifies whether log file integrity validation is enabled. The default is false.</p> <note> <p>When you disable log file integrity validation, the chain of digest files is broken after one hour. CloudTrail will not create digest files for log files that were delivered during a period in which log file integrity validation was disabled. For example, if you enable log file integrity validation at noon on January 1, disable it at noon on January 2, and re-enable it at noon on January 10, digest files will not be created for the log files delivered from noon on January 2 to noon on January 10. The same applies whenever you stop CloudTrail logging or delete a trail.</p> </note>
-- Required parameter: Name
-- Required parameter: S3BucketName
function M.CreateTrailRequest(_IncludeGlobalServiceEvents, _Name, _S3KeyPrefix, _KmsKeyId, _IsMultiRegionTrail, _S3BucketName, _CloudWatchLogsRoleArn, _CloudWatchLogsLogGroupArn, _SnsTopicName, _EnableLogFileValidation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTrailRequest")
	local t = { 
		["IncludeGlobalServiceEvents"] = _IncludeGlobalServiceEvents,
		["Name"] = _Name,
		["S3KeyPrefix"] = _S3KeyPrefix,
		["KmsKeyId"] = _KmsKeyId,
		["IsMultiRegionTrail"] = _IsMultiRegionTrail,
		["S3BucketName"] = _S3BucketName,
		["CloudWatchLogsRoleArn"] = _CloudWatchLogsRoleArn,
		["CloudWatchLogsLogGroupArn"] = _CloudWatchLogsLogGroupArn,
		["SnsTopicName"] = _SnsTopicName,
		["EnableLogFileValidation"] = _EnableLogFileValidation,
	}
	asserts.AssertCreateTrailRequest(t)
	return t
end

keys.InvalidCloudWatchLogsLogGroupArnException = { nil }

function asserts.AssertInvalidCloudWatchLogsLogGroupArnException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCloudWatchLogsLogGroupArnException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidCloudWatchLogsLogGroupArnException[k], "InvalidCloudWatchLogsLogGroupArnException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCloudWatchLogsLogGroupArnException
-- <p>This exception is thrown when the provided CloudWatch log group is not valid.</p>
function M.InvalidCloudWatchLogsLogGroupArnException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCloudWatchLogsLogGroupArnException")
	local t = { 
	}
	asserts.AssertInvalidCloudWatchLogsLogGroupArnException(t)
	return t
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
-- @param _EventSelectors [EventSelectors] <p>Specifies the event selectors configured for your trail.</p>
-- @param _TrailARN [String] <p>Specifies the ARN of the trail that was updated with event selectors. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail</code> </p>
function M.PutEventSelectorsResponse(_EventSelectors, _TrailARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutEventSelectorsResponse")
	local t = { 
		["EventSelectors"] = _EventSelectors,
		["TrailARN"] = _TrailARN,
	}
	asserts.AssertPutEventSelectorsResponse(t)
	return t
end

keys.InvalidParameterCombinationException = { nil }

function asserts.AssertInvalidParameterCombinationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterCombinationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidParameterCombinationException[k], "InvalidParameterCombinationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterCombinationException
-- <p>This exception is thrown when the combination of parameters provided is not valid.</p>
function M.InvalidParameterCombinationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterCombinationException")
	local t = { 
	}
	asserts.AssertInvalidParameterCombinationException(t)
	return t
end

keys.InvalidLookupAttributesException = { nil }

function asserts.AssertInvalidLookupAttributesException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLookupAttributesException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidLookupAttributesException[k], "InvalidLookupAttributesException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLookupAttributesException
-- <p>Occurs when an invalid lookup attribute is specified.</p>
function M.InvalidLookupAttributesException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidLookupAttributesException")
	local t = { 
	}
	asserts.AssertInvalidLookupAttributesException(t)
	return t
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
-- @param _IncludeGlobalServiceEvents [Boolean] <p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>
-- @param _Name [String] <p>Specifies the name of the trail.</p>
-- @param _S3KeyPrefix [String] <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html">Finding Your CloudTrail Log Files</a>.</p>
-- @param _TrailARN [String] <p>Specifies the ARN of the trail that was updated. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail</code> </p>
-- @param _LogFileValidationEnabled [Boolean] <p>Specifies whether log file integrity validation is enabled.</p>
-- @param _SnsTopicARN [String] <p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered. The format of a topic ARN is:</p> <p> <code>arn:aws:sns:us-east-1:123456789012:MyTopic</code> </p>
-- @param _IsMultiRegionTrail [Boolean] <p>Specifies whether the trail exists in one region or in all regions.</p>
-- @param _S3BucketName [String] <p>Specifies the name of the Amazon S3 bucket designated for publishing log files.</p>
-- @param _CloudWatchLogsRoleArn [String] <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>
-- @param _KmsKeyId [String] <p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the format:</p> <p> <code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code> </p>
-- @param _CloudWatchLogsLogGroupArn [String] <p>Specifies the Amazon Resource Name (ARN) of the log group to which CloudTrail logs will be delivered.</p>
-- @param _SnsTopicName [String] <p>This field is deprecated. Use SnsTopicARN.</p>
function M.UpdateTrailResponse(_IncludeGlobalServiceEvents, _Name, _S3KeyPrefix, _TrailARN, _LogFileValidationEnabled, _SnsTopicARN, _IsMultiRegionTrail, _S3BucketName, _CloudWatchLogsRoleArn, _KmsKeyId, _CloudWatchLogsLogGroupArn, _SnsTopicName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTrailResponse")
	local t = { 
		["IncludeGlobalServiceEvents"] = _IncludeGlobalServiceEvents,
		["Name"] = _Name,
		["S3KeyPrefix"] = _S3KeyPrefix,
		["TrailARN"] = _TrailARN,
		["LogFileValidationEnabled"] = _LogFileValidationEnabled,
		["SnsTopicARN"] = _SnsTopicARN,
		["IsMultiRegionTrail"] = _IsMultiRegionTrail,
		["S3BucketName"] = _S3BucketName,
		["CloudWatchLogsRoleArn"] = _CloudWatchLogsRoleArn,
		["KmsKeyId"] = _KmsKeyId,
		["CloudWatchLogsLogGroupArn"] = _CloudWatchLogsLogGroupArn,
		["SnsTopicName"] = _SnsTopicName,
	}
	asserts.AssertUpdateTrailResponse(t)
	return t
end

keys.InvalidSnsTopicNameException = { nil }

function asserts.AssertInvalidSnsTopicNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSnsTopicNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidSnsTopicNameException[k], "InvalidSnsTopicNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSnsTopicNameException
-- <p>This exception is thrown when the provided SNS topic name is not valid.</p>
function M.InvalidSnsTopicNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSnsTopicNameException")
	local t = { 
	}
	asserts.AssertInvalidSnsTopicNameException(t)
	return t
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
-- @param _LookupAttributes [LookupAttributesList] <p>Contains a list of lookup attributes. Currently the list can contain only one item.</p>
-- @param _EndTime [Date] <p>Specifies that only events that occur before or at the specified time are returned. If the specified end time is before the specified start time, an error is returned.</p>
-- @param _NextToken [NextToken] <p>The token to use to get the next page of results after a previous API call. This token must be passed in with the same parameters that were specified in the the original call. For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should include those same parameters.</p>
-- @param _MaxResults [MaxResults] <p>The number of events to return. Possible values are 1 through 50. The default is 10.</p>
-- @param _StartTime [Date] <p>Specifies that only events that occur after or at the specified time are returned. If the specified start time is after the specified end time, an error is returned.</p>
function M.LookupEventsRequest(_LookupAttributes, _EndTime, _NextToken, _MaxResults, _StartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LookupEventsRequest")
	local t = { 
		["LookupAttributes"] = _LookupAttributes,
		["EndTime"] = _EndTime,
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
		["StartTime"] = _StartTime,
	}
	asserts.AssertLookupEventsRequest(t)
	return t
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
function M.StopLoggingResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopLoggingResponse")
	local t = { 
	}
	asserts.AssertStopLoggingResponse(t)
	return t
end

keys.InvalidTimeRangeException = { nil }

function asserts.AssertInvalidTimeRangeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTimeRangeException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidTimeRangeException[k], "InvalidTimeRangeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTimeRangeException
-- <p>Occurs if the timestamp values are invalid. Either the start time occurs after the end time or the time range is outside the range of possible values.</p>
function M.InvalidTimeRangeException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTimeRangeException")
	local t = { 
	}
	asserts.AssertInvalidTimeRangeException(t)
	return t
end

keys.TrailNotFoundException = { nil }

function asserts.AssertTrailNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrailNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TrailNotFoundException[k], "TrailNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrailNotFoundException
-- <p>This exception is thrown when the trail with the given name is not found.</p>
function M.TrailNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrailNotFoundException")
	local t = { 
	}
	asserts.AssertTrailNotFoundException(t)
	return t
end

keys.InvalidS3BucketNameException = { nil }

function asserts.AssertInvalidS3BucketNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidS3BucketNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidS3BucketNameException[k], "InvalidS3BucketNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidS3BucketNameException
-- <p>This exception is thrown when the provided S3 bucket name is not valid.</p>
function M.InvalidS3BucketNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidS3BucketNameException")
	local t = { 
	}
	asserts.AssertInvalidS3BucketNameException(t)
	return t
end

keys.S3BucketDoesNotExistException = { nil }

function asserts.AssertS3BucketDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3BucketDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.S3BucketDoesNotExistException[k], "S3BucketDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3BucketDoesNotExistException
-- <p>This exception is thrown when the specified S3 bucket does not exist.</p>
function M.S3BucketDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3BucketDoesNotExistException")
	local t = { 
	}
	asserts.AssertS3BucketDoesNotExistException(t)
	return t
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
-- @param _IncludeGlobalServiceEvents [Boolean] <p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>
-- @param _Name [String] <p>Specifies the name of the trail or trail ARN. If <code>Name</code> is a trail name, the string must meet the following requirements:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p> </li> <li> <p>Start with a letter or number, and end with a letter or number</p> </li> <li> <p>Be between 3 and 128 characters</p> </li> <li> <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code> and <code>my--namespace</code> are invalid.</p> </li> <li> <p>Not be in IP address format (for example, 192.168.5.4)</p> </li> </ul> <p>If <code>Name</code> is a trail ARN, it must be in the format:</p> <p> <code>arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail</code> </p>
-- @param _S3KeyPrefix [String] <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html">Finding Your CloudTrail Log Files</a>. The maximum length is 200 characters.</p>
-- @param _KmsKeyId [String] <p>Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by "alias/", a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.</p> <p>Examples:</p> <ul> <li> <p>alias/MyAliasName</p> </li> <li> <p>arn:aws:kms:us-east-1:123456789012:alias/MyAliasName</p> </li> <li> <p>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</p> </li> <li> <p>12345678-1234-1234-1234-123456789012</p> </li> </ul>
-- @param _IsMultiRegionTrail [Boolean] <p>Specifies whether the trail applies only to the current region or to all regions. The default is false. If the trail exists only in the current region and this value is set to true, shadow trails (replications of the trail) will be created in the other regions. If the trail exists in all regions and this value is set to false, the trail will remain in the region where it was created, and its shadow trails in other regions will be deleted.</p>
-- @param _S3BucketName [String] <p>Specifies the name of the Amazon S3 bucket designated for publishing log files. See <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html">Amazon S3 Bucket Naming Requirements</a>.</p>
-- @param _CloudWatchLogsRoleArn [String] <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>
-- @param _CloudWatchLogsLogGroupArn [String] <p>Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered. Not required unless you specify CloudWatchLogsRoleArn.</p>
-- @param _SnsTopicName [String] <p>Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.</p>
-- @param _EnableLogFileValidation [Boolean] <p>Specifies whether log file validation is enabled. The default is false.</p> <note> <p>When you disable log file integrity validation, the chain of digest files is broken after one hour. CloudTrail will not create digest files for log files that were delivered during a period in which log file integrity validation was disabled. For example, if you enable log file integrity validation at noon on January 1, disable it at noon on January 2, and re-enable it at noon on January 10, digest files will not be created for the log files delivered from noon on January 2 to noon on January 10. The same applies whenever you stop CloudTrail logging or delete a trail.</p> </note>
-- Required parameter: Name
function M.UpdateTrailRequest(_IncludeGlobalServiceEvents, _Name, _S3KeyPrefix, _KmsKeyId, _IsMultiRegionTrail, _S3BucketName, _CloudWatchLogsRoleArn, _CloudWatchLogsLogGroupArn, _SnsTopicName, _EnableLogFileValidation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTrailRequest")
	local t = { 
		["IncludeGlobalServiceEvents"] = _IncludeGlobalServiceEvents,
		["Name"] = _Name,
		["S3KeyPrefix"] = _S3KeyPrefix,
		["KmsKeyId"] = _KmsKeyId,
		["IsMultiRegionTrail"] = _IsMultiRegionTrail,
		["S3BucketName"] = _S3BucketName,
		["CloudWatchLogsRoleArn"] = _CloudWatchLogsRoleArn,
		["CloudWatchLogsLogGroupArn"] = _CloudWatchLogsLogGroupArn,
		["SnsTopicName"] = _SnsTopicName,
		["EnableLogFileValidation"] = _EnableLogFileValidation,
	}
	asserts.AssertUpdateTrailRequest(t)
	return t
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
-- <p>Use event selectors to specify whether you want your trail to log management and/or data events. When an event occurs in your account, CloudTrail evaluates the event selector for all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event.</p> <p>You can configure up to five event selectors for a trail.</p>
-- @param _IncludeManagementEvents [Boolean] <p>Specify if you want your event selector to include management events for your trail.</p> <p> For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html#logging-management-events">Management Events</a> in the <i>AWS CloudTrail User Guide</i>.</p> <p>By default, the value is <code>true</code>.</p>
-- @param _DataResources [DataResources] <p>CloudTrail supports logging only data events for S3 objects. You can specify up to 250 S3 buckets and object prefixes for a trail.</p> <p>For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html#logging-data-events">Data Events</a> in the <i>AWS CloudTrail User Guide</i>.</p>
-- @param _ReadWriteType [ReadWriteType] <p>Specify if you want your trail to log read-only events, write-only events, or all. For example, the EC2 <code>GetConsoleOutput</code> is a read-only API operation and <code>RunInstances</code> is a write-only API operation.</p> <p> By default, the value is <code>All</code>.</p>
function M.EventSelector(_IncludeManagementEvents, _DataResources, _ReadWriteType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventSelector")
	local t = { 
		["IncludeManagementEvents"] = _IncludeManagementEvents,
		["DataResources"] = _DataResources,
		["ReadWriteType"] = _ReadWriteType,
	}
	asserts.AssertEventSelector(t)
	return t
end

keys.InsufficientS3BucketPolicyException = { nil }

function asserts.AssertInsufficientS3BucketPolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientS3BucketPolicyException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InsufficientS3BucketPolicyException[k], "InsufficientS3BucketPolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientS3BucketPolicyException
-- <p>This exception is thrown when the policy on the S3 bucket is not sufficient.</p>
function M.InsufficientS3BucketPolicyException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientS3BucketPolicyException")
	local t = { 
	}
	asserts.AssertInsufficientS3BucketPolicyException(t)
	return t
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
-- @param _trailList [TrailList] <p>The list of trail objects.</p>
function M.DescribeTrailsResponse(_trailList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrailsResponse")
	local t = { 
		["trailList"] = _trailList,
	}
	asserts.AssertDescribeTrailsResponse(t)
	return t
end

keys.InvalidCloudWatchLogsRoleArnException = { nil }

function asserts.AssertInvalidCloudWatchLogsRoleArnException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCloudWatchLogsRoleArnException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidCloudWatchLogsRoleArnException[k], "InvalidCloudWatchLogsRoleArnException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCloudWatchLogsRoleArnException
-- <p>This exception is thrown when the provided role is not valid.</p>
function M.InvalidCloudWatchLogsRoleArnException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCloudWatchLogsRoleArnException")
	local t = { 
	}
	asserts.AssertInvalidCloudWatchLogsRoleArnException(t)
	return t
end

keys.CloudWatchLogsDeliveryUnavailableException = { nil }

function asserts.AssertCloudWatchLogsDeliveryUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchLogsDeliveryUnavailableException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CloudWatchLogsDeliveryUnavailableException[k], "CloudWatchLogsDeliveryUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchLogsDeliveryUnavailableException
-- <p>Cannot set a CloudWatch Logs delivery for this region.</p>
function M.CloudWatchLogsDeliveryUnavailableException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudWatchLogsDeliveryUnavailableException")
	local t = { 
	}
	asserts.AssertCloudWatchLogsDeliveryUnavailableException(t)
	return t
end

keys.InvalidTrailNameException = { nil }

function asserts.AssertInvalidTrailNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTrailNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidTrailNameException[k], "InvalidTrailNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTrailNameException
-- <p>This exception is thrown when the provided trail name is not valid. Trail names must meet the following requirements:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p> </li> <li> <p>Start with a letter or number, and end with a letter or number</p> </li> <li> <p>Be between 3 and 128 characters</p> </li> <li> <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code> and <code>my--namespace</code> are invalid.</p> </li> <li> <p>Not be in IP address format (for example, 192.168.5.4)</p> </li> </ul>
function M.InvalidTrailNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTrailNameException")
	local t = { 
	}
	asserts.AssertInvalidTrailNameException(t)
	return t
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
-- @param _NextToken [String] <p>Reserved for future use.</p>
-- @param _PublicKeyList [PublicKeyList] <p>Contains an array of PublicKey objects.</p> <note> <p>The returned public keys may have validity time ranges that overlap.</p> </note>
function M.ListPublicKeysResponse(_NextToken, _PublicKeyList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPublicKeysResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["PublicKeyList"] = _PublicKeyList,
	}
	asserts.AssertListPublicKeysResponse(t)
	return t
end

keys.ResourceNotFoundException = { nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>This exception is thrown when the specified resource is not found.</p>
function M.ResourceNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
	}
	asserts.AssertResourceNotFoundException(t)
	return t
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
function M.DeleteTrailResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTrailResponse")
	local t = { 
	}
	asserts.AssertDeleteTrailResponse(t)
	return t
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
-- @param _ResourceId [String] <p>Specifies the ARN of the resource.</p>
-- @param _TagsList [TagsList] <p>A list of tags.</p>
function M.ResourceTag(_ResourceId, _TagsList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceTag")
	local t = { 
		["ResourceId"] = _ResourceId,
		["TagsList"] = _TagsList,
	}
	asserts.AssertResourceTag(t)
	return t
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
-- @param _LatestNotificationError [String] <p>Displays any Amazon SNS error that CloudTrail encountered when attempting to send a notification. For more information about Amazon SNS errors, see the <a href="http://docs.aws.amazon.com/sns/latest/dg/welcome.html">Amazon SNS Developer Guide</a>. </p>
-- @param _LatestCloudWatchLogsDeliveryTime [Date] <p>Displays the most recent date and time when CloudTrail delivered logs to CloudWatch Logs.</p>
-- @param _LatestNotificationTime [Date] <p>Specifies the date and time of the most recent Amazon SNS notification that CloudTrail has written a new log file to an account's Amazon S3 bucket.</p>
-- @param _LatestNotificationAttemptSucceeded [String] <p>This field is deprecated.</p>
-- @param _LatestDeliveryError [String] <p>Displays any Amazon S3 error that CloudTrail encountered when attempting to deliver log files to the designated bucket. For more information see the topic <a href="http://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html">Error Responses</a> in the Amazon S3 API Reference. </p> <note> <p>This error occurs only when there is a problem with the destination S3 bucket and will not occur for timeouts. To resolve the issue, create a new bucket and call <code>UpdateTrail</code> to specify the new bucket, or fix the existing objects so that CloudTrail can again write to the bucket.</p> </note>
-- @param _LatestDeliveryTime [Date] <p>Specifies the date and time that CloudTrail last delivered log files to an account's Amazon S3 bucket.</p>
-- @param _TimeLoggingStarted [String] <p>This field is deprecated.</p>
-- @param _LatestDigestDeliveryError [String] <p>Displays any Amazon S3 error that CloudTrail encountered when attempting to deliver a digest file to the designated bucket. For more information see the topic <a href="http://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html">Error Responses</a> in the Amazon S3 API Reference. </p> <note> <p>This error occurs only when there is a problem with the destination S3 bucket and will not occur for timeouts. To resolve the issue, create a new bucket and call <code>UpdateTrail</code> to specify the new bucket, or fix the existing objects so that CloudTrail can again write to the bucket.</p> </note>
-- @param _LatestDeliveryAttemptSucceeded [String] <p>This field is deprecated.</p>
-- @param _IsLogging [Boolean] <p>Whether the CloudTrail is currently logging AWS API calls.</p>
-- @param _LatestCloudWatchLogsDeliveryError [String] <p>Displays any CloudWatch Logs error that CloudTrail encountered when attempting to deliver logs to CloudWatch Logs.</p>
-- @param _StartLoggingTime [Date] <p>Specifies the most recent date and time when CloudTrail started recording API calls for an AWS account.</p>
-- @param _LatestDigestDeliveryTime [Date] <p>Specifies the date and time that CloudTrail last delivered a digest file to an account's Amazon S3 bucket.</p>
-- @param _StopLoggingTime [Date] <p>Specifies the most recent date and time when CloudTrail stopped recording API calls for an AWS account.</p>
-- @param _LatestNotificationAttemptTime [String] <p>This field is deprecated.</p>
-- @param _LatestDeliveryAttemptTime [String] <p>This field is deprecated.</p>
-- @param _TimeLoggingStopped [String] <p>This field is deprecated.</p>
function M.GetTrailStatusResponse(_LatestNotificationError, _LatestCloudWatchLogsDeliveryTime, _LatestNotificationTime, _LatestNotificationAttemptSucceeded, _LatestDeliveryError, _LatestDeliveryTime, _TimeLoggingStarted, _LatestDigestDeliveryError, _LatestDeliveryAttemptSucceeded, _IsLogging, _LatestCloudWatchLogsDeliveryError, _StartLoggingTime, _LatestDigestDeliveryTime, _StopLoggingTime, _LatestNotificationAttemptTime, _LatestDeliveryAttemptTime, _TimeLoggingStopped, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTrailStatusResponse")
	local t = { 
		["LatestNotificationError"] = _LatestNotificationError,
		["LatestCloudWatchLogsDeliveryTime"] = _LatestCloudWatchLogsDeliveryTime,
		["LatestNotificationTime"] = _LatestNotificationTime,
		["LatestNotificationAttemptSucceeded"] = _LatestNotificationAttemptSucceeded,
		["LatestDeliveryError"] = _LatestDeliveryError,
		["LatestDeliveryTime"] = _LatestDeliveryTime,
		["TimeLoggingStarted"] = _TimeLoggingStarted,
		["LatestDigestDeliveryError"] = _LatestDigestDeliveryError,
		["LatestDeliveryAttemptSucceeded"] = _LatestDeliveryAttemptSucceeded,
		["IsLogging"] = _IsLogging,
		["LatestCloudWatchLogsDeliveryError"] = _LatestCloudWatchLogsDeliveryError,
		["StartLoggingTime"] = _StartLoggingTime,
		["LatestDigestDeliveryTime"] = _LatestDigestDeliveryTime,
		["StopLoggingTime"] = _StopLoggingTime,
		["LatestNotificationAttemptTime"] = _LatestNotificationAttemptTime,
		["LatestDeliveryAttemptTime"] = _LatestDeliveryAttemptTime,
		["TimeLoggingStopped"] = _TimeLoggingStopped,
	}
	asserts.AssertGetTrailStatusResponse(t)
	return t
end

keys.InvalidTokenException = { nil }

function asserts.AssertInvalidTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidTokenException[k], "InvalidTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTokenException
-- <p>Reserved for future use.</p>
function M.InvalidTokenException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTokenException")
	local t = { 
	}
	asserts.AssertInvalidTokenException(t)
	return t
end

keys.InvalidTagParameterException = { nil }

function asserts.AssertInvalidTagParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTagParameterException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidTagParameterException[k], "InvalidTagParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTagParameterException
-- <p>This exception is thrown when the key or value specified for the tag does not match the regular expression <code>^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$</code>.</p>
function M.InvalidTagParameterException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTagParameterException")
	local t = { 
	}
	asserts.AssertInvalidTagParameterException(t)
	return t
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
-- @param _NextToken [NextToken] <p>The token to use to get the next page of results after a previous API call. If the token does not appear, there are no more results to return. The token must be passed in with the same parameters as the previous call. For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should include those same parameters.</p>
-- @param _Events [EventsList] <p>A list of events returned based on the lookup attributes specified and the CloudTrail event. The events list is sorted by time. The most recent event is listed first.</p>
function M.LookupEventsResponse(_NextToken, _Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LookupEventsResponse")
	local t = { 
		["NextToken"] = _NextToken,
		["Events"] = _Events,
	}
	asserts.AssertLookupEventsResponse(t)
	return t
end

keys.InvalidMaxResultsException = { nil }

function asserts.AssertInvalidMaxResultsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidMaxResultsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidMaxResultsException[k], "InvalidMaxResultsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidMaxResultsException
-- <p>This exception is thrown if the limit specified is invalid.</p>
function M.InvalidMaxResultsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidMaxResultsException")
	local t = { 
	}
	asserts.AssertInvalidMaxResultsException(t)
	return t
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
-- <p>The Amazon S3 objects that you specify in your event selectors for your trail to log data events. Data events are object-level API operations that access S3 objects, such as <code>GetObject</code>, <code>DeleteObject</code>, and <code>PutObject</code>. You can specify up to 250 S3 buckets and object prefixes for a trail. </p> <p>Example</p> <ol> <li> <p>You create an event selector for a trail and specify an S3 bucket and an empty prefix, such as <code>arn:aws:s3:::bucket-1/</code>.</p> </li> <li> <p>You upload an image file to <code>bucket-1</code>.</p> </li> <li> <p>The <code>PutObject</code> API operation occurs on an object in the S3 bucket that you specified in the event selector. The trail processes and logs the event.</p> </li> <li> <p>You upload another image file to a different S3 bucket named <code>arn:aws:s3:::bucket-2</code>.</p> </li> <li> <p>The event occurs on an object in an S3 bucket that you didn't specify in the event selector. The trail doesn’t log the event.</p> </li> </ol>
-- @param _Values [DataResourceValues] <p>A list of ARN-like strings for the specified S3 objects.</p> <p>To log data events for all objects in an S3 bucket, specify the bucket and an empty object prefix such as <code>arn:aws:s3:::bucket-1/</code>. The trail logs data events for all objects in this S3 bucket.</p> <p>To log data events for specific objects, specify the S3 bucket and object prefix such as <code>arn:aws:s3:::bucket-1/example-images</code>. The trail logs data events for objects in this S3 bucket that match the prefix.</p>
-- @param _Type [String] <p>The resource type in which you want to log data events. You can specify only the following value: <code>AWS::S3::Object</code>.</p>
function M.DataResource(_Values, _Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DataResource")
	local t = { 
		["Values"] = _Values,
		["Type"] = _Type,
	}
	asserts.AssertDataResource(t)
	return t
end

keys.KmsException = { nil }

function asserts.AssertKmsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KmsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.KmsException[k], "KmsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KmsException
-- <p>This exception is thrown when there is an issue with the specified KMS key and the trail can’t be updated.</p>
function M.KmsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating KmsException")
	local t = { 
	}
	asserts.AssertKmsException(t)
	return t
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
-- @param _EndTime [Date] <p>Optionally specifies, in UTC, the end of the time range to look up public keys for CloudTrail digest files. If not specified, the current time is used.</p>
-- @param _NextToken [String] <p>Reserved for future use.</p>
-- @param _StartTime [Date] <p>Optionally specifies, in UTC, the start of the time range to look up public keys for CloudTrail digest files. If not specified, the current time is used, and the current public key is returned.</p>
function M.ListPublicKeysRequest(_EndTime, _NextToken, _StartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPublicKeysRequest")
	local t = { 
		["EndTime"] = _EndTime,
		["NextToken"] = _NextToken,
		["StartTime"] = _StartTime,
	}
	asserts.AssertListPublicKeysRequest(t)
	return t
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
-- @param _TrailName [String] <p>Specifies the name of the trail or trail ARN. If you specify a trail name, the string must meet the following requirements:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p> </li> <li> <p>Start with a letter or number, and end with a letter or number</p> </li> <li> <p>Be between 3 and 128 characters</p> </li> <li> <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code> and <code>my--namespace</code> are invalid.</p> </li> <li> <p>Not be in IP address format (for example, 192.168.5.4)</p> </li> </ul> <p>If you specify a trail ARN, it must be in the format:</p> <p> <code>arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail</code> </p>
-- Required parameter: TrailName
function M.GetEventSelectorsRequest(_TrailName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEventSelectorsRequest")
	local t = { 
		["TrailName"] = _TrailName,
	}
	asserts.AssertGetEventSelectorsRequest(t)
	return t
end

keys.TagsLimitExceededException = { nil }

function asserts.AssertTagsLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagsLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TagsLimitExceededException[k], "TagsLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagsLimitExceededException
-- <p>The number of tags per trail has exceeded the permitted amount. Currently, the limit is 50.</p>
function M.TagsLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagsLimitExceededException")
	local t = { 
	}
	asserts.AssertTagsLimitExceededException(t)
	return t
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
-- @param _EventSelectors [EventSelectors] <p>The event selectors that are configured for the trail.</p>
-- @param _TrailARN [String] <p>The specified trail ARN that has the event selectors.</p>
function M.GetEventSelectorsResponse(_EventSelectors, _TrailARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEventSelectorsResponse")
	local t = { 
		["EventSelectors"] = _EventSelectors,
		["TrailARN"] = _TrailARN,
	}
	asserts.AssertGetEventSelectorsResponse(t)
	return t
end

keys.InsufficientSnsTopicPolicyException = { nil }

function asserts.AssertInsufficientSnsTopicPolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientSnsTopicPolicyException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InsufficientSnsTopicPolicyException[k], "InsufficientSnsTopicPolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientSnsTopicPolicyException
-- <p>This exception is thrown when the policy on the SNS topic is not sufficient.</p>
function M.InsufficientSnsTopicPolicyException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientSnsTopicPolicyException")
	local t = { 
	}
	asserts.AssertInsufficientSnsTopicPolicyException(t)
	return t
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
-- @param _Name [String] <p>Specifies the name or the CloudTrail ARN of the trail for which CloudTrail logs AWS API calls. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail</code> </p>
-- Required parameter: Name
function M.StartLoggingRequest(_Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartLoggingRequest")
	local t = { 
		["Name"] = _Name,
	}
	asserts.AssertStartLoggingRequest(t)
	return t
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
-- @param _AttributeKey [LookupAttributeKey] <p>Specifies an attribute on which to filter the events returned.</p>
-- @param _AttributeValue [String] <p>Specifies a value for the specified AttributeKey.</p>
-- Required parameter: AttributeKey
-- Required parameter: AttributeValue
function M.LookupAttribute(_AttributeKey, _AttributeValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LookupAttribute")
	local t = { 
		["AttributeKey"] = _AttributeKey,
		["AttributeValue"] = _AttributeValue,
	}
	asserts.AssertLookupAttribute(t)
	return t
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
-- @param _ResourceType [String] <p>The type of a resource referenced by the event returned. When the resource type cannot be determined, null is returned. Some examples of resource types are: <b>Instance</b> for EC2, <b>Trail</b> for CloudTrail, <b>DBInstance</b> for RDS, and <b>AccessKey</b> for IAM. For a list of resource types supported for event lookup, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/lookup_supported_resourcetypes.html">Resource Types Supported for Event Lookup</a>.</p>
-- @param _ResourceName [String] <p>The name of the resource referenced by the event returned. These are user-created names whose values will depend on the environment. For example, the resource name might be "auto-scaling-test-group" for an Auto Scaling Group or "i-1234567" for an EC2 Instance.</p>
function M.Resource(_ResourceType, _ResourceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Resource")
	local t = { 
		["ResourceType"] = _ResourceType,
		["ResourceName"] = _ResourceName,
	}
	asserts.AssertResource(t)
	return t
end

keys.KmsKeyNotFoundException = { nil }

function asserts.AssertKmsKeyNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KmsKeyNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.KmsKeyNotFoundException[k], "KmsKeyNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KmsKeyNotFoundException
-- <p>This exception is thrown when the KMS key does not exist, or when the S3 bucket and the KMS key are not in the same region.</p>
function M.KmsKeyNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating KmsKeyNotFoundException")
	local t = { 
	}
	asserts.AssertKmsKeyNotFoundException(t)
	return t
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
-- @param _EventSelectors [EventSelectors] <p>Specifies the settings for your event selectors. You can configure up to five event selectors for a trail.</p>
-- @param _TrailName [String] <p>Specifies the name of the trail or trail ARN. If you specify a trail name, the string must meet the following requirements:</p> <ul> <li> <p>Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)</p> </li> <li> <p>Start with a letter or number, and end with a letter or number</p> </li> <li> <p>Be between 3 and 128 characters</p> </li> <li> <p>Have no adjacent periods, underscores or dashes. Names like <code>my-_namespace</code> and <code>my--namespace</code> are invalid.</p> </li> <li> <p>Not be in IP address format (for example, 192.168.5.4)</p> </li> </ul> <p>If you specify a trail ARN, it must be in the format:</p> <p> <code>arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail</code> </p>
-- Required parameter: TrailName
-- Required parameter: EventSelectors
function M.PutEventSelectorsRequest(_EventSelectors, _TrailName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutEventSelectorsRequest")
	local t = { 
		["EventSelectors"] = _EventSelectors,
		["TrailName"] = _TrailName,
	}
	asserts.AssertPutEventSelectorsRequest(t)
	return t
end

keys.InvalidHomeRegionException = { nil }

function asserts.AssertInvalidHomeRegionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidHomeRegionException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidHomeRegionException[k], "InvalidHomeRegionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidHomeRegionException
-- <p>This exception is thrown when an operation is called on a trail from a region other than the region in which the trail was created.</p>
function M.InvalidHomeRegionException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidHomeRegionException")
	local t = { 
	}
	asserts.AssertInvalidHomeRegionException(t)
	return t
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
-- @param _ResourceId [String] <p>Specifies the ARN of the trail to which one or more tags will be added. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail</code> </p>
-- @param _TagsList [TagsList] <p>Contains a list of CloudTrail tags, up to a limit of 50</p>
-- Required parameter: ResourceId
function M.AddTagsRequest(_ResourceId, _TagsList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsRequest")
	local t = { 
		["ResourceId"] = _ResourceId,
		["TagsList"] = _TagsList,
	}
	asserts.AssertAddTagsRequest(t)
	return t
end

keys.InvalidS3PrefixException = { nil }

function asserts.AssertInvalidS3PrefixException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidS3PrefixException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidS3PrefixException[k], "InvalidS3PrefixException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidS3PrefixException
-- <p>This exception is thrown when the provided S3 prefix is not valid.</p>
function M.InvalidS3PrefixException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidS3PrefixException")
	local t = { 
	}
	asserts.AssertInvalidS3PrefixException(t)
	return t
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
function M.RemoveTagsResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsResponse")
	local t = { 
	}
	asserts.AssertRemoveTagsResponse(t)
	return t
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
-- @param _ResourceTagList [ResourceTagList] <p>A list of resource tags.</p>
-- @param _NextToken [String] <p>Reserved for future use.</p>
function M.ListTagsResponse(_ResourceTagList, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsResponse")
	local t = { 
		["ResourceTagList"] = _ResourceTagList,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListTagsResponse(t)
	return t
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
-- @param _ValidityStartTime [Date] <p>The starting time of validity of the public key.</p>
-- @param _ValidityEndTime [Date] <p>The ending time of validity of the public key.</p>
-- @param _Value [ByteBuffer] <p>The DER encoded public key value in PKCS#1 format.</p>
-- @param _Fingerprint [String] <p>The fingerprint of the public key.</p>
function M.PublicKey(_ValidityStartTime, _ValidityEndTime, _Value, _Fingerprint, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PublicKey")
	local t = { 
		["ValidityStartTime"] = _ValidityStartTime,
		["ValidityEndTime"] = _ValidityEndTime,
		["Value"] = _Value,
		["Fingerprint"] = _Fingerprint,
	}
	asserts.AssertPublicKey(t)
	return t
end

keys.InvalidKmsKeyIdException = { nil }

function asserts.AssertInvalidKmsKeyIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidKmsKeyIdException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.InvalidKmsKeyIdException[k], "InvalidKmsKeyIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidKmsKeyIdException
-- <p>This exception is thrown when the KMS key ARN is invalid.</p>
function M.InvalidKmsKeyIdException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidKmsKeyIdException")
	local t = { 
	}
	asserts.AssertInvalidKmsKeyIdException(t)
	return t
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
-- @param _IncludeGlobalServiceEvents [Boolean] <p>Specifies whether the trail is publishing events from global services such as IAM to the log files.</p>
-- @param _Name [String] <p>Specifies the name of the trail.</p>
-- @param _S3KeyPrefix [String] <p>Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html">Finding Your CloudTrail Log Files</a>.</p>
-- @param _TrailARN [String] <p>Specifies the ARN of the trail that was created. The format of a trail ARN is:</p> <p> <code>arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail</code> </p>
-- @param _LogFileValidationEnabled [Boolean] <p>Specifies whether log file integrity validation is enabled.</p>
-- @param _SnsTopicARN [String] <p>Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered. The format of a topic ARN is:</p> <p> <code>arn:aws:sns:us-east-1:123456789012:MyTopic</code> </p>
-- @param _IsMultiRegionTrail [Boolean] <p>Specifies whether the trail exists in one region or in all regions.</p>
-- @param _S3BucketName [String] <p>Specifies the name of the Amazon S3 bucket designated for publishing log files.</p>
-- @param _CloudWatchLogsRoleArn [String] <p>Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.</p>
-- @param _KmsKeyId [String] <p>Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the format:</p> <p> <code>arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012</code> </p>
-- @param _CloudWatchLogsLogGroupArn [String] <p>Specifies the Amazon Resource Name (ARN) of the log group to which CloudTrail logs will be delivered.</p>
-- @param _SnsTopicName [String] <p>This field is deprecated. Use SnsTopicARN.</p>
function M.CreateTrailResponse(_IncludeGlobalServiceEvents, _Name, _S3KeyPrefix, _TrailARN, _LogFileValidationEnabled, _SnsTopicARN, _IsMultiRegionTrail, _S3BucketName, _CloudWatchLogsRoleArn, _KmsKeyId, _CloudWatchLogsLogGroupArn, _SnsTopicName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTrailResponse")
	local t = { 
		["IncludeGlobalServiceEvents"] = _IncludeGlobalServiceEvents,
		["Name"] = _Name,
		["S3KeyPrefix"] = _S3KeyPrefix,
		["TrailARN"] = _TrailARN,
		["LogFileValidationEnabled"] = _LogFileValidationEnabled,
		["SnsTopicARN"] = _SnsTopicARN,
		["IsMultiRegionTrail"] = _IsMultiRegionTrail,
		["S3BucketName"] = _S3BucketName,
		["CloudWatchLogsRoleArn"] = _CloudWatchLogsRoleArn,
		["KmsKeyId"] = _KmsKeyId,
		["CloudWatchLogsLogGroupArn"] = _CloudWatchLogsLogGroupArn,
		["SnsTopicName"] = _SnsTopicName,
	}
	asserts.AssertCreateTrailResponse(t)
	return t
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
	assert(type(string) == "string", "Expected ByteBuffer to be of type 'string'")
end

function M.ByteBuffer(blob)
	asserts.AssertByteBuffer(blob)
	return blob
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


local headers = require "aws-sdk.core.headers"
local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_handlers = require "aws-sdk.core.request_handlers"

local uri = ""


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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- DeleteTrail
-- @param DeleteTrailRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteTrailAsync(DeleteTrailRequest, cb)
	assert(DeleteTrailRequest, "You must provide a DeleteTrailRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.DeleteTrail",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteTrailRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- RemoveTags
-- @param RemoveTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.RemoveTagsAsync(RemoveTagsRequest, cb)
	assert(RemoveTagsRequest, "You must provide a RemoveTagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.RemoveTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", RemoveTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetEventSelectors
-- @param GetEventSelectorsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetEventSelectorsAsync(GetEventSelectorsRequest, cb)
	assert(GetEventSelectorsRequest, "You must provide a GetEventSelectorsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.GetEventSelectors",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetEventSelectorsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- AddTags
-- @param AddTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.AddTagsAsync(AddTagsRequest, cb)
	assert(AddTagsRequest, "You must provide a AddTagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.AddTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", AddTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartLogging
-- @param StartLoggingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StartLoggingAsync(StartLoggingRequest, cb)
	assert(StartLoggingRequest, "You must provide a StartLoggingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.StartLogging",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartLoggingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetTrailStatus
-- @param GetTrailStatusRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetTrailStatusAsync(GetTrailStatusRequest, cb)
	assert(GetTrailStatusRequest, "You must provide a GetTrailStatusRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.GetTrailStatus",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetTrailStatusRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListPublicKeys
-- @param ListPublicKeysRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListPublicKeysAsync(ListPublicKeysRequest, cb)
	assert(ListPublicKeysRequest, "You must provide a ListPublicKeysRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.ListPublicKeys",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListPublicKeysRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopLogging
-- @param StopLoggingRequest
-- @param cb Callback function accepting two args: response, error_message
function M.StopLoggingAsync(StopLoggingRequest, cb)
	assert(StopLoggingRequest, "You must provide a StopLoggingRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.StopLogging",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopLoggingRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutEventSelectors
-- @param PutEventSelectorsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutEventSelectorsAsync(PutEventSelectorsRequest, cb)
	assert(PutEventSelectorsRequest, "You must provide a PutEventSelectorsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.PutEventSelectors",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutEventSelectorsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DescribeTrails
-- @param DescribeTrailsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeTrailsAsync(DescribeTrailsRequest, cb)
	assert(DescribeTrailsRequest, "You must provide a DescribeTrailsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.DescribeTrails",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeTrailsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateTrail
-- @param CreateTrailRequest
-- @param cb Callback function accepting two args: response, error_message
function M.CreateTrailAsync(CreateTrailRequest, cb)
	assert(CreateTrailRequest, "You must provide a CreateTrailRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.CreateTrail",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateTrailRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- UpdateTrail
-- @param UpdateTrailRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateTrailAsync(UpdateTrailRequest, cb)
	assert(UpdateTrailRequest, "You must provide a UpdateTrailRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.UpdateTrail",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", UpdateTrailRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListTags
-- @param ListTagsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.ListTagsAsync(ListTagsRequest, cb)
	assert(ListTagsRequest, "You must provide a ListTagsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.ListTags",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListTagsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- LookupEvents
-- @param LookupEventsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.LookupEventsAsync(LookupEventsRequest, cb)
	assert(LookupEventsRequest, "You must provide a LookupEventsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.LookupEvents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", LookupEventsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
