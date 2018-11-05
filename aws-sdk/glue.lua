--- GENERATED CODE - DO NOT MODIFY
-- AWS Glue (glue-2017-03-31)

local M = {}

M.metadata = {
	api_version = "2017-03-31",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "glue",
	service_abbreviation = "",
	service_full_name = "AWS Glue",
	signature_version = "v4",
	target_prefix = "AWSGlue",
	timestamp_format = "",
	global_endpoint = "",
	uid = "glue-2017-03-31",
}

local keys = {}
local asserts = {}

keys.GetClassifiersResponse = { ["NextToken"] = true, ["Classifiers"] = true, nil }

function asserts.AssertGetClassifiersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetClassifiersResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["Classifiers"] then asserts.AssertClassifierList(struct["Classifiers"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetClassifiersResponse[k], "GetClassifiersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetClassifiersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>A continuation token.</p>
-- * Classifiers [ClassifierList] <p>The requested list of classifier objects.</p>
-- @return GetClassifiersResponse structure as a key-value pair table
function M.GetClassifiersResponse(args)
	assert(args, "You must provide an argument table when creating GetClassifiersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Classifiers"] = args["Classifiers"],
	}
	asserts.AssertGetClassifiersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDevEndpointResponse = { nil }

function asserts.AssertDeleteDevEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDevEndpointResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteDevEndpointResponse[k], "DeleteDevEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDevEndpointResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteDevEndpointResponse structure as a key-value pair table
function M.DeleteDevEndpointResponse(args)
	assert(args, "You must provide an argument table when creating DeleteDevEndpointResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteDevEndpointResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCrawlerRequest = { ["Configuration"] = true, ["Name"] = true, ["Schedule"] = true, ["Classifiers"] = true, ["CrawlerSecurityConfiguration"] = true, ["Role"] = true, ["DatabaseName"] = true, ["SchemaChangePolicy"] = true, ["TablePrefix"] = true, ["Targets"] = true, ["Description"] = true, nil }

function asserts.AssertCreateCrawlerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCrawlerRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Role"], "Expected key Role to exist in table")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["Targets"], "Expected key Targets to exist in table")
	if struct["Configuration"] then asserts.AssertCrawlerConfiguration(struct["Configuration"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["Schedule"] then asserts.AssertCronExpression(struct["Schedule"]) end
	if struct["Classifiers"] then asserts.AssertClassifierNameList(struct["Classifiers"]) end
	if struct["CrawlerSecurityConfiguration"] then asserts.AssertCrawlerSecurityConfiguration(struct["CrawlerSecurityConfiguration"]) end
	if struct["Role"] then asserts.AssertRole(struct["Role"]) end
	if struct["DatabaseName"] then asserts.AssertDatabaseName(struct["DatabaseName"]) end
	if struct["SchemaChangePolicy"] then asserts.AssertSchemaChangePolicy(struct["SchemaChangePolicy"]) end
	if struct["TablePrefix"] then asserts.AssertTablePrefix(struct["TablePrefix"]) end
	if struct["Targets"] then asserts.AssertCrawlerTargets(struct["Targets"]) end
	if struct["Description"] then asserts.AssertDescriptionString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateCrawlerRequest[k], "CreateCrawlerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCrawlerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Configuration [CrawlerConfiguration] <p>Crawler configuration information. This versioned JSON string allows users to specify aspects of a crawler's behavior. For more information, see <a href="http://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html">Configuring a Crawler</a>.</p>
-- * Name [NameString] <p>Name of the new crawler.</p>
-- * Schedule [CronExpression] <p>A <code>cron</code> expression used to specify the schedule (see <a href="http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run something every day at 12:15 UTC, you would specify: <code>cron(15 12 * * ? *)</code>.</p>
-- * Classifiers [ClassifierNameList] <p>A list of custom classifiers that the user has registered. By default, all built-in classifiers are included in a crawl, but these custom classifiers always override the default classifiers for a given classification.</p>
-- * CrawlerSecurityConfiguration [CrawlerSecurityConfiguration] <p>The name of the SecurityConfiguration structure to be used by this Crawler.</p>
-- * Role [Role] <p>The IAM role (or ARN of an IAM role) used by the new crawler to access customer resources.</p>
-- * DatabaseName [DatabaseName] <p>The AWS Glue database where results are written, such as: <code>arn:aws:daylight:us-east-1::database/sometable/*</code>.</p>
-- * SchemaChangePolicy [SchemaChangePolicy] <p>Policy for the crawler's update and deletion behavior.</p>
-- * TablePrefix [TablePrefix] <p>The table prefix used for catalog tables that are created.</p>
-- * Targets [CrawlerTargets] <p>A list of collection of targets to crawl.</p>
-- * Description [DescriptionString] <p>A description of the new crawler.</p>
-- Required key: Name
-- Required key: Role
-- Required key: DatabaseName
-- Required key: Targets
-- @return CreateCrawlerRequest structure as a key-value pair table
function M.CreateCrawlerRequest(args)
	assert(args, "You must provide an argument table when creating CreateCrawlerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Configuration"] = args["Configuration"],
		["Name"] = args["Name"],
		["Schedule"] = args["Schedule"],
		["Classifiers"] = args["Classifiers"],
		["CrawlerSecurityConfiguration"] = args["CrawlerSecurityConfiguration"],
		["Role"] = args["Role"],
		["DatabaseName"] = args["DatabaseName"],
		["SchemaChangePolicy"] = args["SchemaChangePolicy"],
		["TablePrefix"] = args["TablePrefix"],
		["Targets"] = args["Targets"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateCrawlerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateGrokClassifierRequest = { ["GrokPattern"] = true, ["Name"] = true, ["Classification"] = true, ["CustomPatterns"] = true, nil }

function asserts.AssertUpdateGrokClassifierRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGrokClassifierRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["GrokPattern"] then asserts.AssertGrokPattern(struct["GrokPattern"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["Classification"] then asserts.AssertClassification(struct["Classification"]) end
	if struct["CustomPatterns"] then asserts.AssertCustomPatterns(struct["CustomPatterns"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGrokClassifierRequest[k], "UpdateGrokClassifierRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGrokClassifierRequest
-- <p>Specifies a grok classifier to update when passed to <code>UpdateClassifier</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GrokPattern [GrokPattern] <p>The grok pattern used by this classifier.</p>
-- * Name [NameString] <p>The name of the <code>GrokClassifier</code>.</p>
-- * Classification [Classification] <p>An identifier of the data format that the classifier matches, such as Twitter, JSON, Omniture logs, Amazon CloudWatch Logs, and so on.</p>
-- * CustomPatterns [CustomPatterns] <p>Optional custom grok patterns used by this classifier.</p>
-- Required key: Name
-- @return UpdateGrokClassifierRequest structure as a key-value pair table
function M.UpdateGrokClassifierRequest(args)
	assert(args, "You must provide an argument table when creating UpdateGrokClassifierRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GrokPattern"] = args["GrokPattern"],
		["Name"] = args["Name"],
		["Classification"] = args["Classification"],
		["CustomPatterns"] = args["CustomPatterns"],
	}
	asserts.AssertUpdateGrokClassifierRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopCrawlerScheduleResponse = { nil }

function asserts.AssertStopCrawlerScheduleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopCrawlerScheduleResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StopCrawlerScheduleResponse[k], "StopCrawlerScheduleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopCrawlerScheduleResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StopCrawlerScheduleResponse structure as a key-value pair table
function M.StopCrawlerScheduleResponse(args)
	assert(args, "You must provide an argument table when creating StopCrawlerScheduleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStopCrawlerScheduleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutDataCatalogEncryptionSettingsRequest = { ["DataCatalogEncryptionSettings"] = true, ["CatalogId"] = true, nil }

function asserts.AssertPutDataCatalogEncryptionSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutDataCatalogEncryptionSettingsRequest to be of type 'table'")
	assert(struct["DataCatalogEncryptionSettings"], "Expected key DataCatalogEncryptionSettings to exist in table")
	if struct["DataCatalogEncryptionSettings"] then asserts.AssertDataCatalogEncryptionSettings(struct["DataCatalogEncryptionSettings"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutDataCatalogEncryptionSettingsRequest[k], "PutDataCatalogEncryptionSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutDataCatalogEncryptionSettingsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataCatalogEncryptionSettings [DataCatalogEncryptionSettings] <p>The security configuration to set.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog for which to set the security configuration. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DataCatalogEncryptionSettings
-- @return PutDataCatalogEncryptionSettingsRequest structure as a key-value pair table
function M.PutDataCatalogEncryptionSettingsRequest(args)
	assert(args, "You must provide an argument table when creating PutDataCatalogEncryptionSettingsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataCatalogEncryptionSettings"] = args["DataCatalogEncryptionSettings"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertPutDataCatalogEncryptionSettingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDeleteConnectionResponse = { ["Errors"] = true, ["Succeeded"] = true, nil }

function asserts.AssertBatchDeleteConnectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeleteConnectionResponse to be of type 'table'")
	if struct["Errors"] then asserts.AssertErrorByName(struct["Errors"]) end
	if struct["Succeeded"] then asserts.AssertNameStringList(struct["Succeeded"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDeleteConnectionResponse[k], "BatchDeleteConnectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeleteConnectionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Errors [ErrorByName] <p>A map of the names of connections that were not successfully deleted to error details.</p>
-- * Succeeded [NameStringList] <p>A list of names of the connection definitions that were successfully deleted.</p>
-- @return BatchDeleteConnectionResponse structure as a key-value pair table
function M.BatchDeleteConnectionResponse(args)
	assert(args, "You must provide an argument table when creating BatchDeleteConnectionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Errors"] = args["Errors"],
		["Succeeded"] = args["Succeeded"],
	}
	asserts.AssertBatchDeleteConnectionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetUserDefinedFunctionRequest = { ["FunctionName"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertGetUserDefinedFunctionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserDefinedFunctionRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["FunctionName"] then asserts.AssertNameString(struct["FunctionName"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUserDefinedFunctionRequest[k], "GetUserDefinedFunctionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserDefinedFunctionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [NameString] <p>The name of the function.</p>
-- * DatabaseName [NameString] <p>The name of the catalog database where the function is located.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog where the function to be retrieved is located. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DatabaseName
-- Required key: FunctionName
-- @return GetUserDefinedFunctionRequest structure as a key-value pair table
function M.GetUserDefinedFunctionRequest(args)
	assert(args, "You must provide an argument table when creating GetUserDefinedFunctionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertGetUserDefinedFunctionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteResourcePolicyResponse = { nil }

function asserts.AssertDeleteResourcePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteResourcePolicyResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteResourcePolicyResponse[k], "DeleteResourcePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteResourcePolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteResourcePolicyResponse structure as a key-value pair table
function M.DeleteResourcePolicyResponse(args)
	assert(args, "You must provide an argument table when creating DeleteResourcePolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteResourcePolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateJsonClassifierRequest = { ["JsonPath"] = true, ["Name"] = true, nil }

function asserts.AssertCreateJsonClassifierRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJsonClassifierRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["JsonPath"], "Expected key JsonPath to exist in table")
	if struct["JsonPath"] then asserts.AssertJsonPath(struct["JsonPath"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateJsonClassifierRequest[k], "CreateJsonClassifierRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJsonClassifierRequest
-- <p>Specifies a JSON classifier for <code>CreateClassifier</code> to create.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JsonPath [JsonPath] <p>A <code>JsonPath</code> string defining the JSON data for the classifier to classify. AWS Glue supports a subset of JsonPath, as described in <a href="https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json">Writing JsonPath Custom Classifiers</a>.</p>
-- * Name [NameString] <p>The name of the classifier.</p>
-- Required key: Name
-- Required key: JsonPath
-- @return CreateJsonClassifierRequest structure as a key-value pair table
function M.CreateJsonClassifierRequest(args)
	assert(args, "You must provide an argument table when creating CreateJsonClassifierRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JsonPath"] = args["JsonPath"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateJsonClassifierRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDatabaseResponse = { ["Database"] = true, nil }

function asserts.AssertGetDatabaseResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDatabaseResponse to be of type 'table'")
	if struct["Database"] then asserts.AssertDatabase(struct["Database"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDatabaseResponse[k], "GetDatabaseResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDatabaseResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Database [Database] <p>The definition of the specified database in the catalog.</p>
-- @return GetDatabaseResponse structure as a key-value pair table
function M.GetDatabaseResponse(args)
	assert(args, "You must provide an argument table when creating GetDatabaseResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Database"] = args["Database"],
	}
	asserts.AssertGetDatabaseResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDatabaseRequest = { ["DatabaseInput"] = true, ["CatalogId"] = true, nil }

function asserts.AssertCreateDatabaseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDatabaseRequest to be of type 'table'")
	assert(struct["DatabaseInput"], "Expected key DatabaseInput to exist in table")
	if struct["DatabaseInput"] then asserts.AssertDatabaseInput(struct["DatabaseInput"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDatabaseRequest[k], "CreateDatabaseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDatabaseRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DatabaseInput [DatabaseInput] <p>A <code>DatabaseInput</code> object defining the metadata database to create in the catalog.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog in which to create the database. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DatabaseInput
-- @return CreateDatabaseRequest structure as a key-value pair table
function M.CreateDatabaseRequest(args)
	assert(args, "You must provide an argument table when creating CreateDatabaseRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DatabaseInput"] = args["DatabaseInput"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertCreateDatabaseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetUserDefinedFunctionsRequest = { ["Pattern"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertGetUserDefinedFunctionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserDefinedFunctionsRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["Pattern"], "Expected key Pattern to exist in table")
	if struct["Pattern"] then asserts.AssertNameString(struct["Pattern"]) end
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPageSize(struct["MaxResults"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUserDefinedFunctionsRequest[k], "GetUserDefinedFunctionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserDefinedFunctionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Pattern [NameString] <p>An optional function-name pattern string that filters the function definitions returned.</p>
-- * NextToken [Token] <p>A continuation token, if this is a continuation call.</p>
-- * MaxResults [PageSize] <p>The maximum number of functions to return in one response.</p>
-- * DatabaseName [NameString] <p>The name of the catalog database where the functions are located.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog where the functions to be retrieved are located. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DatabaseName
-- Required key: Pattern
-- @return GetUserDefinedFunctionsRequest structure as a key-value pair table
function M.GetUserDefinedFunctionsRequest(args)
	assert(args, "You must provide an argument table when creating GetUserDefinedFunctionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Pattern"] = args["Pattern"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertGetUserDefinedFunctionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePartitionResponse = { nil }

function asserts.AssertCreatePartitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePartitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreatePartitionResponse[k], "CreatePartitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePartitionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreatePartitionResponse structure as a key-value pair table
function M.CreatePartitionResponse(args)
	assert(args, "You must provide an argument table when creating CreatePartitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreatePartitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StorageDescriptor = { ["OutputFormat"] = true, ["SortColumns"] = true, ["InputFormat"] = true, ["SerdeInfo"] = true, ["BucketColumns"] = true, ["Parameters"] = true, ["SkewedInfo"] = true, ["Location"] = true, ["NumberOfBuckets"] = true, ["StoredAsSubDirectories"] = true, ["Columns"] = true, ["Compressed"] = true, nil }

function asserts.AssertStorageDescriptor(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StorageDescriptor to be of type 'table'")
	if struct["OutputFormat"] then asserts.AssertFormatString(struct["OutputFormat"]) end
	if struct["SortColumns"] then asserts.AssertOrderList(struct["SortColumns"]) end
	if struct["InputFormat"] then asserts.AssertFormatString(struct["InputFormat"]) end
	if struct["SerdeInfo"] then asserts.AssertSerDeInfo(struct["SerdeInfo"]) end
	if struct["BucketColumns"] then asserts.AssertNameStringList(struct["BucketColumns"]) end
	if struct["Parameters"] then asserts.AssertParametersMap(struct["Parameters"]) end
	if struct["SkewedInfo"] then asserts.AssertSkewedInfo(struct["SkewedInfo"]) end
	if struct["Location"] then asserts.AssertLocationString(struct["Location"]) end
	if struct["NumberOfBuckets"] then asserts.AssertInteger(struct["NumberOfBuckets"]) end
	if struct["StoredAsSubDirectories"] then asserts.AssertBoolean(struct["StoredAsSubDirectories"]) end
	if struct["Columns"] then asserts.AssertColumnList(struct["Columns"]) end
	if struct["Compressed"] then asserts.AssertBoolean(struct["Compressed"]) end
	for k,_ in pairs(struct) do
		assert(keys.StorageDescriptor[k], "StorageDescriptor contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StorageDescriptor
-- <p>Describes the physical storage of table data.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * OutputFormat [FormatString] <p>The output format: <code>SequenceFileOutputFormat</code> (binary), or <code>IgnoreKeyTextOutputFormat</code>, or a custom format.</p>
-- * SortColumns [OrderList] <p>A list specifying the sort order of each bucket in the table.</p>
-- * InputFormat [FormatString] <p>The input format: <code>SequenceFileInputFormat</code> (binary), or <code>TextInputFormat</code>, or a custom format.</p>
-- * SerdeInfo [SerDeInfo] <p>Serialization/deserialization (SerDe) information.</p>
-- * BucketColumns [NameStringList] <p>A list of reducer grouping columns, clustering columns, and bucketing columns in the table.</p>
-- * Parameters [ParametersMap] <p>User-supplied properties in key-value form.</p>
-- * SkewedInfo [SkewedInfo] <p>Information about values that appear very frequently in a column (skewed values).</p>
-- * Location [LocationString] <p>The physical location of the table. By default this takes the form of the warehouse location, followed by the database location in the warehouse, followed by the table name.</p>
-- * NumberOfBuckets [Integer] <p>Must be specified if the table contains any dimension columns.</p>
-- * StoredAsSubDirectories [Boolean] <p>True if the table data is stored in subdirectories, or False if not.</p>
-- * Columns [ColumnList] <p>A list of the <code>Columns</code> in the table.</p>
-- * Compressed [Boolean] <p>True if the data in the table is compressed, or False if not.</p>
-- @return StorageDescriptor structure as a key-value pair table
function M.StorageDescriptor(args)
	assert(args, "You must provide an argument table when creating StorageDescriptor")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["OutputFormat"] = args["OutputFormat"],
		["SortColumns"] = args["SortColumns"],
		["InputFormat"] = args["InputFormat"],
		["SerdeInfo"] = args["SerdeInfo"],
		["BucketColumns"] = args["BucketColumns"],
		["Parameters"] = args["Parameters"],
		["SkewedInfo"] = args["SkewedInfo"],
		["Location"] = args["Location"],
		["NumberOfBuckets"] = args["NumberOfBuckets"],
		["StoredAsSubDirectories"] = args["StoredAsSubDirectories"],
		["Columns"] = args["Columns"],
		["Compressed"] = args["Compressed"],
	}
	asserts.AssertStorageDescriptor(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCrawlerMetricsResponse = { ["CrawlerMetricsList"] = true, ["NextToken"] = true, nil }

function asserts.AssertGetCrawlerMetricsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCrawlerMetricsResponse to be of type 'table'")
	if struct["CrawlerMetricsList"] then asserts.AssertCrawlerMetricsList(struct["CrawlerMetricsList"]) end
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCrawlerMetricsResponse[k], "GetCrawlerMetricsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCrawlerMetricsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CrawlerMetricsList [CrawlerMetricsList] <p>A list of metrics for the specified crawler.</p>
-- * NextToken [Token] <p>A continuation token, if the returned list does not contain the last metric available.</p>
-- @return GetCrawlerMetricsResponse structure as a key-value pair table
function M.GetCrawlerMetricsResponse(args)
	assert(args, "You must provide an argument table when creating GetCrawlerMetricsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CrawlerMetricsList"] = args["CrawlerMetricsList"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertGetCrawlerMetricsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCatalogImportStatusResponse = { ["ImportStatus"] = true, nil }

function asserts.AssertGetCatalogImportStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCatalogImportStatusResponse to be of type 'table'")
	if struct["ImportStatus"] then asserts.AssertCatalogImportStatus(struct["ImportStatus"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCatalogImportStatusResponse[k], "GetCatalogImportStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCatalogImportStatusResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ImportStatus [CatalogImportStatus] <p>The status of the specified catalog migration.</p>
-- @return GetCatalogImportStatusResponse structure as a key-value pair table
function M.GetCatalogImportStatusResponse(args)
	assert(args, "You must provide an argument table when creating GetCatalogImportStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ImportStatus"] = args["ImportStatus"],
	}
	asserts.AssertGetCatalogImportStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTableResponse = { nil }

function asserts.AssertUpdateTableResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTableResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateTableResponse[k], "UpdateTableResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTableResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateTableResponse structure as a key-value pair table
function M.UpdateTableResponse(args)
	assert(args, "You must provide an argument table when creating UpdateTableResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateTableResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetConnectionsResponse = { ["NextToken"] = true, ["ConnectionList"] = true, nil }

function asserts.AssertGetConnectionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetConnectionsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["ConnectionList"] then asserts.AssertConnectionList(struct["ConnectionList"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetConnectionsResponse[k], "GetConnectionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetConnectionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>A continuation token, if the list of connections returned does not include the last of the filtered connections.</p>
-- * ConnectionList [ConnectionList] <p>A list of requested connection definitions.</p>
-- @return GetConnectionsResponse structure as a key-value pair table
function M.GetConnectionsResponse(args)
	assert(args, "You must provide an argument table when creating GetConnectionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["ConnectionList"] = args["ConnectionList"],
	}
	asserts.AssertGetConnectionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetMappingRequest = { ["Source"] = true, ["Sinks"] = true, ["Location"] = true, nil }

function asserts.AssertGetMappingRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMappingRequest to be of type 'table'")
	assert(struct["Source"], "Expected key Source to exist in table")
	if struct["Source"] then asserts.AssertCatalogEntry(struct["Source"]) end
	if struct["Sinks"] then asserts.AssertCatalogEntries(struct["Sinks"]) end
	if struct["Location"] then asserts.AssertLocation(struct["Location"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMappingRequest[k], "GetMappingRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMappingRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Source [CatalogEntry] <p>Specifies the source table.</p>
-- * Sinks [CatalogEntries] <p>A list of target tables.</p>
-- * Location [Location] <p>Parameters for the mapping.</p>
-- Required key: Source
-- @return GetMappingRequest structure as a key-value pair table
function M.GetMappingRequest(args)
	assert(args, "You must provide an argument table when creating GetMappingRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Source"] = args["Source"],
		["Sinks"] = args["Sinks"],
		["Location"] = args["Location"],
	}
	asserts.AssertGetMappingRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDevEndpointsResponse = { ["NextToken"] = true, ["DevEndpoints"] = true, nil }

function asserts.AssertGetDevEndpointsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDevEndpointsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertGenericString(struct["NextToken"]) end
	if struct["DevEndpoints"] then asserts.AssertDevEndpointList(struct["DevEndpoints"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDevEndpointsResponse[k], "GetDevEndpointsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDevEndpointsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [GenericString] <p>A continuation token, if not all DevEndpoint definitions have yet been returned.</p>
-- * DevEndpoints [DevEndpointList] <p>A list of DevEndpoint definitions.</p>
-- @return GetDevEndpointsResponse structure as a key-value pair table
function M.GetDevEndpointsResponse(args)
	assert(args, "You must provide an argument table when creating GetDevEndpointsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["DevEndpoints"] = args["DevEndpoints"],
	}
	asserts.AssertGetDevEndpointsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchStopJobRunResponse = { ["Errors"] = true, ["SuccessfulSubmissions"] = true, nil }

function asserts.AssertBatchStopJobRunResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchStopJobRunResponse to be of type 'table'")
	if struct["Errors"] then asserts.AssertBatchStopJobRunErrorList(struct["Errors"]) end
	if struct["SuccessfulSubmissions"] then asserts.AssertBatchStopJobRunSuccessfulSubmissionList(struct["SuccessfulSubmissions"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchStopJobRunResponse[k], "BatchStopJobRunResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchStopJobRunResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Errors [BatchStopJobRunErrorList] <p>A list of the errors that were encountered in tryng to stop JobRuns, including the JobRunId for which each error was encountered and details about the error.</p>
-- * SuccessfulSubmissions [BatchStopJobRunSuccessfulSubmissionList] <p>A list of the JobRuns that were successfully submitted for stopping.</p>
-- @return BatchStopJobRunResponse structure as a key-value pair table
function M.BatchStopJobRunResponse(args)
	assert(args, "You must provide an argument table when creating BatchStopJobRunResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Errors"] = args["Errors"],
		["SuccessfulSubmissions"] = args["SuccessfulSubmissions"],
	}
	asserts.AssertBatchStopJobRunResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateSecurityConfigurationRequest = { ["EncryptionConfiguration"] = true, ["Name"] = true, nil }

function asserts.AssertCreateSecurityConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSecurityConfigurationRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["EncryptionConfiguration"], "Expected key EncryptionConfiguration to exist in table")
	if struct["EncryptionConfiguration"] then asserts.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSecurityConfigurationRequest[k], "CreateSecurityConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSecurityConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EncryptionConfiguration [EncryptionConfiguration] <p>The encryption configuration for the new security configuration.</p>
-- * Name [NameString] <p>The name for the new security configuration.</p>
-- Required key: Name
-- Required key: EncryptionConfiguration
-- @return CreateSecurityConfigurationRequest structure as a key-value pair table
function M.CreateSecurityConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating CreateSecurityConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EncryptionConfiguration"] = args["EncryptionConfiguration"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateSecurityConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Classifier = { ["GrokClassifier"] = true, ["XMLClassifier"] = true, ["JsonClassifier"] = true, nil }

function asserts.AssertClassifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Classifier to be of type 'table'")
	if struct["GrokClassifier"] then asserts.AssertGrokClassifier(struct["GrokClassifier"]) end
	if struct["XMLClassifier"] then asserts.AssertXMLClassifier(struct["XMLClassifier"]) end
	if struct["JsonClassifier"] then asserts.AssertJsonClassifier(struct["JsonClassifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.Classifier[k], "Classifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Classifier
-- <p>Classifiers are triggered during a crawl task. A classifier checks whether a given file is in a format it can handle, and if it is, the classifier creates a schema in the form of a <code>StructType</code> object that matches that data format.</p> <p>You can use the standard classifiers that AWS Glue supplies, or you can write your own classifiers to best categorize your data sources and specify the appropriate schemas to use for them. A classifier can be a <code>grok</code> classifier, an <code>XML</code> classifier, or a <code>JSON</code> classifier, as specified in one of the fields in the <code>Classifier</code> object.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GrokClassifier [GrokClassifier] <p>A <code>GrokClassifier</code> object.</p>
-- * XMLClassifier [XMLClassifier] <p>An <code>XMLClassifier</code> object.</p>
-- * JsonClassifier [JsonClassifier] <p>A <code>JsonClassifier</code> object.</p>
-- @return Classifier structure as a key-value pair table
function M.Classifier(args)
	assert(args, "You must provide an argument table when creating Classifier")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GrokClassifier"] = args["GrokClassifier"],
		["XMLClassifier"] = args["XMLClassifier"],
		["JsonClassifier"] = args["JsonClassifier"],
	}
	asserts.AssertClassifier(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCrawlersRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertGetCrawlersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCrawlersRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPageSize(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCrawlersRequest[k], "GetCrawlersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCrawlersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>A continuation token, if this is a continuation request.</p>
-- * MaxResults [PageSize] <p>The number of crawlers to return on each call.</p>
-- @return GetCrawlersRequest structure as a key-value pair table
function M.GetCrawlersRequest(args)
	assert(args, "You must provide an argument table when creating GetCrawlersRequest")
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
	asserts.AssertGetCrawlersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTriggerRequest = { ["Predicate"] = true, ["StartOnCreation"] = true, ["Description"] = true, ["Schedule"] = true, ["Actions"] = true, ["Type"] = true, ["Name"] = true, nil }

function asserts.AssertCreateTriggerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTriggerRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	assert(struct["Actions"], "Expected key Actions to exist in table")
	if struct["Predicate"] then asserts.AssertPredicate(struct["Predicate"]) end
	if struct["StartOnCreation"] then asserts.AssertBooleanValue(struct["StartOnCreation"]) end
	if struct["Description"] then asserts.AssertDescriptionString(struct["Description"]) end
	if struct["Schedule"] then asserts.AssertGenericString(struct["Schedule"]) end
	if struct["Actions"] then asserts.AssertActionList(struct["Actions"]) end
	if struct["Type"] then asserts.AssertTriggerType(struct["Type"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTriggerRequest[k], "CreateTriggerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTriggerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Predicate [Predicate] <p>A predicate to specify when the new trigger should fire.</p> <p>This field is required when the trigger type is CONDITIONAL.</p>
-- * StartOnCreation [BooleanValue] <p>Set to true to start SCHEDULED and CONDITIONAL triggers when created. True not supported for ON_DEMAND triggers.</p>
-- * Description [DescriptionString] <p>A description of the new trigger.</p>
-- * Schedule [GenericString] <p>A <code>cron</code> expression used to specify the schedule (see <a href="http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run something every day at 12:15 UTC, you would specify: <code>cron(15 12 * * ? *)</code>.</p> <p>This field is required when the trigger type is SCHEDULED.</p>
-- * Actions [ActionList] <p>The actions initiated by this trigger when it fires.</p>
-- * Type [TriggerType] <p>The type of the new trigger.</p>
-- * Name [NameString] <p>The name of the trigger.</p>
-- Required key: Name
-- Required key: Type
-- Required key: Actions
-- @return CreateTriggerRequest structure as a key-value pair table
function M.CreateTriggerRequest(args)
	assert(args, "You must provide an argument table when creating CreateTriggerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Predicate"] = args["Predicate"],
		["StartOnCreation"] = args["StartOnCreation"],
		["Description"] = args["Description"],
		["Schedule"] = args["Schedule"],
		["Actions"] = args["Actions"],
		["Type"] = args["Type"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateTriggerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetConnectionResponse = { ["Connection"] = true, nil }

function asserts.AssertGetConnectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetConnectionResponse to be of type 'table'")
	if struct["Connection"] then asserts.AssertConnection(struct["Connection"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetConnectionResponse[k], "GetConnectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetConnectionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Connection [Connection] <p>The requested connection definition.</p>
-- @return GetConnectionResponse structure as a key-value pair table
function M.GetConnectionResponse(args)
	assert(args, "You must provide an argument table when creating GetConnectionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Connection"] = args["Connection"],
	}
	asserts.AssertGetConnectionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTableResponse = { nil }

function asserts.AssertDeleteTableResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTableResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteTableResponse[k], "DeleteTableResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTableResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteTableResponse structure as a key-value pair table
function M.DeleteTableResponse(args)
	assert(args, "You must provide an argument table when creating DeleteTableResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteTableResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchCreatePartitionResponse = { ["Errors"] = true, nil }

function asserts.AssertBatchCreatePartitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchCreatePartitionResponse to be of type 'table'")
	if struct["Errors"] then asserts.AssertPartitionErrors(struct["Errors"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchCreatePartitionResponse[k], "BatchCreatePartitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchCreatePartitionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Errors [PartitionErrors] <p>Errors encountered when trying to create the requested partitions.</p>
-- @return BatchCreatePartitionResponse structure as a key-value pair table
function M.BatchCreatePartitionResponse(args)
	assert(args, "You must provide an argument table when creating BatchCreatePartitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Errors"] = args["Errors"],
	}
	asserts.AssertBatchCreatePartitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopTriggerRequest = { ["Name"] = true, nil }

function asserts.AssertStopTriggerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopTriggerRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopTriggerRequest[k], "StopTriggerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopTriggerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>The name of the trigger to stop.</p>
-- Required key: Name
-- @return StopTriggerRequest structure as a key-value pair table
function M.StopTriggerRequest(args)
	assert(args, "You must provide an argument table when creating StopTriggerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertStopTriggerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreatePartitionRequest = { ["PartitionInput"] = true, ["TableName"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertCreatePartitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreatePartitionRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["PartitionInput"], "Expected key PartitionInput to exist in table")
	if struct["PartitionInput"] then asserts.AssertPartitionInput(struct["PartitionInput"]) end
	if struct["TableName"] then asserts.AssertNameString(struct["TableName"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreatePartitionRequest[k], "CreatePartitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreatePartitionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PartitionInput [PartitionInput] <p>A <code>PartitionInput</code> structure defining the partition to be created.</p>
-- * TableName [NameString] <p>The name of the metadata table in which the partition is to be created.</p>
-- * DatabaseName [NameString] <p>The name of the metadata database in which the partition is to be created.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the catalog in which the partion is to be created. Currently, this should be the AWS account ID.</p>
-- Required key: DatabaseName
-- Required key: TableName
-- Required key: PartitionInput
-- @return CreatePartitionRequest structure as a key-value pair table
function M.CreatePartitionRequest(args)
	assert(args, "You must provide an argument table when creating CreatePartitionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PartitionInput"] = args["PartitionInput"],
		["TableName"] = args["TableName"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertCreatePartitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConnectionInput = { ["MatchCriteria"] = true, ["ConnectionType"] = true, ["PhysicalConnectionRequirements"] = true, ["Description"] = true, ["ConnectionProperties"] = true, ["Name"] = true, nil }

function asserts.AssertConnectionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConnectionInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ConnectionType"], "Expected key ConnectionType to exist in table")
	assert(struct["ConnectionProperties"], "Expected key ConnectionProperties to exist in table")
	if struct["MatchCriteria"] then asserts.AssertMatchCriteria(struct["MatchCriteria"]) end
	if struct["ConnectionType"] then asserts.AssertConnectionType(struct["ConnectionType"]) end
	if struct["PhysicalConnectionRequirements"] then asserts.AssertPhysicalConnectionRequirements(struct["PhysicalConnectionRequirements"]) end
	if struct["Description"] then asserts.AssertDescriptionString(struct["Description"]) end
	if struct["ConnectionProperties"] then asserts.AssertConnectionProperties(struct["ConnectionProperties"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConnectionInput[k], "ConnectionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConnectionInput
-- <p>A structure used to specify a connection to create or update.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MatchCriteria [MatchCriteria] <p>A list of criteria that can be used in selecting this connection.</p>
-- * ConnectionType [ConnectionType] <p>The type of the connection. Currently, only JDBC is supported; SFTP is not supported.</p>
-- * PhysicalConnectionRequirements [PhysicalConnectionRequirements] <p>A map of physical connection requirements, such as VPC and SecurityGroup, needed for making this connection successfully.</p>
-- * Description [DescriptionString] <p>Description of the connection.</p>
-- * ConnectionProperties [ConnectionProperties] <p>These key-value pairs define parameters for the connection.</p>
-- * Name [NameString] <p>The name of the connection.</p>
-- Required key: Name
-- Required key: ConnectionType
-- Required key: ConnectionProperties
-- @return ConnectionInput structure as a key-value pair table
function M.ConnectionInput(args)
	assert(args, "You must provide an argument table when creating ConnectionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MatchCriteria"] = args["MatchCriteria"],
		["ConnectionType"] = args["ConnectionType"],
		["PhysicalConnectionRequirements"] = args["PhysicalConnectionRequirements"],
		["Description"] = args["Description"],
		["ConnectionProperties"] = args["ConnectionProperties"],
		["Name"] = args["Name"],
	}
	asserts.AssertConnectionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteSecurityConfigurationRequest = { ["Name"] = true, nil }

function asserts.AssertDeleteSecurityConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSecurityConfigurationRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteSecurityConfigurationRequest[k], "DeleteSecurityConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSecurityConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>The name of the security configuration to delete.</p>
-- Required key: Name
-- @return DeleteSecurityConfigurationRequest structure as a key-value pair table
function M.DeleteSecurityConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating DeleteSecurityConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteSecurityConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartCrawlerResponse = { nil }

function asserts.AssertStartCrawlerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartCrawlerResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StartCrawlerResponse[k], "StartCrawlerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartCrawlerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StartCrawlerResponse structure as a key-value pair table
function M.StartCrawlerResponse(args)
	assert(args, "You must provide an argument table when creating StartCrawlerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStartCrawlerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.MappingEntry = { ["TargetType"] = true, ["SourceType"] = true, ["SourcePath"] = true, ["TargetTable"] = true, ["TargetPath"] = true, ["SourceTable"] = true, nil }

function asserts.AssertMappingEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected MappingEntry to be of type 'table'")
	if struct["TargetType"] then asserts.AssertFieldType(struct["TargetType"]) end
	if struct["SourceType"] then asserts.AssertFieldType(struct["SourceType"]) end
	if struct["SourcePath"] then asserts.AssertSchemaPathString(struct["SourcePath"]) end
	if struct["TargetTable"] then asserts.AssertTableName(struct["TargetTable"]) end
	if struct["TargetPath"] then asserts.AssertSchemaPathString(struct["TargetPath"]) end
	if struct["SourceTable"] then asserts.AssertTableName(struct["SourceTable"]) end
	for k,_ in pairs(struct) do
		assert(keys.MappingEntry[k], "MappingEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type MappingEntry
-- <p>Defines a mapping.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TargetType [FieldType] <p>The target type.</p>
-- * SourceType [FieldType] <p>The source type.</p>
-- * SourcePath [SchemaPathString] <p>The source path.</p>
-- * TargetTable [TableName] <p>The target table.</p>
-- * TargetPath [SchemaPathString] <p>The target path.</p>
-- * SourceTable [TableName] <p>The name of the source table.</p>
-- @return MappingEntry structure as a key-value pair table
function M.MappingEntry(args)
	assert(args, "You must provide an argument table when creating MappingEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TargetType"] = args["TargetType"],
		["SourceType"] = args["SourceType"],
		["SourcePath"] = args["SourcePath"],
		["TargetTable"] = args["TargetTable"],
		["TargetPath"] = args["TargetPath"],
		["SourceTable"] = args["SourceTable"],
	}
	asserts.AssertMappingEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TableInput = { ["StorageDescriptor"] = true, ["PartitionKeys"] = true, ["Name"] = true, ["Parameters"] = true, ["LastAccessTime"] = true, ["LastAnalyzedTime"] = true, ["ViewExpandedText"] = true, ["Owner"] = true, ["Description"] = true, ["ViewOriginalText"] = true, ["TableType"] = true, ["Retention"] = true, nil }

function asserts.AssertTableInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TableInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["StorageDescriptor"] then asserts.AssertStorageDescriptor(struct["StorageDescriptor"]) end
	if struct["PartitionKeys"] then asserts.AssertColumnList(struct["PartitionKeys"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["Parameters"] then asserts.AssertParametersMap(struct["Parameters"]) end
	if struct["LastAccessTime"] then asserts.AssertTimestamp(struct["LastAccessTime"]) end
	if struct["LastAnalyzedTime"] then asserts.AssertTimestamp(struct["LastAnalyzedTime"]) end
	if struct["ViewExpandedText"] then asserts.AssertViewTextString(struct["ViewExpandedText"]) end
	if struct["Owner"] then asserts.AssertNameString(struct["Owner"]) end
	if struct["Description"] then asserts.AssertDescriptionString(struct["Description"]) end
	if struct["ViewOriginalText"] then asserts.AssertViewTextString(struct["ViewOriginalText"]) end
	if struct["TableType"] then asserts.AssertTableTypeString(struct["TableType"]) end
	if struct["Retention"] then asserts.AssertNonNegativeInteger(struct["Retention"]) end
	for k,_ in pairs(struct) do
		assert(keys.TableInput[k], "TableInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TableInput
-- <p>Structure used to create or update the table.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StorageDescriptor [StorageDescriptor] <p>A storage descriptor containing information about the physical storage of this table.</p>
-- * PartitionKeys [ColumnList] <p>A list of columns by which the table is partitioned. Only primitive types are supported as partition keys.</p>
-- * Name [NameString] <p>Name of the table. For Hive compatibility, this is folded to lowercase when it is stored.</p>
-- * Parameters [ParametersMap] <p>These key-value pairs define properties associated with the table.</p>
-- * LastAccessTime [Timestamp] <p>Last time the table was accessed.</p>
-- * LastAnalyzedTime [Timestamp] <p>Last time column statistics were computed for this table.</p>
-- * ViewExpandedText [ViewTextString] <p>If the table is a view, the expanded text of the view; otherwise <code>null</code>.</p>
-- * Owner [NameString] <p>Owner of the table.</p>
-- * Description [DescriptionString] <p>Description of the table.</p>
-- * ViewOriginalText [ViewTextString] <p>If the table is a view, the original text of the view; otherwise <code>null</code>.</p>
-- * TableType [TableTypeString] <p>The type of this table (<code>EXTERNAL_TABLE</code>, <code>VIRTUAL_VIEW</code>, etc.).</p>
-- * Retention [NonNegativeInteger] <p>Retention time for this table.</p>
-- Required key: Name
-- @return TableInput structure as a key-value pair table
function M.TableInput(args)
	assert(args, "You must provide an argument table when creating TableInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StorageDescriptor"] = args["StorageDescriptor"],
		["PartitionKeys"] = args["PartitionKeys"],
		["Name"] = args["Name"],
		["Parameters"] = args["Parameters"],
		["LastAccessTime"] = args["LastAccessTime"],
		["LastAnalyzedTime"] = args["LastAnalyzedTime"],
		["ViewExpandedText"] = args["ViewExpandedText"],
		["Owner"] = args["Owner"],
		["Description"] = args["Description"],
		["ViewOriginalText"] = args["ViewOriginalText"],
		["TableType"] = args["TableType"],
		["Retention"] = args["Retention"],
	}
	asserts.AssertTableInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserDefinedFunctionRequest = { ["FunctionInput"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertCreateUserDefinedFunctionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserDefinedFunctionRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["FunctionInput"], "Expected key FunctionInput to exist in table")
	if struct["FunctionInput"] then asserts.AssertUserDefinedFunctionInput(struct["FunctionInput"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateUserDefinedFunctionRequest[k], "CreateUserDefinedFunctionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserDefinedFunctionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionInput [UserDefinedFunctionInput] <p>A <code>FunctionInput</code> object that defines the function to create in the Data Catalog.</p>
-- * DatabaseName [NameString] <p>The name of the catalog database in which to create the function.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog in which to create the function. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DatabaseName
-- Required key: FunctionInput
-- @return CreateUserDefinedFunctionRequest structure as a key-value pair table
function M.CreateUserDefinedFunctionRequest(args)
	assert(args, "You must provide an argument table when creating CreateUserDefinedFunctionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionInput"] = args["FunctionInput"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertCreateUserDefinedFunctionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DatabaseInput = { ["Parameters"] = true, ["Name"] = true, ["LocationUri"] = true, ["Description"] = true, nil }

function asserts.AssertDatabaseInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DatabaseInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Parameters"] then asserts.AssertParametersMap(struct["Parameters"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["LocationUri"] then asserts.AssertURI(struct["LocationUri"]) end
	if struct["Description"] then asserts.AssertDescriptionString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.DatabaseInput[k], "DatabaseInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DatabaseInput
-- <p>The structure used to create or update a database.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Parameters [ParametersMap] <p>Thes key-value pairs define parameters and properties of the database.</p>
-- * Name [NameString] <p>Name of the database. For Hive compatibility, this is folded to lowercase when it is stored.</p>
-- * LocationUri [URI] <p>The location of the database (for example, an HDFS path).</p>
-- * Description [DescriptionString] <p>Description of the database</p>
-- Required key: Name
-- @return DatabaseInput structure as a key-value pair table
function M.DatabaseInput(args)
	assert(args, "You must provide an argument table when creating DatabaseInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Parameters"] = args["Parameters"],
		["Name"] = args["Name"],
		["LocationUri"] = args["LocationUri"],
		["Description"] = args["Description"],
	}
	asserts.AssertDatabaseInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTableResponse = { nil }

function asserts.AssertCreateTableResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTableResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateTableResponse[k], "CreateTableResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTableResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateTableResponse structure as a key-value pair table
function M.CreateTableResponse(args)
	assert(args, "You must provide an argument table when creating CreateTableResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateTableResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDatabaseRequest = { ["Name"] = true, ["CatalogId"] = true, nil }

function asserts.AssertDeleteDatabaseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDatabaseRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDatabaseRequest[k], "DeleteDatabaseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDatabaseRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>The name of the Database to delete. For Hive compatibility, this must be all lowercase.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog in which the database resides. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: Name
-- @return DeleteDatabaseRequest structure as a key-value pair table
function M.DeleteDatabaseRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDatabaseRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertDeleteDatabaseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDevEndpointResponse = { ["DevEndpoint"] = true, nil }

function asserts.AssertGetDevEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDevEndpointResponse to be of type 'table'")
	if struct["DevEndpoint"] then asserts.AssertDevEndpoint(struct["DevEndpoint"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDevEndpointResponse[k], "GetDevEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDevEndpointResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DevEndpoint [DevEndpoint] <p>A DevEndpoint definition.</p>
-- @return GetDevEndpointResponse structure as a key-value pair table
function M.GetDevEndpointResponse(args)
	assert(args, "You must provide an argument table when creating GetDevEndpointResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DevEndpoint"] = args["DevEndpoint"],
	}
	asserts.AssertGetDevEndpointResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchCreatePartitionRequest = { ["PartitionInputList"] = true, ["TableName"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertBatchCreatePartitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchCreatePartitionRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["PartitionInputList"], "Expected key PartitionInputList to exist in table")
	if struct["PartitionInputList"] then asserts.AssertPartitionInputList(struct["PartitionInputList"]) end
	if struct["TableName"] then asserts.AssertNameString(struct["TableName"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchCreatePartitionRequest[k], "BatchCreatePartitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchCreatePartitionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PartitionInputList [PartitionInputList] <p>A list of <code>PartitionInput</code> structures that define the partitions to be created.</p>
-- * TableName [NameString] <p>The name of the metadata table in which the partition is to be created.</p>
-- * DatabaseName [NameString] <p>The name of the metadata database in which the partition is to be created.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the catalog in which the partion is to be created. Currently, this should be the AWS account ID.</p>
-- Required key: DatabaseName
-- Required key: TableName
-- Required key: PartitionInputList
-- @return BatchCreatePartitionRequest structure as a key-value pair table
function M.BatchCreatePartitionRequest(args)
	assert(args, "You must provide an argument table when creating BatchCreatePartitionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PartitionInputList"] = args["PartitionInputList"],
		["TableName"] = args["TableName"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertBatchCreatePartitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateJobResponse = { ["JobName"] = true, nil }

function asserts.AssertUpdateJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateJobResponse to be of type 'table'")
	if struct["JobName"] then asserts.AssertNameString(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateJobResponse[k], "UpdateJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobName [NameString] <p>Returns the name of the updated job definition.</p>
-- @return UpdateJobResponse structure as a key-value pair table
function M.UpdateJobResponse(args)
	assert(args, "You must provide an argument table when creating UpdateJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobName"] = args["JobName"],
	}
	asserts.AssertUpdateJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Connection = { ["MatchCriteria"] = true, ["CreationTime"] = true, ["ConnectionType"] = true, ["PhysicalConnectionRequirements"] = true, ["LastUpdatedBy"] = true, ["LastUpdatedTime"] = true, ["Description"] = true, ["ConnectionProperties"] = true, ["Name"] = true, nil }

function asserts.AssertConnection(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Connection to be of type 'table'")
	if struct["MatchCriteria"] then asserts.AssertMatchCriteria(struct["MatchCriteria"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["ConnectionType"] then asserts.AssertConnectionType(struct["ConnectionType"]) end
	if struct["PhysicalConnectionRequirements"] then asserts.AssertPhysicalConnectionRequirements(struct["PhysicalConnectionRequirements"]) end
	if struct["LastUpdatedBy"] then asserts.AssertNameString(struct["LastUpdatedBy"]) end
	if struct["LastUpdatedTime"] then asserts.AssertTimestamp(struct["LastUpdatedTime"]) end
	if struct["Description"] then asserts.AssertDescriptionString(struct["Description"]) end
	if struct["ConnectionProperties"] then asserts.AssertConnectionProperties(struct["ConnectionProperties"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Connection[k], "Connection contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Connection
-- <p>Defines a connection to a data source.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MatchCriteria [MatchCriteria] <p>A list of criteria that can be used in selecting this connection.</p>
-- * CreationTime [Timestamp] <p>The time this connection definition was created.</p>
-- * ConnectionType [ConnectionType] <p>The type of the connection. Currently, only JDBC is supported; SFTP is not supported.</p>
-- * PhysicalConnectionRequirements [PhysicalConnectionRequirements] <p>A map of physical connection requirements, such as VPC and SecurityGroup, needed for making this connection successfully.</p>
-- * LastUpdatedBy [NameString] <p>The user, group or role that last updated this connection definition.</p>
-- * LastUpdatedTime [Timestamp] <p>The last time this connection definition was updated.</p>
-- * Description [DescriptionString] <p>Description of the connection.</p>
-- * ConnectionProperties [ConnectionProperties] <p>These key-value pairs define parameters for the connection:</p> <ul> <li> <p> <code>HOST</code> - The host URI: either the fully qualified domain name (FQDN) or the IPv4 address of the database host.</p> </li> <li> <p> <code>PORT</code> - The port number, between 1024 and 65535, of the port on which the database host is listening for database connections.</p> </li> <li> <p> <code>USER_NAME</code> - The name under which to log in to the database. The value string for <code>USER_NAME</code> is "<code>USERNAME</code>".</p> </li> <li> <p> <code>PASSWORD</code> - A password, if one is used, for the user name.</p> </li> <li> <p> <code>JDBC_DRIVER_JAR_URI</code> - The S3 path of the a jar file that contains the JDBC driver to use.</p> </li> <li> <p> <code>JDBC_DRIVER_CLASS_NAME</code> - The class name of the JDBC driver to use.</p> </li> <li> <p> <code>JDBC_ENGINE</code> - The name of the JDBC engine to use.</p> </li> <li> <p> <code>JDBC_ENGINE_VERSION</code> - The version of the JDBC engine to use.</p> </li> <li> <p> <code>CONFIG_FILES</code> - (Reserved for future use).</p> </li> <li> <p> <code>INSTANCE_ID</code> - The instance ID to use.</p> </li> <li> <p> <code>JDBC_CONNECTION_URL</code> - The URL for the JDBC connection.</p> </li> <li> <p> <code>JDBC_ENFORCE_SSL</code> - A Boolean string (true, false) specifying whether SSL with hostname matching will be enforced for the JDBC connection on the client. The default is false.</p> </li> </ul>
-- * Name [NameString] <p>The name of the connection definition.</p>
-- @return Connection structure as a key-value pair table
function M.Connection(args)
	assert(args, "You must provide an argument table when creating Connection")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MatchCriteria"] = args["MatchCriteria"],
		["CreationTime"] = args["CreationTime"],
		["ConnectionType"] = args["ConnectionType"],
		["PhysicalConnectionRequirements"] = args["PhysicalConnectionRequirements"],
		["LastUpdatedBy"] = args["LastUpdatedBy"],
		["LastUpdatedTime"] = args["LastUpdatedTime"],
		["Description"] = args["Description"],
		["ConnectionProperties"] = args["ConnectionProperties"],
		["Name"] = args["Name"],
	}
	asserts.AssertConnection(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LastCrawlInfo = { ["Status"] = true, ["LogStream"] = true, ["ErrorMessage"] = true, ["MessagePrefix"] = true, ["StartTime"] = true, ["LogGroup"] = true, nil }

function asserts.AssertLastCrawlInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LastCrawlInfo to be of type 'table'")
	if struct["Status"] then asserts.AssertLastCrawlStatus(struct["Status"]) end
	if struct["LogStream"] then asserts.AssertLogStream(struct["LogStream"]) end
	if struct["ErrorMessage"] then asserts.AssertDescriptionString(struct["ErrorMessage"]) end
	if struct["MessagePrefix"] then asserts.AssertMessagePrefix(struct["MessagePrefix"]) end
	if struct["StartTime"] then asserts.AssertTimestamp(struct["StartTime"]) end
	if struct["LogGroup"] then asserts.AssertLogGroup(struct["LogGroup"]) end
	for k,_ in pairs(struct) do
		assert(keys.LastCrawlInfo[k], "LastCrawlInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LastCrawlInfo
-- <p>Status and error information about the most recent crawl.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [LastCrawlStatus] <p>Status of the last crawl.</p>
-- * LogStream [LogStream] <p>The log stream for the last crawl.</p>
-- * ErrorMessage [DescriptionString] <p>If an error occurred, the error information about the last crawl.</p>
-- * MessagePrefix [MessagePrefix] <p>The prefix for a message about this crawl.</p>
-- * StartTime [Timestamp] <p>The time at which the crawl started.</p>
-- * LogGroup [LogGroup] <p>The log group for the last crawl.</p>
-- @return LastCrawlInfo structure as a key-value pair table
function M.LastCrawlInfo(args)
	assert(args, "You must provide an argument table when creating LastCrawlInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["LogStream"] = args["LogStream"],
		["ErrorMessage"] = args["ErrorMessage"],
		["MessagePrefix"] = args["MessagePrefix"],
		["StartTime"] = args["StartTime"],
		["LogGroup"] = args["LogGroup"],
	}
	asserts.AssertLastCrawlInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTableVersionResponse = { nil }

function asserts.AssertDeleteTableVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTableVersionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteTableVersionResponse[k], "DeleteTableVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTableVersionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteTableVersionResponse structure as a key-value pair table
function M.DeleteTableVersionResponse(args)
	assert(args, "You must provide an argument table when creating DeleteTableVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteTableVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetClassifierResponse = { ["Classifier"] = true, nil }

function asserts.AssertGetClassifierResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetClassifierResponse to be of type 'table'")
	if struct["Classifier"] then asserts.AssertClassifier(struct["Classifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetClassifierResponse[k], "GetClassifierResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetClassifierResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Classifier [Classifier] <p>The requested classifier.</p>
-- @return GetClassifierResponse structure as a key-value pair table
function M.GetClassifierResponse(args)
	assert(args, "You must provide an argument table when creating GetClassifierResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Classifier"] = args["Classifier"],
	}
	asserts.AssertGetClassifierResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetClassifiersRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertGetClassifiersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetClassifiersRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPageSize(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetClassifiersRequest[k], "GetClassifiersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetClassifiersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>An optional continuation token.</p>
-- * MaxResults [PageSize] <p>Size of the list to return (optional).</p>
-- @return GetClassifiersRequest structure as a key-value pair table
function M.GetClassifiersRequest(args)
	assert(args, "You must provide an argument table when creating GetClassifiersRequest")
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
	asserts.AssertGetClassifiersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSecurityConfigurationsResponse = { ["SecurityConfigurations"] = true, ["NextToken"] = true, nil }

function asserts.AssertGetSecurityConfigurationsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSecurityConfigurationsResponse to be of type 'table'")
	if struct["SecurityConfigurations"] then asserts.AssertSecurityConfigurationList(struct["SecurityConfigurations"]) end
	if struct["NextToken"] then asserts.AssertGenericString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSecurityConfigurationsResponse[k], "GetSecurityConfigurationsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSecurityConfigurationsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecurityConfigurations [SecurityConfigurationList] <p>A list of security configurations.</p>
-- * NextToken [GenericString] <p>A continuation token, if there are more security configurations to return.</p>
-- @return GetSecurityConfigurationsResponse structure as a key-value pair table
function M.GetSecurityConfigurationsResponse(args)
	assert(args, "You must provide an argument table when creating GetSecurityConfigurationsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecurityConfigurations"] = args["SecurityConfigurations"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertGetSecurityConfigurationsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDataflowGraphRequest = { ["PythonScript"] = true, nil }

function asserts.AssertGetDataflowGraphRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDataflowGraphRequest to be of type 'table'")
	if struct["PythonScript"] then asserts.AssertPythonScript(struct["PythonScript"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDataflowGraphRequest[k], "GetDataflowGraphRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDataflowGraphRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PythonScript [PythonScript] <p>The Python script to transform.</p>
-- @return GetDataflowGraphRequest structure as a key-value pair table
function M.GetDataflowGraphRequest(args)
	assert(args, "You must provide an argument table when creating GetDataflowGraphRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PythonScript"] = args["PythonScript"],
	}
	asserts.AssertGetDataflowGraphRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PhysicalConnectionRequirements = { ["SubnetId"] = true, ["AvailabilityZone"] = true, ["SecurityGroupIdList"] = true, nil }

function asserts.AssertPhysicalConnectionRequirements(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PhysicalConnectionRequirements to be of type 'table'")
	if struct["SubnetId"] then asserts.AssertNameString(struct["SubnetId"]) end
	if struct["AvailabilityZone"] then asserts.AssertNameString(struct["AvailabilityZone"]) end
	if struct["SecurityGroupIdList"] then asserts.AssertSecurityGroupIdList(struct["SecurityGroupIdList"]) end
	for k,_ in pairs(struct) do
		assert(keys.PhysicalConnectionRequirements[k], "PhysicalConnectionRequirements contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PhysicalConnectionRequirements
-- <p>Specifies the physical requirements for a connection.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubnetId [NameString] <p>The subnet ID used by the connection.</p>
-- * AvailabilityZone [NameString] <p>The connection's availability zone. This field is redundant, since the specified subnet implies the availability zone to be used. The field must be populated now, but will be deprecated in the future.</p>
-- * SecurityGroupIdList [SecurityGroupIdList] <p>The security group ID list used by the connection.</p>
-- @return PhysicalConnectionRequirements structure as a key-value pair table
function M.PhysicalConnectionRequirements(args)
	assert(args, "You must provide an argument table when creating PhysicalConnectionRequirements")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubnetId"] = args["SubnetId"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["SecurityGroupIdList"] = args["SecurityGroupIdList"],
	}
	asserts.AssertPhysicalConnectionRequirements(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTablesResponse = { ["NextToken"] = true, ["TableList"] = true, nil }

function asserts.AssertGetTablesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTablesResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["TableList"] then asserts.AssertTableList(struct["TableList"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTablesResponse[k], "GetTablesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTablesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>A continuation token, present if the current list segment is not the last.</p>
-- * TableList [TableList] <p>A list of the requested <code>Table</code> objects.</p>
-- @return GetTablesResponse structure as a key-value pair table
function M.GetTablesResponse(args)
	assert(args, "You must provide an argument table when creating GetTablesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["TableList"] = args["TableList"],
	}
	asserts.AssertGetTablesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartJobRunRequest = { ["AllocatedCapacity"] = true, ["JobRunId"] = true, ["NotificationProperty"] = true, ["JobName"] = true, ["SecurityConfiguration"] = true, ["Arguments"] = true, ["Timeout"] = true, nil }

function asserts.AssertStartJobRunRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartJobRunRequest to be of type 'table'")
	assert(struct["JobName"], "Expected key JobName to exist in table")
	if struct["AllocatedCapacity"] then asserts.AssertIntegerValue(struct["AllocatedCapacity"]) end
	if struct["JobRunId"] then asserts.AssertIdString(struct["JobRunId"]) end
	if struct["NotificationProperty"] then asserts.AssertNotificationProperty(struct["NotificationProperty"]) end
	if struct["JobName"] then asserts.AssertNameString(struct["JobName"]) end
	if struct["SecurityConfiguration"] then asserts.AssertNameString(struct["SecurityConfiguration"]) end
	if struct["Arguments"] then asserts.AssertGenericMap(struct["Arguments"]) end
	if struct["Timeout"] then asserts.AssertTimeout(struct["Timeout"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartJobRunRequest[k], "StartJobRunRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartJobRunRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * AllocatedCapacity [IntegerValue] <p>The number of AWS Glue data processing units (DPUs) to allocate to this JobRun. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <a href="https://aws.amazon.com/glue/pricing/">AWS Glue pricing page</a>.</p>
-- * JobRunId [IdString] <p>The ID of a previous JobRun to retry.</p>
-- * NotificationProperty [NotificationProperty] <p>Specifies configuration properties of a job run notification.</p>
-- * JobName [NameString] <p>The name of the job definition to use.</p>
-- * SecurityConfiguration [NameString] <p>The name of the SecurityConfiguration structure to be used with this job run.</p>
-- * Arguments [GenericMap] <p>The job arguments specifically for this run. They override the equivalent default arguments set for in the job definition itself.</p> <p>You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.</p> <p>For information about how to specify and consume your own Job arguments, see the <a href="http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html">Calling AWS Glue APIs in Python</a> topic in the developer guide.</p> <p>For information about the key-value pairs that AWS Glue consumes to set up your job, see the <a href="http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html">Special Parameters Used by AWS Glue</a> topic in the developer guide.</p>
-- * Timeout [Timeout] <p>The JobRun timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours). This overrides the timeout value set in the parent job.</p>
-- Required key: JobName
-- @return StartJobRunRequest structure as a key-value pair table
function M.StartJobRunRequest(args)
	assert(args, "You must provide an argument table when creating StartJobRunRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["AllocatedCapacity"] = args["AllocatedCapacity"],
		["JobRunId"] = args["JobRunId"],
		["NotificationProperty"] = args["NotificationProperty"],
		["JobName"] = args["JobName"],
		["SecurityConfiguration"] = args["SecurityConfiguration"],
		["Arguments"] = args["Arguments"],
		["Timeout"] = args["Timeout"],
	}
	asserts.AssertStartJobRunRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDatabaseResponse = { nil }

function asserts.AssertUpdateDatabaseResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDatabaseResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateDatabaseResponse[k], "UpdateDatabaseResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDatabaseResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateDatabaseResponse structure as a key-value pair table
function M.UpdateDatabaseResponse(args)
	assert(args, "You must provide an argument table when creating UpdateDatabaseResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateDatabaseResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Segment = { ["SegmentNumber"] = true, ["TotalSegments"] = true, nil }

function asserts.AssertSegment(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Segment to be of type 'table'")
	assert(struct["SegmentNumber"], "Expected key SegmentNumber to exist in table")
	assert(struct["TotalSegments"], "Expected key TotalSegments to exist in table")
	if struct["SegmentNumber"] then asserts.AssertNonNegativeInteger(struct["SegmentNumber"]) end
	if struct["TotalSegments"] then asserts.AssertTotalSegmentsInteger(struct["TotalSegments"]) end
	for k,_ in pairs(struct) do
		assert(keys.Segment[k], "Segment contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Segment
-- <p>Defines a non-overlapping region of a table's partitions, allowing multiple requests to be executed in parallel.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SegmentNumber [NonNegativeInteger] <p>The zero-based index number of the this segment. For example, if the total number of segments is 4, SegmentNumber values will range from zero through three.</p>
-- * TotalSegments [TotalSegmentsInteger] <p>The total numer of segments.</p>
-- Required key: SegmentNumber
-- Required key: TotalSegments
-- @return Segment structure as a key-value pair table
function M.Segment(args)
	assert(args, "You must provide an argument table when creating Segment")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SegmentNumber"] = args["SegmentNumber"],
		["TotalSegments"] = args["TotalSegments"],
	}
	asserts.AssertSegment(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDatabaseResponse = { nil }

function asserts.AssertCreateDatabaseResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDatabaseResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateDatabaseResponse[k], "CreateDatabaseResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDatabaseResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateDatabaseResponse structure as a key-value pair table
function M.CreateDatabaseResponse(args)
	assert(args, "You must provide an argument table when creating CreateDatabaseResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateDatabaseResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetConnectionsFilter = { ["MatchCriteria"] = true, ["ConnectionType"] = true, nil }

function asserts.AssertGetConnectionsFilter(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetConnectionsFilter to be of type 'table'")
	if struct["MatchCriteria"] then asserts.AssertMatchCriteria(struct["MatchCriteria"]) end
	if struct["ConnectionType"] then asserts.AssertConnectionType(struct["ConnectionType"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetConnectionsFilter[k], "GetConnectionsFilter contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetConnectionsFilter
-- <p>Filters the connection definitions returned by the <code>GetConnections</code> API.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MatchCriteria [MatchCriteria] <p>A criteria string that must match the criteria recorded in the connection definition for that connection definition to be returned.</p>
-- * ConnectionType [ConnectionType] <p>The type of connections to return. Currently, only JDBC is supported; SFTP is not supported.</p>
-- @return GetConnectionsFilter structure as a key-value pair table
function M.GetConnectionsFilter(args)
	assert(args, "You must provide an argument table when creating GetConnectionsFilter")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MatchCriteria"] = args["MatchCriteria"],
		["ConnectionType"] = args["ConnectionType"],
	}
	asserts.AssertGetConnectionsFilter(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.XMLClassifier = { ["RowTag"] = true, ["Name"] = true, ["Classification"] = true, ["CreationTime"] = true, ["LastUpdated"] = true, ["Version"] = true, nil }

function asserts.AssertXMLClassifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected XMLClassifier to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Classification"], "Expected key Classification to exist in table")
	if struct["RowTag"] then asserts.AssertRowTag(struct["RowTag"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["Classification"] then asserts.AssertClassification(struct["Classification"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["LastUpdated"] then asserts.AssertTimestamp(struct["LastUpdated"]) end
	if struct["Version"] then asserts.AssertVersionId(struct["Version"]) end
	for k,_ in pairs(struct) do
		assert(keys.XMLClassifier[k], "XMLClassifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type XMLClassifier
-- <p>A classifier for <code>XML</code> content.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RowTag [RowTag] <p>The XML tag designating the element that contains each record in an XML document being parsed. Note that this cannot identify a self-closing element (closed by <code>/&gt;</code>). An empty row element that contains only attributes can be parsed as long as it ends with a closing tag (for example, <code>&lt;row item_a="A" item_b="B"&gt;&lt;/row&gt;</code> is okay, but <code>&lt;row item_a="A" item_b="B" /&gt;</code> is not).</p>
-- * Name [NameString] <p>The name of the classifier.</p>
-- * Classification [Classification] <p>An identifier of the data format that the classifier matches.</p>
-- * CreationTime [Timestamp] <p>The time this classifier was registered.</p>
-- * LastUpdated [Timestamp] <p>The time this classifier was last updated.</p>
-- * Version [VersionId] <p>The version of this classifier.</p>
-- Required key: Name
-- Required key: Classification
-- @return XMLClassifier structure as a key-value pair table
function M.XMLClassifier(args)
	assert(args, "You must provide an argument table when creating XMLClassifier")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RowTag"] = args["RowTag"],
		["Name"] = args["Name"],
		["Classification"] = args["Classification"],
		["CreationTime"] = args["CreationTime"],
		["LastUpdated"] = args["LastUpdated"],
		["Version"] = args["Version"],
	}
	asserts.AssertXMLClassifier(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetResourcePolicyRequest = { nil }

function asserts.AssertGetResourcePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetResourcePolicyRequest to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.GetResourcePolicyRequest[k], "GetResourcePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetResourcePolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return GetResourcePolicyRequest structure as a key-value pair table
function M.GetResourcePolicyRequest(args)
	assert(args, "You must provide an argument table when creating GetResourcePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertGetResourcePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateConnectionRequest = { ["ConnectionInput"] = true, ["CatalogId"] = true, nil }

function asserts.AssertCreateConnectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConnectionRequest to be of type 'table'")
	assert(struct["ConnectionInput"], "Expected key ConnectionInput to exist in table")
	if struct["ConnectionInput"] then asserts.AssertConnectionInput(struct["ConnectionInput"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateConnectionRequest[k], "CreateConnectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConnectionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConnectionInput [ConnectionInput] <p>A <code>ConnectionInput</code> object defining the connection to create.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog in which to create the connection. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: ConnectionInput
-- @return CreateConnectionRequest structure as a key-value pair table
function M.CreateConnectionRequest(args)
	assert(args, "You must provide an argument table when creating CreateConnectionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConnectionInput"] = args["ConnectionInput"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertCreateConnectionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotificationProperty = { ["NotifyDelayAfter"] = true, nil }

function asserts.AssertNotificationProperty(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotificationProperty to be of type 'table'")
	if struct["NotifyDelayAfter"] then asserts.AssertNotifyDelayAfter(struct["NotifyDelayAfter"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotificationProperty[k], "NotificationProperty contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotificationProperty
-- <p>Specifies configuration properties of a notification.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotifyDelayAfter [NotifyDelayAfter] <p>After a job run starts, the number of minutes to wait before sending a job run delay notification.</p>
-- @return NotificationProperty structure as a key-value pair table
function M.NotificationProperty(args)
	assert(args, "You must provide an argument table when creating NotificationProperty")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotifyDelayAfter"] = args["NotifyDelayAfter"],
	}
	asserts.AssertNotificationProperty(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCrawlerResponse = { nil }

function asserts.AssertDeleteCrawlerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCrawlerResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteCrawlerResponse[k], "DeleteCrawlerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCrawlerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteCrawlerResponse structure as a key-value pair table
function M.DeleteCrawlerResponse(args)
	assert(args, "You must provide an argument table when creating DeleteCrawlerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteCrawlerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JdbcTarget = { ["Path"] = true, ["Exclusions"] = true, ["ConnectionName"] = true, nil }

function asserts.AssertJdbcTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JdbcTarget to be of type 'table'")
	if struct["Path"] then asserts.AssertPath(struct["Path"]) end
	if struct["Exclusions"] then asserts.AssertPathList(struct["Exclusions"]) end
	if struct["ConnectionName"] then asserts.AssertConnectionName(struct["ConnectionName"]) end
	for k,_ in pairs(struct) do
		assert(keys.JdbcTarget[k], "JdbcTarget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JdbcTarget
-- <p>Specifies a JDBC data store to crawl.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Path [Path] <p>The path of the JDBC target.</p>
-- * Exclusions [PathList] <p>A list of glob patterns used to exclude from the crawl. For more information, see <a href="http://docs.aws.amazon.com/glue/latest/dg/add-crawler.html">Catalog Tables with a Crawler</a>.</p>
-- * ConnectionName [ConnectionName] <p>The name of the connection to use to connect to the JDBC target.</p>
-- @return JdbcTarget structure as a key-value pair table
function M.JdbcTarget(args)
	assert(args, "You must provide an argument table when creating JdbcTarget")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Path"] = args["Path"],
		["Exclusions"] = args["Exclusions"],
		["ConnectionName"] = args["ConnectionName"],
	}
	asserts.AssertJdbcTarget(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateUserDefinedFunctionResponse = { nil }

function asserts.AssertCreateUserDefinedFunctionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateUserDefinedFunctionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateUserDefinedFunctionResponse[k], "CreateUserDefinedFunctionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateUserDefinedFunctionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateUserDefinedFunctionResponse structure as a key-value pair table
function M.CreateUserDefinedFunctionResponse(args)
	assert(args, "You must provide an argument table when creating CreateUserDefinedFunctionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateUserDefinedFunctionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DevEndpointCustomLibraries = { ["ExtraJarsS3Path"] = true, ["ExtraPythonLibsS3Path"] = true, nil }

function asserts.AssertDevEndpointCustomLibraries(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DevEndpointCustomLibraries to be of type 'table'")
	if struct["ExtraJarsS3Path"] then asserts.AssertGenericString(struct["ExtraJarsS3Path"]) end
	if struct["ExtraPythonLibsS3Path"] then asserts.AssertGenericString(struct["ExtraPythonLibsS3Path"]) end
	for k,_ in pairs(struct) do
		assert(keys.DevEndpointCustomLibraries[k], "DevEndpointCustomLibraries contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DevEndpointCustomLibraries
-- <p>Custom libraries to be loaded into a DevEndpoint.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExtraJarsS3Path [GenericString] <p>Path to one or more Java Jars in an S3 bucket that should be loaded in your DevEndpoint.</p> <p>Please note that only pure Java/Scala libraries can currently be used on a DevEndpoint.</p>
-- * ExtraPythonLibsS3Path [GenericString] <p>Path(s) to one or more Python libraries in an S3 bucket that should be loaded in your DevEndpoint. Multiple values must be complete paths separated by a comma.</p> <p>Please note that only pure Python libraries can currently be used on a DevEndpoint. Libraries that rely on C extensions, such as the <a href="http://pandas.pydata.org/">pandas</a> Python data analysis library, are not yet supported.</p>
-- @return DevEndpointCustomLibraries structure as a key-value pair table
function M.DevEndpointCustomLibraries(args)
	assert(args, "You must provide an argument table when creating DevEndpointCustomLibraries")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExtraJarsS3Path"] = args["ExtraJarsS3Path"],
		["ExtraPythonLibsS3Path"] = args["ExtraPythonLibsS3Path"],
	}
	asserts.AssertDevEndpointCustomLibraries(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePartitionResponse = { nil }

function asserts.AssertDeletePartitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePartitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeletePartitionResponse[k], "DeletePartitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePartitionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeletePartitionResponse structure as a key-value pair table
function M.DeletePartitionResponse(args)
	assert(args, "You must provide an argument table when creating DeletePartitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeletePartitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3Encryption = { ["KmsKeyArn"] = true, ["S3EncryptionMode"] = true, nil }

function asserts.AssertS3Encryption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Encryption to be of type 'table'")
	if struct["KmsKeyArn"] then asserts.AssertKmsKeyArn(struct["KmsKeyArn"]) end
	if struct["S3EncryptionMode"] then asserts.AssertS3EncryptionMode(struct["S3EncryptionMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3Encryption[k], "S3Encryption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Encryption
-- <p>Specifies how S3 data should be encrypted.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KmsKeyArn [KmsKeyArn] <p>The AWS ARN of the KMS key to be used to encrypt the data.</p>
-- * S3EncryptionMode [S3EncryptionMode] <p>The encryption mode to use for S3 data.</p>
-- @return S3Encryption structure as a key-value pair table
function M.S3Encryption(args)
	assert(args, "You must provide an argument table when creating S3Encryption")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KmsKeyArn"] = args["KmsKeyArn"],
		["S3EncryptionMode"] = args["S3EncryptionMode"],
	}
	asserts.AssertS3Encryption(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Trigger = { ["Predicate"] = true, ["Description"] = true, ["Schedule"] = true, ["Actions"] = true, ["State"] = true, ["Type"] = true, ["Id"] = true, ["Name"] = true, nil }

function asserts.AssertTrigger(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Trigger to be of type 'table'")
	if struct["Predicate"] then asserts.AssertPredicate(struct["Predicate"]) end
	if struct["Description"] then asserts.AssertDescriptionString(struct["Description"]) end
	if struct["Schedule"] then asserts.AssertGenericString(struct["Schedule"]) end
	if struct["Actions"] then asserts.AssertActionList(struct["Actions"]) end
	if struct["State"] then asserts.AssertTriggerState(struct["State"]) end
	if struct["Type"] then asserts.AssertTriggerType(struct["Type"]) end
	if struct["Id"] then asserts.AssertIdString(struct["Id"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Trigger[k], "Trigger contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Trigger
-- <p>Information about a specific trigger.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Predicate [Predicate] <p>The predicate of this trigger, which defines when it will fire.</p>
-- * Description [DescriptionString] <p>A description of this trigger.</p>
-- * Schedule [GenericString] <p>A <code>cron</code> expression used to specify the schedule (see <a href="http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run something every day at 12:15 UTC, you would specify: <code>cron(15 12 * * ? *)</code>.</p>
-- * Actions [ActionList] <p>The actions initiated by this trigger.</p>
-- * State [TriggerState] <p>The current state of the trigger.</p>
-- * Type [TriggerType] <p>The type of trigger that this is.</p>
-- * Id [IdString] <p>Reserved for future use.</p>
-- * Name [NameString] <p>Name of the trigger.</p>
-- @return Trigger structure as a key-value pair table
function M.Trigger(args)
	assert(args, "You must provide an argument table when creating Trigger")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Predicate"] = args["Predicate"],
		["Description"] = args["Description"],
		["Schedule"] = args["Schedule"],
		["Actions"] = args["Actions"],
		["State"] = args["State"],
		["Type"] = args["Type"],
		["Id"] = args["Id"],
		["Name"] = args["Name"],
	}
	asserts.AssertTrigger(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Predecessor = { ["RunId"] = true, ["JobName"] = true, nil }

function asserts.AssertPredecessor(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Predecessor to be of type 'table'")
	if struct["RunId"] then asserts.AssertIdString(struct["RunId"]) end
	if struct["JobName"] then asserts.AssertNameString(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Predecessor[k], "Predecessor contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Predecessor
-- <p>A job run that was used in the predicate of a conditional trigger that triggered this job run.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RunId [IdString] <p>The job-run ID of the predecessor job run.</p>
-- * JobName [NameString] <p>The name of the job definition used by the predecessor job run.</p>
-- @return Predecessor structure as a key-value pair table
function M.Predecessor(args)
	assert(args, "You must provide an argument table when creating Predecessor")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RunId"] = args["RunId"],
		["JobName"] = args["JobName"],
	}
	asserts.AssertPredecessor(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Predicate = { ["Conditions"] = true, ["Logical"] = true, nil }

function asserts.AssertPredicate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Predicate to be of type 'table'")
	if struct["Conditions"] then asserts.AssertConditionList(struct["Conditions"]) end
	if struct["Logical"] then asserts.AssertLogical(struct["Logical"]) end
	for k,_ in pairs(struct) do
		assert(keys.Predicate[k], "Predicate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Predicate
-- <p>Defines the predicate of the trigger, which determines when it fires.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Conditions [ConditionList] <p>A list of the conditions that determine when the trigger will fire.</p>
-- * Logical [Logical] <p>Optional field if only one condition is listed. If multiple conditions are listed, then this field is required.</p>
-- @return Predicate structure as a key-value pair table
function M.Predicate(args)
	assert(args, "You must provide an argument table when creating Predicate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Conditions"] = args["Conditions"],
		["Logical"] = args["Logical"],
	}
	asserts.AssertPredicate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopCrawlerScheduleRequest = { ["CrawlerName"] = true, nil }

function asserts.AssertStopCrawlerScheduleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopCrawlerScheduleRequest to be of type 'table'")
	assert(struct["CrawlerName"], "Expected key CrawlerName to exist in table")
	if struct["CrawlerName"] then asserts.AssertNameString(struct["CrawlerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopCrawlerScheduleRequest[k], "StopCrawlerScheduleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopCrawlerScheduleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CrawlerName [NameString] <p>Name of the crawler whose schedule state to set.</p>
-- Required key: CrawlerName
-- @return StopCrawlerScheduleRequest structure as a key-value pair table
function M.StopCrawlerScheduleRequest(args)
	assert(args, "You must provide an argument table when creating StopCrawlerScheduleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CrawlerName"] = args["CrawlerName"],
	}
	asserts.AssertStopCrawlerScheduleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CodeGenEdge = { ["Source"] = true, ["TargetParameter"] = true, ["Target"] = true, nil }

function asserts.AssertCodeGenEdge(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CodeGenEdge to be of type 'table'")
	assert(struct["Source"], "Expected key Source to exist in table")
	assert(struct["Target"], "Expected key Target to exist in table")
	if struct["Source"] then asserts.AssertCodeGenIdentifier(struct["Source"]) end
	if struct["TargetParameter"] then asserts.AssertCodeGenArgName(struct["TargetParameter"]) end
	if struct["Target"] then asserts.AssertCodeGenIdentifier(struct["Target"]) end
	for k,_ in pairs(struct) do
		assert(keys.CodeGenEdge[k], "CodeGenEdge contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CodeGenEdge
-- <p>Represents a directional edge in a directed acyclic graph (DAG).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Source [CodeGenIdentifier] <p>The ID of the node at which the edge starts.</p>
-- * TargetParameter [CodeGenArgName] <p>The target of the edge.</p>
-- * Target [CodeGenIdentifier] <p>The ID of the node at which the edge ends.</p>
-- Required key: Source
-- Required key: Target
-- @return CodeGenEdge structure as a key-value pair table
function M.CodeGenEdge(args)
	assert(args, "You must provide an argument table when creating CodeGenEdge")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Source"] = args["Source"],
		["TargetParameter"] = args["TargetParameter"],
		["Target"] = args["Target"],
	}
	asserts.AssertCodeGenEdge(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GrokClassifier = { ["Name"] = true, ["Classification"] = true, ["CreationTime"] = true, ["LastUpdated"] = true, ["Version"] = true, ["GrokPattern"] = true, ["CustomPatterns"] = true, nil }

function asserts.AssertGrokClassifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GrokClassifier to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Classification"], "Expected key Classification to exist in table")
	assert(struct["GrokPattern"], "Expected key GrokPattern to exist in table")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["Classification"] then asserts.AssertClassification(struct["Classification"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["LastUpdated"] then asserts.AssertTimestamp(struct["LastUpdated"]) end
	if struct["Version"] then asserts.AssertVersionId(struct["Version"]) end
	if struct["GrokPattern"] then asserts.AssertGrokPattern(struct["GrokPattern"]) end
	if struct["CustomPatterns"] then asserts.AssertCustomPatterns(struct["CustomPatterns"]) end
	for k,_ in pairs(struct) do
		assert(keys.GrokClassifier[k], "GrokClassifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GrokClassifier
-- <p>A classifier that uses <code>grok</code> patterns.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>The name of the classifier.</p>
-- * Classification [Classification] <p>An identifier of the data format that the classifier matches, such as Twitter, JSON, Omniture logs, and so on.</p>
-- * CreationTime [Timestamp] <p>The time this classifier was registered.</p>
-- * LastUpdated [Timestamp] <p>The time this classifier was last updated.</p>
-- * Version [VersionId] <p>The version of this classifier.</p>
-- * GrokPattern [GrokPattern] <p>The grok pattern applied to a data store by this classifier. For more information, see built-in patterns in <a href="http://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html">Writing Custom Classifers</a>.</p>
-- * CustomPatterns [CustomPatterns] <p>Optional custom grok patterns defined by this classifier. For more information, see custom patterns in <a href="http://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html">Writing Custom Classifers</a>.</p>
-- Required key: Name
-- Required key: Classification
-- Required key: GrokPattern
-- @return GrokClassifier structure as a key-value pair table
function M.GrokClassifier(args)
	assert(args, "You must provide an argument table when creating GrokClassifier")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["Classification"] = args["Classification"],
		["CreationTime"] = args["CreationTime"],
		["LastUpdated"] = args["LastUpdated"],
		["Version"] = args["Version"],
		["GrokPattern"] = args["GrokPattern"],
		["CustomPatterns"] = args["CustomPatterns"],
	}
	asserts.AssertGrokClassifier(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResourceUri = { ["ResourceType"] = true, ["Uri"] = true, nil }

function asserts.AssertResourceUri(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResourceUri to be of type 'table'")
	if struct["ResourceType"] then asserts.AssertResourceType(struct["ResourceType"]) end
	if struct["Uri"] then asserts.AssertURI(struct["Uri"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResourceUri[k], "ResourceUri contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResourceUri
-- <p>URIs for function resources.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceType [ResourceType] <p>The type of the resource.</p>
-- * Uri [URI] <p>The URI for accessing the resource.</p>
-- @return ResourceUri structure as a key-value pair table
function M.ResourceUri(args)
	assert(args, "You must provide an argument table when creating ResourceUri")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceType"] = args["ResourceType"],
		["Uri"] = args["Uri"],
	}
	asserts.AssertResourceUri(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateCrawlerScheduleResponse = { nil }

function asserts.AssertUpdateCrawlerScheduleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCrawlerScheduleResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateCrawlerScheduleResponse[k], "UpdateCrawlerScheduleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCrawlerScheduleResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateCrawlerScheduleResponse structure as a key-value pair table
function M.UpdateCrawlerScheduleResponse(args)
	assert(args, "You must provide an argument table when creating UpdateCrawlerScheduleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateCrawlerScheduleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTriggerResponse = { ["Trigger"] = true, nil }

function asserts.AssertUpdateTriggerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTriggerResponse to be of type 'table'")
	if struct["Trigger"] then asserts.AssertTrigger(struct["Trigger"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTriggerResponse[k], "UpdateTriggerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTriggerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Trigger [Trigger] <p>The resulting trigger definition.</p>
-- @return UpdateTriggerResponse structure as a key-value pair table
function M.UpdateTriggerResponse(args)
	assert(args, "You must provide an argument table when creating UpdateTriggerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Trigger"] = args["Trigger"],
	}
	asserts.AssertUpdateTriggerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartCrawlerRequest = { ["Name"] = true, nil }

function asserts.AssertStartCrawlerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartCrawlerRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartCrawlerRequest[k], "StartCrawlerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartCrawlerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>Name of the crawler to start.</p>
-- Required key: Name
-- @return StartCrawlerRequest structure as a key-value pair table
function M.StartCrawlerRequest(args)
	assert(args, "You must provide an argument table when creating StartCrawlerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertStartCrawlerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetResourcePolicyResponse = { ["PolicyHash"] = true, ["UpdateTime"] = true, ["PolicyInJson"] = true, ["CreateTime"] = true, nil }

function asserts.AssertGetResourcePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetResourcePolicyResponse to be of type 'table'")
	if struct["PolicyHash"] then asserts.AssertHashString(struct["PolicyHash"]) end
	if struct["UpdateTime"] then asserts.AssertTimestamp(struct["UpdateTime"]) end
	if struct["PolicyInJson"] then asserts.AssertPolicyJsonString(struct["PolicyInJson"]) end
	if struct["CreateTime"] then asserts.AssertTimestamp(struct["CreateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetResourcePolicyResponse[k], "GetResourcePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetResourcePolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyHash [HashString] <p>Contains the hash value associated with this policy.</p>
-- * UpdateTime [Timestamp] <p>The date and time at which the policy was last updated.</p>
-- * PolicyInJson [PolicyJsonString] <p>Contains the requested policy document, in JSON format.</p>
-- * CreateTime [Timestamp] <p>The date and time at which the policy was created.</p>
-- @return GetResourcePolicyResponse structure as a key-value pair table
function M.GetResourcePolicyResponse(args)
	assert(args, "You must provide an argument table when creating GetResourcePolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyHash"] = args["PolicyHash"],
		["UpdateTime"] = args["UpdateTime"],
		["PolicyInJson"] = args["PolicyInJson"],
		["CreateTime"] = args["CreateTime"],
	}
	asserts.AssertGetResourcePolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateConnectionRequest = { ["ConnectionInput"] = true, ["Name"] = true, ["CatalogId"] = true, nil }

function asserts.AssertUpdateConnectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConnectionRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["ConnectionInput"], "Expected key ConnectionInput to exist in table")
	if struct["ConnectionInput"] then asserts.AssertConnectionInput(struct["ConnectionInput"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateConnectionRequest[k], "UpdateConnectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConnectionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConnectionInput [ConnectionInput] <p>A <code>ConnectionInput</code> object that redefines the connection in question.</p>
-- * Name [NameString] <p>The name of the connection definition to update.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog in which the connection resides. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: Name
-- Required key: ConnectionInput
-- @return UpdateConnectionRequest structure as a key-value pair table
function M.UpdateConnectionRequest(args)
	assert(args, "You must provide an argument table when creating UpdateConnectionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConnectionInput"] = args["ConnectionInput"],
		["Name"] = args["Name"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertUpdateConnectionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDeletePartitionResponse = { ["Errors"] = true, nil }

function asserts.AssertBatchDeletePartitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeletePartitionResponse to be of type 'table'")
	if struct["Errors"] then asserts.AssertPartitionErrors(struct["Errors"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDeletePartitionResponse[k], "BatchDeletePartitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeletePartitionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Errors [PartitionErrors] <p>Errors encountered when trying to delete the requested partitions.</p>
-- @return BatchDeletePartitionResponse structure as a key-value pair table
function M.BatchDeletePartitionResponse(args)
	assert(args, "You must provide an argument table when creating BatchDeletePartitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Errors"] = args["Errors"],
	}
	asserts.AssertBatchDeletePartitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDatabasesResponse = { ["NextToken"] = true, ["DatabaseList"] = true, nil }

function asserts.AssertGetDatabasesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDatabasesResponse to be of type 'table'")
	assert(struct["DatabaseList"], "Expected key DatabaseList to exist in table")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["DatabaseList"] then asserts.AssertDatabaseList(struct["DatabaseList"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDatabasesResponse[k], "GetDatabasesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDatabasesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>A continuation token for paginating the returned list of tokens, returned if the current segment of the list is not the last.</p>
-- * DatabaseList [DatabaseList] <p>A list of <code>Database</code> objects from the specified catalog.</p>
-- Required key: DatabaseList
-- @return GetDatabasesResponse structure as a key-value pair table
function M.GetDatabasesResponse(args)
	assert(args, "You must provide an argument table when creating GetDatabasesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["DatabaseList"] = args["DatabaseList"],
	}
	asserts.AssertGetDatabasesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateJobResponse = { ["Name"] = true, nil }

function asserts.AssertCreateJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobResponse to be of type 'table'")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateJobResponse[k], "CreateJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>The unique name that was provided for this job definition.</p>
-- @return CreateJobResponse structure as a key-value pair table
function M.CreateJobResponse(args)
	assert(args, "You must provide an argument table when creating CreateJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertCreateJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDevEndpointRequest = { ["EndpointName"] = true, nil }

function asserts.AssertDeleteDevEndpointRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDevEndpointRequest to be of type 'table'")
	assert(struct["EndpointName"], "Expected key EndpointName to exist in table")
	if struct["EndpointName"] then asserts.AssertGenericString(struct["EndpointName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDevEndpointRequest[k], "DeleteDevEndpointRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDevEndpointRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointName [GenericString] <p>The name of the DevEndpoint.</p>
-- Required key: EndpointName
-- @return DeleteDevEndpointRequest structure as a key-value pair table
function M.DeleteDevEndpointRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDevEndpointRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointName"] = args["EndpointName"],
	}
	asserts.AssertDeleteDevEndpointRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSecurityConfigurationResponse = { ["SecurityConfiguration"] = true, nil }

function asserts.AssertGetSecurityConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSecurityConfigurationResponse to be of type 'table'")
	if struct["SecurityConfiguration"] then asserts.AssertSecurityConfiguration(struct["SecurityConfiguration"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSecurityConfigurationResponse[k], "GetSecurityConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSecurityConfigurationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SecurityConfiguration [SecurityConfiguration] <p>The requested security configuration</p>
-- @return GetSecurityConfigurationResponse structure as a key-value pair table
function M.GetSecurityConfigurationResponse(args)
	assert(args, "You must provide an argument table when creating GetSecurityConfigurationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SecurityConfiguration"] = args["SecurityConfiguration"],
	}
	asserts.AssertGetSecurityConfigurationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteClassifierRequest = { ["Name"] = true, nil }

function asserts.AssertDeleteClassifierRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClassifierRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteClassifierRequest[k], "DeleteClassifierRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClassifierRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>Name of the classifier to remove.</p>
-- Required key: Name
-- @return DeleteClassifierRequest structure as a key-value pair table
function M.DeleteClassifierRequest(args)
	assert(args, "You must provide an argument table when creating DeleteClassifierRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteClassifierRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetPartitionRequest = { ["TableName"] = true, ["PartitionsToGet"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertBatchGetPartitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetPartitionRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["PartitionsToGet"], "Expected key PartitionsToGet to exist in table")
	if struct["TableName"] then asserts.AssertNameString(struct["TableName"]) end
	if struct["PartitionsToGet"] then asserts.AssertBatchGetPartitionValueList(struct["PartitionsToGet"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetPartitionRequest[k], "BatchGetPartitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetPartitionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableName [NameString] <p>The name of the partitions' table.</p>
-- * PartitionsToGet [BatchGetPartitionValueList] <p>A list of partition values identifying the partitions to retrieve.</p>
-- * DatabaseName [NameString] <p>The name of the catalog database where the partitions reside.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog where the partitions in question reside. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DatabaseName
-- Required key: TableName
-- Required key: PartitionsToGet
-- @return BatchGetPartitionRequest structure as a key-value pair table
function M.BatchGetPartitionRequest(args)
	assert(args, "You must provide an argument table when creating BatchGetPartitionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableName"] = args["TableName"],
		["PartitionsToGet"] = args["PartitionsToGet"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertBatchGetPartitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Job = { ["LastModifiedOn"] = true, ["ExecutionProperty"] = true, ["Name"] = true, ["CreatedOn"] = true, ["Timeout"] = true, ["NotificationProperty"] = true, ["Connections"] = true, ["SecurityConfiguration"] = true, ["MaxRetries"] = true, ["Role"] = true, ["AllocatedCapacity"] = true, ["Command"] = true, ["LogUri"] = true, ["DefaultArguments"] = true, ["Description"] = true, nil }

function asserts.AssertJob(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Job to be of type 'table'")
	if struct["LastModifiedOn"] then asserts.AssertTimestampValue(struct["LastModifiedOn"]) end
	if struct["ExecutionProperty"] then asserts.AssertExecutionProperty(struct["ExecutionProperty"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["CreatedOn"] then asserts.AssertTimestampValue(struct["CreatedOn"]) end
	if struct["Timeout"] then asserts.AssertTimeout(struct["Timeout"]) end
	if struct["NotificationProperty"] then asserts.AssertNotificationProperty(struct["NotificationProperty"]) end
	if struct["Connections"] then asserts.AssertConnectionsList(struct["Connections"]) end
	if struct["SecurityConfiguration"] then asserts.AssertNameString(struct["SecurityConfiguration"]) end
	if struct["MaxRetries"] then asserts.AssertMaxRetries(struct["MaxRetries"]) end
	if struct["Role"] then asserts.AssertRoleString(struct["Role"]) end
	if struct["AllocatedCapacity"] then asserts.AssertIntegerValue(struct["AllocatedCapacity"]) end
	if struct["Command"] then asserts.AssertJobCommand(struct["Command"]) end
	if struct["LogUri"] then asserts.AssertUriString(struct["LogUri"]) end
	if struct["DefaultArguments"] then asserts.AssertGenericMap(struct["DefaultArguments"]) end
	if struct["Description"] then asserts.AssertDescriptionString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.Job[k], "Job contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Job
-- <p>Specifies a job definition.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModifiedOn [TimestampValue] <p>The last point in time when this job definition was modified.</p>
-- * ExecutionProperty [ExecutionProperty] <p>An ExecutionProperty specifying the maximum number of concurrent runs allowed for this job.</p>
-- * Name [NameString] <p>The name you assign to this job definition.</p>
-- * CreatedOn [TimestampValue] <p>The time and date that this job definition was created.</p>
-- * Timeout [Timeout] <p>The job timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>
-- * NotificationProperty [NotificationProperty] <p>Specifies configuration properties of a job notification.</p>
-- * Connections [ConnectionsList] <p>The connections used for this job.</p>
-- * SecurityConfiguration [NameString] <p>The name of the SecurityConfiguration structure to be used with this job.</p>
-- * MaxRetries [MaxRetries] <p>The maximum number of times to retry this job after a JobRun fails.</p>
-- * Role [RoleString] <p>The name or ARN of the IAM role associated with this job.</p>
-- * AllocatedCapacity [IntegerValue] <p>The number of AWS Glue data processing units (DPUs) allocated to runs of this job. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <a href="https://aws.amazon.com/glue/pricing/">AWS Glue pricing page</a>.</p>
-- * Command [JobCommand] <p>The JobCommand that executes this job.</p>
-- * LogUri [UriString] <p>This field is reserved for future use.</p>
-- * DefaultArguments [GenericMap] <p>The default arguments for this job, specified as name-value pairs.</p> <p>You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.</p> <p>For information about how to specify and consume your own Job arguments, see the <a href="http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html">Calling AWS Glue APIs in Python</a> topic in the developer guide.</p> <p>For information about the key-value pairs that AWS Glue consumes to set up your job, see the <a href="http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html">Special Parameters Used by AWS Glue</a> topic in the developer guide.</p>
-- * Description [DescriptionString] <p>Description of the job being defined.</p>
-- @return Job structure as a key-value pair table
function M.Job(args)
	assert(args, "You must provide an argument table when creating Job")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModifiedOn"] = args["LastModifiedOn"],
		["ExecutionProperty"] = args["ExecutionProperty"],
		["Name"] = args["Name"],
		["CreatedOn"] = args["CreatedOn"],
		["Timeout"] = args["Timeout"],
		["NotificationProperty"] = args["NotificationProperty"],
		["Connections"] = args["Connections"],
		["SecurityConfiguration"] = args["SecurityConfiguration"],
		["MaxRetries"] = args["MaxRetries"],
		["Role"] = args["Role"],
		["AllocatedCapacity"] = args["AllocatedCapacity"],
		["Command"] = args["Command"],
		["LogUri"] = args["LogUri"],
		["DefaultArguments"] = args["DefaultArguments"],
		["Description"] = args["Description"],
	}
	asserts.AssertJob(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ErrorDetail = { ["ErrorCode"] = true, ["ErrorMessage"] = true, nil }

function asserts.AssertErrorDetail(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ErrorDetail to be of type 'table'")
	if struct["ErrorCode"] then asserts.AssertNameString(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then asserts.AssertDescriptionString(struct["ErrorMessage"]) end
	for k,_ in pairs(struct) do
		assert(keys.ErrorDetail[k], "ErrorDetail contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ErrorDetail
-- <p>Contains details about an error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [NameString] <p>The code associated with this error.</p>
-- * ErrorMessage [DescriptionString] <p>A message describing the error.</p>
-- @return ErrorDetail structure as a key-value pair table
function M.ErrorDetail(args)
	assert(args, "You must provide an argument table when creating ErrorDetail")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["ErrorMessage"] = args["ErrorMessage"],
	}
	asserts.AssertErrorDetail(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTriggerResponse = { ["Trigger"] = true, nil }

function asserts.AssertGetTriggerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTriggerResponse to be of type 'table'")
	if struct["Trigger"] then asserts.AssertTrigger(struct["Trigger"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTriggerResponse[k], "GetTriggerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTriggerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Trigger [Trigger] <p>The requested trigger definition.</p>
-- @return GetTriggerResponse structure as a key-value pair table
function M.GetTriggerResponse(args)
	assert(args, "You must provide an argument table when creating GetTriggerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Trigger"] = args["Trigger"],
	}
	asserts.AssertGetTriggerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCrawlerMetricsRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["CrawlerNameList"] = true, nil }

function asserts.AssertGetCrawlerMetricsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCrawlerMetricsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPageSize(struct["MaxResults"]) end
	if struct["CrawlerNameList"] then asserts.AssertCrawlerNameList(struct["CrawlerNameList"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCrawlerMetricsRequest[k], "GetCrawlerMetricsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCrawlerMetricsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>A continuation token, if this is a continuation call.</p>
-- * MaxResults [PageSize] <p>The maximum size of a list to return.</p>
-- * CrawlerNameList [CrawlerNameList] <p>A list of the names of crawlers about which to retrieve metrics.</p>
-- @return GetCrawlerMetricsRequest structure as a key-value pair table
function M.GetCrawlerMetricsRequest(args)
	assert(args, "You must provide an argument table when creating GetCrawlerMetricsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["CrawlerNameList"] = args["CrawlerNameList"],
	}
	asserts.AssertGetCrawlerMetricsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSecurityConfigurationRequest = { ["Name"] = true, nil }

function asserts.AssertGetSecurityConfigurationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSecurityConfigurationRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSecurityConfigurationRequest[k], "GetSecurityConfigurationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSecurityConfigurationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>The name of the security configuration to retrieve.</p>
-- Required key: Name
-- @return GetSecurityConfigurationRequest structure as a key-value pair table
function M.GetSecurityConfigurationRequest(args)
	assert(args, "You must provide an argument table when creating GetSecurityConfigurationRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertGetSecurityConfigurationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCrawlersResponse = { ["Crawlers"] = true, ["NextToken"] = true, nil }

function asserts.AssertGetCrawlersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCrawlersResponse to be of type 'table'")
	if struct["Crawlers"] then asserts.AssertCrawlerList(struct["Crawlers"]) end
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCrawlersResponse[k], "GetCrawlersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCrawlersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Crawlers [CrawlerList] <p>A list of crawler metadata.</p>
-- * NextToken [Token] <p>A continuation token, if the returned list has not reached the end of those defined in this customer account.</p>
-- @return GetCrawlersResponse structure as a key-value pair table
function M.GetCrawlersResponse(args)
	assert(args, "You must provide an argument table when creating GetCrawlersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Crawlers"] = args["Crawlers"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertGetCrawlersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobRunRequest = { ["RunId"] = true, ["PredecessorsIncluded"] = true, ["JobName"] = true, nil }

function asserts.AssertGetJobRunRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobRunRequest to be of type 'table'")
	assert(struct["JobName"], "Expected key JobName to exist in table")
	assert(struct["RunId"], "Expected key RunId to exist in table")
	if struct["RunId"] then asserts.AssertIdString(struct["RunId"]) end
	if struct["PredecessorsIncluded"] then asserts.AssertBooleanValue(struct["PredecessorsIncluded"]) end
	if struct["JobName"] then asserts.AssertNameString(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobRunRequest[k], "GetJobRunRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobRunRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RunId [IdString] <p>The ID of the job run.</p>
-- * PredecessorsIncluded [BooleanValue] <p>True if a list of predecessor runs should be returned.</p>
-- * JobName [NameString] <p>Name of the job definition being run.</p>
-- Required key: JobName
-- Required key: RunId
-- @return GetJobRunRequest structure as a key-value pair table
function M.GetJobRunRequest(args)
	assert(args, "You must provide an argument table when creating GetJobRunRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RunId"] = args["RunId"],
		["PredecessorsIncluded"] = args["PredecessorsIncluded"],
		["JobName"] = args["JobName"],
	}
	asserts.AssertGetJobRunRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteJobRequest = { ["JobName"] = true, nil }

function asserts.AssertDeleteJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteJobRequest to be of type 'table'")
	assert(struct["JobName"], "Expected key JobName to exist in table")
	if struct["JobName"] then asserts.AssertNameString(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteJobRequest[k], "DeleteJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobName [NameString] <p>The name of the job definition to delete.</p>
-- Required key: JobName
-- @return DeleteJobRequest structure as a key-value pair table
function M.DeleteJobRequest(args)
	assert(args, "You must provide an argument table when creating DeleteJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobName"] = args["JobName"],
	}
	asserts.AssertDeleteJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserDefinedFunction = { ["ResourceUris"] = true, ["FunctionName"] = true, ["OwnerType"] = true, ["ClassName"] = true, ["OwnerName"] = true, ["CreateTime"] = true, nil }

function asserts.AssertUserDefinedFunction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserDefinedFunction to be of type 'table'")
	if struct["ResourceUris"] then asserts.AssertResourceUriList(struct["ResourceUris"]) end
	if struct["FunctionName"] then asserts.AssertNameString(struct["FunctionName"]) end
	if struct["OwnerType"] then asserts.AssertPrincipalType(struct["OwnerType"]) end
	if struct["ClassName"] then asserts.AssertNameString(struct["ClassName"]) end
	if struct["OwnerName"] then asserts.AssertNameString(struct["OwnerName"]) end
	if struct["CreateTime"] then asserts.AssertTimestamp(struct["CreateTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserDefinedFunction[k], "UserDefinedFunction contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserDefinedFunction
-- <p>Represents the equivalent of a Hive user-defined function (<code>UDF</code>) definition.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResourceUris [ResourceUriList] <p>The resource URIs for the function.</p>
-- * FunctionName [NameString] <p>The name of the function.</p>
-- * OwnerType [PrincipalType] <p>The owner type.</p>
-- * ClassName [NameString] <p>The Java class that contains the function code.</p>
-- * OwnerName [NameString] <p>The owner of the function.</p>
-- * CreateTime [Timestamp] <p>The time at which the function was created.</p>
-- @return UserDefinedFunction structure as a key-value pair table
function M.UserDefinedFunction(args)
	assert(args, "You must provide an argument table when creating UserDefinedFunction")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResourceUris"] = args["ResourceUris"],
		["FunctionName"] = args["FunctionName"],
		["OwnerType"] = args["OwnerType"],
		["ClassName"] = args["ClassName"],
		["OwnerName"] = args["OwnerName"],
		["CreateTime"] = args["CreateTime"],
	}
	asserts.AssertUserDefinedFunction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTableVersionRequest = { ["VersionId"] = true, ["TableName"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertDeleteTableVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTableVersionRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["VersionId"], "Expected key VersionId to exist in table")
	if struct["VersionId"] then asserts.AssertVersionString(struct["VersionId"]) end
	if struct["TableName"] then asserts.AssertNameString(struct["TableName"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTableVersionRequest[k], "DeleteTableVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTableVersionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [VersionString] <p>The ID of the table version to be deleted. A <code>VersionID</code> is a string representation of an integer. Each version is incremented by 1.</p>
-- * TableName [NameString] <p>The name of the table. For Hive compatibility, this name is entirely lowercase.</p>
-- * DatabaseName [NameString] <p>The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog where the tables reside. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DatabaseName
-- Required key: TableName
-- Required key: VersionId
-- @return DeleteTableVersionRequest structure as a key-value pair table
function M.DeleteTableVersionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteTableVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["TableName"] = args["TableName"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertDeleteTableVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobResponse = { ["Job"] = true, nil }

function asserts.AssertGetJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobResponse to be of type 'table'")
	if struct["Job"] then asserts.AssertJob(struct["Job"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobResponse[k], "GetJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Job [Job] <p>The requested job definition.</p>
-- @return GetJobResponse structure as a key-value pair table
function M.GetJobResponse(args)
	assert(args, "You must provide an argument table when creating GetJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Job"] = args["Job"],
	}
	asserts.AssertGetJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTableRequest = { ["TableInput"] = true, ["SkipArchive"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertUpdateTableRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTableRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["TableInput"], "Expected key TableInput to exist in table")
	if struct["TableInput"] then asserts.AssertTableInput(struct["TableInput"]) end
	if struct["SkipArchive"] then asserts.AssertBooleanNullable(struct["SkipArchive"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTableRequest[k], "UpdateTableRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTableRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableInput [TableInput] <p>An updated <code>TableInput</code> object to define the metadata table in the catalog.</p>
-- * SkipArchive [BooleanNullable] <p>By default, <code>UpdateTable</code> always creates an archived version of the table before updating it. If <code>skipArchive</code> is set to true, however, <code>UpdateTable</code> does not create the archived version.</p>
-- * DatabaseName [NameString] <p>The name of the catalog database in which the table resides. For Hive compatibility, this name is entirely lowercase.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog where the table resides. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DatabaseName
-- Required key: TableInput
-- @return UpdateTableRequest structure as a key-value pair table
function M.UpdateTableRequest(args)
	assert(args, "You must provide an argument table when creating UpdateTableRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableInput"] = args["TableInput"],
		["SkipArchive"] = args["SkipArchive"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertUpdateTableRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DevEndpoint = { ["Status"] = true, ["LastUpdateStatus"] = true, ["AvailabilityZone"] = true, ["PublicKey"] = true, ["PublicAddress"] = true, ["RoleArn"] = true, ["ExtraJarsS3Path"] = true, ["PublicKeys"] = true, ["SecurityGroupIds"] = true, ["CreatedTimestamp"] = true, ["YarnEndpointAddress"] = true, ["EndpointName"] = true, ["VpcId"] = true, ["LastModifiedTimestamp"] = true, ["ExtraPythonLibsS3Path"] = true, ["SecurityConfiguration"] = true, ["SubnetId"] = true, ["ZeppelinRemoteSparkInterpreterPort"] = true, ["PrivateAddress"] = true, ["NumberOfNodes"] = true, ["FailureReason"] = true, nil }

function asserts.AssertDevEndpoint(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DevEndpoint to be of type 'table'")
	if struct["Status"] then asserts.AssertGenericString(struct["Status"]) end
	if struct["LastUpdateStatus"] then asserts.AssertGenericString(struct["LastUpdateStatus"]) end
	if struct["AvailabilityZone"] then asserts.AssertGenericString(struct["AvailabilityZone"]) end
	if struct["PublicKey"] then asserts.AssertGenericString(struct["PublicKey"]) end
	if struct["PublicAddress"] then asserts.AssertGenericString(struct["PublicAddress"]) end
	if struct["RoleArn"] then asserts.AssertRoleArn(struct["RoleArn"]) end
	if struct["ExtraJarsS3Path"] then asserts.AssertGenericString(struct["ExtraJarsS3Path"]) end
	if struct["PublicKeys"] then asserts.AssertPublicKeysList(struct["PublicKeys"]) end
	if struct["SecurityGroupIds"] then asserts.AssertStringList(struct["SecurityGroupIds"]) end
	if struct["CreatedTimestamp"] then asserts.AssertTimestampValue(struct["CreatedTimestamp"]) end
	if struct["YarnEndpointAddress"] then asserts.AssertGenericString(struct["YarnEndpointAddress"]) end
	if struct["EndpointName"] then asserts.AssertGenericString(struct["EndpointName"]) end
	if struct["VpcId"] then asserts.AssertGenericString(struct["VpcId"]) end
	if struct["LastModifiedTimestamp"] then asserts.AssertTimestampValue(struct["LastModifiedTimestamp"]) end
	if struct["ExtraPythonLibsS3Path"] then asserts.AssertGenericString(struct["ExtraPythonLibsS3Path"]) end
	if struct["SecurityConfiguration"] then asserts.AssertNameString(struct["SecurityConfiguration"]) end
	if struct["SubnetId"] then asserts.AssertGenericString(struct["SubnetId"]) end
	if struct["ZeppelinRemoteSparkInterpreterPort"] then asserts.AssertIntegerValue(struct["ZeppelinRemoteSparkInterpreterPort"]) end
	if struct["PrivateAddress"] then asserts.AssertGenericString(struct["PrivateAddress"]) end
	if struct["NumberOfNodes"] then asserts.AssertIntegerValue(struct["NumberOfNodes"]) end
	if struct["FailureReason"] then asserts.AssertGenericString(struct["FailureReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.DevEndpoint[k], "DevEndpoint contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DevEndpoint
-- <p>A development endpoint where a developer can remotely debug ETL scripts.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [GenericString] <p>The current status of this DevEndpoint.</p>
-- * LastUpdateStatus [GenericString] <p>The status of the last update.</p>
-- * AvailabilityZone [GenericString] <p>The AWS availability zone where this DevEndpoint is located.</p>
-- * PublicKey [GenericString] <p>The public key to be used by this DevEndpoint for authentication. This attribute is provided for backward compatibility, as the recommended attribute to use is public keys.</p>
-- * PublicAddress [GenericString] <p>The public IP address used by this DevEndpoint. The PublicAddress field is present only when you create a non-VPC (virtual private cloud) DevEndpoint.</p>
-- * RoleArn [RoleArn] <p>The AWS ARN of the IAM role used in this DevEndpoint.</p>
-- * ExtraJarsS3Path [GenericString] <p>Path to one or more Java Jars in an S3 bucket that should be loaded in your DevEndpoint.</p> <p>Please note that only pure Java/Scala libraries can currently be used on a DevEndpoint.</p>
-- * PublicKeys [PublicKeysList] <p>A list of public keys to be used by the DevEndpoints for authentication. The use of this attribute is preferred over a single public key because the public keys allow you to have a different private key per client.</p> <note> <p>If you previously created an endpoint with a public key, you must remove that key to be able to set a list of public keys: call the <code>UpdateDevEndpoint</code> API with the public key content in the <code>deletePublicKeys</code> attribute, and the list of new keys in the <code>addPublicKeys</code> attribute.</p> </note>
-- * SecurityGroupIds [StringList] <p>A list of security group identifiers used in this DevEndpoint.</p>
-- * CreatedTimestamp [TimestampValue] <p>The point in time at which this DevEndpoint was created.</p>
-- * YarnEndpointAddress [GenericString] <p>The YARN endpoint address used by this DevEndpoint.</p>
-- * EndpointName [GenericString] <p>The name of the DevEndpoint.</p>
-- * VpcId [GenericString] <p>The ID of the virtual private cloud (VPC) used by this DevEndpoint.</p>
-- * LastModifiedTimestamp [TimestampValue] <p>The point in time at which this DevEndpoint was last modified.</p>
-- * ExtraPythonLibsS3Path [GenericString] <p>Path(s) to one or more Python libraries in an S3 bucket that should be loaded in your DevEndpoint. Multiple values must be complete paths separated by a comma.</p> <p>Please note that only pure Python libraries can currently be used on a DevEndpoint. Libraries that rely on C extensions, such as the <a href="http://pandas.pydata.org/">pandas</a> Python data analysis library, are not yet supported.</p>
-- * SecurityConfiguration [NameString] <p>The name of the SecurityConfiguration structure to be used with this DevEndpoint.</p>
-- * SubnetId [GenericString] <p>The subnet ID for this DevEndpoint.</p>
-- * ZeppelinRemoteSparkInterpreterPort [IntegerValue] <p>The Apache Zeppelin port for the remote Apache Spark interpreter.</p>
-- * PrivateAddress [GenericString] <p>A private IP address to access the DevEndpoint within a VPC, if the DevEndpoint is created within one. The PrivateAddress field is present only when you create the DevEndpoint within your virtual private cloud (VPC).</p>
-- * NumberOfNodes [IntegerValue] <p>The number of AWS Glue Data Processing Units (DPUs) allocated to this DevEndpoint.</p>
-- * FailureReason [GenericString] <p>The reason for a current failure in this DevEndpoint.</p>
-- @return DevEndpoint structure as a key-value pair table
function M.DevEndpoint(args)
	assert(args, "You must provide an argument table when creating DevEndpoint")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["LastUpdateStatus"] = args["LastUpdateStatus"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["PublicKey"] = args["PublicKey"],
		["PublicAddress"] = args["PublicAddress"],
		["RoleArn"] = args["RoleArn"],
		["ExtraJarsS3Path"] = args["ExtraJarsS3Path"],
		["PublicKeys"] = args["PublicKeys"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
		["CreatedTimestamp"] = args["CreatedTimestamp"],
		["YarnEndpointAddress"] = args["YarnEndpointAddress"],
		["EndpointName"] = args["EndpointName"],
		["VpcId"] = args["VpcId"],
		["LastModifiedTimestamp"] = args["LastModifiedTimestamp"],
		["ExtraPythonLibsS3Path"] = args["ExtraPythonLibsS3Path"],
		["SecurityConfiguration"] = args["SecurityConfiguration"],
		["SubnetId"] = args["SubnetId"],
		["ZeppelinRemoteSparkInterpreterPort"] = args["ZeppelinRemoteSparkInterpreterPort"],
		["PrivateAddress"] = args["PrivateAddress"],
		["NumberOfNodes"] = args["NumberOfNodes"],
		["FailureReason"] = args["FailureReason"],
	}
	asserts.AssertDevEndpoint(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DynamoDBTarget = { ["Path"] = true, nil }

function asserts.AssertDynamoDBTarget(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DynamoDBTarget to be of type 'table'")
	if struct["Path"] then asserts.AssertPath(struct["Path"]) end
	for k,_ in pairs(struct) do
		assert(keys.DynamoDBTarget[k], "DynamoDBTarget contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DynamoDBTarget
-- <p>Specifies a DynamoDB table to crawl.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Path [Path] <p>The name of the DynamoDB table to crawl.</p>
-- @return DynamoDBTarget structure as a key-value pair table
function M.DynamoDBTarget(args)
	assert(args, "You must provide an argument table when creating DynamoDBTarget")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Path"] = args["Path"],
	}
	asserts.AssertDynamoDBTarget(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchStopJobRunRequest = { ["JobRunIds"] = true, ["JobName"] = true, nil }

function asserts.AssertBatchStopJobRunRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchStopJobRunRequest to be of type 'table'")
	assert(struct["JobName"], "Expected key JobName to exist in table")
	assert(struct["JobRunIds"], "Expected key JobRunIds to exist in table")
	if struct["JobRunIds"] then asserts.AssertBatchStopJobRunJobRunIdList(struct["JobRunIds"]) end
	if struct["JobName"] then asserts.AssertNameString(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchStopJobRunRequest[k], "BatchStopJobRunRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchStopJobRunRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobRunIds [BatchStopJobRunJobRunIdList] <p>A list of the JobRunIds that should be stopped for that job definition.</p>
-- * JobName [NameString] <p>The name of the job definition for which to stop job runs.</p>
-- Required key: JobName
-- Required key: JobRunIds
-- @return BatchStopJobRunRequest structure as a key-value pair table
function M.BatchStopJobRunRequest(args)
	assert(args, "You must provide an argument table when creating BatchStopJobRunRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobRunIds"] = args["JobRunIds"],
		["JobName"] = args["JobName"],
	}
	asserts.AssertBatchStopJobRunRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TriggerUpdate = { ["Predicate"] = true, ["Schedule"] = true, ["Name"] = true, ["Actions"] = true, ["Description"] = true, nil }

function asserts.AssertTriggerUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TriggerUpdate to be of type 'table'")
	if struct["Predicate"] then asserts.AssertPredicate(struct["Predicate"]) end
	if struct["Schedule"] then asserts.AssertGenericString(struct["Schedule"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["Actions"] then asserts.AssertActionList(struct["Actions"]) end
	if struct["Description"] then asserts.AssertDescriptionString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.TriggerUpdate[k], "TriggerUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TriggerUpdate
-- <p>A structure used to provide information used to update a trigger. This object will update the the previous trigger definition by overwriting it completely.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Predicate [Predicate] <p>The predicate of this trigger, which defines when it will fire.</p>
-- * Schedule [GenericString] <p>A <code>cron</code> expression used to specify the schedule (see <a href="http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run something every day at 12:15 UTC, you would specify: <code>cron(15 12 * * ? *)</code>.</p>
-- * Name [NameString] <p>Reserved for future use.</p>
-- * Actions [ActionList] <p>The actions initiated by this trigger.</p>
-- * Description [DescriptionString] <p>A description of this trigger.</p>
-- @return TriggerUpdate structure as a key-value pair table
function M.TriggerUpdate(args)
	assert(args, "You must provide an argument table when creating TriggerUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Predicate"] = args["Predicate"],
		["Schedule"] = args["Schedule"],
		["Name"] = args["Name"],
		["Actions"] = args["Actions"],
		["Description"] = args["Description"],
	}
	asserts.AssertTriggerUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobBookmarksEncryption = { ["KmsKeyArn"] = true, ["JobBookmarksEncryptionMode"] = true, nil }

function asserts.AssertJobBookmarksEncryption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobBookmarksEncryption to be of type 'table'")
	if struct["KmsKeyArn"] then asserts.AssertKmsKeyArn(struct["KmsKeyArn"]) end
	if struct["JobBookmarksEncryptionMode"] then asserts.AssertJobBookmarksEncryptionMode(struct["JobBookmarksEncryptionMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobBookmarksEncryption[k], "JobBookmarksEncryption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobBookmarksEncryption
-- <p>Specifies how Job bookmark data should be encrypted.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KmsKeyArn [KmsKeyArn] <p>The AWS ARN of the KMS key to be used to encrypt the data.</p>
-- * JobBookmarksEncryptionMode [JobBookmarksEncryptionMode] <p>The encryption mode to use for Job bookmarks data.</p>
-- @return JobBookmarksEncryption structure as a key-value pair table
function M.JobBookmarksEncryption(args)
	assert(args, "You must provide an argument table when creating JobBookmarksEncryption")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KmsKeyArn"] = args["KmsKeyArn"],
		["JobBookmarksEncryptionMode"] = args["JobBookmarksEncryptionMode"],
	}
	asserts.AssertJobBookmarksEncryption(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteConnectionResponse = { nil }

function asserts.AssertDeleteConnectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConnectionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteConnectionResponse[k], "DeleteConnectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConnectionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteConnectionResponse structure as a key-value pair table
function M.DeleteConnectionResponse(args)
	assert(args, "You must provide an argument table when creating DeleteConnectionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteConnectionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTriggersRequest = { ["NextToken"] = true, ["DependentJobName"] = true, ["MaxResults"] = true, nil }

function asserts.AssertGetTriggersRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTriggersRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertGenericString(struct["NextToken"]) end
	if struct["DependentJobName"] then asserts.AssertNameString(struct["DependentJobName"]) end
	if struct["MaxResults"] then asserts.AssertPageSize(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTriggersRequest[k], "GetTriggersRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTriggersRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [GenericString] <p>A continuation token, if this is a continuation call.</p>
-- * DependentJobName [NameString] <p>The name of the job for which to retrieve triggers. The trigger that can start this job will be returned, and if there is no such trigger, all triggers will be returned.</p>
-- * MaxResults [PageSize] <p>The maximum size of the response.</p>
-- @return GetTriggersRequest structure as a key-value pair table
function M.GetTriggersRequest(args)
	assert(args, "You must provide an argument table when creating GetTriggersRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["DependentJobName"] = args["DependentJobName"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertGetTriggersRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobRunResponse = { ["JobRun"] = true, nil }

function asserts.AssertGetJobRunResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobRunResponse to be of type 'table'")
	if struct["JobRun"] then asserts.AssertJobRun(struct["JobRun"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobRunResponse[k], "GetJobRunResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobRunResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobRun [JobRun] <p>The requested job-run metadata.</p>
-- @return GetJobRunResponse structure as a key-value pair table
function M.GetJobRunResponse(args)
	assert(args, "You must provide an argument table when creating GetJobRunResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobRun"] = args["JobRun"],
	}
	asserts.AssertGetJobRunResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateScriptRequest = { ["Language"] = true, ["DagEdges"] = true, ["DagNodes"] = true, nil }

function asserts.AssertCreateScriptRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateScriptRequest to be of type 'table'")
	if struct["Language"] then asserts.AssertLanguage(struct["Language"]) end
	if struct["DagEdges"] then asserts.AssertDagEdges(struct["DagEdges"]) end
	if struct["DagNodes"] then asserts.AssertDagNodes(struct["DagNodes"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateScriptRequest[k], "CreateScriptRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateScriptRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Language [Language] <p>The programming language of the resulting code from the DAG.</p>
-- * DagEdges [DagEdges] <p>A list of the edges in the DAG.</p>
-- * DagNodes [DagNodes] <p>A list of the nodes in the DAG.</p>
-- @return CreateScriptRequest structure as a key-value pair table
function M.CreateScriptRequest(args)
	assert(args, "You must provide an argument table when creating CreateScriptRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Language"] = args["Language"],
		["DagEdges"] = args["DagEdges"],
		["DagNodes"] = args["DagNodes"],
	}
	asserts.AssertCreateScriptRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Database = { ["Parameters"] = true, ["CreateTime"] = true, ["Name"] = true, ["LocationUri"] = true, ["Description"] = true, nil }

function asserts.AssertDatabase(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Database to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Parameters"] then asserts.AssertParametersMap(struct["Parameters"]) end
	if struct["CreateTime"] then asserts.AssertTimestamp(struct["CreateTime"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["LocationUri"] then asserts.AssertURI(struct["LocationUri"]) end
	if struct["Description"] then asserts.AssertDescriptionString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.Database[k], "Database contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Database
-- <p>The <code>Database</code> object represents a logical grouping of tables that may reside in a Hive metastore or an RDBMS.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Parameters [ParametersMap] <p>These key-value pairs define parameters and properties of the database.</p>
-- * CreateTime [Timestamp] <p>The time at which the metadata database was created in the catalog.</p>
-- * Name [NameString] <p>Name of the database. For Hive compatibility, this is folded to lowercase when it is stored.</p>
-- * LocationUri [URI] <p>The location of the database (for example, an HDFS path).</p>
-- * Description [DescriptionString] <p>Description of the database.</p>
-- Required key: Name
-- @return Database structure as a key-value pair table
function M.Database(args)
	assert(args, "You must provide an argument table when creating Database")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Parameters"] = args["Parameters"],
		["CreateTime"] = args["CreateTime"],
		["Name"] = args["Name"],
		["LocationUri"] = args["LocationUri"],
		["Description"] = args["Description"],
	}
	asserts.AssertDatabase(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CrawlerTargets = { ["JdbcTargets"] = true, ["S3Targets"] = true, ["DynamoDBTargets"] = true, nil }

function asserts.AssertCrawlerTargets(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CrawlerTargets to be of type 'table'")
	if struct["JdbcTargets"] then asserts.AssertJdbcTargetList(struct["JdbcTargets"]) end
	if struct["S3Targets"] then asserts.AssertS3TargetList(struct["S3Targets"]) end
	if struct["DynamoDBTargets"] then asserts.AssertDynamoDBTargetList(struct["DynamoDBTargets"]) end
	for k,_ in pairs(struct) do
		assert(keys.CrawlerTargets[k], "CrawlerTargets contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CrawlerTargets
-- <p>Specifies data stores to crawl.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JdbcTargets [JdbcTargetList] <p>Specifies JDBC targets.</p>
-- * S3Targets [S3TargetList] <p>Specifies Amazon S3 targets.</p>
-- * DynamoDBTargets [DynamoDBTargetList] <p>Specifies DynamoDB targets.</p>
-- @return CrawlerTargets structure as a key-value pair table
function M.CrawlerTargets(args)
	assert(args, "You must provide an argument table when creating CrawlerTargets")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JdbcTargets"] = args["JdbcTargets"],
		["S3Targets"] = args["S3Targets"],
		["DynamoDBTargets"] = args["DynamoDBTargets"],
	}
	asserts.AssertCrawlerTargets(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDevEndpointResponse = { ["Status"] = true, ["AvailabilityZone"] = true, ["SecurityConfiguration"] = true, ["RoleArn"] = true, ["ExtraJarsS3Path"] = true, ["SecurityGroupIds"] = true, ["CreatedTimestamp"] = true, ["YarnEndpointAddress"] = true, ["EndpointName"] = true, ["VpcId"] = true, ["ExtraPythonLibsS3Path"] = true, ["SubnetId"] = true, ["ZeppelinRemoteSparkInterpreterPort"] = true, ["NumberOfNodes"] = true, ["FailureReason"] = true, nil }

function asserts.AssertCreateDevEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDevEndpointResponse to be of type 'table'")
	if struct["Status"] then asserts.AssertGenericString(struct["Status"]) end
	if struct["AvailabilityZone"] then asserts.AssertGenericString(struct["AvailabilityZone"]) end
	if struct["SecurityConfiguration"] then asserts.AssertNameString(struct["SecurityConfiguration"]) end
	if struct["RoleArn"] then asserts.AssertRoleArn(struct["RoleArn"]) end
	if struct["ExtraJarsS3Path"] then asserts.AssertGenericString(struct["ExtraJarsS3Path"]) end
	if struct["SecurityGroupIds"] then asserts.AssertStringList(struct["SecurityGroupIds"]) end
	if struct["CreatedTimestamp"] then asserts.AssertTimestampValue(struct["CreatedTimestamp"]) end
	if struct["YarnEndpointAddress"] then asserts.AssertGenericString(struct["YarnEndpointAddress"]) end
	if struct["EndpointName"] then asserts.AssertGenericString(struct["EndpointName"]) end
	if struct["VpcId"] then asserts.AssertGenericString(struct["VpcId"]) end
	if struct["ExtraPythonLibsS3Path"] then asserts.AssertGenericString(struct["ExtraPythonLibsS3Path"]) end
	if struct["SubnetId"] then asserts.AssertGenericString(struct["SubnetId"]) end
	if struct["ZeppelinRemoteSparkInterpreterPort"] then asserts.AssertIntegerValue(struct["ZeppelinRemoteSparkInterpreterPort"]) end
	if struct["NumberOfNodes"] then asserts.AssertIntegerValue(struct["NumberOfNodes"]) end
	if struct["FailureReason"] then asserts.AssertGenericString(struct["FailureReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDevEndpointResponse[k], "CreateDevEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDevEndpointResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [GenericString] <p>The current status of the new DevEndpoint.</p>
-- * AvailabilityZone [GenericString] <p>The AWS availability zone where this DevEndpoint is located.</p>
-- * SecurityConfiguration [NameString] <p>The name of the SecurityConfiguration structure being used with this DevEndpoint.</p>
-- * RoleArn [RoleArn] <p>The AWS ARN of the role assigned to the new DevEndpoint.</p>
-- * ExtraJarsS3Path [GenericString] <p>Path to one or more Java Jars in an S3 bucket that will be loaded in your DevEndpoint.</p>
-- * SecurityGroupIds [StringList] <p>The security groups assigned to the new DevEndpoint.</p>
-- * CreatedTimestamp [TimestampValue] <p>The point in time at which this DevEndpoint was created.</p>
-- * YarnEndpointAddress [GenericString] <p>The address of the YARN endpoint used by this DevEndpoint.</p>
-- * EndpointName [GenericString] <p>The name assigned to the new DevEndpoint.</p>
-- * VpcId [GenericString] <p>The ID of the VPC used by this DevEndpoint.</p>
-- * ExtraPythonLibsS3Path [GenericString] <p>Path(s) to one or more Python libraries in an S3 bucket that will be loaded in your DevEndpoint.</p>
-- * SubnetId [GenericString] <p>The subnet ID assigned to the new DevEndpoint.</p>
-- * ZeppelinRemoteSparkInterpreterPort [IntegerValue] <p>The Apache Zeppelin port for the remote Apache Spark interpreter.</p>
-- * NumberOfNodes [IntegerValue] <p>The number of AWS Glue Data Processing Units (DPUs) allocated to this DevEndpoint.</p>
-- * FailureReason [GenericString] <p>The reason for a current failure in this DevEndpoint.</p>
-- @return CreateDevEndpointResponse structure as a key-value pair table
function M.CreateDevEndpointResponse(args)
	assert(args, "You must provide an argument table when creating CreateDevEndpointResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["AvailabilityZone"] = args["AvailabilityZone"],
		["SecurityConfiguration"] = args["SecurityConfiguration"],
		["RoleArn"] = args["RoleArn"],
		["ExtraJarsS3Path"] = args["ExtraJarsS3Path"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
		["CreatedTimestamp"] = args["CreatedTimestamp"],
		["YarnEndpointAddress"] = args["YarnEndpointAddress"],
		["EndpointName"] = args["EndpointName"],
		["VpcId"] = args["VpcId"],
		["ExtraPythonLibsS3Path"] = args["ExtraPythonLibsS3Path"],
		["SubnetId"] = args["SubnetId"],
		["ZeppelinRemoteSparkInterpreterPort"] = args["ZeppelinRemoteSparkInterpreterPort"],
		["NumberOfNodes"] = args["NumberOfNodes"],
		["FailureReason"] = args["FailureReason"],
	}
	asserts.AssertCreateDevEndpointResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Crawler = { ["CrawlElapsedTime"] = true, ["CrawlerSecurityConfiguration"] = true, ["Configuration"] = true, ["Description"] = true, ["Schedule"] = true, ["CreationTime"] = true, ["LastUpdated"] = true, ["Targets"] = true, ["LastCrawl"] = true, ["State"] = true, ["Version"] = true, ["Role"] = true, ["DatabaseName"] = true, ["SchemaChangePolicy"] = true, ["TablePrefix"] = true, ["Classifiers"] = true, ["Name"] = true, nil }

function asserts.AssertCrawler(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Crawler to be of type 'table'")
	if struct["CrawlElapsedTime"] then asserts.AssertMillisecondsCount(struct["CrawlElapsedTime"]) end
	if struct["CrawlerSecurityConfiguration"] then asserts.AssertCrawlerSecurityConfiguration(struct["CrawlerSecurityConfiguration"]) end
	if struct["Configuration"] then asserts.AssertCrawlerConfiguration(struct["Configuration"]) end
	if struct["Description"] then asserts.AssertDescriptionString(struct["Description"]) end
	if struct["Schedule"] then asserts.AssertSchedule(struct["Schedule"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["LastUpdated"] then asserts.AssertTimestamp(struct["LastUpdated"]) end
	if struct["Targets"] then asserts.AssertCrawlerTargets(struct["Targets"]) end
	if struct["LastCrawl"] then asserts.AssertLastCrawlInfo(struct["LastCrawl"]) end
	if struct["State"] then asserts.AssertCrawlerState(struct["State"]) end
	if struct["Version"] then asserts.AssertVersionId(struct["Version"]) end
	if struct["Role"] then asserts.AssertRole(struct["Role"]) end
	if struct["DatabaseName"] then asserts.AssertDatabaseName(struct["DatabaseName"]) end
	if struct["SchemaChangePolicy"] then asserts.AssertSchemaChangePolicy(struct["SchemaChangePolicy"]) end
	if struct["TablePrefix"] then asserts.AssertTablePrefix(struct["TablePrefix"]) end
	if struct["Classifiers"] then asserts.AssertClassifierNameList(struct["Classifiers"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Crawler[k], "Crawler contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Crawler
-- <p>Specifies a crawler program that examines a data source and uses classifiers to try to determine its schema. If successful, the crawler records metadata concerning the data source in the AWS Glue Data Catalog.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CrawlElapsedTime [MillisecondsCount] <p>If the crawler is running, contains the total time elapsed since the last crawl began.</p>
-- * CrawlerSecurityConfiguration [CrawlerSecurityConfiguration] <p>The name of the SecurityConfiguration structure to be used by this Crawler.</p>
-- * Configuration [CrawlerConfiguration] <p>Crawler configuration information. This versioned JSON string allows users to specify aspects of a crawler's behavior. For more information, see <a href="http://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html">Configuring a Crawler</a>.</p>
-- * Description [DescriptionString] <p>A description of the crawler.</p>
-- * Schedule [Schedule] <p>For scheduled crawlers, the schedule when the crawler runs.</p>
-- * CreationTime [Timestamp] <p>The time when the crawler was created.</p>
-- * LastUpdated [Timestamp] <p>The time the crawler was last updated.</p>
-- * Targets [CrawlerTargets] <p>A collection of targets to crawl.</p>
-- * LastCrawl [LastCrawlInfo] <p>The status of the last crawl, and potentially error information if an error occurred.</p>
-- * State [CrawlerState] <p>Indicates whether the crawler is running, or whether a run is pending.</p>
-- * Version [VersionId] <p>The version of the crawler.</p>
-- * Role [Role] <p>The IAM role (or ARN of an IAM role) used to access customer resources, such as data in Amazon S3.</p>
-- * DatabaseName [DatabaseName] <p>The database where metadata is written by this crawler.</p>
-- * SchemaChangePolicy [SchemaChangePolicy] <p>Sets the behavior when the crawler finds a changed or deleted object.</p>
-- * TablePrefix [TablePrefix] <p>The prefix added to the names of tables that are created.</p>
-- * Classifiers [ClassifierNameList] <p>A list of custom classifiers associated with the crawler.</p>
-- * Name [NameString] <p>The crawler name.</p>
-- @return Crawler structure as a key-value pair table
function M.Crawler(args)
	assert(args, "You must provide an argument table when creating Crawler")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CrawlElapsedTime"] = args["CrawlElapsedTime"],
		["CrawlerSecurityConfiguration"] = args["CrawlerSecurityConfiguration"],
		["Configuration"] = args["Configuration"],
		["Description"] = args["Description"],
		["Schedule"] = args["Schedule"],
		["CreationTime"] = args["CreationTime"],
		["LastUpdated"] = args["LastUpdated"],
		["Targets"] = args["Targets"],
		["LastCrawl"] = args["LastCrawl"],
		["State"] = args["State"],
		["Version"] = args["Version"],
		["Role"] = args["Role"],
		["DatabaseName"] = args["DatabaseName"],
		["SchemaChangePolicy"] = args["SchemaChangePolicy"],
		["TablePrefix"] = args["TablePrefix"],
		["Classifiers"] = args["Classifiers"],
		["Name"] = args["Name"],
	}
	asserts.AssertCrawler(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateCrawlerResponse = { nil }

function asserts.AssertCreateCrawlerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateCrawlerResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateCrawlerResponse[k], "CreateCrawlerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateCrawlerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateCrawlerResponse structure as a key-value pair table
function M.CreateCrawlerResponse(args)
	assert(args, "You must provide an argument table when creating CreateCrawlerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateCrawlerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartCrawlerScheduleRequest = { ["CrawlerName"] = true, nil }

function asserts.AssertStartCrawlerScheduleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartCrawlerScheduleRequest to be of type 'table'")
	assert(struct["CrawlerName"], "Expected key CrawlerName to exist in table")
	if struct["CrawlerName"] then asserts.AssertNameString(struct["CrawlerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartCrawlerScheduleRequest[k], "StartCrawlerScheduleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartCrawlerScheduleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CrawlerName [NameString] <p>Name of the crawler to schedule.</p>
-- Required key: CrawlerName
-- @return StartCrawlerScheduleRequest structure as a key-value pair table
function M.StartCrawlerScheduleRequest(args)
	assert(args, "You must provide an argument table when creating StartCrawlerScheduleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CrawlerName"] = args["CrawlerName"],
	}
	asserts.AssertStartCrawlerScheduleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResetJobBookmarkRequest = { ["JobName"] = true, nil }

function asserts.AssertResetJobBookmarkRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetJobBookmarkRequest to be of type 'table'")
	assert(struct["JobName"], "Expected key JobName to exist in table")
	if struct["JobName"] then asserts.AssertJobName(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResetJobBookmarkRequest[k], "ResetJobBookmarkRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetJobBookmarkRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobName [JobName] <p>The name of the job in question.</p>
-- Required key: JobName
-- @return ResetJobBookmarkRequest structure as a key-value pair table
function M.ResetJobBookmarkRequest(args)
	assert(args, "You must provide an argument table when creating ResetJobBookmarkRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobName"] = args["JobName"],
	}
	asserts.AssertResetJobBookmarkRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ExecutionProperty = { ["MaxConcurrentRuns"] = true, nil }

function asserts.AssertExecutionProperty(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ExecutionProperty to be of type 'table'")
	if struct["MaxConcurrentRuns"] then asserts.AssertMaxConcurrentRuns(struct["MaxConcurrentRuns"]) end
	for k,_ in pairs(struct) do
		assert(keys.ExecutionProperty[k], "ExecutionProperty contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ExecutionProperty
-- <p>An execution property of a job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * MaxConcurrentRuns [MaxConcurrentRuns] <p>The maximum number of concurrent runs allowed for the job. The default is 1. An error is returned when this threshold is reached. The maximum value you can specify is controlled by a service limit.</p>
-- @return ExecutionProperty structure as a key-value pair table
function M.ExecutionProperty(args)
	assert(args, "You must provide an argument table when creating ExecutionProperty")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["MaxConcurrentRuns"] = args["MaxConcurrentRuns"],
	}
	asserts.AssertExecutionProperty(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EncryptionConfiguration = { ["JobBookmarksEncryption"] = true, ["CloudWatchEncryption"] = true, ["S3Encryption"] = true, nil }

function asserts.AssertEncryptionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionConfiguration to be of type 'table'")
	if struct["JobBookmarksEncryption"] then asserts.AssertJobBookmarksEncryption(struct["JobBookmarksEncryption"]) end
	if struct["CloudWatchEncryption"] then asserts.AssertCloudWatchEncryption(struct["CloudWatchEncryption"]) end
	if struct["S3Encryption"] then asserts.AssertS3EncryptionList(struct["S3Encryption"]) end
	for k,_ in pairs(struct) do
		assert(keys.EncryptionConfiguration[k], "EncryptionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionConfiguration
-- <p>Specifies an encryption configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobBookmarksEncryption [JobBookmarksEncryption] <p>The encryption configuration for Job Bookmarks.</p>
-- * CloudWatchEncryption [CloudWatchEncryption] <p>The encryption configuration for CloudWatch.</p>
-- * S3Encryption [S3EncryptionList] <p>The encryption configuration for S3 data.</p>
-- @return EncryptionConfiguration structure as a key-value pair table
function M.EncryptionConfiguration(args)
	assert(args, "You must provide an argument table when creating EncryptionConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobBookmarksEncryption"] = args["JobBookmarksEncryption"],
		["CloudWatchEncryption"] = args["CloudWatchEncryption"],
		["S3Encryption"] = args["S3Encryption"],
	}
	asserts.AssertEncryptionConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetClassifierRequest = { ["Name"] = true, nil }

function asserts.AssertGetClassifierRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetClassifierRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetClassifierRequest[k], "GetClassifierRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetClassifierRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>Name of the classifier to retrieve.</p>
-- Required key: Name
-- @return GetClassifierRequest structure as a key-value pair table
function M.GetClassifierRequest(args)
	assert(args, "You must provide an argument table when creating GetClassifierRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertGetClassifierRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobRunsRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["JobName"] = true, nil }

function asserts.AssertGetJobRunsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobRunsRequest to be of type 'table'")
	assert(struct["JobName"], "Expected key JobName to exist in table")
	if struct["NextToken"] then asserts.AssertGenericString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPageSize(struct["MaxResults"]) end
	if struct["JobName"] then asserts.AssertNameString(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobRunsRequest[k], "GetJobRunsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobRunsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [GenericString] <p>A continuation token, if this is a continuation call.</p>
-- * MaxResults [PageSize] <p>The maximum size of the response.</p>
-- * JobName [NameString] <p>The name of the job definition for which to retrieve all job runs.</p>
-- Required key: JobName
-- @return GetJobRunsRequest structure as a key-value pair table
function M.GetJobRunsRequest(args)
	assert(args, "You must provide an argument table when creating GetJobRunsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["JobName"] = args["JobName"],
	}
	asserts.AssertGetJobRunsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateClassifierResponse = { nil }

function asserts.AssertCreateClassifierResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClassifierResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateClassifierResponse[k], "CreateClassifierResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClassifierResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateClassifierResponse structure as a key-value pair table
function M.CreateClassifierResponse(args)
	assert(args, "You must provide an argument table when creating CreateClassifierResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateClassifierResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTableResponse = { ["Table"] = true, nil }

function asserts.AssertGetTableResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTableResponse to be of type 'table'")
	if struct["Table"] then asserts.AssertTable(struct["Table"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTableResponse[k], "GetTableResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTableResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Table [Table] <p>The <code>Table</code> object that defines the specified table.</p>
-- @return GetTableResponse structure as a key-value pair table
function M.GetTableResponse(args)
	assert(args, "You must provide an argument table when creating GetTableResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Table"] = args["Table"],
	}
	asserts.AssertGetTableResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DataCatalogEncryptionSettings = { ["EncryptionAtRest"] = true, nil }

function asserts.AssertDataCatalogEncryptionSettings(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DataCatalogEncryptionSettings to be of type 'table'")
	if struct["EncryptionAtRest"] then asserts.AssertEncryptionAtRest(struct["EncryptionAtRest"]) end
	for k,_ in pairs(struct) do
		assert(keys.DataCatalogEncryptionSettings[k], "DataCatalogEncryptionSettings contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DataCatalogEncryptionSettings
-- <p>Contains configuration information for maintaining Data Catalog security.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EncryptionAtRest [EncryptionAtRest] <p>Specifies encryption-at-rest configuration for the Data Catalog.</p>
-- @return DataCatalogEncryptionSettings structure as a key-value pair table
function M.DataCatalogEncryptionSettings(args)
	assert(args, "You must provide an argument table when creating DataCatalogEncryptionSettings")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EncryptionAtRest"] = args["EncryptionAtRest"],
	}
	asserts.AssertDataCatalogEncryptionSettings(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PartitionInput = { ["LastAnalyzedTime"] = true, ["Values"] = true, ["StorageDescriptor"] = true, ["Parameters"] = true, ["LastAccessTime"] = true, nil }

function asserts.AssertPartitionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PartitionInput to be of type 'table'")
	if struct["LastAnalyzedTime"] then asserts.AssertTimestamp(struct["LastAnalyzedTime"]) end
	if struct["Values"] then asserts.AssertValueStringList(struct["Values"]) end
	if struct["StorageDescriptor"] then asserts.AssertStorageDescriptor(struct["StorageDescriptor"]) end
	if struct["Parameters"] then asserts.AssertParametersMap(struct["Parameters"]) end
	if struct["LastAccessTime"] then asserts.AssertTimestamp(struct["LastAccessTime"]) end
	for k,_ in pairs(struct) do
		assert(keys.PartitionInput[k], "PartitionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PartitionInput
-- <p>The structure used to create and update a partion.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastAnalyzedTime [Timestamp] <p>The last time at which column statistics were computed for this partition.</p>
-- * Values [ValueStringList] <p>The values of the partition.</p>
-- * StorageDescriptor [StorageDescriptor] <p>Provides information about the physical location where the partition is stored.</p>
-- * Parameters [ParametersMap] <p>These key-value pairs define partition parameters.</p>
-- * LastAccessTime [Timestamp] <p>The last time at which the partition was accessed.</p>
-- @return PartitionInput structure as a key-value pair table
function M.PartitionInput(args)
	assert(args, "You must provide an argument table when creating PartitionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastAnalyzedTime"] = args["LastAnalyzedTime"],
		["Values"] = args["Values"],
		["StorageDescriptor"] = args["StorageDescriptor"],
		["Parameters"] = args["Parameters"],
		["LastAccessTime"] = args["LastAccessTime"],
	}
	asserts.AssertPartitionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPartitionResponse = { ["Partition"] = true, nil }

function asserts.AssertGetPartitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPartitionResponse to be of type 'table'")
	if struct["Partition"] then asserts.AssertPartition(struct["Partition"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPartitionResponse[k], "GetPartitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPartitionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Partition [Partition] <p>The requested information, in the form of a <code>Partition</code> object.</p>
-- @return GetPartitionResponse structure as a key-value pair table
function M.GetPartitionResponse(args)
	assert(args, "You must provide an argument table when creating GetPartitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Partition"] = args["Partition"],
	}
	asserts.AssertGetPartitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartJobRunResponse = { ["JobRunId"] = true, nil }

function asserts.AssertStartJobRunResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartJobRunResponse to be of type 'table'")
	if struct["JobRunId"] then asserts.AssertIdString(struct["JobRunId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartJobRunResponse[k], "StartJobRunResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartJobRunResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobRunId [IdString] <p>The ID assigned to this job run.</p>
-- @return StartJobRunResponse structure as a key-value pair table
function M.StartJobRunResponse(args)
	assert(args, "You must provide an argument table when creating StartJobRunResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobRunId"] = args["JobRunId"],
	}
	asserts.AssertStartJobRunResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUserDefinedFunctionRequest = { ["FunctionInput"] = true, ["FunctionName"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertUpdateUserDefinedFunctionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserDefinedFunctionRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	assert(struct["FunctionInput"], "Expected key FunctionInput to exist in table")
	if struct["FunctionInput"] then asserts.AssertUserDefinedFunctionInput(struct["FunctionInput"]) end
	if struct["FunctionName"] then asserts.AssertNameString(struct["FunctionName"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserDefinedFunctionRequest[k], "UpdateUserDefinedFunctionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserDefinedFunctionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionInput [UserDefinedFunctionInput] <p>A <code>FunctionInput</code> object that re-defines the function in the Data Catalog.</p>
-- * FunctionName [NameString] <p>The name of the function.</p>
-- * DatabaseName [NameString] <p>The name of the catalog database where the function to be updated is located.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog where the function to be updated is located. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DatabaseName
-- Required key: FunctionName
-- Required key: FunctionInput
-- @return UpdateUserDefinedFunctionRequest structure as a key-value pair table
function M.UpdateUserDefinedFunctionRequest(args)
	assert(args, "You must provide an argument table when creating UpdateUserDefinedFunctionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionInput"] = args["FunctionInput"],
		["FunctionName"] = args["FunctionName"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertUpdateUserDefinedFunctionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateCrawlerResponse = { nil }

function asserts.AssertUpdateCrawlerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCrawlerResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateCrawlerResponse[k], "UpdateCrawlerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCrawlerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateCrawlerResponse structure as a key-value pair table
function M.UpdateCrawlerResponse(args)
	assert(args, "You must provide an argument table when creating UpdateCrawlerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateCrawlerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDataflowGraphResponse = { ["DagEdges"] = true, ["DagNodes"] = true, nil }

function asserts.AssertGetDataflowGraphResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDataflowGraphResponse to be of type 'table'")
	if struct["DagEdges"] then asserts.AssertDagEdges(struct["DagEdges"]) end
	if struct["DagNodes"] then asserts.AssertDagNodes(struct["DagNodes"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDataflowGraphResponse[k], "GetDataflowGraphResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDataflowGraphResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DagEdges [DagEdges] <p>A list of the edges in the resulting DAG.</p>
-- * DagNodes [DagNodes] <p>A list of the nodes in the resulting DAG.</p>
-- @return GetDataflowGraphResponse structure as a key-value pair table
function M.GetDataflowGraphResponse(args)
	assert(args, "You must provide an argument table when creating GetDataflowGraphResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DagEdges"] = args["DagEdges"],
		["DagNodes"] = args["DagNodes"],
	}
	asserts.AssertGetDataflowGraphResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ImportCatalogToGlueRequest = { ["CatalogId"] = true, nil }

function asserts.AssertImportCatalogToGlueRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportCatalogToGlueRequest to be of type 'table'")
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.ImportCatalogToGlueRequest[k], "ImportCatalogToGlueRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportCatalogToGlueRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CatalogId [CatalogIdString] <p>The ID of the catalog to import. Currently, this should be the AWS account ID.</p>
-- @return ImportCatalogToGlueRequest structure as a key-value pair table
function M.ImportCatalogToGlueRequest(args)
	assert(args, "You must provide an argument table when creating ImportCatalogToGlueRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertImportCatalogToGlueRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDeleteConnectionRequest = { ["ConnectionNameList"] = true, ["CatalogId"] = true, nil }

function asserts.AssertBatchDeleteConnectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeleteConnectionRequest to be of type 'table'")
	assert(struct["ConnectionNameList"], "Expected key ConnectionNameList to exist in table")
	if struct["ConnectionNameList"] then asserts.AssertDeleteConnectionNameList(struct["ConnectionNameList"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDeleteConnectionRequest[k], "BatchDeleteConnectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeleteConnectionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConnectionNameList [DeleteConnectionNameList] <p>A list of names of the connections to delete.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog in which the connections reside. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: ConnectionNameList
-- @return BatchDeleteConnectionRequest structure as a key-value pair table
function M.BatchDeleteConnectionRequest(args)
	assert(args, "You must provide an argument table when creating BatchDeleteConnectionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConnectionNameList"] = args["ConnectionNameList"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertBatchDeleteConnectionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TableError = { ["TableName"] = true, ["ErrorDetail"] = true, nil }

function asserts.AssertTableError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TableError to be of type 'table'")
	if struct["TableName"] then asserts.AssertNameString(struct["TableName"]) end
	if struct["ErrorDetail"] then asserts.AssertErrorDetail(struct["ErrorDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.TableError[k], "TableError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TableError
-- <p>An error record for table operations.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableName [NameString] <p>Name of the table. For Hive compatibility, this must be entirely lowercase.</p>
-- * ErrorDetail [ErrorDetail] <p>Detail about the error.</p>
-- @return TableError structure as a key-value pair table
function M.TableError(args)
	assert(args, "You must provide an argument table when creating TableError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableName"] = args["TableName"],
		["ErrorDetail"] = args["ErrorDetail"],
	}
	asserts.AssertTableError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ResetJobBookmarkResponse = { ["JobBookmarkEntry"] = true, nil }

function asserts.AssertResetJobBookmarkResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResetJobBookmarkResponse to be of type 'table'")
	if struct["JobBookmarkEntry"] then asserts.AssertJobBookmarkEntry(struct["JobBookmarkEntry"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResetJobBookmarkResponse[k], "ResetJobBookmarkResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResetJobBookmarkResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobBookmarkEntry [JobBookmarkEntry] <p>The reset bookmark entry.</p>
-- @return ResetJobBookmarkResponse structure as a key-value pair table
function M.ResetJobBookmarkResponse(args)
	assert(args, "You must provide an argument table when creating ResetJobBookmarkResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobBookmarkEntry"] = args["JobBookmarkEntry"],
	}
	asserts.AssertResetJobBookmarkResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPlanRequest = { ["Location"] = true, ["Source"] = true, ["Mapping"] = true, ["Language"] = true, ["Sinks"] = true, nil }

function asserts.AssertGetPlanRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPlanRequest to be of type 'table'")
	assert(struct["Mapping"], "Expected key Mapping to exist in table")
	assert(struct["Source"], "Expected key Source to exist in table")
	if struct["Location"] then asserts.AssertLocation(struct["Location"]) end
	if struct["Source"] then asserts.AssertCatalogEntry(struct["Source"]) end
	if struct["Mapping"] then asserts.AssertMappingList(struct["Mapping"]) end
	if struct["Language"] then asserts.AssertLanguage(struct["Language"]) end
	if struct["Sinks"] then asserts.AssertCatalogEntries(struct["Sinks"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPlanRequest[k], "GetPlanRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPlanRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Location [Location] <p>Parameters for the mapping.</p>
-- * Source [CatalogEntry] <p>The source table.</p>
-- * Mapping [MappingList] <p>The list of mappings from a source table to target tables.</p>
-- * Language [Language] <p>The programming language of the code to perform the mapping.</p>
-- * Sinks [CatalogEntries] <p>The target tables.</p>
-- Required key: Mapping
-- Required key: Source
-- @return GetPlanRequest structure as a key-value pair table
function M.GetPlanRequest(args)
	assert(args, "You must provide an argument table when creating GetPlanRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Location"] = args["Location"],
		["Source"] = args["Source"],
		["Mapping"] = args["Mapping"],
		["Language"] = args["Language"],
		["Sinks"] = args["Sinks"],
	}
	asserts.AssertGetPlanRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDatabaseRequest = { ["DatabaseInput"] = true, ["Name"] = true, ["CatalogId"] = true, nil }

function asserts.AssertUpdateDatabaseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDatabaseRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["DatabaseInput"], "Expected key DatabaseInput to exist in table")
	if struct["DatabaseInput"] then asserts.AssertDatabaseInput(struct["DatabaseInput"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDatabaseRequest[k], "UpdateDatabaseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDatabaseRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DatabaseInput [DatabaseInput] <p>A <code>DatabaseInput</code> object specifying the new definition of the metadata database in the catalog.</p>
-- * Name [NameString] <p>The name of the database to update in the catalog. For Hive compatibility, this is folded to lowercase.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog in which the metadata database resides. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: Name
-- Required key: DatabaseInput
-- @return UpdateDatabaseRequest structure as a key-value pair table
function M.UpdateDatabaseRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDatabaseRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DatabaseInput"] = args["DatabaseInput"],
		["Name"] = args["Name"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertUpdateDatabaseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateXMLClassifierRequest = { ["RowTag"] = true, ["Name"] = true, ["Classification"] = true, nil }

function asserts.AssertUpdateXMLClassifierRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateXMLClassifierRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["RowTag"] then asserts.AssertRowTag(struct["RowTag"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["Classification"] then asserts.AssertClassification(struct["Classification"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateXMLClassifierRequest[k], "UpdateXMLClassifierRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateXMLClassifierRequest
-- <p>Specifies an XML classifier to be updated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RowTag [RowTag] <p>The XML tag designating the element that contains each record in an XML document being parsed. Note that this cannot identify a self-closing element (closed by <code>/&gt;</code>). An empty row element that contains only attributes can be parsed as long as it ends with a closing tag (for example, <code>&lt;row item_a="A" item_b="B"&gt;&lt;/row&gt;</code> is okay, but <code>&lt;row item_a="A" item_b="B" /&gt;</code> is not).</p>
-- * Name [NameString] <p>The name of the classifier.</p>
-- * Classification [Classification] <p>An identifier of the data format that the classifier matches.</p>
-- Required key: Name
-- @return UpdateXMLClassifierRequest structure as a key-value pair table
function M.UpdateXMLClassifierRequest(args)
	assert(args, "You must provide an argument table when creating UpdateXMLClassifierRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RowTag"] = args["RowTag"],
		["Name"] = args["Name"],
		["Classification"] = args["Classification"],
	}
	asserts.AssertUpdateXMLClassifierRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchStopJobRunSuccessfulSubmission = { ["JobRunId"] = true, ["JobName"] = true, nil }

function asserts.AssertBatchStopJobRunSuccessfulSubmission(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchStopJobRunSuccessfulSubmission to be of type 'table'")
	if struct["JobRunId"] then asserts.AssertIdString(struct["JobRunId"]) end
	if struct["JobName"] then asserts.AssertNameString(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchStopJobRunSuccessfulSubmission[k], "BatchStopJobRunSuccessfulSubmission contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchStopJobRunSuccessfulSubmission
-- <p>Records a successful request to stop a specified JobRun.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobRunId [IdString] <p>The JobRunId of the job run that was stopped.</p>
-- * JobName [NameString] <p>The name of the job definition used in the job run that was stopped.</p>
-- @return BatchStopJobRunSuccessfulSubmission structure as a key-value pair table
function M.BatchStopJobRunSuccessfulSubmission(args)
	assert(args, "You must provide an argument table when creating BatchStopJobRunSuccessfulSubmission")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobRunId"] = args["JobRunId"],
		["JobName"] = args["JobName"],
	}
	asserts.AssertBatchStopJobRunSuccessfulSubmission(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDevEndpointRequest = { ["EndpointName"] = true, nil }

function asserts.AssertGetDevEndpointRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDevEndpointRequest to be of type 'table'")
	assert(struct["EndpointName"], "Expected key EndpointName to exist in table")
	if struct["EndpointName"] then asserts.AssertGenericString(struct["EndpointName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDevEndpointRequest[k], "GetDevEndpointRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDevEndpointRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EndpointName [GenericString] <p>Name of the DevEndpoint for which to retrieve information.</p>
-- Required key: EndpointName
-- @return GetDevEndpointRequest structure as a key-value pair table
function M.GetDevEndpointRequest(args)
	assert(args, "You must provide an argument table when creating GetDevEndpointRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EndpointName"] = args["EndpointName"],
	}
	asserts.AssertGetDevEndpointRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobCommand = { ["ScriptLocation"] = true, ["Name"] = true, nil }

function asserts.AssertJobCommand(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobCommand to be of type 'table'")
	if struct["ScriptLocation"] then asserts.AssertScriptLocationString(struct["ScriptLocation"]) end
	if struct["Name"] then asserts.AssertGenericString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobCommand[k], "JobCommand contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobCommand
-- <p>Specifies code executed when a job is run.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScriptLocation [ScriptLocationString] <p>Specifies the S3 path to a script that executes a job (required).</p>
-- * Name [GenericString] <p>The name of the job command: this must be <code>glueetl</code>.</p>
-- @return JobCommand structure as a key-value pair table
function M.JobCommand(args)
	assert(args, "You must provide an argument table when creating JobCommand")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScriptLocation"] = args["ScriptLocation"],
		["Name"] = args["Name"],
	}
	asserts.AssertJobCommand(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CodeGenNodeArg = { ["Param"] = true, ["Name"] = true, ["Value"] = true, nil }

function asserts.AssertCodeGenNodeArg(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CodeGenNodeArg to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Value"], "Expected key Value to exist in table")
	if struct["Param"] then asserts.AssertBoolean(struct["Param"]) end
	if struct["Name"] then asserts.AssertCodeGenArgName(struct["Name"]) end
	if struct["Value"] then asserts.AssertCodeGenArgValue(struct["Value"]) end
	for k,_ in pairs(struct) do
		assert(keys.CodeGenNodeArg[k], "CodeGenNodeArg contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CodeGenNodeArg
-- <p>An argument or property of a node.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Param [Boolean] <p>True if the value is used as a parameter.</p>
-- * Name [CodeGenArgName] <p>The name of the argument or property.</p>
-- * Value [CodeGenArgValue] <p>The value of the argument or property.</p>
-- Required key: Name
-- Required key: Value
-- @return CodeGenNodeArg structure as a key-value pair table
function M.CodeGenNodeArg(args)
	assert(args, "You must provide an argument table when creating CodeGenNodeArg")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Param"] = args["Param"],
		["Name"] = args["Name"],
		["Value"] = args["Value"],
	}
	asserts.AssertCodeGenNodeArg(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PartitionValueList = { ["Values"] = true, nil }

function asserts.AssertPartitionValueList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PartitionValueList to be of type 'table'")
	assert(struct["Values"], "Expected key Values to exist in table")
	if struct["Values"] then asserts.AssertValueStringList(struct["Values"]) end
	for k,_ in pairs(struct) do
		assert(keys.PartitionValueList[k], "PartitionValueList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PartitionValueList
-- <p>Contains a list of values defining partitions.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Values [ValueStringList] <p>The list of values.</p>
-- Required key: Values
-- @return PartitionValueList structure as a key-value pair table
function M.PartitionValueList(args)
	assert(args, "You must provide an argument table when creating PartitionValueList")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Values"] = args["Values"],
	}
	asserts.AssertPartitionValueList(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTablesRequest = { ["NextToken"] = true, ["Expression"] = true, ["MaxResults"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertGetTablesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTablesRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["Expression"] then asserts.AssertFilterString(struct["Expression"]) end
	if struct["MaxResults"] then asserts.AssertPageSize(struct["MaxResults"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTablesRequest[k], "GetTablesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTablesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>A continuation token, included if this is a continuation call.</p>
-- * Expression [FilterString] <p>A regular expression pattern. If present, only those tables whose names match the pattern are returned.</p>
-- * MaxResults [PageSize] <p>The maximum number of tables to return in a single response.</p>
-- * DatabaseName [NameString] <p>The database in the catalog whose tables to list. For Hive compatibility, this name is entirely lowercase.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog where the tables reside. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DatabaseName
-- @return GetTablesRequest structure as a key-value pair table
function M.GetTablesRequest(args)
	assert(args, "You must provide an argument table when creating GetTablesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Expression"] = args["Expression"],
		["MaxResults"] = args["MaxResults"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertGetTablesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetConnectionsRequest = { ["Filter"] = true, ["NextToken"] = true, ["MaxResults"] = true, ["CatalogId"] = true, nil }

function asserts.AssertGetConnectionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetConnectionsRequest to be of type 'table'")
	if struct["Filter"] then asserts.AssertGetConnectionsFilter(struct["Filter"]) end
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPageSize(struct["MaxResults"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetConnectionsRequest[k], "GetConnectionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetConnectionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Filter [GetConnectionsFilter] <p>A filter that controls which connections will be returned.</p>
-- * NextToken [Token] <p>A continuation token, if this is a continuation call.</p>
-- * MaxResults [PageSize] <p>The maximum number of connections to return in one response.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog in which the connections reside. If none is supplied, the AWS account ID is used by default.</p>
-- @return GetConnectionsRequest structure as a key-value pair table
function M.GetConnectionsRequest(args)
	assert(args, "You must provide an argument table when creating GetConnectionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Filter"] = args["Filter"],
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertGetConnectionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDataCatalogEncryptionSettingsRequest = { ["CatalogId"] = true, nil }

function asserts.AssertGetDataCatalogEncryptionSettingsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDataCatalogEncryptionSettingsRequest to be of type 'table'")
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDataCatalogEncryptionSettingsRequest[k], "GetDataCatalogEncryptionSettingsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDataCatalogEncryptionSettingsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog for which to retrieve the security configuration. If none is supplied, the AWS account ID is used by default.</p>
-- @return GetDataCatalogEncryptionSettingsRequest structure as a key-value pair table
function M.GetDataCatalogEncryptionSettingsRequest(args)
	assert(args, "You must provide an argument table when creating GetDataCatalogEncryptionSettingsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertGetDataCatalogEncryptionSettingsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateClassifierResponse = { nil }

function asserts.AssertUpdateClassifierResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateClassifierResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateClassifierResponse[k], "UpdateClassifierResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateClassifierResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateClassifierResponse structure as a key-value pair table
function M.UpdateClassifierResponse(args)
	assert(args, "You must provide an argument table when creating UpdateClassifierResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateClassifierResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPlanResponse = { ["ScalaCode"] = true, ["PythonScript"] = true, nil }

function asserts.AssertGetPlanResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPlanResponse to be of type 'table'")
	if struct["ScalaCode"] then asserts.AssertScalaCode(struct["ScalaCode"]) end
	if struct["PythonScript"] then asserts.AssertPythonScript(struct["PythonScript"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPlanResponse[k], "GetPlanResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPlanResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalaCode [ScalaCode] <p>Scala code to perform the mapping.</p>
-- * PythonScript [PythonScript] <p>A Python script to perform the mapping.</p>
-- @return GetPlanResponse structure as a key-value pair table
function M.GetPlanResponse(args)
	assert(args, "You must provide an argument table when creating GetPlanResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalaCode"] = args["ScalaCode"],
		["PythonScript"] = args["PythonScript"],
	}
	asserts.AssertGetPlanResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateUserDefinedFunctionResponse = { nil }

function asserts.AssertUpdateUserDefinedFunctionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateUserDefinedFunctionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateUserDefinedFunctionResponse[k], "UpdateUserDefinedFunctionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateUserDefinedFunctionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateUserDefinedFunctionResponse structure as a key-value pair table
function M.UpdateUserDefinedFunctionResponse(args)
	assert(args, "You must provide an argument table when creating UpdateUserDefinedFunctionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateUserDefinedFunctionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDevEndpointRequest = { ["PublicKeys"] = true, ["RoleArn"] = true, ["ExtraJarsS3Path"] = true, ["SecurityGroupIds"] = true, ["PublicKey"] = true, ["EndpointName"] = true, ["ExtraPythonLibsS3Path"] = true, ["SecurityConfiguration"] = true, ["SubnetId"] = true, ["NumberOfNodes"] = true, nil }

function asserts.AssertCreateDevEndpointRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDevEndpointRequest to be of type 'table'")
	assert(struct["EndpointName"], "Expected key EndpointName to exist in table")
	assert(struct["RoleArn"], "Expected key RoleArn to exist in table")
	if struct["PublicKeys"] then asserts.AssertPublicKeysList(struct["PublicKeys"]) end
	if struct["RoleArn"] then asserts.AssertRoleArn(struct["RoleArn"]) end
	if struct["ExtraJarsS3Path"] then asserts.AssertGenericString(struct["ExtraJarsS3Path"]) end
	if struct["SecurityGroupIds"] then asserts.AssertStringList(struct["SecurityGroupIds"]) end
	if struct["PublicKey"] then asserts.AssertGenericString(struct["PublicKey"]) end
	if struct["EndpointName"] then asserts.AssertGenericString(struct["EndpointName"]) end
	if struct["ExtraPythonLibsS3Path"] then asserts.AssertGenericString(struct["ExtraPythonLibsS3Path"]) end
	if struct["SecurityConfiguration"] then asserts.AssertNameString(struct["SecurityConfiguration"]) end
	if struct["SubnetId"] then asserts.AssertGenericString(struct["SubnetId"]) end
	if struct["NumberOfNodes"] then asserts.AssertIntegerValue(struct["NumberOfNodes"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDevEndpointRequest[k], "CreateDevEndpointRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDevEndpointRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PublicKeys [PublicKeysList] <p>A list of public keys to be used by the DevEndpoints for authentication. The use of this attribute is preferred over a single public key because the public keys allow you to have a different private key per client.</p> <note> <p>If you previously created an endpoint with a public key, you must remove that key to be able to set a list of public keys: call the <code>UpdateDevEndpoint</code> API with the public key content in the <code>deletePublicKeys</code> attribute, and the list of new keys in the <code>addPublicKeys</code> attribute.</p> </note>
-- * RoleArn [RoleArn] <p>The IAM role for the DevEndpoint.</p>
-- * ExtraJarsS3Path [GenericString] <p>Path to one or more Java Jars in an S3 bucket that should be loaded in your DevEndpoint.</p>
-- * SecurityGroupIds [StringList] <p>Security group IDs for the security groups to be used by the new DevEndpoint.</p>
-- * PublicKey [GenericString] <p>The public key to be used by this DevEndpoint for authentication. This attribute is provided for backward compatibility, as the recommended attribute to use is public keys.</p>
-- * EndpointName [GenericString] <p>The name to be assigned to the new DevEndpoint.</p>
-- * ExtraPythonLibsS3Path [GenericString] <p>Path(s) to one or more Python libraries in an S3 bucket that should be loaded in your DevEndpoint. Multiple values must be complete paths separated by a comma.</p> <p>Please note that only pure Python libraries can currently be used on a DevEndpoint. Libraries that rely on C extensions, such as the <a href="http://pandas.pydata.org/">pandas</a> Python data analysis library, are not yet supported.</p>
-- * SecurityConfiguration [NameString] <p>The name of the SecurityConfiguration structure to be used with this DevEndpoint.</p>
-- * SubnetId [GenericString] <p>The subnet ID for the new DevEndpoint to use.</p>
-- * NumberOfNodes [IntegerValue] <p>The number of AWS Glue Data Processing Units (DPUs) to allocate to this DevEndpoint.</p>
-- Required key: EndpointName
-- Required key: RoleArn
-- @return CreateDevEndpointRequest structure as a key-value pair table
function M.CreateDevEndpointRequest(args)
	assert(args, "You must provide an argument table when creating CreateDevEndpointRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PublicKeys"] = args["PublicKeys"],
		["RoleArn"] = args["RoleArn"],
		["ExtraJarsS3Path"] = args["ExtraJarsS3Path"],
		["SecurityGroupIds"] = args["SecurityGroupIds"],
		["PublicKey"] = args["PublicKey"],
		["EndpointName"] = args["EndpointName"],
		["ExtraPythonLibsS3Path"] = args["ExtraPythonLibsS3Path"],
		["SecurityConfiguration"] = args["SecurityConfiguration"],
		["SubnetId"] = args["SubnetId"],
		["NumberOfNodes"] = args["NumberOfNodes"],
	}
	asserts.AssertCreateDevEndpointRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobUpdate = { ["ExecutionProperty"] = true, ["Description"] = true, ["Timeout"] = true, ["NotificationProperty"] = true, ["Connections"] = true, ["SecurityConfiguration"] = true, ["MaxRetries"] = true, ["Command"] = true, ["AllocatedCapacity"] = true, ["Role"] = true, ["LogUri"] = true, ["DefaultArguments"] = true, nil }

function asserts.AssertJobUpdate(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobUpdate to be of type 'table'")
	if struct["ExecutionProperty"] then asserts.AssertExecutionProperty(struct["ExecutionProperty"]) end
	if struct["Description"] then asserts.AssertDescriptionString(struct["Description"]) end
	if struct["Timeout"] then asserts.AssertTimeout(struct["Timeout"]) end
	if struct["NotificationProperty"] then asserts.AssertNotificationProperty(struct["NotificationProperty"]) end
	if struct["Connections"] then asserts.AssertConnectionsList(struct["Connections"]) end
	if struct["SecurityConfiguration"] then asserts.AssertNameString(struct["SecurityConfiguration"]) end
	if struct["MaxRetries"] then asserts.AssertMaxRetries(struct["MaxRetries"]) end
	if struct["Command"] then asserts.AssertJobCommand(struct["Command"]) end
	if struct["AllocatedCapacity"] then asserts.AssertIntegerValue(struct["AllocatedCapacity"]) end
	if struct["Role"] then asserts.AssertRoleString(struct["Role"]) end
	if struct["LogUri"] then asserts.AssertUriString(struct["LogUri"]) end
	if struct["DefaultArguments"] then asserts.AssertGenericMap(struct["DefaultArguments"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobUpdate[k], "JobUpdate contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobUpdate
-- <p>Specifies information used to update an existing job definition. Note that the previous job definition will be completely overwritten by this information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExecutionProperty [ExecutionProperty] <p>An ExecutionProperty specifying the maximum number of concurrent runs allowed for this job.</p>
-- * Description [DescriptionString] <p>Description of the job being defined.</p>
-- * Timeout [Timeout] <p>The job timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>
-- * NotificationProperty [NotificationProperty] <p>Specifies configuration properties of a job notification.</p>
-- * Connections [ConnectionsList] <p>The connections used for this job.</p>
-- * SecurityConfiguration [NameString] <p>The name of the SecurityConfiguration structure to be used with this job.</p>
-- * MaxRetries [MaxRetries] <p>The maximum number of times to retry this job if it fails.</p>
-- * Command [JobCommand] <p>The JobCommand that executes this job (required).</p>
-- * AllocatedCapacity [IntegerValue] <p>The number of AWS Glue data processing units (DPUs) to allocate to this Job. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <a href="https://aws.amazon.com/glue/pricing/">AWS Glue pricing page</a>.</p>
-- * Role [RoleString] <p>The name or ARN of the IAM role associated with this job (required).</p>
-- * LogUri [UriString] <p>This field is reserved for future use.</p>
-- * DefaultArguments [GenericMap] <p>The default arguments for this job.</p> <p>You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.</p> <p>For information about how to specify and consume your own Job arguments, see the <a href="http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html">Calling AWS Glue APIs in Python</a> topic in the developer guide.</p> <p>For information about the key-value pairs that AWS Glue consumes to set up your job, see the <a href="http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html">Special Parameters Used by AWS Glue</a> topic in the developer guide.</p>
-- @return JobUpdate structure as a key-value pair table
function M.JobUpdate(args)
	assert(args, "You must provide an argument table when creating JobUpdate")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExecutionProperty"] = args["ExecutionProperty"],
		["Description"] = args["Description"],
		["Timeout"] = args["Timeout"],
		["NotificationProperty"] = args["NotificationProperty"],
		["Connections"] = args["Connections"],
		["SecurityConfiguration"] = args["SecurityConfiguration"],
		["MaxRetries"] = args["MaxRetries"],
		["Command"] = args["Command"],
		["AllocatedCapacity"] = args["AllocatedCapacity"],
		["Role"] = args["Role"],
		["LogUri"] = args["LogUri"],
		["DefaultArguments"] = args["DefaultArguments"],
	}
	asserts.AssertJobUpdate(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Location = { ["S3"] = true, ["DynamoDB"] = true, ["Jdbc"] = true, nil }

function asserts.AssertLocation(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Location to be of type 'table'")
	if struct["S3"] then asserts.AssertCodeGenNodeArgs(struct["S3"]) end
	if struct["DynamoDB"] then asserts.AssertCodeGenNodeArgs(struct["DynamoDB"]) end
	if struct["Jdbc"] then asserts.AssertCodeGenNodeArgs(struct["Jdbc"]) end
	for k,_ in pairs(struct) do
		assert(keys.Location[k], "Location contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Location
-- <p>The location of resources.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * S3 [CodeGenNodeArgs] <p>An Amazon S3 location.</p>
-- * DynamoDB [CodeGenNodeArgs] <p>A DynamoDB Table location.</p>
-- * Jdbc [CodeGenNodeArgs] <p>A JDBC location.</p>
-- @return Location structure as a key-value pair table
function M.Location(args)
	assert(args, "You must provide an argument table when creating Location")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["S3"] = args["S3"],
		["DynamoDB"] = args["DynamoDB"],
		["Jdbc"] = args["Jdbc"],
	}
	asserts.AssertLocation(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateConnectionResponse = { nil }

function asserts.AssertCreateConnectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateConnectionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.CreateConnectionResponse[k], "CreateConnectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateConnectionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return CreateConnectionResponse structure as a key-value pair table
function M.CreateConnectionResponse(args)
	assert(args, "You must provide an argument table when creating CreateConnectionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertCreateConnectionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPartitionRequest = { ["PartitionValues"] = true, ["TableName"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertGetPartitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPartitionRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["PartitionValues"], "Expected key PartitionValues to exist in table")
	if struct["PartitionValues"] then asserts.AssertValueStringList(struct["PartitionValues"]) end
	if struct["TableName"] then asserts.AssertNameString(struct["TableName"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPartitionRequest[k], "GetPartitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPartitionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PartitionValues [ValueStringList] <p>The values that define the partition.</p>
-- * TableName [NameString] <p>The name of the partition's table.</p>
-- * DatabaseName [NameString] <p>The name of the catalog database where the partition resides.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog where the partition in question resides. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DatabaseName
-- Required key: TableName
-- Required key: PartitionValues
-- @return GetPartitionRequest structure as a key-value pair table
function M.GetPartitionRequest(args)
	assert(args, "You must provide an argument table when creating GetPartitionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PartitionValues"] = args["PartitionValues"],
		["TableName"] = args["TableName"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertGetPartitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertGetJobsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertGenericString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPageSize(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobsRequest[k], "GetJobsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [GenericString] <p>A continuation token, if this is a continuation call.</p>
-- * MaxResults [PageSize] <p>The maximum size of the response.</p>
-- @return GetJobsRequest structure as a key-value pair table
function M.GetJobsRequest(args)
	assert(args, "You must provide an argument table when creating GetJobsRequest")
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
	asserts.AssertGetJobsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDatabaseResponse = { nil }

function asserts.AssertDeleteDatabaseResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDatabaseResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteDatabaseResponse[k], "DeleteDatabaseResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDatabaseResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteDatabaseResponse structure as a key-value pair table
function M.DeleteDatabaseResponse(args)
	assert(args, "You must provide an argument table when creating DeleteDatabaseResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteDatabaseResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartTriggerResponse = { ["Name"] = true, nil }

function asserts.AssertStartTriggerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartTriggerResponse to be of type 'table'")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartTriggerResponse[k], "StartTriggerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartTriggerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>The name of the trigger that was started.</p>
-- @return StartTriggerResponse structure as a key-value pair table
function M.StartTriggerResponse(args)
	assert(args, "You must provide an argument table when creating StartTriggerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertStartTriggerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.S3Target = { ["Path"] = true, ["Exclusions"] = true, nil }

function asserts.AssertS3Target(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected S3Target to be of type 'table'")
	if struct["Path"] then asserts.AssertPath(struct["Path"]) end
	if struct["Exclusions"] then asserts.AssertPathList(struct["Exclusions"]) end
	for k,_ in pairs(struct) do
		assert(keys.S3Target[k], "S3Target contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type S3Target
-- <p>Specifies a data store in Amazon S3.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Path [Path] <p>The path to the Amazon S3 target.</p>
-- * Exclusions [PathList] <p>A list of glob patterns used to exclude from the crawl. For more information, see <a href="http://docs.aws.amazon.com/glue/latest/dg/add-crawler.html">Catalog Tables with a Crawler</a>.</p>
-- @return S3Target structure as a key-value pair table
function M.S3Target(args)
	assert(args, "You must provide an argument table when creating S3Target")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Path"] = args["Path"],
		["Exclusions"] = args["Exclusions"],
	}
	asserts.AssertS3Target(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTableRequest = { ["TableInput"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertCreateTableRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTableRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["TableInput"], "Expected key TableInput to exist in table")
	if struct["TableInput"] then asserts.AssertTableInput(struct["TableInput"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTableRequest[k], "CreateTableRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTableRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableInput [TableInput] <p>The <code>TableInput</code> object that defines the metadata table to create in the catalog.</p>
-- * DatabaseName [NameString] <p>The catalog database in which to create the new table. For Hive compatibility, this name is entirely lowercase.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog in which to create the <code>Table</code>. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DatabaseName
-- Required key: TableInput
-- @return CreateTableRequest structure as a key-value pair table
function M.CreateTableRequest(args)
	assert(args, "You must provide an argument table when creating CreateTableRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableInput"] = args["TableInput"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertCreateTableRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTriggerRequest = { ["Name"] = true, nil }

function asserts.AssertGetTriggerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTriggerRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTriggerRequest[k], "GetTriggerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTriggerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>The name of the trigger to retrieve.</p>
-- Required key: Name
-- @return GetTriggerRequest structure as a key-value pair table
function M.GetTriggerRequest(args)
	assert(args, "You must provide an argument table when creating GetTriggerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertGetTriggerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Schedule = { ["State"] = true, ["ScheduleExpression"] = true, nil }

function asserts.AssertSchedule(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Schedule to be of type 'table'")
	if struct["State"] then asserts.AssertScheduleState(struct["State"]) end
	if struct["ScheduleExpression"] then asserts.AssertCronExpression(struct["ScheduleExpression"]) end
	for k,_ in pairs(struct) do
		assert(keys.Schedule[k], "Schedule contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Schedule
-- <p>A scheduling object using a <code>cron</code> statement to schedule an event.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * State [ScheduleState] <p>The state of the schedule.</p>
-- * ScheduleExpression [CronExpression] <p>A <code>cron</code> expression used to specify the schedule (see <a href="http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run something every day at 12:15 UTC, you would specify: <code>cron(15 12 * * ? *)</code>.</p>
-- @return Schedule structure as a key-value pair table
function M.Schedule(args)
	assert(args, "You must provide an argument table when creating Schedule")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["State"] = args["State"],
		["ScheduleExpression"] = args["ScheduleExpression"],
	}
	asserts.AssertSchedule(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTableRequest = { ["Name"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertDeleteTableRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTableRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTableRequest[k], "DeleteTableRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTableRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>The name of the table to be deleted. For Hive compatibility, this name is entirely lowercase.</p>
-- * DatabaseName [NameString] <p>The name of the catalog database in which the table resides. For Hive compatibility, this name is entirely lowercase.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog where the table resides. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DatabaseName
-- Required key: Name
-- @return DeleteTableRequest structure as a key-value pair table
function M.DeleteTableRequest(args)
	assert(args, "You must provide an argument table when creating DeleteTableRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertDeleteTableRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartTriggerRequest = { ["Name"] = true, nil }

function asserts.AssertStartTriggerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartTriggerRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartTriggerRequest[k], "StartTriggerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartTriggerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>The name of the trigger to start.</p>
-- Required key: Name
-- @return StartTriggerRequest structure as a key-value pair table
function M.StartTriggerRequest(args)
	assert(args, "You must provide an argument table when creating StartTriggerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertStartTriggerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConnectionsList = { ["Connections"] = true, nil }

function asserts.AssertConnectionsList(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConnectionsList to be of type 'table'")
	if struct["Connections"] then asserts.AssertStringList(struct["Connections"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConnectionsList[k], "ConnectionsList contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConnectionsList
-- <p>Specifies the connections used by a job.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Connections [StringList] <p>A list of connections used by the job.</p>
-- @return ConnectionsList structure as a key-value pair table
function M.ConnectionsList(args)
	assert(args, "You must provide an argument table when creating ConnectionsList")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Connections"] = args["Connections"],
	}
	asserts.AssertConnectionsList(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteJobResponse = { ["JobName"] = true, nil }

function asserts.AssertDeleteJobResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteJobResponse to be of type 'table'")
	if struct["JobName"] then asserts.AssertNameString(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteJobResponse[k], "DeleteJobResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteJobResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobName [NameString] <p>The name of the job definition that was deleted.</p>
-- @return DeleteJobResponse structure as a key-value pair table
function M.DeleteJobResponse(args)
	assert(args, "You must provide an argument table when creating DeleteJobResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobName"] = args["JobName"],
	}
	asserts.AssertDeleteJobResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserDefinedFunctionResponse = { nil }

function asserts.AssertDeleteUserDefinedFunctionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserDefinedFunctionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserDefinedFunctionResponse[k], "DeleteUserDefinedFunctionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserDefinedFunctionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteUserDefinedFunctionResponse structure as a key-value pair table
function M.DeleteUserDefinedFunctionResponse(args)
	assert(args, "You must provide an argument table when creating DeleteUserDefinedFunctionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteUserDefinedFunctionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTableVersionResponse = { ["TableVersion"] = true, nil }

function asserts.AssertGetTableVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTableVersionResponse to be of type 'table'")
	if struct["TableVersion"] then asserts.AssertTableVersion(struct["TableVersion"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTableVersionResponse[k], "GetTableVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTableVersionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableVersion [TableVersion] <p>The requested table version.</p>
-- @return GetTableVersionResponse structure as a key-value pair table
function M.GetTableVersionResponse(args)
	assert(args, "You must provide an argument table when creating GetTableVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableVersion"] = args["TableVersion"],
	}
	asserts.AssertGetTableVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateXMLClassifierRequest = { ["RowTag"] = true, ["Name"] = true, ["Classification"] = true, nil }

function asserts.AssertCreateXMLClassifierRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateXMLClassifierRequest to be of type 'table'")
	assert(struct["Classification"], "Expected key Classification to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["RowTag"] then asserts.AssertRowTag(struct["RowTag"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["Classification"] then asserts.AssertClassification(struct["Classification"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateXMLClassifierRequest[k], "CreateXMLClassifierRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateXMLClassifierRequest
-- <p>Specifies an XML classifier for <code>CreateClassifier</code> to create.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * RowTag [RowTag] <p>The XML tag designating the element that contains each record in an XML document being parsed. Note that this cannot identify a self-closing element (closed by <code>/&gt;</code>). An empty row element that contains only attributes can be parsed as long as it ends with a closing tag (for example, <code>&lt;row item_a="A" item_b="B"&gt;&lt;/row&gt;</code> is okay, but <code>&lt;row item_a="A" item_b="B" /&gt;</code> is not).</p>
-- * Name [NameString] <p>The name of the classifier.</p>
-- * Classification [Classification] <p>An identifier of the data format that the classifier matches.</p>
-- Required key: Classification
-- Required key: Name
-- @return CreateXMLClassifierRequest structure as a key-value pair table
function M.CreateXMLClassifierRequest(args)
	assert(args, "You must provide an argument table when creating CreateXMLClassifierRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["RowTag"] = args["RowTag"],
		["Name"] = args["Name"],
		["Classification"] = args["Classification"],
	}
	asserts.AssertCreateXMLClassifierRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPartitionsRequest = { ["Expression"] = true, ["TableName"] = true, ["MaxResults"] = true, ["CatalogId"] = true, ["DatabaseName"] = true, ["NextToken"] = true, ["Segment"] = true, nil }

function asserts.AssertGetPartitionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPartitionsRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	if struct["Expression"] then asserts.AssertPredicateString(struct["Expression"]) end
	if struct["TableName"] then asserts.AssertNameString(struct["TableName"]) end
	if struct["MaxResults"] then asserts.AssertPageSize(struct["MaxResults"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["Segment"] then asserts.AssertSegment(struct["Segment"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPartitionsRequest[k], "GetPartitionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPartitionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Expression [PredicateString] <p>An expression filtering the partitions to be returned.</p> <p>The expression uses SQL syntax similar to the SQL <code>WHERE</code> filter clause. The SQL statement parser <a href="http://jsqlparser.sourceforge.net/home.php">JSQLParser</a> parses the expression. </p> <p> <i>Operators</i>: The following are the operators that you can use in the <code>Expression</code> API call:</p> <dl> <dt>=</dt> <dd> <p>Checks if the values of the two operands are equal or not; if yes, then the condition becomes true.</p> <p>Example: Assume 'variable a' holds 10 and 'variable b' holds 20. </p> <p>(a = b) is not true.</p> </dd> <dt>&lt; &gt;</dt> <dd> <p>Checks if the values of two operands are equal or not; if the values are not equal, then the condition becomes true.</p> <p>Example: (a &lt; &gt; b) is true.</p> </dd> <dt>&gt;</dt> <dd> <p>Checks if the value of the left operand is greater than the value of the right operand; if yes, then the condition becomes true.</p> <p>Example: (a &gt; b) is not true.</p> </dd> <dt>&lt;</dt> <dd> <p>Checks if the value of the left operand is less than the value of the right operand; if yes, then the condition becomes true.</p> <p>Example: (a &lt; b) is true.</p> </dd> <dt>&gt;=</dt> <dd> <p>Checks if the value of the left operand is greater than or equal to the value of the right operand; if yes, then the condition becomes true.</p> <p>Example: (a &gt;= b) is not true.</p> </dd> <dt>&lt;=</dt> <dd> <p>Checks if the value of the left operand is less than or equal to the value of the right operand; if yes, then the condition becomes true.</p> <p>Example: (a &lt;= b) is true.</p> </dd> <dt>AND, OR, IN, BETWEEN, LIKE, NOT, IS NULL</dt> <dd> <p>Logical operators.</p> </dd> </dl> <p> <i>Supported Partition Key Types</i>: The following are the the supported partition keys.</p> <ul> <li> <p> <code>string</code> </p> </li> <li> <p> <code>date</code> </p> </li> <li> <p> <code>timestamp</code> </p> </li> <li> <p> <code>int</code> </p> </li> <li> <p> <code>bigint</code> </p> </li> <li> <p> <code>long</code> </p> </li> <li> <p> <code>tinyint</code> </p> </li> <li> <p> <code>smallint</code> </p> </li> <li> <p> <code>decimal</code> </p> </li> </ul> <p>If an invalid type is encountered, an exception is thrown. </p> <p>The following list shows the valid operators on each type. When you define a crawler, the <code>partitionKey</code> type is created as a <code>STRING</code>, to be compatible with the catalog partitions. </p> <p> <i>Sample API Call</i>: </p>
-- * TableName [NameString] <p>The name of the partitions' table.</p>
-- * MaxResults [PageSize] <p>The maximum number of partitions to return in a single response.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog where the partitions in question reside. If none is supplied, the AWS account ID is used by default.</p>
-- * DatabaseName [NameString] <p>The name of the catalog database where the partitions reside.</p>
-- * NextToken [Token] <p>A continuation token, if this is not the first call to retrieve these partitions.</p>
-- * Segment [Segment] <p>The segment of the table's partitions to scan in this request.</p>
-- Required key: DatabaseName
-- Required key: TableName
-- @return GetPartitionsRequest structure as a key-value pair table
function M.GetPartitionsRequest(args)
	assert(args, "You must provide an argument table when creating GetPartitionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Expression"] = args["Expression"],
		["TableName"] = args["TableName"],
		["MaxResults"] = args["MaxResults"],
		["CatalogId"] = args["CatalogId"],
		["DatabaseName"] = args["DatabaseName"],
		["NextToken"] = args["NextToken"],
		["Segment"] = args["Segment"],
	}
	asserts.AssertGetPartitionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobRequest = { ["JobName"] = true, nil }

function asserts.AssertGetJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobRequest to be of type 'table'")
	assert(struct["JobName"], "Expected key JobName to exist in table")
	if struct["JobName"] then asserts.AssertNameString(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobRequest[k], "GetJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobName [NameString] <p>The name of the job definition to retrieve.</p>
-- Required key: JobName
-- @return GetJobRequest structure as a key-value pair table
function M.GetJobRequest(args)
	assert(args, "You must provide an argument table when creating GetJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobName"] = args["JobName"],
	}
	asserts.AssertGetJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobBookmarkEntry = { ["Attempt"] = true, ["Version"] = true, ["Run"] = true, ["JobBookmark"] = true, ["JobName"] = true, nil }

function asserts.AssertJobBookmarkEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobBookmarkEntry to be of type 'table'")
	if struct["Attempt"] then asserts.AssertIntegerValue(struct["Attempt"]) end
	if struct["Version"] then asserts.AssertIntegerValue(struct["Version"]) end
	if struct["Run"] then asserts.AssertIntegerValue(struct["Run"]) end
	if struct["JobBookmark"] then asserts.AssertJsonValue(struct["JobBookmark"]) end
	if struct["JobName"] then asserts.AssertJobName(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobBookmarkEntry[k], "JobBookmarkEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobBookmarkEntry
-- <p>Defines a point which a job can resume processing.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Attempt [IntegerValue] <p>The attempt ID number.</p>
-- * Version [IntegerValue] <p>Version of the job.</p>
-- * Run [IntegerValue] <p>The run ID number.</p>
-- * JobBookmark [JsonValue] <p>The bookmark itself.</p>
-- * JobName [JobName] <p>Name of the job in question.</p>
-- @return JobBookmarkEntry structure as a key-value pair table
function M.JobBookmarkEntry(args)
	assert(args, "You must provide an argument table when creating JobBookmarkEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Attempt"] = args["Attempt"],
		["Version"] = args["Version"],
		["Run"] = args["Run"],
		["JobBookmark"] = args["JobBookmark"],
		["JobName"] = args["JobName"],
	}
	asserts.AssertJobBookmarkEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopCrawlerResponse = { nil }

function asserts.AssertStopCrawlerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopCrawlerResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StopCrawlerResponse[k], "StopCrawlerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopCrawlerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StopCrawlerResponse structure as a key-value pair table
function M.StopCrawlerResponse(args)
	assert(args, "You must provide an argument table when creating StopCrawlerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStopCrawlerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDeleteTableRequest = { ["TablesToDelete"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertBatchDeleteTableRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeleteTableRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["TablesToDelete"], "Expected key TablesToDelete to exist in table")
	if struct["TablesToDelete"] then asserts.AssertBatchDeleteTableNameList(struct["TablesToDelete"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDeleteTableRequest[k], "BatchDeleteTableRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeleteTableRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TablesToDelete [BatchDeleteTableNameList] <p>A list of the table to delete.</p>
-- * DatabaseName [NameString] <p>The name of the catalog database where the tables to delete reside. For Hive compatibility, this name is entirely lowercase.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog where the table resides. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DatabaseName
-- Required key: TablesToDelete
-- @return BatchDeleteTableRequest structure as a key-value pair table
function M.BatchDeleteTableRequest(args)
	assert(args, "You must provide an argument table when creating BatchDeleteTableRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TablesToDelete"] = args["TablesToDelete"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertBatchDeleteTableRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateJobRequest = { ["JobUpdate"] = true, ["JobName"] = true, nil }

function asserts.AssertUpdateJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateJobRequest to be of type 'table'")
	assert(struct["JobName"], "Expected key JobName to exist in table")
	assert(struct["JobUpdate"], "Expected key JobUpdate to exist in table")
	if struct["JobUpdate"] then asserts.AssertJobUpdate(struct["JobUpdate"]) end
	if struct["JobName"] then asserts.AssertNameString(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateJobRequest[k], "UpdateJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobUpdate [JobUpdate] <p>Specifies the values with which to update the job definition.</p>
-- * JobName [NameString] <p>Name of the job definition to update.</p>
-- Required key: JobName
-- Required key: JobUpdate
-- @return UpdateJobRequest structure as a key-value pair table
function M.UpdateJobRequest(args)
	assert(args, "You must provide an argument table when creating UpdateJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobUpdate"] = args["JobUpdate"],
		["JobName"] = args["JobName"],
	}
	asserts.AssertUpdateJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTriggerResponse = { ["Name"] = true, nil }

function asserts.AssertCreateTriggerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTriggerResponse to be of type 'table'")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTriggerResponse[k], "CreateTriggerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTriggerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>The name of the trigger.</p>
-- @return CreateTriggerResponse structure as a key-value pair table
function M.CreateTriggerResponse(args)
	assert(args, "You must provide an argument table when creating CreateTriggerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertCreateTriggerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopTriggerResponse = { ["Name"] = true, nil }

function asserts.AssertStopTriggerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopTriggerResponse to be of type 'table'")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopTriggerResponse[k], "StopTriggerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopTriggerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>The name of the trigger that was stopped.</p>
-- @return StopTriggerResponse structure as a key-value pair table
function M.StopTriggerResponse(args)
	assert(args, "You must provide an argument table when creating StopTriggerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertStopTriggerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCrawlerRequest = { ["Name"] = true, nil }

function asserts.AssertGetCrawlerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCrawlerRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCrawlerRequest[k], "GetCrawlerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCrawlerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>Name of the crawler to retrieve metadata for.</p>
-- Required key: Name
-- @return GetCrawlerRequest structure as a key-value pair table
function M.GetCrawlerRequest(args)
	assert(args, "You must provide an argument table when creating GetCrawlerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertGetCrawlerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Action = { ["NotificationProperty"] = true, ["SecurityConfiguration"] = true, ["Arguments"] = true, ["Timeout"] = true, ["JobName"] = true, nil }

function asserts.AssertAction(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Action to be of type 'table'")
	if struct["NotificationProperty"] then asserts.AssertNotificationProperty(struct["NotificationProperty"]) end
	if struct["SecurityConfiguration"] then asserts.AssertNameString(struct["SecurityConfiguration"]) end
	if struct["Arguments"] then asserts.AssertGenericMap(struct["Arguments"]) end
	if struct["Timeout"] then asserts.AssertTimeout(struct["Timeout"]) end
	if struct["JobName"] then asserts.AssertNameString(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Action[k], "Action contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Action
-- <p>Defines an action to be initiated by a trigger.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NotificationProperty [NotificationProperty] <p>Specifies configuration properties of a job run notification.</p>
-- * SecurityConfiguration [NameString] <p>The name of the SecurityConfiguration structure to be used with this action.</p>
-- * Arguments [GenericMap] <p>Arguments to be passed to the job run.</p> <p>You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.</p> <p>For information about how to specify and consume your own Job arguments, see the <a href="http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html">Calling AWS Glue APIs in Python</a> topic in the developer guide.</p> <p>For information about the key-value pairs that AWS Glue consumes to set up your job, see the <a href="http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html">Special Parameters Used by AWS Glue</a> topic in the developer guide.</p>
-- * Timeout [Timeout] <p>The JobRun timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours). This overrides the timeout value set in the parent job.</p>
-- * JobName [NameString] <p>The name of a job to be executed.</p>
-- @return Action structure as a key-value pair table
function M.Action(args)
	assert(args, "You must provide an argument table when creating Action")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NotificationProperty"] = args["NotificationProperty"],
		["SecurityConfiguration"] = args["SecurityConfiguration"],
		["Arguments"] = args["Arguments"],
		["Timeout"] = args["Timeout"],
		["JobName"] = args["JobName"],
	}
	asserts.AssertAction(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCatalogImportStatusRequest = { ["CatalogId"] = true, nil }

function asserts.AssertGetCatalogImportStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCatalogImportStatusRequest to be of type 'table'")
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCatalogImportStatusRequest[k], "GetCatalogImportStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCatalogImportStatusRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CatalogId [CatalogIdString] <p>The ID of the catalog to migrate. Currently, this should be the AWS account ID.</p>
-- @return GetCatalogImportStatusRequest structure as a key-value pair table
function M.GetCatalogImportStatusRequest(args)
	assert(args, "You must provide an argument table when creating GetCatalogImportStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertGetCatalogImportStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetUserDefinedFunctionsResponse = { ["UserDefinedFunctions"] = true, ["NextToken"] = true, nil }

function asserts.AssertGetUserDefinedFunctionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserDefinedFunctionsResponse to be of type 'table'")
	if struct["UserDefinedFunctions"] then asserts.AssertUserDefinedFunctionList(struct["UserDefinedFunctions"]) end
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUserDefinedFunctionsResponse[k], "GetUserDefinedFunctionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserDefinedFunctionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserDefinedFunctions [UserDefinedFunctionList] <p>A list of requested function definitions.</p>
-- * NextToken [Token] <p>A continuation token, if the list of functions returned does not include the last requested function.</p>
-- @return GetUserDefinedFunctionsResponse structure as a key-value pair table
function M.GetUserDefinedFunctionsResponse(args)
	assert(args, "You must provide an argument table when creating GetUserDefinedFunctionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserDefinedFunctions"] = args["UserDefinedFunctions"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertGetUserDefinedFunctionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CatalogImportStatus = { ["ImportCompleted"] = true, ["ImportTime"] = true, ["ImportedBy"] = true, nil }

function asserts.AssertCatalogImportStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CatalogImportStatus to be of type 'table'")
	if struct["ImportCompleted"] then asserts.AssertBoolean(struct["ImportCompleted"]) end
	if struct["ImportTime"] then asserts.AssertTimestamp(struct["ImportTime"]) end
	if struct["ImportedBy"] then asserts.AssertNameString(struct["ImportedBy"]) end
	for k,_ in pairs(struct) do
		assert(keys.CatalogImportStatus[k], "CatalogImportStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CatalogImportStatus
-- <p>A structure containing migration status information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ImportCompleted [Boolean] <p>True if the migration has completed, or False otherwise.</p>
-- * ImportTime [Timestamp] <p>The time that the migration was started.</p>
-- * ImportedBy [NameString] <p>The name of the person who initiated the migration.</p>
-- @return CatalogImportStatus structure as a key-value pair table
function M.CatalogImportStatus(args)
	assert(args, "You must provide an argument table when creating CatalogImportStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ImportCompleted"] = args["ImportCompleted"],
		["ImportTime"] = args["ImportTime"],
		["ImportedBy"] = args["ImportedBy"],
	}
	asserts.AssertCatalogImportStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetMappingResponse = { ["Mapping"] = true, nil }

function asserts.AssertGetMappingResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetMappingResponse to be of type 'table'")
	assert(struct["Mapping"], "Expected key Mapping to exist in table")
	if struct["Mapping"] then asserts.AssertMappingList(struct["Mapping"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetMappingResponse[k], "GetMappingResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetMappingResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Mapping [MappingList] <p>A list of mappings to the specified targets.</p>
-- Required key: Mapping
-- @return GetMappingResponse structure as a key-value pair table
function M.GetMappingResponse(args)
	assert(args, "You must provide an argument table when creating GetMappingResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Mapping"] = args["Mapping"],
	}
	asserts.AssertGetMappingResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateGrokClassifierRequest = { ["GrokPattern"] = true, ["Name"] = true, ["Classification"] = true, ["CustomPatterns"] = true, nil }

function asserts.AssertCreateGrokClassifierRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGrokClassifierRequest to be of type 'table'")
	assert(struct["Classification"], "Expected key Classification to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["GrokPattern"], "Expected key GrokPattern to exist in table")
	if struct["GrokPattern"] then asserts.AssertGrokPattern(struct["GrokPattern"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["Classification"] then asserts.AssertClassification(struct["Classification"]) end
	if struct["CustomPatterns"] then asserts.AssertCustomPatterns(struct["CustomPatterns"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGrokClassifierRequest[k], "CreateGrokClassifierRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGrokClassifierRequest
-- <p>Specifies a <code>grok</code> classifier for <code>CreateClassifier</code> to create.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GrokPattern [GrokPattern] <p>The grok pattern used by this classifier.</p>
-- * Name [NameString] <p>The name of the new classifier.</p>
-- * Classification [Classification] <p>An identifier of the data format that the classifier matches, such as Twitter, JSON, Omniture logs, Amazon CloudWatch Logs, and so on.</p>
-- * CustomPatterns [CustomPatterns] <p>Optional custom grok patterns used by this classifier.</p>
-- Required key: Classification
-- Required key: Name
-- Required key: GrokPattern
-- @return CreateGrokClassifierRequest structure as a key-value pair table
function M.CreateGrokClassifierRequest(args)
	assert(args, "You must provide an argument table when creating CreateGrokClassifierRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GrokPattern"] = args["GrokPattern"],
		["Name"] = args["Name"],
		["Classification"] = args["Classification"],
		["CustomPatterns"] = args["CustomPatterns"],
	}
	asserts.AssertCreateGrokClassifierRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetUserDefinedFunctionResponse = { ["UserDefinedFunction"] = true, nil }

function asserts.AssertGetUserDefinedFunctionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetUserDefinedFunctionResponse to be of type 'table'")
	if struct["UserDefinedFunction"] then asserts.AssertUserDefinedFunction(struct["UserDefinedFunction"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetUserDefinedFunctionResponse[k], "GetUserDefinedFunctionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetUserDefinedFunctionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UserDefinedFunction [UserDefinedFunction] <p>The requested function definition.</p>
-- @return GetUserDefinedFunctionResponse structure as a key-value pair table
function M.GetUserDefinedFunctionResponse(args)
	assert(args, "You must provide an argument table when creating GetUserDefinedFunctionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UserDefinedFunction"] = args["UserDefinedFunction"],
	}
	asserts.AssertGetUserDefinedFunctionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDatabaseRequest = { ["Name"] = true, ["CatalogId"] = true, nil }

function asserts.AssertGetDatabaseRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDatabaseRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDatabaseRequest[k], "GetDatabaseRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDatabaseRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>The name of the database to retrieve. For Hive compatibility, this should be all lowercase.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog in which the database resides. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: Name
-- @return GetDatabaseRequest structure as a key-value pair table
function M.GetDatabaseRequest(args)
	assert(args, "You must provide an argument table when creating GetDatabaseRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertGetDatabaseRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetConnectionRequest = { ["Name"] = true, ["CatalogId"] = true, nil }

function asserts.AssertGetConnectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetConnectionRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetConnectionRequest[k], "GetConnectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetConnectionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>The name of the connection definition to retrieve.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog in which the connection resides. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: Name
-- @return GetConnectionRequest structure as a key-value pair table
function M.GetConnectionRequest(args)
	assert(args, "You must provide an argument table when creating GetConnectionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertGetConnectionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeletePartitionRequest = { ["PartitionValues"] = true, ["TableName"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertDeletePartitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeletePartitionRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["PartitionValues"], "Expected key PartitionValues to exist in table")
	if struct["PartitionValues"] then asserts.AssertValueStringList(struct["PartitionValues"]) end
	if struct["TableName"] then asserts.AssertNameString(struct["TableName"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeletePartitionRequest[k], "DeletePartitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeletePartitionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PartitionValues [ValueStringList] <p>The values that define the partition.</p>
-- * TableName [NameString] <p>The name of the table where the partition to be deleted is located.</p>
-- * DatabaseName [NameString] <p>The name of the catalog database in which the table in question resides.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog where the partition to be deleted resides. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DatabaseName
-- Required key: TableName
-- Required key: PartitionValues
-- @return DeletePartitionRequest structure as a key-value pair table
function M.DeletePartitionRequest(args)
	assert(args, "You must provide an argument table when creating DeletePartitionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PartitionValues"] = args["PartitionValues"],
		["TableName"] = args["TableName"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertDeletePartitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CatalogEntry = { ["TableName"] = true, ["DatabaseName"] = true, nil }

function asserts.AssertCatalogEntry(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CatalogEntry to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	if struct["TableName"] then asserts.AssertNameString(struct["TableName"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	for k,_ in pairs(struct) do
		assert(keys.CatalogEntry[k], "CatalogEntry contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CatalogEntry
-- <p>Specifies a table definition in the Data Catalog.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableName [NameString] <p>The name of the table in question.</p>
-- * DatabaseName [NameString] <p>The database in which the table metadata resides.</p>
-- Required key: DatabaseName
-- Required key: TableName
-- @return CatalogEntry structure as a key-value pair table
function M.CatalogEntry(args)
	assert(args, "You must provide an argument table when creating CatalogEntry")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableName"] = args["TableName"],
		["DatabaseName"] = args["DatabaseName"],
	}
	asserts.AssertCatalogEntry(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CrawlerMetrics = { ["LastRuntimeSeconds"] = true, ["StillEstimating"] = true, ["TablesDeleted"] = true, ["TablesCreated"] = true, ["TimeLeftSeconds"] = true, ["TablesUpdated"] = true, ["CrawlerName"] = true, ["MedianRuntimeSeconds"] = true, nil }

function asserts.AssertCrawlerMetrics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CrawlerMetrics to be of type 'table'")
	if struct["LastRuntimeSeconds"] then asserts.AssertNonNegativeDouble(struct["LastRuntimeSeconds"]) end
	if struct["StillEstimating"] then asserts.AssertBoolean(struct["StillEstimating"]) end
	if struct["TablesDeleted"] then asserts.AssertNonNegativeInteger(struct["TablesDeleted"]) end
	if struct["TablesCreated"] then asserts.AssertNonNegativeInteger(struct["TablesCreated"]) end
	if struct["TimeLeftSeconds"] then asserts.AssertNonNegativeDouble(struct["TimeLeftSeconds"]) end
	if struct["TablesUpdated"] then asserts.AssertNonNegativeInteger(struct["TablesUpdated"]) end
	if struct["CrawlerName"] then asserts.AssertNameString(struct["CrawlerName"]) end
	if struct["MedianRuntimeSeconds"] then asserts.AssertNonNegativeDouble(struct["MedianRuntimeSeconds"]) end
	for k,_ in pairs(struct) do
		assert(keys.CrawlerMetrics[k], "CrawlerMetrics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CrawlerMetrics
-- <p>Metrics for a specified crawler.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastRuntimeSeconds [NonNegativeDouble] <p>The duration of the crawler's most recent run, in seconds.</p>
-- * StillEstimating [Boolean] <p>True if the crawler is still estimating how long it will take to complete this run.</p>
-- * TablesDeleted [NonNegativeInteger] <p>The number of tables deleted by this crawler.</p>
-- * TablesCreated [NonNegativeInteger] <p>The number of tables created by this crawler.</p>
-- * TimeLeftSeconds [NonNegativeDouble] <p>The estimated time left to complete a running crawl.</p>
-- * TablesUpdated [NonNegativeInteger] <p>The number of tables updated by this crawler.</p>
-- * CrawlerName [NameString] <p>The name of the crawler.</p>
-- * MedianRuntimeSeconds [NonNegativeDouble] <p>The median duration of this crawler's runs, in seconds.</p>
-- @return CrawlerMetrics structure as a key-value pair table
function M.CrawlerMetrics(args)
	assert(args, "You must provide an argument table when creating CrawlerMetrics")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastRuntimeSeconds"] = args["LastRuntimeSeconds"],
		["StillEstimating"] = args["StillEstimating"],
		["TablesDeleted"] = args["TablesDeleted"],
		["TablesCreated"] = args["TablesCreated"],
		["TimeLeftSeconds"] = args["TimeLeftSeconds"],
		["TablesUpdated"] = args["TablesUpdated"],
		["CrawlerName"] = args["CrawlerName"],
		["MedianRuntimeSeconds"] = args["MedianRuntimeSeconds"],
	}
	asserts.AssertCrawlerMetrics(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Order = { ["Column"] = true, ["SortOrder"] = true, nil }

function asserts.AssertOrder(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Order to be of type 'table'")
	assert(struct["Column"], "Expected key Column to exist in table")
	assert(struct["SortOrder"], "Expected key SortOrder to exist in table")
	if struct["Column"] then asserts.AssertNameString(struct["Column"]) end
	if struct["SortOrder"] then asserts.AssertIntegerFlag(struct["SortOrder"]) end
	for k,_ in pairs(struct) do
		assert(keys.Order[k], "Order contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Order
-- <p>Specifies the sort order of a sorted column.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Column [NameString] <p>The name of the column.</p>
-- * SortOrder [IntegerFlag] <p>Indicates that the column is sorted in ascending order (<code>== 1</code>), or in descending order (<code>==0</code>).</p>
-- Required key: Column
-- Required key: SortOrder
-- @return Order structure as a key-value pair table
function M.Order(args)
	assert(args, "You must provide an argument table when creating Order")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Column"] = args["Column"],
		["SortOrder"] = args["SortOrder"],
	}
	asserts.AssertOrder(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTableVersionsResponse = { ["NextToken"] = true, ["TableVersions"] = true, nil }

function asserts.AssertGetTableVersionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTableVersionsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["TableVersions"] then asserts.AssertGetTableVersionsList(struct["TableVersions"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTableVersionsResponse[k], "GetTableVersionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTableVersionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>A continuation token, if the list of available versions does not include the last one.</p>
-- * TableVersions [GetTableVersionsList] <p>A list of strings identifying available versions of the specified table.</p>
-- @return GetTableVersionsResponse structure as a key-value pair table
function M.GetTableVersionsResponse(args)
	assert(args, "You must provide an argument table when creating GetTableVersionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["TableVersions"] = args["TableVersions"],
	}
	asserts.AssertGetTableVersionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobsResponse = { ["NextToken"] = true, ["Jobs"] = true, nil }

function asserts.AssertGetJobsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertGenericString(struct["NextToken"]) end
	if struct["Jobs"] then asserts.AssertJobList(struct["Jobs"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobsResponse[k], "GetJobsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [GenericString] <p>A continuation token, if not all job definitions have yet been returned.</p>
-- * Jobs [JobList] <p>A list of job definitions.</p>
-- @return GetJobsResponse structure as a key-value pair table
function M.GetJobsResponse(args)
	assert(args, "You must provide an argument table when creating GetJobsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Jobs"] = args["Jobs"],
	}
	asserts.AssertGetJobsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SkewedInfo = { ["SkewedColumnNames"] = true, ["SkewedColumnValueLocationMaps"] = true, ["SkewedColumnValues"] = true, nil }

function asserts.AssertSkewedInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SkewedInfo to be of type 'table'")
	if struct["SkewedColumnNames"] then asserts.AssertNameStringList(struct["SkewedColumnNames"]) end
	if struct["SkewedColumnValueLocationMaps"] then asserts.AssertLocationMap(struct["SkewedColumnValueLocationMaps"]) end
	if struct["SkewedColumnValues"] then asserts.AssertColumnValueStringList(struct["SkewedColumnValues"]) end
	for k,_ in pairs(struct) do
		assert(keys.SkewedInfo[k], "SkewedInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SkewedInfo
-- <p>Specifies skewed values in a table. Skewed are ones that occur with very high frequency.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SkewedColumnNames [NameStringList] <p>A list of names of columns that contain skewed values.</p>
-- * SkewedColumnValueLocationMaps [LocationMap] <p>A mapping of skewed values to the columns that contain them.</p>
-- * SkewedColumnValues [ColumnValueStringList] <p>A list of values that appear so frequently as to be considered skewed.</p>
-- @return SkewedInfo structure as a key-value pair table
function M.SkewedInfo(args)
	assert(args, "You must provide an argument table when creating SkewedInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SkewedColumnNames"] = args["SkewedColumnNames"],
		["SkewedColumnValueLocationMaps"] = args["SkewedColumnValueLocationMaps"],
		["SkewedColumnValues"] = args["SkewedColumnValues"],
	}
	asserts.AssertSkewedInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Table = { ["StorageDescriptor"] = true, ["UpdateTime"] = true, ["PartitionKeys"] = true, ["Name"] = true, ["Parameters"] = true, ["ViewOriginalText"] = true, ["LastAccessTime"] = true, ["CreatedBy"] = true, ["LastAnalyzedTime"] = true, ["DatabaseName"] = true, ["Owner"] = true, ["ViewExpandedText"] = true, ["TableType"] = true, ["Retention"] = true, ["CreateTime"] = true, ["Description"] = true, nil }

function asserts.AssertTable(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Table to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["StorageDescriptor"] then asserts.AssertStorageDescriptor(struct["StorageDescriptor"]) end
	if struct["UpdateTime"] then asserts.AssertTimestamp(struct["UpdateTime"]) end
	if struct["PartitionKeys"] then asserts.AssertColumnList(struct["PartitionKeys"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["Parameters"] then asserts.AssertParametersMap(struct["Parameters"]) end
	if struct["ViewOriginalText"] then asserts.AssertViewTextString(struct["ViewOriginalText"]) end
	if struct["LastAccessTime"] then asserts.AssertTimestamp(struct["LastAccessTime"]) end
	if struct["CreatedBy"] then asserts.AssertNameString(struct["CreatedBy"]) end
	if struct["LastAnalyzedTime"] then asserts.AssertTimestamp(struct["LastAnalyzedTime"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["Owner"] then asserts.AssertNameString(struct["Owner"]) end
	if struct["ViewExpandedText"] then asserts.AssertViewTextString(struct["ViewExpandedText"]) end
	if struct["TableType"] then asserts.AssertTableTypeString(struct["TableType"]) end
	if struct["Retention"] then asserts.AssertNonNegativeInteger(struct["Retention"]) end
	if struct["CreateTime"] then asserts.AssertTimestamp(struct["CreateTime"]) end
	if struct["Description"] then asserts.AssertDescriptionString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.Table[k], "Table contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Table
-- <p>Represents a collection of related data organized in columns and rows.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StorageDescriptor [StorageDescriptor] <p>A storage descriptor containing information about the physical storage of this table.</p>
-- * UpdateTime [Timestamp] <p>Last time the table was updated.</p>
-- * PartitionKeys [ColumnList] <p>A list of columns by which the table is partitioned. Only primitive types are supported as partition keys.</p>
-- * Name [NameString] <p>Name of the table. For Hive compatibility, this must be entirely lowercase.</p>
-- * Parameters [ParametersMap] <p>These key-value pairs define properties associated with the table.</p>
-- * ViewOriginalText [ViewTextString] <p>If the table is a view, the original text of the view; otherwise <code>null</code>.</p>
-- * LastAccessTime [Timestamp] <p>Last time the table was accessed. This is usually taken from HDFS, and may not be reliable.</p>
-- * CreatedBy [NameString] <p>Person or entity who created the table.</p>
-- * LastAnalyzedTime [Timestamp] <p>Last time column statistics were computed for this table.</p>
-- * DatabaseName [NameString] <p>Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase.</p>
-- * Owner [NameString] <p>Owner of the table.</p>
-- * ViewExpandedText [ViewTextString] <p>If the table is a view, the expanded text of the view; otherwise <code>null</code>.</p>
-- * TableType [TableTypeString] <p>The type of this table (<code>EXTERNAL_TABLE</code>, <code>VIRTUAL_VIEW</code>, etc.).</p>
-- * Retention [NonNegativeInteger] <p>Retention time for this table.</p>
-- * CreateTime [Timestamp] <p>Time when the table definition was created in the Data Catalog.</p>
-- * Description [DescriptionString] <p>Description of the table.</p>
-- Required key: Name
-- @return Table structure as a key-value pair table
function M.Table(args)
	assert(args, "You must provide an argument table when creating Table")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StorageDescriptor"] = args["StorageDescriptor"],
		["UpdateTime"] = args["UpdateTime"],
		["PartitionKeys"] = args["PartitionKeys"],
		["Name"] = args["Name"],
		["Parameters"] = args["Parameters"],
		["ViewOriginalText"] = args["ViewOriginalText"],
		["LastAccessTime"] = args["LastAccessTime"],
		["CreatedBy"] = args["CreatedBy"],
		["LastAnalyzedTime"] = args["LastAnalyzedTime"],
		["DatabaseName"] = args["DatabaseName"],
		["Owner"] = args["Owner"],
		["ViewExpandedText"] = args["ViewExpandedText"],
		["TableType"] = args["TableType"],
		["Retention"] = args["Retention"],
		["CreateTime"] = args["CreateTime"],
		["Description"] = args["Description"],
	}
	asserts.AssertTable(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateCrawlerRequest = { ["Configuration"] = true, ["Name"] = true, ["Schedule"] = true, ["Classifiers"] = true, ["CrawlerSecurityConfiguration"] = true, ["Role"] = true, ["DatabaseName"] = true, ["SchemaChangePolicy"] = true, ["TablePrefix"] = true, ["Targets"] = true, ["Description"] = true, nil }

function asserts.AssertUpdateCrawlerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCrawlerRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Configuration"] then asserts.AssertCrawlerConfiguration(struct["Configuration"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["Schedule"] then asserts.AssertCronExpression(struct["Schedule"]) end
	if struct["Classifiers"] then asserts.AssertClassifierNameList(struct["Classifiers"]) end
	if struct["CrawlerSecurityConfiguration"] then asserts.AssertCrawlerSecurityConfiguration(struct["CrawlerSecurityConfiguration"]) end
	if struct["Role"] then asserts.AssertRole(struct["Role"]) end
	if struct["DatabaseName"] then asserts.AssertDatabaseName(struct["DatabaseName"]) end
	if struct["SchemaChangePolicy"] then asserts.AssertSchemaChangePolicy(struct["SchemaChangePolicy"]) end
	if struct["TablePrefix"] then asserts.AssertTablePrefix(struct["TablePrefix"]) end
	if struct["Targets"] then asserts.AssertCrawlerTargets(struct["Targets"]) end
	if struct["Description"] then asserts.AssertDescriptionStringRemovable(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateCrawlerRequest[k], "UpdateCrawlerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCrawlerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Configuration [CrawlerConfiguration] <p>Crawler configuration information. This versioned JSON string allows users to specify aspects of a crawler's behavior. For more information, see <a href="http://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html">Configuring a Crawler</a>.</p>
-- * Name [NameString] <p>Name of the new crawler.</p>
-- * Schedule [CronExpression] <p>A <code>cron</code> expression used to specify the schedule (see <a href="http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run something every day at 12:15 UTC, you would specify: <code>cron(15 12 * * ? *)</code>.</p>
-- * Classifiers [ClassifierNameList] <p>A list of custom classifiers that the user has registered. By default, all built-in classifiers are included in a crawl, but these custom classifiers always override the default classifiers for a given classification.</p>
-- * CrawlerSecurityConfiguration [CrawlerSecurityConfiguration] <p>The name of the SecurityConfiguration structure to be used by this Crawler.</p>
-- * Role [Role] <p>The IAM role (or ARN of an IAM role) used by the new crawler to access customer resources.</p>
-- * DatabaseName [DatabaseName] <p>The AWS Glue database where results are stored, such as: <code>arn:aws:daylight:us-east-1::database/sometable/*</code>.</p>
-- * SchemaChangePolicy [SchemaChangePolicy] <p>Policy for the crawler's update and deletion behavior.</p>
-- * TablePrefix [TablePrefix] <p>The table prefix used for catalog tables that are created.</p>
-- * Targets [CrawlerTargets] <p>A list of targets to crawl.</p>
-- * Description [DescriptionStringRemovable] <p>A description of the new crawler.</p>
-- Required key: Name
-- @return UpdateCrawlerRequest structure as a key-value pair table
function M.UpdateCrawlerRequest(args)
	assert(args, "You must provide an argument table when creating UpdateCrawlerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Configuration"] = args["Configuration"],
		["Name"] = args["Name"],
		["Schedule"] = args["Schedule"],
		["Classifiers"] = args["Classifiers"],
		["CrawlerSecurityConfiguration"] = args["CrawlerSecurityConfiguration"],
		["Role"] = args["Role"],
		["DatabaseName"] = args["DatabaseName"],
		["SchemaChangePolicy"] = args["SchemaChangePolicy"],
		["TablePrefix"] = args["TablePrefix"],
		["Targets"] = args["Targets"],
		["Description"] = args["Description"],
	}
	asserts.AssertUpdateCrawlerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TableVersionError = { ["VersionId"] = true, ["TableName"] = true, ["ErrorDetail"] = true, nil }

function asserts.AssertTableVersionError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TableVersionError to be of type 'table'")
	if struct["VersionId"] then asserts.AssertVersionString(struct["VersionId"]) end
	if struct["TableName"] then asserts.AssertNameString(struct["TableName"]) end
	if struct["ErrorDetail"] then asserts.AssertErrorDetail(struct["ErrorDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.TableVersionError[k], "TableVersionError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TableVersionError
-- <p>An error record for table-version operations.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [VersionString] <p>The ID value of the version in question. A <code>VersionID</code> is a string representation of an integer. Each version is incremented by 1.</p>
-- * TableName [NameString] <p>The name of the table in question.</p>
-- * ErrorDetail [ErrorDetail] <p>Detail about the error.</p>
-- @return TableVersionError structure as a key-value pair table
function M.TableVersionError(args)
	assert(args, "You must provide an argument table when creating TableVersionError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["TableName"] = args["TableName"],
		["ErrorDetail"] = args["ErrorDetail"],
	}
	asserts.AssertTableVersionError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PartitionError = { ["PartitionValues"] = true, ["ErrorDetail"] = true, nil }

function asserts.AssertPartitionError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PartitionError to be of type 'table'")
	if struct["PartitionValues"] then asserts.AssertValueStringList(struct["PartitionValues"]) end
	if struct["ErrorDetail"] then asserts.AssertErrorDetail(struct["ErrorDetail"]) end
	for k,_ in pairs(struct) do
		assert(keys.PartitionError[k], "PartitionError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PartitionError
-- <p>Contains information about a partition error.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PartitionValues [ValueStringList] <p>The values that define the partition.</p>
-- * ErrorDetail [ErrorDetail] <p>Details about the partition error.</p>
-- @return PartitionError structure as a key-value pair table
function M.PartitionError(args)
	assert(args, "You must provide an argument table when creating PartitionError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PartitionValues"] = args["PartitionValues"],
		["ErrorDetail"] = args["ErrorDetail"],
	}
	asserts.AssertPartitionError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDeleteTableVersionResponse = { ["Errors"] = true, nil }

function asserts.AssertBatchDeleteTableVersionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeleteTableVersionResponse to be of type 'table'")
	if struct["Errors"] then asserts.AssertTableVersionErrors(struct["Errors"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDeleteTableVersionResponse[k], "BatchDeleteTableVersionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeleteTableVersionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Errors [TableVersionErrors] <p>A list of errors encountered while trying to delete the specified table versions.</p>
-- @return BatchDeleteTableVersionResponse structure as a key-value pair table
function M.BatchDeleteTableVersionResponse(args)
	assert(args, "You must provide an argument table when creating BatchDeleteTableVersionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Errors"] = args["Errors"],
	}
	asserts.AssertBatchDeleteTableVersionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteCrawlerRequest = { ["Name"] = true, nil }

function asserts.AssertDeleteCrawlerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteCrawlerRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteCrawlerRequest[k], "DeleteCrawlerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteCrawlerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>Name of the crawler to remove.</p>
-- Required key: Name
-- @return DeleteCrawlerRequest structure as a key-value pair table
function M.DeleteCrawlerRequest(args)
	assert(args, "You must provide an argument table when creating DeleteCrawlerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteCrawlerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JsonClassifier = { ["JsonPath"] = true, ["Version"] = true, ["CreationTime"] = true, ["Name"] = true, ["LastUpdated"] = true, nil }

function asserts.AssertJsonClassifier(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JsonClassifier to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["JsonPath"], "Expected key JsonPath to exist in table")
	if struct["JsonPath"] then asserts.AssertJsonPath(struct["JsonPath"]) end
	if struct["Version"] then asserts.AssertVersionId(struct["Version"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["LastUpdated"] then asserts.AssertTimestamp(struct["LastUpdated"]) end
	for k,_ in pairs(struct) do
		assert(keys.JsonClassifier[k], "JsonClassifier contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JsonClassifier
-- <p>A classifier for <code>JSON</code> content.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JsonPath [JsonPath] <p>A <code>JsonPath</code> string defining the JSON data for the classifier to classify. AWS Glue supports a subset of JsonPath, as described in <a href="https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json">Writing JsonPath Custom Classifiers</a>.</p>
-- * Version [VersionId] <p>The version of this classifier.</p>
-- * CreationTime [Timestamp] <p>The time this classifier was registered.</p>
-- * Name [NameString] <p>The name of the classifier.</p>
-- * LastUpdated [Timestamp] <p>The time this classifier was last updated.</p>
-- Required key: Name
-- Required key: JsonPath
-- @return JsonClassifier structure as a key-value pair table
function M.JsonClassifier(args)
	assert(args, "You must provide an argument table when creating JsonClassifier")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JsonPath"] = args["JsonPath"],
		["Version"] = args["Version"],
		["CreationTime"] = args["CreationTime"],
		["Name"] = args["Name"],
		["LastUpdated"] = args["LastUpdated"],
	}
	asserts.AssertJsonClassifier(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateScriptResponse = { ["ScalaCode"] = true, ["PythonScript"] = true, nil }

function asserts.AssertCreateScriptResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateScriptResponse to be of type 'table'")
	if struct["ScalaCode"] then asserts.AssertScalaCode(struct["ScalaCode"]) end
	if struct["PythonScript"] then asserts.AssertPythonScript(struct["PythonScript"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateScriptResponse[k], "CreateScriptResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateScriptResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ScalaCode [ScalaCode] <p>The Scala code generated from the DAG.</p>
-- * PythonScript [PythonScript] <p>The Python script generated from the DAG.</p>
-- @return CreateScriptResponse structure as a key-value pair table
function M.CreateScriptResponse(args)
	assert(args, "You must provide an argument table when creating CreateScriptResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ScalaCode"] = args["ScalaCode"],
		["PythonScript"] = args["PythonScript"],
	}
	asserts.AssertCreateScriptResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTableVersionRequest = { ["VersionId"] = true, ["TableName"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertGetTableVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTableVersionRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	if struct["VersionId"] then asserts.AssertVersionString(struct["VersionId"]) end
	if struct["TableName"] then asserts.AssertNameString(struct["TableName"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTableVersionRequest[k], "GetTableVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTableVersionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionId [VersionString] <p>The ID value of the table version to be retrieved. A <code>VersionID</code> is a string representation of an integer. Each version is incremented by 1. </p>
-- * TableName [NameString] <p>The name of the table. For Hive compatibility, this name is entirely lowercase.</p>
-- * DatabaseName [NameString] <p>The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog where the tables reside. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DatabaseName
-- Required key: TableName
-- @return GetTableVersionRequest structure as a key-value pair table
function M.GetTableVersionRequest(args)
	assert(args, "You must provide an argument table when creating GetTableVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VersionId"] = args["VersionId"],
		["TableName"] = args["TableName"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertGetTableVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutResourcePolicyRequest = { ["PolicyExistsCondition"] = true, ["PolicyHashCondition"] = true, ["PolicyInJson"] = true, nil }

function asserts.AssertPutResourcePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutResourcePolicyRequest to be of type 'table'")
	assert(struct["PolicyInJson"], "Expected key PolicyInJson to exist in table")
	if struct["PolicyExistsCondition"] then asserts.AssertExistCondition(struct["PolicyExistsCondition"]) end
	if struct["PolicyHashCondition"] then asserts.AssertHashString(struct["PolicyHashCondition"]) end
	if struct["PolicyInJson"] then asserts.AssertPolicyJsonString(struct["PolicyInJson"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutResourcePolicyRequest[k], "PutResourcePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutResourcePolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyExistsCondition [ExistCondition] <p>A value of <code>MUST_EXIST</code> is used to update a policy. A value of <code>NOT_EXIST</code> is used to create a new policy. If a value of <code>NONE</code> or a null value is used, the call will not depend on the existence of a policy.</p>
-- * PolicyHashCondition [HashString] <p>This is the hash value returned when the previous policy was set using PutResourcePolicy. Its purpose is to prevent concurrent modifications of a policy. Do not use this parameter if no previous policy has been set.</p>
-- * PolicyInJson [PolicyJsonString] <p>Contains the policy document to set, in JSON format.</p>
-- Required key: PolicyInJson
-- @return PutResourcePolicyRequest structure as a key-value pair table
function M.PutResourcePolicyRequest(args)
	assert(args, "You must provide an argument table when creating PutResourcePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyExistsCondition"] = args["PolicyExistsCondition"],
		["PolicyHashCondition"] = args["PolicyHashCondition"],
		["PolicyInJson"] = args["PolicyInJson"],
	}
	asserts.AssertPutResourcePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SerDeInfo = { ["SerializationLibrary"] = true, ["Name"] = true, ["Parameters"] = true, nil }

function asserts.AssertSerDeInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SerDeInfo to be of type 'table'")
	if struct["SerializationLibrary"] then asserts.AssertNameString(struct["SerializationLibrary"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["Parameters"] then asserts.AssertParametersMap(struct["Parameters"]) end
	for k,_ in pairs(struct) do
		assert(keys.SerDeInfo[k], "SerDeInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SerDeInfo
-- <p>Information about a serialization/deserialization program (SerDe) which serves as an extractor and loader.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SerializationLibrary [NameString] <p>Usually the class that implements the SerDe. An example is: <code>org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe</code>.</p>
-- * Name [NameString] <p>Name of the SerDe.</p>
-- * Parameters [ParametersMap] <p>These key-value pairs define initialization parameters for the SerDe.</p>
-- @return SerDeInfo structure as a key-value pair table
function M.SerDeInfo(args)
	assert(args, "You must provide an argument table when creating SerDeInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SerializationLibrary"] = args["SerializationLibrary"],
		["Name"] = args["Name"],
		["Parameters"] = args["Parameters"],
	}
	asserts.AssertSerDeInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.JobRun = { ["LastModifiedOn"] = true, ["StartedOn"] = true, ["PredecessorRuns"] = true, ["LogGroupName"] = true, ["Attempt"] = true, ["AllocatedCapacity"] = true, ["SecurityConfiguration"] = true, ["JobRunState"] = true, ["ErrorMessage"] = true, ["NotificationProperty"] = true, ["JobName"] = true, ["PreviousRunId"] = true, ["ExecutionTime"] = true, ["Timeout"] = true, ["Arguments"] = true, ["TriggerName"] = true, ["CompletedOn"] = true, ["Id"] = true, nil }

function asserts.AssertJobRun(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected JobRun to be of type 'table'")
	if struct["LastModifiedOn"] then asserts.AssertTimestampValue(struct["LastModifiedOn"]) end
	if struct["StartedOn"] then asserts.AssertTimestampValue(struct["StartedOn"]) end
	if struct["PredecessorRuns"] then asserts.AssertPredecessorList(struct["PredecessorRuns"]) end
	if struct["LogGroupName"] then asserts.AssertGenericString(struct["LogGroupName"]) end
	if struct["Attempt"] then asserts.AssertAttemptCount(struct["Attempt"]) end
	if struct["AllocatedCapacity"] then asserts.AssertIntegerValue(struct["AllocatedCapacity"]) end
	if struct["SecurityConfiguration"] then asserts.AssertNameString(struct["SecurityConfiguration"]) end
	if struct["JobRunState"] then asserts.AssertJobRunState(struct["JobRunState"]) end
	if struct["ErrorMessage"] then asserts.AssertErrorString(struct["ErrorMessage"]) end
	if struct["NotificationProperty"] then asserts.AssertNotificationProperty(struct["NotificationProperty"]) end
	if struct["JobName"] then asserts.AssertNameString(struct["JobName"]) end
	if struct["PreviousRunId"] then asserts.AssertIdString(struct["PreviousRunId"]) end
	if struct["ExecutionTime"] then asserts.AssertExecutionTime(struct["ExecutionTime"]) end
	if struct["Timeout"] then asserts.AssertTimeout(struct["Timeout"]) end
	if struct["Arguments"] then asserts.AssertGenericMap(struct["Arguments"]) end
	if struct["TriggerName"] then asserts.AssertNameString(struct["TriggerName"]) end
	if struct["CompletedOn"] then asserts.AssertTimestampValue(struct["CompletedOn"]) end
	if struct["Id"] then asserts.AssertIdString(struct["Id"]) end
	for k,_ in pairs(struct) do
		assert(keys.JobRun[k], "JobRun contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type JobRun
-- <p>Contains information about a job run.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * LastModifiedOn [TimestampValue] <p>The last time this job run was modified.</p>
-- * StartedOn [TimestampValue] <p>The date and time at which this job run was started.</p>
-- * PredecessorRuns [PredecessorList] <p>A list of predecessors to this job run.</p>
-- * LogGroupName [GenericString] <p>The name of the log group for secure logging, that can be server-side encrypted in CloudWatch using KMS. This name can be <code>/aws-glue/jobs/</code>, in which case the default encryption is <code>NONE</code>. If you add a role name and SecurityConfiguration name (in other words, <code>/aws-glue/jobs-yourRoleName-yourSecurityConfigurationName/</code>), then that security configuration will be used to encrypt the log group.</p>
-- * Attempt [AttemptCount] <p>The number of the attempt to run this job.</p>
-- * AllocatedCapacity [IntegerValue] <p>The number of AWS Glue data processing units (DPUs) allocated to this JobRun. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <a href="https://aws.amazon.com/glue/pricing/">AWS Glue pricing page</a>.</p>
-- * SecurityConfiguration [NameString] <p>The name of the SecurityConfiguration structure to be used with this job run.</p>
-- * JobRunState [JobRunState] <p>The current state of the job run.</p>
-- * ErrorMessage [ErrorString] <p>An error message associated with this job run.</p>
-- * NotificationProperty [NotificationProperty] <p>Specifies configuration properties of a job run notification.</p>
-- * JobName [NameString] <p>The name of the job definition being used in this run.</p>
-- * PreviousRunId [IdString] <p>The ID of the previous run of this job. For example, the JobRunId specified in the StartJobRun action.</p>
-- * ExecutionTime [ExecutionTime] <p>The amount of time (in seconds) that the job run consumed resources.</p>
-- * Timeout [Timeout] <p>The JobRun timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours). This overrides the timeout value set in the parent job.</p>
-- * Arguments [GenericMap] <p>The job arguments associated with this run. These override equivalent default arguments set for the job.</p> <p>You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.</p> <p>For information about how to specify and consume your own job arguments, see the <a href="http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html">Calling AWS Glue APIs in Python</a> topic in the developer guide.</p> <p>For information about the key-value pairs that AWS Glue consumes to set up your job, see the <a href="http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html">Special Parameters Used by AWS Glue</a> topic in the developer guide.</p>
-- * TriggerName [NameString] <p>The name of the trigger that started this job run.</p>
-- * CompletedOn [TimestampValue] <p>The date and time this job run completed.</p>
-- * Id [IdString] <p>The ID of this job run.</p>
-- @return JobRun structure as a key-value pair table
function M.JobRun(args)
	assert(args, "You must provide an argument table when creating JobRun")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["LastModifiedOn"] = args["LastModifiedOn"],
		["StartedOn"] = args["StartedOn"],
		["PredecessorRuns"] = args["PredecessorRuns"],
		["LogGroupName"] = args["LogGroupName"],
		["Attempt"] = args["Attempt"],
		["AllocatedCapacity"] = args["AllocatedCapacity"],
		["SecurityConfiguration"] = args["SecurityConfiguration"],
		["JobRunState"] = args["JobRunState"],
		["ErrorMessage"] = args["ErrorMessage"],
		["NotificationProperty"] = args["NotificationProperty"],
		["JobName"] = args["JobName"],
		["PreviousRunId"] = args["PreviousRunId"],
		["ExecutionTime"] = args["ExecutionTime"],
		["Timeout"] = args["Timeout"],
		["Arguments"] = args["Arguments"],
		["TriggerName"] = args["TriggerName"],
		["CompletedOn"] = args["CompletedOn"],
		["Id"] = args["Id"],
	}
	asserts.AssertJobRun(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDevEndpointRequest = { ["UpdateEtlLibraries"] = true, ["DeletePublicKeys"] = true, ["PublicKey"] = true, ["EndpointName"] = true, ["AddPublicKeys"] = true, ["CustomLibraries"] = true, nil }

function asserts.AssertUpdateDevEndpointRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDevEndpointRequest to be of type 'table'")
	assert(struct["EndpointName"], "Expected key EndpointName to exist in table")
	if struct["UpdateEtlLibraries"] then asserts.AssertBooleanValue(struct["UpdateEtlLibraries"]) end
	if struct["DeletePublicKeys"] then asserts.AssertPublicKeysList(struct["DeletePublicKeys"]) end
	if struct["PublicKey"] then asserts.AssertGenericString(struct["PublicKey"]) end
	if struct["EndpointName"] then asserts.AssertGenericString(struct["EndpointName"]) end
	if struct["AddPublicKeys"] then asserts.AssertPublicKeysList(struct["AddPublicKeys"]) end
	if struct["CustomLibraries"] then asserts.AssertDevEndpointCustomLibraries(struct["CustomLibraries"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDevEndpointRequest[k], "UpdateDevEndpointRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDevEndpointRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UpdateEtlLibraries [BooleanValue] <p>True if the list of custom libraries to be loaded in the development endpoint needs to be updated, or False otherwise.</p>
-- * DeletePublicKeys [PublicKeysList] <p>The list of public keys to be deleted from the DevEndpoint.</p>
-- * PublicKey [GenericString] <p>The public key for the DevEndpoint to use.</p>
-- * EndpointName [GenericString] <p>The name of the DevEndpoint to be updated.</p>
-- * AddPublicKeys [PublicKeysList] <p>The list of public keys for the DevEndpoint to use.</p>
-- * CustomLibraries [DevEndpointCustomLibraries] <p>Custom Python or Java libraries to be loaded in the DevEndpoint.</p>
-- Required key: EndpointName
-- @return UpdateDevEndpointRequest structure as a key-value pair table
function M.UpdateDevEndpointRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDevEndpointRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UpdateEtlLibraries"] = args["UpdateEtlLibraries"],
		["DeletePublicKeys"] = args["DeletePublicKeys"],
		["PublicKey"] = args["PublicKey"],
		["EndpointName"] = args["EndpointName"],
		["AddPublicKeys"] = args["AddPublicKeys"],
		["CustomLibraries"] = args["CustomLibraries"],
	}
	asserts.AssertUpdateDevEndpointRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SecurityConfiguration = { ["CreatedTimeStamp"] = true, ["EncryptionConfiguration"] = true, ["Name"] = true, nil }

function asserts.AssertSecurityConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SecurityConfiguration to be of type 'table'")
	if struct["CreatedTimeStamp"] then asserts.AssertTimestampValue(struct["CreatedTimeStamp"]) end
	if struct["EncryptionConfiguration"] then asserts.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.SecurityConfiguration[k], "SecurityConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SecurityConfiguration
-- <p>Specifies a security configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreatedTimeStamp [TimestampValue] <p>The time at which this security configuration was created.</p>
-- * EncryptionConfiguration [EncryptionConfiguration] <p>The encryption configuration associated with this security configuration.</p>
-- * Name [NameString] <p>The name of the security configuration.</p>
-- @return SecurityConfiguration structure as a key-value pair table
function M.SecurityConfiguration(args)
	assert(args, "You must provide an argument table when creating SecurityConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreatedTimeStamp"] = args["CreatedTimeStamp"],
		["EncryptionConfiguration"] = args["EncryptionConfiguration"],
		["Name"] = args["Name"],
	}
	asserts.AssertSecurityConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDatabasesRequest = { ["NextToken"] = true, ["MaxResults"] = true, ["CatalogId"] = true, nil }

function asserts.AssertGetDatabasesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDatabasesRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPageSize(struct["MaxResults"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDatabasesRequest[k], "GetDatabasesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDatabasesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>A continuation token, if this is a continuation call.</p>
-- * MaxResults [PageSize] <p>The maximum number of databases to return in one response.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog from which to retrieve <code>Databases</code>. If none is supplied, the AWS account ID is used by default.</p>
-- @return GetDatabasesRequest structure as a key-value pair table
function M.GetDatabasesRequest(args)
	assert(args, "You must provide an argument table when creating GetDatabasesRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["MaxResults"] = args["MaxResults"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertGetDatabasesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateClassifierRequest = { ["GrokClassifier"] = true, ["XMLClassifier"] = true, ["JsonClassifier"] = true, nil }

function asserts.AssertCreateClassifierRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateClassifierRequest to be of type 'table'")
	if struct["GrokClassifier"] then asserts.AssertCreateGrokClassifierRequest(struct["GrokClassifier"]) end
	if struct["XMLClassifier"] then asserts.AssertCreateXMLClassifierRequest(struct["XMLClassifier"]) end
	if struct["JsonClassifier"] then asserts.AssertCreateJsonClassifierRequest(struct["JsonClassifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateClassifierRequest[k], "CreateClassifierRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateClassifierRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GrokClassifier [CreateGrokClassifierRequest] <p>A <code>GrokClassifier</code> object specifying the classifier to create.</p>
-- * XMLClassifier [CreateXMLClassifierRequest] <p>An <code>XMLClassifier</code> object specifying the classifier to create.</p>
-- * JsonClassifier [CreateJsonClassifierRequest] <p>A <code>JsonClassifier</code> object specifying the classifier to create.</p>
-- @return CreateClassifierRequest structure as a key-value pair table
function M.CreateClassifierRequest(args)
	assert(args, "You must provide an argument table when creating CreateClassifierRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GrokClassifier"] = args["GrokClassifier"],
		["XMLClassifier"] = args["XMLClassifier"],
		["JsonClassifier"] = args["JsonClassifier"],
	}
	asserts.AssertCreateClassifierRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CloudWatchEncryption = { ["KmsKeyArn"] = true, ["CloudWatchEncryptionMode"] = true, nil }

function asserts.AssertCloudWatchEncryption(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CloudWatchEncryption to be of type 'table'")
	if struct["KmsKeyArn"] then asserts.AssertKmsKeyArn(struct["KmsKeyArn"]) end
	if struct["CloudWatchEncryptionMode"] then asserts.AssertCloudWatchEncryptionMode(struct["CloudWatchEncryptionMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.CloudWatchEncryption[k], "CloudWatchEncryption contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CloudWatchEncryption
-- <p>Specifies how CloudWatch data should be encrypted.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * KmsKeyArn [KmsKeyArn] <p>The AWS ARN of the KMS key to be used to encrypt the data.</p>
-- * CloudWatchEncryptionMode [CloudWatchEncryptionMode] <p>The encryption mode to use for CloudWatch data.</p>
-- @return CloudWatchEncryption structure as a key-value pair table
function M.CloudWatchEncryption(args)
	assert(args, "You must provide an argument table when creating CloudWatchEncryption")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["KmsKeyArn"] = args["KmsKeyArn"],
		["CloudWatchEncryptionMode"] = args["CloudWatchEncryptionMode"],
	}
	asserts.AssertCloudWatchEncryption(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartCrawlerScheduleResponse = { nil }

function asserts.AssertStartCrawlerScheduleResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartCrawlerScheduleResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StartCrawlerScheduleResponse[k], "StartCrawlerScheduleResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartCrawlerScheduleResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StartCrawlerScheduleResponse structure as a key-value pair table
function M.StartCrawlerScheduleResponse(args)
	assert(args, "You must provide an argument table when creating StartCrawlerScheduleResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStartCrawlerScheduleResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateSecurityConfigurationResponse = { ["CreatedTimestamp"] = true, ["Name"] = true, nil }

function asserts.AssertCreateSecurityConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateSecurityConfigurationResponse to be of type 'table'")
	if struct["CreatedTimestamp"] then asserts.AssertTimestampValue(struct["CreatedTimestamp"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateSecurityConfigurationResponse[k], "CreateSecurityConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateSecurityConfigurationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CreatedTimestamp [TimestampValue] <p>The time at which the new security configuration was created.</p>
-- * Name [NameString] <p>The name assigned to the new security configuration.</p>
-- @return CreateSecurityConfigurationResponse structure as a key-value pair table
function M.CreateSecurityConfigurationResponse(args)
	assert(args, "You must provide an argument table when creating CreateSecurityConfigurationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CreatedTimestamp"] = args["CreatedTimestamp"],
		["Name"] = args["Name"],
	}
	asserts.AssertCreateSecurityConfigurationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTriggersResponse = { ["NextToken"] = true, ["Triggers"] = true, nil }

function asserts.AssertGetTriggersResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTriggersResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertGenericString(struct["NextToken"]) end
	if struct["Triggers"] then asserts.AssertTriggerList(struct["Triggers"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTriggersResponse[k], "GetTriggersResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTriggersResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [GenericString] <p>A continuation token, if not all the requested triggers have yet been returned.</p>
-- * Triggers [TriggerList] <p>A list of triggers for the specified job.</p>
-- @return GetTriggersResponse structure as a key-value pair table
function M.GetTriggersResponse(args)
	assert(args, "You must provide an argument table when creating GetTriggersResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Triggers"] = args["Triggers"],
	}
	asserts.AssertGetTriggersResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.SchemaChangePolicy = { ["DeleteBehavior"] = true, ["UpdateBehavior"] = true, nil }

function asserts.AssertSchemaChangePolicy(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected SchemaChangePolicy to be of type 'table'")
	if struct["DeleteBehavior"] then asserts.AssertDeleteBehavior(struct["DeleteBehavior"]) end
	if struct["UpdateBehavior"] then asserts.AssertUpdateBehavior(struct["UpdateBehavior"]) end
	for k,_ in pairs(struct) do
		assert(keys.SchemaChangePolicy[k], "SchemaChangePolicy contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type SchemaChangePolicy
-- <p>Crawler policy for update and deletion behavior.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DeleteBehavior [DeleteBehavior] <p>The deletion behavior when the crawler finds a deleted object.</p>
-- * UpdateBehavior [UpdateBehavior] <p>The update behavior when the crawler finds a changed schema.</p>
-- @return SchemaChangePolicy structure as a key-value pair table
function M.SchemaChangePolicy(args)
	assert(args, "You must provide an argument table when creating SchemaChangePolicy")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DeleteBehavior"] = args["DeleteBehavior"],
		["UpdateBehavior"] = args["UpdateBehavior"],
	}
	asserts.AssertSchemaChangePolicy(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.TableVersion = { ["Table"] = true, ["VersionId"] = true, nil }

function asserts.AssertTableVersion(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TableVersion to be of type 'table'")
	if struct["Table"] then asserts.AssertTable(struct["Table"]) end
	if struct["VersionId"] then asserts.AssertVersionString(struct["VersionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.TableVersion[k], "TableVersion contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TableVersion
-- <p>Specifies a version of a table.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Table [Table] <p>The table in question</p>
-- * VersionId [VersionString] <p>The ID value that identifies this table version. A <code>VersionId</code> is a string representation of an integer. Each version is incremented by 1.</p>
-- @return TableVersion structure as a key-value pair table
function M.TableVersion(args)
	assert(args, "You must provide an argument table when creating TableVersion")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Table"] = args["Table"],
		["VersionId"] = args["VersionId"],
	}
	asserts.AssertTableVersion(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePartitionRequest = { ["PartitionInput"] = true, ["PartitionValueList"] = true, ["TableName"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertUpdatePartitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePartitionRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["PartitionValueList"], "Expected key PartitionValueList to exist in table")
	assert(struct["PartitionInput"], "Expected key PartitionInput to exist in table")
	if struct["PartitionInput"] then asserts.AssertPartitionInput(struct["PartitionInput"]) end
	if struct["PartitionValueList"] then asserts.AssertBoundedPartitionValueList(struct["PartitionValueList"]) end
	if struct["TableName"] then asserts.AssertNameString(struct["TableName"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdatePartitionRequest[k], "UpdatePartitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePartitionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PartitionInput [PartitionInput] <p>The new partition object to which to update the partition.</p>
-- * PartitionValueList [BoundedPartitionValueList] <p>A list of the values defining the partition.</p>
-- * TableName [NameString] <p>The name of the table where the partition to be updated is located.</p>
-- * DatabaseName [NameString] <p>The name of the catalog database in which the table in question resides.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog where the partition to be updated resides. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DatabaseName
-- Required key: TableName
-- Required key: PartitionValueList
-- Required key: PartitionInput
-- @return UpdatePartitionRequest structure as a key-value pair table
function M.UpdatePartitionRequest(args)
	assert(args, "You must provide an argument table when creating UpdatePartitionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PartitionInput"] = args["PartitionInput"],
		["PartitionValueList"] = args["PartitionValueList"],
		["TableName"] = args["TableName"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertUpdatePartitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Partition = { ["StorageDescriptor"] = true, ["Parameters"] = true, ["CreationTime"] = true, ["TableName"] = true, ["LastAccessTime"] = true, ["LastAnalyzedTime"] = true, ["Values"] = true, ["DatabaseName"] = true, nil }

function asserts.AssertPartition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Partition to be of type 'table'")
	if struct["StorageDescriptor"] then asserts.AssertStorageDescriptor(struct["StorageDescriptor"]) end
	if struct["Parameters"] then asserts.AssertParametersMap(struct["Parameters"]) end
	if struct["CreationTime"] then asserts.AssertTimestamp(struct["CreationTime"]) end
	if struct["TableName"] then asserts.AssertNameString(struct["TableName"]) end
	if struct["LastAccessTime"] then asserts.AssertTimestamp(struct["LastAccessTime"]) end
	if struct["LastAnalyzedTime"] then asserts.AssertTimestamp(struct["LastAnalyzedTime"]) end
	if struct["Values"] then asserts.AssertValueStringList(struct["Values"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Partition[k], "Partition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Partition
-- <p>Represents a slice of table data.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * StorageDescriptor [StorageDescriptor] <p>Provides information about the physical location where the partition is stored.</p>
-- * Parameters [ParametersMap] <p>These key-value pairs define partition parameters.</p>
-- * CreationTime [Timestamp] <p>The time at which the partition was created.</p>
-- * TableName [NameString] <p>The name of the table in question.</p>
-- * LastAccessTime [Timestamp] <p>The last time at which the partition was accessed.</p>
-- * LastAnalyzedTime [Timestamp] <p>The last time at which column statistics were computed for this partition.</p>
-- * Values [ValueStringList] <p>The values of the partition.</p>
-- * DatabaseName [NameString] <p>The name of the catalog database where the table in question is located.</p>
-- @return Partition structure as a key-value pair table
function M.Partition(args)
	assert(args, "You must provide an argument table when creating Partition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["StorageDescriptor"] = args["StorageDescriptor"],
		["Parameters"] = args["Parameters"],
		["CreationTime"] = args["CreationTime"],
		["TableName"] = args["TableName"],
		["LastAccessTime"] = args["LastAccessTime"],
		["LastAnalyzedTime"] = args["LastAnalyzedTime"],
		["Values"] = args["Values"],
		["DatabaseName"] = args["DatabaseName"],
	}
	asserts.AssertPartition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTableVersionsRequest = { ["NextToken"] = true, ["TableName"] = true, ["MaxResults"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertGetTableVersionsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTableVersionsRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["TableName"] then asserts.AssertNameString(struct["TableName"]) end
	if struct["MaxResults"] then asserts.AssertPageSize(struct["MaxResults"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTableVersionsRequest[k], "GetTableVersionsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTableVersionsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>A continuation token, if this is not the first call.</p>
-- * TableName [NameString] <p>The name of the table. For Hive compatibility, this name is entirely lowercase.</p>
-- * MaxResults [PageSize] <p>The maximum number of table versions to return in one response.</p>
-- * DatabaseName [NameString] <p>The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog where the tables reside. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DatabaseName
-- Required key: TableName
-- @return GetTableVersionsRequest structure as a key-value pair table
function M.GetTableVersionsRequest(args)
	assert(args, "You must provide an argument table when creating GetTableVersionsRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["TableName"] = args["TableName"],
		["MaxResults"] = args["MaxResults"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertGetTableVersionsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateJsonClassifierRequest = { ["JsonPath"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateJsonClassifierRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateJsonClassifierRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["JsonPath"] then asserts.AssertJsonPath(struct["JsonPath"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateJsonClassifierRequest[k], "UpdateJsonClassifierRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateJsonClassifierRequest
-- <p>Specifies a JSON classifier to be updated.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JsonPath [JsonPath] <p>A <code>JsonPath</code> string defining the JSON data for the classifier to classify. AWS Glue supports a subset of JsonPath, as described in <a href="https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json">Writing JsonPath Custom Classifiers</a>.</p>
-- * Name [NameString] <p>The name of the classifier.</p>
-- Required key: Name
-- @return UpdateJsonClassifierRequest structure as a key-value pair table
function M.UpdateJsonClassifierRequest(args)
	assert(args, "You must provide an argument table when creating UpdateJsonClassifierRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JsonPath"] = args["JsonPath"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateJsonClassifierRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetJobRunsResponse = { ["JobRuns"] = true, ["NextToken"] = true, nil }

function asserts.AssertGetJobRunsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetJobRunsResponse to be of type 'table'")
	if struct["JobRuns"] then asserts.AssertJobRunList(struct["JobRuns"]) end
	if struct["NextToken"] then asserts.AssertGenericString(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetJobRunsResponse[k], "GetJobRunsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetJobRunsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobRuns [JobRunList] <p>A list of job-run metatdata objects.</p>
-- * NextToken [GenericString] <p>A continuation token, if not all reequested job runs have been returned.</p>
-- @return GetJobRunsResponse structure as a key-value pair table
function M.GetJobRunsResponse(args)
	assert(args, "You must provide an argument table when creating GetJobRunsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobRuns"] = args["JobRuns"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertGetJobRunsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDeleteTableVersionRequest = { ["VersionIds"] = true, ["TableName"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertBatchDeleteTableVersionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeleteTableVersionRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["VersionIds"], "Expected key VersionIds to exist in table")
	if struct["VersionIds"] then asserts.AssertBatchDeleteTableVersionList(struct["VersionIds"]) end
	if struct["TableName"] then asserts.AssertNameString(struct["TableName"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDeleteTableVersionRequest[k], "BatchDeleteTableVersionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeleteTableVersionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VersionIds [BatchDeleteTableVersionList] <p>A list of the IDs of versions to be deleted. A <code>VersionId</code> is a string representation of an integer. Each version is incremented by 1.</p>
-- * TableName [NameString] <p>The name of the table. For Hive compatibility, this name is entirely lowercase.</p>
-- * DatabaseName [NameString] <p>The database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog where the tables reside. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DatabaseName
-- Required key: TableName
-- Required key: VersionIds
-- @return BatchDeleteTableVersionRequest structure as a key-value pair table
function M.BatchDeleteTableVersionRequest(args)
	assert(args, "You must provide an argument table when creating BatchDeleteTableVersionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VersionIds"] = args["VersionIds"],
		["TableName"] = args["TableName"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertBatchDeleteTableVersionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserDefinedFunctionInput = { ["ClassName"] = true, ["ResourceUris"] = true, ["OwnerType"] = true, ["FunctionName"] = true, ["OwnerName"] = true, nil }

function asserts.AssertUserDefinedFunctionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserDefinedFunctionInput to be of type 'table'")
	if struct["ClassName"] then asserts.AssertNameString(struct["ClassName"]) end
	if struct["ResourceUris"] then asserts.AssertResourceUriList(struct["ResourceUris"]) end
	if struct["OwnerType"] then asserts.AssertPrincipalType(struct["OwnerType"]) end
	if struct["FunctionName"] then asserts.AssertNameString(struct["FunctionName"]) end
	if struct["OwnerName"] then asserts.AssertNameString(struct["OwnerName"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserDefinedFunctionInput[k], "UserDefinedFunctionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserDefinedFunctionInput
-- <p>A structure used to create or updata a user-defined function.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClassName [NameString] <p>The Java class that contains the function code.</p>
-- * ResourceUris [ResourceUriList] <p>The resource URIs for the function.</p>
-- * OwnerType [PrincipalType] <p>The owner type.</p>
-- * FunctionName [NameString] <p>The name of the function.</p>
-- * OwnerName [NameString] <p>The owner of the function.</p>
-- @return UserDefinedFunctionInput structure as a key-value pair table
function M.UserDefinedFunctionInput(args)
	assert(args, "You must provide an argument table when creating UserDefinedFunctionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClassName"] = args["ClassName"],
		["ResourceUris"] = args["ResourceUris"],
		["OwnerType"] = args["OwnerType"],
		["FunctionName"] = args["FunctionName"],
		["OwnerName"] = args["OwnerName"],
	}
	asserts.AssertUserDefinedFunctionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetCrawlerResponse = { ["Crawler"] = true, nil }

function asserts.AssertGetCrawlerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetCrawlerResponse to be of type 'table'")
	if struct["Crawler"] then asserts.AssertCrawler(struct["Crawler"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetCrawlerResponse[k], "GetCrawlerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetCrawlerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Crawler [Crawler] <p>The metadata for the specified crawler.</p>
-- @return GetCrawlerResponse structure as a key-value pair table
function M.GetCrawlerResponse(args)
	assert(args, "You must provide an argument table when creating GetCrawlerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Crawler"] = args["Crawler"],
	}
	asserts.AssertGetCrawlerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteClassifierResponse = { nil }

function asserts.AssertDeleteClassifierResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteClassifierResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteClassifierResponse[k], "DeleteClassifierResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteClassifierResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteClassifierResponse structure as a key-value pair table
function M.DeleteClassifierResponse(args)
	assert(args, "You must provide an argument table when creating DeleteClassifierResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteClassifierResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateCrawlerScheduleRequest = { ["CrawlerName"] = true, ["Schedule"] = true, nil }

function asserts.AssertUpdateCrawlerScheduleRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateCrawlerScheduleRequest to be of type 'table'")
	assert(struct["CrawlerName"], "Expected key CrawlerName to exist in table")
	if struct["CrawlerName"] then asserts.AssertNameString(struct["CrawlerName"]) end
	if struct["Schedule"] then asserts.AssertCronExpression(struct["Schedule"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateCrawlerScheduleRequest[k], "UpdateCrawlerScheduleRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateCrawlerScheduleRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * CrawlerName [NameString] <p>Name of the crawler whose schedule to update.</p>
-- * Schedule [CronExpression] <p>The updated <code>cron</code> expression used to specify the schedule (see <a href="http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based Schedules for Jobs and Crawlers</a>. For example, to run something every day at 12:15 UTC, you would specify: <code>cron(15 12 * * ? *)</code>.</p>
-- Required key: CrawlerName
-- @return UpdateCrawlerScheduleRequest structure as a key-value pair table
function M.UpdateCrawlerScheduleRequest(args)
	assert(args, "You must provide an argument table when creating UpdateCrawlerScheduleRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["CrawlerName"] = args["CrawlerName"],
		["Schedule"] = args["Schedule"],
	}
	asserts.AssertUpdateCrawlerScheduleRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDeleteTableResponse = { ["Errors"] = true, nil }

function asserts.AssertBatchDeleteTableResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeleteTableResponse to be of type 'table'")
	if struct["Errors"] then asserts.AssertTableErrors(struct["Errors"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDeleteTableResponse[k], "BatchDeleteTableResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeleteTableResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Errors [TableErrors] <p>A list of errors encountered in attempting to delete the specified tables.</p>
-- @return BatchDeleteTableResponse structure as a key-value pair table
function M.BatchDeleteTableResponse(args)
	assert(args, "You must provide an argument table when creating BatchDeleteTableResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Errors"] = args["Errors"],
	}
	asserts.AssertBatchDeleteTableResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateClassifierRequest = { ["GrokClassifier"] = true, ["XMLClassifier"] = true, ["JsonClassifier"] = true, nil }

function asserts.AssertUpdateClassifierRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateClassifierRequest to be of type 'table'")
	if struct["GrokClassifier"] then asserts.AssertUpdateGrokClassifierRequest(struct["GrokClassifier"]) end
	if struct["XMLClassifier"] then asserts.AssertUpdateXMLClassifierRequest(struct["XMLClassifier"]) end
	if struct["JsonClassifier"] then asserts.AssertUpdateJsonClassifierRequest(struct["JsonClassifier"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateClassifierRequest[k], "UpdateClassifierRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateClassifierRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * GrokClassifier [UpdateGrokClassifierRequest] <p>A <code>GrokClassifier</code> object with updated fields.</p>
-- * XMLClassifier [UpdateXMLClassifierRequest] <p>An <code>XMLClassifier</code> object with updated fields.</p>
-- * JsonClassifier [UpdateJsonClassifierRequest] <p>A <code>JsonClassifier</code> object with updated fields.</p>
-- @return UpdateClassifierRequest structure as a key-value pair table
function M.UpdateClassifierRequest(args)
	assert(args, "You must provide an argument table when creating UpdateClassifierRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["GrokClassifier"] = args["GrokClassifier"],
		["XMLClassifier"] = args["XMLClassifier"],
		["JsonClassifier"] = args["JsonClassifier"],
	}
	asserts.AssertUpdateClassifierRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDevEndpointsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertGetDevEndpointsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDevEndpointsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertGenericString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPageSize(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDevEndpointsRequest[k], "GetDevEndpointsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDevEndpointsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [GenericString] <p>A continuation token, if this is a continuation call.</p>
-- * MaxResults [PageSize] <p>The maximum size of information to return.</p>
-- @return GetDevEndpointsRequest structure as a key-value pair table
function M.GetDevEndpointsRequest(args)
	assert(args, "You must provide an argument table when creating GetDevEndpointsRequest")
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
	asserts.AssertGetDevEndpointsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDataCatalogEncryptionSettingsResponse = { ["DataCatalogEncryptionSettings"] = true, nil }

function asserts.AssertGetDataCatalogEncryptionSettingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDataCatalogEncryptionSettingsResponse to be of type 'table'")
	if struct["DataCatalogEncryptionSettings"] then asserts.AssertDataCatalogEncryptionSettings(struct["DataCatalogEncryptionSettings"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDataCatalogEncryptionSettingsResponse[k], "GetDataCatalogEncryptionSettingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDataCatalogEncryptionSettingsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataCatalogEncryptionSettings [DataCatalogEncryptionSettings] <p>The requested security configuration.</p>
-- @return GetDataCatalogEncryptionSettingsResponse structure as a key-value pair table
function M.GetDataCatalogEncryptionSettingsResponse(args)
	assert(args, "You must provide an argument table when creating GetDataCatalogEncryptionSettingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataCatalogEncryptionSettings"] = args["DataCatalogEncryptionSettings"],
	}
	asserts.AssertGetDataCatalogEncryptionSettingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Condition = { ["State"] = true, ["LogicalOperator"] = true, ["JobName"] = true, nil }

function asserts.AssertCondition(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Condition to be of type 'table'")
	if struct["State"] then asserts.AssertJobRunState(struct["State"]) end
	if struct["LogicalOperator"] then asserts.AssertLogicalOperator(struct["LogicalOperator"]) end
	if struct["JobName"] then asserts.AssertNameString(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.Condition[k], "Condition contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Condition
-- <p>Defines a condition under which a trigger fires.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * State [JobRunState] <p>The condition state. Currently, the values supported are SUCCEEDED, STOPPED, TIMEOUT and FAILED.</p>
-- * LogicalOperator [LogicalOperator] <p>A logical operator.</p>
-- * JobName [NameString] <p>The name of the Job to whose JobRuns this condition applies and on which this trigger waits.</p>
-- @return Condition structure as a key-value pair table
function M.Condition(args)
	assert(args, "You must provide an argument table when creating Condition")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["State"] = args["State"],
		["LogicalOperator"] = args["LogicalOperator"],
		["JobName"] = args["JobName"],
	}
	asserts.AssertCondition(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Column = { ["Comment"] = true, ["Type"] = true, ["Name"] = true, nil }

function asserts.AssertColumn(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Column to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Comment"] then asserts.AssertCommentString(struct["Comment"]) end
	if struct["Type"] then asserts.AssertColumnTypeString(struct["Type"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.Column[k], "Column contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Column
-- <p>A column in a <code>Table</code>.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Comment [CommentString] <p>Free-form text comment.</p>
-- * Type [ColumnTypeString] <p>The datatype of data in the <code>Column</code>.</p>
-- * Name [NameString] <p>The name of the <code>Column</code>.</p>
-- Required key: Name
-- @return Column structure as a key-value pair table
function M.Column(args)
	assert(args, "You must provide an argument table when creating Column")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Comment"] = args["Comment"],
		["Type"] = args["Type"],
		["Name"] = args["Name"],
	}
	asserts.AssertColumn(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdatePartitionResponse = { nil }

function asserts.AssertUpdatePartitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdatePartitionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdatePartitionResponse[k], "UpdatePartitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdatePartitionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdatePartitionResponse structure as a key-value pair table
function M.UpdatePartitionResponse(args)
	assert(args, "You must provide an argument table when creating UpdatePartitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdatePartitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteConnectionRequest = { ["ConnectionName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertDeleteConnectionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteConnectionRequest to be of type 'table'")
	assert(struct["ConnectionName"], "Expected key ConnectionName to exist in table")
	if struct["ConnectionName"] then asserts.AssertNameString(struct["ConnectionName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteConnectionRequest[k], "DeleteConnectionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteConnectionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ConnectionName [NameString] <p>The name of the connection to delete.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog in which the connection resides. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: ConnectionName
-- @return DeleteConnectionRequest structure as a key-value pair table
function M.DeleteConnectionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteConnectionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ConnectionName"] = args["ConnectionName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertDeleteConnectionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteSecurityConfigurationResponse = { nil }

function asserts.AssertDeleteSecurityConfigurationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteSecurityConfigurationResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteSecurityConfigurationResponse[k], "DeleteSecurityConfigurationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteSecurityConfigurationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteSecurityConfigurationResponse structure as a key-value pair table
function M.DeleteSecurityConfigurationResponse(args)
	assert(args, "You must provide an argument table when creating DeleteSecurityConfigurationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteSecurityConfigurationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchStopJobRunError = { ["JobRunId"] = true, ["ErrorDetail"] = true, ["JobName"] = true, nil }

function asserts.AssertBatchStopJobRunError(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchStopJobRunError to be of type 'table'")
	if struct["JobRunId"] then asserts.AssertIdString(struct["JobRunId"]) end
	if struct["ErrorDetail"] then asserts.AssertErrorDetail(struct["ErrorDetail"]) end
	if struct["JobName"] then asserts.AssertNameString(struct["JobName"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchStopJobRunError[k], "BatchStopJobRunError contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchStopJobRunError
-- <p>Records an error that occurred when attempting to stop a specified job run.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * JobRunId [IdString] <p>The JobRunId of the job run in question.</p>
-- * ErrorDetail [ErrorDetail] <p>Specifies details about the error that was encountered.</p>
-- * JobName [NameString] <p>The name of the job definition used in the job run in question.</p>
-- @return BatchStopJobRunError structure as a key-value pair table
function M.BatchStopJobRunError(args)
	assert(args, "You must provide an argument table when creating BatchStopJobRunError")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["JobRunId"] = args["JobRunId"],
		["ErrorDetail"] = args["ErrorDetail"],
		["JobName"] = args["JobName"],
	}
	asserts.AssertBatchStopJobRunError(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CodeGenNode = { ["Args"] = true, ["NodeType"] = true, ["Id"] = true, ["LineNumber"] = true, nil }

function asserts.AssertCodeGenNode(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CodeGenNode to be of type 'table'")
	assert(struct["Id"], "Expected key Id to exist in table")
	assert(struct["NodeType"], "Expected key NodeType to exist in table")
	assert(struct["Args"], "Expected key Args to exist in table")
	if struct["Args"] then asserts.AssertCodeGenNodeArgs(struct["Args"]) end
	if struct["NodeType"] then asserts.AssertCodeGenNodeType(struct["NodeType"]) end
	if struct["Id"] then asserts.AssertCodeGenIdentifier(struct["Id"]) end
	if struct["LineNumber"] then asserts.AssertInteger(struct["LineNumber"]) end
	for k,_ in pairs(struct) do
		assert(keys.CodeGenNode[k], "CodeGenNode contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CodeGenNode
-- <p>Represents a node in a directed acyclic graph (DAG)</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Args [CodeGenNodeArgs] <p>Properties of the node, in the form of name-value pairs.</p>
-- * NodeType [CodeGenNodeType] <p>The type of node this is.</p>
-- * Id [CodeGenIdentifier] <p>A node identifier that is unique within the node's graph.</p>
-- * LineNumber [Integer] <p>The line number of the node.</p>
-- Required key: Id
-- Required key: NodeType
-- Required key: Args
-- @return CodeGenNode structure as a key-value pair table
function M.CodeGenNode(args)
	assert(args, "You must provide an argument table when creating CodeGenNode")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Args"] = args["Args"],
		["NodeType"] = args["NodeType"],
		["Id"] = args["Id"],
		["LineNumber"] = args["LineNumber"],
	}
	asserts.AssertCodeGenNode(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteUserDefinedFunctionRequest = { ["FunctionName"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertDeleteUserDefinedFunctionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteUserDefinedFunctionRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["FunctionName"], "Expected key FunctionName to exist in table")
	if struct["FunctionName"] then asserts.AssertNameString(struct["FunctionName"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteUserDefinedFunctionRequest[k], "DeleteUserDefinedFunctionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteUserDefinedFunctionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * FunctionName [NameString] <p>The name of the function definition to be deleted.</p>
-- * DatabaseName [NameString] <p>The name of the catalog database where the function is located.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog where the function to be deleted is located. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DatabaseName
-- Required key: FunctionName
-- @return DeleteUserDefinedFunctionRequest structure as a key-value pair table
function M.DeleteUserDefinedFunctionRequest(args)
	assert(args, "You must provide an argument table when creating DeleteUserDefinedFunctionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["FunctionName"] = args["FunctionName"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertDeleteUserDefinedFunctionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutDataCatalogEncryptionSettingsResponse = { nil }

function asserts.AssertPutDataCatalogEncryptionSettingsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutDataCatalogEncryptionSettingsResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.PutDataCatalogEncryptionSettingsResponse[k], "PutDataCatalogEncryptionSettingsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutDataCatalogEncryptionSettingsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return PutDataCatalogEncryptionSettingsResponse structure as a key-value pair table
function M.PutDataCatalogEncryptionSettingsResponse(args)
	assert(args, "You must provide an argument table when creating PutDataCatalogEncryptionSettingsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertPutDataCatalogEncryptionSettingsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateConnectionResponse = { nil }

function asserts.AssertUpdateConnectionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateConnectionResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateConnectionResponse[k], "UpdateConnectionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateConnectionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateConnectionResponse structure as a key-value pair table
function M.UpdateConnectionResponse(args)
	assert(args, "You must provide an argument table when creating UpdateConnectionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateConnectionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchDeletePartitionRequest = { ["TableName"] = true, ["PartitionsToDelete"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertBatchDeletePartitionRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchDeletePartitionRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["TableName"], "Expected key TableName to exist in table")
	assert(struct["PartitionsToDelete"], "Expected key PartitionsToDelete to exist in table")
	if struct["TableName"] then asserts.AssertNameString(struct["TableName"]) end
	if struct["PartitionsToDelete"] then asserts.AssertBatchDeletePartitionValueList(struct["PartitionsToDelete"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchDeletePartitionRequest[k], "BatchDeletePartitionRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchDeletePartitionRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TableName [NameString] <p>The name of the table where the partitions to be deleted is located.</p>
-- * PartitionsToDelete [BatchDeletePartitionValueList] <p>A list of <code>PartitionInput</code> structures that define the partitions to be deleted.</p>
-- * DatabaseName [NameString] <p>The name of the catalog database in which the table in question resides.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog where the partition to be deleted resides. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DatabaseName
-- Required key: TableName
-- Required key: PartitionsToDelete
-- @return BatchDeletePartitionRequest structure as a key-value pair table
function M.BatchDeletePartitionRequest(args)
	assert(args, "You must provide an argument table when creating BatchDeletePartitionRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TableName"] = args["TableName"],
		["PartitionsToDelete"] = args["PartitionsToDelete"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertBatchDeletePartitionRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateJobRequest = { ["ExecutionProperty"] = true, ["Name"] = true, ["Timeout"] = true, ["NotificationProperty"] = true, ["Connections"] = true, ["SecurityConfiguration"] = true, ["MaxRetries"] = true, ["Command"] = true, ["AllocatedCapacity"] = true, ["Role"] = true, ["LogUri"] = true, ["DefaultArguments"] = true, ["Description"] = true, nil }

function asserts.AssertCreateJobRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateJobRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Role"], "Expected key Role to exist in table")
	assert(struct["Command"], "Expected key Command to exist in table")
	if struct["ExecutionProperty"] then asserts.AssertExecutionProperty(struct["ExecutionProperty"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["Timeout"] then asserts.AssertTimeout(struct["Timeout"]) end
	if struct["NotificationProperty"] then asserts.AssertNotificationProperty(struct["NotificationProperty"]) end
	if struct["Connections"] then asserts.AssertConnectionsList(struct["Connections"]) end
	if struct["SecurityConfiguration"] then asserts.AssertNameString(struct["SecurityConfiguration"]) end
	if struct["MaxRetries"] then asserts.AssertMaxRetries(struct["MaxRetries"]) end
	if struct["Command"] then asserts.AssertJobCommand(struct["Command"]) end
	if struct["AllocatedCapacity"] then asserts.AssertIntegerValue(struct["AllocatedCapacity"]) end
	if struct["Role"] then asserts.AssertRoleString(struct["Role"]) end
	if struct["LogUri"] then asserts.AssertUriString(struct["LogUri"]) end
	if struct["DefaultArguments"] then asserts.AssertGenericMap(struct["DefaultArguments"]) end
	if struct["Description"] then asserts.AssertDescriptionString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateJobRequest[k], "CreateJobRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateJobRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ExecutionProperty [ExecutionProperty] <p>An ExecutionProperty specifying the maximum number of concurrent runs allowed for this job.</p>
-- * Name [NameString] <p>The name you assign to this job definition. It must be unique in your account.</p>
-- * Timeout [Timeout] <p>The job timeout in minutes. This is the maximum time that a job run can consume resources before it is terminated and enters <code>TIMEOUT</code> status. The default is 2,880 minutes (48 hours).</p>
-- * NotificationProperty [NotificationProperty] <p>Specifies configuration properties of a job notification.</p>
-- * Connections [ConnectionsList] <p>The connections used for this job.</p>
-- * SecurityConfiguration [NameString] <p>The name of the SecurityConfiguration structure to be used with this job.</p>
-- * MaxRetries [MaxRetries] <p>The maximum number of times to retry this job if it fails.</p>
-- * Command [JobCommand] <p>The JobCommand that executes this job.</p>
-- * AllocatedCapacity [IntegerValue] <p>The number of AWS Glue data processing units (DPUs) to allocate to this Job. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a relative measure of processing power that consists of 4 vCPUs of compute capacity and 16 GB of memory. For more information, see the <a href="https://aws.amazon.com/glue/pricing/">AWS Glue pricing page</a>.</p>
-- * Role [RoleString] <p>The name or ARN of the IAM role associated with this job.</p>
-- * LogUri [UriString] <p>This field is reserved for future use.</p>
-- * DefaultArguments [GenericMap] <p>The default arguments for this job.</p> <p>You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes.</p> <p>For information about how to specify and consume your own Job arguments, see the <a href="http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html">Calling AWS Glue APIs in Python</a> topic in the developer guide.</p> <p>For information about the key-value pairs that AWS Glue consumes to set up your job, see the <a href="http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html">Special Parameters Used by AWS Glue</a> topic in the developer guide.</p>
-- * Description [DescriptionString] <p>Description of the job being defined.</p>
-- Required key: Name
-- Required key: Role
-- Required key: Command
-- @return CreateJobRequest structure as a key-value pair table
function M.CreateJobRequest(args)
	assert(args, "You must provide an argument table when creating CreateJobRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ExecutionProperty"] = args["ExecutionProperty"],
		["Name"] = args["Name"],
		["Timeout"] = args["Timeout"],
		["NotificationProperty"] = args["NotificationProperty"],
		["Connections"] = args["Connections"],
		["SecurityConfiguration"] = args["SecurityConfiguration"],
		["MaxRetries"] = args["MaxRetries"],
		["Command"] = args["Command"],
		["AllocatedCapacity"] = args["AllocatedCapacity"],
		["Role"] = args["Role"],
		["LogUri"] = args["LogUri"],
		["DefaultArguments"] = args["DefaultArguments"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateJobRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.PutResourcePolicyResponse = { ["PolicyHash"] = true, nil }

function asserts.AssertPutResourcePolicyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected PutResourcePolicyResponse to be of type 'table'")
	if struct["PolicyHash"] then asserts.AssertHashString(struct["PolicyHash"]) end
	for k,_ in pairs(struct) do
		assert(keys.PutResourcePolicyResponse[k], "PutResourcePolicyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type PutResourcePolicyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyHash [HashString] <p>A hash of the policy that has just been set. This must be included in a subsequent call that overwrites or updates this policy.</p>
-- @return PutResourcePolicyResponse structure as a key-value pair table
function M.PutResourcePolicyResponse(args)
	assert(args, "You must provide an argument table when creating PutResourcePolicyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyHash"] = args["PolicyHash"],
	}
	asserts.AssertPutResourcePolicyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSecurityConfigurationsRequest = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertGetSecurityConfigurationsRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSecurityConfigurationsRequest to be of type 'table'")
	if struct["NextToken"] then asserts.AssertGenericString(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertPageSize(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSecurityConfigurationsRequest[k], "GetSecurityConfigurationsRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSecurityConfigurationsRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [GenericString] <p>A continuation token, if this is a continuation call.</p>
-- * MaxResults [PageSize] <p>The maximum number of results to return.</p>
-- @return GetSecurityConfigurationsRequest structure as a key-value pair table
function M.GetSecurityConfigurationsRequest(args)
	assert(args, "You must provide an argument table when creating GetSecurityConfigurationsRequest")
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
	asserts.AssertGetSecurityConfigurationsRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.EncryptionAtRest = { ["SseAwsKmsKeyId"] = true, ["CatalogEncryptionMode"] = true, nil }

function asserts.AssertEncryptionAtRest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionAtRest to be of type 'table'")
	assert(struct["CatalogEncryptionMode"], "Expected key CatalogEncryptionMode to exist in table")
	if struct["SseAwsKmsKeyId"] then asserts.AssertNameString(struct["SseAwsKmsKeyId"]) end
	if struct["CatalogEncryptionMode"] then asserts.AssertCatalogEncryptionMode(struct["CatalogEncryptionMode"]) end
	for k,_ in pairs(struct) do
		assert(keys.EncryptionAtRest[k], "EncryptionAtRest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionAtRest
-- <p>Specifies encryption-at-rest configuration for the Data Catalog.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SseAwsKmsKeyId [NameString] <p>The ID of the AWS KMS key to use for encryption at rest.</p>
-- * CatalogEncryptionMode [CatalogEncryptionMode] <p>The encryption-at-rest mode for encrypting Data Catalog data.</p>
-- Required key: CatalogEncryptionMode
-- @return EncryptionAtRest structure as a key-value pair table
function M.EncryptionAtRest(args)
	assert(args, "You must provide an argument table when creating EncryptionAtRest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SseAwsKmsKeyId"] = args["SseAwsKmsKeyId"],
		["CatalogEncryptionMode"] = args["CatalogEncryptionMode"],
	}
	asserts.AssertEncryptionAtRest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ImportCatalogToGlueResponse = { nil }

function asserts.AssertImportCatalogToGlueResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ImportCatalogToGlueResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.ImportCatalogToGlueResponse[k], "ImportCatalogToGlueResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ImportCatalogToGlueResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return ImportCatalogToGlueResponse structure as a key-value pair table
function M.ImportCatalogToGlueResponse(args)
	assert(args, "You must provide an argument table when creating ImportCatalogToGlueResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertImportCatalogToGlueResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDevEndpointResponse = { nil }

function asserts.AssertUpdateDevEndpointResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDevEndpointResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.UpdateDevEndpointResponse[k], "UpdateDevEndpointResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDevEndpointResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return UpdateDevEndpointResponse structure as a key-value pair table
function M.UpdateDevEndpointResponse(args)
	assert(args, "You must provide an argument table when creating UpdateDevEndpointResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertUpdateDevEndpointResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StopCrawlerRequest = { ["Name"] = true, nil }

function asserts.AssertStopCrawlerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopCrawlerRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopCrawlerRequest[k], "StopCrawlerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopCrawlerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>Name of the crawler to stop.</p>
-- Required key: Name
-- @return StopCrawlerRequest structure as a key-value pair table
function M.StopCrawlerRequest(args)
	assert(args, "You must provide an argument table when creating StopCrawlerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertStopCrawlerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTriggerResponse = { ["Name"] = true, nil }

function asserts.AssertDeleteTriggerResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTriggerResponse to be of type 'table'")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTriggerResponse[k], "DeleteTriggerResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTriggerResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>The name of the trigger that was deleted.</p>
-- @return DeleteTriggerResponse structure as a key-value pair table
function M.DeleteTriggerResponse(args)
	assert(args, "You must provide an argument table when creating DeleteTriggerResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteTriggerResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteResourcePolicyRequest = { ["PolicyHashCondition"] = true, nil }

function asserts.AssertDeleteResourcePolicyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteResourcePolicyRequest to be of type 'table'")
	if struct["PolicyHashCondition"] then asserts.AssertHashString(struct["PolicyHashCondition"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteResourcePolicyRequest[k], "DeleteResourcePolicyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteResourcePolicyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * PolicyHashCondition [HashString] <p>The hash value returned when this policy was set.</p>
-- @return DeleteResourcePolicyRequest structure as a key-value pair table
function M.DeleteResourcePolicyRequest(args)
	assert(args, "You must provide an argument table when creating DeleteResourcePolicyRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["PolicyHashCondition"] = args["PolicyHashCondition"],
	}
	asserts.AssertDeleteResourcePolicyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTriggerRequest = { ["Name"] = true, nil }

function asserts.AssertDeleteTriggerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTriggerRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTriggerRequest[k], "DeleteTriggerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTriggerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>The name of the trigger to delete.</p>
-- Required key: Name
-- @return DeleteTriggerRequest structure as a key-value pair table
function M.DeleteTriggerRequest(args)
	assert(args, "You must provide an argument table when creating DeleteTriggerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
	}
	asserts.AssertDeleteTriggerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTableRequest = { ["Name"] = true, ["DatabaseName"] = true, ["CatalogId"] = true, nil }

function asserts.AssertGetTableRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTableRequest to be of type 'table'")
	assert(struct["DatabaseName"], "Expected key DatabaseName to exist in table")
	assert(struct["Name"], "Expected key Name to exist in table")
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["DatabaseName"] then asserts.AssertNameString(struct["DatabaseName"]) end
	if struct["CatalogId"] then asserts.AssertCatalogIdString(struct["CatalogId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTableRequest[k], "GetTableRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTableRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Name [NameString] <p>The name of the table for which to retrieve the definition. For Hive compatibility, this name is entirely lowercase.</p>
-- * DatabaseName [NameString] <p>The name of the database in the catalog in which the table resides. For Hive compatibility, this name is entirely lowercase.</p>
-- * CatalogId [CatalogIdString] <p>The ID of the Data Catalog where the table resides. If none is supplied, the AWS account ID is used by default.</p>
-- Required key: DatabaseName
-- Required key: Name
-- @return GetTableRequest structure as a key-value pair table
function M.GetTableRequest(args)
	assert(args, "You must provide an argument table when creating GetTableRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Name"] = args["Name"],
		["DatabaseName"] = args["DatabaseName"],
		["CatalogId"] = args["CatalogId"],
	}
	asserts.AssertGetTableRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTriggerRequest = { ["TriggerUpdate"] = true, ["Name"] = true, nil }

function asserts.AssertUpdateTriggerRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTriggerRequest to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["TriggerUpdate"], "Expected key TriggerUpdate to exist in table")
	if struct["TriggerUpdate"] then asserts.AssertTriggerUpdate(struct["TriggerUpdate"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTriggerRequest[k], "UpdateTriggerRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTriggerRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * TriggerUpdate [TriggerUpdate] <p>The new values with which to update the trigger.</p>
-- * Name [NameString] <p>The name of the trigger to update.</p>
-- Required key: Name
-- Required key: TriggerUpdate
-- @return UpdateTriggerRequest structure as a key-value pair table
function M.UpdateTriggerRequest(args)
	assert(args, "You must provide an argument table when creating UpdateTriggerRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["TriggerUpdate"] = args["TriggerUpdate"],
		["Name"] = args["Name"],
	}
	asserts.AssertUpdateTriggerRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetPartitionsResponse = { ["NextToken"] = true, ["Partitions"] = true, nil }

function asserts.AssertGetPartitionsResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetPartitionsResponse to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["Partitions"] then asserts.AssertPartitionList(struct["Partitions"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetPartitionsResponse[k], "GetPartitionsResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetPartitionsResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>A continuation token, if the returned list of partitions does not does not include the last one.</p>
-- * Partitions [PartitionList] <p>A list of requested partitions.</p>
-- @return GetPartitionsResponse structure as a key-value pair table
function M.GetPartitionsResponse(args)
	assert(args, "You must provide an argument table when creating GetPartitionsResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["Partitions"] = args["Partitions"],
	}
	asserts.AssertGetPartitionsResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.BatchGetPartitionResponse = { ["UnprocessedKeys"] = true, ["Partitions"] = true, nil }

function asserts.AssertBatchGetPartitionResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetPartitionResponse to be of type 'table'")
	if struct["UnprocessedKeys"] then asserts.AssertBatchGetPartitionValueList(struct["UnprocessedKeys"]) end
	if struct["Partitions"] then asserts.AssertPartitionList(struct["Partitions"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetPartitionResponse[k], "BatchGetPartitionResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetPartitionResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UnprocessedKeys [BatchGetPartitionValueList] <p>A list of the partition values in the request for which partions were not returned.</p>
-- * Partitions [PartitionList] <p>A list of the requested partitions.</p>
-- @return BatchGetPartitionResponse structure as a key-value pair table
function M.BatchGetPartitionResponse(args)
	assert(args, "You must provide an argument table when creating BatchGetPartitionResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UnprocessedKeys"] = args["UnprocessedKeys"],
		["Partitions"] = args["Partitions"],
	}
	asserts.AssertBatchGetPartitionResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertPolicyJsonString(str)
	assert(str)
	assert(type(str) == "string", "Expected PolicyJsonString to be of type 'string'")
	assert(#str <= 10240, "Expected string to be max 10240 characters")
	assert(#str >= 2, "Expected string to be min 2 characters")
end

--  
function M.PolicyJsonString(str)
	asserts.AssertPolicyJsonString(str)
	return str
end

function asserts.AssertJobBookmarksEncryptionMode(str)
	assert(str)
	assert(type(str) == "string", "Expected JobBookmarksEncryptionMode to be of type 'string'")
end

--  
function M.JobBookmarksEncryptionMode(str)
	asserts.AssertJobBookmarksEncryptionMode(str)
	return str
end

function asserts.AssertGrokPattern(str)
	assert(str)
	assert(type(str) == "string", "Expected GrokPattern to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.GrokPattern(str)
	asserts.AssertGrokPattern(str)
	return str
end

function asserts.AssertCatalogEncryptionMode(str)
	assert(str)
	assert(type(str) == "string", "Expected CatalogEncryptionMode to be of type 'string'")
end

--  
function M.CatalogEncryptionMode(str)
	asserts.AssertCatalogEncryptionMode(str)
	return str
end

function asserts.AssertJobName(str)
	assert(str)
	assert(type(str) == "string", "Expected JobName to be of type 'string'")
end

--  
function M.JobName(str)
	asserts.AssertJobName(str)
	return str
end

function asserts.AssertTableName(str)
	assert(str)
	assert(type(str) == "string", "Expected TableName to be of type 'string'")
end

--  
function M.TableName(str)
	asserts.AssertTableName(str)
	return str
end

function asserts.AssertTriggerType(str)
	assert(str)
	assert(type(str) == "string", "Expected TriggerType to be of type 'string'")
end

--  
function M.TriggerType(str)
	asserts.AssertTriggerType(str)
	return str
end

function asserts.AssertConnectionType(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectionType to be of type 'string'")
end

--  
function M.ConnectionType(str)
	asserts.AssertConnectionType(str)
	return str
end

function asserts.AssertDatabaseName(str)
	assert(str)
	assert(type(str) == "string", "Expected DatabaseName to be of type 'string'")
end

--  
function M.DatabaseName(str)
	asserts.AssertDatabaseName(str)
	return str
end

function asserts.AssertUpdateBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected UpdateBehavior to be of type 'string'")
end

--  
function M.UpdateBehavior(str)
	asserts.AssertUpdateBehavior(str)
	return str
end

function asserts.AssertRoleArn(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleArn to be of type 'string'")
end

--  
function M.RoleArn(str)
	asserts.AssertRoleArn(str)
	return str
end

function asserts.AssertFormatString(str)
	assert(str)
	assert(type(str) == "string", "Expected FormatString to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.FormatString(str)
	asserts.AssertFormatString(str)
	return str
end

function asserts.AssertRowTag(str)
	assert(str)
	assert(type(str) == "string", "Expected RowTag to be of type 'string'")
end

--  
function M.RowTag(str)
	asserts.AssertRowTag(str)
	return str
end

function asserts.AssertFieldType(str)
	assert(str)
	assert(type(str) == "string", "Expected FieldType to be of type 'string'")
end

--  
function M.FieldType(str)
	asserts.AssertFieldType(str)
	return str
end

function asserts.AssertPrincipalType(str)
	assert(str)
	assert(type(str) == "string", "Expected PrincipalType to be of type 'string'")
end

--  
function M.PrincipalType(str)
	asserts.AssertPrincipalType(str)
	return str
end

function asserts.AssertS3EncryptionMode(str)
	assert(str)
	assert(type(str) == "string", "Expected S3EncryptionMode to be of type 'string'")
end

--  
function M.S3EncryptionMode(str)
	asserts.AssertS3EncryptionMode(str)
	return str
end

function asserts.AssertConnectionPropertyKey(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectionPropertyKey to be of type 'string'")
end

--  
function M.ConnectionPropertyKey(str)
	asserts.AssertConnectionPropertyKey(str)
	return str
end

function asserts.AssertLogStream(str)
	assert(str)
	assert(type(str) == "string", "Expected LogStream to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.LogStream(str)
	asserts.AssertLogStream(str)
	return str
end

function asserts.AssertCodeGenArgName(str)
	assert(str)
	assert(type(str) == "string", "Expected CodeGenArgName to be of type 'string'")
end

--  
function M.CodeGenArgName(str)
	asserts.AssertCodeGenArgName(str)
	return str
end

function asserts.AssertPath(str)
	assert(str)
	assert(type(str) == "string", "Expected Path to be of type 'string'")
end

--  
function M.Path(str)
	asserts.AssertPath(str)
	return str
end

function asserts.AssertPythonScript(str)
	assert(str)
	assert(type(str) == "string", "Expected PythonScript to be of type 'string'")
end

--  
function M.PythonScript(str)
	asserts.AssertPythonScript(str)
	return str
end

function asserts.AssertURI(str)
	assert(str)
	assert(type(str) == "string", "Expected URI to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.URI(str)
	asserts.AssertURI(str)
	return str
end

function asserts.AssertDescriptionStringRemovable(str)
	assert(str)
	assert(type(str) == "string", "Expected DescriptionStringRemovable to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.DescriptionStringRemovable(str)
	asserts.AssertDescriptionStringRemovable(str)
	return str
end

function asserts.AssertCronExpression(str)
	assert(str)
	assert(type(str) == "string", "Expected CronExpression to be of type 'string'")
end

--  
function M.CronExpression(str)
	asserts.AssertCronExpression(str)
	return str
end

function asserts.AssertGenericString(str)
	assert(str)
	assert(type(str) == "string", "Expected GenericString to be of type 'string'")
end

--  
function M.GenericString(str)
	asserts.AssertGenericString(str)
	return str
end

function asserts.AssertCodeGenNodeType(str)
	assert(str)
	assert(type(str) == "string", "Expected CodeGenNodeType to be of type 'string'")
end

--  
function M.CodeGenNodeType(str)
	asserts.AssertCodeGenNodeType(str)
	return str
end

function asserts.AssertErrorString(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorString to be of type 'string'")
end

--  
function M.ErrorString(str)
	asserts.AssertErrorString(str)
	return str
end

function asserts.AssertCloudWatchEncryptionMode(str)
	assert(str)
	assert(type(str) == "string", "Expected CloudWatchEncryptionMode to be of type 'string'")
end

--  
function M.CloudWatchEncryptionMode(str)
	asserts.AssertCloudWatchEncryptionMode(str)
	return str
end

function asserts.AssertConnectionName(str)
	assert(str)
	assert(type(str) == "string", "Expected ConnectionName to be of type 'string'")
end

--  
function M.ConnectionName(str)
	asserts.AssertConnectionName(str)
	return str
end

function asserts.AssertCatalogIdString(str)
	assert(str)
	assert(type(str) == "string", "Expected CatalogIdString to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CatalogIdString(str)
	asserts.AssertCatalogIdString(str)
	return str
end

function asserts.AssertRoleString(str)
	assert(str)
	assert(type(str) == "string", "Expected RoleString to be of type 'string'")
end

--  
function M.RoleString(str)
	asserts.AssertRoleString(str)
	return str
end

function asserts.AssertLanguage(str)
	assert(str)
	assert(type(str) == "string", "Expected Language to be of type 'string'")
end

--  
function M.Language(str)
	asserts.AssertLanguage(str)
	return str
end

function asserts.AssertColumnTypeString(str)
	assert(str)
	assert(type(str) == "string", "Expected ColumnTypeString to be of type 'string'")
	assert(#str <= 131072, "Expected string to be max 131072 characters")
end

--  
function M.ColumnTypeString(str)
	asserts.AssertColumnTypeString(str)
	return str
end

function asserts.AssertExistCondition(str)
	assert(str)
	assert(type(str) == "string", "Expected ExistCondition to be of type 'string'")
end

--  
function M.ExistCondition(str)
	asserts.AssertExistCondition(str)
	return str
end

function asserts.AssertCustomPatterns(str)
	assert(str)
	assert(type(str) == "string", "Expected CustomPatterns to be of type 'string'")
	assert(#str <= 16000, "Expected string to be max 16000 characters")
end

--  
function M.CustomPatterns(str)
	asserts.AssertCustomPatterns(str)
	return str
end

function asserts.AssertScriptLocationString(str)
	assert(str)
	assert(type(str) == "string", "Expected ScriptLocationString to be of type 'string'")
end

--  
function M.ScriptLocationString(str)
	asserts.AssertScriptLocationString(str)
	return str
end

function asserts.AssertResourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceType to be of type 'string'")
end

--  
function M.ResourceType(str)
	asserts.AssertResourceType(str)
	return str
end

function asserts.AssertParametersMapValue(str)
	assert(str)
	assert(type(str) == "string", "Expected ParametersMapValue to be of type 'string'")
	assert(#str <= 512000, "Expected string to be max 512000 characters")
end

--  
function M.ParametersMapValue(str)
	asserts.AssertParametersMapValue(str)
	return str
end

function asserts.AssertRole(str)
	assert(str)
	assert(type(str) == "string", "Expected Role to be of type 'string'")
end

--  
function M.Role(str)
	asserts.AssertRole(str)
	return str
end

function asserts.AssertViewTextString(str)
	assert(str)
	assert(type(str) == "string", "Expected ViewTextString to be of type 'string'")
	assert(#str <= 409600, "Expected string to be max 409600 characters")
end

--  
function M.ViewTextString(str)
	asserts.AssertViewTextString(str)
	return str
end

function asserts.AssertLastCrawlStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected LastCrawlStatus to be of type 'string'")
end

--  
function M.LastCrawlStatus(str)
	asserts.AssertLastCrawlStatus(str)
	return str
end

function asserts.AssertNameString(str)
	assert(str)
	assert(type(str) == "string", "Expected NameString to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NameString(str)
	asserts.AssertNameString(str)
	return str
end

function asserts.AssertLocationString(str)
	assert(str)
	assert(type(str) == "string", "Expected LocationString to be of type 'string'")
	assert(#str <= 2056, "Expected string to be max 2056 characters")
end

--  
function M.LocationString(str)
	asserts.AssertLocationString(str)
	return str
end

function asserts.AssertTableTypeString(str)
	assert(str)
	assert(type(str) == "string", "Expected TableTypeString to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.TableTypeString(str)
	asserts.AssertTableTypeString(str)
	return str
end

function asserts.AssertCodeGenIdentifier(str)
	assert(str)
	assert(type(str) == "string", "Expected CodeGenIdentifier to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.CodeGenIdentifier(str)
	asserts.AssertCodeGenIdentifier(str)
	return str
end

function asserts.AssertDescriptionString(str)
	assert(str)
	assert(type(str) == "string", "Expected DescriptionString to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.DescriptionString(str)
	asserts.AssertDescriptionString(str)
	return str
end

function asserts.AssertUriString(str)
	assert(str)
	assert(type(str) == "string", "Expected UriString to be of type 'string'")
end

--  
function M.UriString(str)
	asserts.AssertUriString(str)
	return str
end

function asserts.AssertTriggerState(str)
	assert(str)
	assert(type(str) == "string", "Expected TriggerState to be of type 'string'")
end

--  
function M.TriggerState(str)
	asserts.AssertTriggerState(str)
	return str
end

function asserts.AssertClassification(str)
	assert(str)
	assert(type(str) == "string", "Expected Classification to be of type 'string'")
end

--  
function M.Classification(str)
	asserts.AssertClassification(str)
	return str
end

function asserts.AssertScheduleState(str)
	assert(str)
	assert(type(str) == "string", "Expected ScheduleState to be of type 'string'")
end

--  
function M.ScheduleState(str)
	asserts.AssertScheduleState(str)
	return str
end

function asserts.AssertMessagePrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected MessagePrefix to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MessagePrefix(str)
	asserts.AssertMessagePrefix(str)
	return str
end

function asserts.AssertScalaCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ScalaCode to be of type 'string'")
end

--  
function M.ScalaCode(str)
	asserts.AssertScalaCode(str)
	return str
end

function asserts.AssertKmsKeyArn(str)
	assert(str)
	assert(type(str) == "string", "Expected KmsKeyArn to be of type 'string'")
end

--  
function M.KmsKeyArn(str)
	asserts.AssertKmsKeyArn(str)
	return str
end

function asserts.AssertLogicalOperator(str)
	assert(str)
	assert(type(str) == "string", "Expected LogicalOperator to be of type 'string'")
end

--  
function M.LogicalOperator(str)
	asserts.AssertLogicalOperator(str)
	return str
end

function asserts.AssertJobRunState(str)
	assert(str)
	assert(type(str) == "string", "Expected JobRunState to be of type 'string'")
end

--  
function M.JobRunState(str)
	asserts.AssertJobRunState(str)
	return str
end

function asserts.AssertCrawlerState(str)
	assert(str)
	assert(type(str) == "string", "Expected CrawlerState to be of type 'string'")
end

--  
function M.CrawlerState(str)
	asserts.AssertCrawlerState(str)
	return str
end

function asserts.AssertToken(str)
	assert(str)
	assert(type(str) == "string", "Expected Token to be of type 'string'")
end

--  
function M.Token(str)
	asserts.AssertToken(str)
	return str
end

function asserts.AssertJsonValue(str)
	assert(str)
	assert(type(str) == "string", "Expected JsonValue to be of type 'string'")
end

--  
function M.JsonValue(str)
	asserts.AssertJsonValue(str)
	return str
end

function asserts.AssertCrawlerConfiguration(str)
	assert(str)
	assert(type(str) == "string", "Expected CrawlerConfiguration to be of type 'string'")
end

--  
function M.CrawlerConfiguration(str)
	asserts.AssertCrawlerConfiguration(str)
	return str
end

function asserts.AssertDeleteBehavior(str)
	assert(str)
	assert(type(str) == "string", "Expected DeleteBehavior to be of type 'string'")
end

--  
function M.DeleteBehavior(str)
	asserts.AssertDeleteBehavior(str)
	return str
end

function asserts.AssertHashString(str)
	assert(str)
	assert(type(str) == "string", "Expected HashString to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.HashString(str)
	asserts.AssertHashString(str)
	return str
end

function asserts.AssertIdString(str)
	assert(str)
	assert(type(str) == "string", "Expected IdString to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.IdString(str)
	asserts.AssertIdString(str)
	return str
end

function asserts.AssertTablePrefix(str)
	assert(str)
	assert(type(str) == "string", "Expected TablePrefix to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.TablePrefix(str)
	asserts.AssertTablePrefix(str)
	return str
end

function asserts.AssertCrawlerSecurityConfiguration(str)
	assert(str)
	assert(type(str) == "string", "Expected CrawlerSecurityConfiguration to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
end

--  
function M.CrawlerSecurityConfiguration(str)
	asserts.AssertCrawlerSecurityConfiguration(str)
	return str
end

function asserts.AssertColumnValuesString(str)
	assert(str)
	assert(type(str) == "string", "Expected ColumnValuesString to be of type 'string'")
end

--  
function M.ColumnValuesString(str)
	asserts.AssertColumnValuesString(str)
	return str
end

function asserts.AssertLogical(str)
	assert(str)
	assert(type(str) == "string", "Expected Logical to be of type 'string'")
end

--  
function M.Logical(str)
	asserts.AssertLogical(str)
	return str
end

function asserts.AssertCommentString(str)
	assert(str)
	assert(type(str) == "string", "Expected CommentString to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
end

--  
function M.CommentString(str)
	asserts.AssertCommentString(str)
	return str
end

function asserts.AssertKeyString(str)
	assert(str)
	assert(type(str) == "string", "Expected KeyString to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.KeyString(str)
	asserts.AssertKeyString(str)
	return str
end

function asserts.AssertValueString(str)
	assert(str)
	assert(type(str) == "string", "Expected ValueString to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
end

--  
function M.ValueString(str)
	asserts.AssertValueString(str)
	return str
end

function asserts.AssertCodeGenArgValue(str)
	assert(str)
	assert(type(str) == "string", "Expected CodeGenArgValue to be of type 'string'")
end

--  
function M.CodeGenArgValue(str)
	asserts.AssertCodeGenArgValue(str)
	return str
end

function asserts.AssertPredicateString(str)
	assert(str)
	assert(type(str) == "string", "Expected PredicateString to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.PredicateString(str)
	asserts.AssertPredicateString(str)
	return str
end

function asserts.AssertSchemaPathString(str)
	assert(str)
	assert(type(str) == "string", "Expected SchemaPathString to be of type 'string'")
end

--  
function M.SchemaPathString(str)
	asserts.AssertSchemaPathString(str)
	return str
end

function asserts.AssertJsonPath(str)
	assert(str)
	assert(type(str) == "string", "Expected JsonPath to be of type 'string'")
end

--  
function M.JsonPath(str)
	asserts.AssertJsonPath(str)
	return str
end

function asserts.AssertLogGroup(str)
	assert(str)
	assert(type(str) == "string", "Expected LogGroup to be of type 'string'")
	assert(#str <= 512, "Expected string to be max 512 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.LogGroup(str)
	asserts.AssertLogGroup(str)
	return str
end

function asserts.AssertFilterString(str)
	assert(str)
	assert(type(str) == "string", "Expected FilterString to be of type 'string'")
	assert(#str <= 2048, "Expected string to be max 2048 characters")
end

--  
function M.FilterString(str)
	asserts.AssertFilterString(str)
	return str
end

function asserts.AssertVersionString(str)
	assert(str)
	assert(type(str) == "string", "Expected VersionString to be of type 'string'")
	assert(#str <= 255, "Expected string to be max 255 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.VersionString(str)
	asserts.AssertVersionString(str)
	return str
end

function asserts.AssertNonNegativeDouble(double)
	assert(double)
	assert(type(double) == "number", "Expected NonNegativeDouble to be of type 'number'")
end

function M.NonNegativeDouble(double)
	asserts.AssertNonNegativeDouble(double)
	return double
end

function asserts.AssertVersionId(long)
	assert(long)
	assert(type(long) == "number", "Expected VersionId to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.VersionId(long)
	asserts.AssertVersionId(long)
	return long
end

function asserts.AssertMillisecondsCount(long)
	assert(long)
	assert(type(long) == "number", "Expected MillisecondsCount to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.MillisecondsCount(long)
	asserts.AssertMillisecondsCount(long)
	return long
end

function asserts.AssertMaxRetries(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxRetries to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxRetries(integer)
	asserts.AssertMaxRetries(integer)
	return integer
end

function asserts.AssertPageSize(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected PageSize to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.PageSize(integer)
	asserts.AssertPageSize(integer)
	return integer
end

function asserts.AssertIntegerFlag(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected IntegerFlag to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1, "Expected integer to be max 1")
end

function M.IntegerFlag(integer)
	asserts.AssertIntegerFlag(integer)
	return integer
end

function asserts.AssertNonNegativeInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NonNegativeInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.NonNegativeInteger(integer)
	asserts.AssertNonNegativeInteger(integer)
	return integer
end

function asserts.AssertIntegerValue(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected IntegerValue to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.IntegerValue(integer)
	asserts.AssertIntegerValue(integer)
	return integer
end

function asserts.AssertMaxConcurrentRuns(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxConcurrentRuns to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.MaxConcurrentRuns(integer)
	asserts.AssertMaxConcurrentRuns(integer)
	return integer
end

function asserts.AssertTotalSegmentsInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected TotalSegmentsInteger to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 10, "Expected integer to be max 10")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.TotalSegmentsInteger(integer)
	asserts.AssertTotalSegmentsInteger(integer)
	return integer
end

function asserts.AssertExecutionTime(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected ExecutionTime to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.ExecutionTime(integer)
	asserts.AssertExecutionTime(integer)
	return integer
end

function asserts.AssertNotifyDelayAfter(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected NotifyDelayAfter to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.NotifyDelayAfter(integer)
	asserts.AssertNotifyDelayAfter(integer)
	return integer
end

function asserts.AssertAttemptCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected AttemptCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.AttemptCount(integer)
	asserts.AssertAttemptCount(integer)
	return integer
end

function asserts.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	asserts.AssertInteger(integer)
	return integer
end

function asserts.AssertTimeout(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Timeout to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer >= 1, "Expected integer to be min 1")
end

function M.Timeout(integer)
	asserts.AssertTimeout(integer)
	return integer
end

function asserts.AssertBooleanNullable(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanNullable to be of type 'boolean'")
end

function M.BooleanNullable(boolean)
	asserts.AssertBooleanNullable(boolean)
	return boolean
end

function asserts.AssertBooleanValue(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected BooleanValue to be of type 'boolean'")
end

function M.BooleanValue(boolean)
	asserts.AssertBooleanValue(boolean)
	return boolean
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertGenericMap(map)
	assert(map)
	assert(type(map) == "table", "Expected GenericMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertGenericString(k)
		asserts.AssertGenericString(v)
	end
end

function M.GenericMap(map)
	asserts.AssertGenericMap(map)
	return map
end

function asserts.AssertParametersMap(map)
	assert(map)
	assert(type(map) == "table", "Expected ParametersMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertKeyString(k)
		asserts.AssertParametersMapValue(v)
	end
end

function M.ParametersMap(map)
	asserts.AssertParametersMap(map)
	return map
end

function asserts.AssertLocationMap(map)
	assert(map)
	assert(type(map) == "table", "Expected LocationMap to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertColumnValuesString(k)
		asserts.AssertColumnValuesString(v)
	end
end

function M.LocationMap(map)
	asserts.AssertLocationMap(map)
	return map
end

function asserts.AssertErrorByName(map)
	assert(map)
	assert(type(map) == "table", "Expected ErrorByName to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertNameString(k)
		asserts.AssertErrorDetail(v)
	end
end

function M.ErrorByName(map)
	asserts.AssertErrorByName(map)
	return map
end

function asserts.AssertConnectionProperties(map)
	assert(map)
	assert(type(map) == "table", "Expected ConnectionProperties to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertConnectionPropertyKey(k)
		asserts.AssertValueString(v)
	end
end

function M.ConnectionProperties(map)
	asserts.AssertConnectionProperties(map)
	return map
end

function asserts.AssertTimestamp(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Timestamp to be of type 'string'")
end

function M.Timestamp(timestamp)
	asserts.AssertTimestamp(timestamp)
	return timestamp
end

function asserts.AssertTimestampValue(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected TimestampValue to be of type 'string'")
end

function M.TimestampValue(timestamp)
	asserts.AssertTimestampValue(timestamp)
	return timestamp
end

function asserts.AssertColumnList(list)
	assert(list)
	assert(type(list) == "table", "Expected ColumnList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertColumn(v)
	end
end

--  
-- List of Column objects
function M.ColumnList(list)
	asserts.AssertColumnList(list)
	return list
end

function asserts.AssertCrawlerList(list)
	assert(list)
	assert(type(list) == "table", "Expected CrawlerList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCrawler(v)
	end
end

--  
-- List of Crawler objects
function M.CrawlerList(list)
	asserts.AssertCrawlerList(list)
	return list
end

function asserts.AssertValueStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected ValueStringList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertValueString(v)
	end
end

--  
-- List of ValueString objects
function M.ValueStringList(list)
	asserts.AssertValueStringList(list)
	return list
end

function asserts.AssertCatalogEntries(list)
	assert(list)
	assert(type(list) == "table", "Expected CatalogEntries to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCatalogEntry(v)
	end
end

--  
-- List of CatalogEntry objects
function M.CatalogEntries(list)
	asserts.AssertCatalogEntries(list)
	return list
end

function asserts.AssertJobRunList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobRunList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJobRun(v)
	end
end

--  
-- List of JobRun objects
function M.JobRunList(list)
	asserts.AssertJobRunList(list)
	return list
end

function asserts.AssertMappingList(list)
	assert(list)
	assert(type(list) == "table", "Expected MappingList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertMappingEntry(v)
	end
end

--  
-- List of MappingEntry objects
function M.MappingList(list)
	asserts.AssertMappingList(list)
	return list
end

function asserts.AssertTableErrors(list)
	assert(list)
	assert(type(list) == "table", "Expected TableErrors to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTableError(v)
	end
end

--  
-- List of TableError objects
function M.TableErrors(list)
	asserts.AssertTableErrors(list)
	return list
end

function asserts.AssertOrderList(list)
	assert(list)
	assert(type(list) == "table", "Expected OrderList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertOrder(v)
	end
end

--  
-- List of Order objects
function M.OrderList(list)
	asserts.AssertOrderList(list)
	return list
end

function asserts.AssertColumnValueStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected ColumnValueStringList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertColumnValuesString(v)
	end
end

--  
-- List of ColumnValuesString objects
function M.ColumnValueStringList(list)
	asserts.AssertColumnValueStringList(list)
	return list
end

function asserts.AssertPredecessorList(list)
	assert(list)
	assert(type(list) == "table", "Expected PredecessorList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPredecessor(v)
	end
end

--  
-- List of Predecessor objects
function M.PredecessorList(list)
	asserts.AssertPredecessorList(list)
	return list
end

function asserts.AssertConditionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConditionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCondition(v)
	end
end

--  
-- List of Condition objects
function M.ConditionList(list)
	asserts.AssertConditionList(list)
	return list
end

function asserts.AssertBatchStopJobRunSuccessfulSubmissionList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchStopJobRunSuccessfulSubmissionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBatchStopJobRunSuccessfulSubmission(v)
	end
end

--  
-- List of BatchStopJobRunSuccessfulSubmission objects
function M.BatchStopJobRunSuccessfulSubmissionList(list)
	asserts.AssertBatchStopJobRunSuccessfulSubmissionList(list)
	return list
end

function asserts.AssertDagNodes(list)
	assert(list)
	assert(type(list) == "table", "Expected DagNodes to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCodeGenNode(v)
	end
end

--  
-- List of CodeGenNode objects
function M.DagNodes(list)
	asserts.AssertDagNodes(list)
	return list
end

function asserts.AssertPublicKeysList(list)
	assert(list)
	assert(type(list) == "table", "Expected PublicKeysList to be of type ''table")
	assert(#list <= 5, "Expected list to be contain 5 elements")
	for _,v in ipairs(list) do
		asserts.AssertGenericString(v)
	end
end

--  
-- List of GenericString objects
function M.PublicKeysList(list)
	asserts.AssertPublicKeysList(list)
	return list
end

function asserts.AssertPartitionList(list)
	assert(list)
	assert(type(list) == "table", "Expected PartitionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPartition(v)
	end
end

--  
-- List of Partition objects
function M.PartitionList(list)
	asserts.AssertPartitionList(list)
	return list
end

function asserts.AssertDagEdges(list)
	assert(list)
	assert(type(list) == "table", "Expected DagEdges to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCodeGenEdge(v)
	end
end

--  
-- List of CodeGenEdge objects
function M.DagEdges(list)
	asserts.AssertDagEdges(list)
	return list
end

function asserts.AssertUserDefinedFunctionList(list)
	assert(list)
	assert(type(list) == "table", "Expected UserDefinedFunctionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUserDefinedFunction(v)
	end
end

--  
-- List of UserDefinedFunction objects
function M.UserDefinedFunctionList(list)
	asserts.AssertUserDefinedFunctionList(list)
	return list
end

function asserts.AssertPartitionInputList(list)
	assert(list)
	assert(type(list) == "table", "Expected PartitionInputList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertPartitionInput(v)
	end
end

--  
-- List of PartitionInput objects
function M.PartitionInputList(list)
	asserts.AssertPartitionInputList(list)
	return list
end

function asserts.AssertPartitionErrors(list)
	assert(list)
	assert(type(list) == "table", "Expected PartitionErrors to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPartitionError(v)
	end
end

--  
-- List of PartitionError objects
function M.PartitionErrors(list)
	asserts.AssertPartitionErrors(list)
	return list
end

function asserts.AssertDynamoDBTargetList(list)
	assert(list)
	assert(type(list) == "table", "Expected DynamoDBTargetList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDynamoDBTarget(v)
	end
end

--  
-- List of DynamoDBTarget objects
function M.DynamoDBTargetList(list)
	asserts.AssertDynamoDBTargetList(list)
	return list
end

function asserts.AssertS3TargetList(list)
	assert(list)
	assert(type(list) == "table", "Expected S3TargetList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertS3Target(v)
	end
end

--  
-- List of S3Target objects
function M.S3TargetList(list)
	asserts.AssertS3TargetList(list)
	return list
end

function asserts.AssertJdbcTargetList(list)
	assert(list)
	assert(type(list) == "table", "Expected JdbcTargetList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJdbcTarget(v)
	end
end

--  
-- List of JdbcTarget objects
function M.JdbcTargetList(list)
	asserts.AssertJdbcTargetList(list)
	return list
end

function asserts.AssertBatchGetPartitionValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchGetPartitionValueList to be of type ''table")
	assert(#list <= 1000, "Expected list to be contain 1000 elements")
	for _,v in ipairs(list) do
		asserts.AssertPartitionValueList(v)
	end
end

--  
-- List of PartitionValueList objects
function M.BatchGetPartitionValueList(list)
	asserts.AssertBatchGetPartitionValueList(list)
	return list
end

function asserts.AssertDevEndpointList(list)
	assert(list)
	assert(type(list) == "table", "Expected DevEndpointList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDevEndpoint(v)
	end
end

--  
-- List of DevEndpoint objects
function M.DevEndpointList(list)
	asserts.AssertDevEndpointList(list)
	return list
end

function asserts.AssertBatchStopJobRunErrorList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchStopJobRunErrorList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertBatchStopJobRunError(v)
	end
end

--  
-- List of BatchStopJobRunError objects
function M.BatchStopJobRunErrorList(list)
	asserts.AssertBatchStopJobRunErrorList(list)
	return list
end

function asserts.AssertNameStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected NameStringList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNameString(v)
	end
end

--  
-- List of NameString objects
function M.NameStringList(list)
	asserts.AssertNameStringList(list)
	return list
end

function asserts.AssertSecurityGroupIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityGroupIdList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertNameString(v)
	end
end

--  
-- List of NameString objects
function M.SecurityGroupIdList(list)
	asserts.AssertSecurityGroupIdList(list)
	return list
end

function asserts.AssertDatabaseList(list)
	assert(list)
	assert(type(list) == "table", "Expected DatabaseList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDatabase(v)
	end
end

--  
-- List of Database objects
function M.DatabaseList(list)
	asserts.AssertDatabaseList(list)
	return list
end

function asserts.AssertCrawlerMetricsList(list)
	assert(list)
	assert(type(list) == "table", "Expected CrawlerMetricsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertCrawlerMetrics(v)
	end
end

--  
-- List of CrawlerMetrics objects
function M.CrawlerMetricsList(list)
	asserts.AssertCrawlerMetricsList(list)
	return list
end

function asserts.AssertJobList(list)
	assert(list)
	assert(type(list) == "table", "Expected JobList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertJob(v)
	end
end

--  
-- List of Job objects
function M.JobList(list)
	asserts.AssertJobList(list)
	return list
end

function asserts.AssertActionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ActionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertAction(v)
	end
end

--  
-- List of Action objects
function M.ActionList(list)
	asserts.AssertActionList(list)
	return list
end

function asserts.AssertTableVersionErrors(list)
	assert(list)
	assert(type(list) == "table", "Expected TableVersionErrors to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTableVersionError(v)
	end
end

--  
-- List of TableVersionError objects
function M.TableVersionErrors(list)
	asserts.AssertTableVersionErrors(list)
	return list
end

function asserts.AssertClassifierNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClassifierNameList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNameString(v)
	end
end

--  
-- List of NameString objects
function M.ClassifierNameList(list)
	asserts.AssertClassifierNameList(list)
	return list
end

function asserts.AssertBatchStopJobRunJobRunIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchStopJobRunJobRunIdList to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertIdString(v)
	end
end

--  
-- List of IdString objects
function M.BatchStopJobRunJobRunIdList(list)
	asserts.AssertBatchStopJobRunJobRunIdList(list)
	return list
end

function asserts.AssertDeleteConnectionNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected DeleteConnectionNameList to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	for _,v in ipairs(list) do
		asserts.AssertNameString(v)
	end
end

--  
-- List of NameString objects
function M.DeleteConnectionNameList(list)
	asserts.AssertDeleteConnectionNameList(list)
	return list
end

function asserts.AssertMatchCriteria(list)
	assert(list)
	assert(type(list) == "table", "Expected MatchCriteria to be of type ''table")
	assert(#list <= 10, "Expected list to be contain 10 elements")
	for _,v in ipairs(list) do
		asserts.AssertNameString(v)
	end
end

--  
-- List of NameString objects
function M.MatchCriteria(list)
	asserts.AssertMatchCriteria(list)
	return list
end

function asserts.AssertTriggerList(list)
	assert(list)
	assert(type(list) == "table", "Expected TriggerList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTrigger(v)
	end
end

--  
-- List of Trigger objects
function M.TriggerList(list)
	asserts.AssertTriggerList(list)
	return list
end

function asserts.AssertTableList(list)
	assert(list)
	assert(type(list) == "table", "Expected TableList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTable(v)
	end
end

--  
-- List of Table objects
function M.TableList(list)
	asserts.AssertTableList(list)
	return list
end

function asserts.AssertConnectionList(list)
	assert(list)
	assert(type(list) == "table", "Expected ConnectionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertConnection(v)
	end
end

--  
-- List of Connection objects
function M.ConnectionList(list)
	asserts.AssertConnectionList(list)
	return list
end

function asserts.AssertClassifierList(list)
	assert(list)
	assert(type(list) == "table", "Expected ClassifierList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertClassifier(v)
	end
end

--  
-- List of Classifier objects
function M.ClassifierList(list)
	asserts.AssertClassifierList(list)
	return list
end

function asserts.AssertBatchDeletePartitionValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchDeletePartitionValueList to be of type ''table")
	assert(#list <= 25, "Expected list to be contain 25 elements")
	for _,v in ipairs(list) do
		asserts.AssertPartitionValueList(v)
	end
end

--  
-- List of PartitionValueList objects
function M.BatchDeletePartitionValueList(list)
	asserts.AssertBatchDeletePartitionValueList(list)
	return list
end

function asserts.AssertPathList(list)
	assert(list)
	assert(type(list) == "table", "Expected PathList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertPath(v)
	end
end

--  
-- List of Path objects
function M.PathList(list)
	asserts.AssertPathList(list)
	return list
end

function asserts.AssertBatchDeleteTableVersionList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchDeleteTableVersionList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertVersionString(v)
	end
end

--  
-- List of VersionString objects
function M.BatchDeleteTableVersionList(list)
	asserts.AssertBatchDeleteTableVersionList(list)
	return list
end

function asserts.AssertCrawlerNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected CrawlerNameList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertNameString(v)
	end
end

--  
-- List of NameString objects
function M.CrawlerNameList(list)
	asserts.AssertCrawlerNameList(list)
	return list
end

function asserts.AssertGetTableVersionsList(list)
	assert(list)
	assert(type(list) == "table", "Expected GetTableVersionsList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertTableVersion(v)
	end
end

--  
-- List of TableVersion objects
function M.GetTableVersionsList(list)
	asserts.AssertGetTableVersionsList(list)
	return list
end

function asserts.AssertS3EncryptionList(list)
	assert(list)
	assert(type(list) == "table", "Expected S3EncryptionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertS3Encryption(v)
	end
end

--  
-- List of S3Encryption objects
function M.S3EncryptionList(list)
	asserts.AssertS3EncryptionList(list)
	return list
end

function asserts.AssertBatchDeleteTableNameList(list)
	assert(list)
	assert(type(list) == "table", "Expected BatchDeleteTableNameList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertNameString(v)
	end
end

--  
-- List of NameString objects
function M.BatchDeleteTableNameList(list)
	asserts.AssertBatchDeleteTableNameList(list)
	return list
end

function asserts.AssertStringList(list)
	assert(list)
	assert(type(list) == "table", "Expected StringList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGenericString(v)
	end
end

--  
-- List of GenericString objects
function M.StringList(list)
	asserts.AssertStringList(list)
	return list
end

function asserts.AssertResourceUriList(list)
	assert(list)
	assert(type(list) == "table", "Expected ResourceUriList to be of type ''table")
	assert(#list <= 1000, "Expected list to be contain 1000 elements")
	for _,v in ipairs(list) do
		asserts.AssertResourceUri(v)
	end
end

--  
-- List of ResourceUri objects
function M.ResourceUriList(list)
	asserts.AssertResourceUriList(list)
	return list
end

function asserts.AssertCodeGenNodeArgs(list)
	assert(list)
	assert(type(list) == "table", "Expected CodeGenNodeArgs to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	for _,v in ipairs(list) do
		asserts.AssertCodeGenNodeArg(v)
	end
end

--  
-- List of CodeGenNodeArg objects
function M.CodeGenNodeArgs(list)
	asserts.AssertCodeGenNodeArgs(list)
	return list
end

function asserts.AssertSecurityConfigurationList(list)
	assert(list)
	assert(type(list) == "table", "Expected SecurityConfigurationList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertSecurityConfiguration(v)
	end
end

--  
-- List of SecurityConfiguration objects
function M.SecurityConfigurationList(list)
	asserts.AssertSecurityConfigurationList(list)
	return list
end

function asserts.AssertBoundedPartitionValueList(list)
	assert(list)
	assert(type(list) == "table", "Expected BoundedPartitionValueList to be of type ''table")
	assert(#list <= 100, "Expected list to be contain 100 elements")
	for _,v in ipairs(list) do
		asserts.AssertValueString(v)
	end
end

--  
-- List of ValueString objects
function M.BoundedPartitionValueList(list)
	asserts.AssertBoundedPartitionValueList(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "glue.amazonaws.com"
		end
	end
	local ss = { "glue" }
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
--- Call GetUserDefinedFunctions asynchronously, invoking a callback when done
-- @param GetUserDefinedFunctionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetUserDefinedFunctionsAsync(GetUserDefinedFunctionsRequest, cb)
	assert(GetUserDefinedFunctionsRequest, "You must provide a GetUserDefinedFunctionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetUserDefinedFunctions",
	}
	for header,value in pairs(GetUserDefinedFunctionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetUserDefinedFunctionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetUserDefinedFunctions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetUserDefinedFunctionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetUserDefinedFunctionsSync(GetUserDefinedFunctionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUserDefinedFunctionsAsync(GetUserDefinedFunctionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchDeleteTable asynchronously, invoking a callback when done
-- @param BatchDeleteTableRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchDeleteTableAsync(BatchDeleteTableRequest, cb)
	assert(BatchDeleteTableRequest, "You must provide a BatchDeleteTableRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.BatchDeleteTable",
	}
	for header,value in pairs(BatchDeleteTableRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchDeleteTableRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchDeleteTable synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchDeleteTableRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchDeleteTableSync(BatchDeleteTableRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchDeleteTableAsync(BatchDeleteTableRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCrawlers asynchronously, invoking a callback when done
-- @param GetCrawlersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCrawlersAsync(GetCrawlersRequest, cb)
	assert(GetCrawlersRequest, "You must provide a GetCrawlersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetCrawlers",
	}
	for header,value in pairs(GetCrawlersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetCrawlersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCrawlers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCrawlersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCrawlersSync(GetCrawlersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCrawlersAsync(GetCrawlersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopCrawler asynchronously, invoking a callback when done
-- @param StopCrawlerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopCrawlerAsync(StopCrawlerRequest, cb)
	assert(StopCrawlerRequest, "You must provide a StopCrawlerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.StopCrawler",
	}
	for header,value in pairs(StopCrawlerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopCrawlerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopCrawler synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopCrawlerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopCrawlerSync(StopCrawlerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopCrawlerAsync(StopCrawlerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartCrawler asynchronously, invoking a callback when done
-- @param StartCrawlerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartCrawlerAsync(StartCrawlerRequest, cb)
	assert(StartCrawlerRequest, "You must provide a StartCrawlerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.StartCrawler",
	}
	for header,value in pairs(StartCrawlerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartCrawlerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartCrawler synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartCrawlerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartCrawlerSync(StartCrawlerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartCrawlerAsync(StartCrawlerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPartitions asynchronously, invoking a callback when done
-- @param GetPartitionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetPartitionsAsync(GetPartitionsRequest, cb)
	assert(GetPartitionsRequest, "You must provide a GetPartitionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetPartitions",
	}
	for header,value in pairs(GetPartitionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetPartitionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPartitions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPartitionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetPartitionsSync(GetPartitionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPartitionsAsync(GetPartitionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetUserDefinedFunction asynchronously, invoking a callback when done
-- @param GetUserDefinedFunctionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetUserDefinedFunctionAsync(GetUserDefinedFunctionRequest, cb)
	assert(GetUserDefinedFunctionRequest, "You must provide a GetUserDefinedFunctionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetUserDefinedFunction",
	}
	for header,value in pairs(GetUserDefinedFunctionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetUserDefinedFunctionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetUserDefinedFunction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetUserDefinedFunctionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetUserDefinedFunctionSync(GetUserDefinedFunctionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetUserDefinedFunctionAsync(GetUserDefinedFunctionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateJob asynchronously, invoking a callback when done
-- @param UpdateJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateJobAsync(UpdateJobRequest, cb)
	assert(UpdateJobRequest, "You must provide a UpdateJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.UpdateJob",
	}
	for header,value in pairs(UpdateJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateJobSync(UpdateJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateJobAsync(UpdateJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCrawlerMetrics asynchronously, invoking a callback when done
-- @param GetCrawlerMetricsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCrawlerMetricsAsync(GetCrawlerMetricsRequest, cb)
	assert(GetCrawlerMetricsRequest, "You must provide a GetCrawlerMetricsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetCrawlerMetrics",
	}
	for header,value in pairs(GetCrawlerMetricsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetCrawlerMetricsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCrawlerMetrics synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCrawlerMetricsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCrawlerMetricsSync(GetCrawlerMetricsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCrawlerMetricsAsync(GetCrawlerMetricsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateCrawlerSchedule asynchronously, invoking a callback when done
-- @param UpdateCrawlerScheduleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateCrawlerScheduleAsync(UpdateCrawlerScheduleRequest, cb)
	assert(UpdateCrawlerScheduleRequest, "You must provide a UpdateCrawlerScheduleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.UpdateCrawlerSchedule",
	}
	for header,value in pairs(UpdateCrawlerScheduleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateCrawlerScheduleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateCrawlerSchedule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateCrawlerScheduleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateCrawlerScheduleSync(UpdateCrawlerScheduleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateCrawlerScheduleAsync(UpdateCrawlerScheduleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDevEndpoint asynchronously, invoking a callback when done
-- @param DeleteDevEndpointRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDevEndpointAsync(DeleteDevEndpointRequest, cb)
	assert(DeleteDevEndpointRequest, "You must provide a DeleteDevEndpointRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.DeleteDevEndpoint",
	}
	for header,value in pairs(DeleteDevEndpointRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDevEndpointRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDevEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDevEndpointRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDevEndpointSync(DeleteDevEndpointRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDevEndpointAsync(DeleteDevEndpointRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreatePartition asynchronously, invoking a callback when done
-- @param CreatePartitionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreatePartitionAsync(CreatePartitionRequest, cb)
	assert(CreatePartitionRequest, "You must provide a CreatePartitionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.CreatePartition",
	}
	for header,value in pairs(CreatePartitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreatePartitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreatePartition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreatePartitionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreatePartitionSync(CreatePartitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreatePartitionAsync(CreatePartitionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDatabase asynchronously, invoking a callback when done
-- @param DeleteDatabaseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDatabaseAsync(DeleteDatabaseRequest, cb)
	assert(DeleteDatabaseRequest, "You must provide a DeleteDatabaseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.DeleteDatabase",
	}
	for header,value in pairs(DeleteDatabaseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteDatabaseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDatabase synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDatabaseRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDatabaseSync(DeleteDatabaseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDatabaseAsync(DeleteDatabaseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchDeleteTableVersion asynchronously, invoking a callback when done
-- @param BatchDeleteTableVersionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchDeleteTableVersionAsync(BatchDeleteTableVersionRequest, cb)
	assert(BatchDeleteTableVersionRequest, "You must provide a BatchDeleteTableVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.BatchDeleteTableVersion",
	}
	for header,value in pairs(BatchDeleteTableVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchDeleteTableVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchDeleteTableVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchDeleteTableVersionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchDeleteTableVersionSync(BatchDeleteTableVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchDeleteTableVersionAsync(BatchDeleteTableVersionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ResetJobBookmark asynchronously, invoking a callback when done
-- @param ResetJobBookmarkRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ResetJobBookmarkAsync(ResetJobBookmarkRequest, cb)
	assert(ResetJobBookmarkRequest, "You must provide a ResetJobBookmarkRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.ResetJobBookmark",
	}
	for header,value in pairs(ResetJobBookmarkRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ResetJobBookmarkRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ResetJobBookmark synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ResetJobBookmarkRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ResetJobBookmarkSync(ResetJobBookmarkRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ResetJobBookmarkAsync(ResetJobBookmarkRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDatabases asynchronously, invoking a callback when done
-- @param GetDatabasesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDatabasesAsync(GetDatabasesRequest, cb)
	assert(GetDatabasesRequest, "You must provide a GetDatabasesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetDatabases",
	}
	for header,value in pairs(GetDatabasesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDatabasesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDatabases synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDatabasesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDatabasesSync(GetDatabasesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDatabasesAsync(GetDatabasesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchDeleteConnection asynchronously, invoking a callback when done
-- @param BatchDeleteConnectionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchDeleteConnectionAsync(BatchDeleteConnectionRequest, cb)
	assert(BatchDeleteConnectionRequest, "You must provide a BatchDeleteConnectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.BatchDeleteConnection",
	}
	for header,value in pairs(BatchDeleteConnectionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchDeleteConnectionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchDeleteConnection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchDeleteConnectionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchDeleteConnectionSync(BatchDeleteConnectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchDeleteConnectionAsync(BatchDeleteConnectionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchGetPartition asynchronously, invoking a callback when done
-- @param BatchGetPartitionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchGetPartitionAsync(BatchGetPartitionRequest, cb)
	assert(BatchGetPartitionRequest, "You must provide a BatchGetPartitionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.BatchGetPartition",
	}
	for header,value in pairs(BatchGetPartitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchGetPartitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchGetPartition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchGetPartitionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchGetPartitionSync(BatchGetPartitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchGetPartitionAsync(BatchGetPartitionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteConnection asynchronously, invoking a callback when done
-- @param DeleteConnectionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteConnectionAsync(DeleteConnectionRequest, cb)
	assert(DeleteConnectionRequest, "You must provide a DeleteConnectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.DeleteConnection",
	}
	for header,value in pairs(DeleteConnectionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteConnectionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteConnection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteConnectionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteConnectionSync(DeleteConnectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteConnectionAsync(DeleteConnectionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeletePartition asynchronously, invoking a callback when done
-- @param DeletePartitionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeletePartitionAsync(DeletePartitionRequest, cb)
	assert(DeletePartitionRequest, "You must provide a DeletePartitionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.DeletePartition",
	}
	for header,value in pairs(DeletePartitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeletePartitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeletePartition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeletePartitionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeletePartitionSync(DeletePartitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeletePartitionAsync(DeletePartitionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateClassifier asynchronously, invoking a callback when done
-- @param CreateClassifierRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateClassifierAsync(CreateClassifierRequest, cb)
	assert(CreateClassifierRequest, "You must provide a CreateClassifierRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.CreateClassifier",
	}
	for header,value in pairs(CreateClassifierRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateClassifierRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateClassifier synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateClassifierRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateClassifierSync(CreateClassifierRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateClassifierAsync(CreateClassifierRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteJob asynchronously, invoking a callback when done
-- @param DeleteJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteJobAsync(DeleteJobRequest, cb)
	assert(DeleteJobRequest, "You must provide a DeleteJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.DeleteJob",
	}
	for header,value in pairs(DeleteJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteJobSync(DeleteJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteJobAsync(DeleteJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetJob asynchronously, invoking a callback when done
-- @param GetJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetJobAsync(GetJobRequest, cb)
	assert(GetJobRequest, "You must provide a GetJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetJob",
	}
	for header,value in pairs(GetJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetJobSync(GetJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetJobAsync(GetJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDatabase asynchronously, invoking a callback when done
-- @param GetDatabaseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDatabaseAsync(GetDatabaseRequest, cb)
	assert(GetDatabaseRequest, "You must provide a GetDatabaseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetDatabase",
	}
	for header,value in pairs(GetDatabaseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDatabaseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDatabase synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDatabaseRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDatabaseSync(GetDatabaseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDatabaseAsync(GetDatabaseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchStopJobRun asynchronously, invoking a callback when done
-- @param BatchStopJobRunRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchStopJobRunAsync(BatchStopJobRunRequest, cb)
	assert(BatchStopJobRunRequest, "You must provide a BatchStopJobRunRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.BatchStopJobRun",
	}
	for header,value in pairs(BatchStopJobRunRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchStopJobRunRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchStopJobRun synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchStopJobRunRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchStopJobRunSync(BatchStopJobRunRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchStopJobRunAsync(BatchStopJobRunRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteTableVersion asynchronously, invoking a callback when done
-- @param DeleteTableVersionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteTableVersionAsync(DeleteTableVersionRequest, cb)
	assert(DeleteTableVersionRequest, "You must provide a DeleteTableVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.DeleteTableVersion",
	}
	for header,value in pairs(DeleteTableVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteTableVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTableVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTableVersionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteTableVersionSync(DeleteTableVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTableVersionAsync(DeleteTableVersionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteClassifier asynchronously, invoking a callback when done
-- @param DeleteClassifierRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteClassifierAsync(DeleteClassifierRequest, cb)
	assert(DeleteClassifierRequest, "You must provide a DeleteClassifierRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.DeleteClassifier",
	}
	for header,value in pairs(DeleteClassifierRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteClassifierRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteClassifier synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteClassifierRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteClassifierSync(DeleteClassifierRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteClassifierAsync(DeleteClassifierRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTableVersions asynchronously, invoking a callback when done
-- @param GetTableVersionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetTableVersionsAsync(GetTableVersionsRequest, cb)
	assert(GetTableVersionsRequest, "You must provide a GetTableVersionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetTableVersions",
	}
	for header,value in pairs(GetTableVersionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetTableVersionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTableVersions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTableVersionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetTableVersionsSync(GetTableVersionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTableVersionsAsync(GetTableVersionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDevEndpoint asynchronously, invoking a callback when done
-- @param UpdateDevEndpointRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDevEndpointAsync(UpdateDevEndpointRequest, cb)
	assert(UpdateDevEndpointRequest, "You must provide a UpdateDevEndpointRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.UpdateDevEndpoint",
	}
	for header,value in pairs(UpdateDevEndpointRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateDevEndpointRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDevEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDevEndpointRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDevEndpointSync(UpdateDevEndpointRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDevEndpointAsync(UpdateDevEndpointRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTriggers asynchronously, invoking a callback when done
-- @param GetTriggersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetTriggersAsync(GetTriggersRequest, cb)
	assert(GetTriggersRequest, "You must provide a GetTriggersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetTriggers",
	}
	for header,value in pairs(GetTriggersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetTriggersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTriggers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTriggersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetTriggersSync(GetTriggersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTriggersAsync(GetTriggersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDevEndpoint asynchronously, invoking a callback when done
-- @param GetDevEndpointRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDevEndpointAsync(GetDevEndpointRequest, cb)
	assert(GetDevEndpointRequest, "You must provide a GetDevEndpointRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetDevEndpoint",
	}
	for header,value in pairs(GetDevEndpointRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDevEndpointRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDevEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDevEndpointRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDevEndpointSync(GetDevEndpointRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDevEndpointAsync(GetDevEndpointRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetJobRuns asynchronously, invoking a callback when done
-- @param GetJobRunsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetJobRunsAsync(GetJobRunsRequest, cb)
	assert(GetJobRunsRequest, "You must provide a GetJobRunsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetJobRuns",
	}
	for header,value in pairs(GetJobRunsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetJobRunsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetJobRuns synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetJobRunsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetJobRunsSync(GetJobRunsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetJobRunsAsync(GetJobRunsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDatabase asynchronously, invoking a callback when done
-- @param CreateDatabaseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDatabaseAsync(CreateDatabaseRequest, cb)
	assert(CreateDatabaseRequest, "You must provide a CreateDatabaseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.CreateDatabase",
	}
	for header,value in pairs(CreateDatabaseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDatabaseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDatabase synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDatabaseRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDatabaseSync(CreateDatabaseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDatabaseAsync(CreateDatabaseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartJobRun asynchronously, invoking a callback when done
-- @param StartJobRunRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartJobRunAsync(StartJobRunRequest, cb)
	assert(StartJobRunRequest, "You must provide a StartJobRunRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.StartJobRun",
	}
	for header,value in pairs(StartJobRunRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartJobRunRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartJobRun synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartJobRunRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartJobRunSync(StartJobRunRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartJobRunAsync(StartJobRunRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDevEndpoints asynchronously, invoking a callback when done
-- @param GetDevEndpointsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDevEndpointsAsync(GetDevEndpointsRequest, cb)
	assert(GetDevEndpointsRequest, "You must provide a GetDevEndpointsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetDevEndpoints",
	}
	for header,value in pairs(GetDevEndpointsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDevEndpointsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDevEndpoints synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDevEndpointsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDevEndpointsSync(GetDevEndpointsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDevEndpointsAsync(GetDevEndpointsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetClassifier asynchronously, invoking a callback when done
-- @param GetClassifierRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetClassifierAsync(GetClassifierRequest, cb)
	assert(GetClassifierRequest, "You must provide a GetClassifierRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetClassifier",
	}
	for header,value in pairs(GetClassifierRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetClassifierRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetClassifier synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetClassifierRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetClassifierSync(GetClassifierRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetClassifierAsync(GetClassifierRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateTrigger asynchronously, invoking a callback when done
-- @param UpdateTriggerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateTriggerAsync(UpdateTriggerRequest, cb)
	assert(UpdateTriggerRequest, "You must provide a UpdateTriggerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.UpdateTrigger",
	}
	for header,value in pairs(UpdateTriggerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateTriggerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateTrigger synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateTriggerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateTriggerSync(UpdateTriggerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateTriggerAsync(UpdateTriggerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPartition asynchronously, invoking a callback when done
-- @param GetPartitionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetPartitionAsync(GetPartitionRequest, cb)
	assert(GetPartitionRequest, "You must provide a GetPartitionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetPartition",
	}
	for header,value in pairs(GetPartitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetPartitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPartition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPartitionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetPartitionSync(GetPartitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPartitionAsync(GetPartitionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateSecurityConfiguration asynchronously, invoking a callback when done
-- @param CreateSecurityConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateSecurityConfigurationAsync(CreateSecurityConfigurationRequest, cb)
	assert(CreateSecurityConfigurationRequest, "You must provide a CreateSecurityConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.CreateSecurityConfiguration",
	}
	for header,value in pairs(CreateSecurityConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateSecurityConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateSecurityConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateSecurityConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateSecurityConfigurationSync(CreateSecurityConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateSecurityConfigurationAsync(CreateSecurityConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetResourcePolicy asynchronously, invoking a callback when done
-- @param GetResourcePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetResourcePolicyAsync(GetResourcePolicyRequest, cb)
	assert(GetResourcePolicyRequest, "You must provide a GetResourcePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetResourcePolicy",
	}
	for header,value in pairs(GetResourcePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetResourcePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetResourcePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetResourcePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetResourcePolicySync(GetResourcePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetResourcePolicyAsync(GetResourcePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTrigger asynchronously, invoking a callback when done
-- @param GetTriggerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetTriggerAsync(GetTriggerRequest, cb)
	assert(GetTriggerRequest, "You must provide a GetTriggerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetTrigger",
	}
	for header,value in pairs(GetTriggerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetTriggerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTrigger synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTriggerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetTriggerSync(GetTriggerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTriggerAsync(GetTriggerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartCrawlerSchedule asynchronously, invoking a callback when done
-- @param StartCrawlerScheduleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartCrawlerScheduleAsync(StartCrawlerScheduleRequest, cb)
	assert(StartCrawlerScheduleRequest, "You must provide a StartCrawlerScheduleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.StartCrawlerSchedule",
	}
	for header,value in pairs(StartCrawlerScheduleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartCrawlerScheduleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartCrawlerSchedule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartCrawlerScheduleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartCrawlerScheduleSync(StartCrawlerScheduleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartCrawlerScheduleAsync(StartCrawlerScheduleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutResourcePolicy asynchronously, invoking a callback when done
-- @param PutResourcePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutResourcePolicyAsync(PutResourcePolicyRequest, cb)
	assert(PutResourcePolicyRequest, "You must provide a PutResourcePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.PutResourcePolicy",
	}
	for header,value in pairs(PutResourcePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutResourcePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutResourcePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutResourcePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutResourcePolicySync(PutResourcePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutResourcePolicyAsync(PutResourcePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTableVersion asynchronously, invoking a callback when done
-- @param GetTableVersionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetTableVersionAsync(GetTableVersionRequest, cb)
	assert(GetTableVersionRequest, "You must provide a GetTableVersionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetTableVersion",
	}
	for header,value in pairs(GetTableVersionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetTableVersionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTableVersion synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTableVersionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetTableVersionSync(GetTableVersionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTableVersionAsync(GetTableVersionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteTrigger asynchronously, invoking a callback when done
-- @param DeleteTriggerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteTriggerAsync(DeleteTriggerRequest, cb)
	assert(DeleteTriggerRequest, "You must provide a DeleteTriggerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.DeleteTrigger",
	}
	for header,value in pairs(DeleteTriggerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteTriggerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTrigger synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTriggerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteTriggerSync(DeleteTriggerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTriggerAsync(DeleteTriggerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteSecurityConfiguration asynchronously, invoking a callback when done
-- @param DeleteSecurityConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteSecurityConfigurationAsync(DeleteSecurityConfigurationRequest, cb)
	assert(DeleteSecurityConfigurationRequest, "You must provide a DeleteSecurityConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.DeleteSecurityConfiguration",
	}
	for header,value in pairs(DeleteSecurityConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteSecurityConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteSecurityConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteSecurityConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteSecurityConfigurationSync(DeleteSecurityConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteSecurityConfigurationAsync(DeleteSecurityConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteResourcePolicy asynchronously, invoking a callback when done
-- @param DeleteResourcePolicyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteResourcePolicyAsync(DeleteResourcePolicyRequest, cb)
	assert(DeleteResourcePolicyRequest, "You must provide a DeleteResourcePolicyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.DeleteResourcePolicy",
	}
	for header,value in pairs(DeleteResourcePolicyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteResourcePolicyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteResourcePolicy synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteResourcePolicyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteResourcePolicySync(DeleteResourcePolicyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteResourcePolicyAsync(DeleteResourcePolicyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDataCatalogEncryptionSettings asynchronously, invoking a callback when done
-- @param GetDataCatalogEncryptionSettingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDataCatalogEncryptionSettingsAsync(GetDataCatalogEncryptionSettingsRequest, cb)
	assert(GetDataCatalogEncryptionSettingsRequest, "You must provide a GetDataCatalogEncryptionSettingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetDataCatalogEncryptionSettings",
	}
	for header,value in pairs(GetDataCatalogEncryptionSettingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDataCatalogEncryptionSettingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDataCatalogEncryptionSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDataCatalogEncryptionSettingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDataCatalogEncryptionSettingsSync(GetDataCatalogEncryptionSettingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDataCatalogEncryptionSettingsAsync(GetDataCatalogEncryptionSettingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSecurityConfigurations asynchronously, invoking a callback when done
-- @param GetSecurityConfigurationsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSecurityConfigurationsAsync(GetSecurityConfigurationsRequest, cb)
	assert(GetSecurityConfigurationsRequest, "You must provide a GetSecurityConfigurationsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetSecurityConfigurations",
	}
	for header,value in pairs(GetSecurityConfigurationsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetSecurityConfigurationsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSecurityConfigurations synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSecurityConfigurationsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSecurityConfigurationsSync(GetSecurityConfigurationsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSecurityConfigurationsAsync(GetSecurityConfigurationsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteCrawler asynchronously, invoking a callback when done
-- @param DeleteCrawlerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteCrawlerAsync(DeleteCrawlerRequest, cb)
	assert(DeleteCrawlerRequest, "You must provide a DeleteCrawlerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.DeleteCrawler",
	}
	for header,value in pairs(DeleteCrawlerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteCrawlerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteCrawler synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteCrawlerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteCrawlerSync(DeleteCrawlerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteCrawlerAsync(DeleteCrawlerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateClassifier asynchronously, invoking a callback when done
-- @param UpdateClassifierRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateClassifierAsync(UpdateClassifierRequest, cb)
	assert(UpdateClassifierRequest, "You must provide a UpdateClassifierRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.UpdateClassifier",
	}
	for header,value in pairs(UpdateClassifierRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateClassifierRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateClassifier synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateClassifierRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateClassifierSync(UpdateClassifierRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateClassifierAsync(UpdateClassifierRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateCrawler asynchronously, invoking a callback when done
-- @param CreateCrawlerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateCrawlerAsync(CreateCrawlerRequest, cb)
	assert(CreateCrawlerRequest, "You must provide a CreateCrawlerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.CreateCrawler",
	}
	for header,value in pairs(CreateCrawlerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateCrawlerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateCrawler synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateCrawlerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateCrawlerSync(CreateCrawlerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateCrawlerAsync(CreateCrawlerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDevEndpoint asynchronously, invoking a callback when done
-- @param CreateDevEndpointRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDevEndpointAsync(CreateDevEndpointRequest, cb)
	assert(CreateDevEndpointRequest, "You must provide a CreateDevEndpointRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.CreateDevEndpoint",
	}
	for header,value in pairs(CreateDevEndpointRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateDevEndpointRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDevEndpoint synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDevEndpointRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDevEndpointSync(CreateDevEndpointRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDevEndpointAsync(CreateDevEndpointRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateConnection asynchronously, invoking a callback when done
-- @param CreateConnectionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateConnectionAsync(CreateConnectionRequest, cb)
	assert(CreateConnectionRequest, "You must provide a CreateConnectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.CreateConnection",
	}
	for header,value in pairs(CreateConnectionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateConnectionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateConnection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateConnectionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateConnectionSync(CreateConnectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateConnectionAsync(CreateConnectionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteTable asynchronously, invoking a callback when done
-- @param DeleteTableRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteTableAsync(DeleteTableRequest, cb)
	assert(DeleteTableRequest, "You must provide a DeleteTableRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.DeleteTable",
	}
	for header,value in pairs(DeleteTableRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteTableRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteTable synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTableRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteTableSync(DeleteTableRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTableAsync(DeleteTableRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetJobRun asynchronously, invoking a callback when done
-- @param GetJobRunRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetJobRunAsync(GetJobRunRequest, cb)
	assert(GetJobRunRequest, "You must provide a GetJobRunRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetJobRun",
	}
	for header,value in pairs(GetJobRunRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetJobRunRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetJobRun synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetJobRunRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetJobRunSync(GetJobRunRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetJobRunAsync(GetJobRunRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchCreatePartition asynchronously, invoking a callback when done
-- @param BatchCreatePartitionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchCreatePartitionAsync(BatchCreatePartitionRequest, cb)
	assert(BatchCreatePartitionRequest, "You must provide a BatchCreatePartitionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.BatchCreatePartition",
	}
	for header,value in pairs(BatchCreatePartitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchCreatePartitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchCreatePartition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchCreatePartitionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchCreatePartitionSync(BatchCreatePartitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchCreatePartitionAsync(BatchCreatePartitionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartTrigger asynchronously, invoking a callback when done
-- @param StartTriggerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartTriggerAsync(StartTriggerRequest, cb)
	assert(StartTriggerRequest, "You must provide a StartTriggerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.StartTrigger",
	}
	for header,value in pairs(StartTriggerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartTriggerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartTrigger synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartTriggerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartTriggerSync(StartTriggerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartTriggerAsync(StartTriggerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call PutDataCatalogEncryptionSettings asynchronously, invoking a callback when done
-- @param PutDataCatalogEncryptionSettingsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.PutDataCatalogEncryptionSettingsAsync(PutDataCatalogEncryptionSettingsRequest, cb)
	assert(PutDataCatalogEncryptionSettingsRequest, "You must provide a PutDataCatalogEncryptionSettingsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.PutDataCatalogEncryptionSettings",
	}
	for header,value in pairs(PutDataCatalogEncryptionSettingsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", PutDataCatalogEncryptionSettingsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call PutDataCatalogEncryptionSettings synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param PutDataCatalogEncryptionSettingsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.PutDataCatalogEncryptionSettingsSync(PutDataCatalogEncryptionSettingsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.PutDataCatalogEncryptionSettingsAsync(PutDataCatalogEncryptionSettingsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetClassifiers asynchronously, invoking a callback when done
-- @param GetClassifiersRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetClassifiersAsync(GetClassifiersRequest, cb)
	assert(GetClassifiersRequest, "You must provide a GetClassifiersRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetClassifiers",
	}
	for header,value in pairs(GetClassifiersRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetClassifiersRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetClassifiers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetClassifiersRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetClassifiersSync(GetClassifiersRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetClassifiersAsync(GetClassifiersRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdatePartition asynchronously, invoking a callback when done
-- @param UpdatePartitionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdatePartitionAsync(UpdatePartitionRequest, cb)
	assert(UpdatePartitionRequest, "You must provide a UpdatePartitionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.UpdatePartition",
	}
	for header,value in pairs(UpdatePartitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdatePartitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdatePartition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdatePartitionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdatePartitionSync(UpdatePartitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdatePartitionAsync(UpdatePartitionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetJobs asynchronously, invoking a callback when done
-- @param GetJobsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetJobsAsync(GetJobsRequest, cb)
	assert(GetJobsRequest, "You must provide a GetJobsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetJobs",
	}
	for header,value in pairs(GetJobsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetJobsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetJobs synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetJobsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetJobsSync(GetJobsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetJobsAsync(GetJobsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateUserDefinedFunction asynchronously, invoking a callback when done
-- @param UpdateUserDefinedFunctionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateUserDefinedFunctionAsync(UpdateUserDefinedFunctionRequest, cb)
	assert(UpdateUserDefinedFunctionRequest, "You must provide a UpdateUserDefinedFunctionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.UpdateUserDefinedFunction",
	}
	for header,value in pairs(UpdateUserDefinedFunctionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateUserDefinedFunctionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateUserDefinedFunction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateUserDefinedFunctionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateUserDefinedFunctionSync(UpdateUserDefinedFunctionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateUserDefinedFunctionAsync(UpdateUserDefinedFunctionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetConnections asynchronously, invoking a callback when done
-- @param GetConnectionsRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetConnectionsAsync(GetConnectionsRequest, cb)
	assert(GetConnectionsRequest, "You must provide a GetConnectionsRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetConnections",
	}
	for header,value in pairs(GetConnectionsRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetConnectionsRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetConnections synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetConnectionsRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetConnectionsSync(GetConnectionsRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetConnectionsAsync(GetConnectionsRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetPlan asynchronously, invoking a callback when done
-- @param GetPlanRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetPlanAsync(GetPlanRequest, cb)
	assert(GetPlanRequest, "You must provide a GetPlanRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetPlan",
	}
	for header,value in pairs(GetPlanRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetPlanRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetPlan synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetPlanRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetPlanSync(GetPlanRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetPlanAsync(GetPlanRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTable asynchronously, invoking a callback when done
-- @param CreateTableRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateTableAsync(CreateTableRequest, cb)
	assert(CreateTableRequest, "You must provide a CreateTableRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.CreateTable",
	}
	for header,value in pairs(CreateTableRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateTableRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateTable synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTableRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateTableSync(CreateTableRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTableAsync(CreateTableRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateTrigger asynchronously, invoking a callback when done
-- @param CreateTriggerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateTriggerAsync(CreateTriggerRequest, cb)
	assert(CreateTriggerRequest, "You must provide a CreateTriggerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.CreateTrigger",
	}
	for header,value in pairs(CreateTriggerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateTriggerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateTrigger synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTriggerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateTriggerSync(CreateTriggerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTriggerAsync(CreateTriggerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopTrigger asynchronously, invoking a callback when done
-- @param StopTriggerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopTriggerAsync(StopTriggerRequest, cb)
	assert(StopTriggerRequest, "You must provide a StopTriggerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.StopTrigger",
	}
	for header,value in pairs(StopTriggerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopTriggerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopTrigger synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopTriggerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopTriggerSync(StopTriggerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopTriggerAsync(StopTriggerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteUserDefinedFunction asynchronously, invoking a callback when done
-- @param DeleteUserDefinedFunctionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteUserDefinedFunctionAsync(DeleteUserDefinedFunctionRequest, cb)
	assert(DeleteUserDefinedFunctionRequest, "You must provide a DeleteUserDefinedFunctionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.DeleteUserDefinedFunction",
	}
	for header,value in pairs(DeleteUserDefinedFunctionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteUserDefinedFunctionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteUserDefinedFunction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteUserDefinedFunctionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteUserDefinedFunctionSync(DeleteUserDefinedFunctionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteUserDefinedFunctionAsync(DeleteUserDefinedFunctionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSecurityConfiguration asynchronously, invoking a callback when done
-- @param GetSecurityConfigurationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSecurityConfigurationAsync(GetSecurityConfigurationRequest, cb)
	assert(GetSecurityConfigurationRequest, "You must provide a GetSecurityConfigurationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetSecurityConfiguration",
	}
	for header,value in pairs(GetSecurityConfigurationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetSecurityConfigurationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSecurityConfiguration synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSecurityConfigurationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSecurityConfigurationSync(GetSecurityConfigurationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSecurityConfigurationAsync(GetSecurityConfigurationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetConnection asynchronously, invoking a callback when done
-- @param GetConnectionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetConnectionAsync(GetConnectionRequest, cb)
	assert(GetConnectionRequest, "You must provide a GetConnectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetConnection",
	}
	for header,value in pairs(GetConnectionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetConnectionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetConnection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetConnectionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetConnectionSync(GetConnectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetConnectionAsync(GetConnectionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTables asynchronously, invoking a callback when done
-- @param GetTablesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetTablesAsync(GetTablesRequest, cb)
	assert(GetTablesRequest, "You must provide a GetTablesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetTables",
	}
	for header,value in pairs(GetTablesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetTablesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTables synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTablesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetTablesSync(GetTablesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTablesAsync(GetTablesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateScript asynchronously, invoking a callback when done
-- @param CreateScriptRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateScriptAsync(CreateScriptRequest, cb)
	assert(CreateScriptRequest, "You must provide a CreateScriptRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.CreateScript",
	}
	for header,value in pairs(CreateScriptRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateScriptRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateScript synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateScriptRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateScriptSync(CreateScriptRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateScriptAsync(CreateScriptRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCatalogImportStatus asynchronously, invoking a callback when done
-- @param GetCatalogImportStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCatalogImportStatusAsync(GetCatalogImportStatusRequest, cb)
	assert(GetCatalogImportStatusRequest, "You must provide a GetCatalogImportStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetCatalogImportStatus",
	}
	for header,value in pairs(GetCatalogImportStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetCatalogImportStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCatalogImportStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCatalogImportStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCatalogImportStatusSync(GetCatalogImportStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCatalogImportStatusAsync(GetCatalogImportStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopCrawlerSchedule asynchronously, invoking a callback when done
-- @param StopCrawlerScheduleRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopCrawlerScheduleAsync(StopCrawlerScheduleRequest, cb)
	assert(StopCrawlerScheduleRequest, "You must provide a StopCrawlerScheduleRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.StopCrawlerSchedule",
	}
	for header,value in pairs(StopCrawlerScheduleRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopCrawlerScheduleRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopCrawlerSchedule synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopCrawlerScheduleRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StopCrawlerScheduleSync(StopCrawlerScheduleRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopCrawlerScheduleAsync(StopCrawlerScheduleRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDataflowGraph asynchronously, invoking a callback when done
-- @param GetDataflowGraphRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDataflowGraphAsync(GetDataflowGraphRequest, cb)
	assert(GetDataflowGraphRequest, "You must provide a GetDataflowGraphRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetDataflowGraph",
	}
	for header,value in pairs(GetDataflowGraphRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetDataflowGraphRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDataflowGraph synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDataflowGraphRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDataflowGraphSync(GetDataflowGraphRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDataflowGraphAsync(GetDataflowGraphRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateJob asynchronously, invoking a callback when done
-- @param CreateJobRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateJobAsync(CreateJobRequest, cb)
	assert(CreateJobRequest, "You must provide a CreateJobRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.CreateJob",
	}
	for header,value in pairs(CreateJobRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateJobRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateJob synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateJobRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateJobSync(CreateJobRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateJobAsync(CreateJobRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetCrawler asynchronously, invoking a callback when done
-- @param GetCrawlerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetCrawlerAsync(GetCrawlerRequest, cb)
	assert(GetCrawlerRequest, "You must provide a GetCrawlerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetCrawler",
	}
	for header,value in pairs(GetCrawlerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetCrawlerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetCrawler synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetCrawlerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetCrawlerSync(GetCrawlerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetCrawlerAsync(GetCrawlerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateTable asynchronously, invoking a callback when done
-- @param UpdateTableRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateTableAsync(UpdateTableRequest, cb)
	assert(UpdateTableRequest, "You must provide a UpdateTableRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.UpdateTable",
	}
	for header,value in pairs(UpdateTableRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateTableRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateTable synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateTableRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateTableSync(UpdateTableRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateTableAsync(UpdateTableRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchDeletePartition asynchronously, invoking a callback when done
-- @param BatchDeletePartitionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchDeletePartitionAsync(BatchDeletePartitionRequest, cb)
	assert(BatchDeletePartitionRequest, "You must provide a BatchDeletePartitionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.BatchDeletePartition",
	}
	for header,value in pairs(BatchDeletePartitionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchDeletePartitionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchDeletePartition synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchDeletePartitionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.BatchDeletePartitionSync(BatchDeletePartitionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchDeletePartitionAsync(BatchDeletePartitionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateCrawler asynchronously, invoking a callback when done
-- @param UpdateCrawlerRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateCrawlerAsync(UpdateCrawlerRequest, cb)
	assert(UpdateCrawlerRequest, "You must provide a UpdateCrawlerRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.UpdateCrawler",
	}
	for header,value in pairs(UpdateCrawlerRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateCrawlerRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateCrawler synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateCrawlerRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateCrawlerSync(UpdateCrawlerRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateCrawlerAsync(UpdateCrawlerRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateUserDefinedFunction asynchronously, invoking a callback when done
-- @param CreateUserDefinedFunctionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateUserDefinedFunctionAsync(CreateUserDefinedFunctionRequest, cb)
	assert(CreateUserDefinedFunctionRequest, "You must provide a CreateUserDefinedFunctionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.CreateUserDefinedFunction",
	}
	for header,value in pairs(CreateUserDefinedFunctionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateUserDefinedFunctionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateUserDefinedFunction synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateUserDefinedFunctionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateUserDefinedFunctionSync(CreateUserDefinedFunctionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateUserDefinedFunctionAsync(CreateUserDefinedFunctionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ImportCatalogToGlue asynchronously, invoking a callback when done
-- @param ImportCatalogToGlueRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ImportCatalogToGlueAsync(ImportCatalogToGlueRequest, cb)
	assert(ImportCatalogToGlueRequest, "You must provide a ImportCatalogToGlueRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.ImportCatalogToGlue",
	}
	for header,value in pairs(ImportCatalogToGlueRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ImportCatalogToGlueRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ImportCatalogToGlue synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ImportCatalogToGlueRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ImportCatalogToGlueSync(ImportCatalogToGlueRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ImportCatalogToGlueAsync(ImportCatalogToGlueRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetMapping asynchronously, invoking a callback when done
-- @param GetMappingRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetMappingAsync(GetMappingRequest, cb)
	assert(GetMappingRequest, "You must provide a GetMappingRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetMapping",
	}
	for header,value in pairs(GetMappingRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetMappingRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetMapping synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetMappingRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetMappingSync(GetMappingRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetMappingAsync(GetMappingRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetTable asynchronously, invoking a callback when done
-- @param GetTableRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetTableAsync(GetTableRequest, cb)
	assert(GetTableRequest, "You must provide a GetTableRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.GetTable",
	}
	for header,value in pairs(GetTableRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetTableRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetTable synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTableRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetTableSync(GetTableRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTableAsync(GetTableRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDatabase asynchronously, invoking a callback when done
-- @param UpdateDatabaseRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDatabaseAsync(UpdateDatabaseRequest, cb)
	assert(UpdateDatabaseRequest, "You must provide a UpdateDatabaseRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.UpdateDatabase",
	}
	for header,value in pairs(UpdateDatabaseRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateDatabaseRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDatabase synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDatabaseRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDatabaseSync(UpdateDatabaseRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDatabaseAsync(UpdateDatabaseRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateConnection asynchronously, invoking a callback when done
-- @param UpdateConnectionRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateConnectionAsync(UpdateConnectionRequest, cb)
	assert(UpdateConnectionRequest, "You must provide a UpdateConnectionRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AWSGlue.UpdateConnection",
	}
	for header,value in pairs(UpdateConnectionRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", UpdateConnectionRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateConnection synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateConnectionRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateConnectionSync(UpdateConnectionRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateConnectionAsync(UpdateConnectionRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
