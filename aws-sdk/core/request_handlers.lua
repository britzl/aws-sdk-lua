-- Request handler provider for AWS service requests
local json_request_handler = require "aws-sdk.core.request_handlers.json"
local rest_json_request_handler = require "aws-sdk.core.request_handlers.rest_json"
local rest_xml_request_handler = require "aws-sdk.core.request_handlers.rest_xml"
local query_request_handler = require "aws-sdk.core.request_handlers.query"

local M = {}

function M.from_protocol_and_method(protocol, method)
	if protocol == "json" then
		return json_request_handler[method:lower()]
	elseif protocol == "rest-json" then
		return rest_json_request_handler[method:lower()]
	elseif protocol == "rest-xml" then
		return rest_xml_request_handler[method:lower()]
	elseif protocol == "query" then
		return query_request_handler[method:lower()]
	else
		return nil, "Unknown protocol " .. protocol
	end
end

return M
