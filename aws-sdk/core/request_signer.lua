--- AWS Service request signer that can generate a proper authentication header
-- based on the request URI, request parameters, request headers and service
-- settings
-- For more details see: http://docs.aws.amazon.com/general/latest/gr/signature-v4-examples.html#signature-v4-examples-python

local hmac = require "aws-sdk.lockbox.mac.hmac"
local sha2_sha256 = require "aws-sdk.lockbox.digest.sha2_256"
local Stream = require "aws-sdk.lockbox.util.stream"
local Array = require "aws-sdk.lockbox.util.array"

local request_headers = require "aws-sdk.core.request_headers"
local credentials = require "aws-sdk.core.credentials"
local strut = require "aws-sdk.utils.strut"


local M = {}


local function log(...)
	print(...)
end

local function sign(key, msg)
	return hmac().setDigest(sha2_sha256).setKey(key).init().update(Stream.fromString(msg)).finish().asHex()
end

function M.get_signature_key(key, date_stamp, region_name, service_name)
	local kDate = sign(Array.fromString('AWS4' .. key), date_stamp)
	local kRegion = sign(Array.fromHex(kDate), region_name)
	local kService = sign(Array.fromHex(kRegion), service_name)
	local kSigning = sign(Array.fromHex(kService), 'aws4_request')
	return kSigning, kService, kRegion, kDate
end

