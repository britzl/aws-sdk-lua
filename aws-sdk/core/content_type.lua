local M = {}

M.JSON_CONTENT_TYPE = "application/json"
M.AMZN_JSON_CONTENT_TYPE_1_0 = "application/x-amz-json-1.0"
M.AMZN_JSON_CONTENT_TYPE_1_1 = "application/x-amz-json-1.1"
M.FORM_CONTENT_TYPE = "application/x-www-form-urlencoded"
M.AMZN_XML_CONTENT_TYPE = "application/xml"


function M.from_protocol(protocol, version)
    if protocol == "json" then
        if version == "1.1" then
            return M.AMZN_JSON_CONTENT_TYPE_1_1
        else
            return M.AMZN_JSON_CONTENT_TYPE_1_0
        end
    elseif protocol == "xml" then
        return M.AMZN_XML_CONTENT_TYPE
    elseif protocol == "query" then
		return M.FORM_CONTENT_TYPE
    end
end
return M
