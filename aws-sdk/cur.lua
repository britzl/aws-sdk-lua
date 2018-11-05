--- GENERATED CODE - DO NOT MODIFY
-- AWS Cost and Usage Report Service (cur-2017-01-06)

local M = {}

M.metadata = {
	api_version = "2017-01-06",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "cur",
	service_abbreviation = "",
	service_full_name = "AWS Cost and Usage Report Service",
	signature_version = "v4",
	target_prefix = "AWSOrigamiServiceGatewayService",
	timestamp_format = "",
	global_endpoint = "",
	uid = "cur-2017-01-06",
}

local keys = {}
local asserts = {}

keys.ReportDefinition = { ["ReportName"] = true, ["Compression"] = true, ["S3Region"] = true, ["Format"] = true, ["S3Prefix"] = true, ["S3Bucket"] = true, ["TimeUnit"] = true, ["AdditionalArtifacts"] = true, ["AdditionalSchemaElements"] = true, nil }

function asserts.AssertReportDefinition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReportDefinition to be of type 'table'")
	assert(struct["ReportName"], "Expected key ReportName to exist in table")
	assert(struct["TimeUnit"], "Expected key TimeUnit to exist in table")
	assert(struct["Format"], "Expected key Format to exist in table")
	assert(struct["Compression"], "Expected key Compression to exist in table")
	assert(struct["AdditionalSchemaElements"], "Expected key AdditionalSchemaElements to exist in table")
	assert(struct["S3Bucket"], "Expected key S3Bucket to exist in table")
	assert(struct["S3Prefix"], "Expected key S3Prefix to exist in table")
	assert(struct["S3Region"], "Expected key S3Region to exist in table")
	if struct["ReportName"] then asserts.AssertReportName(struct["ReportName"]) end
	if struct["Compression"] then asserts.AssertCompressionFormat(struct["Compression"]) end
	if struct["S3Region"] then asserts.AssertAWSRegion(struct["S3Region"]) end
	if struct["Format"] then asserts.AssertReportFormat(struct["Format"]) end
	if struct["S3Prefix"] then asserts.AssertS3Prefix(struct["S3Prefix"]) end
	if struct["S3Bucket"] then asserts.AssertS3Bucket(struct["S3Bucket"]) end
	if struct["TimeUnit"] then asserts.AssertTimeUnit(struct["TimeUnit"]) end
	if struct["AdditionalArtifacts"] then asserts.AssertAdditionalArtifactList(struct["AdditionalArtifacts"]) end
	if struct["AdditionalSchemaElements"] then asserts.AssertSchemaElementList(struct["AdditionalSchemaElements"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReportDefinition[k], "ReportDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReportDefinition
-- The definition of AWS Cost and Usage Report. Customer can specify the report name, time unit, report format, compression format, S3 bucket and additional artifacts and schema elements in the definition.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReportName [ReportName] 
-- * Compression [CompressionFormat] 
-- * S3Region [AWSRegion] 
-- * Format [ReportFormat] 
-- * S3Prefix [S3Prefix] 
-- * S3Bucket [S3Bucket] 
-- * TimeUnit [TimeUnit] 
-- * AdditionalArtifacts [AdditionalArtifactList] 
-- * AdditionalSchemaElements [SchemaElementList] 
-- Required key: ReportName
-- Required key: TimeUnit
-- Required key: Format
-- Required key: Compression
-- Required key: AdditionalSchemaElements
-- Required key: S3Bucket
-- Required key: S3Prefix
-- Required key: S3Region
-- @return ReportDefinition structure as a key-value pair table
function M.ReportDefinition(args)
	assert(args, "You must provide an argument table when creating ReportDefinition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReportName"] = args["ReportName"],
		["Compression"] = args["Compression"],
		["S3Region"] = args["S3Region"],
		["Format"] = args["Format"],
		["S3Prefix"] = args["S3Prefix"],
		["S3Bucket"] = args["S3Bucket"],
		["TimeUnit"] = args["TimeUnit"],
		["AdditionalArtifacts"] = args["AdditionalArtifacts"],
		["AdditionalSchemaElements"] = args["AdditionalSchemaElements"],
	}
	asserts.AssertReportDefinition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutReportDefinitionResponse = { nil }

function asserts.AssertPutReportDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutReportDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PutReportDefinitionResponse[k], "PutReportDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutReportDefinitionResponse
-- Response of PutReportDefinition
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PutReportDefinitionResponse structure as a key-value pair table
function M.PutReportDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating PutReportDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPutReportDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ReportLimitReachedException = { ["Message"] = true, nil }

function asserts.AssertReportLimitReachedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReportLimitReachedException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ReportLimitReachedException[k], "ReportLimitReachedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReportLimitReachedException
-- This exception is thrown when the number of report preference reaches max limit. The max number is 5.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return ReportLimitReachedException structure as a key-value pair table
function M.ReportLimitReachedException(args)
	assert(args, "You must provide an argument table when creating ReportLimitReachedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertReportLimitReachedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InternalErrorException = { ["Message"] = true, nil }

function asserts.AssertInternalErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalErrorException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalErrorException[k], "InternalErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalErrorException
-- This exception is thrown on a known dependency failure.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return InternalErrorException structure as a key-value pair table
function M.InternalErrorException(args)
	assert(args, "You must provide an argument table when creating InternalErrorException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertInternalErrorException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ValidationException = { ["Message"] = true, nil }

function asserts.AssertValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidationException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ValidationException[k], "ValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidationException
-- This exception is thrown when providing an invalid input. eg. Put a report preference with an invalid report name, or Delete a report preference with an empty report name.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return ValidationException structure as a key-value pair table
function M.ValidationException(args)
	assert(args, "You must provide an argument table when creating ValidationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertValidationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DuplicateReportNameException = { ["Message"] = true, nil }

function asserts.AssertDuplicateReportNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateReportNameException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.DuplicateReportNameException[k], "DuplicateReportNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateReportNameException
-- This exception is thrown when putting a report preference with a name that already exists.
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Message [ErrorMessage] 
-- @return DuplicateReportNameException structure as a key-value pair table
function M.DuplicateReportNameException(args)
	assert(args, "You must provide an argument table when creating DuplicateReportNameException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Message"] = args["Message"],
	}
	asserts.AssertDuplicateReportNameException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteReportDefinitionResponse = { ["ResponseMessage"] = true, nil }

function asserts.AssertDeleteReportDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReportDefinitionResponse to be of type 'table'")
	if struct["ResponseMessage"] then asserts.AssertDeleteResponseMessage(struct["ResponseMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteReportDefinitionResponse[k], "DeleteReportDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReportDefinitionResponse
-- Response of DeleteReportDefinition
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResponseMessage [DeleteResponseMessage] 
-- @return DeleteReportDefinitionResponse structure as a key-value pair table
function M.DeleteReportDefinitionResponse(args)
	assert(args, "You must provide an argument table when creating DeleteReportDefinitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResponseMessage"] = args["ResponseMessage"],
	}
	asserts.AssertDeleteReportDefinitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeReportDefinitionsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertDescribeReportDefinitionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReportDefinitionsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertGenericString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReportDefinitionsRequest[k], "DescribeReportDefinitionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReportDefinitionsRequest
-- Request of DescribeReportDefinitions
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [GenericString] 
-- * MaxResults [MaxResults] 
-- @return DescribeReportDefinitionsRequest structure as a key-value pair table
function M.DescribeReportDefinitionsRequest(args)
	assert(args, "You must provide an argument table when creating DescribeReportDefinitionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertDescribeReportDefinitionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DescribeReportDefinitionsResponse = { ["ReportDefinitions"] = true, ["NextToken"] = true, nil }

function asserts.AssertDescribeReportDefinitionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReportDefinitionsResponse to be of type 'table'")
	if struct["ReportDefinitions"] then asserts.AssertReportDefinitionList(struct["ReportDefinitions"]) end
	if struct["NextToken"] then asserts.AssertGenericString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.DescribeReportDefinitionsResponse[k], "DescribeReportDefinitionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReportDefinitionsResponse
-- Response of DescribeReportDefinitions
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReportDefinitions [ReportDefinitionList] 
-- * NextToken [GenericString] 
-- @return DescribeReportDefinitionsResponse structure as a key-value pair table
function M.DescribeReportDefinitionsResponse(args)
	assert(args, "You must provide an argument table when creating DescribeReportDefinitionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReportDefinitions"] = args["ReportDefinitions"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertDescribeReportDefinitionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteReportDefinitionRequest = { ["ReportName"] = true, nil }

function asserts.AssertDeleteReportDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReportDefinitionRequest to be of type 'table'")
	if struct["ReportName"] then asserts.AssertReportName(struct["ReportName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteReportDefinitionRequest[k], "DeleteReportDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReportDefinitionRequest
-- Request of DeleteReportDefinition
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReportName [ReportName] 
-- @return DeleteReportDefinitionRequest structure as a key-value pair table
function M.DeleteReportDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteReportDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReportName"] = args["ReportName"],
	}
	asserts.AssertDeleteReportDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutReportDefinitionRequest = { ["ReportDefinition"] = true, nil }

function asserts.AssertPutReportDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutReportDefinitionRequest to be of type 'table'")
	assert(struct["ReportDefinition"], "Expected key ReportDefinition to exist in table")
	if struct["ReportDefinition"] then asserts.AssertReportDefinition(struct["ReportDefinition"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutReportDefinitionRequest[k], "PutReportDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutReportDefinitionRequest
-- Request of PutReportDefinition
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ReportDefinition [ReportDefinition] 
-- Required key: ReportDefinition
-- @return PutReportDefinitionRequest structure as a key-value pair table
function M.PutReportDefinitionRequest(args)
	assert(args, "You must provide an argument table when creating PutReportDefinitionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ReportDefinition"] = args["ReportDefinition"],
	}
	asserts.AssertPutReportDefinitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertAWSRegion(str)
	assert(str)
	assert(type(str) == "string", "Expected AWSRegion to be of type 'string'")
end

-- Region of customer S3 bucket.
function M.AWSRegion(str)
	asserts.AssertAWSRegion(str)
	return str
end

function asserts.AssertReportName(str)
	assert(str)
	assert(type(str) == "string", "Expected ReportName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

-- Preferred name for a report, it has to be unique. Must starts with a number/letter, case sensitive. Limited to 256 characters.
function M.ReportName(str)
	asserts.AssertReportName(str)
	return str
end

function asserts.AssertS3Prefix(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Prefix to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

-- Preferred report path prefix. Limited to 256 characters.
function M.S3Prefix(str)
	asserts.AssertS3Prefix(str)
	return str
end

function asserts.AssertGenericString(str)
	assert(str)
	assert(type(str) == "string", "Expected GenericString to be of type 'string'")
end

-- A generic string.
function M.GenericString(str)
	asserts.AssertGenericString(str)
	return str
end

function asserts.AssertDeleteResponseMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected DeleteResponseMessage to be of type 'string'")
end

-- A message indicates if the deletion is successful.
function M.DeleteResponseMessage(str)
	asserts.AssertDeleteResponseMessage(str)
	return str
end

function asserts.AssertCompressionFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected CompressionFormat to be of type 'string'")
end

-- Preferred compression format for report.
function M.CompressionFormat(str)
	asserts.AssertCompressionFormat(str)
	return str
end

function asserts.AssertS3Bucket(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Bucket to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

-- Name of customer S3 bucket.
function M.S3Bucket(str)
	asserts.AssertS3Bucket(str)
	return str
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

-- A message to show the detail of the exception.
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertSchemaElement(str)
	assert(str)
	assert(type(str) == "string", "Expected SchemaElement to be of type 'string'")
end

-- Preference of including Resource IDs. You can include additional details about individual resource IDs in your report.
function M.SchemaElement(str)
	asserts.AssertSchemaElement(str)
	return str
end

function asserts.AssertTimeUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected TimeUnit to be of type 'string'")
end

-- The frequency on which report data are measured and displayed.
function M.TimeUnit(str)
	asserts.AssertTimeUnit(str)
	return str
end

function asserts.AssertAdditionalArtifact(str)
	assert(str)
	assert(type(str) == "string", "Expected AdditionalArtifact to be of type 'string'")
end

-- Enable support for Redshift and/or QuickSight.
function M.AdditionalArtifact(str)
	asserts.AssertAdditionalArtifact(str)
	return str
end

function asserts.AssertReportFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected ReportFormat to be of type 'string'")
end

-- Preferred format for report.
function M.ReportFormat(str)
	asserts.AssertReportFormat(str)
	return str
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 5, "Expected integer to be max 5")
	assert(integer >= 5, "Expected integer to be min 5")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertAdditionalArtifactList(list)
	assert(list)
	assert(type(list) == "table", "Expected AdditionalArtifactList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAdditionalArtifact(v)
	end
end

-- A list of additional artifacts.
-- List of AdditionalArtifact objects
function M.AdditionalArtifactList(list)
	asserts.AssertAdditionalArtifactList(list)
	return list
end

function asserts.AssertSchemaElementList(list)
	assert(list)
	assert(type(list) == "table", "Expected SchemaElementList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSchemaElement(v)
	end
end

-- A list of schema elements.
-- List of SchemaElement objects
function M.SchemaElementList(list)
	asserts.AssertSchemaElementList(list)
	return list
end

function asserts.AssertReportDefinitionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReportDefinitionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertReportDefinition(v)
	end
end

-- A list of report definitions.
-- List of ReportDefinition objects
function M.ReportDefinitionList(list)
	asserts.AssertReportDefinitionList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "cur.amazonaws.com"
		end
	end
	local ss = { "cur" }
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
--- Call DescribeReportDefinitions asynchronously, invoking a callback when done
-- @param DescribeReportDefinitionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DescribeReportDefinitionsAsync(DescribeReportDefinitionsRequest, cb)
	assert(DescribeReportDefinitionsRequest, "You must provide a DescribeReportDefinitionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrigamiServiceGatewayService.DescribeReportDefinitions",
	}
	for header,value in pairs(DescribeReportDefinitionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DescribeReportDefinitionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DescribeReportDefinitions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DescribeReportDefinitionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DescribeReportDefinitionsSync(DescribeReportDefinitionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DescribeReportDefinitionsAsync(DescribeReportDefinitionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutReportDefinition asynchronously, invoking a callback when done
-- @param PutReportDefinitionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutReportDefinitionAsync(PutReportDefinitionRequest, cb)
	assert(PutReportDefinitionRequest, "You must provide a PutReportDefinitionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrigamiServiceGatewayService.PutReportDefinition",
	}
	for header,value in pairs(PutReportDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutReportDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutReportDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutReportDefinitionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutReportDefinitionSync(PutReportDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutReportDefinitionAsync(PutReportDefinitionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteReportDefinition asynchronously, invoking a callback when done
-- @param DeleteReportDefinitionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteReportDefinitionAsync(DeleteReportDefinitionRequest, cb)
	assert(DeleteReportDefinitionRequest, "You must provide a DeleteReportDefinitionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSOrigamiServiceGatewayService.DeleteReportDefinition",
	}
	for header,value in pairs(DeleteReportDefinitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteReportDefinitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteReportDefinition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteReportDefinitionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteReportDefinitionSync(DeleteReportDefinitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteReportDefinitionAsync(DeleteReportDefinitionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
