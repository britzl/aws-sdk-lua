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

local BadRequestException_keys = { "message" = true, nil }

function M.AssertBadRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BadRequestException to be of type 'table'")
	if struct["message"] then M.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(BadRequestException_keys[k], "BadRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BadRequestException
-- &lt;p&gt;An exception object returned when a request fails.&lt;/p&gt;
-- @param message [String] &lt;p&gt;A text description associated with the BadRequestException object.&lt;/p&gt;
function M.BadRequestException(message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BadRequestException")
	local t = { 
		["message"] = message,
	}
	M.AssertBadRequestException(t)
	return t
end

local Session_keys = { "duration" = true, "startTimestamp" = true, "id" = true, "stopTimestamp" = true, nil }

function M.AssertSession(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Session to be of type 'table'")
	if struct["duration"] then M.AssertLong(struct["duration"]) end
	if struct["startTimestamp"] then M.AssertISO8601Timestamp(struct["startTimestamp"]) end
	if struct["id"] then M.AssertString50Chars(struct["id"]) end
	if struct["stopTimestamp"] then M.AssertISO8601Timestamp(struct["stopTimestamp"]) end
	for k,_ in pairs(struct) do
		assert(Session_keys[k], "Session contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Session
-- &lt;p&gt;Describes the session. Session information is required on ALL events.&lt;/p&gt;
-- @param duration [Long] &lt;p&gt;The duration of the session.&lt;/p&gt;
-- @param startTimestamp [ISO8601Timestamp] &lt;p&gt;The time the event started in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z&lt;/p&gt;
-- @param id [String50Chars] &lt;p&gt;A unique identifier for the session&lt;/p&gt;
-- @param stopTimestamp [ISO8601Timestamp] &lt;p&gt;The time the event terminated in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z&lt;/p&gt;
function M.Session(duration, startTimestamp, id, stopTimestamp, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Session")
	local t = { 
		["duration"] = duration,
		["startTimestamp"] = startTimestamp,
		["id"] = id,
		["stopTimestamp"] = stopTimestamp,
	}
	M.AssertSession(t)
	return t
end

local PutEventsInput_keys = { "clientContextEncoding" = true, "events" = true, "clientContext" = true, nil }

function M.AssertPutEventsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutEventsInput to be of type 'table'")
	assert(struct["events"], "Expected key events to exist in table")
	assert(struct["clientContext"], "Expected key clientContext to exist in table")
	if struct["clientContextEncoding"] then M.AssertString(struct["clientContextEncoding"]) end
	if struct["events"] then M.AssertEventListDefinition(struct["events"]) end
	if struct["clientContext"] then M.AssertString(struct["clientContext"]) end
	for k,_ in pairs(struct) do
		assert(PutEventsInput_keys[k], "PutEventsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutEventsInput
-- &lt;p&gt;A container for the data needed for a PutEvent operation&lt;/p&gt;
-- @param clientContextEncoding [String] &lt;p&gt;The encoding used for the client context.&lt;/p&gt;
-- @param events [EventListDefinition] &lt;p&gt;An array of Event JSON objects&lt;/p&gt;
-- @param clientContext [String] &lt;p&gt;The client context including the client ID, app title, app version and package name.&lt;/p&gt;
-- Required parameter: events
-- Required parameter: clientContext
function M.PutEventsInput(clientContextEncoding, events, clientContext, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutEventsInput")
	local t = { 
		["clientContextEncoding"] = clientContextEncoding,
		["events"] = events,
		["clientContext"] = clientContext,
	}
	M.AssertPutEventsInput(t)
	return t
end

local Event_keys = { "version" = true, "eventType" = true, "metrics" = true, "session" = true, "timestamp" = true, "attributes" = true, nil }

function M.AssertEvent(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Event to be of type 'table'")
	assert(struct["eventType"], "Expected key eventType to exist in table")
	assert(struct["timestamp"], "Expected key timestamp to exist in table")
	if struct["version"] then M.AssertString10Chars(struct["version"]) end
	if struct["eventType"] then M.AssertString50Chars(struct["eventType"]) end
	if struct["metrics"] then M.AssertMapOfStringToNumber(struct["metrics"]) end
	if struct["session"] then M.AssertSession(struct["session"]) end
	if struct["timestamp"] then M.AssertISO8601Timestamp(struct["timestamp"]) end
	if struct["attributes"] then M.AssertMapOfStringToString(struct["attributes"]) end
	for k,_ in pairs(struct) do
		assert(Event_keys[k], "Event contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Event
-- &lt;p&gt;A JSON object representing a batch of unique event occurrences in your app.&lt;/p&gt;
-- @param version [String10Chars] &lt;p&gt;The version of the event.&lt;/p&gt;
-- @param eventType [String50Chars] &lt;p&gt;A name signifying an event that occurred in your app. This is used for grouping and aggregating like events together for reporting purposes.&lt;/p&gt;
-- @param metrics [MapOfStringToNumber] &lt;p&gt;A collection of key-value pairs that gives additional, measurable context to the event. The key-value pairs are specified by the developer.&lt;/p&gt; &lt;p&gt;This collection can be empty or the attribute object can be omitted.&lt;/p&gt;
-- @param session [Session] &lt;p&gt;The session the event occured within. &lt;/p&gt;
-- @param timestamp [ISO8601Timestamp] &lt;p&gt;The time the event occurred in ISO 8601 standard date time format. For example, 2014-06-30T19:07:47.885Z&lt;/p&gt;
-- @param attributes [MapOfStringToString] &lt;p&gt;A collection of key-value pairs that give additional context to the event. The key-value pairs are specified by the developer.&lt;/p&gt; &lt;p&gt;This collection can be empty or the attribute object can be omitted.&lt;/p&gt;
-- Required parameter: eventType
-- Required parameter: timestamp
function M.Event(version, eventType, metrics, session, timestamp, attributes, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Event")
	local t = { 
		["version"] = version,
		["eventType"] = eventType,
		["metrics"] = metrics,
		["session"] = session,
		["timestamp"] = timestamp,
		["attributes"] = attributes,
	}
	M.AssertEvent(t)
	return t
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

function M.AssertString10Chars(str)
	assert(str)
	assert(type(str) == "string", "Expected String10Chars to be of type 'string'")
	assert(#str <= 10, "Expected string to be max 10 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.String10Chars(str)
	M.AssertString10Chars(str)
	return str
end

function M.AssertISO8601Timestamp(str)
	assert(str)
	assert(type(str) == "string", "Expected ISO8601Timestamp to be of type 'string'")
end

--  
function M.ISO8601Timestamp(str)
	M.AssertISO8601Timestamp(str)
	return str
end

function M.AssertString50Chars(str)
	assert(str)
	assert(type(str) == "string", "Expected String50Chars to be of type 'string'")
	assert(#str <= 50, "Expected string to be max 50 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.String50Chars(str)
	M.AssertString50Chars(str)
	return str
end

function M.AssertString0to1000Chars(str)
	assert(str)
	assert(type(str) == "string", "Expected String0to1000Chars to be of type 'string'")
	assert(#str <= 1000, "Expected string to be max 1000 characters")
end

--  
function M.String0to1000Chars(str)
	M.AssertString0to1000Chars(str)
	return str
end

function M.AssertDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected Double to be of type 'number'")
end

function M.Double(double)
	M.AssertDouble(double)
	return double
end

function M.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	M.AssertLong(long)
	return long
end

function M.AssertMapOfStringToNumber(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfStringToNumber to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString50Chars(k)
		M.AssertDouble(v)
	end
end

function M.MapOfStringToNumber(map)
	M.AssertMapOfStringToNumber(map)
	return map
end

function M.AssertMapOfStringToString(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfStringToString to be of type 'table'")
	for k,v in pairs(map) do
		M.AssertString50Chars(k)
		M.AssertString0to1000Chars(v)
	end
end

function M.MapOfStringToString(map)
	M.AssertMapOfStringToString(map)
	return map
end

function M.AssertEventListDefinition(list)
	assert(list)
	assert(type(list) == "table", "Expected EventListDefinition to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertEvent(v)
	end
end

--  
-- List of Event objects
function M.EventListDefinition(list)
	M.AssertEventListDefinition(list)
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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- PutEvents
-- @param PutEventsInput
-- @param cb Callback function accepting two args: response, error_message
function M.PutEventsAsync(PutEventsInput, cb)
	assert(PutEventsInput, "You must provide a PutEventsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = ".PutEvents",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/2014-06-05/events", PutEventsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
