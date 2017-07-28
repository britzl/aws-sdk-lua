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
-- @param _ReportName [ReportName] 
-- @param _Compression [CompressionFormat] 
-- @param _S3Region [AWSRegion] 
-- @param _Format [ReportFormat] 
-- @param _S3Prefix [S3Prefix] 
-- @param _S3Bucket [S3Bucket] 
-- @param _TimeUnit [TimeUnit] 
-- @param _AdditionalArtifacts [AdditionalArtifactList] 
-- @param _AdditionalSchemaElements [SchemaElementList] 
-- Required parameter: ReportName
-- Required parameter: TimeUnit
-- Required parameter: Format
-- Required parameter: Compression
-- Required parameter: AdditionalSchemaElements
-- Required parameter: S3Bucket
-- Required parameter: S3Prefix
-- Required parameter: S3Region
function M.ReportDefinition(_ReportName, _Compression, _S3Region, _Format, _S3Prefix, _S3Bucket, _TimeUnit, _AdditionalArtifacts, _AdditionalSchemaElements, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReportDefinition")
	local t = { 
		["ReportName"] = _ReportName,
		["Compression"] = _Compression,
		["S3Region"] = _S3Region,
		["Format"] = _Format,
		["S3Prefix"] = _S3Prefix,
		["S3Bucket"] = _S3Bucket,
		["TimeUnit"] = _TimeUnit,
		["AdditionalArtifacts"] = _AdditionalArtifacts,
		["AdditionalSchemaElements"] = _AdditionalSchemaElements,
	}
	asserts.AssertReportDefinition(t)
	return t
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
function M.PutReportDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutReportDefinitionResponse")
	local t = { 
	}
	asserts.AssertPutReportDefinitionResponse(t)
	return t
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
-- @param _Message [ErrorMessage] 
function M.ReportLimitReachedException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReportLimitReachedException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertReportLimitReachedException(t)
	return t
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
-- @param _Message [ErrorMessage] 
function M.InternalErrorException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalErrorException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInternalErrorException(t)
	return t
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
-- @param _Message [ErrorMessage] 
function M.ValidationException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidationException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertValidationException(t)
	return t
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
-- @param _Message [ErrorMessage] 
function M.DuplicateReportNameException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateReportNameException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertDuplicateReportNameException(t)
	return t
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
-- @param _ResponseMessage [DeleteResponseMessage] 
function M.DeleteReportDefinitionResponse(_ResponseMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReportDefinitionResponse")
	local t = { 
		["ResponseMessage"] = _ResponseMessage,
	}
	asserts.AssertDeleteReportDefinitionResponse(t)
	return t
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
-- @param _NextToken [GenericString] 
-- @param _MaxResults [MaxResults] 
function M.DescribeReportDefinitionsRequest(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReportDefinitionsRequest")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertDescribeReportDefinitionsRequest(t)
	return t
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
-- @param _ReportDefinitions [ReportDefinitionList] 
-- @param _NextToken [GenericString] 
function M.DescribeReportDefinitionsResponse(_ReportDefinitions, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReportDefinitionsResponse")
	local t = { 
		["ReportDefinitions"] = _ReportDefinitions,
		["NextToken"] = _NextToken,
	}
	asserts.AssertDescribeReportDefinitionsResponse(t)
	return t
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
-- @param _ReportName [ReportName] 
function M.DeleteReportDefinitionRequest(_ReportName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReportDefinitionRequest")
	local t = { 
		["ReportName"] = _ReportName,
	}
	asserts.AssertDeleteReportDefinitionRequest(t)
	return t
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
-- @param _ReportDefinition [ReportDefinition] 
-- Required parameter: ReportDefinition
function M.PutReportDefinitionRequest(_ReportDefinition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutReportDefinitionRequest")
	local t = { 
		["ReportDefinition"] = _ReportDefinition,
	}
	asserts.AssertPutReportDefinitionRequest(t)
	return t
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


local headers = require "aws-sdk.core.headers"
local content_type = require "aws-sdk.core.content_type"
local scheme_mapper = require "aws-sdk.core.scheme_mapper"
local request_handlers = require "aws-sdk.core.request_handlers"

local uri = ""


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
	uri = scheme_mapper.from_string(config.scheme) .. "://"
	uri = uri .. config.endpoint_override or endpoint_for_region(config.region, config.use_dualstack)
end


--
-- OPERATIONS
--
--- DescribeReportDefinitions
-- @param DescribeReportDefinitionsRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DescribeReportDefinitionsAsync(DescribeReportDefinitionsRequest, cb)
	assert(DescribeReportDefinitionsRequest, "You must provide a DescribeReportDefinitionsRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrigamiServiceGatewayService.DescribeReportDefinitions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DescribeReportDefinitionsRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- PutReportDefinition
-- @param PutReportDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.PutReportDefinitionAsync(PutReportDefinitionRequest, cb)
	assert(PutReportDefinitionRequest, "You must provide a PutReportDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrigamiServiceGatewayService.PutReportDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", PutReportDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteReportDefinition
-- @param DeleteReportDefinitionRequest
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteReportDefinitionAsync(DeleteReportDefinitionRequest, cb)
	assert(DeleteReportDefinitionRequest, "You must provide a DeleteReportDefinitionRequest")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AWSOrigamiServiceGatewayService.DeleteReportDefinition",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteReportDefinitionRequest, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
