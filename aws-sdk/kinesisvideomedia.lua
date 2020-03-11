--- GENERATED CODE - DO NOT MODIFY
-- Amazon Kinesis Video Streams Media (kinesis-video-media-2017-09-30)

local M = {}

M.metadata = {
	api_version = "2017-09-30",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "kinesisvideo",
	service_abbreviation = "Kinesis Video Media",
	service_full_name = "Amazon Kinesis Video Streams Media",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "kinesis-video-media-2017-09-30",
}

local keys = {}
local asserts = {}

keys.InvalidEndpointException = { ["Message"] = true, nil }

function asserts.AssertInvalidEndpointException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidEndpointException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidEndpointException[k], "InvalidEndpointException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidEndpointException
-- <p> Status Code: 400, Caller used wrong endpoint to write data to a stream. On receiving such an exception, the user must call <code>GetDataEndpoint</code> with <code>AccessMode</code> set to "READ" and use the endpoint Kinesis Video returns in the next <code>GetMedia</code> call. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return InvalidEndpointException structure as a key-value pair table
function M.InvalidEndpointException(args)
	assert(args, "You must provide an argument table when creating InvalidEndpointException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidEndpointException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetMediaOutput = { ["ContentType"] = true, ["Payload"] = true, nil }

function asserts.AssertGetMediaOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMediaOutput to be of type 'table'")
	if struct["ContentType"] then asserts.AssertContentType(struct["ContentType"]) end
	if struct["Payload"] then asserts.AssertPayload(struct["Payload"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMediaOutput[k], "GetMediaOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMediaOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ContentType [ContentType] <p>The content type of the requested media.</p>
-- * Payload [Payload] <p> The payload Kinesis Video Streams returns is a sequence of chunks from the specified stream. For information about the chunks, see . The chunks that Kinesis Video Streams returns in the <code>GetMedia</code> call also include the following additional Matroska (MKV) tags: </p> <ul> <li> <p>AWS_KINESISVIDEO_CONTINUATION_TOKEN (UTF-8 string) - In the event your <code>GetMedia</code> call terminates, you can use this continuation token in your next request to get the next chunk where the last request terminated.</p> </li> <li> <p>AWS_KINESISVIDEO_MILLIS_BEHIND_NOW (UTF-8 string) - Client applications can use this tag value to determine how far behind the chunk returned in the response is from the latest chunk on the stream. </p> </li> <li> <p>AWS_KINESISVIDEO_FRAGMENT_NUMBER - Fragment number returned in the chunk.</p> </li> <li> <p>AWS_KINESISVIDEO_SERVER_TIMESTAMP - Server time stamp of the fragment.</p> </li> <li> <p>AWS_KINESISVIDEO_PRODUCER_TIMESTAMP - Producer time stamp of the fragment.</p> </li> </ul> <p>The following tags will be present if an error occurs:</p> <ul> <li> <p>AWS_KINESISVIDEO_ERROR_CODE - String description of an error that caused GetMedia to stop.</p> </li> <li> <p>AWS_KINESISVIDEO_ERROR_ID: Integer code of the error.</p> </li> </ul> <p>The error codes are as follows:</p> <ul> <li> <p>3002 - Error writing to the stream</p> </li> <li> <p>4000 - Requested fragment is not found</p> </li> <li> <p>4500 - Access denied for the stream's KMS key</p> </li> <li> <p>4501 - Stream's KMS key is disabled</p> </li> <li> <p>4502 - Validation error on the Stream's KMS key</p> </li> <li> <p>4503 - KMS key specified in the stream is unavailable</p> </li> <li> <p>4504 - Invalid usage of the KMS key specified in the stream</p> </li> <li> <p>4505 - Invalid state of the KMS key specified in the stream</p> </li> <li> <p>4506 - Unable to find the KMS key specified in the stream</p> </li> <li> <p>5000 - Internal error</p> </li> </ul>
-- @return GetMediaOutput structure as a key-value pair table
function M.GetMediaOutput(args)
	assert(args, "You must provide an argument table when creating GetMediaOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["Content-Type"] = args["ContentType"],
    }
	local all_args = { 
		["ContentType"] = args["ContentType"],
		["Payload"] = args["Payload"],
	}
	asserts.AssertGetMediaOutput(all_args)
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

keys.GetMediaInput = { ["StreamName"] = true, ["StreamARN"] = true, ["StartSelector"] = true, nil }

function asserts.AssertGetMediaInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMediaInput to be of type 'table'")
	assert(struct["StartSelector"], "Expected key StartSelector to exist in table")
	if struct["StreamName"] then asserts.AssertStreamName(struct["StreamName"]) end
	if struct["StreamARN"] then asserts.AssertResourceARN(struct["StreamARN"]) end
	if struct["StartSelector"] then asserts.AssertStartSelector(struct["StartSelector"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMediaInput[k], "GetMediaInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMediaInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StreamName [StreamName] <p>The Kinesis video stream name from where you want to get the media content. If you don't specify the <code>streamName</code>, you must specify the <code>streamARN</code>.</p>
-- * StreamARN [ResourceARN] <p>The ARN of the stream from where you want to get the media content. If you don't specify the <code>streamARN</code>, you must specify the <code>streamName</code>.</p>
-- * StartSelector [StartSelector] <p>Identifies the starting chunk to get from the specified stream. </p>
-- Required key: StartSelector
-- @return GetMediaInput structure as a key-value pair table
function M.GetMediaInput(args)
	assert(args, "You must provide an argument table when creating GetMediaInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StreamName"] = args["StreamName"],
		["StreamARN"] = args["StreamARN"],
		["StartSelector"] = args["StartSelector"],
	}
	asserts.AssertGetMediaInput(all_args)
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
-- <p>Status Code: 403, The caller is not authorized to perform an operation on the given stream, or the token has expired.</p>
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

keys.ConnectionLimitExceededException = { ["Message"] = true, nil }

function asserts.AssertConnectionLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConnectionLimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConnectionLimitExceededException[k], "ConnectionLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConnectionLimitExceededException
-- <p>Kinesis Video Streams has throttled the request because you have exceeded the limit of allowed client connections.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return ConnectionLimitExceededException structure as a key-value pair table
function M.ConnectionLimitExceededException(args)
	assert(args, "You must provide an argument table when creating ConnectionLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertConnectionLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartSelector = { ["StartSelectorType"] = true, ["StartTimestamp"] = true, ["AfterFragmentNumber"] = true, ["ContinuationToken"] = true, nil }

function asserts.AssertStartSelector(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartSelector to be of type 'table'")
	assert(struct["StartSelectorType"], "Expected key StartSelectorType to exist in table")
	if struct["StartSelectorType"] then asserts.AssertStartSelectorType(struct["StartSelectorType"]) end
	if struct["StartTimestamp"] then asserts.AssertTimestamp(struct["StartTimestamp"]) end
	if struct["AfterFragmentNumber"] then asserts.AssertFragmentNumberString(struct["AfterFragmentNumber"]) end
	if struct["ContinuationToken"] then asserts.AssertContinuationToken(struct["ContinuationToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartSelector[k], "StartSelector contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartSelector
-- <p>Identifies the chunk on the Kinesis video stream where you want the <code>GetMedia</code> API to start returning media data. You have the following options to identify the starting chunk: </p> <ul> <li> <p>Choose the latest (or oldest) chunk.</p> </li> <li> <p>Identify a specific chunk. You can identify a specific chunk either by providing a fragment number or time stamp (server or producer). </p> </li> <li> <p>Each chunk's metadata includes a continuation token as a Matroska (MKV) tag (<code>AWS_KINESISVIDEO_CONTINUATION_TOKEN</code>). If your previous <code>GetMedia</code> request terminated, you can use this tag value in your next <code>GetMedia</code> request. The API then starts returning chunks starting where the last API ended.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StartSelectorType [StartSelectorType] <p>Identifies the fragment on the Kinesis video stream where you want to start getting the data from.</p> <ul> <li> <p>NOW - Start with the latest chunk on the stream.</p> </li> <li> <p>EARLIEST - Start with earliest available chunk on the stream.</p> </li> <li> <p>FRAGMENT_NUMBER - Start with the chunk containing the specific fragment. You must also specify the <code>StartFragmentNumber</code>.</p> </li> <li> <p>PRODUCER_TIMESTAMP or SERVER_TIMESTAMP - Start with the chunk containing a fragment with the specified producer or server time stamp. You specify the time stamp by adding <code>StartTimestamp</code>.</p> </li> <li> <p> CONTINUATION_TOKEN - Read using the specified continuation token. </p> </li> </ul> <note> <p>If you choose the NOW, EARLIEST, or CONTINUATION_TOKEN as the <code>startSelectorType</code>, you don't provide any additional information in the <code>startSelector</code>.</p> </note>
-- * StartTimestamp [Timestamp] <p>A time stamp value. This value is required if you choose the PRODUCER_TIMESTAMP or the SERVER_TIMESTAMP as the <code>startSelectorType</code>. The <code>GetMedia</code> API then starts with the chunk containing the fragment that has the specified time stamp.</p>
-- * AfterFragmentNumber [FragmentNumberString] <p>Specifies the fragment number from where you want the <code>GetMedia</code> API to start returning the fragments. </p>
-- * ContinuationToken [ContinuationToken] <p>Continuation token that Kinesis Video Streams returned in the previous <code>GetMedia</code> response. The <code>GetMedia</code> API then starts with the chunk identified by the continuation token.</p>
-- Required key: StartSelectorType
-- @return StartSelector structure as a key-value pair table
function M.StartSelector(args)
	assert(args, "You must provide an argument table when creating StartSelector")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StartSelectorType"] = args["StartSelectorType"],
		["StartTimestamp"] = args["StartTimestamp"],
		["AfterFragmentNumber"] = args["AfterFragmentNumber"],
		["ContinuationToken"] = args["ContinuationToken"],
	}
	asserts.AssertStartSelector(all_args)
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
-- <p>Status Code: 404, The stream with the given name does not exist.</p>
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

function asserts.AssertFragmentNumberString(str)
	assert(str)
	assert(type(str) == "string", "Expected FragmentNumberString to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.FragmentNumberString(str)
	asserts.AssertFragmentNumberString(str)
	return str
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

function asserts.AssertContentType(str)
	assert(str)
	assert(type(str) == "string", "Expected ContentType to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ContentType(str)
	asserts.AssertContentType(str)
	return str
end

function asserts.AssertStartSelectorType(str)
	assert(str)
	assert(type(str) == "string", "Expected StartSelectorType to be of type 'string'")
end

--  
function M.StartSelectorType(str)
	asserts.AssertStartSelectorType(str)
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

function asserts.AssertContinuationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected ContinuationToken to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ContinuationToken(str)
	asserts.AssertContinuationToken(str)
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

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertPayload(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected Payload to be of type 'string'")
end

function M.Payload(blob)
	asserts.AssertPayload(blob)
	return blob
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
--- Call GetMedia asynchronously, invoking a callback when done
-- @param GetMediaInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetMediaAsync(GetMediaInput, cb)
	assert(GetMediaInput, "You must provide a GetMediaInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetMedia",
	}
	for header,value in pairs(GetMediaInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/getMedia", GetMediaInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetMedia synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetMediaInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetMediaSync(GetMediaInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetMediaAsync(GetMediaInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
