--- GENERATED CODE - DO NOT MODIFY
-- Amazon Kinesis Video Streams (kinesisvideo-2017-09-30)

local M = {}

M.metadata = {
	api_version = "2017-09-30",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "kinesisvideo",
	service_abbreviation = "Kinesis Video",
	service_full_name = "Amazon Kinesis Video Streams",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "kinesisvideo-2017-09-30",
}

local keys = {}
local asserts = {}

keys.UntagStreamOutput = { nil }

function asserts.AssertUntagStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagStreamOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UntagStreamOutput[k], "UntagStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagStreamOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UntagStreamOutput structure as a key-value pair table
function M.UntagStreamOutput(args)
	assert(args, "You must provide an argument table when creating UntagStreamOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUntagStreamOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagStreamInput = { ["StreamName"] = true, ["StreamARN"] = true, ["Tags"] = true, nil }

function asserts.AssertTagStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagStreamInput to be of type 'table'")
	assert(struct["Tags"], "Expected key Tags to exist in table")
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["StreamARN"] then asserts.AssertResourceARN(struct["StreamARN"]) end
	if struct["Tags"] then asserts.AssertResourceTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagStreamInput[k], "TagStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagStreamInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamName [StreamName] <p>The name of the stream that you want to add the tag or tags to.</p>
-- * StreamARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the resource that you want to add the tag or tags to.</p>
-- * Tags [ResourceTags] <p>A list of tags to associate with the specified stream. Each tag is a key-value pair (the value is optional).</p>
-- Required key: Tags
-- @return TagStreamInput structure as a key-value pair table
function M.TagStreamInput(args)
	assert(args, "You must provide an argument table when creating TagStreamInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamName"] = args["StreamName"],
		["StreamARN"] = args["StreamARN"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertTagStreamInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateStreamOutput = { ["StreamARN"] = true, nil }

function asserts.AssertCreateStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamOutput to be of type 'table'")
	if struct["StreamARN"] then asserts.AssertResourceARN(struct["StreamARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStreamOutput[k], "CreateStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the stream.</p>
-- @return CreateStreamOutput structure as a key-value pair table
function M.CreateStreamOutput(args)
	assert(args, "You must provide an argument table when creating CreateStreamOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamARN"] = args["StreamARN"],
	}
	asserts.AssertCreateStreamOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateStreamOutput = { nil }

function asserts.AssertUpdateStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStreamOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateStreamOutput[k], "UpdateStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStreamOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateStreamOutput structure as a key-value pair table
function M.UpdateStreamOutput(args)
	assert(args, "You must provide an argument table when creating UpdateStreamOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateStreamOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStreamsInput = { ["NextToken"] = true, ["MaxResults"] = true, ["StreamNameCondition"] = true, nil }

function asserts.AssertListStreamsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStreamsInput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertListStreamsInputLimit(struct["MaxResults"]) end
	if struct["StreamNameCondition"] then asserts.AssertStreamNameCondition(struct["StreamNameCondition"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStreamsInput[k], "ListStreamsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStreamsInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If you specify this parameter, when the result of a <code>ListStreams</code> operation is truncated, the call returns the <code>NextToken</code> in the response. To get another batch of streams, provide this token in your next request.</p>
-- * MaxResults [ListStreamsInputLimit] <p>The maximum number of streams to return in the response. The default is 10,000.</p>
-- * StreamNameCondition [StreamNameCondition] <p>Optional: Returns only streams that satisfy a specific condition. Currently, you can specify only the prefix of a stream name as a condition. </p>
-- @return ListStreamsInput structure as a key-value pair table
function M.ListStreamsInput(args)
	assert(args, "You must provide an argument table when creating ListStreamsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["StreamNameCondition"] = args["StreamNameCondition"],
	}
	asserts.AssertListStreamsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidResourceFormatException = { ["Message"] = true, nil }

function asserts.AssertInvalidResourceFormatException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidResourceFormatException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidResourceFormatException[k], "InvalidResourceFormatException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidResourceFormatException
-- <p>The format of the <code>StreamARN</code> is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return InvalidResourceFormatException structure as a key-value pair table
function M.InvalidResourceFormatException(args)
	assert(args, "You must provide an argument table when creating InvalidResourceFormatException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidResourceFormatException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceInUseException = { ["Message"] = true, nil }

function asserts.AssertResourceInUseException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceInUseException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceInUseException[k], "ResourceInUseException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceInUseException
-- <p>The stream is currently not available for this operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return ResourceInUseException structure as a key-value pair table
function M.ResourceInUseException(args)
	assert(args, "You must provide an argument table when creating ResourceInUseException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertResourceInUseException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeviceStreamLimitExceededException = { ["Message"] = true, nil }

function asserts.AssertDeviceStreamLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeviceStreamLimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeviceStreamLimitExceededException[k], "DeviceStreamLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeviceStreamLimitExceededException
-- <p>Not implemented. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return DeviceStreamLimitExceededException structure as a key-value pair table
function M.DeviceStreamLimitExceededException(args)
	assert(args, "You must provide an argument table when creating DeviceStreamLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertDeviceStreamLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteStreamInput = { ["CurrentVersion"] = true, ["StreamARN"] = true, nil }

function asserts.AssertDeleteStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStreamInput to be of type 'table'")
	assert(struct["StreamARN"], "Expected key StreamARN to exist in table")
	if struct["CurrentVersion"] then asserts.AssertVersion(struct["CurrentVersion"]) end
	if struct["StreamARN"] then asserts.AssertResourceARN(struct["StreamARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteStreamInput[k], "DeleteStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStreamInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CurrentVersion [Version] <p>Optional: The version of the stream that you want to delete. </p> <p>Specify the version as a safeguard to ensure that your are deleting the correct stream. To get the stream version, use the <code>DescribeStream</code> API.</p> <p>If not specified, only the <code>CreationTime</code> is checked before deleting the stream.</p>
-- * StreamARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the stream that you want to delete. </p>
-- Required key: StreamARN
-- @return DeleteStreamInput structure as a key-value pair table
function M.DeleteStreamInput(args)
	assert(args, "You must provide an argument table when creating DeleteStreamInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CurrentVersion"] = args["CurrentVersion"],
		["StreamARN"] = args["StreamARN"],
	}
	asserts.AssertDeleteStreamInput(all_args)
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
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotAuthorizedException[k], "NotAuthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotAuthorizedException
-- <p>The caller is not authorized to perform this operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
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

keys.StreamNameCondition = { ["ComparisonOperator"] = true, ["ComparisonValue"] = true, nil }

function asserts.AssertStreamNameCondition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamNameCondition to be of type 'table'")
	if struct["ComparisonOperator"] then asserts.AssertComparisonOperator(struct["ComparisonOperator"]) end
	if struct["ComparisonValue"] then asserts.AssertStreamName(struct["ComparisonValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamNameCondition[k], "StreamNameCondition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamNameCondition
-- <p>Specifies the condition that streams must satisfy to be returned when you list streams (see the <code>ListStreams</code> API). A condition has a comparison operation and a value. Currently, you can specify only the <code>BEGINS_WITH</code> operator, which finds streams whose names start with a given prefix. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ComparisonOperator [ComparisonOperator] <p>A comparison operator. Currently, you can specify only the <code>BEGINS_WITH</code> operator, which finds streams whose names start with a given prefix.</p>
-- * ComparisonValue [StreamName] <p>A value to compare.</p>
-- @return StreamNameCondition structure as a key-value pair table
function M.StreamNameCondition(args)
	assert(args, "You must provide an argument table when creating StreamNameCondition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ComparisonOperator"] = args["ComparisonOperator"],
		["ComparisonValue"] = args["ComparisonValue"],
	}
	asserts.AssertStreamNameCondition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.VersionMismatchException = { ["Message"] = true, nil }

function asserts.AssertVersionMismatchException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected VersionMismatchException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.VersionMismatchException[k], "VersionMismatchException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type VersionMismatchException
-- <p>The stream version that you specified is not the latest version. To get the latest version, use the <a href="http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_DescribeStream.html">DescribeStream</a> API.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return VersionMismatchException structure as a key-value pair table
function M.VersionMismatchException(args)
	assert(args, "You must provide an argument table when creating VersionMismatchException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertVersionMismatchException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateStreamInput = { ["DeviceName"] = true, ["CurrentVersion"] = true, ["StreamName"] = true, ["StreamARN"] = true, ["MediaType"] = true, nil }

function asserts.AssertUpdateStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateStreamInput to be of type 'table'")
	assert(struct["CurrentVersion"], "Expected key CurrentVersion to exist in table")
	if struct["DeviceName"] then asserts.AssertDeviceName(struct["DeviceName"]) end
	if struct["CurrentVersion"] then asserts.AssertVersion(struct["CurrentVersion"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["StreamARN"] then asserts.AssertResourceARN(struct["StreamARN"]) end
	if struct["MediaType"] then asserts.AssertMediaType(struct["MediaType"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateStreamInput[k], "UpdateStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateStreamInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeviceName [DeviceName] <p>The name of the device that is writing to the stream. </p> <note> <p> In the current implementation, Kinesis Video Streams does not use this name. </p> </note>
-- * CurrentVersion [Version] <p>The version of the stream whose metadata you want to update.</p>
-- * StreamName [StreamName] <p>The name of the stream whose metadata you want to update.</p> <p>The stream name is an identifier for the stream, and must be unique for each account and region.</p>
-- * StreamARN [ResourceARN] <p>The ARN of the stream whose metadata you want to update.</p>
-- * MediaType [MediaType] <p>The stream's media type. Use <code>MediaType</code> to specify the type of content that the stream contains to the consumers of the stream. For more information about media types, see <a href="http://www.iana.org/assignments/media-types/media-types.xhtml">Media Types</a>. If you choose to specify the <code>MediaType</code>, see <a href="https://tools.ietf.org/html/rfc6838#section-4.2">Naming Requirements</a>.</p> <p>To play video on the console, you must specify the correct video type. For example, if the video in the stream is H.264, specify <code>video/h264</code> as the <code>MediaType</code>.</p>
-- Required key: CurrentVersion
-- @return UpdateStreamInput structure as a key-value pair table
function M.UpdateStreamInput(args)
	assert(args, "You must provide an argument table when creating UpdateStreamInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeviceName"] = args["DeviceName"],
		["CurrentVersion"] = args["CurrentVersion"],
		["StreamName"] = args["StreamName"],
		["StreamARN"] = args["StreamARN"],
		["MediaType"] = args["MediaType"],
	}
	asserts.AssertUpdateStreamInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.AccountStreamLimitExceededException = { ["Message"] = true, nil }

function asserts.AssertAccountStreamLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected AccountStreamLimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.AccountStreamLimitExceededException[k], "AccountStreamLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type AccountStreamLimitExceededException
-- <p>The number of streams created for the account is too high.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return AccountStreamLimitExceededException structure as a key-value pair table
function M.AccountStreamLimitExceededException(args)
	assert(args, "You must provide an argument table when creating AccountStreamLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertAccountStreamLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteStreamOutput = { nil }

function asserts.AssertDeleteStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteStreamOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteStreamOutput[k], "DeleteStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteStreamOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteStreamOutput structure as a key-value pair table
function M.DeleteStreamOutput(args)
	assert(args, "You must provide an argument table when creating DeleteStreamOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteStreamOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeStreamOutput = { ["StreamInfo"] = true, nil }

function asserts.AssertDescribeStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStreamOutput to be of type 'table'")
	if struct["StreamInfo"] then asserts.AssertStreamInfo(struct["StreamInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStreamOutput[k], "DescribeStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStreamOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamInfo [StreamInfo] <p>An object that describes the stream.</p>
-- @return DescribeStreamOutput structure as a key-value pair table
function M.DescribeStreamOutput(args)
	assert(args, "You must provide an argument table when creating DescribeStreamOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamInfo"] = args["StreamInfo"],
	}
	asserts.AssertDescribeStreamOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDataRetentionOutput = { nil }

function asserts.AssertUpdateDataRetentionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDataRetentionOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateDataRetentionOutput[k], "UpdateDataRetentionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDataRetentionOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateDataRetentionOutput structure as a key-value pair table
function M.UpdateDataRetentionOutput(args)
	assert(args, "You must provide an argument table when creating UpdateDataRetentionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateDataRetentionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvalidDeviceException = { ["Message"] = true, nil }

function asserts.AssertInvalidDeviceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidDeviceException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidDeviceException[k], "InvalidDeviceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidDeviceException
-- <p>Not implemented.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return InvalidDeviceException structure as a key-value pair table
function M.InvalidDeviceException(args)
	assert(args, "You must provide an argument table when creating InvalidDeviceException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidDeviceException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UntagStreamInput = { ["StreamName"] = true, ["StreamARN"] = true, ["TagKeyList"] = true, nil }

function asserts.AssertUntagStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UntagStreamInput to be of type 'table'")
	assert(struct["TagKeyList"], "Expected key TagKeyList to exist in table")
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["StreamARN"] then asserts.AssertResourceARN(struct["StreamARN"]) end
	if struct["TagKeyList"] then asserts.AssertTagKeyList(struct["TagKeyList"]) end
	for k,_ in pairs(struct) do
		assert(keys.UntagStreamInput[k], "UntagStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UntagStreamInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamName [StreamName] <p>The name of the stream that you want to remove tags from.</p>
-- * StreamARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the stream that you want to remove tags from.</p>
-- * TagKeyList [TagKeyList] <p>A list of the keys of the tags that you want to remove.</p>
-- Required key: TagKeyList
-- @return UntagStreamInput structure as a key-value pair table
function M.UntagStreamInput(args)
	assert(args, "You must provide an argument table when creating UntagStreamInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamName"] = args["StreamName"],
		["StreamARN"] = args["StreamARN"],
		["TagKeyList"] = args["TagKeyList"],
	}
	asserts.AssertUntagStreamInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDataRetentionInput = { ["DataRetentionChangeInHours"] = true, ["CurrentVersion"] = true, ["StreamName"] = true, ["StreamARN"] = true, ["Operation"] = true, nil }

function asserts.AssertUpdateDataRetentionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDataRetentionInput to be of type 'table'")
	assert(struct["CurrentVersion"], "Expected key CurrentVersion to exist in table")
	assert(struct["Operation"], "Expected key Operation to exist in table")
	assert(struct["DataRetentionChangeInHours"], "Expected key DataRetentionChangeInHours to exist in table")
	if struct["DataRetentionChangeInHours"] then asserts.AssertDataRetentionChangeInHours(struct["DataRetentionChangeInHours"]) end
	if struct["CurrentVersion"] then asserts.AssertVersion(struct["CurrentVersion"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["StreamARN"] then asserts.AssertResourceARN(struct["StreamARN"]) end
	if struct["Operation"] then asserts.AssertUpdateDataRetentionOperation(struct["Operation"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDataRetentionInput[k], "UpdateDataRetentionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDataRetentionInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataRetentionChangeInHours [DataRetentionChangeInHours] <p>The retention period, in hours. The value you specify replaces the current value.</p>
-- * CurrentVersion [Version] <p>The version of the stream whose retention period you want to change. To get the version, call either the <code>DescribeStream</code> or the <code>ListStreams</code> API.</p>
-- * StreamName [StreamName] <p>The name of the stream whose retention period you want to change.</p>
-- * StreamARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the stream whose retention period you want to change.</p>
-- * Operation [UpdateDataRetentionOperation] <p>Indicates whether you want to increase or decrease the retention period.</p>
-- Required key: CurrentVersion
-- Required key: Operation
-- Required key: DataRetentionChangeInHours
-- @return UpdateDataRetentionInput structure as a key-value pair table
function M.UpdateDataRetentionInput(args)
	assert(args, "You must provide an argument table when creating UpdateDataRetentionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataRetentionChangeInHours"] = args["DataRetentionChangeInHours"],
		["CurrentVersion"] = args["CurrentVersion"],
		["StreamName"] = args["StreamName"],
		["StreamARN"] = args["StreamARN"],
		["Operation"] = args["Operation"],
	}
	asserts.AssertUpdateDataRetentionInput(all_args)
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
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidArgumentException[k], "InvalidArgumentException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidArgumentException
-- <p>The value for this input parameter is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
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

keys.TagStreamOutput = { nil }

function asserts.AssertTagStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagStreamOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.TagStreamOutput[k], "TagStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagStreamOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return TagStreamOutput structure as a key-value pair table
function M.TagStreamOutput(args)
	assert(args, "You must provide an argument table when creating TagStreamOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertTagStreamOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForStreamInput = { ["NextToken"] = true, ["StreamARN"] = true, ["StreamName"] = true, nil }

function asserts.AssertListTagsForStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForStreamInput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["StreamARN"] then asserts.AssertResourceARN(struct["StreamARN"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForStreamInput[k], "ListTagsForStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForStreamInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If you specify this parameter and the result of a <code>ListTagsForStream</code> call is truncated, the response includes a token that you can use in the next request to fetch the next batch of tags.</p>
-- * StreamARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the stream that you want to list tags for.</p>
-- * StreamName [StreamName] <p>The name of the stream that you want to list tags for.</p>
-- @return ListTagsForStreamInput structure as a key-value pair table
function M.ListTagsForStreamInput(args)
	assert(args, "You must provide an argument table when creating ListTagsForStreamInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["StreamARN"] = args["StreamARN"],
		["StreamName"] = args["StreamName"],
	}
	asserts.AssertListTagsForStreamInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ClientLimitExceededException = { ["Message"] = true, nil }

function asserts.AssertClientLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ClientLimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ClientLimitExceededException[k], "ClientLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ClientLimitExceededException
-- <p>Kinesis Video Streams has throttled the request because you have exceeded the limit of allowed client calls. Try making the call later.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return ClientLimitExceededException structure as a key-value pair table
function M.ClientLimitExceededException(args)
	assert(args, "You must provide an argument table when creating ClientLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertClientLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListStreamsOutput = { ["StreamInfoList"] = true, ["NextToken"] = true, nil }

function asserts.AssertListStreamsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListStreamsOutput to be of type 'table'")
	if struct["StreamInfoList"] then asserts.AssertStreamInfoList(struct["StreamInfoList"]) end
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListStreamsOutput[k], "ListStreamsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListStreamsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamInfoList [StreamInfoList] <p>An array of <code>StreamInfo</code> objects.</p>
-- * NextToken [NextToken] <p>If the response is truncated, the call returns this element with a token. To get the next batch of streams, use this token in your next request. </p>
-- @return ListStreamsOutput structure as a key-value pair table
function M.ListStreamsOutput(args)
	assert(args, "You must provide an argument table when creating ListStreamsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamInfoList"] = args["StreamInfoList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListStreamsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTagsForStreamOutput = { ["NextToken"] = true, ["Tags"] = true, nil }

function asserts.AssertListTagsForStreamOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTagsForStreamOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertNextToken(struct["NextToken"]) end
	if struct["Tags"] then asserts.AssertResourceTags(struct["Tags"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTagsForStreamOutput[k], "ListTagsForStreamOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTagsForStreamOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [NextToken] <p>If you specify this parameter and the result of a <code>ListTags</code> call is truncated, the response includes a token that you can use in the next request to fetch the next set of tags.</p>
-- * Tags [ResourceTags] <p>A map of tag keys and values associated with the specified stream.</p>
-- @return ListTagsForStreamOutput structure as a key-value pair table
function M.ListTagsForStreamOutput(args)
	assert(args, "You must provide an argument table when creating ListTagsForStreamOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Tags"] = args["Tags"],
	}
	asserts.AssertListTagsForStreamOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDataEndpointInput = { ["StreamName"] = true, ["StreamARN"] = true, ["APIName"] = true, nil }

function asserts.AssertGetDataEndpointInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDataEndpointInput to be of type 'table'")
	assert(struct["APIName"], "Expected key APIName to exist in table")
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["StreamARN"] then asserts.AssertResourceARN(struct["StreamARN"]) end
	if struct["APIName"] then asserts.AssertAPIName(struct["APIName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDataEndpointInput[k], "GetDataEndpointInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDataEndpointInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamName [StreamName] <p>The name of the stream that you want to get the endpoint for. You must specify either this parameter or a <code>StreamARN</code> in the request.</p>
-- * StreamARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the stream that you want to get the endpoint for. You must specify either this parameter or a <code>StreamName</code> in the request. </p>
-- * APIName [APIName] <p>The name of the API action for which to get an endpoint.</p>
-- Required key: APIName
-- @return GetDataEndpointInput structure as a key-value pair table
function M.GetDataEndpointInput(args)
	assert(args, "You must provide an argument table when creating GetDataEndpointInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamName"] = args["StreamName"],
		["StreamARN"] = args["StreamARN"],
		["APIName"] = args["APIName"],
	}
	asserts.AssertGetDataEndpointInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StreamInfo = { ["Status"] = true, ["DeviceName"] = true, ["StreamName"] = true, ["CreationTime"] = true, ["MediaType"] = true, ["Version"] = true, ["StreamARN"] = true, ["KmsKeyId"] = true, ["DataRetentionInHours"] = true, nil }

function asserts.AssertStreamInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StreamInfo to be of type 'table'")
	if struct["Status"] then asserts.AssertStatus(struct["Status"]) end
	if struct["DeviceName"] then asserts.AssertDeviceName(struct["DeviceName"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["MediaType"] then asserts.AssertMediaType(struct["MediaType"]) end
	if struct["Version"] then asserts.AssertVersion(struct["Version"]) end
	if struct["StreamARN"] then asserts.AssertResourceARN(struct["StreamARN"]) end
	if struct["KmsKeyId"] then asserts.AssertKmsKeyId(struct["KmsKeyId"]) end
	if struct["DataRetentionInHours"] then asserts.AssertDataRetentionInHours(struct["DataRetentionInHours"]) end
	for k,_ in pairs(struct) do
		assert(keys.StreamInfo[k], "StreamInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StreamInfo
-- <p>An object describing a Kinesis video stream.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [Status] <p>The status of the stream.</p>
-- * DeviceName [DeviceName] <p>The name of the device that is associated with the stream.</p>
-- * StreamName [StreamName] <p>The name of the stream.</p>
-- * CreationTime [Timestamp] <p>A time stamp that indicates when the stream was created.</p>
-- * MediaType [MediaType] <p>The <code>MediaType</code> of the stream. </p>
-- * Version [Version] <p>The version of the stream.</p>
-- * StreamARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the stream.</p>
-- * KmsKeyId [KmsKeyId] <p>The ID of the AWS Key Management Service (AWS KMS) key that Kinesis Video Streams uses to encrypt data on the stream.</p>
-- * DataRetentionInHours [DataRetentionInHours] <p>How long the stream retains data, in hours.</p>
-- @return StreamInfo structure as a key-value pair table
function M.StreamInfo(args)
	assert(args, "You must provide an argument table when creating StreamInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["DeviceName"] = args["DeviceName"],
		["StreamName"] = args["StreamName"],
		["CreationTime"] = args["CreationTime"],
		["MediaType"] = args["MediaType"],
		["Version"] = args["Version"],
		["StreamARN"] = args["StreamARN"],
		["KmsKeyId"] = args["KmsKeyId"],
		["DataRetentionInHours"] = args["DataRetentionInHours"],
	}
	asserts.AssertStreamInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateStreamInput = { ["DataRetentionInHours"] = true, ["DeviceName"] = true, ["StreamName"] = true, ["MediaType"] = true, ["KmsKeyId"] = true, nil }

function asserts.AssertCreateStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateStreamInput to be of type 'table'")
	assert(struct["StreamName"], "Expected key StreamName to exist in table")
	if struct["DataRetentionInHours"] then asserts.AssertDataRetentionInHours(struct["DataRetentionInHours"]) end
	if struct["DeviceName"] then asserts.AssertDeviceName(struct["DeviceName"]) end
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["MediaType"] then asserts.AssertMediaType(struct["MediaType"]) end
	if struct["KmsKeyId"] then asserts.AssertKmsKeyId(struct["KmsKeyId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateStreamInput[k], "CreateStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateStreamInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataRetentionInHours [DataRetentionInHours] <p>The number of hours that you want to retain the data in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream.</p> <p>The default value is 0, indicating that the stream does not persist data.</p> <p>When the <code>DataRetentionInHours</code> value is 0, consumers can still consume the fragments that remain in the service host buffer, which has a retention time limit of 5 minutes and a retention memory limit of 200 MB. Fragments are removed from the buffer when either limit is reached.</p>
-- * DeviceName [DeviceName] <p>The name of the device that is writing to the stream. </p> <note> <p>In the current implementation, Kinesis Video Streams does not use this name.</p> </note>
-- * StreamName [StreamName] <p>A name for the stream that you are creating.</p> <p>The stream name is an identifier for the stream, and must be unique for each account and region.</p>
-- * MediaType [MediaType] <p>The media type of the stream. Consumers of the stream can use this information when processing the stream. For more information about media types, see <a href="http://www.iana.org/assignments/media-types/media-types.xhtml">Media Types</a>. If you choose to specify the <code>MediaType</code>, see <a href="https://tools.ietf.org/html/rfc6838#section-4.2">Naming Requirements</a> for guidelines.</p> <p>To play video on the console, the media must be H.264 encoded, and you need to specify this video type in this parameter as <code>video/h264</code>. </p> <p>This parameter is optional; the default value is <code>null</code> (or empty in JSON).</p>
-- * KmsKeyId [KmsKeyId] <p>The ID of the AWS Key Management Service (AWS KMS) key that you want Kinesis Video Streams to use to encrypt stream data.</p> <p>If no key ID is specified, the default, Kinesis Video-managed key (<code>aws/kinesisvideo</code>) is used.</p> <p> For more information, see <a href="http://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestParameters">DescribeKey</a>. </p>
-- Required key: StreamName
-- @return CreateStreamInput structure as a key-value pair table
function M.CreateStreamInput(args)
	assert(args, "You must provide an argument table when creating CreateStreamInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataRetentionInHours"] = args["DataRetentionInHours"],
		["DeviceName"] = args["DeviceName"],
		["StreamName"] = args["StreamName"],
		["MediaType"] = args["MediaType"],
		["KmsKeyId"] = args["KmsKeyId"],
	}
	asserts.AssertCreateStreamInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TagsPerResourceExceededLimitException = { ["Message"] = true, nil }

function asserts.AssertTagsPerResourceExceededLimitException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TagsPerResourceExceededLimitException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TagsPerResourceExceededLimitException[k], "TagsPerResourceExceededLimitException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TagsPerResourceExceededLimitException
-- <p>You have exceeded the limit of tags that you can associate with the resource. Kinesis video streams support up to 50 tags. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return TagsPerResourceExceededLimitException structure as a key-value pair table
function M.TagsPerResourceExceededLimitException(args)
	assert(args, "You must provide an argument table when creating TagsPerResourceExceededLimitException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertTagsPerResourceExceededLimitException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDataEndpointOutput = { ["DataEndpoint"] = true, nil }

function asserts.AssertGetDataEndpointOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDataEndpointOutput to be of type 'table'")
	if struct["DataEndpoint"] then asserts.AssertDataEndpoint(struct["DataEndpoint"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDataEndpointOutput[k], "GetDataEndpointOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDataEndpointOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataEndpoint [DataEndpoint] <p>The endpoint value. To read data from the stream or to write data to it, specify this endpoint in your application.</p>
-- @return GetDataEndpointOutput structure as a key-value pair table
function M.GetDataEndpointOutput(args)
	assert(args, "You must provide an argument table when creating GetDataEndpointOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataEndpoint"] = args["DataEndpoint"],
	}
	asserts.AssertGetDataEndpointOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeStreamInput = { ["StreamName"] = true, ["StreamARN"] = true, nil }

function asserts.AssertDescribeStreamInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeStreamInput to be of type 'table'")
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["StreamARN"] then asserts.AssertResourceARN(struct["StreamARN"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeStreamInput[k], "DescribeStreamInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeStreamInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamName [StreamName] <p>The name of the stream.</p>
-- * StreamARN [ResourceARN] <p>The Amazon Resource Name (ARN) of the stream.</p>
-- @return DescribeStreamInput structure as a key-value pair table
function M.DescribeStreamInput(args)
	assert(args, "You must provide an argument table when creating DescribeStreamInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamName"] = args["StreamName"],
		["StreamARN"] = args["StreamARN"],
	}
	asserts.AssertDescribeStreamInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceNotFoundException = { ["Message"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>Amazon Kinesis Video Streams can't find the stream that you specified.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return ResourceNotFoundException structure as a key-value pair table
function M.ResourceNotFoundException(args)
	assert(args, "You must provide an argument table when creating ResourceNotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertResourceNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertStreamName(str)
	assert(str)
	assert(type(str) == "string", "Expected StreamName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.StreamName(str)
	asserts.AssertStreamName(str)
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

function asserts.AssertVersion(str)
	assert(str)
	assert(type(str) == "string", "Expected Version to be of type 'string'")
	assert(#str <= 64, "Expected string to be max 64 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.Version(str)
	asserts.AssertVersion(str)
	return str
end

function asserts.AssertUpdateDataRetentionOperation(str)
	assert(str)
	assert(type(str) == "string", "Expected UpdateDataRetentionOperation to be of type 'string'")
end

--  
function M.UpdateDataRetentionOperation(str)
	asserts.AssertUpdateDataRetentionOperation(str)
	return str
end

function asserts.AssertNextToken(str)
	assert(str)
	assert(type(str) == "string", "Expected NextToken to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
end

--  
function M.NextToken(str)
	asserts.AssertNextToken(str)
	return str
end

function asserts.AssertStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected Status to be of type 'string'")
end

--  
function M.Status(str)
	asserts.AssertStatus(str)
	return str
end

function asserts.AssertDeviceName(str)
	assert(str)
	assert(type(str) == "string", "Expected DeviceName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DeviceName(str)
	asserts.AssertDeviceName(str)
	return str
end

function asserts.AssertComparisonOperator(str)
	assert(str)
	assert(type(str) == "string", "Expected ComparisonOperator to be of type 'string'")
end

--  
function M.ComparisonOperator(str)
	asserts.AssertComparisonOperator(str)
	return str
end

function asserts.AssertDataEndpoint(str)
	assert(str)
	assert(type(str) == "string", "Expected DataEndpoint to be of type 'string'")
end

--  
function M.DataEndpoint(str)
	asserts.AssertDataEndpoint(str)
	return str
end

function asserts.AssertAPIName(str)
	assert(str)
	assert(type(str) == "string", "Expected APIName to be of type 'string'")
end

--  
function M.APIName(str)
	asserts.AssertAPIName(str)
	return str
end

function asserts.AssertMediaType(str)
	assert(str)
	assert(type(str) == "string", "Expected MediaType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MediaType(str)
	asserts.AssertMediaType(str)
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

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertResourceARN(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceARN to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ResourceARN(str)
	asserts.AssertResourceARN(str)
	return str
end

function asserts.AssertKmsKeyId(str)
	assert(str)
	assert(type(str) == "string", "Expected KmsKeyId to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.KmsKeyId(str)
	asserts.AssertKmsKeyId(str)
	return str
end

function asserts.AssertListStreamsInputLimit(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ListStreamsInputLimit to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10000, "Expected integer to be max 10000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.ListStreamsInputLimit(integer)
	asserts.AssertListStreamsInputLimit(integer)
	return integer
end

function asserts.AssertDataRetentionInHours(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected DataRetentionInHours to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.DataRetentionInHours(integer)
	asserts.AssertDataRetentionInHours(integer)
	return integer
end

function asserts.AssertDataRetentionChangeInHours(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected DataRetentionChangeInHours to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.DataRetentionChangeInHours(integer)
	asserts.AssertDataRetentionChangeInHours(integer)
	return integer
end

function asserts.AssertResourceTags(map)
	assert(map)
	assert(type(map) == "table", "Expected ResourceTags to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertTagKey(k)
		asserts.AssertTagValue(v)
	end
end

function M.ResourceTags(map)
	asserts.AssertResourceTags(map)
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

function asserts.AssertStreamInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected StreamInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertStreamInfo(v)
	end
end

--  
-- List of StreamInfo objects
function M.StreamInfoList(list)
	asserts.AssertStreamInfoList(list)
	return list
end

function asserts.AssertTagKeyList(list)
	assert(list)
	assert(type(list) == "table", "Expected TagKeyList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertTagKey(v)
	end
end

--  
-- List of TagKey objects
function M.TagKeyList(list)
	asserts.AssertTagKeyList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "kinesisvideo.amazonaws.com"
		end
	end
	local ss = { "kinesisvideo" }
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
--- Call GetDataEndpoint asynchronously, invoking a callback when done
-- @param GetDataEndpointInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDataEndpointAsync(GetDataEndpointInput, cb)
	assert(GetDataEndpointInput, "You must provide a GetDataEndpointInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDataEndpoint",
	}
	for header,value in pairs(GetDataEndpointInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/getDataEndpoint", GetDataEndpointInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDataEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDataEndpointInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetDataEndpointSync(GetDataEndpointInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDataEndpointAsync(GetDataEndpointInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDataRetention asynchronously, invoking a callback when done
-- @param UpdateDataRetentionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDataRetentionAsync(UpdateDataRetentionInput, cb)
	assert(UpdateDataRetentionInput, "You must provide a UpdateDataRetentionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateDataRetention",
	}
	for header,value in pairs(UpdateDataRetentionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/updateDataRetention", UpdateDataRetentionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDataRetention synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDataRetentionInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDataRetentionSync(UpdateDataRetentionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDataRetentionAsync(UpdateDataRetentionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteStream asynchronously, invoking a callback when done
-- @param DeleteStreamInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteStreamAsync(DeleteStreamInput, cb)
	assert(DeleteStreamInput, "You must provide a DeleteStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteStream",
	}
	for header,value in pairs(DeleteStreamInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/deleteStream", DeleteStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteStreamInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteStreamSync(DeleteStreamInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteStreamAsync(DeleteStreamInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListStreams asynchronously, invoking a callback when done
-- @param ListStreamsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListStreamsAsync(ListStreamsInput, cb)
	assert(ListStreamsInput, "You must provide a ListStreamsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListStreams",
	}
	for header,value in pairs(ListStreamsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/listStreams", ListStreamsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListStreams synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListStreamsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListStreamsSync(ListStreamsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListStreamsAsync(ListStreamsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UntagStream asynchronously, invoking a callback when done
-- @param UntagStreamInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UntagStreamAsync(UntagStreamInput, cb)
	assert(UntagStreamInput, "You must provide a UntagStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UntagStream",
	}
	for header,value in pairs(UntagStreamInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/untagStream", UntagStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UntagStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UntagStreamInput
-- @return response
-- @return error_type
-- @return error_message
function M.UntagStreamSync(UntagStreamInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UntagStreamAsync(UntagStreamInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTagsForStream asynchronously, invoking a callback when done
-- @param ListTagsForStreamInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTagsForStreamAsync(ListTagsForStreamInput, cb)
	assert(ListTagsForStreamInput, "You must provide a ListTagsForStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTagsForStream",
	}
	for header,value in pairs(ListTagsForStreamInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/listTagsForStream", ListTagsForStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTagsForStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTagsForStreamInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListTagsForStreamSync(ListTagsForStreamInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTagsForStreamAsync(ListTagsForStreamInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateStream asynchronously, invoking a callback when done
-- @param CreateStreamInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateStreamAsync(CreateStreamInput, cb)
	assert(CreateStreamInput, "You must provide a CreateStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateStream",
	}
	for header,value in pairs(CreateStreamInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/createStream", CreateStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateStreamInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateStreamSync(CreateStreamInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateStreamAsync(CreateStreamInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call TagStream asynchronously, invoking a callback when done
-- @param TagStreamInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TagStreamAsync(TagStreamInput, cb)
	assert(TagStreamInput, "You must provide a TagStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".TagStream",
	}
	for header,value in pairs(TagStreamInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/tagStream", TagStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TagStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TagStreamInput
-- @return response
-- @return error_type
-- @return error_message
function M.TagStreamSync(TagStreamInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TagStreamAsync(TagStreamInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateStream asynchronously, invoking a callback when done
-- @param UpdateStreamInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateStreamAsync(UpdateStreamInput, cb)
	assert(UpdateStreamInput, "You must provide a UpdateStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateStream",
	}
	for header,value in pairs(UpdateStreamInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/updateStream", UpdateStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateStreamInput
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateStreamSync(UpdateStreamInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateStreamAsync(UpdateStreamInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DescribeStream asynchronously, invoking a callback when done
-- @param DescribeStreamInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeStreamAsync(DescribeStreamInput, cb)
	assert(DescribeStreamInput, "You must provide a DescribeStreamInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DescribeStream",
	}
	for header,value in pairs(DescribeStreamInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/describeStream", DescribeStreamInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeStream synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeStreamInput
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeStreamSync(DescribeStreamInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeStreamAsync(DescribeStreamInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
