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

local ReportDefinition_keys = { "ReportName" = true, "Compression" = true, "S3Region" = true, "Format" = true, "S3Prefix" = true, "S3Bucket" = true, "TimeUnit" = true, "AdditionalArtifacts" = true, "AdditionalSchemaElements" = true, nil }

function M.AssertReportDefinition(struct)
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
	if struct["ReportName"] then M.AssertReportName(struct["ReportName"]) end
	if struct["Compression"] then M.AssertCompressionFormat(struct["Compression"]) end
	if struct["S3Region"] then M.AssertAWSRegion(struct["S3Region"]) end
	if struct["Format"] then M.AssertReportFormat(struct["Format"]) end
	if struct["S3Prefix"] then M.AssertS3Prefix(struct["S3Prefix"]) end
	if struct["S3Bucket"] then M.AssertS3Bucket(struct["S3Bucket"]) end
	if struct["TimeUnit"] then M.AssertTimeUnit(struct["TimeUnit"]) end
	if struct["AdditionalArtifacts"] then M.AssertAdditionalArtifactList(struct["AdditionalArtifacts"]) end
	if struct["AdditionalSchemaElements"] then M.AssertSchemaElementList(struct["AdditionalSchemaElements"]) end
	for k,_ in pairs(struct) do
		assert(ReportDefinition_keys[k], "ReportDefinition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReportDefinition
-- The definition of AWS Cost and Usage Report. Customer can specify the report name, time unit, report format, compression format, S3 bucket and additional artifacts and schema elements in the definition.
-- @param ReportName [ReportName] The definition of AWS Cost and Usage Report. Customer can specify the report name, time unit, report format, compression format, S3 bucket and additional artifacts and schema elements in the definition.
-- @param Compression [CompressionFormat] The definition of AWS Cost and Usage Report. Customer can specify the report name, time unit, report format, compression format, S3 bucket and additional artifacts and schema elements in the definition.
-- @param S3Region [AWSRegion] The definition of AWS Cost and Usage Report. Customer can specify the report name, time unit, report format, compression format, S3 bucket and additional artifacts and schema elements in the definition.
-- @param Format [ReportFormat] The definition of AWS Cost and Usage Report. Customer can specify the report name, time unit, report format, compression format, S3 bucket and additional artifacts and schema elements in the definition.
-- @param S3Prefix [S3Prefix] The definition of AWS Cost and Usage Report. Customer can specify the report name, time unit, report format, compression format, S3 bucket and additional artifacts and schema elements in the definition.
-- @param S3Bucket [S3Bucket] The definition of AWS Cost and Usage Report. Customer can specify the report name, time unit, report format, compression format, S3 bucket and additional artifacts and schema elements in the definition.
-- @param TimeUnit [TimeUnit] The definition of AWS Cost and Usage Report. Customer can specify the report name, time unit, report format, compression format, S3 bucket and additional artifacts and schema elements in the definition.
-- @param AdditionalArtifacts [AdditionalArtifactList] The definition of AWS Cost and Usage Report. Customer can specify the report name, time unit, report format, compression format, S3 bucket and additional artifacts and schema elements in the definition.
-- @param AdditionalSchemaElements [SchemaElementList] The definition of AWS Cost and Usage Report. Customer can specify the report name, time unit, report format, compression format, S3 bucket and additional artifacts and schema elements in the definition.
-- Required parameter: ReportName
-- Required parameter: TimeUnit
-- Required parameter: Format
-- Required parameter: Compression
-- Required parameter: AdditionalSchemaElements
-- Required parameter: S3Bucket
-- Required parameter: S3Prefix
-- Required parameter: S3Region
function M.ReportDefinition(ReportName, Compression, S3Region, Format, S3Prefix, S3Bucket, TimeUnit, AdditionalArtifacts, AdditionalSchemaElements, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReportDefinition")
	local t = { 
		["ReportName"] = ReportName,
		["Compression"] = Compression,
		["S3Region"] = S3Region,
		["Format"] = Format,
		["S3Prefix"] = S3Prefix,
		["S3Bucket"] = S3Bucket,
		["TimeUnit"] = TimeUnit,
		["AdditionalArtifacts"] = AdditionalArtifacts,
		["AdditionalSchemaElements"] = AdditionalSchemaElements,
	}
	M.AssertReportDefinition(t)
	return t
end

local PutReportDefinitionResponse_keys = { nil }

function M.AssertPutReportDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutReportDefinitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(PutReportDefinitionResponse_keys[k], "PutReportDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutReportDefinitionResponse
-- Response of PutReportDefinition
function M.PutReportDefinitionResponse(...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutReportDefinitionResponse")
	local t = { 
	}
	M.AssertPutReportDefinitionResponse(t)
	return t
end

local ReportLimitReachedException_keys = { "Message" = true, nil }

function M.AssertReportLimitReachedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ReportLimitReachedException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ReportLimitReachedException_keys[k], "ReportLimitReachedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ReportLimitReachedException
-- This exception is thrown when the number of report preference reaches max limit. The max number is 5.
-- @param Message [ErrorMessage] This exception is thrown when the number of report preference reaches max limit. The max number is 5.
function M.ReportLimitReachedException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ReportLimitReachedException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertReportLimitReachedException(t)
	return t
end

local InternalErrorException_keys = { "Message" = true, nil }

function M.AssertInternalErrorException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalErrorException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InternalErrorException_keys[k], "InternalErrorException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalErrorException
-- This exception is thrown on a known dependency failure.
-- @param Message [ErrorMessage] This exception is thrown on a known dependency failure.
function M.InternalErrorException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalErrorException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInternalErrorException(t)
	return t
end

local ValidationException_keys = { "Message" = true, nil }

function M.AssertValidationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ValidationException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(ValidationException_keys[k], "ValidationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ValidationException
-- This exception is thrown when providing an invalid input. eg. Put a report preference with an invalid report name, or Delete a report preference with an empty report name.
-- @param Message [ErrorMessage] This exception is thrown when providing an invalid input. eg. Put a report preference with an invalid report name, or Delete a report preference with an empty report name.
function M.ValidationException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ValidationException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertValidationException(t)
	return t
end

local DuplicateReportNameException_keys = { "Message" = true, nil }

function M.AssertDuplicateReportNameException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DuplicateReportNameException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(DuplicateReportNameException_keys[k], "DuplicateReportNameException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DuplicateReportNameException
-- This exception is thrown when putting a report preference with a name that already exists.
-- @param Message [ErrorMessage] This exception is thrown when putting a report preference with a name that already exists.
function M.DuplicateReportNameException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DuplicateReportNameException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertDuplicateReportNameException(t)
	return t
end

local DeleteReportDefinitionResponse_keys = { "ResponseMessage" = true, nil }

function M.AssertDeleteReportDefinitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReportDefinitionResponse to be of type 'table'")
	if struct["ResponseMessage"] then M.AssertDeleteResponseMessage(struct["ResponseMessage"]) end
	for k,_ in pairs(struct) do
		assert(DeleteReportDefinitionResponse_keys[k], "DeleteReportDefinitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReportDefinitionResponse
-- Response of DeleteReportDefinition
-- @param ResponseMessage [DeleteResponseMessage] Response of DeleteReportDefinition
function M.DeleteReportDefinitionResponse(ResponseMessage, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReportDefinitionResponse")
	local t = { 
		["ResponseMessage"] = ResponseMessage,
	}
	M.AssertDeleteReportDefinitionResponse(t)
	return t
end

local DescribeReportDefinitionsRequest_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertDescribeReportDefinitionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReportDefinitionsRequest to be of type 'table'")
	if struct["NextToken"] then M.AssertGenericString(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(DescribeReportDefinitionsRequest_keys[k], "DescribeReportDefinitionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReportDefinitionsRequest
-- Request of DescribeReportDefinitions
-- @param NextToken [GenericString] Request of DescribeReportDefinitions
-- @param MaxResults [MaxResults] Request of DescribeReportDefinitions
function M.DescribeReportDefinitionsRequest(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReportDefinitionsRequest")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertDescribeReportDefinitionsRequest(t)
	return t
end

local DescribeReportDefinitionsResponse_keys = { "ReportDefinitions" = true, "NextToken" = true, nil }

function M.AssertDescribeReportDefinitionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DescribeReportDefinitionsResponse to be of type 'table'")
	if struct["ReportDefinitions"] then M.AssertReportDefinitionList(struct["ReportDefinitions"]) end
	if struct["NextToken"] then M.AssertGenericString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(DescribeReportDefinitionsResponse_keys[k], "DescribeReportDefinitionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DescribeReportDefinitionsResponse
-- Response of DescribeReportDefinitions
-- @param ReportDefinitions [ReportDefinitionList] Response of DescribeReportDefinitions
-- @param NextToken [GenericString] Response of DescribeReportDefinitions
function M.DescribeReportDefinitionsResponse(ReportDefinitions, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DescribeReportDefinitionsResponse")
	local t = { 
		["ReportDefinitions"] = ReportDefinitions,
		["NextToken"] = NextToken,
	}
	M.AssertDescribeReportDefinitionsResponse(t)
	return t
end

local DeleteReportDefinitionRequest_keys = { "ReportName" = true, nil }

function M.AssertDeleteReportDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteReportDefinitionRequest to be of type 'table'")
	if struct["ReportName"] then M.AssertReportName(struct["ReportName"]) end
	for k,_ in pairs(struct) do
		assert(DeleteReportDefinitionRequest_keys[k], "DeleteReportDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteReportDefinitionRequest
-- Request of DeleteReportDefinition
-- @param ReportName [ReportName] Request of DeleteReportDefinition
function M.DeleteReportDefinitionRequest(ReportName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteReportDefinitionRequest")
	local t = { 
		["ReportName"] = ReportName,
	}
	M.AssertDeleteReportDefinitionRequest(t)
	return t
end

local PutReportDefinitionRequest_keys = { "ReportDefinition" = true, nil }

function M.AssertPutReportDefinitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutReportDefinitionRequest to be of type 'table'")
	assert(struct["ReportDefinition"], "Expected key ReportDefinition to exist in table")
	if struct["ReportDefinition"] then M.AssertReportDefinition(struct["ReportDefinition"]) end
	for k,_ in pairs(struct) do
		assert(PutReportDefinitionRequest_keys[k], "PutReportDefinitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutReportDefinitionRequest
-- Request of PutReportDefinition
-- @param ReportDefinition [ReportDefinition] Request of PutReportDefinition
-- Required parameter: ReportDefinition
function M.PutReportDefinitionRequest(ReportDefinition, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating PutReportDefinitionRequest")
	local t = { 
		["ReportDefinition"] = ReportDefinition,
	}
	M.AssertPutReportDefinitionRequest(t)
	return t
end

function M.AssertAWSRegion(str)
	assert(str)
	assert(type(str) == "string", "Expected AWSRegion to be of type 'string'")
end

-- Region of customer S3 bucket.
function M.AWSRegion(str)
	M.AssertAWSRegion(str)
	return str
end

function M.AssertReportName(str)
	assert(str)
	assert(type(str) == "string", "Expected ReportName to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(str:match("[0-9A-Za-z!%-_.*%'()]+"), "Expected string to match pattern '[0-9A-Za-z!%-_.*%'()]+'")
end

-- Preferred name for a report, it has to be unique. Must starts with a number/letter, case sensitive. Limited to 256 characters.
function M.ReportName(str)
	M.AssertReportName(str)
	return str
end

function M.AssertS3Prefix(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Prefix to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(str:match("[0-9A-Za-z!%-_.*%'()/]*"), "Expected string to match pattern '[0-9A-Za-z!%-_.*%'()/]*'")
end

-- Preferred report path prefix. Limited to 256 characters.
function M.S3Prefix(str)
	M.AssertS3Prefix(str)
	return str
end

function M.AssertGenericString(str)
	assert(str)
	assert(type(str) == "string", "Expected GenericString to be of type 'string'")
end

-- A generic string.
function M.GenericString(str)
	M.AssertGenericString(str)
	return str
end

function M.AssertDeleteResponseMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected DeleteResponseMessage to be of type 'string'")
end

-- A message indicates if the deletion is successful.
function M.DeleteResponseMessage(str)
	M.AssertDeleteResponseMessage(str)
	return str
end

function M.AssertCompressionFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected CompressionFormat to be of type 'string'")
end

-- Preferred compression format for report.
function M.CompressionFormat(str)
	M.AssertCompressionFormat(str)
	return str
end

function M.AssertS3Bucket(str)
	assert(str)
	assert(type(str) == "string", "Expected S3Bucket to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
end

-- Name of customer S3 bucket.
function M.S3Bucket(str)
	M.AssertS3Bucket(str)
	return str
end

function M.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

-- A message to show the detail of the exception.
function M.ErrorMessage(str)
	M.AssertErrorMessage(str)
	return str
end

function M.AssertSchemaElement(str)
	assert(str)
	assert(type(str) == "string", "Expected SchemaElement to be of type 'string'")
end

-- Preference of including Resource IDs. You can include additional details about individual resource IDs in your report.
function M.SchemaElement(str)
	M.AssertSchemaElement(str)
	return str
end

function M.AssertTimeUnit(str)
	assert(str)
	assert(type(str) == "string", "Expected TimeUnit to be of type 'string'")
end

-- The frequency on which report data are measured and displayed.
function M.TimeUnit(str)
	M.AssertTimeUnit(str)
	return str
end

function M.AssertAdditionalArtifact(str)
	assert(str)
	assert(type(str) == "string", "Expected AdditionalArtifact to be of type 'string'")
end

-- Enable support for Redshift and/or QuickSight.
function M.AdditionalArtifact(str)
	M.AssertAdditionalArtifact(str)
	return str
end

function M.AssertReportFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected ReportFormat to be of type 'string'")
end

-- Preferred format for report.
function M.ReportFormat(str)
	M.AssertReportFormat(str)
	return str
end

function M.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 5, "Expected integer to be max 5")
	assert(integer >= 5, "Expected integer to be min 5")
end

function M.MaxResults(integer)
	M.AssertMaxResults(integer)
	return integer
end

function M.AssertAdditionalArtifactList(list)
	assert(list)
	assert(type(list) == "table", "Expected AdditionalArtifactList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertAdditionalArtifact(v)
	end
end

-- A list of additional artifacts.
-- List of AdditionalArtifact objects
function M.AdditionalArtifactList(list)
	M.AssertAdditionalArtifactList(list)
	return list
end

function M.AssertSchemaElementList(list)
	assert(list)
	assert(type(list) == "table", "Expected SchemaElementList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertSchemaElement(v)
	end
end

-- A list of schema elements.
-- List of SchemaElement objects
function M.SchemaElementList(list)
	M.AssertSchemaElementList(list)
	return list
end

function M.AssertReportDefinitionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ReportDefinitionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertReportDefinition(v)
	end
end

-- A list of report definitions.
-- List of ReportDefinition objects
function M.ReportDefinitionList(list)
	M.AssertReportDefinitionList(list)
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
