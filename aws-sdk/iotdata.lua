--- GENERATED CODE - DO NOT MODIFY
-- AWS IoT Data Plane (iot-data-2015-05-28)

local M = {}

M.metadata = {
	api_version = "2015-05-28",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "data.iot",
	service_abbreviation = "",
	service_full_name = "AWS IoT Data Plane",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "iot-data-2015-05-28",
}

local keys = {}
local asserts = {}

keys.InvalidRequestException = { ["message"] = true, nil }

function asserts.AssertInvalidRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidRequestException[k], "InvalidRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestException
-- <p>The request is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return InvalidRequestException structure as a key-value pair table
function M.InvalidRequestException(args)
	assert(args, "You must provide an argument table when creating InvalidRequestException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInvalidRequestException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceUnavailableException = { ["message"] = true, nil }

function asserts.AssertServiceUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceUnavailableException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceUnavailableException[k], "ServiceUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceUnavailableException
-- <p>The service is temporarily unavailable.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return ServiceUnavailableException structure as a key-value pair table
function M.ServiceUnavailableException(args)
	assert(args, "You must provide an argument table when creating ServiceUnavailableException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertServiceUnavailableException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.RequestEntityTooLargeException = { ["message"] = true, nil }

function asserts.AssertRequestEntityTooLargeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestEntityTooLargeException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.RequestEntityTooLargeException[k], "RequestEntityTooLargeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestEntityTooLargeException
-- <p>The payload exceeds the maximum size allowed.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>The message for the exception.</p>
-- @return RequestEntityTooLargeException structure as a key-value pair table
function M.RequestEntityTooLargeException(args)
	assert(args, "You must provide an argument table when creating RequestEntityTooLargeException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertRequestEntityTooLargeException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnauthorizedException = { ["message"] = true, nil }

function asserts.AssertUnauthorizedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthorizedException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnauthorizedException[k], "UnauthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthorizedException
-- <p>You are not authorized to perform this operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return UnauthorizedException structure as a key-value pair table
function M.UnauthorizedException(args)
	assert(args, "You must provide an argument table when creating UnauthorizedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertUnauthorizedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PublishRequest = { ["topic"] = true, ["qos"] = true, ["payload"] = true, nil }

function asserts.AssertPublishRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublishRequest to be of type 'table'")
	assert(struct["topic"], "Expected key topic to exist in table")
	if struct["topic"] then asserts.AssertTopic(struct["topic"]) end
	if struct["qos"] then asserts.AssertQos(struct["qos"]) end
	if struct["payload"] then asserts.AssertPayload(struct["payload"]) end
	for k,_ in pairs(struct) do
		assert(keys.PublishRequest[k], "PublishRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublishRequest
-- <p>The input for the Publish operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * topic [Topic] <p>The name of the MQTT topic.</p>
-- * qos [Qos] <p>The Quality of Service (QoS) level.</p>
-- * payload [Payload] <p>The state information, in JSON format.</p>
-- Required key: topic
-- @return PublishRequest structure as a key-value pair table
function M.PublishRequest(args)
	assert(args, "You must provide an argument table when creating PublishRequest")
    local query_args = { 
        ["qos"] = args["qos"],
    }
    local uri_args = { 
        ["{topic}"] = args["topic"],
    }
    local header_args = { 
    }
	local all_args = { 
		["topic"] = args["topic"],
		["qos"] = args["qos"],
		["payload"] = args["payload"],
	}
	asserts.AssertPublishRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateThingShadowRequest = { ["thingName"] = true, ["payload"] = true, nil }

function asserts.AssertUpdateThingShadowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateThingShadowRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	assert(struct["payload"], "Expected key payload to exist in table")
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	if struct["payload"] then asserts.AssertJsonDocument(struct["payload"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateThingShadowRequest[k], "UpdateThingShadowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateThingShadowRequest
-- <p>The input for the UpdateThingShadow operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingName [ThingName] <p>The name of the thing.</p>
-- * payload [JsonDocument] <p>The state information, in JSON format.</p>
-- Required key: thingName
-- Required key: payload
-- @return UpdateThingShadowRequest structure as a key-value pair table
function M.UpdateThingShadowRequest(args)
	assert(args, "You must provide an argument table when creating UpdateThingShadowRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{thingName}"] = args["thingName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["thingName"] = args["thingName"],
		["payload"] = args["payload"],
	}
	asserts.AssertUpdateThingShadowRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnsupportedDocumentEncodingException = { ["message"] = true, nil }

function asserts.AssertUnsupportedDocumentEncodingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedDocumentEncodingException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedDocumentEncodingException[k], "UnsupportedDocumentEncodingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedDocumentEncodingException
-- <p>The document encoding is not supported.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return UnsupportedDocumentEncodingException structure as a key-value pair table
function M.UnsupportedDocumentEncodingException(args)
	assert(args, "You must provide an argument table when creating UnsupportedDocumentEncodingException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertUnsupportedDocumentEncodingException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateThingShadowResponse = { ["payload"] = true, nil }

function asserts.AssertUpdateThingShadowResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateThingShadowResponse to be of type 'table'")
	if struct["payload"] then asserts.AssertJsonDocument(struct["payload"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateThingShadowResponse[k], "UpdateThingShadowResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateThingShadowResponse
-- <p>The output from the UpdateThingShadow operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * payload [JsonDocument] <p>The state information, in JSON format.</p>
-- @return UpdateThingShadowResponse structure as a key-value pair table
function M.UpdateThingShadowResponse(args)
	assert(args, "You must provide an argument table when creating UpdateThingShadowResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["payload"] = args["payload"],
	}
	asserts.AssertUpdateThingShadowResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetThingShadowRequest = { ["thingName"] = true, nil }

function asserts.AssertGetThingShadowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetThingShadowRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetThingShadowRequest[k], "GetThingShadowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetThingShadowRequest
-- <p>The input for the GetThingShadow operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingName [ThingName] <p>The name of the thing.</p>
-- Required key: thingName
-- @return GetThingShadowRequest structure as a key-value pair table
function M.GetThingShadowRequest(args)
	assert(args, "You must provide an argument table when creating GetThingShadowRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{thingName}"] = args["thingName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["thingName"] = args["thingName"],
	}
	asserts.AssertGetThingShadowRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteThingShadowResponse = { ["payload"] = true, nil }

function asserts.AssertDeleteThingShadowResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteThingShadowResponse to be of type 'table'")
	assert(struct["payload"], "Expected key payload to exist in table")
	if struct["payload"] then asserts.AssertJsonDocument(struct["payload"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteThingShadowResponse[k], "DeleteThingShadowResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteThingShadowResponse
-- <p>The output from the DeleteThingShadow operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * payload [JsonDocument] <p>The state information, in JSON format.</p>
-- Required key: payload
-- @return DeleteThingShadowResponse structure as a key-value pair table
function M.DeleteThingShadowResponse(args)
	assert(args, "You must provide an argument table when creating DeleteThingShadowResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["payload"] = args["payload"],
	}
	asserts.AssertDeleteThingShadowResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InternalFailureException = { ["message"] = true, nil }

function asserts.AssertInternalFailureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalFailureException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalFailureException[k], "InternalFailureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalFailureException
-- <p>An unexpected error has occurred.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return InternalFailureException structure as a key-value pair table
function M.InternalFailureException(args)
	assert(args, "You must provide an argument table when creating InternalFailureException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInternalFailureException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConflictException = { ["message"] = true, nil }

function asserts.AssertConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConflictException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConflictException[k], "ConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConflictException
-- <p>The specified version does not match the version of the document.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>The message for the exception.</p>
-- @return ConflictException structure as a key-value pair table
function M.ConflictException(args)
	assert(args, "You must provide an argument table when creating ConflictException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertConflictException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetThingShadowResponse = { ["payload"] = true, nil }

function asserts.AssertGetThingShadowResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetThingShadowResponse to be of type 'table'")
	if struct["payload"] then asserts.AssertJsonDocument(struct["payload"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetThingShadowResponse[k], "GetThingShadowResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetThingShadowResponse
-- <p>The output from the GetThingShadow operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * payload [JsonDocument] <p>The state information, in JSON format.</p>
-- @return GetThingShadowResponse structure as a key-value pair table
function M.GetThingShadowResponse(args)
	assert(args, "You must provide an argument table when creating GetThingShadowResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["payload"] = args["payload"],
	}
	asserts.AssertGetThingShadowResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MethodNotAllowedException = { ["message"] = true, nil }

function asserts.AssertMethodNotAllowedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MethodNotAllowedException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.MethodNotAllowedException[k], "MethodNotAllowedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MethodNotAllowedException
-- <p>The specified combination of HTTP verb and URI is not supported.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] <p>The message for the exception.</p>
-- @return MethodNotAllowedException structure as a key-value pair table
function M.MethodNotAllowedException(args)
	assert(args, "You must provide an argument table when creating MethodNotAllowedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertMethodNotAllowedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceNotFoundException = { ["message"] = true, nil }

function asserts.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceNotFoundException[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- <p>The specified resource does not exist.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
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
		["message"] = args["message"],
	}
	asserts.AssertResourceNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ThrottlingException = { ["message"] = true, nil }

function asserts.AssertThrottlingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottlingException to be of type 'table'")
	if struct["message"] then asserts.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ThrottlingException[k], "ThrottlingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottlingException
-- <p>The rate exceeds the limit.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [errorMessage] <p>The message for the exception.</p>
-- @return ThrottlingException structure as a key-value pair table
function M.ThrottlingException(args)
	assert(args, "You must provide an argument table when creating ThrottlingException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertThrottlingException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteThingShadowRequest = { ["thingName"] = true, nil }

function asserts.AssertDeleteThingShadowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteThingShadowRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["thingName"] then asserts.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteThingShadowRequest[k], "DeleteThingShadowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteThingShadowRequest
-- <p>The input for the DeleteThingShadow operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * thingName [ThingName] <p>The name of the thing.</p>
-- Required key: thingName
-- @return DeleteThingShadowRequest structure as a key-value pair table
function M.DeleteThingShadowRequest(args)
	assert(args, "You must provide an argument table when creating DeleteThingShadowRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{thingName}"] = args["thingName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["thingName"] = args["thingName"],
	}
	asserts.AssertDeleteThingShadowRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertThingName(str)
	assert(str)
	assert(type(str) == "string", "Expected ThingName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ThingName(str)
	asserts.AssertThingName(str)
	return str
end

function asserts.AsserterrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected errorMessage to be of type 'string'")
end

--  
function M.errorMessage(str)
	asserts.AsserterrorMessage(str)
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

function asserts.AssertTopic(str)
	assert(str)
	assert(type(str) == "string", "Expected Topic to be of type 'string'")
end

--  
function M.Topic(str)
	asserts.AssertTopic(str)
	return str
end

function asserts.AssertQos(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Qos to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1, "Expected integer to be max 1")
end

function M.Qos(integer)
	asserts.AssertQos(integer)
	return integer
end

function asserts.AssertJsonDocument(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected JsonDocument to be of type 'string'")
end

function M.JsonDocument(blob)
	asserts.AssertJsonDocument(blob)
	return blob
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
			return "data.iot.amazonaws.com"
		end
	end
	local ss = { "data.iot" }
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
--- Call UpdateThingShadow asynchronously, invoking a callback when done
-- @param UpdateThingShadowRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateThingShadowAsync(UpdateThingShadowRequest, cb)
	assert(UpdateThingShadowRequest, "You must provide a UpdateThingShadowRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateThingShadow",
	}
	for header,value in pairs(UpdateThingShadowRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/things/{thingName}/shadow", UpdateThingShadowRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateThingShadow synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateThingShadowRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateThingShadowSync(UpdateThingShadowRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateThingShadowAsync(UpdateThingShadowRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetThingShadow asynchronously, invoking a callback when done
-- @param GetThingShadowRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetThingShadowAsync(GetThingShadowRequest, cb)
	assert(GetThingShadowRequest, "You must provide a GetThingShadowRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetThingShadow",
	}
	for header,value in pairs(GetThingShadowRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/things/{thingName}/shadow", GetThingShadowRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetThingShadow synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetThingShadowRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetThingShadowSync(GetThingShadowRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetThingShadowAsync(GetThingShadowRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call Publish asynchronously, invoking a callback when done
-- @param PublishRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PublishAsync(PublishRequest, cb)
	assert(PublishRequest, "You must provide a PublishRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".Publish",
	}
	for header,value in pairs(PublishRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/topics/{topic}", PublishRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call Publish synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PublishRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PublishSync(PublishRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PublishAsync(PublishRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteThingShadow asynchronously, invoking a callback when done
-- @param DeleteThingShadowRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteThingShadowAsync(DeleteThingShadowRequest, cb)
	assert(DeleteThingShadowRequest, "You must provide a DeleteThingShadowRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteThingShadow",
	}
	for header,value in pairs(DeleteThingShadowRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/things/{thingName}/shadow", DeleteThingShadowRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteThingShadow synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteThingShadowRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteThingShadowSync(DeleteThingShadowRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteThingShadowAsync(DeleteThingShadowRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
