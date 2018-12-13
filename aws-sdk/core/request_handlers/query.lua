local config = require "aws-sdk.core.config"
local credentials = require "aws-sdk.core.credentials"
local request_signer = require "aws-sdk.core.request_signer"
local request_headers = require "aws-sdk.core.request_headers"

local M = {}


function M.post(name, base_uri, request_uri, args, headers, settings, cb)
	local post_data = ""

	args.Action = name
	args.Version = settings.api_version

	local delimiter = "?"
	for k,v in pairs(args) do
		request_uri = request_uri .. delimiter .. k .. "=" .. v
		delimiter = "&"
	end

	if not credentials.is_empty() then
		headers[request_headers.AWS_DATE_HEADER] = os.date('!%Y%m%dT%H%M%SZ')
		headers[request_headers.HOST_HEADER] = settings.endpoint
		local authorization, err = request_signer.sign(
			settings.signature_version,
			"POST",
			request_uri,
			post_data,
			headers,
			settings.service,
			settings.region
		)
		if not authorization then
			cb(false, err)
			return
		end
		headers[request_headers.AUTHORIZATION_HEADER] = authorization
		headers[request_headers.HOST_HEADER] = nil
	end
		
	config.http_request(base_uri .. request_uri, "POST", headers, post_data, function (response)
		local data = assert(json.decode(response.response))
		if response.status >= 200 and response.status < 300 then
			cb(data)
		else
			cb(false, data.__type, data.Message)
		end
	end)
end


return M