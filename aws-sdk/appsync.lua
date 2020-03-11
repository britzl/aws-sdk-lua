--- GENERATED CODE - DO NOT MODIFY
-- AWS AppSync (appsync-2017-07-25)

local M = {}

M.metadata = {
	api_version = "2017-07-25",
	json_version = "1.1",
	protocol = "rest-json",
	checksum_format = "",
	endpoint_prefix = "appsync",
	service_abbreviation = "AWSAppSync",
	service_full_name = "AWS AppSync",
	signature_version = "v4",
	target_prefix = "",
	timestamp_format = "",
	global_endpoint = "",
	uid = "appsync-2017-07-25",
}

local keys = {}
local asserts = {}

keys.BadRequestException = { ["message"] = true, nil }

function asserts.AssertBadRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BadRequestException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.BadRequestException[k], "BadRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BadRequestException
-- <p>The request is not well formed. For example, a value is invalid or a required field is missing. Check the field values, and try again. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return BadRequestException structure as a key-value pair table
function M.BadRequestException(args)
	assert(args, "You must provide an argument table when creating BadRequestException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertBadRequestException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDataSourcesResponse = { ["nextToken"] = true, ["dataSources"] = true, nil }

function asserts.AssertListDataSourcesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDataSourcesResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["dataSources"] then asserts.AssertDataSources(struct["dataSources"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDataSourcesResponse[k], "ListDataSourcesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDataSourcesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier to be passed in the next request to this operation to return the next set of items in the list.</p>
-- * dataSources [DataSources] <p>The <code>DataSource</code> objects.</p>
-- @return ListDataSourcesResponse structure as a key-value pair table
function M.ListDataSourcesResponse(args)
	assert(args, "You must provide an argument table when creating ListDataSourcesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["dataSources"] = args["dataSources"],
	}
	asserts.AssertListDataSourcesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTypeRequest = { ["typeName"] = true, ["apiId"] = true, ["format"] = true, ["definition"] = true, nil }

function asserts.AssertUpdateTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTypeRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	assert(struct["typeName"], "Expected key typeName to exist in table")
	assert(struct["format"], "Expected key format to exist in table")
	if struct["typeName"] then asserts.AssertResourceName(struct["typeName"]) end
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["format"] then asserts.AssertTypeDefinitionFormat(struct["format"]) end
	if struct["definition"] then asserts.AssertString(struct["definition"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTypeRequest[k], "UpdateTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTypeRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * typeName [ResourceName] <p>The new type name.</p>
-- * apiId [String] <p>The API ID.</p>
-- * format [TypeDefinitionFormat] <p>The new type format: SDL or JSON.</p>
-- * definition [String] <p>The new definition.</p>
-- Required key: apiId
-- Required key: typeName
-- Required key: format
-- @return UpdateTypeRequest structure as a key-value pair table
function M.UpdateTypeRequest(args)
	assert(args, "You must provide an argument table when creating UpdateTypeRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{typeName}"] = args["typeName"],
        ["{apiId}"] = args["apiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["typeName"] = args["typeName"],
		["apiId"] = args["apiId"],
		["format"] = args["format"],
		["definition"] = args["definition"],
	}
	asserts.AssertUpdateTypeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ElasticsearchDataSourceConfig = { ["endpoint"] = true, ["awsRegion"] = true, nil }

function asserts.AssertElasticsearchDataSourceConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ElasticsearchDataSourceConfig to be of type 'table'")
	assert(struct["endpoint"], "Expected key endpoint to exist in table")
	assert(struct["awsRegion"], "Expected key awsRegion to exist in table")
	if struct["endpoint"] then asserts.AssertString(struct["endpoint"]) end
	if struct["awsRegion"] then asserts.AssertString(struct["awsRegion"]) end
	for k,_ in pairs(struct) do
		assert(keys.ElasticsearchDataSourceConfig[k], "ElasticsearchDataSourceConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ElasticsearchDataSourceConfig
-- <p>Describes an Elasticsearch data source configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * endpoint [String] <p>The endpoint.</p>
-- * awsRegion [String] <p>The AWS region.</p>
-- Required key: endpoint
-- Required key: awsRegion
-- @return ElasticsearchDataSourceConfig structure as a key-value pair table
function M.ElasticsearchDataSourceConfig(args)
	assert(args, "You must provide an argument table when creating ElasticsearchDataSourceConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["endpoint"] = args["endpoint"],
		["awsRegion"] = args["awsRegion"],
	}
	asserts.AssertElasticsearchDataSourceConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTypeRequest = { ["typeName"] = true, ["apiId"] = true, ["format"] = true, nil }

function asserts.AssertGetTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTypeRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	assert(struct["typeName"], "Expected key typeName to exist in table")
	assert(struct["format"], "Expected key format to exist in table")
	if struct["typeName"] then asserts.AssertResourceName(struct["typeName"]) end
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["format"] then asserts.AssertTypeDefinitionFormat(struct["format"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTypeRequest[k], "GetTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTypeRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * typeName [ResourceName] <p>The type name.</p>
-- * apiId [String] <p>The API ID.</p>
-- * format [TypeDefinitionFormat] <p>The type format: SDL or JSON.</p>
-- Required key: apiId
-- Required key: typeName
-- Required key: format
-- @return GetTypeRequest structure as a key-value pair table
function M.GetTypeRequest(args)
	assert(args, "You must provide an argument table when creating GetTypeRequest")
    local query_args = { 
        ["format"] = args["format"],
    }
    local uri_args = { 
        ["{typeName}"] = args["typeName"],
        ["{apiId}"] = args["apiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["typeName"] = args["typeName"],
		["apiId"] = args["apiId"],
		["format"] = args["format"],
	}
	asserts.AssertGetTypeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetResolverRequest = { ["typeName"] = true, ["apiId"] = true, ["fieldName"] = true, nil }

function asserts.AssertGetResolverRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetResolverRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	assert(struct["typeName"], "Expected key typeName to exist in table")
	assert(struct["fieldName"], "Expected key fieldName to exist in table")
	if struct["typeName"] then asserts.AssertResourceName(struct["typeName"]) end
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["fieldName"] then asserts.AssertResourceName(struct["fieldName"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetResolverRequest[k], "GetResolverRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetResolverRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * typeName [ResourceName] <p>The resolver type name.</p>
-- * apiId [String] <p>The API ID.</p>
-- * fieldName [ResourceName] <p>The resolver field name.</p>
-- Required key: apiId
-- Required key: typeName
-- Required key: fieldName
-- @return GetResolverRequest structure as a key-value pair table
function M.GetResolverRequest(args)
	assert(args, "You must provide an argument table when creating GetResolverRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{typeName}"] = args["typeName"],
        ["{apiId}"] = args["apiId"],
        ["{fieldName}"] = args["fieldName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["typeName"] = args["typeName"],
		["apiId"] = args["apiId"],
		["fieldName"] = args["fieldName"],
	}
	asserts.AssertGetResolverRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTypesResponse = { ["nextToken"] = true, ["types"] = true, nil }

function asserts.AssertListTypesResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTypesResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["types"] then asserts.AssertTypeList(struct["types"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTypesResponse[k], "ListTypesResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTypesResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier to be passed in the next request to this operation to return the next set of items in the list.</p>
-- * types [TypeList] <p>The <code>Type</code> objects.</p>
-- @return ListTypesResponse structure as a key-value pair table
function M.ListTypesResponse(args)
	assert(args, "You must provide an argument table when creating ListTypesResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["types"] = args["types"],
	}
	asserts.AssertListTypesResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DynamodbDataSourceConfig = { ["tableName"] = true, ["useCallerCredentials"] = true, ["awsRegion"] = true, nil }

function asserts.AssertDynamodbDataSourceConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DynamodbDataSourceConfig to be of type 'table'")
	assert(struct["tableName"], "Expected key tableName to exist in table")
	assert(struct["awsRegion"], "Expected key awsRegion to exist in table")
	if struct["tableName"] then asserts.AssertString(struct["tableName"]) end
	if struct["useCallerCredentials"] then asserts.AssertBoolean(struct["useCallerCredentials"]) end
	if struct["awsRegion"] then asserts.AssertString(struct["awsRegion"]) end
	for k,_ in pairs(struct) do
		assert(keys.DynamodbDataSourceConfig[k], "DynamodbDataSourceConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DynamodbDataSourceConfig
-- <p>Describes a DynamoDB data source configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * tableName [String] <p>The table name.</p>
-- * useCallerCredentials [Boolean] <p>Set to TRUE to use Amazon Cognito credentials with this data source.</p>
-- * awsRegion [String] <p>The AWS region.</p>
-- Required key: tableName
-- Required key: awsRegion
-- @return DynamodbDataSourceConfig structure as a key-value pair table
function M.DynamodbDataSourceConfig(args)
	assert(args, "You must provide an argument table when creating DynamodbDataSourceConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["tableName"] = args["tableName"],
		["useCallerCredentials"] = args["useCallerCredentials"],
		["awsRegion"] = args["awsRegion"],
	}
	asserts.AssertDynamodbDataSourceConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDataSourceResponse = { ["dataSource"] = true, nil }

function asserts.AssertUpdateDataSourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDataSourceResponse to be of type 'table'")
	if struct["dataSource"] then asserts.AssertDataSource(struct["dataSource"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDataSourceResponse[k], "UpdateDataSourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDataSourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * dataSource [DataSource] <p>The updated <code>DataSource</code> object.</p>
-- @return UpdateDataSourceResponse structure as a key-value pair table
function M.UpdateDataSourceResponse(args)
	assert(args, "You must provide an argument table when creating UpdateDataSourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["dataSource"] = args["dataSource"],
	}
	asserts.AssertUpdateDataSourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateResolverRequest = { ["dataSourceName"] = true, ["apiId"] = true, ["requestMappingTemplate"] = true, ["typeName"] = true, ["fieldName"] = true, ["responseMappingTemplate"] = true, nil }

function asserts.AssertCreateResolverRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateResolverRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	assert(struct["typeName"], "Expected key typeName to exist in table")
	assert(struct["fieldName"], "Expected key fieldName to exist in table")
	assert(struct["dataSourceName"], "Expected key dataSourceName to exist in table")
	assert(struct["requestMappingTemplate"], "Expected key requestMappingTemplate to exist in table")
	if struct["dataSourceName"] then asserts.AssertResourceName(struct["dataSourceName"]) end
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["requestMappingTemplate"] then asserts.AssertMappingTemplate(struct["requestMappingTemplate"]) end
	if struct["typeName"] then asserts.AssertResourceName(struct["typeName"]) end
	if struct["fieldName"] then asserts.AssertResourceName(struct["fieldName"]) end
	if struct["responseMappingTemplate"] then asserts.AssertMappingTemplate(struct["responseMappingTemplate"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateResolverRequest[k], "CreateResolverRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateResolverRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * dataSourceName [ResourceName] <p>The name of the data source for which the resolver is being created.</p>
-- * apiId [String] <p>The ID for the GraphQL API for which the resolver is being created.</p>
-- * requestMappingTemplate [MappingTemplate] <p>The mapping template to be used for requests.</p> <p>A resolver uses a request mapping template to convert a GraphQL expression into a format that a data source can understand. Mapping templates are written in Apache Velocity Template Language (VTL).</p>
-- * typeName [ResourceName] <p>The name of the <code>Type</code>.</p>
-- * fieldName [ResourceName] <p>The name of the field to attach the resolver to.</p>
-- * responseMappingTemplate [MappingTemplate] <p>The mapping template to be used for responses from the data source.</p>
-- Required key: apiId
-- Required key: typeName
-- Required key: fieldName
-- Required key: dataSourceName
-- Required key: requestMappingTemplate
-- @return CreateResolverRequest structure as a key-value pair table
function M.CreateResolverRequest(args)
	assert(args, "You must provide an argument table when creating CreateResolverRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{apiId}"] = args["apiId"],
        ["{typeName}"] = args["typeName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["dataSourceName"] = args["dataSourceName"],
		["apiId"] = args["apiId"],
		["requestMappingTemplate"] = args["requestMappingTemplate"],
		["typeName"] = args["typeName"],
		["fieldName"] = args["fieldName"],
		["responseMappingTemplate"] = args["responseMappingTemplate"],
	}
	asserts.AssertCreateResolverRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UnauthorizedException = { ["message"] = true, nil }

function asserts.AssertUnauthorizedException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnauthorizedException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnauthorizedException[k], "UnauthorizedException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnauthorizedException
-- <p>You are not authorized to perform this operation.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return UnauthorizedException structure as a key-value pair table
function M.UnauthorizedException(args)
	assert(args, "You must provide an argument table when creating UnauthorizedException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertUnauthorizedException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteGraphqlApiResponse = { nil }

function asserts.AssertDeleteGraphqlApiResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGraphqlApiResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteGraphqlApiResponse[k], "DeleteGraphqlApiResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGraphqlApiResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteGraphqlApiResponse structure as a key-value pair table
function M.DeleteGraphqlApiResponse(args)
	assert(args, "You must provide an argument table when creating DeleteGraphqlApiResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteGraphqlApiResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListTypesRequest = { ["apiId"] = true, ["nextToken"] = true, ["maxResults"] = true, ["format"] = true, nil }

function asserts.AssertListTypesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListTypesRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	assert(struct["format"], "Expected key format to exist in table")
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	if struct["format"] then asserts.AssertTypeDefinitionFormat(struct["format"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListTypesRequest[k], "ListTypesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListTypesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiId [String] <p>The API ID.</p>
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list. </p>
-- * maxResults [MaxResults] <p>The maximum number of results you want the request to return.</p>
-- * format [TypeDefinitionFormat] <p>The type format: SDL or JSON.</p>
-- Required key: apiId
-- Required key: format
-- @return ListTypesRequest structure as a key-value pair table
function M.ListTypesRequest(args)
	assert(args, "You must provide an argument table when creating ListTypesRequest")
    local query_args = { 
        ["nextToken"] = args["nextToken"],
        ["maxResults"] = args["maxResults"],
        ["format"] = args["format"],
    }
    local uri_args = { 
        ["{apiId}"] = args["apiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["apiId"] = args["apiId"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
		["format"] = args["format"],
	}
	asserts.AssertListTypesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApiKeyValidityOutOfBoundsException = { ["message"] = true, nil }

function asserts.AssertApiKeyValidityOutOfBoundsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApiKeyValidityOutOfBoundsException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApiKeyValidityOutOfBoundsException[k], "ApiKeyValidityOutOfBoundsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApiKeyValidityOutOfBoundsException
-- <p>The API key expiration must be set to a value between 1 and 365 days from creation (for <code>CreateApiKey</code>) or from update (for <code>UpdateApiKey</code>).</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return ApiKeyValidityOutOfBoundsException structure as a key-value pair table
function M.ApiKeyValidityOutOfBoundsException(args)
	assert(args, "You must provide an argument table when creating ApiKeyValidityOutOfBoundsException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertApiKeyValidityOutOfBoundsException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateDataSourceRequest = { ["serviceRoleArn"] = true, ["elasticsearchConfig"] = true, ["name"] = true, ["apiId"] = true, ["dynamodbConfig"] = true, ["httpConfig"] = true, ["lambdaConfig"] = true, ["type"] = true, ["description"] = true, nil }

function asserts.AssertUpdateDataSourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateDataSourceRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["serviceRoleArn"] then asserts.AssertString(struct["serviceRoleArn"]) end
	if struct["elasticsearchConfig"] then asserts.AssertElasticsearchDataSourceConfig(struct["elasticsearchConfig"]) end
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["dynamodbConfig"] then asserts.AssertDynamodbDataSourceConfig(struct["dynamodbConfig"]) end
	if struct["httpConfig"] then asserts.AssertHttpDataSourceConfig(struct["httpConfig"]) end
	if struct["lambdaConfig"] then asserts.AssertLambdaDataSourceConfig(struct["lambdaConfig"]) end
	if struct["type"] then asserts.AssertDataSourceType(struct["type"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateDataSourceRequest[k], "UpdateDataSourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateDataSourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * serviceRoleArn [String] <p>The new service role ARN for the data source.</p>
-- * elasticsearchConfig [ElasticsearchDataSourceConfig] <p>The new Elasticsearch configuration.</p>
-- * name [ResourceName] <p>The new name for the data source.</p>
-- * apiId [String] <p>The API ID.</p>
-- * dynamodbConfig [DynamodbDataSourceConfig] <p>The new DynamoDB configuration.</p>
-- * httpConfig [HttpDataSourceConfig] <p>The new http endpoint configuration</p>
-- * lambdaConfig [LambdaDataSourceConfig] <p>The new Lambda configuration.</p>
-- * type [DataSourceType] <p>The new data source type.</p>
-- * description [String] <p>The new description for the data source.</p>
-- Required key: apiId
-- Required key: name
-- Required key: type
-- @return UpdateDataSourceRequest structure as a key-value pair table
function M.UpdateDataSourceRequest(args)
	assert(args, "You must provide an argument table when creating UpdateDataSourceRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{name}"] = args["name"],
        ["{apiId}"] = args["apiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["serviceRoleArn"] = args["serviceRoleArn"],
		["elasticsearchConfig"] = args["elasticsearchConfig"],
		["name"] = args["name"],
		["apiId"] = args["apiId"],
		["dynamodbConfig"] = args["dynamodbConfig"],
		["httpConfig"] = args["httpConfig"],
		["lambdaConfig"] = args["lambdaConfig"],
		["type"] = args["type"],
		["description"] = args["description"],
	}
	asserts.AssertUpdateDataSourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTypeRequest = { ["typeName"] = true, ["apiId"] = true, nil }

function asserts.AssertDeleteTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTypeRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	assert(struct["typeName"], "Expected key typeName to exist in table")
	if struct["typeName"] then asserts.AssertResourceName(struct["typeName"]) end
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteTypeRequest[k], "DeleteTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTypeRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * typeName [ResourceName] <p>The type name.</p>
-- * apiId [String] <p>The API ID.</p>
-- Required key: apiId
-- Required key: typeName
-- @return DeleteTypeRequest structure as a key-value pair table
function M.DeleteTypeRequest(args)
	assert(args, "You must provide an argument table when creating DeleteTypeRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{typeName}"] = args["typeName"],
        ["{apiId}"] = args["apiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["typeName"] = args["typeName"],
		["apiId"] = args["apiId"],
	}
	asserts.AssertDeleteTypeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GraphQLSchemaException = { ["message"] = true, nil }

function asserts.AssertGraphQLSchemaException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GraphQLSchemaException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.GraphQLSchemaException[k], "GraphQLSchemaException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GraphQLSchemaException
-- <p>The GraphQL schema is not valid.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return GraphQLSchemaException structure as a key-value pair table
function M.GraphQLSchemaException(args)
	assert(args, "You must provide an argument table when creating GraphQLSchemaException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertGraphQLSchemaException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetResolverResponse = { ["resolver"] = true, nil }

function asserts.AssertGetResolverResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetResolverResponse to be of type 'table'")
	if struct["resolver"] then asserts.AssertResolver(struct["resolver"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetResolverResponse[k], "GetResolverResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetResolverResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resolver [Resolver] <p>The <code>Resolver</code> object.</p>
-- @return GetResolverResponse structure as a key-value pair table
function M.GetResolverResponse(args)
	assert(args, "You must provide an argument table when creating GetResolverResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resolver"] = args["resolver"],
	}
	asserts.AssertGetResolverResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetTypeResponse = { ["type"] = true, nil }

function asserts.AssertGetTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetTypeResponse to be of type 'table'")
	if struct["type"] then asserts.AssertType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetTypeResponse[k], "GetTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetTypeResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * type [Type] <p>The <code>Type</code> object.</p>
-- @return GetTypeResponse structure as a key-value pair table
function M.GetTypeResponse(args)
	assert(args, "You must provide an argument table when creating GetTypeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["type"] = args["type"],
	}
	asserts.AssertGetTypeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetGraphqlApiRequest = { ["apiId"] = true, nil }

function asserts.AssertGetGraphqlApiRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGraphqlApiRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGraphqlApiRequest[k], "GetGraphqlApiRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGraphqlApiRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiId [String] <p>The API ID for the GraphQL API.</p>
-- Required key: apiId
-- @return GetGraphqlApiRequest structure as a key-value pair table
function M.GetGraphqlApiRequest(args)
	assert(args, "You must provide an argument table when creating GetGraphqlApiRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{apiId}"] = args["apiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["apiId"] = args["apiId"],
	}
	asserts.AssertGetGraphqlApiRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApiLimitExceededException = { ["message"] = true, nil }

function asserts.AssertApiLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApiLimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApiLimitExceededException[k], "ApiLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApiLimitExceededException
-- <p>The GraphQL API exceeded a limit. Try your request again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return ApiLimitExceededException structure as a key-value pair table
function M.ApiLimitExceededException(args)
	assert(args, "You must provide an argument table when creating ApiLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertApiLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateGraphqlApiRequest = { ["openIDConnectConfig"] = true, ["userPoolConfig"] = true, ["name"] = true, ["authenticationType"] = true, ["logConfig"] = true, nil }

function asserts.AssertCreateGraphqlApiRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGraphqlApiRequest to be of type 'table'")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["authenticationType"], "Expected key authenticationType to exist in table")
	if struct["openIDConnectConfig"] then asserts.AssertOpenIDConnectConfig(struct["openIDConnectConfig"]) end
	if struct["userPoolConfig"] then asserts.AssertUserPoolConfig(struct["userPoolConfig"]) end
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["authenticationType"] then asserts.AssertAuthenticationType(struct["authenticationType"]) end
	if struct["logConfig"] then asserts.AssertLogConfig(struct["logConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGraphqlApiRequest[k], "CreateGraphqlApiRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGraphqlApiRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * openIDConnectConfig [OpenIDConnectConfig] <p>The Open Id Connect configuration configuration.</p>
-- * userPoolConfig [UserPoolConfig] <p>The Amazon Cognito User Pool configuration.</p>
-- * name [String] <p>A user-supplied name for the <code>GraphqlApi</code>.</p>
-- * authenticationType [AuthenticationType] <p>The authentication type: API key, IAM, or Amazon Cognito User Pools.</p>
-- * logConfig [LogConfig] <p>The Amazon CloudWatch logs configuration.</p>
-- Required key: name
-- Required key: authenticationType
-- @return CreateGraphqlApiRequest structure as a key-value pair table
function M.CreateGraphqlApiRequest(args)
	assert(args, "You must provide an argument table when creating CreateGraphqlApiRequest")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["openIDConnectConfig"] = args["openIDConnectConfig"],
		["userPoolConfig"] = args["userPoolConfig"],
		["name"] = args["name"],
		["authenticationType"] = args["authenticationType"],
		["logConfig"] = args["logConfig"],
	}
	asserts.AssertCreateGraphqlApiRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LimitExceededException = { ["message"] = true, nil }

function asserts.AssertLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.LimitExceededException[k], "LimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LimitExceededException
-- <p>The request exceeded a limit. Try your request again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return LimitExceededException structure as a key-value pair table
function M.LimitExceededException(args)
	assert(args, "You must provide an argument table when creating LimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ConcurrentModificationException = { ["message"] = true, nil }

function asserts.AssertConcurrentModificationException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ConcurrentModificationException to be of type 'table'")
	if struct["message"] then asserts.AssertErrorMessage(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ConcurrentModificationException[k], "ConcurrentModificationException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ConcurrentModificationException
-- <p>Another modification is being made. That modification must complete before you can make your change. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [ErrorMessage] 
-- @return ConcurrentModificationException structure as a key-value pair table
function M.ConcurrentModificationException(args)
	assert(args, "You must provide an argument table when creating ConcurrentModificationException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertConcurrentModificationException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListApiKeysResponse = { ["nextToken"] = true, ["apiKeys"] = true, nil }

function asserts.AssertListApiKeysResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListApiKeysResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["apiKeys"] then asserts.AssertApiKeys(struct["apiKeys"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListApiKeysResponse[k], "ListApiKeysResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListApiKeysResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier to be passed in the next request to this operation to return the next set of items in the list.</p>
-- * apiKeys [ApiKeys] <p>The <code>ApiKey</code> objects.</p>
-- @return ListApiKeysResponse structure as a key-value pair table
function M.ListApiKeysResponse(args)
	assert(args, "You must provide an argument table when creating ListApiKeysResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["apiKeys"] = args["apiKeys"],
	}
	asserts.AssertListApiKeysResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDataSourceResponse = { ["dataSource"] = true, nil }

function asserts.AssertCreateDataSourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDataSourceResponse to be of type 'table'")
	if struct["dataSource"] then asserts.AssertDataSource(struct["dataSource"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDataSourceResponse[k], "CreateDataSourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDataSourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * dataSource [DataSource] <p>The <code>DataSource</code> object.</p>
-- @return CreateDataSourceResponse structure as a key-value pair table
function M.CreateDataSourceResponse(args)
	assert(args, "You must provide an argument table when creating CreateDataSourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["dataSource"] = args["dataSource"],
	}
	asserts.AssertCreateDataSourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.HttpDataSourceConfig = { ["endpoint"] = true, nil }

function asserts.AssertHttpDataSourceConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected HttpDataSourceConfig to be of type 'table'")
	if struct["endpoint"] then asserts.AssertString(struct["endpoint"]) end
	for k,_ in pairs(struct) do
		assert(keys.HttpDataSourceConfig[k], "HttpDataSourceConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type HttpDataSourceConfig
-- <p>Describes a Http data source configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * endpoint [String] <p>The Http url endpoint. You can either specify the domain name or ip and port combination and the url scheme must be http(s). If the port is not specified, AWS AppSync will use the default port 80 for http endpoint and port 443 for https endpoints.</p>
-- @return HttpDataSourceConfig structure as a key-value pair table
function M.HttpDataSourceConfig(args)
	assert(args, "You must provide an argument table when creating HttpDataSourceConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["endpoint"] = args["endpoint"],
	}
	asserts.AssertHttpDataSourceConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteResolverRequest = { ["typeName"] = true, ["apiId"] = true, ["fieldName"] = true, nil }

function asserts.AssertDeleteResolverRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteResolverRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	assert(struct["typeName"], "Expected key typeName to exist in table")
	assert(struct["fieldName"], "Expected key fieldName to exist in table")
	if struct["typeName"] then asserts.AssertResourceName(struct["typeName"]) end
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["fieldName"] then asserts.AssertResourceName(struct["fieldName"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteResolverRequest[k], "DeleteResolverRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteResolverRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * typeName [ResourceName] <p>The name of the resolver type.</p>
-- * apiId [String] <p>The API ID.</p>
-- * fieldName [ResourceName] <p>The resolver field name.</p>
-- Required key: apiId
-- Required key: typeName
-- Required key: fieldName
-- @return DeleteResolverRequest structure as a key-value pair table
function M.DeleteResolverRequest(args)
	assert(args, "You must provide an argument table when creating DeleteResolverRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{typeName}"] = args["typeName"],
        ["{apiId}"] = args["apiId"],
        ["{fieldName}"] = args["fieldName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["typeName"] = args["typeName"],
		["apiId"] = args["apiId"],
		["fieldName"] = args["fieldName"],
	}
	asserts.AssertDeleteResolverRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Type = { ["definition"] = true, ["format"] = true, ["name"] = true, ["arn"] = true, ["description"] = true, nil }

function asserts.AssertType(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Type to be of type 'table'")
	if struct["definition"] then asserts.AssertString(struct["definition"]) end
	if struct["format"] then asserts.AssertTypeDefinitionFormat(struct["format"]) end
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	if struct["arn"] then asserts.AssertString(struct["arn"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.Type[k], "Type contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Type
-- <p>Describes a type.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * definition [String] <p>The type definition.</p>
-- * format [TypeDefinitionFormat] <p>The type format: SDL or JSON.</p>
-- * name [ResourceName] <p>The type name.</p>
-- * arn [String] <p>The type ARN.</p>
-- * description [String] <p>The type description.</p>
-- @return Type structure as a key-value pair table
function M.Type(args)
	assert(args, "You must provide an argument table when creating Type")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["definition"] = args["definition"],
		["format"] = args["format"],
		["name"] = args["name"],
		["arn"] = args["arn"],
		["description"] = args["description"],
	}
	asserts.AssertType(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GraphqlApi = { ["name"] = true, ["authenticationType"] = true, ["apiId"] = true, ["logConfig"] = true, ["uris"] = true, ["openIDConnectConfig"] = true, ["arn"] = true, ["userPoolConfig"] = true, nil }

function asserts.AssertGraphqlApi(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GraphqlApi to be of type 'table'")
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	if struct["authenticationType"] then asserts.AssertAuthenticationType(struct["authenticationType"]) end
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["logConfig"] then asserts.AssertLogConfig(struct["logConfig"]) end
	if struct["uris"] then asserts.AssertMapOfStringToString(struct["uris"]) end
	if struct["openIDConnectConfig"] then asserts.AssertOpenIDConnectConfig(struct["openIDConnectConfig"]) end
	if struct["arn"] then asserts.AssertString(struct["arn"]) end
	if struct["userPoolConfig"] then asserts.AssertUserPoolConfig(struct["userPoolConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.GraphqlApi[k], "GraphqlApi contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GraphqlApi
-- <p>Describes a GraphQL API.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [ResourceName] <p>The API name.</p>
-- * authenticationType [AuthenticationType] <p>The authentication type.</p>
-- * apiId [String] <p>The API ID.</p>
-- * logConfig [LogConfig] <p>The Amazon CloudWatch Logs configuration.</p>
-- * uris [MapOfStringToString] <p>The URIs.</p>
-- * openIDConnectConfig [OpenIDConnectConfig] <p>The Open Id Connect configuration.</p>
-- * arn [String] <p>The ARN.</p>
-- * userPoolConfig [UserPoolConfig] <p>The Amazon Cognito User Pool configuration.</p>
-- @return GraphqlApi structure as a key-value pair table
function M.GraphqlApi(args)
	assert(args, "You must provide an argument table when creating GraphqlApi")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["authenticationType"] = args["authenticationType"],
		["apiId"] = args["apiId"],
		["logConfig"] = args["logConfig"],
		["uris"] = args["uris"],
		["openIDConnectConfig"] = args["openIDConnectConfig"],
		["arn"] = args["arn"],
		["userPoolConfig"] = args["userPoolConfig"],
	}
	asserts.AssertGraphqlApi(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteApiKeyResponse = { nil }

function asserts.AssertDeleteApiKeyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApiKeyResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteApiKeyResponse[k], "DeleteApiKeyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApiKeyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteApiKeyResponse structure as a key-value pair table
function M.DeleteApiKeyResponse(args)
	assert(args, "You must provide an argument table when creating DeleteApiKeyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteApiKeyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListDataSourcesRequest = { ["apiId"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListDataSourcesRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListDataSourcesRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListDataSourcesRequest[k], "ListDataSourcesRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListDataSourcesRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiId [String] <p>The API ID.</p>
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list. </p>
-- * maxResults [MaxResults] <p>The maximum number of results you want the request to return.</p>
-- Required key: apiId
-- @return ListDataSourcesRequest structure as a key-value pair table
function M.ListDataSourcesRequest(args)
	assert(args, "You must provide an argument table when creating ListDataSourcesRequest")
    local query_args = { 
        ["nextToken"] = args["nextToken"],
        ["maxResults"] = args["maxResults"],
    }
    local uri_args = { 
        ["{apiId}"] = args["apiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["apiId"] = args["apiId"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListDataSourcesRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListApiKeysRequest = { ["apiId"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListApiKeysRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListApiKeysRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListApiKeysRequest[k], "ListApiKeysRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListApiKeysRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiId [String] <p>The API ID.</p>
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.</p>
-- * maxResults [MaxResults] <p>The maximum number of results you want the request to return.</p>
-- Required key: apiId
-- @return ListApiKeysRequest structure as a key-value pair table
function M.ListApiKeysRequest(args)
	assert(args, "You must provide an argument table when creating ListApiKeysRequest")
    local query_args = { 
        ["nextToken"] = args["nextToken"],
        ["maxResults"] = args["maxResults"],
    }
    local uri_args = { 
        ["{apiId}"] = args["apiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["apiId"] = args["apiId"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListApiKeysRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.NotFoundException = { ["message"] = true, nil }

function asserts.AssertNotFoundException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NotFoundException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.NotFoundException[k], "NotFoundException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NotFoundException
-- <p>The resource specified in the request was not found. Check the resource and try again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return NotFoundException structure as a key-value pair table
function M.NotFoundException(args)
	assert(args, "You must provide an argument table when creating NotFoundException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertNotFoundException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateGraphqlApiResponse = { ["graphqlApi"] = true, nil }

function asserts.AssertUpdateGraphqlApiResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGraphqlApiResponse to be of type 'table'")
	if struct["graphqlApi"] then asserts.AssertGraphqlApi(struct["graphqlApi"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGraphqlApiResponse[k], "UpdateGraphqlApiResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGraphqlApiResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * graphqlApi [GraphqlApi] <p>The updated <code>GraphqlApi</code> object.</p>
-- @return UpdateGraphqlApiResponse structure as a key-value pair table
function M.UpdateGraphqlApiResponse(args)
	assert(args, "You must provide an argument table when creating UpdateGraphqlApiResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["graphqlApi"] = args["graphqlApi"],
	}
	asserts.AssertUpdateGraphqlApiResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateResolverResponse = { ["resolver"] = true, nil }

function asserts.AssertUpdateResolverResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateResolverResponse to be of type 'table'")
	if struct["resolver"] then asserts.AssertResolver(struct["resolver"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateResolverResponse[k], "UpdateResolverResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateResolverResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resolver [Resolver] <p>The updated <code>Resolver</code> object.</p>
-- @return UpdateResolverResponse structure as a key-value pair table
function M.UpdateResolverResponse(args)
	assert(args, "You must provide an argument table when creating UpdateResolverResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resolver"] = args["resolver"],
	}
	asserts.AssertUpdateResolverResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTypeResponse = { ["type"] = true, nil }

function asserts.AssertCreateTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTypeResponse to be of type 'table'")
	if struct["type"] then asserts.AssertType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTypeResponse[k], "CreateTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTypeResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * type [Type] <p>The <code>Type</code> object.</p>
-- @return CreateTypeResponse structure as a key-value pair table
function M.CreateTypeResponse(args)
	assert(args, "You must provide an argument table when creating CreateTypeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["type"] = args["type"],
	}
	asserts.AssertCreateTypeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListGraphqlApisRequest = { ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListGraphqlApisRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGraphqlApisRequest to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGraphqlApisRequest[k], "ListGraphqlApisRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGraphqlApisRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list. </p>
-- * maxResults [MaxResults] <p>The maximum number of results you want the request to return.</p>
-- @return ListGraphqlApisRequest structure as a key-value pair table
function M.ListGraphqlApisRequest(args)
	assert(args, "You must provide an argument table when creating ListGraphqlApisRequest")
    local query_args = { 
        ["nextToken"] = args["nextToken"],
        ["maxResults"] = args["maxResults"],
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListGraphqlApisRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDataSourceRequest = { ["apiId"] = true, ["name"] = true, nil }

function asserts.AssertGetDataSourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDataSourceRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDataSourceRequest[k], "GetDataSourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDataSourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiId [String] <p>The API ID.</p>
-- * name [ResourceName] <p>The name of the data source.</p>
-- Required key: apiId
-- Required key: name
-- @return GetDataSourceRequest structure as a key-value pair table
function M.GetDataSourceRequest(args)
	assert(args, "You must provide an argument table when creating GetDataSourceRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{apiId}"] = args["apiId"],
        ["{name}"] = args["name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["apiId"] = args["apiId"],
		["name"] = args["name"],
	}
	asserts.AssertGetDataSourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteApiKeyRequest = { ["apiId"] = true, ["id"] = true, nil }

function asserts.AssertDeleteApiKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteApiKeyRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["id"] then asserts.AssertString(struct["id"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteApiKeyRequest[k], "DeleteApiKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteApiKeyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiId [String] <p>The API ID.</p>
-- * id [String] <p>The ID for the API key.</p>
-- Required key: apiId
-- Required key: id
-- @return DeleteApiKeyRequest structure as a key-value pair table
function M.DeleteApiKeyRequest(args)
	assert(args, "You must provide an argument table when creating DeleteApiKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{apiId}"] = args["apiId"],
        ["{id}"] = args["id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["apiId"] = args["apiId"],
		["id"] = args["id"],
	}
	asserts.AssertDeleteApiKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.OpenIDConnectConfig = { ["iatTTL"] = true, ["authTTL"] = true, ["clientId"] = true, ["issuer"] = true, nil }

function asserts.AssertOpenIDConnectConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected OpenIDConnectConfig to be of type 'table'")
	assert(struct["issuer"], "Expected key issuer to exist in table")
	if struct["iatTTL"] then asserts.AssertLong(struct["iatTTL"]) end
	if struct["authTTL"] then asserts.AssertLong(struct["authTTL"]) end
	if struct["clientId"] then asserts.AssertString(struct["clientId"]) end
	if struct["issuer"] then asserts.AssertString(struct["issuer"]) end
	for k,_ in pairs(struct) do
		assert(keys.OpenIDConnectConfig[k], "OpenIDConnectConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type OpenIDConnectConfig
-- <p>Describes an Open Id Connect configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * iatTTL [Long] <p>The number of milliseconds a token is valid after being issued to a user.</p>
-- * authTTL [Long] <p>The number of milliseconds a token is valid after being authenticated.</p>
-- * clientId [String] <p>The client identifier of the Relying party at the OpenID Provider. This identifier is typically obtained when the Relying party is registered with the OpenID Provider. You can specify a regular expression so the AWS AppSync can validate against multiple client identifiers at a time</p>
-- * issuer [String] <p>The issuer for the open id connect configuration. The issuer returned by discovery MUST exactly match the value of iss in the ID Token.</p>
-- Required key: issuer
-- @return OpenIDConnectConfig structure as a key-value pair table
function M.OpenIDConnectConfig(args)
	assert(args, "You must provide an argument table when creating OpenIDConnectConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["iatTTL"] = args["iatTTL"],
		["authTTL"] = args["authTTL"],
		["clientId"] = args["clientId"],
		["issuer"] = args["issuer"],
	}
	asserts.AssertOpenIDConnectConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateTypeResponse = { ["type"] = true, nil }

function asserts.AssertUpdateTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateTypeResponse to be of type 'table'")
	if struct["type"] then asserts.AssertType(struct["type"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateTypeResponse[k], "UpdateTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateTypeResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * type [Type] <p>The updated <code>Type</code> object.</p>
-- @return UpdateTypeResponse structure as a key-value pair table
function M.UpdateTypeResponse(args)
	assert(args, "You must provide an argument table when creating UpdateTypeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["type"] = args["type"],
	}
	asserts.AssertUpdateTypeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DataSource = { ["serviceRoleArn"] = true, ["elasticsearchConfig"] = true, ["name"] = true, ["dynamodbConfig"] = true, ["httpConfig"] = true, ["dataSourceArn"] = true, ["lambdaConfig"] = true, ["type"] = true, ["description"] = true, nil }

function asserts.AssertDataSource(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DataSource to be of type 'table'")
	if struct["serviceRoleArn"] then asserts.AssertString(struct["serviceRoleArn"]) end
	if struct["elasticsearchConfig"] then asserts.AssertElasticsearchDataSourceConfig(struct["elasticsearchConfig"]) end
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	if struct["dynamodbConfig"] then asserts.AssertDynamodbDataSourceConfig(struct["dynamodbConfig"]) end
	if struct["httpConfig"] then asserts.AssertHttpDataSourceConfig(struct["httpConfig"]) end
	if struct["dataSourceArn"] then asserts.AssertString(struct["dataSourceArn"]) end
	if struct["lambdaConfig"] then asserts.AssertLambdaDataSourceConfig(struct["lambdaConfig"]) end
	if struct["type"] then asserts.AssertDataSourceType(struct["type"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.DataSource[k], "DataSource contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DataSource
-- <p>Describes a data source.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * serviceRoleArn [String] <p>The IAM service role ARN for the data source. The system assumes this role when accessing the data source.</p>
-- * elasticsearchConfig [ElasticsearchDataSourceConfig] <p>Amazon Elasticsearch settings.</p>
-- * name [ResourceName] <p>The name of the data source.</p>
-- * dynamodbConfig [DynamodbDataSourceConfig] <p>DynamoDB settings.</p>
-- * httpConfig [HttpDataSourceConfig] <p>Http endpoint settings.</p>
-- * dataSourceArn [String] <p>The data source ARN.</p>
-- * lambdaConfig [LambdaDataSourceConfig] <p>Lambda settings.</p>
-- * type [DataSourceType] <p>The type of the data source.</p> <ul> <li> <p> <b>AMAZON_DYNAMODB</b>: The data source is an Amazon DynamoDB table.</p> </li> <li> <p> <b>AMAZON_ELASTICSEARCH</b>: The data source is an Amazon Elasticsearch Service domain.</p> </li> <li> <p> <b>AWS_LAMBDA</b>: The data source is an AWS Lambda function.</p> </li> <li> <p> <b>NONE</b>: There is no data source. This type is used when when you wish to invoke a GraphQL operation without connecting to a data source, such as performing data transformation with resolvers or triggering a subscription to be invoked from a mutation.</p> </li> <li> <p> <b>HTTP</b>: The data source is an HTTP endpoint.</p> </li> </ul>
-- * description [String] <p>The description of the data source.</p>
-- @return DataSource structure as a key-value pair table
function M.DataSource(args)
	assert(args, "You must provide an argument table when creating DataSource")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["serviceRoleArn"] = args["serviceRoleArn"],
		["elasticsearchConfig"] = args["elasticsearchConfig"],
		["name"] = args["name"],
		["dynamodbConfig"] = args["dynamodbConfig"],
		["httpConfig"] = args["httpConfig"],
		["dataSourceArn"] = args["dataSourceArn"],
		["lambdaConfig"] = args["lambdaConfig"],
		["type"] = args["type"],
		["description"] = args["description"],
	}
	asserts.AssertDataSource(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApiKeyLimitExceededException = { ["message"] = true, nil }

function asserts.AssertApiKeyLimitExceededException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApiKeyLimitExceededException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApiKeyLimitExceededException[k], "ApiKeyLimitExceededException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApiKeyLimitExceededException
-- <p>The API key exceeded a limit. Try your request again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return ApiKeyLimitExceededException structure as a key-value pair table
function M.ApiKeyLimitExceededException(args)
	assert(args, "You must provide an argument table when creating ApiKeyLimitExceededException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertApiKeyLimitExceededException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateDataSourceRequest = { ["serviceRoleArn"] = true, ["elasticsearchConfig"] = true, ["name"] = true, ["apiId"] = true, ["dynamodbConfig"] = true, ["httpConfig"] = true, ["lambdaConfig"] = true, ["type"] = true, ["description"] = true, nil }

function asserts.AssertCreateDataSourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateDataSourceRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	assert(struct["type"], "Expected key type to exist in table")
	if struct["serviceRoleArn"] then asserts.AssertString(struct["serviceRoleArn"]) end
	if struct["elasticsearchConfig"] then asserts.AssertElasticsearchDataSourceConfig(struct["elasticsearchConfig"]) end
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["dynamodbConfig"] then asserts.AssertDynamodbDataSourceConfig(struct["dynamodbConfig"]) end
	if struct["httpConfig"] then asserts.AssertHttpDataSourceConfig(struct["httpConfig"]) end
	if struct["lambdaConfig"] then asserts.AssertLambdaDataSourceConfig(struct["lambdaConfig"]) end
	if struct["type"] then asserts.AssertDataSourceType(struct["type"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateDataSourceRequest[k], "CreateDataSourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateDataSourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * serviceRoleArn [String] <p>The IAM service role ARN for the data source. The system assumes this role when accessing the data source.</p>
-- * elasticsearchConfig [ElasticsearchDataSourceConfig] <p>Amazon Elasticsearch settings.</p>
-- * name [ResourceName] <p>A user-supplied name for the <code>DataSource</code>.</p>
-- * apiId [String] <p>The API ID for the GraphQL API for the <code>DataSource</code>.</p>
-- * dynamodbConfig [DynamodbDataSourceConfig] <p>DynamoDB settings.</p>
-- * httpConfig [HttpDataSourceConfig] <p>Http endpoint settings.</p>
-- * lambdaConfig [LambdaDataSourceConfig] <p>AWS Lambda settings.</p>
-- * type [DataSourceType] <p>The type of the <code>DataSource</code>.</p>
-- * description [String] <p>A description of the <code>DataSource</code>.</p>
-- Required key: apiId
-- Required key: name
-- Required key: type
-- @return CreateDataSourceRequest structure as a key-value pair table
function M.CreateDataSourceRequest(args)
	assert(args, "You must provide an argument table when creating CreateDataSourceRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{apiId}"] = args["apiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["serviceRoleArn"] = args["serviceRoleArn"],
		["elasticsearchConfig"] = args["elasticsearchConfig"],
		["name"] = args["name"],
		["apiId"] = args["apiId"],
		["dynamodbConfig"] = args["dynamodbConfig"],
		["httpConfig"] = args["httpConfig"],
		["lambdaConfig"] = args["lambdaConfig"],
		["type"] = args["type"],
		["description"] = args["description"],
	}
	asserts.AssertCreateDataSourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateGraphqlApiRequest = { ["name"] = true, ["authenticationType"] = true, ["apiId"] = true, ["logConfig"] = true, ["openIDConnectConfig"] = true, ["userPoolConfig"] = true, nil }

function asserts.AssertUpdateGraphqlApiRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateGraphqlApiRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["name"] then asserts.AssertString(struct["name"]) end
	if struct["authenticationType"] then asserts.AssertAuthenticationType(struct["authenticationType"]) end
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["logConfig"] then asserts.AssertLogConfig(struct["logConfig"]) end
	if struct["openIDConnectConfig"] then asserts.AssertOpenIDConnectConfig(struct["openIDConnectConfig"]) end
	if struct["userPoolConfig"] then asserts.AssertUserPoolConfig(struct["userPoolConfig"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateGraphqlApiRequest[k], "UpdateGraphqlApiRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateGraphqlApiRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * name [String] <p>The new name for the <code>GraphqlApi</code> object.</p>
-- * authenticationType [AuthenticationType] <p>The new authentication type for the <code>GraphqlApi</code> object.</p>
-- * apiId [String] <p>The API ID.</p>
-- * logConfig [LogConfig] <p>The Amazon CloudWatch logs configuration for the <code>GraphqlApi</code> object.</p>
-- * openIDConnectConfig [OpenIDConnectConfig] <p>The Open Id Connect configuration configuration for the <code>GraphqlApi</code> object.</p>
-- * userPoolConfig [UserPoolConfig] <p>The new Amazon Cognito User Pool configuration for the <code>GraphqlApi</code> object.</p>
-- Required key: apiId
-- Required key: name
-- @return UpdateGraphqlApiRequest structure as a key-value pair table
function M.UpdateGraphqlApiRequest(args)
	assert(args, "You must provide an argument table when creating UpdateGraphqlApiRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{apiId}"] = args["apiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["name"] = args["name"],
		["authenticationType"] = args["authenticationType"],
		["apiId"] = args["apiId"],
		["logConfig"] = args["logConfig"],
		["openIDConnectConfig"] = args["openIDConnectConfig"],
		["userPoolConfig"] = args["userPoolConfig"],
	}
	asserts.AssertUpdateGraphqlApiRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateApiKeyResponse = { ["apiKey"] = true, nil }

function asserts.AssertUpdateApiKeyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApiKeyResponse to be of type 'table'")
	if struct["apiKey"] then asserts.AssertApiKey(struct["apiKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApiKeyResponse[k], "UpdateApiKeyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApiKeyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiKey [ApiKey] <p>The API key.</p>
-- @return UpdateApiKeyResponse structure as a key-value pair table
function M.UpdateApiKeyResponse(args)
	assert(args, "You must provide an argument table when creating UpdateApiKeyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["apiKey"] = args["apiKey"],
	}
	asserts.AssertUpdateApiKeyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetDataSourceResponse = { ["dataSource"] = true, nil }

function asserts.AssertGetDataSourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetDataSourceResponse to be of type 'table'")
	if struct["dataSource"] then asserts.AssertDataSource(struct["dataSource"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetDataSourceResponse[k], "GetDataSourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetDataSourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * dataSource [DataSource] <p>The <code>DataSource</code> object.</p>
-- @return GetDataSourceResponse structure as a key-value pair table
function M.GetDataSourceResponse(args)
	assert(args, "You must provide an argument table when creating GetDataSourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["dataSource"] = args["dataSource"],
	}
	asserts.AssertGetDataSourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteResolverResponse = { nil }

function asserts.AssertDeleteResolverResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteResolverResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteResolverResponse[k], "DeleteResolverResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteResolverResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteResolverResponse structure as a key-value pair table
function M.DeleteResolverResponse(args)
	assert(args, "You must provide an argument table when creating DeleteResolverResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteResolverResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListResolversRequest = { ["typeName"] = true, ["apiId"] = true, ["nextToken"] = true, ["maxResults"] = true, nil }

function asserts.AssertListResolversRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResolversRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	assert(struct["typeName"], "Expected key typeName to exist in table")
	if struct["typeName"] then asserts.AssertString(struct["typeName"]) end
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["maxResults"] then asserts.AssertMaxResults(struct["maxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListResolversRequest[k], "ListResolversRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResolversRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * typeName [String] <p>The type name.</p>
-- * apiId [String] <p>The API ID.</p>
-- * nextToken [PaginationToken] <p>An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list. </p>
-- * maxResults [MaxResults] <p>The maximum number of results you want the request to return.</p>
-- Required key: apiId
-- Required key: typeName
-- @return ListResolversRequest structure as a key-value pair table
function M.ListResolversRequest(args)
	assert(args, "You must provide an argument table when creating ListResolversRequest")
    local query_args = { 
        ["nextToken"] = args["nextToken"],
        ["maxResults"] = args["maxResults"],
    }
    local uri_args = { 
        ["{typeName}"] = args["typeName"],
        ["{apiId}"] = args["apiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["typeName"] = args["typeName"],
		["apiId"] = args["apiId"],
		["nextToken"] = args["nextToken"],
		["maxResults"] = args["maxResults"],
	}
	asserts.AssertListResolversRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartSchemaCreationRequest = { ["definition"] = true, ["apiId"] = true, nil }

function asserts.AssertStartSchemaCreationRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartSchemaCreationRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	assert(struct["definition"], "Expected key definition to exist in table")
	if struct["definition"] then asserts.AssertBlob(struct["definition"]) end
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartSchemaCreationRequest[k], "StartSchemaCreationRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartSchemaCreationRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * definition [Blob] <p>The schema definition, in GraphQL schema language format.</p>
-- * apiId [String] <p>The API ID.</p>
-- Required key: apiId
-- Required key: definition
-- @return StartSchemaCreationRequest structure as a key-value pair table
function M.StartSchemaCreationRequest(args)
	assert(args, "You must provide an argument table when creating StartSchemaCreationRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{apiId}"] = args["apiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["definition"] = args["definition"],
		["apiId"] = args["apiId"],
	}
	asserts.AssertStartSchemaCreationRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateGraphqlApiResponse = { ["graphqlApi"] = true, nil }

function asserts.AssertCreateGraphqlApiResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateGraphqlApiResponse to be of type 'table'")
	if struct["graphqlApi"] then asserts.AssertGraphqlApi(struct["graphqlApi"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateGraphqlApiResponse[k], "CreateGraphqlApiResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateGraphqlApiResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * graphqlApi [GraphqlApi] <p>The <code>GraphqlApi</code>.</p>
-- @return CreateGraphqlApiResponse structure as a key-value pair table
function M.CreateGraphqlApiResponse(args)
	assert(args, "You must provide an argument table when creating CreateGraphqlApiResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["graphqlApi"] = args["graphqlApi"],
	}
	asserts.AssertCreateGraphqlApiResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListGraphqlApisResponse = { ["nextToken"] = true, ["graphqlApis"] = true, nil }

function asserts.AssertListGraphqlApisResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListGraphqlApisResponse to be of type 'table'")
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	if struct["graphqlApis"] then asserts.AssertGraphqlApis(struct["graphqlApis"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListGraphqlApisResponse[k], "ListGraphqlApisResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListGraphqlApisResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * nextToken [PaginationToken] <p>An identifier to be passed in the next request to this operation to return the next set of items in the list.</p>
-- * graphqlApis [GraphqlApis] <p>The <code>GraphqlApi</code> objects.</p>
-- @return ListGraphqlApisResponse structure as a key-value pair table
function M.ListGraphqlApisResponse(args)
	assert(args, "You must provide an argument table when creating ListGraphqlApisResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["nextToken"] = args["nextToken"],
		["graphqlApis"] = args["graphqlApis"],
	}
	asserts.AssertListGraphqlApisResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.InternalFailureException = { ["message"] = true, nil }

function asserts.AssertInternalFailureException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalFailureException to be of type 'table'")
	if struct["message"] then asserts.AssertString(struct["message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalFailureException[k], "InternalFailureException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalFailureException
-- <p>An internal AWS AppSync error occurred. Try your request again.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * message [String] 
-- @return InternalFailureException structure as a key-value pair table
function M.InternalFailureException(args)
	assert(args, "You must provide an argument table when creating InternalFailureException")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["message"] = args["message"],
	}
	asserts.AssertInternalFailureException(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateApiKeyRequest = { ["apiId"] = true, ["expires"] = true, ["id"] = true, ["description"] = true, nil }

function asserts.AssertUpdateApiKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateApiKeyRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	assert(struct["id"], "Expected key id to exist in table")
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["expires"] then asserts.AssertLong(struct["expires"]) end
	if struct["id"] then asserts.AssertString(struct["id"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateApiKeyRequest[k], "UpdateApiKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateApiKeyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiId [String] <p>The ID for the GraphQL API</p>
-- * expires [Long] <p>The time from update time after which the API key expires. The date is represented as seconds since the epoch. For more information, see .</p>
-- * id [String] <p>The API key ID.</p>
-- * description [String] <p>A description of the purpose of the API key.</p>
-- Required key: apiId
-- Required key: id
-- @return UpdateApiKeyRequest structure as a key-value pair table
function M.UpdateApiKeyRequest(args)
	assert(args, "You must provide an argument table when creating UpdateApiKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{apiId}"] = args["apiId"],
        ["{id}"] = args["id"],
    }
    local header_args = { 
    }
	local all_args = { 
		["apiId"] = args["apiId"],
		["expires"] = args["expires"],
		["id"] = args["id"],
		["description"] = args["description"],
	}
	asserts.AssertUpdateApiKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateApiKeyResponse = { ["apiKey"] = true, nil }

function asserts.AssertCreateApiKeyResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApiKeyResponse to be of type 'table'")
	if struct["apiKey"] then asserts.AssertApiKey(struct["apiKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateApiKeyResponse[k], "CreateApiKeyResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApiKeyResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiKey [ApiKey] <p>The API key.</p>
-- @return CreateApiKeyResponse structure as a key-value pair table
function M.CreateApiKeyResponse(args)
	assert(args, "You must provide an argument table when creating CreateApiKeyResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["apiKey"] = args["apiKey"],
	}
	asserts.AssertCreateApiKeyResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSchemaCreationStatusRequest = { ["apiId"] = true, nil }

function asserts.AssertGetSchemaCreationStatusRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSchemaCreationStatusRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSchemaCreationStatusRequest[k], "GetSchemaCreationStatusRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSchemaCreationStatusRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiId [String] <p>The API ID.</p>
-- Required key: apiId
-- @return GetSchemaCreationStatusRequest structure as a key-value pair table
function M.GetSchemaCreationStatusRequest(args)
	assert(args, "You must provide an argument table when creating GetSchemaCreationStatusRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{apiId}"] = args["apiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["apiId"] = args["apiId"],
	}
	asserts.AssertGetSchemaCreationStatusRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetGraphqlApiResponse = { ["graphqlApi"] = true, nil }

function asserts.AssertGetGraphqlApiResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetGraphqlApiResponse to be of type 'table'")
	if struct["graphqlApi"] then asserts.AssertGraphqlApi(struct["graphqlApi"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetGraphqlApiResponse[k], "GetGraphqlApiResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetGraphqlApiResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * graphqlApi [GraphqlApi] <p>The <code>GraphqlApi</code> object.</p>
-- @return GetGraphqlApiResponse structure as a key-value pair table
function M.GetGraphqlApiResponse(args)
	assert(args, "You must provide an argument table when creating GetGraphqlApiResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["graphqlApi"] = args["graphqlApi"],
	}
	asserts.AssertGetGraphqlApiResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDataSourceRequest = { ["apiId"] = true, ["name"] = true, nil }

function asserts.AssertDeleteDataSourceRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDataSourceRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	assert(struct["name"], "Expected key name to exist in table")
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["name"] then asserts.AssertResourceName(struct["name"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteDataSourceRequest[k], "DeleteDataSourceRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDataSourceRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiId [String] <p>The API ID.</p>
-- * name [ResourceName] <p>The name of the data source.</p>
-- Required key: apiId
-- Required key: name
-- @return DeleteDataSourceRequest structure as a key-value pair table
function M.DeleteDataSourceRequest(args)
	assert(args, "You must provide an argument table when creating DeleteDataSourceRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{apiId}"] = args["apiId"],
        ["{name}"] = args["name"],
    }
    local header_args = { 
    }
	local all_args = { 
		["apiId"] = args["apiId"],
		["name"] = args["name"],
	}
	asserts.AssertDeleteDataSourceRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.StartSchemaCreationResponse = { ["status"] = true, nil }

function asserts.AssertStartSchemaCreationResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartSchemaCreationResponse to be of type 'table'")
	if struct["status"] then asserts.AssertSchemaStatus(struct["status"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartSchemaCreationResponse[k], "StartSchemaCreationResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartSchemaCreationResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [SchemaStatus] <p>The current state of the schema (PROCESSING, ACTIVE, or DELETING). Once the schema is in the ACTIVE state, you can add data.</p>
-- @return StartSchemaCreationResponse structure as a key-value pair table
function M.StartSchemaCreationResponse(args)
	assert(args, "You must provide an argument table when creating StartSchemaCreationResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
	}
	asserts.AssertStartSchemaCreationResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteGraphqlApiRequest = { ["apiId"] = true, nil }

function asserts.AssertDeleteGraphqlApiRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteGraphqlApiRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteGraphqlApiRequest[k], "DeleteGraphqlApiRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteGraphqlApiRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiId [String] <p>The API ID.</p>
-- Required key: apiId
-- @return DeleteGraphqlApiRequest structure as a key-value pair table
function M.DeleteGraphqlApiRequest(args)
	assert(args, "You must provide an argument table when creating DeleteGraphqlApiRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{apiId}"] = args["apiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["apiId"] = args["apiId"],
	}
	asserts.AssertDeleteGraphqlApiRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LambdaDataSourceConfig = { ["lambdaFunctionArn"] = true, nil }

function asserts.AssertLambdaDataSourceConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LambdaDataSourceConfig to be of type 'table'")
	assert(struct["lambdaFunctionArn"], "Expected key lambdaFunctionArn to exist in table")
	if struct["lambdaFunctionArn"] then asserts.AssertString(struct["lambdaFunctionArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.LambdaDataSourceConfig[k], "LambdaDataSourceConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LambdaDataSourceConfig
-- <p>Describes a Lambda data source configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * lambdaFunctionArn [String] <p>The ARN for the Lambda function.</p>
-- Required key: lambdaFunctionArn
-- @return LambdaDataSourceConfig structure as a key-value pair table
function M.LambdaDataSourceConfig(args)
	assert(args, "You must provide an argument table when creating LambdaDataSourceConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["lambdaFunctionArn"] = args["lambdaFunctionArn"],
	}
	asserts.AssertLambdaDataSourceConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UserPoolConfig = { ["defaultAction"] = true, ["appIdClientRegex"] = true, ["awsRegion"] = true, ["userPoolId"] = true, nil }

function asserts.AssertUserPoolConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UserPoolConfig to be of type 'table'")
	assert(struct["userPoolId"], "Expected key userPoolId to exist in table")
	assert(struct["awsRegion"], "Expected key awsRegion to exist in table")
	assert(struct["defaultAction"], "Expected key defaultAction to exist in table")
	if struct["defaultAction"] then asserts.AssertDefaultAction(struct["defaultAction"]) end
	if struct["appIdClientRegex"] then asserts.AssertString(struct["appIdClientRegex"]) end
	if struct["awsRegion"] then asserts.AssertString(struct["awsRegion"]) end
	if struct["userPoolId"] then asserts.AssertString(struct["userPoolId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UserPoolConfig[k], "UserPoolConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UserPoolConfig
-- <p>Describes an Amazon Cognito User Pool configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * defaultAction [DefaultAction] <p>The action that you want your GraphQL API to take when a request that uses Amazon Cognito User Pool authentication doesn't match the Amazon Cognito User Pool configuration.</p>
-- * appIdClientRegex [String] <p>A regular expression for validating the incoming Amazon Cognito User Pool app client ID.</p>
-- * awsRegion [String] <p>The AWS region in which the user pool was created.</p>
-- * userPoolId [String] <p>The user pool ID.</p>
-- Required key: userPoolId
-- Required key: awsRegion
-- Required key: defaultAction
-- @return UserPoolConfig structure as a key-value pair table
function M.UserPoolConfig(args)
	assert(args, "You must provide an argument table when creating UserPoolConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["defaultAction"] = args["defaultAction"],
		["appIdClientRegex"] = args["appIdClientRegex"],
		["awsRegion"] = args["awsRegion"],
		["userPoolId"] = args["userPoolId"],
	}
	asserts.AssertUserPoolConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ApiKey = { ["expires"] = true, ["id"] = true, ["description"] = true, nil }

function asserts.AssertApiKey(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ApiKey to be of type 'table'")
	if struct["expires"] then asserts.AssertLong(struct["expires"]) end
	if struct["id"] then asserts.AssertString(struct["id"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.ApiKey[k], "ApiKey contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ApiKey
-- <p>Describes an API key.</p> <p>Customers invoke AWS AppSync GraphQL APIs with API keys as an identity mechanism. There are two key versions:</p> <p> <b>da1</b>: This version was introduced at launch in November 2017. These keys always expire after 7 days. Key expiration is managed by DynamoDB TTL. The keys will cease to be valid after Feb 21, 2018 and should not be used after that date.</p> <ul> <li> <p> <code>ListApiKeys</code> returns the expiration time in milliseconds.</p> </li> <li> <p> <code>CreateApiKey</code> returns the expiration time in milliseconds.</p> </li> <li> <p> <code>UpdateApiKey</code> is not available for this key version.</p> </li> <li> <p> <code>DeleteApiKey</code> deletes the item from the table.</p> </li> <li> <p>Expiration is stored in DynamoDB as milliseconds. This results in a bug where keys are not automatically deleted because DynamoDB expects the TTL to be stored in seconds. As a one-time action, we will delete these keys from the table after Feb 21, 2018.</p> </li> </ul> <p> <b>da2</b>: This version was introduced in February 2018 when AppSync added support to extend key expiration.</p> <ul> <li> <p> <code>ListApiKeys</code> returns the expiration time in seconds.</p> </li> <li> <p> <code>CreateApiKey</code> returns the expiration time in seconds and accepts a user-provided expiration time in seconds.</p> </li> <li> <p> <code>UpdateApiKey</code> returns the expiration time in seconds and accepts a user-provided expiration time in seconds. Key expiration can only be updated while the key has not expired.</p> </li> <li> <p> <code>DeleteApiKey</code> deletes the item from the table.</p> </li> <li> <p>Expiration is stored in DynamoDB as seconds.</p> </li> </ul>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * expires [Long] <p>The time after which the API key expires. The date is represented as seconds since the epoch, rounded down to the nearest hour.</p>
-- * id [String] <p>The API key ID.</p>
-- * description [String] <p>A description of the purpose of the API key.</p>
-- @return ApiKey structure as a key-value pair table
function M.ApiKey(args)
	assert(args, "You must provide an argument table when creating ApiKey")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["expires"] = args["expires"],
		["id"] = args["id"],
		["description"] = args["description"],
	}
	asserts.AssertApiKey(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetIntrospectionSchemaResponse = { ["schema"] = true, nil }

function asserts.AssertGetIntrospectionSchemaResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIntrospectionSchemaResponse to be of type 'table'")
	if struct["schema"] then asserts.AssertBlob(struct["schema"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIntrospectionSchemaResponse[k], "GetIntrospectionSchemaResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIntrospectionSchemaResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * schema [Blob] <p>The schema, in GraphQL Schema Definition Language (SDL) format.</p> <p>For more information, see the <a href="http://graphql.org/learn/schema/">GraphQL SDL documentation</a>.</p>
-- @return GetIntrospectionSchemaResponse structure as a key-value pair table
function M.GetIntrospectionSchemaResponse(args)
	assert(args, "You must provide an argument table when creating GetIntrospectionSchemaResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["schema"] = args["schema"],
	}
	asserts.AssertGetIntrospectionSchemaResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteTypeResponse = { nil }

function asserts.AssertDeleteTypeResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteTypeResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteTypeResponse[k], "DeleteTypeResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteTypeResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteTypeResponse structure as a key-value pair table
function M.DeleteTypeResponse(args)
	assert(args, "You must provide an argument table when creating DeleteTypeResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteTypeResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.Resolver = { ["dataSourceName"] = true, ["requestMappingTemplate"] = true, ["resolverArn"] = true, ["typeName"] = true, ["fieldName"] = true, ["responseMappingTemplate"] = true, nil }

function asserts.AssertResolver(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Resolver to be of type 'table'")
	if struct["dataSourceName"] then asserts.AssertResourceName(struct["dataSourceName"]) end
	if struct["requestMappingTemplate"] then asserts.AssertMappingTemplate(struct["requestMappingTemplate"]) end
	if struct["resolverArn"] then asserts.AssertString(struct["resolverArn"]) end
	if struct["typeName"] then asserts.AssertResourceName(struct["typeName"]) end
	if struct["fieldName"] then asserts.AssertResourceName(struct["fieldName"]) end
	if struct["responseMappingTemplate"] then asserts.AssertMappingTemplate(struct["responseMappingTemplate"]) end
	for k,_ in pairs(struct) do
		assert(keys.Resolver[k], "Resolver contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Resolver
-- <p>Describes a resolver.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * dataSourceName [ResourceName] <p>The resolver data source name.</p>
-- * requestMappingTemplate [MappingTemplate] <p>The request mapping template.</p>
-- * resolverArn [String] <p>The resolver ARN.</p>
-- * typeName [ResourceName] <p>The resolver type name.</p>
-- * fieldName [ResourceName] <p>The resolver field name.</p>
-- * responseMappingTemplate [MappingTemplate] <p>The response mapping template.</p>
-- @return Resolver structure as a key-value pair table
function M.Resolver(args)
	assert(args, "You must provide an argument table when creating Resolver")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["dataSourceName"] = args["dataSourceName"],
		["requestMappingTemplate"] = args["requestMappingTemplate"],
		["resolverArn"] = args["resolverArn"],
		["typeName"] = args["typeName"],
		["fieldName"] = args["fieldName"],
		["responseMappingTemplate"] = args["responseMappingTemplate"],
	}
	asserts.AssertResolver(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.ListResolversResponse = { ["resolvers"] = true, ["nextToken"] = true, nil }

function asserts.AssertListResolversResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListResolversResponse to be of type 'table'")
	if struct["resolvers"] then asserts.AssertResolvers(struct["resolvers"]) end
	if struct["nextToken"] then asserts.AssertPaginationToken(struct["nextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListResolversResponse[k], "ListResolversResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListResolversResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resolvers [Resolvers] <p>The <code>Resolver</code> objects.</p>
-- * nextToken [PaginationToken] <p>An identifier to be passed in the next request to this operation to return the next set of items in the list.</p>
-- @return ListResolversResponse structure as a key-value pair table
function M.ListResolversResponse(args)
	assert(args, "You must provide an argument table when creating ListResolversResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resolvers"] = args["resolvers"],
		["nextToken"] = args["nextToken"],
	}
	asserts.AssertListResolversResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.UpdateResolverRequest = { ["dataSourceName"] = true, ["apiId"] = true, ["requestMappingTemplate"] = true, ["typeName"] = true, ["fieldName"] = true, ["responseMappingTemplate"] = true, nil }

function asserts.AssertUpdateResolverRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UpdateResolverRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	assert(struct["typeName"], "Expected key typeName to exist in table")
	assert(struct["fieldName"], "Expected key fieldName to exist in table")
	assert(struct["dataSourceName"], "Expected key dataSourceName to exist in table")
	assert(struct["requestMappingTemplate"], "Expected key requestMappingTemplate to exist in table")
	if struct["dataSourceName"] then asserts.AssertResourceName(struct["dataSourceName"]) end
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["requestMappingTemplate"] then asserts.AssertMappingTemplate(struct["requestMappingTemplate"]) end
	if struct["typeName"] then asserts.AssertResourceName(struct["typeName"]) end
	if struct["fieldName"] then asserts.AssertResourceName(struct["fieldName"]) end
	if struct["responseMappingTemplate"] then asserts.AssertMappingTemplate(struct["responseMappingTemplate"]) end
	for k,_ in pairs(struct) do
		assert(keys.UpdateResolverRequest[k], "UpdateResolverRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UpdateResolverRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * dataSourceName [ResourceName] <p>The new data source name.</p>
-- * apiId [String] <p>The API ID.</p>
-- * requestMappingTemplate [MappingTemplate] <p>The new request mapping template.</p>
-- * typeName [ResourceName] <p>The new type name.</p>
-- * fieldName [ResourceName] <p>The new field name.</p>
-- * responseMappingTemplate [MappingTemplate] <p>The new response mapping template.</p>
-- Required key: apiId
-- Required key: typeName
-- Required key: fieldName
-- Required key: dataSourceName
-- Required key: requestMappingTemplate
-- @return UpdateResolverRequest structure as a key-value pair table
function M.UpdateResolverRequest(args)
	assert(args, "You must provide an argument table when creating UpdateResolverRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{apiId}"] = args["apiId"],
        ["{typeName}"] = args["typeName"],
        ["{fieldName}"] = args["fieldName"],
    }
    local header_args = { 
    }
	local all_args = { 
		["dataSourceName"] = args["dataSourceName"],
		["apiId"] = args["apiId"],
		["requestMappingTemplate"] = args["requestMappingTemplate"],
		["typeName"] = args["typeName"],
		["fieldName"] = args["fieldName"],
		["responseMappingTemplate"] = args["responseMappingTemplate"],
	}
	asserts.AssertUpdateResolverRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetIntrospectionSchemaRequest = { ["apiId"] = true, ["format"] = true, nil }

function asserts.AssertGetIntrospectionSchemaRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetIntrospectionSchemaRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	assert(struct["format"], "Expected key format to exist in table")
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["format"] then asserts.AssertOutputType(struct["format"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetIntrospectionSchemaRequest[k], "GetIntrospectionSchemaRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetIntrospectionSchemaRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiId [String] <p>The API ID.</p>
-- * format [OutputType] <p>The schema format: SDL or JSON.</p>
-- Required key: apiId
-- Required key: format
-- @return GetIntrospectionSchemaRequest structure as a key-value pair table
function M.GetIntrospectionSchemaRequest(args)
	assert(args, "You must provide an argument table when creating GetIntrospectionSchemaRequest")
    local query_args = { 
        ["format"] = args["format"],
    }
    local uri_args = { 
        ["{apiId}"] = args["apiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["apiId"] = args["apiId"],
		["format"] = args["format"],
	}
	asserts.AssertGetIntrospectionSchemaRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.DeleteDataSourceResponse = { nil }

function asserts.AssertDeleteDataSourceResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteDataSourceResponse to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteDataSourceResponse[k], "DeleteDataSourceResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteDataSourceResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteDataSourceResponse structure as a key-value pair table
function M.DeleteDataSourceResponse(args)
	assert(args, "You must provide an argument table when creating DeleteDataSourceResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteDataSourceResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetSchemaCreationStatusResponse = { ["status"] = true, ["details"] = true, nil }

function asserts.AssertGetSchemaCreationStatusResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetSchemaCreationStatusResponse to be of type 'table'")
	if struct["status"] then asserts.AssertSchemaStatus(struct["status"]) end
	if struct["details"] then asserts.AssertString(struct["details"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetSchemaCreationStatusResponse[k], "GetSchemaCreationStatusResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetSchemaCreationStatusResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * status [SchemaStatus] <p>The current state of the schema (PROCESSING, ACTIVE, or DELETING). Once the schema is in the ACTIVE state, you can add data.</p>
-- * details [String] <p>Detailed information about the status of the schema creation operation.</p>
-- @return GetSchemaCreationStatusResponse structure as a key-value pair table
function M.GetSchemaCreationStatusResponse(args)
	assert(args, "You must provide an argument table when creating GetSchemaCreationStatusResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["status"] = args["status"],
		["details"] = args["details"],
	}
	asserts.AssertGetSchemaCreationStatusResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateResolverResponse = { ["resolver"] = true, nil }

function asserts.AssertCreateResolverResponse(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateResolverResponse to be of type 'table'")
	if struct["resolver"] then asserts.AssertResolver(struct["resolver"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateResolverResponse[k], "CreateResolverResponse contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateResolverResponse
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * resolver [Resolver] <p>The <code>Resolver</code> object.</p>
-- @return CreateResolverResponse structure as a key-value pair table
function M.CreateResolverResponse(args)
	assert(args, "You must provide an argument table when creating CreateResolverResponse")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["resolver"] = args["resolver"],
	}
	asserts.AssertCreateResolverResponse(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateTypeRequest = { ["definition"] = true, ["apiId"] = true, ["format"] = true, nil }

function asserts.AssertCreateTypeRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateTypeRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	assert(struct["definition"], "Expected key definition to exist in table")
	assert(struct["format"], "Expected key format to exist in table")
	if struct["definition"] then asserts.AssertString(struct["definition"]) end
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["format"] then asserts.AssertTypeDefinitionFormat(struct["format"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateTypeRequest[k], "CreateTypeRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateTypeRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * definition [String] <p>The type definition, in GraphQL Schema Definition Language (SDL) format.</p> <p>For more information, see the <a href="http://graphql.org/learn/schema/">GraphQL SDL documentation</a>.</p>
-- * apiId [String] <p>The API ID.</p>
-- * format [TypeDefinitionFormat] <p>The type format: SDL or JSON.</p>
-- Required key: apiId
-- Required key: definition
-- Required key: format
-- @return CreateTypeRequest structure as a key-value pair table
function M.CreateTypeRequest(args)
	assert(args, "You must provide an argument table when creating CreateTypeRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{apiId}"] = args["apiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["definition"] = args["definition"],
		["apiId"] = args["apiId"],
		["format"] = args["format"],
	}
	asserts.AssertCreateTypeRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.LogConfig = { ["fieldLogLevel"] = true, ["cloudWatchLogsRoleArn"] = true, nil }

function asserts.AssertLogConfig(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected LogConfig to be of type 'table'")
	assert(struct["fieldLogLevel"], "Expected key fieldLogLevel to exist in table")
	assert(struct["cloudWatchLogsRoleArn"], "Expected key cloudWatchLogsRoleArn to exist in table")
	if struct["fieldLogLevel"] then asserts.AssertFieldLogLevel(struct["fieldLogLevel"]) end
	if struct["cloudWatchLogsRoleArn"] then asserts.AssertString(struct["cloudWatchLogsRoleArn"]) end
	for k,_ in pairs(struct) do
		assert(keys.LogConfig[k], "LogConfig contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type LogConfig
-- <p>The CloudWatch Logs configuration.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * fieldLogLevel [FieldLogLevel] <p>The field logging level. Values can be NONE, ERROR, ALL. </p> <ul> <li> <p> <b>NONE</b>: No field-level logs are captured.</p> </li> <li> <p> <b>ERROR</b>: Logs the following information only for the fields that are in error:</p> <ul> <li> <p>The error section in the server response.</p> </li> <li> <p>Field-level errors.</p> </li> <li> <p>The generated request/response functions that got resolved for error fields.</p> </li> </ul> </li> <li> <p> <b>ALL</b>: The following information is logged for all fields in the query:</p> <ul> <li> <p>Field-level tracing information.</p> </li> <li> <p>The generated request/response functions that got resolved for each field.</p> </li> </ul> </li> </ul>
-- * cloudWatchLogsRoleArn [String] <p>The service role that AWS AppSync will assume to publish to Amazon CloudWatch logs in your account. </p>
-- Required key: fieldLogLevel
-- Required key: cloudWatchLogsRoleArn
-- @return LogConfig structure as a key-value pair table
function M.LogConfig(args)
	assert(args, "You must provide an argument table when creating LogConfig")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["fieldLogLevel"] = args["fieldLogLevel"],
		["cloudWatchLogsRoleArn"] = args["cloudWatchLogsRoleArn"],
	}
	asserts.AssertLogConfig(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.CreateApiKeyRequest = { ["apiId"] = true, ["expires"] = true, ["description"] = true, nil }

function asserts.AssertCreateApiKeyRequest(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateApiKeyRequest to be of type 'table'")
	assert(struct["apiId"], "Expected key apiId to exist in table")
	if struct["apiId"] then asserts.AssertString(struct["apiId"]) end
	if struct["expires"] then asserts.AssertLong(struct["expires"]) end
	if struct["description"] then asserts.AssertString(struct["description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateApiKeyRequest[k], "CreateApiKeyRequest contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateApiKeyRequest
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * apiId [String] <p>The ID for your GraphQL API.</p>
-- * expires [Long] <p>The time from creation time after which the API key expires. The date is represented as seconds since the epoch, rounded down to the nearest hour. The default value for this parameter is 7 days from creation time. For more information, see .</p>
-- * description [String] <p>A description of the purpose of the API key.</p>
-- Required key: apiId
-- @return CreateApiKeyRequest structure as a key-value pair table
function M.CreateApiKeyRequest(args)
	assert(args, "You must provide an argument table when creating CreateApiKeyRequest")
    local query_args = { 
    }
    local uri_args = { 
        ["{apiId}"] = args["apiId"],
    }
    local header_args = { 
    }
	local all_args = { 
		["apiId"] = args["apiId"],
		["expires"] = args["expires"],
		["description"] = args["description"],
	}
	asserts.AssertCreateApiKeyRequest(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

function asserts.AssertFieldLogLevel(str)
	assert(str)
	assert(type(str) == "string", "Expected FieldLogLevel to be of type 'string'")
end

--  
function M.FieldLogLevel(str)
	asserts.AssertFieldLogLevel(str)
	return str
end

function asserts.AssertOutputType(str)
	assert(str)
	assert(type(str) == "string", "Expected OutputType to be of type 'string'")
end

--  
function M.OutputType(str)
	asserts.AssertOutputType(str)
	return str
end

function asserts.AssertPaginationToken(str)
	assert(str)
	assert(type(str) == "string", "Expected PaginationToken to be of type 'string'")
end

--  
function M.PaginationToken(str)
	asserts.AssertPaginationToken(str)
	return str
end

function asserts.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	asserts.AssertString(str)
	return str
end

function asserts.AssertMappingTemplate(str)
	assert(str)
	assert(type(str) == "string", "Expected MappingTemplate to be of type 'string'")
	assert(#str <= 65536, "Expected string to be max 65536 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.MappingTemplate(str)
	asserts.AssertMappingTemplate(str)
	return str
end

function asserts.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	asserts.AssertErrorMessage(str)
	return str
end

function asserts.AssertTypeDefinitionFormat(str)
	assert(str)
	assert(type(str) == "string", "Expected TypeDefinitionFormat to be of type 'string'")
end

--  
function M.TypeDefinitionFormat(str)
	asserts.AssertTypeDefinitionFormat(str)
	return str
end

function asserts.AssertAuthenticationType(str)
	assert(str)
	assert(type(str) == "string", "Expected AuthenticationType to be of type 'string'")
end

--  
function M.AuthenticationType(str)
	asserts.AssertAuthenticationType(str)
	return str
end

function asserts.AssertDataSourceType(str)
	assert(str)
	assert(type(str) == "string", "Expected DataSourceType to be of type 'string'")
end

--  
function M.DataSourceType(str)
	asserts.AssertDataSourceType(str)
	return str
end

function asserts.AssertDefaultAction(str)
	assert(str)
	assert(type(str) == "string", "Expected DefaultAction to be of type 'string'")
end

--  
function M.DefaultAction(str)
	asserts.AssertDefaultAction(str)
	return str
end

function asserts.AssertResourceName(str)
	assert(str)
	assert(type(str) == "string", "Expected ResourceName to be of type 'string'")
end

--  
function M.ResourceName(str)
	asserts.AssertResourceName(str)
	return str
end

function asserts.AssertSchemaStatus(str)
	assert(str)
	assert(type(str) == "string", "Expected SchemaStatus to be of type 'string'")
end

--  
function M.SchemaStatus(str)
	asserts.AssertSchemaStatus(str)
	return str
end

function asserts.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	asserts.AssertLong(long)
	return long
end

function asserts.AssertMaxResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 25, "Expected integer to be max 25")
end

function M.MaxResults(integer)
	asserts.AssertMaxResults(integer)
	return integer
end

function asserts.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	asserts.AssertBoolean(boolean)
	return boolean
end

function asserts.AssertMapOfStringToString(map)
	assert(map)
	assert(type(map) == "table", "Expected MapOfStringToString to be of type 'table'")
	for k,v in pairs(map) do
		asserts.AssertString(k)
		asserts.AssertString(v)
	end
end

function M.MapOfStringToString(map)
	asserts.AssertMapOfStringToString(map)
	return map
end

function asserts.AssertBlob(blob)
	assert(blob)
	assert(type(blob) == "string", "Expected Blob to be of type 'string'")
end

function M.Blob(blob)
	asserts.AssertBlob(blob)
	return blob
end

function asserts.AssertApiKeys(list)
	assert(list)
	assert(type(list) == "table", "Expected ApiKeys to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertApiKey(v)
	end
end

--  
-- List of ApiKey objects
function M.ApiKeys(list)
	asserts.AssertApiKeys(list)
	return list
end

function asserts.AssertGraphqlApis(list)
	assert(list)
	assert(type(list) == "table", "Expected GraphqlApis to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertGraphqlApi(v)
	end
end

--  
-- List of GraphqlApi objects
function M.GraphqlApis(list)
	asserts.AssertGraphqlApis(list)
	return list
end

function asserts.AssertTypeList(list)
	assert(list)
	assert(type(list) == "table", "Expected TypeList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertType(v)
	end
end

--  
-- List of Type objects
function M.TypeList(list)
	asserts.AssertTypeList(list)
	return list
end

function asserts.AssertResolvers(list)
	assert(list)
	assert(type(list) == "table", "Expected Resolvers to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertResolver(v)
	end
end

--  
-- List of Resolver objects
function M.Resolvers(list)
	asserts.AssertResolvers(list)
	return list
end

function asserts.AssertDataSources(list)
	assert(list)
	assert(type(list) == "table", "Expected DataSources to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDataSource(v)
	end
end

--  
-- List of DataSource objects
function M.DataSources(list)
	asserts.AssertDataSources(list)
	return list
end


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


local function endpoint_for_region(region, use_dualstack)
	if not use_dualstack then
		if region == "us-east-1" then
			return "appsync.amazonaws.com"
		end
	end
	local ss = { "appsync" }
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
--- Call UpdateResolver asynchronously, invoking a callback when done
-- @param UpdateResolverRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateResolverAsync(UpdateResolverRequest, cb)
	assert(UpdateResolverRequest, "You must provide a UpdateResolverRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateResolver",
	}
	for header,value in pairs(UpdateResolverRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", UpdateResolverRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateResolver synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateResolverRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateResolverSync(UpdateResolverRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateResolverAsync(UpdateResolverRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetGraphqlApi asynchronously, invoking a callback when done
-- @param GetGraphqlApiRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetGraphqlApiAsync(GetGraphqlApiRequest, cb)
	assert(GetGraphqlApiRequest, "You must provide a GetGraphqlApiRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetGraphqlApi",
	}
	for header,value in pairs(GetGraphqlApiRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}", GetGraphqlApiRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetGraphqlApi synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetGraphqlApiRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetGraphqlApiSync(GetGraphqlApiRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetGraphqlApiAsync(GetGraphqlApiRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateResolver asynchronously, invoking a callback when done
-- @param CreateResolverRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateResolverAsync(CreateResolverRequest, cb)
	assert(CreateResolverRequest, "You must provide a CreateResolverRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateResolver",
	}
	for header,value in pairs(CreateResolverRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/types/{typeName}/resolvers", CreateResolverRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateResolver synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateResolverRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateResolverSync(CreateResolverRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateResolverAsync(CreateResolverRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListTypes asynchronously, invoking a callback when done
-- @param ListTypesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListTypesAsync(ListTypesRequest, cb)
	assert(ListTypesRequest, "You must provide a ListTypesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListTypes",
	}
	for header,value in pairs(ListTypesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/types", ListTypesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListTypes synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListTypesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListTypesSync(ListTypesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListTypesAsync(ListTypesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListApiKeys asynchronously, invoking a callback when done
-- @param ListApiKeysRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListApiKeysAsync(ListApiKeysRequest, cb)
	assert(ListApiKeysRequest, "You must provide a ListApiKeysRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListApiKeys",
	}
	for header,value in pairs(ListApiKeysRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/apikeys", ListApiKeysRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListApiKeys synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListApiKeysRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListApiKeysSync(ListApiKeysRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListApiKeysAsync(ListApiKeysRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListGraphqlApis asynchronously, invoking a callback when done
-- @param ListGraphqlApisRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListGraphqlApisAsync(ListGraphqlApisRequest, cb)
	assert(ListGraphqlApisRequest, "You must provide a ListGraphqlApisRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListGraphqlApis",
	}
	for header,value in pairs(ListGraphqlApisRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apis", ListGraphqlApisRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListGraphqlApis synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListGraphqlApisRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListGraphqlApisSync(ListGraphqlApisRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListGraphqlApisAsync(ListGraphqlApisRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteGraphqlApi asynchronously, invoking a callback when done
-- @param DeleteGraphqlApiRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteGraphqlApiAsync(DeleteGraphqlApiRequest, cb)
	assert(DeleteGraphqlApiRequest, "You must provide a DeleteGraphqlApiRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteGraphqlApi",
	}
	for header,value in pairs(DeleteGraphqlApiRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}", DeleteGraphqlApiRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteGraphqlApi synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteGraphqlApiRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteGraphqlApiSync(DeleteGraphqlApiRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteGraphqlApiAsync(DeleteGraphqlApiRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetIntrospectionSchema asynchronously, invoking a callback when done
-- @param GetIntrospectionSchemaRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetIntrospectionSchemaAsync(GetIntrospectionSchemaRequest, cb)
	assert(GetIntrospectionSchemaRequest, "You must provide a GetIntrospectionSchemaRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetIntrospectionSchema",
	}
	for header,value in pairs(GetIntrospectionSchemaRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/schema", GetIntrospectionSchemaRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetIntrospectionSchema synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetIntrospectionSchemaRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetIntrospectionSchemaSync(GetIntrospectionSchemaRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetIntrospectionSchemaAsync(GetIntrospectionSchemaRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListResolvers asynchronously, invoking a callback when done
-- @param ListResolversRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListResolversAsync(ListResolversRequest, cb)
	assert(ListResolversRequest, "You must provide a ListResolversRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListResolvers",
	}
	for header,value in pairs(ListResolversRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/types/{typeName}/resolvers", ListResolversRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListResolvers synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListResolversRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListResolversSync(ListResolversRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListResolversAsync(ListResolversRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetResolver asynchronously, invoking a callback when done
-- @param GetResolverRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetResolverAsync(GetResolverRequest, cb)
	assert(GetResolverRequest, "You must provide a GetResolverRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetResolver",
	}
	for header,value in pairs(GetResolverRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", GetResolverRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetResolver synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetResolverRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetResolverSync(GetResolverRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetResolverAsync(GetResolverRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateDataSource asynchronously, invoking a callback when done
-- @param UpdateDataSourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateDataSourceAsync(UpdateDataSourceRequest, cb)
	assert(UpdateDataSourceRequest, "You must provide a UpdateDataSourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateDataSource",
	}
	for header,value in pairs(UpdateDataSourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/datasources/{name}", UpdateDataSourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateDataSource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateDataSourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateDataSourceSync(UpdateDataSourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateDataSourceAsync(UpdateDataSourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteResolver asynchronously, invoking a callback when done
-- @param DeleteResolverRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteResolverAsync(DeleteResolverRequest, cb)
	assert(DeleteResolverRequest, "You must provide a DeleteResolverRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteResolver",
	}
	for header,value in pairs(DeleteResolverRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}", DeleteResolverRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteResolver synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteResolverRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteResolverSync(DeleteResolverRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteResolverAsync(DeleteResolverRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateApiKey asynchronously, invoking a callback when done
-- @param UpdateApiKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateApiKeyAsync(UpdateApiKeyRequest, cb)
	assert(UpdateApiKeyRequest, "You must provide a UpdateApiKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateApiKey",
	}
	for header,value in pairs(UpdateApiKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/apikeys/{id}", UpdateApiKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateApiKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateApiKeyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateApiKeySync(UpdateApiKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateApiKeyAsync(UpdateApiKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetSchemaCreationStatus asynchronously, invoking a callback when done
-- @param GetSchemaCreationStatusRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetSchemaCreationStatusAsync(GetSchemaCreationStatusRequest, cb)
	assert(GetSchemaCreationStatusRequest, "You must provide a GetSchemaCreationStatusRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetSchemaCreationStatus",
	}
	for header,value in pairs(GetSchemaCreationStatusRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/schemacreation", GetSchemaCreationStatusRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetSchemaCreationStatus synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetSchemaCreationStatusRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetSchemaCreationStatusSync(GetSchemaCreationStatusRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetSchemaCreationStatusAsync(GetSchemaCreationStatusRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateType asynchronously, invoking a callback when done
-- @param UpdateTypeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateTypeAsync(UpdateTypeRequest, cb)
	assert(UpdateTypeRequest, "You must provide a UpdateTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateType",
	}
	for header,value in pairs(UpdateTypeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/types/{typeName}", UpdateTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateTypeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateTypeSync(UpdateTypeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateTypeAsync(UpdateTypeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateGraphqlApi asynchronously, invoking a callback when done
-- @param CreateGraphqlApiRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateGraphqlApiAsync(CreateGraphqlApiRequest, cb)
	assert(CreateGraphqlApiRequest, "You must provide a CreateGraphqlApiRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateGraphqlApi",
	}
	for header,value in pairs(CreateGraphqlApiRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/apis", CreateGraphqlApiRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateGraphqlApi synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateGraphqlApiRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateGraphqlApiSync(CreateGraphqlApiRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateGraphqlApiAsync(CreateGraphqlApiRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateType asynchronously, invoking a callback when done
-- @param CreateTypeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateTypeAsync(CreateTypeRequest, cb)
	assert(CreateTypeRequest, "You must provide a CreateTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateType",
	}
	for header,value in pairs(CreateTypeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/types", CreateTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateTypeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateTypeSync(CreateTypeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateTypeAsync(CreateTypeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteDataSource asynchronously, invoking a callback when done
-- @param DeleteDataSourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteDataSourceAsync(DeleteDataSourceRequest, cb)
	assert(DeleteDataSourceRequest, "You must provide a DeleteDataSourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteDataSource",
	}
	for header,value in pairs(DeleteDataSourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/datasources/{name}", DeleteDataSourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteDataSource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteDataSourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteDataSourceSync(DeleteDataSourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteDataSourceAsync(DeleteDataSourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateApiKey asynchronously, invoking a callback when done
-- @param CreateApiKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateApiKeyAsync(CreateApiKeyRequest, cb)
	assert(CreateApiKeyRequest, "You must provide a CreateApiKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateApiKey",
	}
	for header,value in pairs(CreateApiKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/apikeys", CreateApiKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateApiKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateApiKeyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateApiKeySync(CreateApiKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateApiKeyAsync(CreateApiKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListDataSources asynchronously, invoking a callback when done
-- @param ListDataSourcesRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListDataSourcesAsync(ListDataSourcesRequest, cb)
	assert(ListDataSourcesRequest, "You must provide a ListDataSourcesRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".ListDataSources",
	}
	for header,value in pairs(ListDataSourcesRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/datasources", ListDataSourcesRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListDataSources synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListDataSourcesRequest
-- @return response
-- @return error_type
-- @return error_message
function M.ListDataSourcesSync(ListDataSourcesRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListDataSourcesAsync(ListDataSourcesRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartSchemaCreation asynchronously, invoking a callback when done
-- @param StartSchemaCreationRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartSchemaCreationAsync(StartSchemaCreationRequest, cb)
	assert(StartSchemaCreationRequest, "You must provide a StartSchemaCreationRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".StartSchemaCreation",
	}
	for header,value in pairs(StartSchemaCreationRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/schemacreation", StartSchemaCreationRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartSchemaCreation synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartSchemaCreationRequest
-- @return response
-- @return error_type
-- @return error_message
function M.StartSchemaCreationSync(StartSchemaCreationRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartSchemaCreationAsync(StartSchemaCreationRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateDataSource asynchronously, invoking a callback when done
-- @param CreateDataSourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateDataSourceAsync(CreateDataSourceRequest, cb)
	assert(CreateDataSourceRequest, "You must provide a CreateDataSourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".CreateDataSource",
	}
	for header,value in pairs(CreateDataSourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/datasources", CreateDataSourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateDataSource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateDataSourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.CreateDataSourceSync(CreateDataSourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateDataSourceAsync(CreateDataSourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetType asynchronously, invoking a callback when done
-- @param GetTypeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetTypeAsync(GetTypeRequest, cb)
	assert(GetTypeRequest, "You must provide a GetTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetType",
	}
	for header,value in pairs(GetTypeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/types/{typeName}", GetTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetTypeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetTypeSync(GetTypeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetTypeAsync(GetTypeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetDataSource asynchronously, invoking a callback when done
-- @param GetDataSourceRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetDataSourceAsync(GetDataSourceRequest, cb)
	assert(GetDataSourceRequest, "You must provide a GetDataSourceRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".GetDataSource",
	}
	for header,value in pairs(GetDataSourceRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "GET")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/datasources/{name}", GetDataSourceRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetDataSource synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetDataSourceRequest
-- @return response
-- @return error_type
-- @return error_message
function M.GetDataSourceSync(GetDataSourceRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetDataSourceAsync(GetDataSourceRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteType asynchronously, invoking a callback when done
-- @param DeleteTypeRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteTypeAsync(DeleteTypeRequest, cb)
	assert(DeleteTypeRequest, "You must provide a DeleteTypeRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteType",
	}
	for header,value in pairs(DeleteTypeRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/types/{typeName}", DeleteTypeRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteType synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteTypeRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteTypeSync(DeleteTypeRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteTypeAsync(DeleteTypeRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteApiKey asynchronously, invoking a callback when done
-- @param DeleteApiKeyRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteApiKeyAsync(DeleteApiKeyRequest, cb)
	assert(DeleteApiKeyRequest, "You must provide a DeleteApiKeyRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".DeleteApiKey",
	}
	for header,value in pairs(DeleteApiKeyRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "DELETE")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}/apikeys/{id}", DeleteApiKeyRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteApiKey synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteApiKeyRequest
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteApiKeySync(DeleteApiKeyRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteApiKeyAsync(DeleteApiKeyRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call UpdateGraphqlApi asynchronously, invoking a callback when done
-- @param UpdateGraphqlApiRequest
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.UpdateGraphqlApiAsync(UpdateGraphqlApiRequest, cb)
	assert(UpdateGraphqlApiRequest, "You must provide a UpdateGraphqlApiRequest")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = ".UpdateGraphqlApi",
	}
	for header,value in pairs(UpdateGraphqlApiRequest.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("rest-json", "POST")
	if request_handler then
		request_handler(settings.uri, "/v1/apis/{apiId}", UpdateGraphqlApiRequest, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call UpdateGraphqlApi synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param UpdateGraphqlApiRequest
-- @return response
-- @return error_type
-- @return error_message
function M.UpdateGraphqlApiSync(UpdateGraphqlApiRequest, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.UpdateGraphqlApiAsync(UpdateGraphqlApiRequest, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
