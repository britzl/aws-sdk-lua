--- GENERATED CODE - DO NOT MODIFY
-- Amazon Athena (athena-2017-05-18)

local M = {}

M.metadata = {
	api_version = "2017-05-18",
	json_version = "1.1",
	protocol = "json",
	checksum_format = "",
	endpoint_prefix = "athena",
	service_abbreviation = "",
	service_full_name = "Amazon Athena",
	signature_version = "v4",
	target_prefix = "AmazonAthena",
	timestamp_format = "",
	global_endpoint = "",
	uid = "athena-2017-05-18",
}

local InvalidRequestException_keys = { "AthenaErrorCode" = true, "Message" = true, nil }

function M.AssertInvalidRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestException to be of type 'table'")
	if struct["AthenaErrorCode"] then M.AssertErrorCode(struct["AthenaErrorCode"]) end
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InvalidRequestException_keys[k], "InvalidRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestException
-- <p>Indicates that something is wrong with the input to the request. For example, a required parameter may be missing or out of range.</p>
-- @param AthenaErrorCode [ErrorCode] <p>Indicates that something is wrong with the input to the request. For example, a required parameter may be missing or out of range.</p>
-- @param Message [ErrorMessage] <p>Indicates that something is wrong with the input to the request. For example, a required parameter may be missing or out of range.</p>
function M.InvalidRequestException(AthenaErrorCode, Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRequestException")
	local t = { 
		["AthenaErrorCode"] = AthenaErrorCode,
		["Message"] = Message,
	}
	M.AssertInvalidRequestException(t)
	return t
end

local CreateNamedQueryInput_keys = { "ClientRequestToken" = true, "Database" = true, "QueryString" = true, "Name" = true, "Description" = true, nil }

function M.AssertCreateNamedQueryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNamedQueryInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Database"], "Expected key Database to exist in table")
	assert(struct["QueryString"], "Expected key QueryString to exist in table")
	if struct["ClientRequestToken"] then M.AssertIdempotencyToken(struct["ClientRequestToken"]) end
	if struct["Database"] then M.AssertDatabaseString(struct["Database"]) end
	if struct["QueryString"] then M.AssertQueryString(struct["QueryString"]) end
	if struct["Name"] then M.AssertNameString(struct["Name"]) end
	if struct["Description"] then M.AssertDescriptionString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(CreateNamedQueryInput_keys[k], "CreateNamedQueryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNamedQueryInput
--  
-- @param ClientRequestToken [IdempotencyToken] <p>A unique case-sensitive string used to ensure the request to create the query is idempotent (executes only once). If another <code>CreateNamedQuery</code> request is received, the same response is returned and another query is not created. If a parameter has changed, for example, the <code>QueryString</code>, an error is returned.</p> <important> <p>This token is listed as not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or the action will fail.</p> </important>
-- @param Database [DatabaseString] <p>The database to which the query belongs.</p>
-- @param QueryString [QueryString] <p>The text of the query itself. In other words, all query statements.</p>
-- @param Name [NameString] <p>The plain language name for the query.</p>
-- @param Description [DescriptionString] <p>A brief explanation of the query.</p>
-- Required parameter: Name
-- Required parameter: Database
-- Required parameter: QueryString
function M.CreateNamedQueryInput(ClientRequestToken, Database, QueryString, Name, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateNamedQueryInput")
	local t = { 
		["ClientRequestToken"] = ClientRequestToken,
		["Database"] = Database,
		["QueryString"] = QueryString,
		["Name"] = Name,
		["Description"] = Description,
	}
	M.AssertCreateNamedQueryInput(t)
	return t
end

local ListQueryExecutionsOutput_keys = { "NextToken" = true, "QueryExecutionIds" = true, nil }

function M.AssertListQueryExecutionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListQueryExecutionsOutput to be of type 'table'")
	if struct["NextToken"] then M.AssertToken(struct["NextToken"]) end
	if struct["QueryExecutionIds"] then M.AssertQueryExecutionIdList(struct["QueryExecutionIds"]) end
	for k,_ in pairs(struct) do
		assert(ListQueryExecutionsOutput_keys[k], "ListQueryExecutionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListQueryExecutionsOutput
--  
-- @param NextToken [Token] <p>A token to be used by the next request if this request is truncated.</p>
-- @param QueryExecutionIds [QueryExecutionIdList] <p>The unique IDs of each query execution as an array of strings.</p>
function M.ListQueryExecutionsOutput(NextToken, QueryExecutionIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListQueryExecutionsOutput")
	local t = { 
		["NextToken"] = NextToken,
		["QueryExecutionIds"] = QueryExecutionIds,
	}
	M.AssertListQueryExecutionsOutput(t)
	return t
end

local ResultSet_keys = { "Rows" = true, "ResultSetMetadata" = true, nil }

function M.AssertResultSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResultSet to be of type 'table'")
	if struct["Rows"] then M.AssertRowList(struct["Rows"]) end
	if struct["ResultSetMetadata"] then M.AssertResultSetMetadata(struct["ResultSetMetadata"]) end
	for k,_ in pairs(struct) do
		assert(ResultSet_keys[k], "ResultSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResultSet
-- <p>The metadata and rows that comprise a query result set. The metadata describes the column structure and data types.</p>
-- @param Rows [RowList] <p>The rows in the table.</p>
-- @param ResultSetMetadata [ResultSetMetadata] <p>The metadata that describes the column structure and data types of a table of query results.</p>
function M.ResultSet(Rows, ResultSetMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResultSet")
	local t = { 
		["Rows"] = Rows,
		["ResultSetMetadata"] = ResultSetMetadata,
	}
	M.AssertResultSet(t)
	return t
end

local InternalServerException_keys = { "Message" = true, nil }

function M.AssertInternalServerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(InternalServerException_keys[k], "InternalServerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerException
-- <p>Indicates a platform issue, which may be due to a transient condition or outage.</p>
-- @param Message [ErrorMessage] <p>Indicates a platform issue, which may be due to a transient condition or outage.</p>
function M.InternalServerException(Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServerException")
	local t = { 
		["Message"] = Message,
	}
	M.AssertInternalServerException(t)
	return t
end

local EncryptionConfiguration_keys = { "EncryptionOption" = true, "KmsKey" = true, nil }

function M.AssertEncryptionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionConfiguration to be of type 'table'")
	assert(struct["EncryptionOption"], "Expected key EncryptionOption to exist in table")
	if struct["EncryptionOption"] then M.AssertEncryptionOption(struct["EncryptionOption"]) end
	if struct["KmsKey"] then M.AssertString(struct["KmsKey"]) end
	for k,_ in pairs(struct) do
		assert(EncryptionConfiguration_keys[k], "EncryptionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionConfiguration
-- <p>If query results are encrypted in Amazon S3, indicates the Amazon S3 encryption option used.</p>
-- @param EncryptionOption [EncryptionOption] <p>Indicates whether Amazon S3 server-side encryption with Amazon S3-managed keys (<code>SSE-S3</code>), server-side encryption with KMS-managed keys (<code>SSE-KMS</code>), or client-side encryption with KMS-managed keys (CSE-KMS) is used.</p>
-- @param KmsKey [String] <p>For <code>SSE-KMS</code> and <code>CSE-KMS</code>, this is the KMS key ARN or ID.</p>
-- Required parameter: EncryptionOption
function M.EncryptionConfiguration(EncryptionOption, KmsKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EncryptionConfiguration")
	local t = { 
		["EncryptionOption"] = EncryptionOption,
		["KmsKey"] = KmsKey,
	}
	M.AssertEncryptionConfiguration(t)
	return t
end

local StartQueryExecutionInput_keys = { "ResultConfiguration" = true, "QueryExecutionContext" = true, "QueryString" = true, "ClientRequestToken" = true, nil }

function M.AssertStartQueryExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartQueryExecutionInput to be of type 'table'")
	assert(struct["QueryString"], "Expected key QueryString to exist in table")
	assert(struct["ResultConfiguration"], "Expected key ResultConfiguration to exist in table")
	if struct["ResultConfiguration"] then M.AssertResultConfiguration(struct["ResultConfiguration"]) end
	if struct["QueryExecutionContext"] then M.AssertQueryExecutionContext(struct["QueryExecutionContext"]) end
	if struct["QueryString"] then M.AssertQueryString(struct["QueryString"]) end
	if struct["ClientRequestToken"] then M.AssertIdempotencyToken(struct["ClientRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(StartQueryExecutionInput_keys[k], "StartQueryExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartQueryExecutionInput
--  
-- @param ResultConfiguration [ResultConfiguration] <p>Specifies information about where and how to save the results of the query execution.</p>
-- @param QueryExecutionContext [QueryExecutionContext] <p>The database within which the query executes.</p>
-- @param QueryString [QueryString] <p>The SQL query statements to be executed.</p>
-- @param ClientRequestToken [IdempotencyToken] <p>A unique case-sensitive string used to ensure the request to create the query is idempotent (executes only once). If another <code>StartQueryExecution</code> request is received, the same response is returned and another query is not created. If a parameter has changed, for example, the <code>QueryString</code>, an error is returned.</p> <important> <p>This token is listed as not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or the action will fail.</p> </important>
-- Required parameter: QueryString
-- Required parameter: ResultConfiguration
function M.StartQueryExecutionInput(ResultConfiguration, QueryExecutionContext, QueryString, ClientRequestToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartQueryExecutionInput")
	local t = { 
		["ResultConfiguration"] = ResultConfiguration,
		["QueryExecutionContext"] = QueryExecutionContext,
		["QueryString"] = QueryString,
		["ClientRequestToken"] = ClientRequestToken,
	}
	M.AssertStartQueryExecutionInput(t)
	return t
end

local GetQueryExecutionOutput_keys = { "QueryExecution" = true, nil }

function M.AssertGetQueryExecutionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueryExecutionOutput to be of type 'table'")
	if struct["QueryExecution"] then M.AssertQueryExecution(struct["QueryExecution"]) end
	for k,_ in pairs(struct) do
		assert(GetQueryExecutionOutput_keys[k], "GetQueryExecutionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueryExecutionOutput
--  
-- @param QueryExecution [QueryExecution] <p>Information about the query execution.</p>
function M.GetQueryExecutionOutput(QueryExecution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQueryExecutionOutput")
	local t = { 
		["QueryExecution"] = QueryExecution,
	}
	M.AssertGetQueryExecutionOutput(t)
	return t
end

local GetNamedQueryInput_keys = { "NamedQueryId" = true, nil }

function M.AssertGetNamedQueryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetNamedQueryInput to be of type 'table'")
	assert(struct["NamedQueryId"], "Expected key NamedQueryId to exist in table")
	if struct["NamedQueryId"] then M.AssertNamedQueryId(struct["NamedQueryId"]) end
	for k,_ in pairs(struct) do
		assert(GetNamedQueryInput_keys[k], "GetNamedQueryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetNamedQueryInput
--  
-- @param NamedQueryId [NamedQueryId] <p>The unique ID of the query. Use <a>ListNamedQueries</a> to get query IDs.</p>
-- Required parameter: NamedQueryId
function M.GetNamedQueryInput(NamedQueryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetNamedQueryInput")
	local t = { 
		["NamedQueryId"] = NamedQueryId,
	}
	M.AssertGetNamedQueryInput(t)
	return t
end

local GetNamedQueryOutput_keys = { "NamedQuery" = true, nil }

function M.AssertGetNamedQueryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetNamedQueryOutput to be of type 'table'")
	if struct["NamedQuery"] then M.AssertNamedQuery(struct["NamedQuery"]) end
	for k,_ in pairs(struct) do
		assert(GetNamedQueryOutput_keys[k], "GetNamedQueryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetNamedQueryOutput
--  
-- @param NamedQuery [NamedQuery] <p>Information about the query.</p>
function M.GetNamedQueryOutput(NamedQuery, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetNamedQueryOutput")
	local t = { 
		["NamedQuery"] = NamedQuery,
	}
	M.AssertGetNamedQueryOutput(t)
	return t
end

local GetQueryExecutionInput_keys = { "QueryExecutionId" = true, nil }

function M.AssertGetQueryExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueryExecutionInput to be of type 'table'")
	assert(struct["QueryExecutionId"], "Expected key QueryExecutionId to exist in table")
	if struct["QueryExecutionId"] then M.AssertQueryExecutionId(struct["QueryExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(GetQueryExecutionInput_keys[k], "GetQueryExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueryExecutionInput
--  
-- @param QueryExecutionId [QueryExecutionId] <p>The unique ID of the query execution.</p>
-- Required parameter: QueryExecutionId
function M.GetQueryExecutionInput(QueryExecutionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQueryExecutionInput")
	local t = { 
		["QueryExecutionId"] = QueryExecutionId,
	}
	M.AssertGetQueryExecutionInput(t)
	return t
end

local NamedQuery_keys = { "Database" = true, "QueryString" = true, "Name" = true, "NamedQueryId" = true, "Description" = true, nil }

function M.AssertNamedQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NamedQuery to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Database"], "Expected key Database to exist in table")
	assert(struct["QueryString"], "Expected key QueryString to exist in table")
	if struct["Database"] then M.AssertDatabaseString(struct["Database"]) end
	if struct["QueryString"] then M.AssertQueryString(struct["QueryString"]) end
	if struct["Name"] then M.AssertNameString(struct["Name"]) end
	if struct["NamedQueryId"] then M.AssertNamedQueryId(struct["NamedQueryId"]) end
	if struct["Description"] then M.AssertDescriptionString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(NamedQuery_keys[k], "NamedQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NamedQuery
-- <p>A query, where <code>QueryString</code> is the SQL query statements that comprise the query.</p>
-- @param Database [DatabaseString] <p>The database to which the query belongs.</p>
-- @param QueryString [QueryString] <p>The SQL query statements that comprise the query.</p>
-- @param Name [NameString] <p>The plain-language name of the query.</p>
-- @param NamedQueryId [NamedQueryId] <p>The unique identifier of the query.</p>
-- @param Description [DescriptionString] <p>A brief description of the query.</p>
-- Required parameter: Name
-- Required parameter: Database
-- Required parameter: QueryString
function M.NamedQuery(Database, QueryString, Name, NamedQueryId, Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NamedQuery")
	local t = { 
		["Database"] = Database,
		["QueryString"] = QueryString,
		["Name"] = Name,
		["NamedQueryId"] = NamedQueryId,
		["Description"] = Description,
	}
	M.AssertNamedQuery(t)
	return t
end

local StartQueryExecutionOutput_keys = { "QueryExecutionId" = true, nil }

function M.AssertStartQueryExecutionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartQueryExecutionOutput to be of type 'table'")
	if struct["QueryExecutionId"] then M.AssertQueryExecutionId(struct["QueryExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(StartQueryExecutionOutput_keys[k], "StartQueryExecutionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartQueryExecutionOutput
--  
-- @param QueryExecutionId [QueryExecutionId] <p>The unique ID of the query that ran as a result of this request.</p>
function M.StartQueryExecutionOutput(QueryExecutionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartQueryExecutionOutput")
	local t = { 
		["QueryExecutionId"] = QueryExecutionId,
	}
	M.AssertStartQueryExecutionOutput(t)
	return t
end

local ListNamedQueriesInput_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListNamedQueriesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListNamedQueriesInput to be of type 'table'")
	if struct["NextToken"] then M.AssertToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxNamedQueriesCount(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListNamedQueriesInput_keys[k], "ListNamedQueriesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListNamedQueriesInput
--  
-- @param NextToken [Token] <p>The token that specifies where to start pagination if a previous request was truncated.</p>
-- @param MaxResults [MaxNamedQueriesCount] <p>The maximum number of queries to return in this request.</p>
function M.ListNamedQueriesInput(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListNamedQueriesInput")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListNamedQueriesInput(t)
	return t
end

local GetQueryResultsInput_keys = { "NextToken" = true, "QueryExecutionId" = true, "MaxResults" = true, nil }

function M.AssertGetQueryResultsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueryResultsInput to be of type 'table'")
	assert(struct["QueryExecutionId"], "Expected key QueryExecutionId to exist in table")
	if struct["NextToken"] then M.AssertToken(struct["NextToken"]) end
	if struct["QueryExecutionId"] then M.AssertQueryExecutionId(struct["QueryExecutionId"]) end
	if struct["MaxResults"] then M.AssertMaxQueryResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(GetQueryResultsInput_keys[k], "GetQueryResultsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueryResultsInput
--  
-- @param NextToken [Token] <p>The token that specifies where to start pagination if a previous request was truncated.</p>
-- @param QueryExecutionId [QueryExecutionId] <p>The unique ID of the query execution.</p>
-- @param MaxResults [MaxQueryResults] <p>The maximum number of results (rows) to return in this request.</p>
-- Required parameter: QueryExecutionId
function M.GetQueryResultsInput(NextToken, QueryExecutionId, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQueryResultsInput")
	local t = { 
		["NextToken"] = NextToken,
		["QueryExecutionId"] = QueryExecutionId,
		["MaxResults"] = MaxResults,
	}
	M.AssertGetQueryResultsInput(t)
	return t
end

local QueryExecutionStatistics_keys = { "DataScannedInBytes" = true, "EngineExecutionTimeInMillis" = true, nil }

function M.AssertQueryExecutionStatistics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryExecutionStatistics to be of type 'table'")
	if struct["DataScannedInBytes"] then M.AssertLong(struct["DataScannedInBytes"]) end
	if struct["EngineExecutionTimeInMillis"] then M.AssertLong(struct["EngineExecutionTimeInMillis"]) end
	for k,_ in pairs(struct) do
		assert(QueryExecutionStatistics_keys[k], "QueryExecutionStatistics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryExecutionStatistics
-- <p>The amount of data scanned during the query execution and the amount of time that it took to execute.</p>
-- @param DataScannedInBytes [Long] <p>The number of bytes in the data that was queried.</p>
-- @param EngineExecutionTimeInMillis [Long] <p>The number of milliseconds that the query took to execute.</p>
function M.QueryExecutionStatistics(DataScannedInBytes, EngineExecutionTimeInMillis, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueryExecutionStatistics")
	local t = { 
		["DataScannedInBytes"] = DataScannedInBytes,
		["EngineExecutionTimeInMillis"] = EngineExecutionTimeInMillis,
	}
	M.AssertQueryExecutionStatistics(t)
	return t
end

local DeleteNamedQueryOutput_keys = { nil }

function M.AssertDeleteNamedQueryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteNamedQueryOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(DeleteNamedQueryOutput_keys[k], "DeleteNamedQueryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteNamedQueryOutput
--  
function M.DeleteNamedQueryOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteNamedQueryOutput")
	local t = { 
	}
	M.AssertDeleteNamedQueryOutput(t)
	return t
end

local UnprocessedQueryExecutionId_keys = { "ErrorCode" = true, "ErrorMessage" = true, "QueryExecutionId" = true, nil }

function M.AssertUnprocessedQueryExecutionId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnprocessedQueryExecutionId to be of type 'table'")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then M.AssertErrorMessage(struct["ErrorMessage"]) end
	if struct["QueryExecutionId"] then M.AssertQueryExecutionId(struct["QueryExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(UnprocessedQueryExecutionId_keys[k], "UnprocessedQueryExecutionId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnprocessedQueryExecutionId
-- <p>Describes a query execution that failed to process.</p>
-- @param ErrorCode [ErrorCode] <p>The error code returned when the query execution failed to process, if applicable.</p>
-- @param ErrorMessage [ErrorMessage] <p>The error message returned when the query execution failed to process, if applicable.</p>
-- @param QueryExecutionId [QueryExecutionId] <p>The unique identifier of the query execution.</p>
function M.UnprocessedQueryExecutionId(ErrorCode, ErrorMessage, QueryExecutionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnprocessedQueryExecutionId")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["ErrorMessage"] = ErrorMessage,
		["QueryExecutionId"] = QueryExecutionId,
	}
	M.AssertUnprocessedQueryExecutionId(t)
	return t
end

local BatchGetQueryExecutionInput_keys = { "QueryExecutionIds" = true, nil }

function M.AssertBatchGetQueryExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetQueryExecutionInput to be of type 'table'")
	assert(struct["QueryExecutionIds"], "Expected key QueryExecutionIds to exist in table")
	if struct["QueryExecutionIds"] then M.AssertQueryExecutionIdList(struct["QueryExecutionIds"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetQueryExecutionInput_keys[k], "BatchGetQueryExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetQueryExecutionInput
--  
-- @param QueryExecutionIds [QueryExecutionIdList] <p>An array of query execution IDs.</p>
-- Required parameter: QueryExecutionIds
function M.BatchGetQueryExecutionInput(QueryExecutionIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetQueryExecutionInput")
	local t = { 
		["QueryExecutionIds"] = QueryExecutionIds,
	}
	M.AssertBatchGetQueryExecutionInput(t)
	return t
end

local QueryExecution_keys = { "Status" = true, "Statistics" = true, "ResultConfiguration" = true, "QueryExecutionId" = true, "QueryExecutionContext" = true, "Query" = true, nil }

function M.AssertQueryExecution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryExecution to be of type 'table'")
	if struct["Status"] then M.AssertQueryExecutionStatus(struct["Status"]) end
	if struct["Statistics"] then M.AssertQueryExecutionStatistics(struct["Statistics"]) end
	if struct["ResultConfiguration"] then M.AssertResultConfiguration(struct["ResultConfiguration"]) end
	if struct["QueryExecutionId"] then M.AssertQueryExecutionId(struct["QueryExecutionId"]) end
	if struct["QueryExecutionContext"] then M.AssertQueryExecutionContext(struct["QueryExecutionContext"]) end
	if struct["Query"] then M.AssertQueryString(struct["Query"]) end
	for k,_ in pairs(struct) do
		assert(QueryExecution_keys[k], "QueryExecution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryExecution
-- <p>Information about a single instance of a query execution.</p>
-- @param Status [QueryExecutionStatus] <p>The completion date, current state, submission time, and state change reason (if applicable) for the query execution.</p>
-- @param Statistics [QueryExecutionStatistics] <p>The amount of data scanned during the query execution and the amount of time that it took to execute.</p>
-- @param ResultConfiguration [ResultConfiguration] <p>The location in Amazon S3 where query results were stored and the encryption option, if any, used for query results.</p>
-- @param QueryExecutionId [QueryExecutionId] <p>The unique identifier for each query execution.</p>
-- @param QueryExecutionContext [QueryExecutionContext] <p>The database in which the query execution occurred.</p>
-- @param Query [QueryString] <p>The SQL query statements which the query execution ran.</p>
function M.QueryExecution(Status, Statistics, ResultConfiguration, QueryExecutionId, QueryExecutionContext, Query, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueryExecution")
	local t = { 
		["Status"] = Status,
		["Statistics"] = Statistics,
		["ResultConfiguration"] = ResultConfiguration,
		["QueryExecutionId"] = QueryExecutionId,
		["QueryExecutionContext"] = QueryExecutionContext,
		["Query"] = Query,
	}
	M.AssertQueryExecution(t)
	return t
end

local QueryExecutionContext_keys = { "Database" = true, nil }

function M.AssertQueryExecutionContext(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryExecutionContext to be of type 'table'")
	if struct["Database"] then M.AssertDatabaseString(struct["Database"]) end
	for k,_ in pairs(struct) do
		assert(QueryExecutionContext_keys[k], "QueryExecutionContext contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryExecutionContext
-- <p>The database in which the query execution occurs.</p>
-- @param Database [DatabaseString] <p>The name of the database.</p>
function M.QueryExecutionContext(Database, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueryExecutionContext")
	local t = { 
		["Database"] = Database,
	}
	M.AssertQueryExecutionContext(t)
	return t
end

local TooManyRequestsException_keys = { "Message" = true, "Reason" = true, nil }

function M.AssertTooManyRequestsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestsException to be of type 'table'")
	if struct["Message"] then M.AssertErrorMessage(struct["Message"]) end
	if struct["Reason"] then M.AssertThrottleReason(struct["Reason"]) end
	for k,_ in pairs(struct) do
		assert(TooManyRequestsException_keys[k], "TooManyRequestsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestsException
-- <p>Indicates that the request was throttled.</p>
-- @param Message [ErrorMessage] <p>Indicates that the request was throttled.</p>
-- @param Reason [ThrottleReason] <p>Indicates that the request was throttled.</p>
function M.TooManyRequestsException(Message, Reason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyRequestsException")
	local t = { 
		["Message"] = Message,
		["Reason"] = Reason,
	}
	M.AssertTooManyRequestsException(t)
	return t
end

local GetQueryResultsOutput_keys = { "NextToken" = true, "ResultSet" = true, nil }

function M.AssertGetQueryResultsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueryResultsOutput to be of type 'table'")
	if struct["NextToken"] then M.AssertToken(struct["NextToken"]) end
	if struct["ResultSet"] then M.AssertResultSet(struct["ResultSet"]) end
	for k,_ in pairs(struct) do
		assert(GetQueryResultsOutput_keys[k], "GetQueryResultsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueryResultsOutput
--  
-- @param NextToken [Token] <p>A token to be used by the next request if this request is truncated.</p>
-- @param ResultSet [ResultSet] <p>The results of the query execution.</p>
function M.GetQueryResultsOutput(NextToken, ResultSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQueryResultsOutput")
	local t = { 
		["NextToken"] = NextToken,
		["ResultSet"] = ResultSet,
	}
	M.AssertGetQueryResultsOutput(t)
	return t
end

local BatchGetQueryExecutionOutput_keys = { "UnprocessedQueryExecutionIds" = true, "QueryExecutions" = true, nil }

function M.AssertBatchGetQueryExecutionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetQueryExecutionOutput to be of type 'table'")
	if struct["UnprocessedQueryExecutionIds"] then M.AssertUnprocessedQueryExecutionIdList(struct["UnprocessedQueryExecutionIds"]) end
	if struct["QueryExecutions"] then M.AssertQueryExecutionList(struct["QueryExecutions"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetQueryExecutionOutput_keys[k], "BatchGetQueryExecutionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetQueryExecutionOutput
--  
-- @param UnprocessedQueryExecutionIds [UnprocessedQueryExecutionIdList] <p>Information about the query executions that failed to run.</p>
-- @param QueryExecutions [QueryExecutionList] <p>Information about a query execution.</p>
function M.BatchGetQueryExecutionOutput(UnprocessedQueryExecutionIds, QueryExecutions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetQueryExecutionOutput")
	local t = { 
		["UnprocessedQueryExecutionIds"] = UnprocessedQueryExecutionIds,
		["QueryExecutions"] = QueryExecutions,
	}
	M.AssertBatchGetQueryExecutionOutput(t)
	return t
end

local ListQueryExecutionsInput_keys = { "NextToken" = true, "MaxResults" = true, nil }

function M.AssertListQueryExecutionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListQueryExecutionsInput to be of type 'table'")
	if struct["NextToken"] then M.AssertToken(struct["NextToken"]) end
	if struct["MaxResults"] then M.AssertMaxQueryExecutionsCount(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(ListQueryExecutionsInput_keys[k], "ListQueryExecutionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListQueryExecutionsInput
--  
-- @param NextToken [Token] <p>The token that specifies where to start pagination if a previous request was truncated.</p>
-- @param MaxResults [MaxQueryExecutionsCount] <p>The maximum number of query executions to return in this request.</p>
function M.ListQueryExecutionsInput(NextToken, MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListQueryExecutionsInput")
	local t = { 
		["NextToken"] = NextToken,
		["MaxResults"] = MaxResults,
	}
	M.AssertListQueryExecutionsInput(t)
	return t
end

local UnprocessedNamedQueryId_keys = { "ErrorCode" = true, "ErrorMessage" = true, "NamedQueryId" = true, nil }

function M.AssertUnprocessedNamedQueryId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnprocessedNamedQueryId to be of type 'table'")
	if struct["ErrorCode"] then M.AssertErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then M.AssertErrorMessage(struct["ErrorMessage"]) end
	if struct["NamedQueryId"] then M.AssertNamedQueryId(struct["NamedQueryId"]) end
	for k,_ in pairs(struct) do
		assert(UnprocessedNamedQueryId_keys[k], "UnprocessedNamedQueryId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnprocessedNamedQueryId
-- <p>Information about a named query ID that could not be processed.</p>
-- @param ErrorCode [ErrorCode] <p>The error code returned when the processing request for the named query failed, if applicable.</p>
-- @param ErrorMessage [ErrorMessage] <p>The error message returned when the processing request for the named query failed, if applicable.</p>
-- @param NamedQueryId [NamedQueryId] <p>The unique identifier of the named query.</p>
function M.UnprocessedNamedQueryId(ErrorCode, ErrorMessage, NamedQueryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnprocessedNamedQueryId")
	local t = { 
		["ErrorCode"] = ErrorCode,
		["ErrorMessage"] = ErrorMessage,
		["NamedQueryId"] = NamedQueryId,
	}
	M.AssertUnprocessedNamedQueryId(t)
	return t
end

local QueryExecutionStatus_keys = { "SubmissionDateTime" = true, "State" = true, "CompletionDateTime" = true, "StateChangeReason" = true, nil }

function M.AssertQueryExecutionStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryExecutionStatus to be of type 'table'")
	if struct["SubmissionDateTime"] then M.AssertDate(struct["SubmissionDateTime"]) end
	if struct["State"] then M.AssertQueryExecutionState(struct["State"]) end
	if struct["CompletionDateTime"] then M.AssertDate(struct["CompletionDateTime"]) end
	if struct["StateChangeReason"] then M.AssertString(struct["StateChangeReason"]) end
	for k,_ in pairs(struct) do
		assert(QueryExecutionStatus_keys[k], "QueryExecutionStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryExecutionStatus
-- <p>The completion date, current state, submission time, and state change reason (if applicable) for the query execution.</p>
-- @param SubmissionDateTime [Date] <p>The date and time that the query was submitted.</p>
-- @param State [QueryExecutionState] <p>The state of query execution. <code>SUBMITTED</code> indicates that the query is queued for execution. <code>RUNNING</code> indicates that the query is scanning data and returning results. <code>SUCCEEDED</code> indicates that the query completed without error. <code>FAILED</code> indicates that the query experienced an error and did not complete processing. <code>CANCELLED</code> indicates that user input interrupted query execution.</p>
-- @param CompletionDateTime [Date] <p>The date and time that the query completed.</p>
-- @param StateChangeReason [String] <p>Further detail about the status of the query.</p>
function M.QueryExecutionStatus(SubmissionDateTime, State, CompletionDateTime, StateChangeReason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueryExecutionStatus")
	local t = { 
		["SubmissionDateTime"] = SubmissionDateTime,
		["State"] = State,
		["CompletionDateTime"] = CompletionDateTime,
		["StateChangeReason"] = StateChangeReason,
	}
	M.AssertQueryExecutionStatus(t)
	return t
end

local ResultConfiguration_keys = { "EncryptionConfiguration" = true, "OutputLocation" = true, nil }

function M.AssertResultConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResultConfiguration to be of type 'table'")
	assert(struct["OutputLocation"], "Expected key OutputLocation to exist in table")
	if struct["EncryptionConfiguration"] then M.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["OutputLocation"] then M.AssertString(struct["OutputLocation"]) end
	for k,_ in pairs(struct) do
		assert(ResultConfiguration_keys[k], "ResultConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResultConfiguration
-- <p>The location in Amazon S3 where query results are stored and the encryption option, if any, used for query results.</p>
-- @param EncryptionConfiguration [EncryptionConfiguration] <p>If query results are encrypted in S3, indicates the S3 encryption option used (for example, <code>SSE-KMS</code> or <code>CSE-KMS</code> and key information.</p>
-- @param OutputLocation [String] <p>The location in S3 where query results are stored.</p>
-- Required parameter: OutputLocation
function M.ResultConfiguration(EncryptionConfiguration, OutputLocation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResultConfiguration")
	local t = { 
		["EncryptionConfiguration"] = EncryptionConfiguration,
		["OutputLocation"] = OutputLocation,
	}
	M.AssertResultConfiguration(t)
	return t
end

local StopQueryExecutionOutput_keys = { nil }

function M.AssertStopQueryExecutionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopQueryExecutionOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(StopQueryExecutionOutput_keys[k], "StopQueryExecutionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopQueryExecutionOutput
--  
function M.StopQueryExecutionOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopQueryExecutionOutput")
	local t = { 
	}
	M.AssertStopQueryExecutionOutput(t)
	return t
end

local CreateNamedQueryOutput_keys = { "NamedQueryId" = true, nil }

function M.AssertCreateNamedQueryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNamedQueryOutput to be of type 'table'")
	if struct["NamedQueryId"] then M.AssertNamedQueryId(struct["NamedQueryId"]) end
	for k,_ in pairs(struct) do
		assert(CreateNamedQueryOutput_keys[k], "CreateNamedQueryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNamedQueryOutput
--  
-- @param NamedQueryId [NamedQueryId] <p>The unique ID of the query.</p>
function M.CreateNamedQueryOutput(NamedQueryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateNamedQueryOutput")
	local t = { 
		["NamedQueryId"] = NamedQueryId,
	}
	M.AssertCreateNamedQueryOutput(t)
	return t
end

local Datum_keys = { "VarCharValue" = true, nil }

function M.AssertDatum(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Datum to be of type 'table'")
	if struct["VarCharValue"] then M.AssertdatumString(struct["VarCharValue"]) end
	for k,_ in pairs(struct) do
		assert(Datum_keys[k], "Datum contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Datum
-- <p>A piece of data (a field in the table).</p>
-- @param VarCharValue [datumString] <p>The value of the datum.</p>
function M.Datum(VarCharValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Datum")
	local t = { 
		["VarCharValue"] = VarCharValue,
	}
	M.AssertDatum(t)
	return t
end

local BatchGetNamedQueryInput_keys = { "NamedQueryIds" = true, nil }

function M.AssertBatchGetNamedQueryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetNamedQueryInput to be of type 'table'")
	assert(struct["NamedQueryIds"], "Expected key NamedQueryIds to exist in table")
	if struct["NamedQueryIds"] then M.AssertNamedQueryIdList(struct["NamedQueryIds"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetNamedQueryInput_keys[k], "BatchGetNamedQueryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetNamedQueryInput
--  
-- @param NamedQueryIds [NamedQueryIdList] <p>An array of query IDs.</p>
-- Required parameter: NamedQueryIds
function M.BatchGetNamedQueryInput(NamedQueryIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetNamedQueryInput")
	local t = { 
		["NamedQueryIds"] = NamedQueryIds,
	}
	M.AssertBatchGetNamedQueryInput(t)
	return t
end

local DeleteNamedQueryInput_keys = { "NamedQueryId" = true, nil }

function M.AssertDeleteNamedQueryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteNamedQueryInput to be of type 'table'")
	assert(struct["NamedQueryId"], "Expected key NamedQueryId to exist in table")
	if struct["NamedQueryId"] then M.AssertNamedQueryId(struct["NamedQueryId"]) end
	for k,_ in pairs(struct) do
		assert(DeleteNamedQueryInput_keys[k], "DeleteNamedQueryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteNamedQueryInput
--  
-- @param NamedQueryId [NamedQueryId] <p>The unique ID of the query to delete.</p>
-- Required parameter: NamedQueryId
function M.DeleteNamedQueryInput(NamedQueryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteNamedQueryInput")
	local t = { 
		["NamedQueryId"] = NamedQueryId,
	}
	M.AssertDeleteNamedQueryInput(t)
	return t
end

local ListNamedQueriesOutput_keys = { "NamedQueryIds" = true, "NextToken" = true, nil }

function M.AssertListNamedQueriesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListNamedQueriesOutput to be of type 'table'")
	if struct["NamedQueryIds"] then M.AssertNamedQueryIdList(struct["NamedQueryIds"]) end
	if struct["NextToken"] then M.AssertToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(ListNamedQueriesOutput_keys[k], "ListNamedQueriesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListNamedQueriesOutput
--  
-- @param NamedQueryIds [NamedQueryIdList] <p>The list of unique query IDs.</p>
-- @param NextToken [Token] <p>A token to be used by the next request if this request is truncated.</p>
function M.ListNamedQueriesOutput(NamedQueryIds, NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListNamedQueriesOutput")
	local t = { 
		["NamedQueryIds"] = NamedQueryIds,
		["NextToken"] = NextToken,
	}
	M.AssertListNamedQueriesOutput(t)
	return t
end

local BatchGetNamedQueryOutput_keys = { "UnprocessedNamedQueryIds" = true, "NamedQueries" = true, nil }

function M.AssertBatchGetNamedQueryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetNamedQueryOutput to be of type 'table'")
	if struct["UnprocessedNamedQueryIds"] then M.AssertUnprocessedNamedQueryIdList(struct["UnprocessedNamedQueryIds"]) end
	if struct["NamedQueries"] then M.AssertNamedQueryList(struct["NamedQueries"]) end
	for k,_ in pairs(struct) do
		assert(BatchGetNamedQueryOutput_keys[k], "BatchGetNamedQueryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetNamedQueryOutput
--  
-- @param UnprocessedNamedQueryIds [UnprocessedNamedQueryIdList] <p>Information about provided query IDs.</p>
-- @param NamedQueries [NamedQueryList] <p>Information about the named query IDs submitted.</p>
function M.BatchGetNamedQueryOutput(UnprocessedNamedQueryIds, NamedQueries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetNamedQueryOutput")
	local t = { 
		["UnprocessedNamedQueryIds"] = UnprocessedNamedQueryIds,
		["NamedQueries"] = NamedQueries,
	}
	M.AssertBatchGetNamedQueryOutput(t)
	return t
end

local ResultSetMetadata_keys = { "ColumnInfo" = true, nil }

function M.AssertResultSetMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResultSetMetadata to be of type 'table'")
	if struct["ColumnInfo"] then M.AssertColumnInfoList(struct["ColumnInfo"]) end
	for k,_ in pairs(struct) do
		assert(ResultSetMetadata_keys[k], "ResultSetMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResultSetMetadata
-- <p>The metadata that describes the column structure and data types of a table of query results.</p>
-- @param ColumnInfo [ColumnInfoList] <p>Information about the columns in a query execution result.</p>
function M.ResultSetMetadata(ColumnInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResultSetMetadata")
	local t = { 
		["ColumnInfo"] = ColumnInfo,
	}
	M.AssertResultSetMetadata(t)
	return t
end

local ColumnInfo_keys = { "Scale" = true, "Name" = true, "Nullable" = true, "TableName" = true, "Precision" = true, "Label" = true, "CaseSensitive" = true, "SchemaName" = true, "Type" = true, "CatalogName" = true, nil }

function M.AssertColumnInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ColumnInfo to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Scale"] then M.AssertInteger(struct["Scale"]) end
	if struct["Name"] then M.AssertString(struct["Name"]) end
	if struct["Nullable"] then M.AssertColumnNullable(struct["Nullable"]) end
	if struct["TableName"] then M.AssertString(struct["TableName"]) end
	if struct["Precision"] then M.AssertInteger(struct["Precision"]) end
	if struct["Label"] then M.AssertString(struct["Label"]) end
	if struct["CaseSensitive"] then M.AssertBoolean(struct["CaseSensitive"]) end
	if struct["SchemaName"] then M.AssertString(struct["SchemaName"]) end
	if struct["Type"] then M.AssertString(struct["Type"]) end
	if struct["CatalogName"] then M.AssertString(struct["CatalogName"]) end
	for k,_ in pairs(struct) do
		assert(ColumnInfo_keys[k], "ColumnInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ColumnInfo
-- <p>Information about the columns in a query execution result.</p>
-- @param Scale [Integer] <p>For <code>DECIMAL</code> data types, specifies the total number of digits in the fractional part of the value. Defaults to 0.</p>
-- @param Name [String] <p>The name of the column.</p>
-- @param Nullable [ColumnNullable] <p>Indicates the column's nullable status.</p>
-- @param TableName [String] <p>The table name for the query results.</p>
-- @param Precision [Integer] <p>For <code>DECIMAL</code> data types, specifies the total number of digits, up to 38. For performance reasons, we recommend up to 18 digits.</p>
-- @param Label [String] <p>A column label.</p>
-- @param CaseSensitive [Boolean] <p>Indicates whether values in the column are case-sensitive.</p>
-- @param SchemaName [String] <p>The schema name (database name) to which the query results belong.</p>
-- @param Type [String] <p>The data type of the column.</p>
-- @param CatalogName [String] <p>The catalog to which the query results belong.</p>
-- Required parameter: Name
-- Required parameter: Type
function M.ColumnInfo(Scale, Name, Nullable, TableName, Precision, Label, CaseSensitive, SchemaName, Type, CatalogName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ColumnInfo")
	local t = { 
		["Scale"] = Scale,
		["Name"] = Name,
		["Nullable"] = Nullable,
		["TableName"] = TableName,
		["Precision"] = Precision,
		["Label"] = Label,
		["CaseSensitive"] = CaseSensitive,
		["SchemaName"] = SchemaName,
		["Type"] = Type,
		["CatalogName"] = CatalogName,
	}
	M.AssertColumnInfo(t)
	return t
end

local StopQueryExecutionInput_keys = { "QueryExecutionId" = true, nil }

function M.AssertStopQueryExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopQueryExecutionInput to be of type 'table'")
	assert(struct["QueryExecutionId"], "Expected key QueryExecutionId to exist in table")
	if struct["QueryExecutionId"] then M.AssertQueryExecutionId(struct["QueryExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(StopQueryExecutionInput_keys[k], "StopQueryExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopQueryExecutionInput
--  
-- @param QueryExecutionId [QueryExecutionId] <p>The unique ID of the query execution to stop.</p>
-- Required parameter: QueryExecutionId
function M.StopQueryExecutionInput(QueryExecutionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopQueryExecutionInput")
	local t = { 
		["QueryExecutionId"] = QueryExecutionId,
	}
	M.AssertStopQueryExecutionInput(t)
	return t
end

local Row_keys = { "Data" = true, nil }

function M.AssertRow(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Row to be of type 'table'")
	if struct["Data"] then M.AssertdatumList(struct["Data"]) end
	for k,_ in pairs(struct) do
		assert(Row_keys[k], "Row contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Row
-- <p>The rows that comprise a query result table.</p>
-- @param Data [datumList] <p>The data that populates a row in a query result table.</p>
function M.Row(Data, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Row")
	local t = { 
		["Data"] = Data,
	}
	M.AssertRow(t)
	return t
end

function M.AssertColumnNullable(str)
	assert(str)
	assert(type(str) == "string", "Expected ColumnNullable to be of type 'string'")
end

--  
function M.ColumnNullable(str)
	M.AssertColumnNullable(str)
	return str
end

function M.AssertNamedQueryId(str)
	assert(str)
	assert(type(str) == "string", "Expected NamedQueryId to be of type 'string'")
end

--  
function M.NamedQueryId(str)
	M.AssertNamedQueryId(str)
	return str
end

function M.AssertQueryString(str)
	assert(str)
	assert(type(str) == "string", "Expected QueryString to be of type 'string'")
	assert(#str <= 262144, "Expected string to be max 262144 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.QueryString(str)
	M.AssertQueryString(str)
	return str
end

function M.AssertDatabaseString(str)
	assert(str)
	assert(type(str) == "string", "Expected DatabaseString to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DatabaseString(str)
	M.AssertDatabaseString(str)
	return str
end

function M.AssertNameString(str)
	assert(str)
	assert(type(str) == "string", "Expected NameString to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NameString(str)
	M.AssertNameString(str)
	return str
end

function M.AssertQueryExecutionState(str)
	assert(str)
	assert(type(str) == "string", "Expected QueryExecutionState to be of type 'string'")
end

--  
function M.QueryExecutionState(str)
	M.AssertQueryExecutionState(str)
	return str
end

function M.AssertString(str)
	assert(str)
	assert(type(str) == "string", "Expected String to be of type 'string'")
end

--  
function M.String(str)
	M.AssertString(str)
	return str
end

function M.AssertEncryptionOption(str)
	assert(str)
	assert(type(str) == "string", "Expected EncryptionOption to be of type 'string'")
end

--  
function M.EncryptionOption(str)
	M.AssertEncryptionOption(str)
	return str
end

function M.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ErrorCode(str)
	M.AssertErrorCode(str)
	return str
end

function M.AssertdatumString(str)
	assert(str)
	assert(type(str) == "string", "Expected datumString to be of type 'string'")
end

--  
function M.datumString(str)
	M.AssertdatumString(str)
	return str
end

function M.AssertDescriptionString(str)
	assert(str)
	assert(type(str) == "string", "Expected DescriptionString to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DescriptionString(str)
	M.AssertDescriptionString(str)
	return str
end

function M.AssertIdempotencyToken(str)
	assert(str)
	assert(type(str) == "string", "Expected IdempotencyToken to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 32, "Expected string to be min 32 characters")
end

--  
function M.IdempotencyToken(str)
	M.AssertIdempotencyToken(str)
	return str
end

function M.AssertQueryExecutionId(str)
	assert(str)
	assert(type(str) == "string", "Expected QueryExecutionId to be of type 'string'")
end

--  
function M.QueryExecutionId(str)
	M.AssertQueryExecutionId(str)
	return str
end

function M.AssertErrorMessage(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorMessage to be of type 'string'")
end

--  
function M.ErrorMessage(str)
	M.AssertErrorMessage(str)
	return str
end

function M.AssertToken(str)
	assert(str)
	assert(type(str) == "string", "Expected Token to be of type 'string'")
end

--  
function M.Token(str)
	M.AssertToken(str)
	return str
end

function M.AssertThrottleReason(str)
	assert(str)
	assert(type(str) == "string", "Expected ThrottleReason to be of type 'string'")
end

--  
function M.ThrottleReason(str)
	M.AssertThrottleReason(str)
	return str
end

function M.AssertLong(long)
	assert(long)
	assert(type(long) == "number", "Expected Long to be of type 'number'")
	assert(long % 1 == 0, "Expected a whole integer number")
end

function M.Long(long)
	M.AssertLong(long)
	return long
end

function M.AssertMaxNamedQueriesCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxNamedQueriesCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
end

function M.MaxNamedQueriesCount(integer)
	M.AssertMaxNamedQueriesCount(integer)
	return integer
end

function M.AssertMaxQueryExecutionsCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxQueryExecutionsCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
end

function M.MaxQueryExecutionsCount(integer)
	M.AssertMaxQueryExecutionsCount(integer)
	return integer
end

function M.AssertInteger(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected Integer to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
end

function M.Integer(integer)
	M.AssertInteger(integer)
	return integer
end

function M.AssertMaxQueryResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxQueryResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
end

function M.MaxQueryResults(integer)
	M.AssertMaxQueryResults(integer)
	return integer
end

function M.AssertBoolean(boolean)
	assert(boolean)
	assert(type(boolean) == "boolean", "Expected Boolean to be of type 'boolean'")
end

function M.Boolean(boolean)
	M.AssertBoolean(boolean)
	return boolean
end

function M.AssertDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Date to be of type 'string'")
end

function M.Date(timestamp)
	M.AssertDate(timestamp)
	return timestamp
end

function M.AssertQueryExecutionList(list)
	assert(list)
	assert(type(list) == "table", "Expected QueryExecutionList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertQueryExecution(v)
	end
end

--  
-- List of QueryExecution objects
function M.QueryExecutionList(list)
	M.AssertQueryExecutionList(list)
	return list
end

function M.AssertNamedQueryList(list)
	assert(list)
	assert(type(list) == "table", "Expected NamedQueryList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertNamedQuery(v)
	end
end

--  
-- List of NamedQuery objects
function M.NamedQueryList(list)
	M.AssertNamedQueryList(list)
	return list
end

function M.AssertQueryExecutionIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected QueryExecutionIdList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertQueryExecutionId(v)
	end
end

--  
-- List of QueryExecutionId objects
function M.QueryExecutionIdList(list)
	M.AssertQueryExecutionIdList(list)
	return list
end

function M.AssertNamedQueryIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected NamedQueryIdList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		M.AssertNamedQueryId(v)
	end
end

--  
-- List of NamedQueryId objects
function M.NamedQueryIdList(list)
	M.AssertNamedQueryIdList(list)
	return list
end

function M.AssertColumnInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected ColumnInfoList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertColumnInfo(v)
	end
end

--  
-- List of ColumnInfo objects
function M.ColumnInfoList(list)
	M.AssertColumnInfoList(list)
	return list
end

function M.AssertUnprocessedNamedQueryIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected UnprocessedNamedQueryIdList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUnprocessedNamedQueryId(v)
	end
end

--  
-- List of UnprocessedNamedQueryId objects
function M.UnprocessedNamedQueryIdList(list)
	M.AssertUnprocessedNamedQueryIdList(list)
	return list
end

function M.AssertUnprocessedQueryExecutionIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected UnprocessedQueryExecutionIdList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertUnprocessedQueryExecutionId(v)
	end
end

--  
-- List of UnprocessedQueryExecutionId objects
function M.UnprocessedQueryExecutionIdList(list)
	M.AssertUnprocessedQueryExecutionIdList(list)
	return list
end

function M.AssertdatumList(list)
	assert(list)
	assert(type(list) == "table", "Expected datumList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertDatum(v)
	end
end

--  
-- List of Datum objects
function M.datumList(list)
	M.AssertdatumList(list)
	return list
end

function M.AssertRowList(list)
	assert(list)
	assert(type(list) == "table", "Expected RowList to be of type ''table")
	for _,v in ipairs(list) do
		M.AssertRow(v)
	end
end

--  
-- List of Row objects
function M.RowList(list)
	M.AssertRowList(list)
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
			return "athena.amazonaws.com"
		end
	end
	local ss = { "athena" }
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
--- BatchGetQueryExecution
-- @param BatchGetQueryExecutionInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetQueryExecutionAsync(BatchGetQueryExecutionInput, cb)
	assert(BatchGetQueryExecutionInput, "You must provide a BatchGetQueryExecutionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonAthena.BatchGetQueryExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchGetQueryExecutionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- DeleteNamedQuery
-- @param DeleteNamedQueryInput
-- @param cb Callback function accepting two args: response, error_message
function M.DeleteNamedQueryAsync(DeleteNamedQueryInput, cb)
	assert(DeleteNamedQueryInput, "You must provide a DeleteNamedQueryInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonAthena.DeleteNamedQuery",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", DeleteNamedQueryInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListNamedQueries
-- @param ListNamedQueriesInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListNamedQueriesAsync(ListNamedQueriesInput, cb)
	assert(ListNamedQueriesInput, "You must provide a ListNamedQueriesInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonAthena.ListNamedQueries",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListNamedQueriesInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StopQueryExecution
-- @param StopQueryExecutionInput
-- @param cb Callback function accepting two args: response, error_message
function M.StopQueryExecutionAsync(StopQueryExecutionInput, cb)
	assert(StopQueryExecutionInput, "You must provide a StopQueryExecutionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonAthena.StopQueryExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StopQueryExecutionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- BatchGetNamedQuery
-- @param BatchGetNamedQueryInput
-- @param cb Callback function accepting two args: response, error_message
function M.BatchGetNamedQueryAsync(BatchGetNamedQueryInput, cb)
	assert(BatchGetNamedQueryInput, "You must provide a BatchGetNamedQueryInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonAthena.BatchGetNamedQuery",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", BatchGetNamedQueryInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- StartQueryExecution
-- @param StartQueryExecutionInput
-- @param cb Callback function accepting two args: response, error_message
function M.StartQueryExecutionAsync(StartQueryExecutionInput, cb)
	assert(StartQueryExecutionInput, "You must provide a StartQueryExecutionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonAthena.StartQueryExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", StartQueryExecutionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetNamedQuery
-- @param GetNamedQueryInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetNamedQueryAsync(GetNamedQueryInput, cb)
	assert(GetNamedQueryInput, "You must provide a GetNamedQueryInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonAthena.GetNamedQuery",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetNamedQueryInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- ListQueryExecutions
-- @param ListQueryExecutionsInput
-- @param cb Callback function accepting two args: response, error_message
function M.ListQueryExecutionsAsync(ListQueryExecutionsInput, cb)
	assert(ListQueryExecutionsInput, "You must provide a ListQueryExecutionsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonAthena.ListQueryExecutions",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", ListQueryExecutionsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetQueryExecution
-- @param GetQueryExecutionInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetQueryExecutionAsync(GetQueryExecutionInput, cb)
	assert(GetQueryExecutionInput, "You must provide a GetQueryExecutionInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonAthena.GetQueryExecution",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetQueryExecutionInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- GetQueryResults
-- @param GetQueryResultsInput
-- @param cb Callback function accepting two args: response, error_message
function M.GetQueryResultsAsync(GetQueryResultsInput, cb)
	assert(GetQueryResultsInput, "You must provide a GetQueryResultsInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonAthena.GetQueryResults",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", GetQueryResultsInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end

--- CreateNamedQuery
-- @param CreateNamedQueryInput
-- @param cb Callback function accepting two args: response, error_message
function M.CreateNamedQueryAsync(CreateNamedQueryInput, cb)
	assert(CreateNamedQueryInput, "You must provide a CreateNamedQueryInput")
	local headers = {
		[headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[headers.AMZ_TARGET_HEADER] = "AmazonAthena.CreateNamedQuery",
	}

	local request_handler, err = request_handlers.from_http_method("POST")
	if request_handler then
		request_handler(uri .. "/", CreateNamedQueryInput, headers, M.metadata, cb)
	else
		cb(false, err)
	end
end


return M
