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
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.InvalidRequestException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRequestException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInvalidRequestException(t)
	return t
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
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.ServiceUnavailableException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ServiceUnavailableException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertServiceUnavailableException(t)
	return t
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
-- @param _message [ErrorMessage] <p>The message for the exception.</p>
function M.RequestEntityTooLargeException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating RequestEntityTooLargeException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertRequestEntityTooLargeException(t)
	return t
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
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.UnauthorizedException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnauthorizedException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertUnauthorizedException(t)
	return t
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
-- @param _topic [Topic] <p>The name of the MQTT topic.</p>
-- @param _qos [Qos] <p>The Quality of Service (QoS) level.</p>
-- @param _payload [Payload] <p>The state information, in JSON format.</p>
-- Required parameter: topic
function M.PublishRequest(_topic, _qos, _payload, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PublishRequest")
	local t = { 
		["topic"] = _topic,
		["qos"] = _qos,
		["payload"] = _payload,
	}
	asserts.AssertPublishRequest(t)
	return t
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
-- @param _thingName [ThingName] <p>The name of the thing.</p>
-- @param _payload [JsonDocument] <p>The state information, in JSON format.</p>
-- Required parameter: thingName
-- Required parameter: payload
function M.UpdateThingShadowRequest(_thingName, _payload, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateThingShadowRequest")
	local t = { 
		["thingName"] = _thingName,
		["payload"] = _payload,
	}
	asserts.AssertUpdateThingShadowRequest(t)
	return t
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
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.UnsupportedDocumentEncodingException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnsupportedDocumentEncodingException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertUnsupportedDocumentEncodingException(t)
	return t
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
-- @param _payload [JsonDocument] <p>The state information, in JSON format.</p>
function M.UpdateThingShadowResponse(_payload, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UpdateThingShadowResponse")
	local t = { 
		["payload"] = _payload,
	}
	asserts.AssertUpdateThingShadowResponse(t)
	return t
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
-- @param _thingName [ThingName] <p>The name of the thing.</p>
-- Required parameter: thingName
function M.GetThingShadowRequest(_thingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetThingShadowRequest")
	local t = { 
		["thingName"] = _thingName,
	}
	asserts.AssertGetThingShadowRequest(t)
	return t
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
-- @param _payload [JsonDocument] <p>The state information, in JSON format.</p>
-- Required parameter: payload
function M.DeleteThingShadowResponse(_payload, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteThingShadowResponse")
	local t = { 
		["payload"] = _payload,
	}
	asserts.AssertDeleteThingShadowResponse(t)
	return t
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
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.InternalFailureException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalFailureException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertInternalFailureException(t)
	return t
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
-- @param _message [ErrorMessage] <p>The message for the exception.</p>
function M.ConflictException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ConflictException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertConflictException(t)
	return t
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
-- @param _payload [JsonDocument] <p>The state information, in JSON format.</p>
function M.GetThingShadowResponse(_payload, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetThingShadowResponse")
	local t = { 
		["payload"] = _payload,
	}
	asserts.AssertGetThingShadowResponse(t)
	return t
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
-- @param _message [ErrorMessage] <p>The message for the exception.</p>
function M.MethodNotAllowedException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating MethodNotAllowedException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertMethodNotAllowedException(t)
	return t
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
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.ResourceNotFoundException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResourceNotFoundException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertResourceNotFoundException(t)
	return t
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
-- @param _message [errorMessage] <p>The message for the exception.</p>
function M.ThrottlingException(_message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ThrottlingException")
	local t = { 
		["message"] = _message,
	}
	asserts.AssertThrottlingException(t)
	return t
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
-- @param _thingName [ThingName] <p>The name of the thing.</p>
-- Required parameter: thingName
function M.DeleteThingShadowRequest(_thingName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteThingShadowRequest")
	local t = { 
		["thingName"] = _thingName,
	}
	asserts.AssertDeleteThingShadowRequest(t)
	return t
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
	assert(type(string) == "string", "Expected JsonDocument to be of type 'string'")
end

function M.JsonDocument(blob)
	asserts.AssertJsonDocument(blob)
	return blob
end

function asserts.AssertPayload(blob)
	assert(blob)
	assert(type(string) == "string", "Expected Payload to be of type 'string'")
end

function M.Payload(blob)
	asserts.AssertPayload(blob)
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
