-- Request handler for REST-XML requests
local config = require "aws-sdk.core.config"
local credentials = require "aws-sdk.core.credentials"
local request_signer = require "aws-sdk.core.request_signer"
local request_headers = require "aws-sdk.core.request_headers"
local xml = require "aws-sdk.utils.xml"

local M = {}

function M.get(base_uri, request_uri, args, headers, settings, cb)
	for arg,value in pairs(args.uri) do
		request_uri = request_uri:gsub(arg, value)
	end

	if not credentials.is_empty() then
		local payload = ""
		headers[request_headers.AWS_DATE_HEADER] = os.date('!%Y%m%dT%H%M%SZ')
		headers[request_headers.HOST_HEADER] = settings.endpoint
		headers[request_headers.CONTENT_TYPE_HEADER] = nil
		headers[request_headers.AMZ_TARGET_HEADER] = nil
		local authorization, err = request_signer.sign(settings.signature_version,
														"GET",
														request_uri,
														payload,
														headers,
														settings.service,
														settings.region)
		if not authorization then
			cb(false, err)
			return
		end
		headers[request_headers.AUTHORIZATION_HEADER] = authorization
		headers[request_headers.HOST_HEADER] = nil
	end

	config.http_request(base_uri .. request_uri, "GET", headers, nil, function(response)
		local data = assert(xml.parse(response.response))
		if response.status >= 200 and response.status < 300 then
			cb(data)
		else
			cb(false, data.__type, data.Message)
		end
	end)
end

function M.put(base_uri, request_uri, args, headers, settings, cb)
	for arg,value in pairs(args.uri) do
		-- some S3 requests have {Key+} in request uri, but it requires Key in args.uri
		-- so we try to replace {arg} or {arg+} with value
		request_uri = request_uri:gsub(arg:gsub('}', '[+]?}'), value)
	end

	local body = args.all.Body

	if not credentials.is_empty() then
		headers[request_headers.AWS_DATE_HEADER] = os.date('!%Y%m%dT%H%M%SZ')
		headers[request_headers.HOST_HEADER] = settings.endpoint
		headers[request_headers.CONTENT_TYPE_HEADER] = nil
		headers[request_headers.AMZ_TARGET_HEADER] = nil
		local authorization, err = request_signer.sign(settings.signature_version,
														"PUT",
														request_uri,
														body,
														headers,
														settings.service,
														settings.region)
		if not authorization then
			cb(false, err)
			return
		end
		headers[request_headers.AUTHORIZATION_HEADER] = authorization
		headers[request_headers.HOST_HEADER] = nil
	end

	config.http_request(base_uri .. request_uri, "PUT", headers, body, function(response)
		local data = assert(xml.parse(response.response))
		if response.status >= 200 and response.status < 300 then
			cb(data)
		else
			cb(false, data.__type, data.Error.Message)
		end
	end)
end

return M
