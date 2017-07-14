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

local InvalidRequestException_keys = { "message" = true, nil }

function M.AssertInvalidRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidRequestException_keys[k], "InvalidRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestException
-- &lt;p&gt;The request is not valid.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;The message for the exception.&lt;/p&gt;
function M.InvalidRequestException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRequestException")
	local t = { 
		["message"] = message,
	}
	M.AssertInvalidRequestException(t)
	return t
end

local ServiceUnavailableException_keys = { "message" = true, nil }

function M.AssertServiceUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceUnavailableException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ServiceUnavailableException_keys[k], "ServiceUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceUnavailableException
-- &lt;p&gt;The service is temporarily unavailable.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;The message for the exception.&lt;/p&gt;
function M.ServiceUnavailableException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceUnavailableException")
	local t = { 
		["message"] = message,
	}
	M.AssertServiceUnavailableException(t)
	return t
end

local RequestEntityTooLargeException_keys = { "message" = true, nil }

function M.AssertRequestEntityTooLargeException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected RequestEntityTooLargeException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(RequestEntityTooLargeException_keys[k], "RequestEntityTooLargeException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type RequestEntityTooLargeException
-- &lt;p&gt;The payload exceeds the maximum size allowed.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The message for the exception.&lt;/p&gt;
function M.RequestEntityTooLargeException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestEntityTooLargeException")
	local t = { 
		["message"] = message,
	}
	M.AssertRequestEntityTooLargeException(t)
	return t
end

local UnauthorizedException_keys = { "message" = true, nil }

function M.AssertUnauthorizedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthorizedException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnauthorizedException_keys[k], "UnauthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthorizedException
-- &lt;p&gt;You are not authorized to perform this operation.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;The message for the exception.&lt;/p&gt;
function M.UnauthorizedException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnauthorizedException")
	local t = { 
		["message"] = message,
	}
	M.AssertUnauthorizedException(t)
	return t
end

local PublishRequest_keys = { "topic" = true, "qos" = true, "payload" = true, nil }

function M.AssertPublishRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PublishRequest to be of type 'table'")
	assert(struct["topic"], "Expected key topic to exist in table")
	if struct["topic"] then M.AssertTopic(struct["topic"]) end
	if struct["qos"] then M.AssertQos(struct["qos"]) end
	if struct["payload"] then M.AssertPayload(struct["payload"]) end
	for k,_ in pairs(struct) do
		assert(PublishRequest_keys[k], "PublishRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PublishRequest
-- &lt;p&gt;The input for the Publish operation.&lt;/p&gt;
-- @param topic [Topic] &lt;p&gt;The name of the MQTT topic.&lt;/p&gt;
-- @param qos [Qos] &lt;p&gt;The Quality of Service (QoS) level.&lt;/p&gt;
-- @param payload [Payload] &lt;p&gt;The state information, in JSON format.&lt;/p&gt;
-- Required parameter: topic
function M.PublishRequest(topic, qos, payload, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PublishRequest")
	local t = { 
		["topic"] = topic,
		["qos"] = qos,
		["payload"] = payload,
	}
	M.AssertPublishRequest(t)
	return t
end

local UpdateThingShadowRequest_keys = { "thingName" = true, "payload" = true, nil }

function M.AssertUpdateThingShadowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateThingShadowRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	assert(struct["payload"], "Expected key payload to exist in table")
	if struct["thingName"] then M.AssertThingName(struct["thingName"]) end
	if struct["payload"] then M.AssertJsonDocument(struct["payload"]) end
	for k,_ in pairs(struct) do
		assert(UpdateThingShadowRequest_keys[k], "UpdateThingShadowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateThingShadowRequest
-- &lt;p&gt;The input for the UpdateThingShadow operation.&lt;/p&gt;
-- @param thingName [ThingName] &lt;p&gt;The name of the thing.&lt;/p&gt;
-- @param payload [JsonDocument] &lt;p&gt;The state information, in JSON format.&lt;/p&gt;
-- Required parameter: thingName
-- Required parameter: payload
function M.UpdateThingShadowRequest(thingName, payload, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateThingShadowRequest")
	local t = { 
		["thingName"] = thingName,
		["payload"] = payload,
	}
	M.AssertUpdateThingShadowRequest(t)
	return t
end

local UnsupportedDocumentEncodingException_keys = { "message" = true, nil }

function M.AssertUnsupportedDocumentEncodingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedDocumentEncodingException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(UnsupportedDocumentEncodingException_keys[k], "UnsupportedDocumentEncodingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedDocumentEncodingException
-- &lt;p&gt;The document encoding is not supported.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;The message for the exception.&lt;/p&gt;
function M.UnsupportedDocumentEncodingException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedDocumentEncodingException")
	local t = { 
		["message"] = message,
	}
	M.AssertUnsupportedDocumentEncodingException(t)
	return t
end

local UpdateThingShadowResponse_keys = { "payload" = true, nil }

function M.AssertUpdateThingShadowResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateThingShadowResponse to be of type 'table'")
	if struct["payload"] then M.AssertJsonDocument(struct["payload"]) end
	for k,_ in pairs(struct) do
		assert(UpdateThingShadowResponse_keys[k], "UpdateThingShadowResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateThingShadowResponse
-- &lt;p&gt;The output from the UpdateThingShadow operation.&lt;/p&gt;
-- @param payload [JsonDocument] &lt;p&gt;The state information, in JSON format.&lt;/p&gt;
function M.UpdateThingShadowResponse(payload, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateThingShadowResponse")
	local t = { 
		["payload"] = payload,
	}
	M.AssertUpdateThingShadowResponse(t)
	return t
end

local GetThingShadowRequest_keys = { "thingName" = true, nil }

function M.AssertGetThingShadowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetThingShadowRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["thingName"] then M.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(GetThingShadowRequest_keys[k], "GetThingShadowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetThingShadowRequest
-- &lt;p&gt;The input for the GetThingShadow operation.&lt;/p&gt;
-- @param thingName [ThingName] &lt;p&gt;The name of the thing.&lt;/p&gt;
-- Required parameter: thingName
function M.GetThingShadowRequest(thingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetThingShadowRequest")
	local t = { 
		["thingName"] = thingName,
	}
	M.AssertGetThingShadowRequest(t)
	return t
end

local DeleteThingShadowResponse_keys = { "payload" = true, nil }

function M.AssertDeleteThingShadowResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteThingShadowResponse to be of type 'table'")
	assert(struct["payload"], "Expected key payload to exist in table")
	if struct["payload"] then M.AssertJsonDocument(struct["payload"]) end
	for k,_ in pairs(struct) do
		assert(DeleteThingShadowResponse_keys[k], "DeleteThingShadowResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteThingShadowResponse
-- &lt;p&gt;The output from the DeleteThingShadow operation.&lt;/p&gt;
-- @param payload [JsonDocument] &lt;p&gt;The state information, in JSON format.&lt;/p&gt;
-- Required parameter: payload
function M.DeleteThingShadowResponse(payload, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteThingShadowResponse")
	local t = { 
		["payload"] = payload,
	}
	M.AssertDeleteThingShadowResponse(t)
	return t
end

local InternalFailureException_keys = { "message" = true, nil }

function M.AssertInternalFailureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalFailureException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(InternalFailureException_keys[k], "InternalFailureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalFailureException
-- &lt;p&gt;An unexpected error has occurred.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;The message for the exception.&lt;/p&gt;
function M.InternalFailureException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalFailureException")
	local t = { 
		["message"] = message,
	}
	M.AssertInternalFailureException(t)
	return t
end

local ConflictException_keys = { "message" = true, nil }

function M.AssertConflictException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConflictException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ConflictException_keys[k], "ConflictException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConflictException
-- &lt;p&gt;The specified version does not match the version of the document.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The message for the exception.&lt;/p&gt;
function M.ConflictException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConflictException")
	local t = { 
		["message"] = message,
	}
	M.AssertConflictException(t)
	return t
end

local GetThingShadowResponse_keys = { "payload" = true, nil }

function M.AssertGetThingShadowResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetThingShadowResponse to be of type 'table'")
	if struct["payload"] then M.AssertJsonDocument(struct["payload"]) end
	for k,_ in pairs(struct) do
		assert(GetThingShadowResponse_keys[k], "GetThingShadowResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetThingShadowResponse
-- &lt;p&gt;The output from the GetThingShadow operation.&lt;/p&gt;
-- @param payload [JsonDocument] &lt;p&gt;The state information, in JSON format.&lt;/p&gt;
function M.GetThingShadowResponse(payload, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetThingShadowResponse")
	local t = { 
		["payload"] = payload,
	}
	M.AssertGetThingShadowResponse(t)
	return t
end

local MethodNotAllowedException_keys = { "message" = true, nil }

function M.AssertMethodNotAllowedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MethodNotAllowedException to be of type 'table'")
	if struct["message"] then M.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(MethodNotAllowedException_keys[k], "MethodNotAllowedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MethodNotAllowedException
-- &lt;p&gt;The specified combination of HTTP verb and URI is not supported.&lt;/p&gt;
-- @param message [ErrorMessage] &lt;p&gt;The message for the exception.&lt;/p&gt;
function M.MethodNotAllowedException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MethodNotAllowedException")
	local t = { 
		["message"] = message,
	}
	M.AssertMethodNotAllowedException(t)
	return t
end

local ResourceNotFoundException_keys = { "message" = true, nil }

function M.AssertResourceNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceNotFoundException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ResourceNotFoundException_keys[k], "ResourceNotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceNotFoundException
-- &lt;p&gt;The specified resource does not exist.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;The message for the exception.&lt;/p&gt;
function M.ResourceNotFoundException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = message,
	}
	M.AssertResourceNotFoundException(t)
	return t
end

local ThrottlingException_keys = { "message" = true, nil }

function M.AssertThrottlingException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ThrottlingException to be of type 'table'")
	if struct["message"] then M.AsserterrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(ThrottlingException_keys[k], "ThrottlingException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ThrottlingException
-- &lt;p&gt;The rate exceeds the limit.&lt;/p&gt;
-- @param message [errorMessage] &lt;p&gt;The message for the exception.&lt;/p&gt;
function M.ThrottlingException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThrottlingException")
	local t = { 
		["message"] = message,
	}
	M.AssertThrottlingException(t)
	return t
end

local DeleteThingShadowRequest_keys = { "thingName" = true, nil }

function M.AssertDeleteThingShadowRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteThingShadowRequest to be of type 'table'")
	assert(struct["thingName"], "Expected key thingName to exist in table")
	if struct["thingName"] then M.AssertThingName(struct["thingName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteThingShadowRequest_keys[k], "DeleteThingShadowRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteThingShadowRequest
-- &lt;p&gt;The input for the DeleteThingShadow operation.&lt;/p&gt;
-- @param thingName [ThingName] &lt;p&gt;The name of the thing.&lt;/p&gt;
-- Required parameter: thingName
function M.DeleteThingShadowRequest(thingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteThingShadowRequest")
	local t = { 
		["thingName"] = thingName,
	}
	M.AssertDeleteThingShadowRequest(t)
	return t
end

function M.AssertThingName(str)
	assert(str)
	assert(type(str) == "string", "Expected ThingName to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
	assert(str:match("[a-zA-Z0-9_-]+"), "Expected string to match pattern '[a-zA-Z0-9_-]+'")
end

--  
function M.ThingName(str)
	M.AssertThingName(str)
	return str
end

function M.AsserterrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected errorMessage to be of type 'string'")
end

--  
function M.errorMessage(str)
	M.AsserterrorMessage(str)
	return str
end

function M.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	M.AssertErrorMessage(str)
	return str
end

function M.AssertTopic(str)
	assert(str)
	assert(type(str) == "string", "Expected Topic to be of type 'string'")
end

--  
function M.Topic(str)
	M.AssertTopic(str)
	return str
end

function M.AssertQos(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Qos to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1, "Expected integer to be max 1")
end

function M.Qos(integer)
	M.AssertQos(integer)
	return integer
end

function M.AssertJsonDocument(blob)
	assert(blob)
	assert(type(string) == "string", "Expected JsonDocument to be of type 'string'")
end

function M.JsonDocument(blob)
	M.AssertJsonDocument(blob)
	return blob
end

function M.AssertPayload(blob)
	assert(blob)
	assert(type(string) == "string", "Expected Payload to be of type 'string'")
end

function M.Payload(blob)
	M.AssertPayload(blob)
	return blob
end


local headers = require "aws-sdk.core.headers"
local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_handlers = require "aws-sdk.core.request_handlers"

local uri = ""


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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- UpdateThingShadow
-- @param UpdateThingShadowRequest
-- @param cb Callback function accepting two args: response, error_message
function M.UpdateThingShadowAsync(UpdateThingShadowRequest, cb)
	assert(UpdateThingShadowRequest, "You must provide a UpdateThingShadowRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".UpdateThingShadow",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/things/{thingName}/shadow", UpdateThingShadowRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetThingShadow
-- @param GetThingShadowRequest
-- @param cb Callback function accepting two args: response, error_message
function M.GetThingShadowAsync(GetThingShadowRequest, cb)
	assert(GetThingShadowRequest, "You must provide a GetThingShadowRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".GetThingShadow",
	}

	local request_handler, err = request_handlers.from_http_method("GET")
	if request_handler then
		request_handler(uri .. "/things/{thingName}/shadow", GetThingShadowRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- Publish
-- @param PublishRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PublishAsync(PublishRequest, cb)
	assert(PublishRequest, "You must provide a PublishRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".Publish",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/topics/{topic}", PublishRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteThingShadow
-- @param DeleteThingShadowRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteThingShadowAsync(DeleteThingShadowRequest, cb)
	assert(DeleteThingShadowRequest, "You must provide a DeleteThingShadowRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".DeleteThingShadow",
	}

	local request_handler, err = request_handlers.from_http_method("DELETE")
	if request_handler then
		request_handler(uri .. "/things/{thingName}/shadow", DeleteThingShadowRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
