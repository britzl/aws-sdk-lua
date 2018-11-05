--- GENERATED CODE - DO NOT MODIFY
-- Amazon Translate (translate-2017-07-01)

local M = {}

M.metadata = {
	api_version = "2017-07-01",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "translate",
	service_abbreviation = "",
	service_full_name = "Amazon Translate",
	signature_version = "v4",
	target_prefix = "AWSShineFrontendService_20170701",
	timestamp_format = "",
	global_endpoint = "",
	uid = "translate-2017-07-01",
}

local keys = {}
local asserts = {}

keys.InvalidRequestException = { ["Message"] = true, nil }

function asserts.AssertInvalidRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidRequestException[k], "InvalidRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestException
-- <p>The request is invalid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InvalidRequestException structure as a key-value pair table
function M.InvalidRequestException(args)
	assert(args, "You must provide an argument table when creating InvalidRequestException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInvalidRequestException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InternalServerException = { ["Message"] = true, nil }

function asserts.AssertInternalServerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServerException[k], "InternalServerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerException
-- <p>An internal server error occurred. Retry your request.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return InternalServerException structure as a key-value pair table
function M.InternalServerException(args)
	assert(args, "You must provide an argument table when creating InternalServerException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInternalServerException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ServiceUnavailableException = { ["Message"] = true, nil }

function asserts.AssertServiceUnavailableException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ServiceUnavailableException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ServiceUnavailableException[k], "ServiceUnavailableException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ServiceUnavailableException
-- <p>Amazon Translate is unavailable. Retry your request later.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return ServiceUnavailableException structure as a key-value pair table
function M.ServiceUnavailableException(args)
	assert(args, "You must provide an argument table when creating ServiceUnavailableException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertServiceUnavailableException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnsupportedLanguagePairException = { ["Message"] = true, nil }

function asserts.AssertUnsupportedLanguagePairException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnsupportedLanguagePairException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnsupportedLanguagePairException[k], "UnsupportedLanguagePairException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnsupportedLanguagePairException
-- <p>Amazon Translate cannot translate input text in the source language into this target language. For more information, see <a>how-to-error-msg</a>. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return UnsupportedLanguagePairException structure as a key-value pair table
function M.UnsupportedLanguagePairException(args)
	assert(args, "You must provide an argument table when creating UnsupportedLanguagePairException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertUnsupportedLanguagePairException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DetectedLanguageLowConfidenceException = { ["Message"] = true, ["DetectedLanguageCode"] = true, nil }

function asserts.AssertDetectedLanguageLowConfidenceException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DetectedLanguageLowConfidenceException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	if struct["DetectedLanguageCode"] then asserts.AssertLanguageCodeString(struct["DetectedLanguageCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.DetectedLanguageLowConfidenceException[k], "DetectedLanguageLowConfidenceException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DetectedLanguageLowConfidenceException
-- <p>The confidence that Amazon Comprehend accurately detected the source language is low. If a low confidence level is acceptable for your application, you can use the language in the exception to call Amazon Translate again. For more information, see the <a href="https://docs.aws.amazon.com/comprehend/latest/dg/API_DetectDominantLanguage.html">DetectDominantLanguage</a> operation in the <i>Amazon Comprehend Developer Guide</i>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- * DetectedLanguageCode [LanguageCodeString] <p>Auto detected language code from Comprehend.</p>
-- @return DetectedLanguageLowConfidenceException structure as a key-value pair table
function M.DetectedLanguageLowConfidenceException(args)
	assert(args, "You must provide an argument table when creating DetectedLanguageLowConfidenceException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
		["DetectedLanguageCode"] = args["DetectedLanguageCode"],
	}
	asserts.AssertDetectedLanguageLowConfidenceException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TooManyRequestsException = { ["Message"] = true, nil }

function asserts.AssertTooManyRequestsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestsException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyRequestsException[k], "TooManyRequestsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestsException
-- <p>The number of requests exceeds the limit. Resubmit your request later.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return TooManyRequestsException structure as a key-value pair table
function M.TooManyRequestsException(args)
	assert(args, "You must provide an argument table when creating TooManyRequestsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertTooManyRequestsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TranslateTextResponse = { ["TargetLanguageCode"] = true, ["TranslatedText"] = true, ["SourceLanguageCode"] = true, nil }

function asserts.AssertTranslateTextResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TranslateTextResponse to be of type 'table'")
	assert(struct["TranslatedText"], "Expected key TranslatedText to exist in table")
	assert(struct["SourceLanguageCode"], "Expected key SourceLanguageCode to exist in table")
	assert(struct["TargetLanguageCode"], "Expected key TargetLanguageCode to exist in table")
	if struct["TargetLanguageCode"] then asserts.AssertLanguageCodeString(struct["TargetLanguageCode"]) end
	if struct["TranslatedText"] then asserts.AssertString(struct["TranslatedText"]) end
	if struct["SourceLanguageCode"] then asserts.AssertLanguageCodeString(struct["SourceLanguageCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.TranslateTextResponse[k], "TranslateTextResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TranslateTextResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetLanguageCode [LanguageCodeString] <p>The language code for the language of the translated text. </p>
-- * TranslatedText [String] <p>The text translated into the target language.</p>
-- * SourceLanguageCode [LanguageCodeString] <p>The language code for the language of the input text. </p>
-- Required key: TranslatedText
-- Required key: SourceLanguageCode
-- Required key: TargetLanguageCode
-- @return TranslateTextResponse structure as a key-value pair table
function M.TranslateTextResponse(args)
	assert(args, "You must provide an argument table when creating TranslateTextResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetLanguageCode"] = args["TargetLanguageCode"],
		["TranslatedText"] = args["TranslatedText"],
		["SourceLanguageCode"] = args["SourceLanguageCode"],
	}
	asserts.AssertTranslateTextResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TextSizeLimitExceededException = { ["Message"] = true, nil }

function asserts.AssertTextSizeLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TextSizeLimitExceededException to be of type 'table'")
	if struct["Message"] then asserts.AssertString(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.TextSizeLimitExceededException[k], "TextSizeLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TextSizeLimitExceededException
-- <p>The size of the input text exceeds the length constraint for the <code>Text</code> field. Try again with a shorter text. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [String] 
-- @return TextSizeLimitExceededException structure as a key-value pair table
function M.TextSizeLimitExceededException(args)
	assert(args, "You must provide an argument table when creating TextSizeLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertTextSizeLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TranslateTextRequest = { ["TargetLanguageCode"] = true, ["Text"] = true, ["SourceLanguageCode"] = true, nil }

function asserts.AssertTranslateTextRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TranslateTextRequest to be of type 'table'")
	assert(struct["Text"], "Expected key Text to exist in table")
	assert(struct["SourceLanguageCode"], "Expected key SourceLanguageCode to exist in table")
	assert(struct["TargetLanguageCode"], "Expected key TargetLanguageCode to exist in table")
	if struct["TargetLanguageCode"] then asserts.AssertLanguageCodeString(struct["TargetLanguageCode"]) end
	if struct["Text"] then asserts.AssertBoundedLengthString(struct["Text"]) end
	if struct["SourceLanguageCode"] then asserts.AssertLanguageCodeString(struct["SourceLanguageCode"]) end
	for k,_ in pairs(struct) do
		assert(keys.TranslateTextRequest[k], "TranslateTextRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TranslateTextRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetLanguageCode [LanguageCodeString] <p>One of the supported language codes for the target text. If the <code>SourceLanguageCode</code> is not "en", the <code>TargetLanguageCode</code> must be "en".</p>
-- * Text [BoundedLengthString] <p>The text to translate.</p>
-- * SourceLanguageCode [LanguageCodeString] <p>One of the supported language codes for the source text. If the <code>TargetLanguageCode</code> is not "en", the <code>SourceLanguageCode</code> must be "en".</p> <p>To have Amazon Translate determine the source language of your text, you can specify <code>auto</code> in the <code>SourceLanguageCode</code> field. If you specify <code>auto</code>, Amazon Translate will call Amazon Comprehend to determine the source language.</p>
-- Required key: Text
-- Required key: SourceLanguageCode
-- Required key: TargetLanguageCode
-- @return TranslateTextRequest structure as a key-value pair table
function M.TranslateTextRequest(args)
	assert(args, "You must provide an argument table when creating TranslateTextRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetLanguageCode"] = args["TargetLanguageCode"],
		["Text"] = args["Text"],
		["SourceLanguageCode"] = args["SourceLanguageCode"],
	}
	asserts.AssertTranslateTextRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertBoundedLengthString(str)
	assert(str)
	assert(type(str) == "string", "Expected BoundedLengthString to be of type 'string'")
	assert(#str <= 5000, "Expected string to be max 5000 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.BoundedLengthString(str)
	asserts.AssertBoundedLengthString(str)
	return str
end

function asserts.AssertLanguageCodeString(str)
	assert(str)
	assert(type(str) == "string", "Expected LanguageCodeString to be of type 'string'")
	assert(#str <= 5, "Expected string to be max 5 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.LanguageCodeString(str)
	asserts.AssertLanguageCodeString(str)
	return str
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "translate.amazonaws.com"
		end
	end
	local ss = { "translate" }
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
--- Call TranslateText asynchronously, invoking a callback when done
-- @param TranslateTextRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.TranslateTextAsync(TranslateTextRequest, cb)
	assert(TranslateTextRequest, "You must provide a TranslateTextRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSShineFrontendService_20170701.TranslateText",
	}
	for header,value in pairs(TranslateTextRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", TranslateTextRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call TranslateText synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param TranslateTextRequest
-- @return response
-- @return error_type
-- @return error_message
function M.TranslateTextSync(TranslateTextRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.TranslateTextAsync(TranslateTextRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
