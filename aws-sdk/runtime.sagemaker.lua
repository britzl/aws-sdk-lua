--- GENERATED CODE - DO NOT MODIFY
-- Amazon SageMaker Runtime (runtime.sagemaker-2017-05-13)

local M = {}

M.metadata = {
	api_version = "2017-05-13",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "runtime.sagemaker",
	service_abbreviation = "",
	service_full_name = "Amazon SageMaker Runtime",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "runtime.sagemaker-2017-05-13",
}

local keys = {}
local asserts = {}

keys.InvokeEndpointInput = { ["Body"] = true, ["EndpointName"] = true, ["ContentType"] = true, ["CustomAttributes"] = true, ["Accept"] = true, nil }

function asserts.AssertInvokeEndpointInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvokeEndpointInput to be of type 'table'")
	assert(struct["EndpointName"], "Expected key EndpointName to exist in table")
	assert(struct["Body"], "Expected key Body to exist in table")
	if struct["Body"] then asserts.AssertBodyBlob(struct["Body"]) end
	if struct["EndpointName"] then asserts.AssertEndpointName(struct["EndpointName"]) end
	if struct["ContentType"] then asserts.AssertHeader(struct["ContentType"]) end
	if struct["CustomAttributes"] then asserts.AssertCustomAttributesHeader(struct["CustomAttributes"]) end
	if struct["Accept"] then asserts.AssertHeader(struct["Accept"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvokeEndpointInput[k], "InvokeEndpointInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvokeEndpointInput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Body [BodyBlob] <p>Provides input data, in the format specified in the <code>ContentType</code> request header. Amazon SageMaker passes all of the data in the body to the model. </p> <p>For information about the format of the request body, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html">Common Data Formats—Inference</a>.</p>
-- * EndpointName [EndpointName] <p>The name of the endpoint that you specified when you created the endpoint using the <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/API_CreateEndpoint.html">CreateEndpoint</a> API. </p>
-- * ContentType [Header] <p>The MIME type of the input data in the request body.</p>
-- * CustomAttributes [CustomAttributesHeader] <p/>
-- * Accept [Header] <p>The desired MIME type of the inference in the response.</p>
-- Required key: EndpointName
-- Required key: Body
-- @return InvokeEndpointInput structure as a key-value pair table
function M.InvokeEndpointInput(args)
	assert(args, "You must provide an argument table when creating InvokeEndpointInput")
    local query_args = { 
    }
    local uri_args = { 
        ["{EndpointName}"] = args["EndpointName"],
    }
    local header_args = { 
        ["Content-Type"] = args["ContentType"],
        ["X-Amzn-SageMaker-Custom-Attributes"] = args["CustomAttributes"],
        ["Accept"] = args["Accept"],
    }
	local all_args = { 
		["Body"] = args["Body"],
		["EndpointName"] = args["EndpointName"],
		["ContentType"] = args["ContentType"],
		["CustomAttributes"] = args["CustomAttributes"],
		["Accept"] = args["Accept"],
	}
	asserts.AssertInvokeEndpointInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InvokeEndpointOutput = { ["Body"] = true, ["InvokedProductionVariant"] = true, ["CustomAttributes"] = true, ["ContentType"] = true, nil }

function asserts.AssertInvokeEndpointOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvokeEndpointOutput to be of type 'table'")
	assert(struct["Body"], "Expected key Body to exist in table")
	if struct["Body"] then asserts.AssertBodyBlob(struct["Body"]) end
	if struct["InvokedProductionVariant"] then asserts.AssertHeader(struct["InvokedProductionVariant"]) end
	if struct["CustomAttributes"] then asserts.AssertCustomAttributesHeader(struct["CustomAttributes"]) end
	if struct["ContentType"] then asserts.AssertHeader(struct["ContentType"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvokeEndpointOutput[k], "InvokeEndpointOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvokeEndpointOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Body [BodyBlob] <p>Includes the inference provided by the model.</p> <p>For information about the format of the response body, see <a href="http://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html">Common Data Formats—Inference</a>.</p>
-- * InvokedProductionVariant [Header] <p>Identifies the production variant that was invoked.</p>
-- * CustomAttributes [CustomAttributesHeader] <p/>
-- * ContentType [Header] <p>The MIME type of the inference returned in the response body.</p>
-- Required key: Body
-- @return InvokeEndpointOutput structure as a key-value pair table
function M.InvokeEndpointOutput(args)
	assert(args, "You must provide an argument table when creating InvokeEndpointOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
        ["x-Amzn-Invoked-Production-Variant"] = args["InvokedProductionVariant"],
        ["X-Amzn-SageMaker-Custom-Attributes"] = args["CustomAttributes"],
        ["Content-Type"] = args["ContentType"],
    }
	local all_args = { 
		["Body"] = args["Body"],
		["InvokedProductionVariant"] = args["InvokedProductionVariant"],
		["CustomAttributes"] = args["CustomAttributes"],
		["ContentType"] = args["ContentType"],
	}
	asserts.AssertInvokeEndpointOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertCustomAttributesHeader(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomAttributesHeader to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.CustomAttributesHeader(str)
	asserts.AssertCustomAttributesHeader(str)
	return str
end

function asserts.AssertHeader(str)
	assert(str)
	assert(type(str) == "string", "Expected Header to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.Header(str)
	asserts.AssertHeader(str)
	return str
end

function asserts.AssertEndpointName(str)
	assert(str)
	assert(type(str) == "string", "Expected EndpointName to be of type 'string'")
	assert(#str <= 63, "Expected string to be max 63 characters")
end

--  
function M.EndpointName(str)
	asserts.AssertEndpointName(str)
	return str
end

function asserts.AssertBodyBlob(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected BodyBlob to be of type 'string'")
	assert(#blob <= 5242880, "Expected blob to be max 5242880")
end

function M.BodyBlob(blob)
	asserts.AssertBodyBlob(blob)
	return blob
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "runtime.sagemaker.amazonaws.com"
		end
	end
	local ss = { "runtime.sagemaker" }
	if use_dualstack then
		ss[#ss + 1] = "dualstack"
	end
	ss[#ss + 1] = region
	ss[#ss + 1] = "amazonaws.com"
	if region == "cn-north-1" then
		ss[#ss + 1] = "cn"
	end
	return table.concat(ss, ".")
end


function M.init(config)
	assert(config, "You must provide a config table")
	assert(config.region, "You must provide a region in the config table")

	settings.service = M.metadata.endpoint_prefix
	settings.protocol = M.metadata.protocol
	settings.region = config.region
	settings.endpoint = config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
	settings.signature_version = M.metadata.signature_version
	settings.uri = (config.scheme or "https") .. "://" .. settings.endpoint
end


--
-- OPERATIONS
--
--- Call InvokeEndpoint asynchronously, invoking a callback when done
-- @param InvokeEndpointInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.InvokeEndpointAsync(InvokeEndpointInput, cb)
	assert(InvokeEndpointInput, "You must provide a InvokeEndpointInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".InvokeEndpoint",
	}
	for header,value in pairs(InvokeEndpointInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/endpoints/{EndpointName}/invocations", InvokeEndpointInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call InvokeEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param InvokeEndpointInput
-- @return response
-- @return error_type
-- @return error_message
function M.InvokeEndpointSync(InvokeEndpointInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.InvokeEndpointAsync(InvokeEndpointInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
