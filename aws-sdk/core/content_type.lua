--- Constants for the HTTP header "Content-Type"
-- Also provides a function to return the correct content type based on the
-- protocol format for an AWS service
local M = {}

M.JSON_CONTENT_TYPE = "application/json"
M.AMZN_JSON_CONTENT_TYPE_1_0 = "application/x-amz-json-1.0"
M.AMZN_JSON_CONTENT_TYPE_1_1 = "application/x-amz-json-1.1"
M.FORM_CONTENT_TYPE = "application/x-www-form-urlencoded"
M.AMZN_XML_CONTENT_TYPE = "application/xml"

--- Get the correct content type from a protocol and version
-- @param protocol
-- @param version
-- @return content_type The content type string, or nil if protocol is unknown
-- @return error_message
function M.from_protocol(protocol, version)
	if protocol == "json" or protocol == "rest-json" then
		if version == "1.1" then
			return M.AMZN_JSON_CONTENT_TYPE_1_1
		else
			return M.AMZN_JSON_CONTENT_TYPE_1_0
		end
	elseif protocol == "rest-xml" then
		return M.AMZN_XML_CONTENT_TYPE
	elseif protocol == "query" then
		return M.FORM_CONTENT_TYPE
	else
		return nil, ("Unknown protocol '%s' and/or version '%s'"):format(protocol, version)
	end
end

return M
