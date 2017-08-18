local hmac = require "aws-sdk.lockbox.mac.hmac"
local sha2_sha256 = require "aws-sdk.lockbox.digest.sha2_256"

local request_headers = require "aws-sdk.core.request_headers"

local M = {}


-- Key derivation functions. See:
-- http://docs.aws.amazon.com/general/latest/gr/signature-v4-examples.html#signature-v4-examples-python
local function sign(key, msg)
	return hmac().setDigest(sha2_sha256).setKey(key).init().update(msg).finish().asHex()
end

local function get_signature_key(key, date_stamp, regionName, serviceName)
	local kDate = sign('AWS4' .. key, date_stamp)
	local kRegion = sign(kDate, regionName)
	local kService = sign(kRegion, serviceName)
	local kSigning = sign(kService, 'aws4_request')
	return kSigning
end

local function get_canonical_and_signed_headers(headers)
	local header_names = {}
	for header,_ in pairs(headers) do
		header_names[#header_names + 1] = header:lower()
	end
	table.sort(header_names)
	local signed_headers = table.concat(header_names, ";")
	local canonical_headers = ""
	for _,header in ipairs(header_names) do
		canonical_headers = canonical_headers .. header .. ":" .. headers[header] .. "\n"
	end
	return canonical_headers, signed_headers
end

function M.sign_v4(request_uri, request_parameters, headers, settings)
	assert(request_uri, "You must provide a request uri")
	assert(request_parameters, "You must provide request parameters")
	assert(headers, "You must provide a headers table")
	assert(settings, "You must provide a settings table")
	assert(headers[request_headers.AMZ_TARGET_HEADER], "You must specify the x-amz-target header")
	assert(headers[request_headers.CONTENT_TYPE_HEADER], "You must specify the content-type header")
	assert(headers[request_headers.AWS_DATE_HEADER], "You must specify the x-amz-date header")
	assert(headers[request_headers.HOST_HEADER], "You must specify the host header")
	local method = 'POST'
	local service = settings.service
	local region = settings.region


	-- Read AWS access key from game.project
	local access_key = sys.get_config("aws.access_key")
	local secret_key = sys.get_config("aws.secret_access_key")
	assert(access_key and secret_key, "No access key or secret key defined in game.project")

	-- Create a date for headers and the credential string
	local amz_date = headers[request_headers.AWS_DATE_HEADER]
	local date_stamp = os.date('%Y%m%d') -- Date w/o time, used in credential scope

	-- ************* TASK 1: CREATE A CANONICAL REQUEST *************
	-- http://docs.aws.amazon.com/general/latest/gr/sigv4-create-canonical-request.html

	-- Step 1 is to define the verb (GET, POST, etc.)--already done.

	-- Step 2: Create canonical URI--the part of the URI from domain to query
	-- string (use '/' if no path)
	local canonical_uri = request_uri

	-- Step 3: Create the canonical query string. In this example, request
	-- parameters are passed in the body of the request and the query string
	-- is blank.
	local canonical_querystring = ''

	-- Step 4: Create the canonical headers. Header names must be trimmed
	-- and lowercase, and sorted in code point order from low to high.
	-- Step 5: Create the list of signed headers. This lists the headers
	-- in the canonical_headers list, delimited with ";" and in alpha order.
	-- Note: The request can include any headers; canonical_headers and
	-- signed_headers include those that you want to be included in the
	-- hash of the request. "Host" and "x-amz-date" are always required.
	local canonical_headers, signed_headers = get_canonical_and_signed_headers(headers)

	-- Step 6: Create payload hash. In this example, the payload (body of
	-- the request) contains the request parameters.
	--local payload_hash = hashlib.sha256(request_parameters).hexdigest()
	local payload_hash = sha2_sha256().init().update(request_parameters).finish().asHex()

	-- Step 7: Combine elements to create create canonical request
	local canonical_request = method .. '\n'
		.. canonical_uri .. '\n'
		.. canonical_querystring .. '\n'
		.. canonical_headers .. '\n'
		.. signed_headers .. '\n'
		.. payload_hash



	-- ************* TASK 2: CREATE THE STRING TO SIGN*************
	-- Match the algorithm to the hashing algorithm you use, either SHA-1 or
	-- SHA-256 (recommended)
	local algorithm = 'AWS4-HMAC-SHA256'
	local credential_scope = date_stamp .. '/' .. region .. '/' .. service .. '/' .. 'aws4_request'
	local string_to_sign = algorithm .. '\n'
		.. amz_date .. '\n'
		.. credential_scope .. '\n'
		.. sha2_sha256().init().update(canonical_request).finish().asHex()


	-- ************* TASK 3: CALCULATE THE SIGNATURE *************
	-- Create the signing key using the function defined above.
	local signing_key = get_signature_key(secret_key, date_stamp, region, service)

	-- Sign the string_to_sign using the signing_key
	local signature = hmac().setDigest(sha2_sha256).setKey(signing_key).init().update(string_to_sign).finish().asHex()

	local authorization_header =
		algorithm .. ' ' ..
		'Credential=' ..access_key .. '/' .. credential_scope .. ', ' ..
		'SignedHeaders=' .. signed_headers .. ', ' .. 'Signature=' .. signature

	return authorization_header
end

return M
