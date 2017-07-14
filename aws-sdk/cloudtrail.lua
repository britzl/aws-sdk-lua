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

local StopLoggingRequest_keys = { "Name" = true, nil }

function M.AssertStopLoggingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopLoggingRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(StopLoggingRequest_keys[k], "StopLoggingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopLoggingRequest
-- &lt;p&gt;Passes the request to CloudTrail to stop logging AWS API calls for the specified account.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;Specifies the name or the CloudTrail ARN of the trail for which CloudTrail will stop logging AWS API calls. The format of a trail ARN is:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail&lt;/code&gt; &lt;/p&gt;
-- Required parameter: Name
function M.StopLoggingRequest(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopLoggingRequest")
	local t = { 
		["Name"] = Name,
	}
	M.AssertStopLoggingRequest(t)
	return t
end

local UnsupportedOperationException_keys = { nil }

function M.AssertUnsupportedOperationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedOperationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(UnsupportedOperationException_keys[k], "UnsupportedOperationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedOperationException
-- &lt;p&gt;This exception is thrown when the requested operation is not supported.&lt;/p&gt;
function M.UnsupportedOperationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedOperationException")
	local t = { 
	}
	M.AssertUnsupportedOperationException(t)
	return t
end

local AddTagsResponse_keys = { nil }

function M.AssertAddTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(AddTagsResponse_keys[k], "AddTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsResponse
-- &lt;p&gt;Returns the objects or data listed below if successful. Otherwise, returns an error.&lt;/p&gt;
function M.AddTagsResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsResponse")
	local t = { 
	}
	M.AssertAddTagsResponse(t)
	return t
end

local ListTagsRequest_keys = { "ResourceIdList" = true, "NextToken" = true, nil }

function M.AssertListTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsRequest to be of type 'table'")
	assert(struct["ResourceIdList"], "Expected key ResourceIdList to exist in table")
	if struct["ResourceIdList"] then M.AssertResourceIdList(struct["ResourceIdList"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsRequest_keys[k], "ListTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsRequest
-- &lt;p&gt;Specifies a list of trail tags to return.&lt;/p&gt;
-- @param ResourceIdList [ResourceIdList] &lt;p&gt;Specifies a list of trail ARNs whose tags will be listed. The list has a limit of 20 ARNs. The format of a trail ARN is:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail&lt;/code&gt; &lt;/p&gt;
-- @param NextToken [String] &lt;p&gt;Reserved for future use.&lt;/p&gt;
-- Required parameter: ResourceIdList
function M.ListTagsRequest(ResourceIdList, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsRequest")
	local t = { 
		["ResourceIdList"] = ResourceIdList,
		["NextToken"] = NextToken,
	}
	M.AssertListTagsRequest(t)
	return t
end

local RemoveTagsRequest_keys = { "ResourceId" = true, "TagsList" = true, nil }

function M.AssertRemoveTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["ResourceId"] then M.AssertString(struct["ResourceId"]) end
	if struct["TagsList"] then M.AssertTagsList(struct["TagsList"]) end
	for k,_ in pairs(struct) do
		assert(RemoveTagsRequest_keys[k], "RemoveTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsRequest
-- &lt;p&gt;Specifies the tags to remove from a trail.&lt;/p&gt;
-- @param ResourceId [String] &lt;p&gt;Specifies the ARN of the trail from which tags should be removed. The format of a trail ARN is:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail&lt;/code&gt; &lt;/p&gt;
-- @param TagsList [TagsList] &lt;p&gt;Specifies a list of tags to be removed.&lt;/p&gt;
-- Required parameter: ResourceId
function M.RemoveTagsRequest(ResourceId, TagsList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsRequest")
	local t = { 
		["ResourceId"] = ResourceId,
		["TagsList"] = TagsList,
	}
	M.AssertRemoveTagsRequest(t)
	return t
end

local TrailNotProvidedException_keys = { nil }

function M.AssertTrailNotProvidedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrailNotProvidedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TrailNotProvidedException_keys[k], "TrailNotProvidedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrailNotProvidedException
-- &lt;p&gt;This exception is deprecated.&lt;/p&gt;
function M.TrailNotProvidedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrailNotProvidedException")
	local t = { 
	}
	M.AssertTrailNotProvidedException(t)
	return t
end

local DeleteTrailRequest_keys = { "Name" = true, nil }

function M.AssertDeleteTrailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTrailRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(DeleteTrailRequest_keys[k], "DeleteTrailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTrailRequest
-- &lt;p&gt;The request that specifies the name of a trail to delete.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;Specifies the name or the CloudTrail ARN of the trail to be deleted. The format of a trail ARN is: &lt;code&gt;arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail&lt;/code&gt; &lt;/p&gt;
-- Required parameter: Name
function M.DeleteTrailRequest(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTrailRequest")
	local t = { 
		["Name"] = Name,
	}
	M.AssertDeleteTrailRequest(t)
	return t
end

local InsufficientEncryptionPolicyException_keys = { nil }

function M.AssertInsufficientEncryptionPolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientEncryptionPolicyException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InsufficientEncryptionPolicyException_keys[k], "InsufficientEncryptionPolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientEncryptionPolicyException
-- &lt;p&gt;This exception is thrown when the policy on the S3 bucket or KMS key is not sufficient.&lt;/p&gt;
function M.InsufficientEncryptionPolicyException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientEncryptionPolicyException")
	local t = { 
	}
	M.AssertInsufficientEncryptionPolicyException(t)
	return t
end

local OperationNotPermittedException_keys = { nil }

function M.AssertOperationNotPermittedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OperationNotPermittedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(OperationNotPermittedException_keys[k], "OperationNotPermittedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OperationNotPermittedException
-- &lt;p&gt;This exception is thrown when the requested operation is not permitted.&lt;/p&gt;
function M.OperationNotPermittedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating OperationNotPermittedException")
	local t = { 
	}
	M.AssertOperationNotPermittedException(t)
	return t
end

local StartLoggingResponse_keys = { nil }

function M.AssertStartLoggingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartLoggingResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(StartLoggingResponse_keys[k], "StartLoggingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartLoggingResponse
-- &lt;p&gt;Returns the objects or data listed below if successful. Otherwise, returns an error.&lt;/p&gt;
function M.StartLoggingResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartLoggingResponse")
	local t = { 
	}
	M.AssertStartLoggingResponse(t)
	return t
end

local DescribeTrailsRequest_keys = { "trailNameList" = true, "includeShadowTrails" = true, nil }

function M.AssertDescribeTrailsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrailsRequest to be of type 'table'")
	if struct["trailNameList"] then M.AssertTrailNameList(struct["trailNameList"]) end
	if struct["includeShadowTrails"] then M.AssertBoolean(struct["includeShadowTrails"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTrailsRequest_keys[k], "DescribeTrailsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrailsRequest
-- &lt;p&gt;Returns information about the trail.&lt;/p&gt;
-- @param trailNameList [TrailNameList] &lt;p&gt;Specifies a list of trail names, trail ARNs, or both, of the trails to describe. The format of a trail ARN is:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail&lt;/code&gt; &lt;/p&gt; &lt;p&gt;If an empty list is specified, information for the trail in the current region is returned.&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;If an empty list is specified and &lt;code&gt;IncludeShadowTrails&lt;/code&gt; is false, then information for all trails in the current region is returned.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;If an empty list is specified and IncludeShadowTrails is null or true, then information for all trails in the current region and any associated shadow trails in other regions is returned.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;note&gt; &lt;p&gt;If one or more trail names are specified, information is returned only if the names match the names of trails belonging only to the current region. To return information about a trail in another region, you must specify its trail ARN.&lt;/p&gt; &lt;/note&gt;
-- @param includeShadowTrails [Boolean] &lt;p&gt;Specifies whether to include shadow trails in the response. A shadow trail is the replication in a region of a trail that was created in a different region. The default is true.&lt;/p&gt;
function M.DescribeTrailsRequest(trailNameList, includeShadowTrails, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrailsRequest")
	local t = { 
		["trailNameList"] = trailNameList,
		["includeShadowTrails"] = includeShadowTrails,
	}
	M.AssertDescribeTrailsRequest(t)
	return t
end

local GetTrailStatusRequest_keys = { "Name" = true, nil }

function M.AssertGetTrailStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTrailStatusRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(GetTrailStatusRequest_keys[k], "GetTrailStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTrailStatusRequest
-- &lt;p&gt;The name of a trail about which you want the current status.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;Specifies the name or the CloudTrail ARN of the trail for which you are requesting status. To get the status of a shadow trail (a replication of the trail in another region), you must specify its ARN. The format of a trail ARN is:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail&lt;/code&gt; &lt;/p&gt;
-- Required parameter: Name
function M.GetTrailStatusRequest(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTrailStatusRequest")
	local t = { 
		["Name"] = Name,
	}
	M.AssertGetTrailStatusRequest(t)
	return t
end

local MaximumNumberOfTrailsExceededException_keys = { nil }

function M.AssertMaximumNumberOfTrailsExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MaximumNumberOfTrailsExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(MaximumNumberOfTrailsExceededException_keys[k], "MaximumNumberOfTrailsExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MaximumNumberOfTrailsExceededException
-- &lt;p&gt;This exception is thrown when the maximum number of trails is reached.&lt;/p&gt;
function M.MaximumNumberOfTrailsExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating MaximumNumberOfTrailsExceededException")
	local t = { 
	}
	M.AssertMaximumNumberOfTrailsExceededException(t)
	return t
end

local ResourceTypeNotSupportedException_keys = { nil }

function M.AssertResourceTypeNotSupportedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceTypeNotSupportedException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(ResourceTypeNotSupportedException_keys[k], "ResourceTypeNotSupportedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceTypeNotSupportedException
-- &lt;p&gt;This exception is thrown when the specified resource type is not supported by CloudTrail.&lt;/p&gt;
function M.ResourceTypeNotSupportedException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceTypeNotSupportedException")
	local t = { 
	}
	M.AssertResourceTypeNotSupportedException(t)
	return t
end

local Trail_keys = { "IncludeGlobalServiceEvents" = true, "Name" = true, "S3KeyPrefix" = true, "TrailARN" = true, "LogFileValidationEnabled" = true, "SnsTopicARN" = true, "IsMultiRegionTrail" = true, "HasCustomEventSelectors" = true, "S3BucketName" = true, "CloudWatchLogsRoleArn" = true, "KmsKeyId" = true, "CloudWatchLogsLogGroupArn" = true, "SnsTopicName" = true, "HomeRegion" = true, nil }

function M.AssertTrail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Trail to be of type 'table'")
	if struct["IncludeGlobalServiceEvents"] then M.AssertBoolean(struct["IncludeGlobalServiceEvents"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["S3KeyPrefix"] then M.AssertString(struct["S3KeyPrefix"]) end
	if struct["TrailARN"] then M.AssertString(struct["TrailARN"]) end
	if struct["LogFileValidationEnabled"] then M.AssertBoolean(struct["LogFileValidationEnabled"]) end
	if struct["SnsTopicARN"] then M.AssertString(struct["SnsTopicARN"]) end
	if struct["IsMultiRegionTrail"] then M.AssertBoolean(struct["IsMultiRegionTrail"]) end
	if struct["HasCustomEventSelectors"] then M.AssertBoolean(struct["HasCustomEventSelectors"]) end
	if struct["S3BucketName"] then M.AssertString(struct["S3BucketName"]) end
	if struct["CloudWatchLogsRoleArn"] then M.AssertString(struct["CloudWatchLogsRoleArn"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["CloudWatchLogsLogGroupArn"] then M.AssertString(struct["CloudWatchLogsLogGroupArn"]) end
	if struct["SnsTopicName"] then M.AssertString(struct["SnsTopicName"]) end
	if struct["HomeRegion"] then M.AssertString(struct["HomeRegion"]) end
	for k,_ in pairs(struct) do
		assert(Trail_keys[k], "Trail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Trail
-- &lt;p&gt;The settings for a trail.&lt;/p&gt;
-- @param IncludeGlobalServiceEvents [Boolean] &lt;p&gt;Set to &lt;b&gt;True&lt;/b&gt; to include AWS API calls from AWS global services such as IAM. Otherwise, &lt;b&gt;False&lt;/b&gt;.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;Name of the trail set by calling &lt;a&gt;CreateTrail&lt;/a&gt;. The maximum length is 128 characters.&lt;/p&gt;
-- @param S3KeyPrefix [String] &lt;p&gt;Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html&quot;&gt;Finding Your CloudTrail Log Files&lt;/a&gt;.The maximum length is 200 characters.&lt;/p&gt;
-- @param TrailARN [String] &lt;p&gt;Specifies the ARN of the trail. The format of a trail ARN is:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail&lt;/code&gt; &lt;/p&gt;
-- @param LogFileValidationEnabled [Boolean] &lt;p&gt;Specifies whether log file validation is enabled.&lt;/p&gt;
-- @param SnsTopicARN [String] &lt;p&gt;Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered. The format of a topic ARN is:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:sns:us-east-1:123456789012:MyTopic&lt;/code&gt; &lt;/p&gt;
-- @param IsMultiRegionTrail [Boolean] &lt;p&gt;Specifies whether the trail belongs only to one region or exists in all regions.&lt;/p&gt;
-- @param HasCustomEventSelectors [Boolean] &lt;p&gt;Specifies if the trail has custom event selectors.&lt;/p&gt;
-- @param S3BucketName [String] &lt;p&gt;Name of the Amazon S3 bucket into which CloudTrail delivers your trail files. See &lt;a href=&quot;http://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html&quot;&gt;Amazon S3 Bucket Naming Requirements&lt;/a&gt;.&lt;/p&gt;
-- @param CloudWatchLogsRoleArn [String] &lt;p&gt;Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.&lt;/p&gt;
-- @param KmsKeyId [String] &lt;p&gt;Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the format:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012&lt;/code&gt; &lt;/p&gt;
-- @param CloudWatchLogsLogGroupArn [String] &lt;p&gt;Specifies an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered.&lt;/p&gt;
-- @param SnsTopicName [String] &lt;p&gt;This field is deprecated. Use SnsTopicARN.&lt;/p&gt;
-- @param HomeRegion [String] &lt;p&gt;The region in which the trail was created.&lt;/p&gt;
function M.Trail(IncludeGlobalServiceEvents, Name, S3KeyPrefix, TrailARN, LogFileValidationEnabled, SnsTopicARN, IsMultiRegionTrail, HasCustomEventSelectors, S3BucketName, CloudWatchLogsRoleArn, KmsKeyId, CloudWatchLogsLogGroupArn, SnsTopicName, HomeRegion, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Trail")
	local t = { 
		["IncludeGlobalServiceEvents"] = IncludeGlobalServiceEvents,
		["Name"] = Name,
		["S3KeyPrefix"] = S3KeyPrefix,
		["TrailARN"] = TrailARN,
		["LogFileValidationEnabled"] = LogFileValidationEnabled,
		["SnsTopicARN"] = SnsTopicARN,
		["IsMultiRegionTrail"] = IsMultiRegionTrail,
		["HasCustomEventSelectors"] = HasCustomEventSelectors,
		["S3BucketName"] = S3BucketName,
		["CloudWatchLogsRoleArn"] = CloudWatchLogsRoleArn,
		["KmsKeyId"] = KmsKeyId,
		["CloudWatchLogsLogGroupArn"] = CloudWatchLogsLogGroupArn,
		["SnsTopicName"] = SnsTopicName,
		["HomeRegion"] = HomeRegion,
	}
	M.AssertTrail(t)
	return t
end

local KmsKeyDisabledException_keys = { nil }

function M.AssertKmsKeyDisabledException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KmsKeyDisabledException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(KmsKeyDisabledException_keys[k], "KmsKeyDisabledException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KmsKeyDisabledException
-- &lt;p&gt;This exception is deprecated.&lt;/p&gt;
function M.KmsKeyDisabledException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating KmsKeyDisabledException")
	local t = { 
	}
	M.AssertKmsKeyDisabledException(t)
	return t
end

local InvalidEventSelectorsException_keys = { nil }

function M.AssertInvalidEventSelectorsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidEventSelectorsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidEventSelectorsException_keys[k], "InvalidEventSelectorsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidEventSelectorsException
-- &lt;p&gt;This exception is thrown when the &lt;code&gt;PutEventSelectors&lt;/code&gt; operation is called with an invalid number of event selectors, data resources, or an invalid value for a parameter:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Specify a valid number of event selectors (1 to 5) for a trail.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Specify a valid number of data resources (1 to 250) for an event selector.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Specify a valid value for a parameter. For example, specifying the &lt;code&gt;ReadWriteType&lt;/code&gt; parameter with a value of &lt;code&gt;read-only&lt;/code&gt; is invalid.&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.InvalidEventSelectorsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidEventSelectorsException")
	local t = { 
	}
	M.AssertInvalidEventSelectorsException(t)
	return t
end

local Tag_keys = { "Value" = true, "Key" = true, nil }

function M.AssertTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Tag to be of type 'table'")
	assert(struct["Key"], "Expected key Key to exist in table")
	if struct["Value"] then M.AssertString(struct["Value"]) end
	if struct["Key"] then M.AssertString(struct["Key"]) end
	for k,_ in pairs(struct) do
		assert(Tag_keys[k], "Tag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Tag
-- &lt;p&gt;A custom key-value pair associated with a resource such as a CloudTrail trail.&lt;/p&gt;
-- @param Value [String] &lt;p&gt;The value in a key-value pair of a tag. The value must be no longer than 256 Unicode characters.&lt;/p&gt;
-- @param Key [String] &lt;p&gt;The key in a key-value pair. The key must be must be no longer than 128 Unicode characters. The key must be unique for the resource to which it applies.&lt;/p&gt;
-- Required parameter: Key
function M.Tag(Value, Key, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Tag")
	local t = { 
		["Value"] = Value,
		["Key"] = Key,
	}
	M.AssertTag(t)
	return t
end

local Event_keys = { "EventId" = true, "Username" = true, "EventTime" = true, "CloudTrailEvent" = true, "EventName" = true, "EventSource" = true, "Resources" = true, nil }

function M.AssertEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Event to be of type 'table'")
	if struct["EventId"] then M.AssertString(struct["EventId"]) end
	if struct["Username"] then M.AssertString(struct["Username"]) end
	if struct["EventTime"] then M.AssertDate(struct["EventTime"]) end
	if struct["CloudTrailEvent"] then M.AssertString(struct["CloudTrailEvent"]) end
	if struct["EventName"] then M.AssertString(struct["EventName"]) end
	if struct["EventSource"] then M.AssertString(struct["EventSource"]) end
	if struct["Resources"] then M.AssertResourceList(struct["Resources"]) end
	for k,_ in pairs(struct) do
		assert(Event_keys[k], "Event contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Event
-- &lt;p&gt;Contains information about an event that was returned by a lookup request. The result includes a representation of a CloudTrail event.&lt;/p&gt;
-- @param EventId [String] &lt;p&gt;The CloudTrail ID of the event returned.&lt;/p&gt;
-- @param Username [String] &lt;p&gt;A user name or role name of the requester that called the API in the event returned.&lt;/p&gt;
-- @param EventTime [Date] &lt;p&gt;The date and time of the event returned.&lt;/p&gt;
-- @param CloudTrailEvent [String] &lt;p&gt;A JSON string that contains a representation of the event returned.&lt;/p&gt;
-- @param EventName [String] &lt;p&gt;The name of the event returned.&lt;/p&gt;
-- @param EventSource [String] &lt;p&gt;The AWS service that the request was made to.&lt;/p&gt;
-- @param Resources [ResourceList] &lt;p&gt;A list of resources referenced by the event returned.&lt;/p&gt;
function M.Event(EventId, Username, EventTime, CloudTrailEvent, EventName, EventSource, Resources, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Event")
	local t = { 
		["EventId"] = EventId,
		["Username"] = Username,
		["EventTime"] = EventTime,
		["CloudTrailEvent"] = CloudTrailEvent,
		["EventName"] = EventName,
		["EventSource"] = EventSource,
		["Resources"] = Resources,
	}
	M.AssertEvent(t)
	return t
end

local TrailAlreadyExistsException_keys = { nil }

function M.AssertTrailAlreadyExistsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrailAlreadyExistsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TrailAlreadyExistsException_keys[k], "TrailAlreadyExistsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrailAlreadyExistsException
-- &lt;p&gt;This exception is thrown when the specified trail already exists.&lt;/p&gt;
function M.TrailAlreadyExistsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrailAlreadyExistsException")
	local t = { 
	}
	M.AssertTrailAlreadyExistsException(t)
	return t
end

local CloudTrailARNInvalidException_keys = { nil }

function M.AssertCloudTrailARNInvalidException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudTrailARNInvalidException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CloudTrailARNInvalidException_keys[k], "CloudTrailARNInvalidException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudTrailARNInvalidException
-- &lt;p&gt;This exception is thrown when an operation is called with an invalid trail ARN. The format of a trail ARN is:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail&lt;/code&gt; &lt;/p&gt;
function M.CloudTrailARNInvalidException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudTrailARNInvalidException")
	local t = { 
	}
	M.AssertCloudTrailARNInvalidException(t)
	return t
end

local InvalidNextTokenException_keys = { nil }

function M.AssertInvalidNextTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidNextTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidNextTokenException_keys[k], "InvalidNextTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidNextTokenException
-- &lt;p&gt;Invalid token or token that was previously used in a request with different parameters. This exception is thrown if the token is invalid.&lt;/p&gt;
function M.InvalidNextTokenException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidNextTokenException")
	local t = { 
	}
	M.AssertInvalidNextTokenException(t)
	return t
end

local CreateTrailRequest_keys = { "IncludeGlobalServiceEvents" = true, "Name" = true, "S3KeyPrefix" = true, "KmsKeyId" = true, "IsMultiRegionTrail" = true, "S3BucketName" = true, "CloudWatchLogsRoleArn" = true, "CloudWatchLogsLogGroupArn" = true, "SnsTopicName" = true, "EnableLogFileValidation" = true, nil }

function M.AssertCreateTrailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrailRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["S3BucketName"], "Expected key S3BucketName to exist in table")
	if struct["IncludeGlobalServiceEvents"] then M.AssertBoolean(struct["IncludeGlobalServiceEvents"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["S3KeyPrefix"] then M.AssertString(struct["S3KeyPrefix"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["IsMultiRegionTrail"] then M.AssertBoolean(struct["IsMultiRegionTrail"]) end
	if struct["S3BucketName"] then M.AssertString(struct["S3BucketName"]) end
	if struct["CloudWatchLogsRoleArn"] then M.AssertString(struct["CloudWatchLogsRoleArn"]) end
	if struct["CloudWatchLogsLogGroupArn"] then M.AssertString(struct["CloudWatchLogsLogGroupArn"]) end
	if struct["SnsTopicName"] then M.AssertString(struct["SnsTopicName"]) end
	if struct["EnableLogFileValidation"] then M.AssertBoolean(struct["EnableLogFileValidation"]) end
	for k,_ in pairs(struct) do
		assert(CreateTrailRequest_keys[k], "CreateTrailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrailRequest
-- &lt;p&gt;Specifies the settings for each trail.&lt;/p&gt;
-- @param IncludeGlobalServiceEvents [Boolean] &lt;p&gt;Specifies whether the trail is publishing events from global services such as IAM to the log files.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;Specifies the name of the trail. The name must meet the following requirements:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Start with a letter or number, and end with a letter or number&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Be between 3 and 128 characters&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Have no adjacent periods, underscores or dashes. Names like &lt;code&gt;my-_namespace&lt;/code&gt; and &lt;code&gt;my--namespace&lt;/code&gt; are invalid.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Not be in IP address format (for example, 192.168.5.4)&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param S3KeyPrefix [String] &lt;p&gt;Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html&quot;&gt;Finding Your CloudTrail Log Files&lt;/a&gt;. The maximum length is 200 characters.&lt;/p&gt;
-- @param KmsKeyId [String] &lt;p&gt;Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by &quot;alias/&quot;, a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.&lt;/p&gt; &lt;p&gt;Examples:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;alias/MyAliasName&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;arn:aws:kms:us-east-1:123456789012:alias/MyAliasName&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param IsMultiRegionTrail [Boolean] &lt;p&gt;Specifies whether the trail is created in the current region or in all regions. The default is false.&lt;/p&gt;
-- @param S3BucketName [String] &lt;p&gt;Specifies the name of the Amazon S3 bucket designated for publishing log files. See &lt;a href=&quot;http://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html&quot;&gt;Amazon S3 Bucket Naming Requirements&lt;/a&gt;.&lt;/p&gt;
-- @param CloudWatchLogsRoleArn [String] &lt;p&gt;Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.&lt;/p&gt;
-- @param CloudWatchLogsLogGroupArn [String] &lt;p&gt;Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered. Not required unless you specify CloudWatchLogsRoleArn.&lt;/p&gt;
-- @param SnsTopicName [String] &lt;p&gt;Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.&lt;/p&gt;
-- @param EnableLogFileValidation [Boolean] &lt;p&gt;Specifies whether log file integrity validation is enabled. The default is false.&lt;/p&gt; &lt;note&gt; &lt;p&gt;When you disable log file integrity validation, the chain of digest files is broken after one hour. CloudTrail will not create digest files for log files that were delivered during a period in which log file integrity validation was disabled. For example, if you enable log file integrity validation at noon on January 1, disable it at noon on January 2, and re-enable it at noon on January 10, digest files will not be created for the log files delivered from noon on January 2 to noon on January 10. The same applies whenever you stop CloudTrail logging or delete a trail.&lt;/p&gt; &lt;/note&gt;
-- Required parameter: Name
-- Required parameter: S3BucketName
function M.CreateTrailRequest(IncludeGlobalServiceEvents, Name, S3KeyPrefix, KmsKeyId, IsMultiRegionTrail, S3BucketName, CloudWatchLogsRoleArn, CloudWatchLogsLogGroupArn, SnsTopicName, EnableLogFileValidation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTrailRequest")
	local t = { 
		["IncludeGlobalServiceEvents"] = IncludeGlobalServiceEvents,
		["Name"] = Name,
		["S3KeyPrefix"] = S3KeyPrefix,
		["KmsKeyId"] = KmsKeyId,
		["IsMultiRegionTrail"] = IsMultiRegionTrail,
		["S3BucketName"] = S3BucketName,
		["CloudWatchLogsRoleArn"] = CloudWatchLogsRoleArn,
		["CloudWatchLogsLogGroupArn"] = CloudWatchLogsLogGroupArn,
		["SnsTopicName"] = SnsTopicName,
		["EnableLogFileValidation"] = EnableLogFileValidation,
	}
	M.AssertCreateTrailRequest(t)
	return t
end

local InvalidCloudWatchLogsLogGroupArnException_keys = { nil }

function M.AssertInvalidCloudWatchLogsLogGroupArnException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCloudWatchLogsLogGroupArnException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidCloudWatchLogsLogGroupArnException_keys[k], "InvalidCloudWatchLogsLogGroupArnException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCloudWatchLogsLogGroupArnException
-- &lt;p&gt;This exception is thrown when the provided CloudWatch log group is not valid.&lt;/p&gt;
function M.InvalidCloudWatchLogsLogGroupArnException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCloudWatchLogsLogGroupArnException")
	local t = { 
	}
	M.AssertInvalidCloudWatchLogsLogGroupArnException(t)
	return t
end

local PutEventSelectorsResponse_keys = { "EventSelectors" = true, "TrailARN" = true, nil }

function M.AssertPutEventSelectorsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEventSelectorsResponse to be of type 'table'")
	if struct["EventSelectors"] then M.AssertEventSelectors(struct["EventSelectors"]) end
	if struct["TrailARN"] then M.AssertString(struct["TrailARN"]) end
	for k,_ in pairs(struct) do
		assert(PutEventSelectorsResponse_keys[k], "PutEventSelectorsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEventSelectorsResponse
--  
-- @param EventSelectors [EventSelectors] &lt;p&gt;Specifies the event selectors configured for your trail.&lt;/p&gt;
-- @param TrailARN [String] &lt;p&gt;Specifies the ARN of the trail that was updated with event selectors. The format of a trail ARN is:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail&lt;/code&gt; &lt;/p&gt;
function M.PutEventSelectorsResponse(EventSelectors, TrailARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutEventSelectorsResponse")
	local t = { 
		["EventSelectors"] = EventSelectors,
		["TrailARN"] = TrailARN,
	}
	M.AssertPutEventSelectorsResponse(t)
	return t
end

local InvalidParameterCombinationException_keys = { nil }

function M.AssertInvalidParameterCombinationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidParameterCombinationException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidParameterCombinationException_keys[k], "InvalidParameterCombinationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidParameterCombinationException
-- &lt;p&gt;This exception is thrown when the combination of parameters provided is not valid.&lt;/p&gt;
function M.InvalidParameterCombinationException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidParameterCombinationException")
	local t = { 
	}
	M.AssertInvalidParameterCombinationException(t)
	return t
end

local InvalidLookupAttributesException_keys = { nil }

function M.AssertInvalidLookupAttributesException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidLookupAttributesException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidLookupAttributesException_keys[k], "InvalidLookupAttributesException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidLookupAttributesException
-- &lt;p&gt;Occurs when an invalid lookup attribute is specified.&lt;/p&gt;
function M.InvalidLookupAttributesException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidLookupAttributesException")
	local t = { 
	}
	M.AssertInvalidLookupAttributesException(t)
	return t
end

local UpdateTrailResponse_keys = { "IncludeGlobalServiceEvents" = true, "Name" = true, "S3KeyPrefix" = true, "TrailARN" = true, "LogFileValidationEnabled" = true, "SnsTopicARN" = true, "IsMultiRegionTrail" = true, "S3BucketName" = true, "CloudWatchLogsRoleArn" = true, "KmsKeyId" = true, "CloudWatchLogsLogGroupArn" = true, "SnsTopicName" = true, nil }

function M.AssertUpdateTrailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTrailResponse to be of type 'table'")
	if struct["IncludeGlobalServiceEvents"] then M.AssertBoolean(struct["IncludeGlobalServiceEvents"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["S3KeyPrefix"] then M.AssertString(struct["S3KeyPrefix"]) end
	if struct["TrailARN"] then M.AssertString(struct["TrailARN"]) end
	if struct["LogFileValidationEnabled"] then M.AssertBoolean(struct["LogFileValidationEnabled"]) end
	if struct["SnsTopicARN"] then M.AssertString(struct["SnsTopicARN"]) end
	if struct["IsMultiRegionTrail"] then M.AssertBoolean(struct["IsMultiRegionTrail"]) end
	if struct["S3BucketName"] then M.AssertString(struct["S3BucketName"]) end
	if struct["CloudWatchLogsRoleArn"] then M.AssertString(struct["CloudWatchLogsRoleArn"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["CloudWatchLogsLogGroupArn"] then M.AssertString(struct["CloudWatchLogsLogGroupArn"]) end
	if struct["SnsTopicName"] then M.AssertString(struct["SnsTopicName"]) end
	for k,_ in pairs(struct) do
		assert(UpdateTrailResponse_keys[k], "UpdateTrailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTrailResponse
-- &lt;p&gt;Returns the objects or data listed below if successful. Otherwise, returns an error.&lt;/p&gt;
-- @param IncludeGlobalServiceEvents [Boolean] &lt;p&gt;Specifies whether the trail is publishing events from global services such as IAM to the log files.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;Specifies the name of the trail.&lt;/p&gt;
-- @param S3KeyPrefix [String] &lt;p&gt;Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html&quot;&gt;Finding Your CloudTrail Log Files&lt;/a&gt;.&lt;/p&gt;
-- @param TrailARN [String] &lt;p&gt;Specifies the ARN of the trail that was updated. The format of a trail ARN is:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail&lt;/code&gt; &lt;/p&gt;
-- @param LogFileValidationEnabled [Boolean] &lt;p&gt;Specifies whether log file integrity validation is enabled.&lt;/p&gt;
-- @param SnsTopicARN [String] &lt;p&gt;Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered. The format of a topic ARN is:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:sns:us-east-1:123456789012:MyTopic&lt;/code&gt; &lt;/p&gt;
-- @param IsMultiRegionTrail [Boolean] &lt;p&gt;Specifies whether the trail exists in one region or in all regions.&lt;/p&gt;
-- @param S3BucketName [String] &lt;p&gt;Specifies the name of the Amazon S3 bucket designated for publishing log files.&lt;/p&gt;
-- @param CloudWatchLogsRoleArn [String] &lt;p&gt;Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.&lt;/p&gt;
-- @param KmsKeyId [String] &lt;p&gt;Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the format:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012&lt;/code&gt; &lt;/p&gt;
-- @param CloudWatchLogsLogGroupArn [String] &lt;p&gt;Specifies the Amazon Resource Name (ARN) of the log group to which CloudTrail logs will be delivered.&lt;/p&gt;
-- @param SnsTopicName [String] &lt;p&gt;This field is deprecated. Use SnsTopicARN.&lt;/p&gt;
function M.UpdateTrailResponse(IncludeGlobalServiceEvents, Name, S3KeyPrefix, TrailARN, LogFileValidationEnabled, SnsTopicARN, IsMultiRegionTrail, S3BucketName, CloudWatchLogsRoleArn, KmsKeyId, CloudWatchLogsLogGroupArn, SnsTopicName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTrailResponse")
	local t = { 
		["IncludeGlobalServiceEvents"] = IncludeGlobalServiceEvents,
		["Name"] = Name,
		["S3KeyPrefix"] = S3KeyPrefix,
		["TrailARN"] = TrailARN,
		["LogFileValidationEnabled"] = LogFileValidationEnabled,
		["SnsTopicARN"] = SnsTopicARN,
		["IsMultiRegionTrail"] = IsMultiRegionTrail,
		["S3BucketName"] = S3BucketName,
		["CloudWatchLogsRoleArn"] = CloudWatchLogsRoleArn,
		["KmsKeyId"] = KmsKeyId,
		["CloudWatchLogsLogGroupArn"] = CloudWatchLogsLogGroupArn,
		["SnsTopicName"] = SnsTopicName,
	}
	M.AssertUpdateTrailResponse(t)
	return t
end

local InvalidSnsTopicNameException_keys = { nil }

function M.AssertInvalidSnsTopicNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidSnsTopicNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidSnsTopicNameException_keys[k], "InvalidSnsTopicNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidSnsTopicNameException
-- &lt;p&gt;This exception is thrown when the provided SNS topic name is not valid.&lt;/p&gt;
function M.InvalidSnsTopicNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidSnsTopicNameException")
	local t = { 
	}
	M.AssertInvalidSnsTopicNameException(t)
	return t
end

local LookupEventsRequest_keys = { "LookupAttributes" = true, "EndTime" = true, "NextToken" = true, "MaxResults" = true, "StartTime" = true, nil }

function M.AssertLookupEventsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LookupEventsRequest to be of type 'table'")
	if struct["LookupAttributes"] then M.AssertLookupAttributesList(struct["LookupAttributes"]) end
	if struct["EndTime"] then M.AssertDate(struct["EndTime"]) end
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	if struct["StartTime"] then M.AssertDate(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(LookupEventsRequest_keys[k], "LookupEventsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LookupEventsRequest
-- &lt;p&gt;Contains a request for LookupEvents.&lt;/p&gt;
-- @param LookupAttributes [LookupAttributesList] &lt;p&gt;Contains a list of lookup attributes. Currently the list can contain only one item.&lt;/p&gt;
-- @param EndTime [Date] &lt;p&gt;Specifies that only events that occur before or at the specified time are returned. If the specified end time is before the specified start time, an error is returned.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The token to use to get the next page of results after a previous API call. This token must be passed in with the same parameters that were specified in the the original call. For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should include those same parameters.&lt;/p&gt;
-- @param MaxResults [MaxResults] &lt;p&gt;The number of events to return. Possible values are 1 through 50. The default is 10.&lt;/p&gt;
-- @param StartTime [Date] &lt;p&gt;Specifies that only events that occur after or at the specified time are returned. If the specified start time is after the specified end time, an error is returned.&lt;/p&gt;
function M.LookupEventsRequest(LookupAttributes, EndTime, NextToken, MaxResults, StartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LookupEventsRequest")
	local t = { 
		["LookupAttributes"] = LookupAttributes,
		["EndTime"] = EndTime,
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
		["StartTime"] = StartTime,
	}
	M.AssertLookupEventsRequest(t)
	return t
end

local StopLoggingResponse_keys = { nil }

function M.AssertStopLoggingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopLoggingResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(StopLoggingResponse_keys[k], "StopLoggingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopLoggingResponse
-- &lt;p&gt;Returns the objects or data listed below if successful. Otherwise, returns an error.&lt;/p&gt;
function M.StopLoggingResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopLoggingResponse")
	local t = { 
	}
	M.AssertStopLoggingResponse(t)
	return t
end

local InvalidTimeRangeException_keys = { nil }

function M.AssertInvalidTimeRangeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTimeRangeException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidTimeRangeException_keys[k], "InvalidTimeRangeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTimeRangeException
-- &lt;p&gt;Occurs if the timestamp values are invalid. Either the start time occurs after the end time or the time range is outside the range of possible values.&lt;/p&gt;
function M.InvalidTimeRangeException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTimeRangeException")
	local t = { 
	}
	M.AssertInvalidTimeRangeException(t)
	return t
end

local TrailNotFoundException_keys = { nil }

function M.AssertTrailNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TrailNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TrailNotFoundException_keys[k], "TrailNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TrailNotFoundException
-- &lt;p&gt;This exception is thrown when the trail with the given name is not found.&lt;/p&gt;
function M.TrailNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TrailNotFoundException")
	local t = { 
	}
	M.AssertTrailNotFoundException(t)
	return t
end

local InvalidS3BucketNameException_keys = { nil }

function M.AssertInvalidS3BucketNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidS3BucketNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidS3BucketNameException_keys[k], "InvalidS3BucketNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidS3BucketNameException
-- &lt;p&gt;This exception is thrown when the provided S3 bucket name is not valid.&lt;/p&gt;
function M.InvalidS3BucketNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidS3BucketNameException")
	local t = { 
	}
	M.AssertInvalidS3BucketNameException(t)
	return t
end

local S3BucketDoesNotExistException_keys = { nil }

function M.AssertS3BucketDoesNotExistException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3BucketDoesNotExistException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(S3BucketDoesNotExistException_keys[k], "S3BucketDoesNotExistException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3BucketDoesNotExistException
-- &lt;p&gt;This exception is thrown when the specified S3 bucket does not exist.&lt;/p&gt;
function M.S3BucketDoesNotExistException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating S3BucketDoesNotExistException")
	local t = { 
	}
	M.AssertS3BucketDoesNotExistException(t)
	return t
end

local UpdateTrailRequest_keys = { "IncludeGlobalServiceEvents" = true, "Name" = true, "S3KeyPrefix" = true, "KmsKeyId" = true, "IsMultiRegionTrail" = true, "S3BucketName" = true, "CloudWatchLogsRoleArn" = true, "CloudWatchLogsLogGroupArn" = true, "SnsTopicName" = true, "EnableLogFileValidation" = true, nil }

function M.AssertUpdateTrailRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTrailRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["IncludeGlobalServiceEvents"] then M.AssertBoolean(struct["IncludeGlobalServiceEvents"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["S3KeyPrefix"] then M.AssertString(struct["S3KeyPrefix"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["IsMultiRegionTrail"] then M.AssertBoolean(struct["IsMultiRegionTrail"]) end
	if struct["S3BucketName"] then M.AssertString(struct["S3BucketName"]) end
	if struct["CloudWatchLogsRoleArn"] then M.AssertString(struct["CloudWatchLogsRoleArn"]) end
	if struct["CloudWatchLogsLogGroupArn"] then M.AssertString(struct["CloudWatchLogsLogGroupArn"]) end
	if struct["SnsTopicName"] then M.AssertString(struct["SnsTopicName"]) end
	if struct["EnableLogFileValidation"] then M.AssertBoolean(struct["EnableLogFileValidation"]) end
	for k,_ in pairs(struct) do
		assert(UpdateTrailRequest_keys[k], "UpdateTrailRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTrailRequest
-- &lt;p&gt;Specifies settings to update for the trail.&lt;/p&gt;
-- @param IncludeGlobalServiceEvents [Boolean] &lt;p&gt;Specifies whether the trail is publishing events from global services such as IAM to the log files.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;Specifies the name of the trail or trail ARN. If &lt;code&gt;Name&lt;/code&gt; is a trail name, the string must meet the following requirements:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Start with a letter or number, and end with a letter or number&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Be between 3 and 128 characters&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Have no adjacent periods, underscores or dashes. Names like &lt;code&gt;my-_namespace&lt;/code&gt; and &lt;code&gt;my--namespace&lt;/code&gt; are invalid.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Not be in IP address format (for example, 192.168.5.4)&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If &lt;code&gt;Name&lt;/code&gt; is a trail ARN, it must be in the format:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail&lt;/code&gt; &lt;/p&gt;
-- @param S3KeyPrefix [String] &lt;p&gt;Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html&quot;&gt;Finding Your CloudTrail Log Files&lt;/a&gt;. The maximum length is 200 characters.&lt;/p&gt;
-- @param KmsKeyId [String] &lt;p&gt;Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by &quot;alias/&quot;, a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.&lt;/p&gt; &lt;p&gt;Examples:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;alias/MyAliasName&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;arn:aws:kms:us-east-1:123456789012:alias/MyAliasName&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;12345678-1234-1234-1234-123456789012&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
-- @param IsMultiRegionTrail [Boolean] &lt;p&gt;Specifies whether the trail applies only to the current region or to all regions. The default is false. If the trail exists only in the current region and this value is set to true, shadow trails (replications of the trail) will be created in the other regions. If the trail exists in all regions and this value is set to false, the trail will remain in the region where it was created, and its shadow trails in other regions will be deleted.&lt;/p&gt;
-- @param S3BucketName [String] &lt;p&gt;Specifies the name of the Amazon S3 bucket designated for publishing log files. See &lt;a href=&quot;http://docs.aws.amazon.com/awscloudtrail/latest/userguide/create_trail_naming_policy.html&quot;&gt;Amazon S3 Bucket Naming Requirements&lt;/a&gt;.&lt;/p&gt;
-- @param CloudWatchLogsRoleArn [String] &lt;p&gt;Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.&lt;/p&gt;
-- @param CloudWatchLogsLogGroupArn [String] &lt;p&gt;Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered. Not required unless you specify CloudWatchLogsRoleArn.&lt;/p&gt;
-- @param SnsTopicName [String] &lt;p&gt;Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.&lt;/p&gt;
-- @param EnableLogFileValidation [Boolean] &lt;p&gt;Specifies whether log file validation is enabled. The default is false.&lt;/p&gt; &lt;note&gt; &lt;p&gt;When you disable log file integrity validation, the chain of digest files is broken after one hour. CloudTrail will not create digest files for log files that were delivered during a period in which log file integrity validation was disabled. For example, if you enable log file integrity validation at noon on January 1, disable it at noon on January 2, and re-enable it at noon on January 10, digest files will not be created for the log files delivered from noon on January 2 to noon on January 10. The same applies whenever you stop CloudTrail logging or delete a trail.&lt;/p&gt; &lt;/note&gt;
-- Required parameter: Name
function M.UpdateTrailRequest(IncludeGlobalServiceEvents, Name, S3KeyPrefix, KmsKeyId, IsMultiRegionTrail, S3BucketName, CloudWatchLogsRoleArn, CloudWatchLogsLogGroupArn, SnsTopicName, EnableLogFileValidation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateTrailRequest")
	local t = { 
		["IncludeGlobalServiceEvents"] = IncludeGlobalServiceEvents,
		["Name"] = Name,
		["S3KeyPrefix"] = S3KeyPrefix,
		["KmsKeyId"] = KmsKeyId,
		["IsMultiRegionTrail"] = IsMultiRegionTrail,
		["S3BucketName"] = S3BucketName,
		["CloudWatchLogsRoleArn"] = CloudWatchLogsRoleArn,
		["CloudWatchLogsLogGroupArn"] = CloudWatchLogsLogGroupArn,
		["SnsTopicName"] = SnsTopicName,
		["EnableLogFileValidation"] = EnableLogFileValidation,
	}
	M.AssertUpdateTrailRequest(t)
	return t
end

local EventSelector_keys = { "IncludeManagementEvents" = true, "DataResources" = true, "ReadWriteType" = true, nil }

function M.AssertEventSelector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EventSelector to be of type 'table'")
	if struct["IncludeManagementEvents"] then M.AssertBoolean(struct["IncludeManagementEvents"]) end
	if struct["DataResources"] then M.AssertDataResources(struct["DataResources"]) end
	if struct["ReadWriteType"] then M.AssertReadWriteType(struct["ReadWriteType"]) end
	for k,_ in pairs(struct) do
		assert(EventSelector_keys[k], "EventSelector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EventSelector
-- &lt;p&gt;Use event selectors to specify whether you want your trail to log management and/or data events. When an event occurs in your account, CloudTrail evaluates the event selector for all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event.&lt;/p&gt; &lt;p&gt;You can configure up to five event selectors for a trail.&lt;/p&gt;
-- @param IncludeManagementEvents [Boolean] &lt;p&gt;Specify if you want your event selector to include management events for your trail.&lt;/p&gt; &lt;p&gt; For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html#logging-management-events&quot;&gt;Management Events&lt;/a&gt; in the &lt;i&gt;AWS CloudTrail User Guide&lt;/i&gt;.&lt;/p&gt; &lt;p&gt;By default, the value is &lt;code&gt;true&lt;/code&gt;.&lt;/p&gt;
-- @param DataResources [DataResources] &lt;p&gt;CloudTrail supports logging only data events for S3 objects. You can specify up to 250 S3 buckets and object prefixes for a trail.&lt;/p&gt; &lt;p&gt;For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html#logging-data-events&quot;&gt;Data Events&lt;/a&gt; in the &lt;i&gt;AWS CloudTrail User Guide&lt;/i&gt;.&lt;/p&gt;
-- @param ReadWriteType [ReadWriteType] &lt;p&gt;Specify if you want your trail to log read-only events, write-only events, or all. For example, the EC2 &lt;code&gt;GetConsoleOutput&lt;/code&gt; is a read-only API operation and &lt;code&gt;RunInstances&lt;/code&gt; is a write-only API operation.&lt;/p&gt; &lt;p&gt; By default, the value is &lt;code&gt;All&lt;/code&gt;.&lt;/p&gt;
function M.EventSelector(IncludeManagementEvents, DataResources, ReadWriteType, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EventSelector")
	local t = { 
		["IncludeManagementEvents"] = IncludeManagementEvents,
		["DataResources"] = DataResources,
		["ReadWriteType"] = ReadWriteType,
	}
	M.AssertEventSelector(t)
	return t
end

local InsufficientS3BucketPolicyException_keys = { nil }

function M.AssertInsufficientS3BucketPolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientS3BucketPolicyException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InsufficientS3BucketPolicyException_keys[k], "InsufficientS3BucketPolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientS3BucketPolicyException
-- &lt;p&gt;This exception is thrown when the policy on the S3 bucket is not sufficient.&lt;/p&gt;
function M.InsufficientS3BucketPolicyException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientS3BucketPolicyException")
	local t = { 
	}
	M.AssertInsufficientS3BucketPolicyException(t)
	return t
end

local DescribeTrailsResponse_keys = { "trailList" = true, nil }

function M.AssertDescribeTrailsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeTrailsResponse to be of type 'table'")
	if struct["trailList"] then M.AssertTrailList(struct["trailList"]) end
	for k,_ in pairs(struct) do
		assert(DescribeTrailsResponse_keys[k], "DescribeTrailsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeTrailsResponse
-- &lt;p&gt;Returns the objects or data listed below if successful. Otherwise, returns an error.&lt;/p&gt;
-- @param trailList [TrailList] &lt;p&gt;The list of trail objects.&lt;/p&gt;
function M.DescribeTrailsResponse(trailList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeTrailsResponse")
	local t = { 
		["trailList"] = trailList,
	}
	M.AssertDescribeTrailsResponse(t)
	return t
end

local InvalidCloudWatchLogsRoleArnException_keys = { nil }

function M.AssertInvalidCloudWatchLogsRoleArnException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidCloudWatchLogsRoleArnException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidCloudWatchLogsRoleArnException_keys[k], "InvalidCloudWatchLogsRoleArnException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidCloudWatchLogsRoleArnException
-- &lt;p&gt;This exception is thrown when the provided role is not valid.&lt;/p&gt;
function M.InvalidCloudWatchLogsRoleArnException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidCloudWatchLogsRoleArnException")
	local t = { 
	}
	M.AssertInvalidCloudWatchLogsRoleArnException(t)
	return t
end

local CloudWatchLogsDeliveryUnavailableException_keys = { nil }

function M.AssertCloudWatchLogsDeliveryUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchLogsDeliveryUnavailableException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(CloudWatchLogsDeliveryUnavailableException_keys[k], "CloudWatchLogsDeliveryUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchLogsDeliveryUnavailableException
-- &lt;p&gt;Cannot set a CloudWatch Logs delivery for this region.&lt;/p&gt;
function M.CloudWatchLogsDeliveryUnavailableException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating CloudWatchLogsDeliveryUnavailableException")
	local t = { 
	}
	M.AssertCloudWatchLogsDeliveryUnavailableException(t)
	return t
end

local InvalidTrailNameException_keys = { nil }

function M.AssertInvalidTrailNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTrailNameException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidTrailNameException_keys[k], "InvalidTrailNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTrailNameException
-- &lt;p&gt;This exception is thrown when the provided trail name is not valid. Trail names must meet the following requirements:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Start with a letter or number, and end with a letter or number&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Be between 3 and 128 characters&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Have no adjacent periods, underscores or dashes. Names like &lt;code&gt;my-_namespace&lt;/code&gt; and &lt;code&gt;my--namespace&lt;/code&gt; are invalid.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Not be in IP address format (for example, 192.168.5.4)&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
function M.InvalidTrailNameException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTrailNameException")
	local t = { 
	}
	M.AssertInvalidTrailNameException(t)
	return t
end

local ListPublicKeysResponse_keys = { "NextToken" = true, "PublicKeyList" = true, nil }

function M.AssertListPublicKeysResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPublicKeysResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["PublicKeyList"] then M.AssertPublicKeyList(struct["PublicKeyList"]) end
	for k,_ in pairs(struct) do
		assert(ListPublicKeysResponse_keys[k], "ListPublicKeysResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPublicKeysResponse
-- &lt;p&gt;Returns the objects or data listed below if successful. Otherwise, returns an error.&lt;/p&gt;
-- @param NextToken [String] &lt;p&gt;Reserved for future use.&lt;/p&gt;
-- @param PublicKeyList [PublicKeyList] &lt;p&gt;Contains an array of PublicKey objects.&lt;/p&gt; &lt;note&gt; &lt;p&gt;The returned public keys may have validity time ranges that overlap.&lt;/p&gt; &lt;/note&gt;
function M.ListPublicKeysResponse(NextToken, PublicKeyList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPublicKeysResponse")
	local t = { 
		["NextToken"] = NextToken,
		["PublicKeyList"] = PublicKeyList,
	}
	M.AssertListPublicKeysResponse(t)
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
-- &lt;p&gt;This exception is thrown when the specified resource is not found.&lt;/p&gt;
function M.ResourceNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local DeleteTrailResponse_keys = { nil }

function M.AssertDeleteTrailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTrailResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteTrailResponse_keys[k], "DeleteTrailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTrailResponse
-- &lt;p&gt;Returns the objects or data listed below if successful. Otherwise, returns an error.&lt;/p&gt;
function M.DeleteTrailResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteTrailResponse")
	local t = { 
	}
	M.AssertDeleteTrailResponse(t)
	return t
end

local ResourceTag_keys = { "ResourceId" = true, "TagsList" = true, nil }

function M.AssertResourceTag(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceTag to be of type 'table'")
	if struct["ResourceId"] then M.AssertString(struct["ResourceId"]) end
	if struct["TagsList"] then M.AssertTagsList(struct["TagsList"]) end
	for k,_ in pairs(struct) do
		assert(ResourceTag_keys[k], "ResourceTag contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceTag
-- &lt;p&gt;A resource tag.&lt;/p&gt;
-- @param ResourceId [String] &lt;p&gt;Specifies the ARN of the resource.&lt;/p&gt;
-- @param TagsList [TagsList] &lt;p&gt;A list of tags.&lt;/p&gt;
function M.ResourceTag(ResourceId, TagsList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceTag")
	local t = { 
		["ResourceId"] = ResourceId,
		["TagsList"] = TagsList,
	}
	M.AssertResourceTag(t)
	return t
end

local GetTrailStatusResponse_keys = { "LatestNotificationError" = true, "LatestCloudWatchLogsDeliveryTime" = true, "LatestNotificationTime" = true, "LatestNotificationAttemptSucceeded" = true, "LatestDeliveryError" = true, "LatestDeliveryTime" = true, "TimeLoggingStarted" = true, "LatestDigestDeliveryError" = true, "LatestDeliveryAttemptSucceeded" = true, "IsLogging" = true, "LatestCloudWatchLogsDeliveryError" = true, "StartLoggingTime" = true, "LatestDigestDeliveryTime" = true, "StopLoggingTime" = true, "LatestNotificationAttemptTime" = true, "LatestDeliveryAttemptTime" = true, "TimeLoggingStopped" = true, nil }

function M.AssertGetTrailStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTrailStatusResponse to be of type 'table'")
	if struct["LatestNotificationError"] then M.AssertString(struct["LatestNotificationError"]) end
	if struct["LatestCloudWatchLogsDeliveryTime"] then M.AssertDate(struct["LatestCloudWatchLogsDeliveryTime"]) end
	if struct["LatestNotificationTime"] then M.AssertDate(struct["LatestNotificationTime"]) end
	if struct["LatestNotificationAttemptSucceeded"] then M.AssertString(struct["LatestNotificationAttemptSucceeded"]) end
	if struct["LatestDeliveryError"] then M.AssertString(struct["LatestDeliveryError"]) end
	if struct["LatestDeliveryTime"] then M.AssertDate(struct["LatestDeliveryTime"]) end
	if struct["TimeLoggingStarted"] then M.AssertString(struct["TimeLoggingStarted"]) end
	if struct["LatestDigestDeliveryError"] then M.AssertString(struct["LatestDigestDeliveryError"]) end
	if struct["LatestDeliveryAttemptSucceeded"] then M.AssertString(struct["LatestDeliveryAttemptSucceeded"]) end
	if struct["IsLogging"] then M.AssertBoolean(struct["IsLogging"]) end
	if struct["LatestCloudWatchLogsDeliveryError"] then M.AssertString(struct["LatestCloudWatchLogsDeliveryError"]) end
	if struct["StartLoggingTime"] then M.AssertDate(struct["StartLoggingTime"]) end
	if struct["LatestDigestDeliveryTime"] then M.AssertDate(struct["LatestDigestDeliveryTime"]) end
	if struct["StopLoggingTime"] then M.AssertDate(struct["StopLoggingTime"]) end
	if struct["LatestNotificationAttemptTime"] then M.AssertString(struct["LatestNotificationAttemptTime"]) end
	if struct["LatestDeliveryAttemptTime"] then M.AssertString(struct["LatestDeliveryAttemptTime"]) end
	if struct["TimeLoggingStopped"] then M.AssertString(struct["TimeLoggingStopped"]) end
	for k,_ in pairs(struct) do
		assert(GetTrailStatusResponse_keys[k], "GetTrailStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTrailStatusResponse
-- &lt;p&gt;Returns the objects or data listed below if successful. Otherwise, returns an error.&lt;/p&gt;
-- @param LatestNotificationError [String] &lt;p&gt;Displays any Amazon SNS error that CloudTrail encountered when attempting to send a notification. For more information about Amazon SNS errors, see the &lt;a href=&quot;http://docs.aws.amazon.com/sns/latest/dg/welcome.html&quot;&gt;Amazon SNS Developer Guide&lt;/a&gt;. &lt;/p&gt;
-- @param LatestCloudWatchLogsDeliveryTime [Date] &lt;p&gt;Displays the most recent date and time when CloudTrail delivered logs to CloudWatch Logs.&lt;/p&gt;
-- @param LatestNotificationTime [Date] &lt;p&gt;Specifies the date and time of the most recent Amazon SNS notification that CloudTrail has written a new log file to an account's Amazon S3 bucket.&lt;/p&gt;
-- @param LatestNotificationAttemptSucceeded [String] &lt;p&gt;This field is deprecated.&lt;/p&gt;
-- @param LatestDeliveryError [String] &lt;p&gt;Displays any Amazon S3 error that CloudTrail encountered when attempting to deliver log files to the designated bucket. For more information see the topic &lt;a href=&quot;http://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html&quot;&gt;Error Responses&lt;/a&gt; in the Amazon S3 API Reference. &lt;/p&gt; &lt;note&gt; &lt;p&gt;This error occurs only when there is a problem with the destination S3 bucket and will not occur for timeouts. To resolve the issue, create a new bucket and call &lt;code&gt;UpdateTrail&lt;/code&gt; to specify the new bucket, or fix the existing objects so that CloudTrail can again write to the bucket.&lt;/p&gt; &lt;/note&gt;
-- @param LatestDeliveryTime [Date] &lt;p&gt;Specifies the date and time that CloudTrail last delivered log files to an account's Amazon S3 bucket.&lt;/p&gt;
-- @param TimeLoggingStarted [String] &lt;p&gt;This field is deprecated.&lt;/p&gt;
-- @param LatestDigestDeliveryError [String] &lt;p&gt;Displays any Amazon S3 error that CloudTrail encountered when attempting to deliver a digest file to the designated bucket. For more information see the topic &lt;a href=&quot;http://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html&quot;&gt;Error Responses&lt;/a&gt; in the Amazon S3 API Reference. &lt;/p&gt; &lt;note&gt; &lt;p&gt;This error occurs only when there is a problem with the destination S3 bucket and will not occur for timeouts. To resolve the issue, create a new bucket and call &lt;code&gt;UpdateTrail&lt;/code&gt; to specify the new bucket, or fix the existing objects so that CloudTrail can again write to the bucket.&lt;/p&gt; &lt;/note&gt;
-- @param LatestDeliveryAttemptSucceeded [String] &lt;p&gt;This field is deprecated.&lt;/p&gt;
-- @param IsLogging [Boolean] &lt;p&gt;Whether the CloudTrail is currently logging AWS API calls.&lt;/p&gt;
-- @param LatestCloudWatchLogsDeliveryError [String] &lt;p&gt;Displays any CloudWatch Logs error that CloudTrail encountered when attempting to deliver logs to CloudWatch Logs.&lt;/p&gt;
-- @param StartLoggingTime [Date] &lt;p&gt;Specifies the most recent date and time when CloudTrail started recording API calls for an AWS account.&lt;/p&gt;
-- @param LatestDigestDeliveryTime [Date] &lt;p&gt;Specifies the date and time that CloudTrail last delivered a digest file to an account's Amazon S3 bucket.&lt;/p&gt;
-- @param StopLoggingTime [Date] &lt;p&gt;Specifies the most recent date and time when CloudTrail stopped recording API calls for an AWS account.&lt;/p&gt;
-- @param LatestNotificationAttemptTime [String] &lt;p&gt;This field is deprecated.&lt;/p&gt;
-- @param LatestDeliveryAttemptTime [String] &lt;p&gt;This field is deprecated.&lt;/p&gt;
-- @param TimeLoggingStopped [String] &lt;p&gt;This field is deprecated.&lt;/p&gt;
function M.GetTrailStatusResponse(LatestNotificationError, LatestCloudWatchLogsDeliveryTime, LatestNotificationTime, LatestNotificationAttemptSucceeded, LatestDeliveryError, LatestDeliveryTime, TimeLoggingStarted, LatestDigestDeliveryError, LatestDeliveryAttemptSucceeded, IsLogging, LatestCloudWatchLogsDeliveryError, StartLoggingTime, LatestDigestDeliveryTime, StopLoggingTime, LatestNotificationAttemptTime, LatestDeliveryAttemptTime, TimeLoggingStopped, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetTrailStatusResponse")
	local t = { 
		["LatestNotificationError"] = LatestNotificationError,
		["LatestCloudWatchLogsDeliveryTime"] = LatestCloudWatchLogsDeliveryTime,
		["LatestNotificationTime"] = LatestNotificationTime,
		["LatestNotificationAttemptSucceeded"] = LatestNotificationAttemptSucceeded,
		["LatestDeliveryError"] = LatestDeliveryError,
		["LatestDeliveryTime"] = LatestDeliveryTime,
		["TimeLoggingStarted"] = TimeLoggingStarted,
		["LatestDigestDeliveryError"] = LatestDigestDeliveryError,
		["LatestDeliveryAttemptSucceeded"] = LatestDeliveryAttemptSucceeded,
		["IsLogging"] = IsLogging,
		["LatestCloudWatchLogsDeliveryError"] = LatestCloudWatchLogsDeliveryError,
		["StartLoggingTime"] = StartLoggingTime,
		["LatestDigestDeliveryTime"] = LatestDigestDeliveryTime,
		["StopLoggingTime"] = StopLoggingTime,
		["LatestNotificationAttemptTime"] = LatestNotificationAttemptTime,
		["LatestDeliveryAttemptTime"] = LatestDeliveryAttemptTime,
		["TimeLoggingStopped"] = TimeLoggingStopped,
	}
	M.AssertGetTrailStatusResponse(t)
	return t
end

local InvalidTokenException_keys = { nil }

function M.AssertInvalidTokenException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTokenException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidTokenException_keys[k], "InvalidTokenException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTokenException
-- &lt;p&gt;Reserved for future use.&lt;/p&gt;
function M.InvalidTokenException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTokenException")
	local t = { 
	}
	M.AssertInvalidTokenException(t)
	return t
end

local InvalidTagParameterException_keys = { nil }

function M.AssertInvalidTagParameterException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidTagParameterException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidTagParameterException_keys[k], "InvalidTagParameterException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidTagParameterException
-- &lt;p&gt;This exception is thrown when the key or value specified for the tag does not match the regular expression &lt;code&gt;^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$&lt;/code&gt;.&lt;/p&gt;
function M.InvalidTagParameterException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidTagParameterException")
	local t = { 
	}
	M.AssertInvalidTagParameterException(t)
	return t
end

local LookupEventsResponse_keys = { "NextToken" = true, "Events" = true, nil }

function M.AssertLookupEventsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LookupEventsResponse to be of type 'table'")
	if struct["NextToken"] then M.AssertNextToken(struct["NextToken"]) end
	if struct["Events"] then M.AssertEventsList(struct["Events"]) end
	for k,_ in pairs(struct) do
		assert(LookupEventsResponse_keys[k], "LookupEventsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LookupEventsResponse
-- &lt;p&gt;Contains a response to a LookupEvents action.&lt;/p&gt;
-- @param NextToken [NextToken] &lt;p&gt;The token to use to get the next page of results after a previous API call. If the token does not appear, there are no more results to return. The token must be passed in with the same parameters as the previous call. For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should include those same parameters.&lt;/p&gt;
-- @param Events [EventsList] &lt;p&gt;A list of events returned based on the lookup attributes specified and the CloudTrail event. The events list is sorted by time. The most recent event is listed first.&lt;/p&gt;
function M.LookupEventsResponse(NextToken, Events, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LookupEventsResponse")
	local t = { 
		["NextToken"] = NextToken,
		["Events"] = Events,
	}
	M.AssertLookupEventsResponse(t)
	return t
end

local InvalidMaxResultsException_keys = { nil }

function M.AssertInvalidMaxResultsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidMaxResultsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidMaxResultsException_keys[k], "InvalidMaxResultsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidMaxResultsException
-- &lt;p&gt;This exception is thrown if the limit specified is invalid.&lt;/p&gt;
function M.InvalidMaxResultsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidMaxResultsException")
	local t = { 
	}
	M.AssertInvalidMaxResultsException(t)
	return t
end

local DataResource_keys = { "Values" = true, "Type" = true, nil }

function M.AssertDataResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DataResource to be of type 'table'")
	if struct["Values"] then M.AssertDataResourceValues(struct["Values"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	for k,_ in pairs(struct) do
		assert(DataResource_keys[k], "DataResource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DataResource
-- &lt;p&gt;The Amazon S3 objects that you specify in your event selectors for your trail to log data events. Data events are object-level API operations that access S3 objects, such as &lt;code&gt;GetObject&lt;/code&gt;, &lt;code&gt;DeleteObject&lt;/code&gt;, and &lt;code&gt;PutObject&lt;/code&gt;. You can specify up to 250 S3 buckets and object prefixes for a trail. &lt;/p&gt; &lt;p&gt;Example&lt;/p&gt; &lt;ol&gt; &lt;li&gt; &lt;p&gt;You create an event selector for a trail and specify an S3 bucket and an empty prefix, such as &lt;code&gt;arn:aws:s3:::bucket-1/&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You upload an image file to &lt;code&gt;bucket-1&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The &lt;code&gt;PutObject&lt;/code&gt; API operation occurs on an object in the S3 bucket that you specified in the event selector. The trail processes and logs the event.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;You upload another image file to a different S3 bucket named &lt;code&gt;arn:aws:s3:::bucket-2&lt;/code&gt;.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;The event occurs on an object in an S3 bucket that you didn't specify in the event selector. The trail doesn’t log the event.&lt;/p&gt; &lt;/li&gt; &lt;/ol&gt;
-- @param Values [DataResourceValues] &lt;p&gt;A list of ARN-like strings for the specified S3 objects.&lt;/p&gt; &lt;p&gt;To log data events for all objects in an S3 bucket, specify the bucket and an empty object prefix such as &lt;code&gt;arn:aws:s3:::bucket-1/&lt;/code&gt;. The trail logs data events for all objects in this S3 bucket.&lt;/p&gt; &lt;p&gt;To log data events for specific objects, specify the S3 bucket and object prefix such as &lt;code&gt;arn:aws:s3:::bucket-1/example-images&lt;/code&gt;. The trail logs data events for objects in this S3 bucket that match the prefix.&lt;/p&gt;
-- @param Type [String] &lt;p&gt;The resource type in which you want to log data events. You can specify only the following value: &lt;code&gt;AWS::S3::Object&lt;/code&gt;.&lt;/p&gt;
function M.DataResource(Values, Type, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DataResource")
	local t = { 
		["Values"] = Values,
		["Type"] = Type,
	}
	M.AssertDataResource(t)
	return t
end

local KmsException_keys = { nil }

function M.AssertKmsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KmsException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(KmsException_keys[k], "KmsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KmsException
-- &lt;p&gt;This exception is thrown when there is an issue with the specified KMS key and the trail can’t be updated.&lt;/p&gt;
function M.KmsException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating KmsException")
	local t = { 
	}
	M.AssertKmsException(t)
	return t
end

local ListPublicKeysRequest_keys = { "EndTime" = true, "NextToken" = true, "StartTime" = true, nil }

function M.AssertListPublicKeysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListPublicKeysRequest to be of type 'table'")
	if struct["EndTime"] then M.AssertDate(struct["EndTime"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	if struct["StartTime"] then M.AssertDate(struct["StartTime"]) end
	for k,_ in pairs(struct) do
		assert(ListPublicKeysRequest_keys[k], "ListPublicKeysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListPublicKeysRequest
-- &lt;p&gt;Requests the public keys for a specified time range.&lt;/p&gt;
-- @param EndTime [Date] &lt;p&gt;Optionally specifies, in UTC, the end of the time range to look up public keys for CloudTrail digest files. If not specified, the current time is used.&lt;/p&gt;
-- @param NextToken [String] &lt;p&gt;Reserved for future use.&lt;/p&gt;
-- @param StartTime [Date] &lt;p&gt;Optionally specifies, in UTC, the start of the time range to look up public keys for CloudTrail digest files. If not specified, the current time is used, and the current public key is returned.&lt;/p&gt;
function M.ListPublicKeysRequest(EndTime, NextToken, StartTime, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListPublicKeysRequest")
	local t = { 
		["EndTime"] = EndTime,
		["NextToken"] = NextToken,
		["StartTime"] = StartTime,
	}
	M.AssertListPublicKeysRequest(t)
	return t
end

local GetEventSelectorsRequest_keys = { "TrailName" = true, nil }

function M.AssertGetEventSelectorsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEventSelectorsRequest to be of type 'table'")
	assert(struct["TrailName"], "Expected key TrailName to exist in table")
	if struct["TrailName"] then M.AssertString(struct["TrailName"]) end
	for k,_ in pairs(struct) do
		assert(GetEventSelectorsRequest_keys[k], "GetEventSelectorsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEventSelectorsRequest
--  
-- @param TrailName [String] &lt;p&gt;Specifies the name of the trail or trail ARN. If you specify a trail name, the string must meet the following requirements:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Start with a letter or number, and end with a letter or number&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Be between 3 and 128 characters&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Have no adjacent periods, underscores or dashes. Names like &lt;code&gt;my-_namespace&lt;/code&gt; and &lt;code&gt;my--namespace&lt;/code&gt; are invalid.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Not be in IP address format (for example, 192.168.5.4)&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If you specify a trail ARN, it must be in the format:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail&lt;/code&gt; &lt;/p&gt;
-- Required parameter: TrailName
function M.GetEventSelectorsRequest(TrailName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEventSelectorsRequest")
	local t = { 
		["TrailName"] = TrailName,
	}
	M.AssertGetEventSelectorsRequest(t)
	return t
end

local TagsLimitExceededException_keys = { nil }

function M.AssertTagsLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagsLimitExceededException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(TagsLimitExceededException_keys[k], "TagsLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagsLimitExceededException
-- &lt;p&gt;The number of tags per trail has exceeded the permitted amount. Currently, the limit is 50.&lt;/p&gt;
function M.TagsLimitExceededException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating TagsLimitExceededException")
	local t = { 
	}
	M.AssertTagsLimitExceededException(t)
	return t
end

local GetEventSelectorsResponse_keys = { "EventSelectors" = true, "TrailARN" = true, nil }

function M.AssertGetEventSelectorsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetEventSelectorsResponse to be of type 'table'")
	if struct["EventSelectors"] then M.AssertEventSelectors(struct["EventSelectors"]) end
	if struct["TrailARN"] then M.AssertString(struct["TrailARN"]) end
	for k,_ in pairs(struct) do
		assert(GetEventSelectorsResponse_keys[k], "GetEventSelectorsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetEventSelectorsResponse
--  
-- @param EventSelectors [EventSelectors] &lt;p&gt;The event selectors that are configured for the trail.&lt;/p&gt;
-- @param TrailARN [String] &lt;p&gt;The specified trail ARN that has the event selectors.&lt;/p&gt;
function M.GetEventSelectorsResponse(EventSelectors, TrailARN, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetEventSelectorsResponse")
	local t = { 
		["EventSelectors"] = EventSelectors,
		["TrailARN"] = TrailARN,
	}
	M.AssertGetEventSelectorsResponse(t)
	return t
end

local InsufficientSnsTopicPolicyException_keys = { nil }

function M.AssertInsufficientSnsTopicPolicyException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InsufficientSnsTopicPolicyException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InsufficientSnsTopicPolicyException_keys[k], "InsufficientSnsTopicPolicyException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InsufficientSnsTopicPolicyException
-- &lt;p&gt;This exception is thrown when the policy on the SNS topic is not sufficient.&lt;/p&gt;
function M.InsufficientSnsTopicPolicyException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InsufficientSnsTopicPolicyException")
	local t = { 
	}
	M.AssertInsufficientSnsTopicPolicyException(t)
	return t
end

local StartLoggingRequest_keys = { "Name" = true, nil }

function M.AssertStartLoggingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartLoggingRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then M.AssertString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(StartLoggingRequest_keys[k], "StartLoggingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartLoggingRequest
-- &lt;p&gt;The request to CloudTrail to start logging AWS API calls for an account.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;Specifies the name or the CloudTrail ARN of the trail for which CloudTrail logs AWS API calls. The format of a trail ARN is:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail&lt;/code&gt; &lt;/p&gt;
-- Required parameter: Name
function M.StartLoggingRequest(Name, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartLoggingRequest")
	local t = { 
		["Name"] = Name,
	}
	M.AssertStartLoggingRequest(t)
	return t
end

local LookupAttribute_keys = { "AttributeKey" = true, "AttributeValue" = true, nil }

function M.AssertLookupAttribute(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LookupAttribute to be of type 'table'")
	assert(struct["AttributeKey"], "Expected key AttributeKey to exist in table")
	assert(struct["AttributeValue"], "Expected key AttributeValue to exist in table")
	if struct["AttributeKey"] then M.AssertLookupAttributeKey(struct["AttributeKey"]) end
	if struct["AttributeValue"] then M.AssertString(struct["AttributeValue"]) end
	for k,_ in pairs(struct) do
		assert(LookupAttribute_keys[k], "LookupAttribute contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LookupAttribute
-- &lt;p&gt;Specifies an attribute and value that filter the events returned.&lt;/p&gt;
-- @param AttributeKey [LookupAttributeKey] &lt;p&gt;Specifies an attribute on which to filter the events returned.&lt;/p&gt;
-- @param AttributeValue [String] &lt;p&gt;Specifies a value for the specified AttributeKey.&lt;/p&gt;
-- Required parameter: AttributeKey
-- Required parameter: AttributeValue
function M.LookupAttribute(AttributeKey, AttributeValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating LookupAttribute")
	local t = { 
		["AttributeKey"] = AttributeKey,
		["AttributeValue"] = AttributeValue,
	}
	M.AssertLookupAttribute(t)
	return t
end

local Resource_keys = { "ResourceType" = true, "ResourceName" = true, nil }

function M.AssertResource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Resource to be of type 'table'")
	if struct["ResourceType"] then M.AssertString(struct["ResourceType"]) end
	if struct["ResourceName"] then M.AssertString(struct["ResourceName"]) end
	for k,_ in pairs(struct) do
		assert(Resource_keys[k], "Resource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Resource
-- &lt;p&gt;Specifies the type and name of a resource referenced by an event.&lt;/p&gt;
-- @param ResourceType [String] &lt;p&gt;The type of a resource referenced by the event returned. When the resource type cannot be determined, null is returned. Some examples of resource types are: &lt;b&gt;Instance&lt;/b&gt; for EC2, &lt;b&gt;Trail&lt;/b&gt; for CloudTrail, &lt;b&gt;DBInstance&lt;/b&gt; for RDS, and &lt;b&gt;AccessKey&lt;/b&gt; for IAM. For a list of resource types supported for event lookup, see &lt;a href=&quot;http://docs.aws.amazon.com/awscloudtrail/latest/userguide/lookup_supported_resourcetypes.html&quot;&gt;Resource Types Supported for Event Lookup&lt;/a&gt;.&lt;/p&gt;
-- @param ResourceName [String] &lt;p&gt;The name of the resource referenced by the event returned. These are user-created names whose values will depend on the environment. For example, the resource name might be &quot;auto-scaling-test-group&quot; for an Auto Scaling Group or &quot;i-1234567&quot; for an EC2 Instance.&lt;/p&gt;
function M.Resource(ResourceType, ResourceName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Resource")
	local t = { 
		["ResourceType"] = ResourceType,
		["ResourceName"] = ResourceName,
	}
	M.AssertResource(t)
	return t
end

local KmsKeyNotFoundException_keys = { nil }

function M.AssertKmsKeyNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected KmsKeyNotFoundException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(KmsKeyNotFoundException_keys[k], "KmsKeyNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type KmsKeyNotFoundException
-- &lt;p&gt;This exception is thrown when the KMS key does not exist, or when the S3 bucket and the KMS key are not in the same region.&lt;/p&gt;
function M.KmsKeyNotFoundException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating KmsKeyNotFoundException")
	local t = { 
	}
	M.AssertKmsKeyNotFoundException(t)
	return t
end

local PutEventSelectorsRequest_keys = { "EventSelectors" = true, "TrailName" = true, nil }

function M.AssertPutEventSelectorsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEventSelectorsRequest to be of type 'table'")
	assert(struct["TrailName"], "Expected key TrailName to exist in table")
	assert(struct["EventSelectors"], "Expected key EventSelectors to exist in table")
	if struct["EventSelectors"] then M.AssertEventSelectors(struct["EventSelectors"]) end
	if struct["TrailName"] then M.AssertString(struct["TrailName"]) end
	for k,_ in pairs(struct) do
		assert(PutEventSelectorsRequest_keys[k], "PutEventSelectorsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEventSelectorsRequest
--  
-- @param EventSelectors [EventSelectors] &lt;p&gt;Specifies the settings for your event selectors. You can configure up to five event selectors for a trail.&lt;/p&gt;
-- @param TrailName [String] &lt;p&gt;Specifies the name of the trail or trail ARN. If you specify a trail name, the string must meet the following requirements:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt;Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Start with a letter or number, and end with a letter or number&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Be between 3 and 128 characters&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Have no adjacent periods, underscores or dashes. Names like &lt;code&gt;my-_namespace&lt;/code&gt; and &lt;code&gt;my--namespace&lt;/code&gt; are invalid.&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt;Not be in IP address format (for example, 192.168.5.4)&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt; &lt;p&gt;If you specify a trail ARN, it must be in the format:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail&lt;/code&gt; &lt;/p&gt;
-- Required parameter: TrailName
-- Required parameter: EventSelectors
function M.PutEventSelectorsRequest(EventSelectors, TrailName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutEventSelectorsRequest")
	local t = { 
		["EventSelectors"] = EventSelectors,
		["TrailName"] = TrailName,
	}
	M.AssertPutEventSelectorsRequest(t)
	return t
end

local InvalidHomeRegionException_keys = { nil }

function M.AssertInvalidHomeRegionException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidHomeRegionException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidHomeRegionException_keys[k], "InvalidHomeRegionException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidHomeRegionException
-- &lt;p&gt;This exception is thrown when an operation is called on a trail from a region other than the region in which the trail was created.&lt;/p&gt;
function M.InvalidHomeRegionException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidHomeRegionException")
	local t = { 
	}
	M.AssertInvalidHomeRegionException(t)
	return t
end

local AddTagsRequest_keys = { "ResourceId" = true, "TagsList" = true, nil }

function M.AssertAddTagsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AddTagsRequest to be of type 'table'")
	assert(struct["ResourceId"], "Expected key ResourceId to exist in table")
	if struct["ResourceId"] then M.AssertString(struct["ResourceId"]) end
	if struct["TagsList"] then M.AssertTagsList(struct["TagsList"]) end
	for k,_ in pairs(struct) do
		assert(AddTagsRequest_keys[k], "AddTagsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AddTagsRequest
-- &lt;p&gt;Specifies the tags to add to a trail.&lt;/p&gt;
-- @param ResourceId [String] &lt;p&gt;Specifies the ARN of the trail to which one or more tags will be added. The format of a trail ARN is:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail&lt;/code&gt; &lt;/p&gt;
-- @param TagsList [TagsList] &lt;p&gt;Contains a list of CloudTrail tags, up to a limit of 50&lt;/p&gt;
-- Required parameter: ResourceId
function M.AddTagsRequest(ResourceId, TagsList, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating AddTagsRequest")
	local t = { 
		["ResourceId"] = ResourceId,
		["TagsList"] = TagsList,
	}
	M.AssertAddTagsRequest(t)
	return t
end

local InvalidS3PrefixException_keys = { nil }

function M.AssertInvalidS3PrefixException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidS3PrefixException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidS3PrefixException_keys[k], "InvalidS3PrefixException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidS3PrefixException
-- &lt;p&gt;This exception is thrown when the provided S3 prefix is not valid.&lt;/p&gt;
function M.InvalidS3PrefixException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidS3PrefixException")
	local t = { 
	}
	M.AssertInvalidS3PrefixException(t)
	return t
end

local RemoveTagsResponse_keys = { nil }

function M.AssertRemoveTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RemoveTagsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(RemoveTagsResponse_keys[k], "RemoveTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RemoveTagsResponse
-- &lt;p&gt;Returns the objects or data listed below if successful. Otherwise, returns an error.&lt;/p&gt;
function M.RemoveTagsResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating RemoveTagsResponse")
	local t = { 
	}
	M.AssertRemoveTagsResponse(t)
	return t
end

local ListTagsResponse_keys = { "ResourceTagList" = true, "NextToken" = true, nil }

function M.AssertListTagsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsResponse to be of type 'table'")
	if struct["ResourceTagList"] then M.AssertResourceTagList(struct["ResourceTagList"]) end
	if struct["NextToken"] then M.AssertString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListTagsResponse_keys[k], "ListTagsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsResponse
-- &lt;p&gt;Returns the objects or data listed below if successful. Otherwise, returns an error.&lt;/p&gt;
-- @param ResourceTagList [ResourceTagList] &lt;p&gt;A list of resource tags.&lt;/p&gt;
-- @param NextToken [String] &lt;p&gt;Reserved for future use.&lt;/p&gt;
function M.ListTagsResponse(ResourceTagList, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListTagsResponse")
	local t = { 
		["ResourceTagList"] = ResourceTagList,
		["NextToken"] = NextToken,
	}
	M.AssertListTagsResponse(t)
	return t
end

local PublicKey_keys = { "ValidityStartTime" = true, "ValidityEndTime" = true, "Value" = true, "Fingerprint" = true, nil }

function M.AssertPublicKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublicKey to be of type 'table'")
	if struct["ValidityStartTime"] then M.AssertDate(struct["ValidityStartTime"]) end
	if struct["ValidityEndTime"] then M.AssertDate(struct["ValidityEndTime"]) end
	if struct["Value"] then M.AssertByteBuffer(struct["Value"]) end
	if struct["Fingerprint"] then M.AssertString(struct["Fingerprint"]) end
	for k,_ in pairs(struct) do
		assert(PublicKey_keys[k], "PublicKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublicKey
-- &lt;p&gt;Contains information about a returned public key.&lt;/p&gt;
-- @param ValidityStartTime [Date] &lt;p&gt;The starting time of validity of the public key.&lt;/p&gt;
-- @param ValidityEndTime [Date] &lt;p&gt;The ending time of validity of the public key.&lt;/p&gt;
-- @param Value [ByteBuffer] &lt;p&gt;The DER encoded public key value in PKCS#1 format.&lt;/p&gt;
-- @param Fingerprint [String] &lt;p&gt;The fingerprint of the public key.&lt;/p&gt;
function M.PublicKey(ValidityStartTime, ValidityEndTime, Value, Fingerprint, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PublicKey")
	local t = { 
		["ValidityStartTime"] = ValidityStartTime,
		["ValidityEndTime"] = ValidityEndTime,
		["Value"] = Value,
		["Fingerprint"] = Fingerprint,
	}
	M.AssertPublicKey(t)
	return t
end

local InvalidKmsKeyIdException_keys = { nil }

function M.AssertInvalidKmsKeyIdException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidKmsKeyIdException to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(InvalidKmsKeyIdException_keys[k], "InvalidKmsKeyIdException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidKmsKeyIdException
-- &lt;p&gt;This exception is thrown when the KMS key ARN is invalid.&lt;/p&gt;
function M.InvalidKmsKeyIdException(...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidKmsKeyIdException")
	local t = { 
	}
	M.AssertInvalidKmsKeyIdException(t)
	return t
end

local CreateTrailResponse_keys = { "IncludeGlobalServiceEvents" = true, "Name" = true, "S3KeyPrefix" = true, "TrailARN" = true, "LogFileValidationEnabled" = true, "SnsTopicARN" = true, "IsMultiRegionTrail" = true, "S3BucketName" = true, "CloudWatchLogsRoleArn" = true, "KmsKeyId" = true, "CloudWatchLogsLogGroupArn" = true, "SnsTopicName" = true, nil }

function M.AssertCreateTrailResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTrailResponse to be of type 'table'")
	if struct["IncludeGlobalServiceEvents"] then M.AssertBoolean(struct["IncludeGlobalServiceEvents"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["S3KeyPrefix"] then M.AssertString(struct["S3KeyPrefix"]) end
	if struct["TrailARN"] then M.AssertString(struct["TrailARN"]) end
	if struct["LogFileValidationEnabled"] then M.AssertBoolean(struct["LogFileValidationEnabled"]) end
	if struct["SnsTopicARN"] then M.AssertString(struct["SnsTopicARN"]) end
	if struct["IsMultiRegionTrail"] then M.AssertBoolean(struct["IsMultiRegionTrail"]) end
	if struct["S3BucketName"] then M.AssertString(struct["S3BucketName"]) end
	if struct["CloudWatchLogsRoleArn"] then M.AssertString(struct["CloudWatchLogsRoleArn"]) end
	if struct["KmsKeyId"] then M.AssertString(struct["KmsKeyId"]) end
	if struct["CloudWatchLogsLogGroupArn"] then M.AssertString(struct["CloudWatchLogsLogGroupArn"]) end
	if struct["SnsTopicName"] then M.AssertString(struct["SnsTopicName"]) end
	for k,_ in pairs(struct) do
		assert(CreateTrailResponse_keys[k], "CreateTrailResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTrailResponse
-- &lt;p&gt;Returns the objects or data listed below if successful. Otherwise, returns an error.&lt;/p&gt;
-- @param IncludeGlobalServiceEvents [Boolean] &lt;p&gt;Specifies whether the trail is publishing events from global services such as IAM to the log files.&lt;/p&gt;
-- @param Name [String] &lt;p&gt;Specifies the name of the trail.&lt;/p&gt;
-- @param S3KeyPrefix [String] &lt;p&gt;Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see &lt;a href=&quot;http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-find-log-files.html&quot;&gt;Finding Your CloudTrail Log Files&lt;/a&gt;.&lt;/p&gt;
-- @param TrailARN [String] &lt;p&gt;Specifies the ARN of the trail that was created. The format of a trail ARN is:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:cloudtrail:us-east-1:123456789012:trail/MyTrail&lt;/code&gt; &lt;/p&gt;
-- @param LogFileValidationEnabled [Boolean] &lt;p&gt;Specifies whether log file integrity validation is enabled.&lt;/p&gt;
-- @param SnsTopicARN [String] &lt;p&gt;Specifies the ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered. The format of a topic ARN is:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:sns:us-east-1:123456789012:MyTopic&lt;/code&gt; &lt;/p&gt;
-- @param IsMultiRegionTrail [Boolean] &lt;p&gt;Specifies whether the trail exists in one region or in all regions.&lt;/p&gt;
-- @param S3BucketName [String] &lt;p&gt;Specifies the name of the Amazon S3 bucket designated for publishing log files.&lt;/p&gt;
-- @param CloudWatchLogsRoleArn [String] &lt;p&gt;Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.&lt;/p&gt;
-- @param KmsKeyId [String] &lt;p&gt;Specifies the KMS key ID that encrypts the logs delivered by CloudTrail. The value is a fully specified ARN to a KMS key in the format:&lt;/p&gt; &lt;p&gt; &lt;code&gt;arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012&lt;/code&gt; &lt;/p&gt;
-- @param CloudWatchLogsLogGroupArn [String] &lt;p&gt;Specifies the Amazon Resource Name (ARN) of the log group to which CloudTrail logs will be delivered.&lt;/p&gt;
-- @param SnsTopicName [String] &lt;p&gt;This field is deprecated. Use SnsTopicARN.&lt;/p&gt;
function M.CreateTrailResponse(IncludeGlobalServiceEvents, Name, S3KeyPrefix, TrailARN, LogFileValidationEnabled, SnsTopicARN, IsMultiRegionTrail, S3BucketName, CloudWatchLogsRoleArn, KmsKeyId, CloudWatchLogsLogGroupArn, SnsTopicName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateTrailResponse")
	local t = { 
		["IncludeGlobalServiceEvents"] = IncludeGlobalServiceEvents,
		["Name"] = Name,
		["S3KeyPrefix"] = S3KeyPrefix,
		["TrailARN"] = TrailARN,
		["LogFileValidationEnabled"] = LogFileValidationEnabled,
		["SnsTopicARN"] = SnsTopicARN,
		["IsMultiRegionTrail"] = IsMultiRegionTrail,
		["S3BucketName"] = S3BucketName,
		["CloudWatchLogsRoleArn"] = CloudWatchLogsRoleArn,
		["KmsKeyId"] = KmsKeyId,
		["CloudWatchLogsLogGroupArn"] = CloudWatchLogsLogGroupArn,
		["SnsTopicName"] = SnsTopicName,
	}
	M.AssertCreateTrailResponse(t)
	return t
end

function M.AssertReadWriteType(str)
	assert(str)
	assert(type(str) == "string", "Expected ReadWriteType to be of type 'string'")
end

--  
function M.ReadWriteType(str)
	M.AssertReadWriteType(str)
	return str
end

function M.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
end

--  
function M.NextToken(str)
	M.AssertNextToken(str)
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

function M.AssertLookupAttributeKey(str)
	assert(str)
	assert(type(str) == "string", "Expected LookupAttributeKey to be of type 'string'")
end

--  
function M.LookupAttributeKey(str)
	M.AssertLookupAttributeKey(str)
	return str
end

function M.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.MaxResults(integer)
	M.AssertMaxResults(integer)
	return integer
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Date to be of type 'string'")
end

function M.Date(timestamp)
	M.AssertDate(timestamp)
	return timestamp
end

function M.AssertByteBuffer(blob)
	assert(blob)
	assert(type(string) == "string", "Expected ByteBuffer to be of type 'string'")
end

function M.ByteBuffer(blob)
	M.AssertByteBuffer(blob)
	return blob
end

function M.AssertResourceIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceIdList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.ResourceIdList(list)
	M.AssertResourceIdList(list)
	return list
end

function M.AssertPublicKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected PublicKeyList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertPublicKey(v)
	end
end

--  
-- List of PublicKey objects
function M.PublicKeyList(list)
	M.AssertPublicKeyList(list)
	return list
end

function M.AssertResourceList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResource(v)
	end
end

-- &lt;p&gt;A list of resources referenced by the event returned.&lt;/p&gt;
-- List of Resource objects
function M.ResourceList(list)
	M.AssertResourceList(list)
	return list
end

function M.AssertLookupAttributesList(list)
	assert(list)
	assert(type(list) == "table", "Expected LookupAttributesList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertLookupAttribute(v)
	end
end

--  
-- List of LookupAttribute objects
function M.LookupAttributesList(list)
	M.AssertLookupAttributesList(list)
	return list
end

function M.AssertTrailList(list)
	assert(list)
	assert(type(list) == "table", "Expected TrailList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTrail(v)
	end
end

--  
-- List of Trail objects
function M.TrailList(list)
	M.AssertTrailList(list)
	return list
end

function M.AssertResourceTagList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceTagList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertResourceTag(v)
	end
end

--  
-- List of ResourceTag objects
function M.ResourceTagList(list)
	M.AssertResourceTagList(list)
	return list
end

function M.AssertDataResourceValues(list)
	assert(list)
	assert(type(list) == "table", "Expected DataResourceValues to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.DataResourceValues(list)
	M.AssertDataResourceValues(list)
	return list
end

function M.AssertTrailNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected TrailNameList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertString(v)
	end
end

--  
-- List of String objects
function M.TrailNameList(list)
	M.AssertTrailNameList(list)
	return list
end

function M.AssertEventSelectors(list)
	assert(list)
	assert(type(list) == "table", "Expected EventSelectors to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEventSelector(v)
	end
end

--  
-- List of EventSelector objects
function M.EventSelectors(list)
	M.AssertEventSelectors(list)
	return list
end

function M.AssertEventsList(list)
	assert(list)
	assert(type(list) == "table", "Expected EventsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEvent(v)
	end
end

--  
-- List of Event objects
function M.EventsList(list)
	M.AssertEventsList(list)
	return list
end

function M.AssertTagsList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagsList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertTag(v)
	end
end

-- &lt;p&gt;A list of tags.&lt;/p&gt;
-- List of Tag objects
function M.TagsList(list)
	M.AssertTagsList(list)
	return list
end

function M.AssertDataResources(list)
	assert(list)
	assert(type(list) == "table", "Expected DataResources to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDataResource(v)
	end
end

--  
-- List of DataResource objects
function M.DataResources(list)
	M.AssertDataResources(list)
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
