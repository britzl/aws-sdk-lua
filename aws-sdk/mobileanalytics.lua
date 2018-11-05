--- GENERATED CODE - DO NOT MODIFY
-- Amazon Mobile Analytics ()

local M = {}

M.metadata = {
	api_version = "2014-06-05",
	json_version = "",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "mobileanalytics",
	service_abbreviation = "",
	service_full_name = "Amazon Mobile Analytics",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "",
}

local keys = {}
local asserts = {}

keys.BadRequestException = { ["message"] = true, nil }

function asserts.AssertBadRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BadRequestException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.BadRequestException[k], "BadRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BadRequestException
-- <p>An exception object returned when a request fails.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] <p>A text description associated with the BadRequestException object.</p>
-- @return BadRequestException structure as a key-value pair table
function M.BadRequestException(args)
	assert(args, "You must provide an argument table when creating BadRequestException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertBadRequestException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Session = { ["duration"] = true, ["startTimestamp"] = true, ["id"] = true, ["stopTimestamp"] = true, nil }

function asserts.AssertSession(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Session to be of type 'table'")
	if struct["duration"] then asserts.AssertLong(struct["duration"]) end
	if struct["startTimestamp"] then asserts.AssertISO8601Timestamp(struct["startTimestamp"]) end
	if struct["id"] then asserts.AssertString50Chars(struct["id"]) end
	if struct["stopTimestamp"] then asserts.AssertISO8601Timestamp(struct["stopTimestamp"]) end
	for k,_ in pairs(struct) do
		assert(keys.Session[k], "Session contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Session
-- <p>Describes the session. Session information is required on ALL events.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * duration [Long] <p>The duration of the session.</p>
-- * startTimestamp [ISO8601Timestamp] <p>The time the event started in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z</p>
-- * id [String50Chars] <p>A unique identifier for the session</p>
-- * stopTimestamp [ISO8601Timestamp] <p>The time the event terminated in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z</p>
-- @return Session structure as a key-value pair table
function M.Session(args)
	assert(args, "You must provide an argument table when creating Session")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["duration"] = args["duration"],
		["startTimestamp"] = args["startTimestamp"],
		["id"] = args["id"],
		["stopTimestamp"] = args["stopTimestamp"],
	}
	asserts.AssertSession(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutEventsInput = { ["clientContextEncoding"] = true, ["events"] = true, ["clientContext"] = true, nil }

function asserts.AssertPutEventsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEventsInput to be of type 'table'")
	assert(struct["events"], "Expected key events to exist in table")
	assert(struct["clientContext"], "Expected key clientContext to exist in table")
	if struct["clientContextEncoding"] then asserts.AssertString(struct["clientContextEncoding"]) end
	if struct["events"] then asserts.AssertEventListDefinition(struct["events"]) end
	if struct["clientContext"] then asserts.AssertString(struct["clientContext"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutEventsInput[k], "PutEventsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEventsInput
-- <p>A container for the data needed for a PutEvent operation</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * clientContextEncoding [String] <p>The encoding used for the client context.</p>
-- * events [EventListDefinition] <p>An array of Event JSON objects</p>
-- * clientContext [String] <p>The client context including the client ID, app title, app version and package name.</p>
-- Required key: events
-- Required key: clientContext
-- @return PutEventsInput structure as a key-value pair table
function M.PutEventsInput(args)
	assert(args, "You must provide an argument table when creating PutEventsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-amz-Client-Context-Encoding"] = args["clientContextEncoding"],
        ["x-amz-Client-Context"] = args["clientContext"],
    }
	local all_args = { 
		["clientContextEncoding"] = args["clientContextEncoding"],
		["events"] = args["events"],
		["clientContext"] = args["clientContext"],
	}
	asserts.AssertPutEventsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Event = { ["version"] = true, ["eventType"] = true, ["metrics"] = true, ["session"] = true, ["timestamp"] = true, ["attributes"] = true, nil }

function asserts.AssertEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Event to be of type 'table'")
	assert(struct["eventType"], "Expected key eventType to exist in table")
	assert(struct["timestamp"], "Expected key timestamp to exist in table")
	if struct["version"] then asserts.AssertString10Chars(struct["version"]) end
	if struct["eventType"] then asserts.AssertString50Chars(struct["eventType"]) end
	if struct["metrics"] then asserts.AssertMapOfStringToNumber(struct["metrics"]) end
	if struct["session"] then asserts.AssertSession(struct["session"]) end
	if struct["timestamp"] then asserts.AssertISO8601Timestamp(struct["timestamp"]) end
	if struct["attributes"] then asserts.AssertMapOfStringToString(struct["attributes"]) end
	for k,_ in pairs(struct) do
		assert(keys.Event[k], "Event contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Event
-- <p>A JSON object representing a batch of unique event occurrences in your app.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * version [String10Chars] <p>The version of the event.</p>
-- * eventType [String50Chars] <p>A name signifying an event that occurred in your app. This is used for grouping and aggregating like events together for reporting purposes.</p>
-- * metrics [MapOfStringToNumber] <p>A collection of key-value pairs that gives additional, measurable context to the event. The key-value pairs are specified by the developer.</p> <p>This collection can be empty or the attribute object can be omitted.</p>
-- * session [Session] <p>The session the event occured within. </p>
-- * timestamp [ISO8601Timestamp] <p>The time the event occurred in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z</p>
-- * attributes [MapOfStringToString] <p>A collection of key-value pairs that give additional context to the event. The key-value pairs are specified by the developer.</p> <p>This collection can be empty or the attribute object can be omitted.</p>
-- Required key: eventType
-- Required key: timestamp
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
		["version"] = args["version"],
		["eventType"] = args["eventType"],
		["metrics"] = args["metrics"],
		["session"] = args["session"],
		["timestamp"] = args["timestamp"],
		["attributes"] = args["attributes"],
	}
	asserts.AssertEvent(all_args)
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

function asserts.AssertString10Chars(str)
	assert(str)
	assert(type(str) == "string", "Expected String10Chars to be of type 'string'")
	assert(#str <= 10, "Expected string to be max 10 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.String10Chars(str)
	asserts.AssertString10Chars(str)
	return str
end

function asserts.AssertISO8601Timestamp(str)
	assert(str)
	assert(type(str) == "string", "Expected ISO8601Timestamp to be of type 'string'")
end

--  
function M.ISO8601Timestamp(str)
	asserts.AssertISO8601Timestamp(str)
	return str
end

function asserts.AssertString50Chars(str)
	assert(str)
	assert(type(str) == "string", "Expected String50Chars to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.String50Chars(str)
	asserts.AssertString50Chars(str)
	return str
end

function asserts.AssertString0to1000Chars(str)
	assert(str)
	assert(type(str) == "string", "Expected String0to1000Chars to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.String0to1000Chars(str)
	asserts.AssertString0to1000Chars(str)
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

function asserts.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	asserts.AssertLong(long)
	return long
end

function asserts.AssertMapOfStringToNumber(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfStringToNumber to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString50Chars(k)
		asserts.AssertDouble(v)
	end
end

function M.MapOfStringToNumber(map)
	asserts.AssertMapOfStringToNumber(map)
	return map
end

function asserts.AssertMapOfStringToString(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfStringToString to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString50Chars(k)
		asserts.AssertString0to1000Chars(v)
	end
end

function M.MapOfStringToString(map)
	asserts.AssertMapOfStringToString(map)
	return map
end

function asserts.AssertEventListDefinition(list)
	assert(list)
	assert(type(list) == "table", "Expected EventListDefinition to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertEvent(v)
	end
end

--  
-- List of Event objects
function M.EventListDefinition(list)
	asserts.AssertEventListDefinition(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "mobileanalytics.amazonaws.com"
		end
	end
	local ss = { "mobileanalytics" }
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
--- Call PutEvents asynchronously, invoking a callback when done
-- @param PutEventsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutEventsAsync(PutEventsInput, cb)
	assert(PutEventsInput, "You must provide a PutEventsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".PutEvents",
	}
	for header,value in pairs(PutEventsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/2014-06-05/events", PutEventsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutEvents synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutEventsInput
-- @return response
-- @return error_type
-- @return error_message
function M.PutEventsSync(PutEventsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutEventsAsync(PutEventsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
