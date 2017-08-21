-- Request Handler for AWS service requests
local config = require "aws-sdk.core.config"
local credentials = require "aws-sdk.core.credentials"
local content_encoder = require "aws-sdk.core.content_encoder"
local request_signer = require "aws-sdk.core.request_signer"
local request_headers = require "aws-sdk.core.request_headers"

local M = {}


function M.post(base_uri, request_uri, input, headers, settings, cb)
	local post_data = content_encoder.encode(settings.protocol, input)

	if not credentials.is_empty() then
		if settings.signature_version == "v4" then
			headers[request_headers.AWS_DATE_HEADER] = os.date('!%Y%m%dT%H%M%SZ')
			headers[request_headers.HOST_HEADER] = settings.endpoint
			local authorization = request_signer.sign_post_request_v4(request_uri, post_data, headers, settings)
			headers[request_headers.AUTHORIZATION_HEADER] = authorization
			headers[request_headers.HOST_HEADER] = nil
		else
			cb(false, ("Unsupported signatureVersion %s"):format(settings.signature_version))
			return
		end
	end

	config.http_request(base_uri .. request_uri, "POST", headers, post_data, function(response)
		if response.status >= 200 and response.status < 300 then
			cb(json.decode(response.response))
		else
			pprint(response)
			cb(false, "Error")
		end
	end)
end


--- Get a request handler from an HTTP method
-- @param method HTTP request verb
-- @return Request handler function. The request handler is a
-- function that accepts the following arguments:
-- * base_uri
-- * request_uri
-- * input
-- * headers
-- * settings
-- * cb
function M.from_http_method(method)
	if method == "POST" then
		return M.post
	elseif method == "GET" then
		return nil, "GET not yet implemented"
	elseif method == "DELETE" then
		return nil, "DELETE not yet implemented"
	elseif method == "PUT" then
		return nil, "PUT not yet implemented"
	elseif method == "HEAD" then
		return nil, "HEAD not yet implemented"
	else
		return nil, "Unknown method"
	end
end

return M
