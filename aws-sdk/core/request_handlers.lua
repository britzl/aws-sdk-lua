-- Request handler provider for AWS service requests
local json_request_handler = require "aws-sdk.core.request_handlers.json"
local rest_json_request_handler = require "aws-sdk.core.request_handlers.rest_json"
local rest_xml_request_handler = require "aws-sdk.core.request_handlers.rest_xml"
local query_request_handler = require "aws-sdk.core.request_handlers.query"

local M = {}

function M.from_protocol_and_method(protocol, method)
	local handler
	if protocol == "json" then
		handler = json_request_handler[method:lower()]
	elseif protocol == "rest-json" then
		handler = rest_json_request_handler[method:lower()]
	elseif protocol == "rest-xml" then
		handler = rest_xml_request_handler[method:lower()]
	elseif protocol == "query" then
		handler = query_request_handler[method:lower()]
	else
		return nil, "Unknown protocol " .. protocol
	end
	if handler then
		return handler
	else
		return nil, method .. " not yet implemented for " .. protocol
	end
end

return M
