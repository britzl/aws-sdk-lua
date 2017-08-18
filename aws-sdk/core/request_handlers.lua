local config = require "aws-sdk.core.config"
local content_encoder = require "aws-sdk.core.content_encoder"
local request_signer = require "aws-sdk.core.request_signer"
local request_headers = require "aws-sdk.core.request_headers"

local M = {}


function M.post(base_uri, request_uri, input, headers, settings, cb)
	local post_data = content_encoder.encode(settings.protocol, input)

	headers[request_headers.AWS_DATE_HEADER] = os.date('!%Y%m%dT%H%M%SZ')
	headers[request_headers.HOST_HEADER] = settings.endpoint
	local authorization = request_signer.sign_v4(request_uri, post_data, headers, settings)
	headers[request_headers.AUTHORIZATION_HEADER] = authorization
	headers[request_headers.HOST_HEADER] = nil

	config.http_request(base_uri .. request_uri, "POST", headers, post_data, function(response)
		if response.status >= 200 and response.status < 300 then
			cb(json.decode(response.response))
		else
			pprint(response)
			cb(false, "Error")
		end
	end)
end



function M.from_http_method(method)
	if method == "POST" then
		return M.post
	elseif method == "GET" then
		return M.get
	elseif method == "DELETE" then
		return M.delete
	elseif method == "PUT" then
		return M.put
	elseif method == "HEAD" then
		return M.head
	else
		return nil, "Unknown method"
	end
end

return M