-- Create the canonical headers. Header names must be trimmed
-- and lowercase, and sorted in code point order from low to high.
-- Create the list of signed headers. This lists the headers
-- in the canonical_headers list, delimited with ";" and in alpha order.
-- Note: The request can include any headers; canonical_headers and
-- signed_headers include those that you want to be included in the
-- hash of the request. "Host" and "x-amz-date" are always required.
local function create_canonical_and_signed_headers(headers)
	-- get list of headers
	local header_names = {}
	for header,_ in pairs(headers) do
		header_names[#header_names + 1] = header
	end

	-- sort headers alphabetically
	table.sort(header_names, function(a, b)
		return a:lower() < b:lower()
	end)

	-- create string with sorted headers and values, new line separated
	local canonical_headers = ""
	for _,header in ipairs(header_names) do
		canonical_headers = canonical_headers .. header:lower() .. ":" .. headers[header] .. "\n"
	end

	-- create string with sorted headers, semi-colon separated
	for i,header in ipairs(header_names) do header_names[i] = header:lower() end
	local signed_headers = table.concat(header_names, ";")

	return canonical_headers, signed_headers
end


-- Create the canonical query string. Query string values must
-- be URL-encoded (space=%20). The parameters must be sorted by name.
local function create_canonical_query_string(query_string)
	if query_string == "" then
		return ""
	end
	local kvp = strut.split(query_string, "&")
	table.sort(kvp)
	for i,kv in ipairs(kvp) do
		local key, value = kv:match("(.-)=(.*)")
		key = strut.urlencode(key)
		value = strut.urlencode(value)
		kvp[i] = key .. "=" .. value
	end
	return table.concat(kvp, "&")
end


local function create_canonical_request(method, request_uri, canonical_headers, signed_headers, payload)
	-- ************* TASK 1: CREATE A CANONICAL REQUEST *************
	-- http://docs.aws.amazon.com/general/latest/gr/sigv4-create-canonical-request.html
	-- canonical uri, the part from domain to query
	local split_request_uri = strut.split(request_uri, "?")
	local canonical_uri = "/" .. strut.urlencode(split_request_uri[1]:sub(2))
	local canonical_querystring = create_canonical_query_string(split_request_uri[2] or "")

	-- Create payload hash. The payload (body of the request) contains
	-- the request parameters.
	local payload_hash = sha2_sha256().update(Stream.fromString(payload)).finish().asHex()

	-- Combine elements to create create canonical request
	local canonical_request = method .. '\n'
		.. canonical_uri .. '\n'
		.. canonical_querystring .. '\n'
		.. canonical_headers .. '\n'
		.. signed_headers .. '\n'
		.. payload_hash

	return canonical_request
end

local function create_string_to_sign(algorithm, credential_scope, amz_date, canonical_request)
	local string_to_sign = algorithm .. '\n'
		.. amz_date .. '\n'
		.. credential_scope .. '\n'
		.. sha2_sha256().update(Stream.fromString(canonical_request)).finish().asHex()

	return string_to_sign
end


function M.sign_request_v4(method, request_uri, payload, headers, service, region)
	assert(method, "You must provide a method")
	assert(request_uri, "You must provide a request uri")
	assert(payload, "You must provide a payload")
	assert(headers, "You must provide a headers table")
	assert(service, "You must provide a service name")
	assert(region, "You must provide a region")
--	assert(headers[request_headers.AMZ_TARGET_HEADER], "You must specify the x-amz-target header")
--	assert(headers[request_headers.CONTENT_TYPE_HEADER], "You must specify the content-type header")
	assert(headers[request_headers.AWS_DATE_HEADER], "You must specify the x-amz-date header")
	assert(headers[request_headers.HOST_HEADER], "You must specify the host header")

	local access_key, secret_key, security_token = credentials.get()
	assert(access_key and secret_key, "No access key or secret key set")

	if security_token then
		headers[request_headers.AWS_SECURITY_TOKEN] = security_token
	end

	-- Create a date for headers and the credential string
	local amz_date = headers[request_headers.AWS_DATE_HEADER]
	local date_stamp = amz_date:match("(%d*)T.*") -- Date w/o time, used in credential scope

	local algorithm = 'AWS4-HMAC-SHA256'
	local credential_scope = date_stamp .. '/' .. region .. '/' .. service .. '/' .. 'aws4_request'

	-- ************* TASK 1: CREATE A CANONICAL REQUEST *************
	-- http://docs.aws.amazon.com/general/latest/gr/sigv4-create-canonical-request.html
	-- canonical uri, the part from domain to query
	local canonical_headers, signed_headers = create_canonical_and_signed_headers(headers)
	local canonical_request = create_canonical_request(method, request_uri, canonical_headers, signed_headers, payload)

	-- ************* TASK 2: CREATE THE STRING TO SIGN*************
	-- Match the algorithm to the hashing algorithm you use, either SHA-1 or
	-- SHA-256 (recommended)
	local string_to_sign = create_string_to_sign(algorithm, credential_scope, amz_date, canonical_request)
	
	-- ************* TASK 3: CALCULATE THE SIGNATURE *************
	-- Create the signing key using the function defined above.
	local signing_key = M.get_signature_key(secret_key, date_stamp, region, service)

	-- Sign the string_to_sign using the signing_key
	local signature = hmac()
						.setDigest(sha2_sha256)
						.setKey(Array.fromHex(signing_key))
						.init()
						.update(Stream.fromString(string_to_sign))
						.finish()
						.asHex()
	
	local authorization_header =
		algorithm .. ' ' ..
		'Credential=' ..access_key .. '/' .. credential_scope .. ', ' ..
		'SignedHeaders=' .. signed_headers .. ', ' .. 'Signature=' .. signature

	return authorization_header
end



function M.sign(signature_version, method, request_uri, payload, headers, service, region)
	if signature_version == "v4" then
		return M.sign_request_v4(method, request_uri, payload, headers, service, region)
	elseif signature_version == "s3" then
		local payload_hash = sha2_sha256().update(Stream.fromString(payload)).finish().asHex()
		headers[request_headers.X_AMZ_CONTENT_SHA256] = headers[request_headers.X_AMZ_CONTENT_SHA256] or payload_hash
		return M.sign_request_v4(method, request_uri, payload, headers, service, region)
	else
		return nil, ("Unsupported signatureVersion %s"):format(signature_version or "nil")
	end
end

return M
