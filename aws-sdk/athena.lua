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

local keys = {}
local asserts = {}

keys.InvalidRequestException = { ["AthenaErrorCode"] = true, ["Message"] = true, nil }

function asserts.AssertInvalidRequestException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InvalidRequestException to be of type 'table'")
	if struct["AthenaErrorCode"] then asserts.AssertErrorCode(struct["AthenaErrorCode"]) end
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InvalidRequestException[k], "InvalidRequestException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InvalidRequestException
-- <p>Indicates that something is wrong with the input to the request. For example, a required parameter may be missing or out of range.</p>
-- @param _AthenaErrorCode [ErrorCode] 
-- @param _Message [ErrorMessage] 
function M.InvalidRequestException(_AthenaErrorCode, _Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InvalidRequestException")
	local t = { 
		["AthenaErrorCode"] = _AthenaErrorCode,
		["Message"] = _Message,
	}
	asserts.AssertInvalidRequestException(t)
	return t
end

keys.CreateNamedQueryInput = { ["ClientRequestToken"] = true, ["Database"] = true, ["QueryString"] = true, ["Name"] = true, ["Description"] = true, nil }

function asserts.AssertCreateNamedQueryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNamedQueryInput to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Database"], "Expected key Database to exist in table")
	assert(struct["QueryString"], "Expected key QueryString to exist in table")
	if struct["ClientRequestToken"] then asserts.AssertIdempotencyToken(struct["ClientRequestToken"]) end
	if struct["Database"] then asserts.AssertDatabaseString(struct["Database"]) end
	if struct["QueryString"] then asserts.AssertQueryString(struct["QueryString"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["Description"] then asserts.AssertDescriptionString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateNamedQueryInput[k], "CreateNamedQueryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNamedQueryInput
--  
-- @param _ClientRequestToken [IdempotencyToken] <p>A unique case-sensitive string used to ensure the request to create the query is idempotent (executes only once). If another <code>CreateNamedQuery</code> request is received, the same response is returned and another query is not created. If a parameter has changed, for example, the <code>QueryString</code>, an error is returned.</p> <important> <p>This token is listed as not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or the action will fail.</p> </important>
-- @param _Database [DatabaseString] <p>The database to which the query belongs.</p>
-- @param _QueryString [QueryString] <p>The text of the query itself. In other words, all query statements.</p>
-- @param _Name [NameString] <p>The plain language name for the query.</p>
-- @param _Description [DescriptionString] <p>A brief explanation of the query.</p>
-- Required parameter: Name
-- Required parameter: Database
-- Required parameter: QueryString
function M.CreateNamedQueryInput(_ClientRequestToken, _Database, _QueryString, _Name, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateNamedQueryInput")
	local t = { 
		["ClientRequestToken"] = _ClientRequestToken,
		["Database"] = _Database,
		["QueryString"] = _QueryString,
		["Name"] = _Name,
		["Description"] = _Description,
	}
	asserts.AssertCreateNamedQueryInput(t)
	return t
end

keys.ListQueryExecutionsOutput = { ["NextToken"] = true, ["QueryExecutionIds"] = true, nil }

function asserts.AssertListQueryExecutionsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListQueryExecutionsOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["QueryExecutionIds"] then asserts.AssertQueryExecutionIdList(struct["QueryExecutionIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListQueryExecutionsOutput[k], "ListQueryExecutionsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListQueryExecutionsOutput
--  
-- @param _NextToken [Token] <p>A token to be used by the next request if this request is truncated.</p>
-- @param _QueryExecutionIds [QueryExecutionIdList] <p>The unique IDs of each query execution as an array of strings.</p>
function M.ListQueryExecutionsOutput(_NextToken, _QueryExecutionIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListQueryExecutionsOutput")
	local t = { 
		["NextToken"] = _NextToken,
		["QueryExecutionIds"] = _QueryExecutionIds,
	}
	asserts.AssertListQueryExecutionsOutput(t)
	return t
end

keys.ResultSet = { ["Rows"] = true, ["ResultSetMetadata"] = true, nil }

function asserts.AssertResultSet(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResultSet to be of type 'table'")
	if struct["Rows"] then asserts.AssertRowList(struct["Rows"]) end
	if struct["ResultSetMetadata"] then asserts.AssertResultSetMetadata(struct["ResultSetMetadata"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResultSet[k], "ResultSet contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResultSet
-- <p>The metadata and rows that comprise a query result set. The metadata describes the column structure and data types.</p>
-- @param _Rows [RowList] <p>The rows in the table.</p>
-- @param _ResultSetMetadata [ResultSetMetadata] <p>The metadata that describes the column structure and data types of a table of query results.</p>
function M.ResultSet(_Rows, _ResultSetMetadata, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResultSet")
	local t = { 
		["Rows"] = _Rows,
		["ResultSetMetadata"] = _ResultSetMetadata,
	}
	asserts.AssertResultSet(t)
	return t
end

keys.InternalServerException = { ["Message"] = true, nil }

function asserts.AssertInternalServerException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected InternalServerException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	for k,_ in pairs(struct) do
		assert(keys.InternalServerException[k], "InternalServerException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type InternalServerException
-- <p>Indicates a platform issue, which may be due to a transient condition or outage.</p>
-- @param _Message [ErrorMessage] 
function M.InternalServerException(_Message, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating InternalServerException")
	local t = { 
		["Message"] = _Message,
	}
	asserts.AssertInternalServerException(t)
	return t
end

keys.EncryptionConfiguration = { ["EncryptionOption"] = true, ["KmsKey"] = true, nil }

function asserts.AssertEncryptionConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected EncryptionConfiguration to be of type 'table'")
	assert(struct["EncryptionOption"], "Expected key EncryptionOption to exist in table")
	if struct["EncryptionOption"] then asserts.AssertEncryptionOption(struct["EncryptionOption"]) end
	if struct["KmsKey"] then asserts.AssertString(struct["KmsKey"]) end
	for k,_ in pairs(struct) do
		assert(keys.EncryptionConfiguration[k], "EncryptionConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type EncryptionConfiguration
-- <p>If query results are encrypted in Amazon S3, indicates the Amazon S3 encryption option used.</p>
-- @param _EncryptionOption [EncryptionOption] <p>Indicates whether Amazon S3 server-side encryption with Amazon S3-managed keys (<code>SSE-S3</code>), server-side encryption with KMS-managed keys (<code>SSE-KMS</code>), or client-side encryption with KMS-managed keys (CSE-KMS) is used.</p>
-- @param _KmsKey [String] <p>For <code>SSE-KMS</code> and <code>CSE-KMS</code>, this is the KMS key ARN or ID.</p>
-- Required parameter: EncryptionOption
function M.EncryptionConfiguration(_EncryptionOption, _KmsKey, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating EncryptionConfiguration")
	local t = { 
		["EncryptionOption"] = _EncryptionOption,
		["KmsKey"] = _KmsKey,
	}
	asserts.AssertEncryptionConfiguration(t)
	return t
end

keys.StartQueryExecutionInput = { ["ResultConfiguration"] = true, ["QueryExecutionContext"] = true, ["QueryString"] = true, ["ClientRequestToken"] = true, nil }

function asserts.AssertStartQueryExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartQueryExecutionInput to be of type 'table'")
	assert(struct["QueryString"], "Expected key QueryString to exist in table")
	assert(struct["ResultConfiguration"], "Expected key ResultConfiguration to exist in table")
	if struct["ResultConfiguration"] then asserts.AssertResultConfiguration(struct["ResultConfiguration"]) end
	if struct["QueryExecutionContext"] then asserts.AssertQueryExecutionContext(struct["QueryExecutionContext"]) end
	if struct["QueryString"] then asserts.AssertQueryString(struct["QueryString"]) end
	if struct["ClientRequestToken"] then asserts.AssertIdempotencyToken(struct["ClientRequestToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartQueryExecutionInput[k], "StartQueryExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartQueryExecutionInput
--  
-- @param _ResultConfiguration [ResultConfiguration] <p>Specifies information about where and how to save the results of the query execution.</p>
-- @param _QueryExecutionContext [QueryExecutionContext] <p>The database within which the query executes.</p>
-- @param _QueryString [QueryString] <p>The SQL query statements to be executed.</p>
-- @param _ClientRequestToken [IdempotencyToken] <p>A unique case-sensitive string used to ensure the request to create the query is idempotent (executes only once). If another <code>StartQueryExecution</code> request is received, the same response is returned and another query is not created. If a parameter has changed, for example, the <code>QueryString</code>, an error is returned.</p> <important> <p>This token is listed as not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or the action will fail.</p> </important>
-- Required parameter: QueryString
-- Required parameter: ResultConfiguration
function M.StartQueryExecutionInput(_ResultConfiguration, _QueryExecutionContext, _QueryString, _ClientRequestToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartQueryExecutionInput")
	local t = { 
		["ResultConfiguration"] = _ResultConfiguration,
		["QueryExecutionContext"] = _QueryExecutionContext,
		["QueryString"] = _QueryString,
		["ClientRequestToken"] = _ClientRequestToken,
	}
	asserts.AssertStartQueryExecutionInput(t)
	return t
end

keys.GetQueryExecutionOutput = { ["QueryExecution"] = true, nil }

function asserts.AssertGetQueryExecutionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueryExecutionOutput to be of type 'table'")
	if struct["QueryExecution"] then asserts.AssertQueryExecution(struct["QueryExecution"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetQueryExecutionOutput[k], "GetQueryExecutionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueryExecutionOutput
--  
-- @param _QueryExecution [QueryExecution] <p>Information about the query execution.</p>
function M.GetQueryExecutionOutput(_QueryExecution, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQueryExecutionOutput")
	local t = { 
		["QueryExecution"] = _QueryExecution,
	}
	asserts.AssertGetQueryExecutionOutput(t)
	return t
end

keys.GetNamedQueryInput = { ["NamedQueryId"] = true, nil }

function asserts.AssertGetNamedQueryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetNamedQueryInput to be of type 'table'")
	assert(struct["NamedQueryId"], "Expected key NamedQueryId to exist in table")
	if struct["NamedQueryId"] then asserts.AssertNamedQueryId(struct["NamedQueryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetNamedQueryInput[k], "GetNamedQueryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetNamedQueryInput
--  
-- @param _NamedQueryId [NamedQueryId] <p>The unique ID of the query. Use <a>ListNamedQueries</a> to get query IDs.</p>
-- Required parameter: NamedQueryId
function M.GetNamedQueryInput(_NamedQueryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetNamedQueryInput")
	local t = { 
		["NamedQueryId"] = _NamedQueryId,
	}
	asserts.AssertGetNamedQueryInput(t)
	return t
end

keys.GetNamedQueryOutput = { ["NamedQuery"] = true, nil }

function asserts.AssertGetNamedQueryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetNamedQueryOutput to be of type 'table'")
	if struct["NamedQuery"] then asserts.AssertNamedQuery(struct["NamedQuery"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetNamedQueryOutput[k], "GetNamedQueryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetNamedQueryOutput
--  
-- @param _NamedQuery [NamedQuery] <p>Information about the query.</p>
function M.GetNamedQueryOutput(_NamedQuery, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetNamedQueryOutput")
	local t = { 
		["NamedQuery"] = _NamedQuery,
	}
	asserts.AssertGetNamedQueryOutput(t)
	return t
end

keys.GetQueryExecutionInput = { ["QueryExecutionId"] = true, nil }

function asserts.AssertGetQueryExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueryExecutionInput to be of type 'table'")
	assert(struct["QueryExecutionId"], "Expected key QueryExecutionId to exist in table")
	if struct["QueryExecutionId"] then asserts.AssertQueryExecutionId(struct["QueryExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetQueryExecutionInput[k], "GetQueryExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueryExecutionInput
--  
-- @param _QueryExecutionId [QueryExecutionId] <p>The unique ID of the query execution.</p>
-- Required parameter: QueryExecutionId
function M.GetQueryExecutionInput(_QueryExecutionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQueryExecutionInput")
	local t = { 
		["QueryExecutionId"] = _QueryExecutionId,
	}
	asserts.AssertGetQueryExecutionInput(t)
	return t
end

keys.NamedQuery = { ["Database"] = true, ["QueryString"] = true, ["Name"] = true, ["NamedQueryId"] = true, ["Description"] = true, nil }

function asserts.AssertNamedQuery(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected NamedQuery to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Database"], "Expected key Database to exist in table")
	assert(struct["QueryString"], "Expected key QueryString to exist in table")
	if struct["Database"] then asserts.AssertDatabaseString(struct["Database"]) end
	if struct["QueryString"] then asserts.AssertQueryString(struct["QueryString"]) end
	if struct["Name"] then asserts.AssertNameString(struct["Name"]) end
	if struct["NamedQueryId"] then asserts.AssertNamedQueryId(struct["NamedQueryId"]) end
	if struct["Description"] then asserts.AssertDescriptionString(struct["Description"]) end
	for k,_ in pairs(struct) do
		assert(keys.NamedQuery[k], "NamedQuery contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type NamedQuery
-- <p>A query, where <code>QueryString</code> is the SQL query statements that comprise the query.</p>
-- @param _Database [DatabaseString] <p>The database to which the query belongs.</p>
-- @param _QueryString [QueryString] <p>The SQL query statements that comprise the query.</p>
-- @param _Name [NameString] <p>The plain-language name of the query.</p>
-- @param _NamedQueryId [NamedQueryId] <p>The unique identifier of the query.</p>
-- @param _Description [DescriptionString] <p>A brief description of the query.</p>
-- Required parameter: Name
-- Required parameter: Database
-- Required parameter: QueryString
function M.NamedQuery(_Database, _QueryString, _Name, _NamedQueryId, _Description, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating NamedQuery")
	local t = { 
		["Database"] = _Database,
		["QueryString"] = _QueryString,
		["Name"] = _Name,
		["NamedQueryId"] = _NamedQueryId,
		["Description"] = _Description,
	}
	asserts.AssertNamedQuery(t)
	return t
end

keys.StartQueryExecutionOutput = { ["QueryExecutionId"] = true, nil }

function asserts.AssertStartQueryExecutionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StartQueryExecutionOutput to be of type 'table'")
	if struct["QueryExecutionId"] then asserts.AssertQueryExecutionId(struct["QueryExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StartQueryExecutionOutput[k], "StartQueryExecutionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StartQueryExecutionOutput
--  
-- @param _QueryExecutionId [QueryExecutionId] <p>The unique ID of the query that ran as a result of this request.</p>
function M.StartQueryExecutionOutput(_QueryExecutionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StartQueryExecutionOutput")
	local t = { 
		["QueryExecutionId"] = _QueryExecutionId,
	}
	asserts.AssertStartQueryExecutionOutput(t)
	return t
end

keys.ListNamedQueriesInput = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListNamedQueriesInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListNamedQueriesInput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxNamedQueriesCount(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListNamedQueriesInput[k], "ListNamedQueriesInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListNamedQueriesInput
--  
-- @param _NextToken [Token] <p>The token that specifies where to start pagination if a previous request was truncated.</p>
-- @param _MaxResults [MaxNamedQueriesCount] <p>The maximum number of queries to return in this request.</p>
function M.ListNamedQueriesInput(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListNamedQueriesInput")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListNamedQueriesInput(t)
	return t
end

keys.GetQueryResultsInput = { ["NextToken"] = true, ["QueryExecutionId"] = true, ["MaxResults"] = true, nil }

function asserts.AssertGetQueryResultsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueryResultsInput to be of type 'table'")
	assert(struct["QueryExecutionId"], "Expected key QueryExecutionId to exist in table")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["QueryExecutionId"] then asserts.AssertQueryExecutionId(struct["QueryExecutionId"]) end
	if struct["MaxResults"] then asserts.AssertMaxQueryResults(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetQueryResultsInput[k], "GetQueryResultsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueryResultsInput
--  
-- @param _NextToken [Token] <p>The token that specifies where to start pagination if a previous request was truncated.</p>
-- @param _QueryExecutionId [QueryExecutionId] <p>The unique ID of the query execution.</p>
-- @param _MaxResults [MaxQueryResults] <p>The maximum number of results (rows) to return in this request.</p>
-- Required parameter: QueryExecutionId
function M.GetQueryResultsInput(_NextToken, _QueryExecutionId, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQueryResultsInput")
	local t = { 
		["NextToken"] = _NextToken,
		["QueryExecutionId"] = _QueryExecutionId,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertGetQueryResultsInput(t)
	return t
end

keys.QueryExecutionStatistics = { ["DataScannedInBytes"] = true, ["EngineExecutionTimeInMillis"] = true, nil }

function asserts.AssertQueryExecutionStatistics(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryExecutionStatistics to be of type 'table'")
	if struct["DataScannedInBytes"] then asserts.AssertLong(struct["DataScannedInBytes"]) end
	if struct["EngineExecutionTimeInMillis"] then asserts.AssertLong(struct["EngineExecutionTimeInMillis"]) end
	for k,_ in pairs(struct) do
		assert(keys.QueryExecutionStatistics[k], "QueryExecutionStatistics contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryExecutionStatistics
-- <p>The amount of data scanned during the query execution and the amount of time that it took to execute.</p>
-- @param _DataScannedInBytes [Long] <p>The number of bytes in the data that was queried.</p>
-- @param _EngineExecutionTimeInMillis [Long] <p>The number of milliseconds that the query took to execute.</p>
function M.QueryExecutionStatistics(_DataScannedInBytes, _EngineExecutionTimeInMillis, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueryExecutionStatistics")
	local t = { 
		["DataScannedInBytes"] = _DataScannedInBytes,
		["EngineExecutionTimeInMillis"] = _EngineExecutionTimeInMillis,
	}
	asserts.AssertQueryExecutionStatistics(t)
	return t
end

keys.DeleteNamedQueryOutput = { nil }

function asserts.AssertDeleteNamedQueryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteNamedQueryOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.DeleteNamedQueryOutput[k], "DeleteNamedQueryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteNamedQueryOutput
--  
function M.DeleteNamedQueryOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteNamedQueryOutput")
	local t = { 
	}
	asserts.AssertDeleteNamedQueryOutput(t)
	return t
end

keys.UnprocessedQueryExecutionId = { ["ErrorCode"] = true, ["ErrorMessage"] = true, ["QueryExecutionId"] = true, nil }

function asserts.AssertUnprocessedQueryExecutionId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnprocessedQueryExecutionId to be of type 'table'")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then asserts.AssertErrorMessage(struct["ErrorMessage"]) end
	if struct["QueryExecutionId"] then asserts.AssertQueryExecutionId(struct["QueryExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnprocessedQueryExecutionId[k], "UnprocessedQueryExecutionId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnprocessedQueryExecutionId
-- <p>Describes a query execution that failed to process.</p>
-- @param _ErrorCode [ErrorCode] <p>The error code returned when the query execution failed to process, if applicable.</p>
-- @param _ErrorMessage [ErrorMessage] <p>The error message returned when the query execution failed to process, if applicable.</p>
-- @param _QueryExecutionId [QueryExecutionId] <p>The unique identifier of the query execution.</p>
function M.UnprocessedQueryExecutionId(_ErrorCode, _ErrorMessage, _QueryExecutionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnprocessedQueryExecutionId")
	local t = { 
		["ErrorCode"] = _ErrorCode,
		["ErrorMessage"] = _ErrorMessage,
		["QueryExecutionId"] = _QueryExecutionId,
	}
	asserts.AssertUnprocessedQueryExecutionId(t)
	return t
end

keys.BatchGetQueryExecutionInput = { ["QueryExecutionIds"] = true, nil }

function asserts.AssertBatchGetQueryExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetQueryExecutionInput to be of type 'table'")
	assert(struct["QueryExecutionIds"], "Expected key QueryExecutionIds to exist in table")
	if struct["QueryExecutionIds"] then asserts.AssertQueryExecutionIdList(struct["QueryExecutionIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetQueryExecutionInput[k], "BatchGetQueryExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetQueryExecutionInput
--  
-- @param _QueryExecutionIds [QueryExecutionIdList] <p>An array of query execution IDs.</p>
-- Required parameter: QueryExecutionIds
function M.BatchGetQueryExecutionInput(_QueryExecutionIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetQueryExecutionInput")
	local t = { 
		["QueryExecutionIds"] = _QueryExecutionIds,
	}
	asserts.AssertBatchGetQueryExecutionInput(t)
	return t
end

keys.QueryExecution = { ["Status"] = true, ["Statistics"] = true, ["ResultConfiguration"] = true, ["QueryExecutionId"] = true, ["QueryExecutionContext"] = true, ["Query"] = true, nil }

function asserts.AssertQueryExecution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryExecution to be of type 'table'")
	if struct["Status"] then asserts.AssertQueryExecutionStatus(struct["Status"]) end
	if struct["Statistics"] then asserts.AssertQueryExecutionStatistics(struct["Statistics"]) end
	if struct["ResultConfiguration"] then asserts.AssertResultConfiguration(struct["ResultConfiguration"]) end
	if struct["QueryExecutionId"] then asserts.AssertQueryExecutionId(struct["QueryExecutionId"]) end
	if struct["QueryExecutionContext"] then asserts.AssertQueryExecutionContext(struct["QueryExecutionContext"]) end
	if struct["Query"] then asserts.AssertQueryString(struct["Query"]) end
	for k,_ in pairs(struct) do
		assert(keys.QueryExecution[k], "QueryExecution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryExecution
-- <p>Information about a single instance of a query execution.</p>
-- @param _Status [QueryExecutionStatus] <p>The completion date, current state, submission time, and state change reason (if applicable) for the query execution.</p>
-- @param _Statistics [QueryExecutionStatistics] <p>The amount of data scanned during the query execution and the amount of time that it took to execute.</p>
-- @param _ResultConfiguration [ResultConfiguration] <p>The location in Amazon S3 where query results were stored and the encryption option, if any, used for query results.</p>
-- @param _QueryExecutionId [QueryExecutionId] <p>The unique identifier for each query execution.</p>
-- @param _QueryExecutionContext [QueryExecutionContext] <p>The database in which the query execution occurred.</p>
-- @param _Query [QueryString] <p>The SQL query statements which the query execution ran.</p>
function M.QueryExecution(_Status, _Statistics, _ResultConfiguration, _QueryExecutionId, _QueryExecutionContext, _Query, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueryExecution")
	local t = { 
		["Status"] = _Status,
		["Statistics"] = _Statistics,
		["ResultConfiguration"] = _ResultConfiguration,
		["QueryExecutionId"] = _QueryExecutionId,
		["QueryExecutionContext"] = _QueryExecutionContext,
		["Query"] = _Query,
	}
	asserts.AssertQueryExecution(t)
	return t
end

keys.QueryExecutionContext = { ["Database"] = true, nil }

function asserts.AssertQueryExecutionContext(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryExecutionContext to be of type 'table'")
	if struct["Database"] then asserts.AssertDatabaseString(struct["Database"]) end
	for k,_ in pairs(struct) do
		assert(keys.QueryExecutionContext[k], "QueryExecutionContext contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryExecutionContext
-- <p>The database in which the query execution occurs.</p>
-- @param _Database [DatabaseString] <p>The name of the database.</p>
function M.QueryExecutionContext(_Database, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueryExecutionContext")
	local t = { 
		["Database"] = _Database,
	}
	asserts.AssertQueryExecutionContext(t)
	return t
end

keys.TooManyRequestsException = { ["Message"] = true, ["Reason"] = true, nil }

function asserts.AssertTooManyRequestsException(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected TooManyRequestsException to be of type 'table'")
	if struct["Message"] then asserts.AssertErrorMessage(struct["Message"]) end
	if struct["Reason"] then asserts.AssertThrottleReason(struct["Reason"]) end
	for k,_ in pairs(struct) do
		assert(keys.TooManyRequestsException[k], "TooManyRequestsException contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type TooManyRequestsException
-- <p>Indicates that the request was throttled.</p>
-- @param _Message [ErrorMessage] 
-- @param _Reason [ThrottleReason] 
function M.TooManyRequestsException(_Message, _Reason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating TooManyRequestsException")
	local t = { 
		["Message"] = _Message,
		["Reason"] = _Reason,
	}
	asserts.AssertTooManyRequestsException(t)
	return t
end

keys.GetQueryResultsOutput = { ["NextToken"] = true, ["ResultSet"] = true, nil }

function asserts.AssertGetQueryResultsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueryResultsOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["ResultSet"] then asserts.AssertResultSet(struct["ResultSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetQueryResultsOutput[k], "GetQueryResultsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueryResultsOutput
--  
-- @param _NextToken [Token] <p>A token to be used by the next request if this request is truncated.</p>
-- @param _ResultSet [ResultSet] <p>The results of the query execution.</p>
function M.GetQueryResultsOutput(_NextToken, _ResultSet, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating GetQueryResultsOutput")
	local t = { 
		["NextToken"] = _NextToken,
		["ResultSet"] = _ResultSet,
	}
	asserts.AssertGetQueryResultsOutput(t)
	return t
end

keys.BatchGetQueryExecutionOutput = { ["UnprocessedQueryExecutionIds"] = true, ["QueryExecutions"] = true, nil }

function asserts.AssertBatchGetQueryExecutionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetQueryExecutionOutput to be of type 'table'")
	if struct["UnprocessedQueryExecutionIds"] then asserts.AssertUnprocessedQueryExecutionIdList(struct["UnprocessedQueryExecutionIds"]) end
	if struct["QueryExecutions"] then asserts.AssertQueryExecutionList(struct["QueryExecutions"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetQueryExecutionOutput[k], "BatchGetQueryExecutionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetQueryExecutionOutput
--  
-- @param _UnprocessedQueryExecutionIds [UnprocessedQueryExecutionIdList] <p>Information about the query executions that failed to run.</p>
-- @param _QueryExecutions [QueryExecutionList] <p>Information about a query execution.</p>
function M.BatchGetQueryExecutionOutput(_UnprocessedQueryExecutionIds, _QueryExecutions, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetQueryExecutionOutput")
	local t = { 
		["UnprocessedQueryExecutionIds"] = _UnprocessedQueryExecutionIds,
		["QueryExecutions"] = _QueryExecutions,
	}
	asserts.AssertBatchGetQueryExecutionOutput(t)
	return t
end

keys.ListQueryExecutionsInput = { ["NextToken"] = true, ["MaxResults"] = true, nil }

function asserts.AssertListQueryExecutionsInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListQueryExecutionsInput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["MaxResults"] then asserts.AssertMaxQueryExecutionsCount(struct["MaxResults"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListQueryExecutionsInput[k], "ListQueryExecutionsInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListQueryExecutionsInput
--  
-- @param _NextToken [Token] <p>The token that specifies where to start pagination if a previous request was truncated.</p>
-- @param _MaxResults [MaxQueryExecutionsCount] <p>The maximum number of query executions to return in this request.</p>
function M.ListQueryExecutionsInput(_NextToken, _MaxResults, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListQueryExecutionsInput")
	local t = { 
		["NextToken"] = _NextToken,
		["MaxResults"] = _MaxResults,
	}
	asserts.AssertListQueryExecutionsInput(t)
	return t
end

keys.UnprocessedNamedQueryId = { ["ErrorCode"] = true, ["ErrorMessage"] = true, ["NamedQueryId"] = true, nil }

function asserts.AssertUnprocessedNamedQueryId(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected UnprocessedNamedQueryId to be of type 'table'")
	if struct["ErrorCode"] then asserts.AssertErrorCode(struct["ErrorCode"]) end
	if struct["ErrorMessage"] then asserts.AssertErrorMessage(struct["ErrorMessage"]) end
	if struct["NamedQueryId"] then asserts.AssertNamedQueryId(struct["NamedQueryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.UnprocessedNamedQueryId[k], "UnprocessedNamedQueryId contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type UnprocessedNamedQueryId
-- <p>Information about a named query ID that could not be processed.</p>
-- @param _ErrorCode [ErrorCode] <p>The error code returned when the processing request for the named query failed, if applicable.</p>
-- @param _ErrorMessage [ErrorMessage] <p>The error message returned when the processing request for the named query failed, if applicable.</p>
-- @param _NamedQueryId [NamedQueryId] <p>The unique identifier of the named query.</p>
function M.UnprocessedNamedQueryId(_ErrorCode, _ErrorMessage, _NamedQueryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating UnprocessedNamedQueryId")
	local t = { 
		["ErrorCode"] = _ErrorCode,
		["ErrorMessage"] = _ErrorMessage,
		["NamedQueryId"] = _NamedQueryId,
	}
	asserts.AssertUnprocessedNamedQueryId(t)
	return t
end

keys.QueryExecutionStatus = { ["SubmissionDateTime"] = true, ["State"] = true, ["CompletionDateTime"] = true, ["StateChangeReason"] = true, nil }

function asserts.AssertQueryExecutionStatus(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryExecutionStatus to be of type 'table'")
	if struct["SubmissionDateTime"] then asserts.AssertDate(struct["SubmissionDateTime"]) end
	if struct["State"] then asserts.AssertQueryExecutionState(struct["State"]) end
	if struct["CompletionDateTime"] then asserts.AssertDate(struct["CompletionDateTime"]) end
	if struct["StateChangeReason"] then asserts.AssertString(struct["StateChangeReason"]) end
	for k,_ in pairs(struct) do
		assert(keys.QueryExecutionStatus[k], "QueryExecutionStatus contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryExecutionStatus
-- <p>The completion date, current state, submission time, and state change reason (if applicable) for the query execution.</p>
-- @param _SubmissionDateTime [Date] <p>The date and time that the query was submitted.</p>
-- @param _State [QueryExecutionState] <p>The state of query execution. <code>SUBMITTED</code> indicates that the query is queued for execution. <code>RUNNING</code> indicates that the query is scanning data and returning results. <code>SUCCEEDED</code> indicates that the query completed without error. <code>FAILED</code> indicates that the query experienced an error and did not complete processing. <code>CANCELLED</code> indicates that user input interrupted query execution.</p>
-- @param _CompletionDateTime [Date] <p>The date and time that the query completed.</p>
-- @param _StateChangeReason [String] <p>Further detail about the status of the query.</p>
function M.QueryExecutionStatus(_SubmissionDateTime, _State, _CompletionDateTime, _StateChangeReason, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating QueryExecutionStatus")
	local t = { 
		["SubmissionDateTime"] = _SubmissionDateTime,
		["State"] = _State,
		["CompletionDateTime"] = _CompletionDateTime,
		["StateChangeReason"] = _StateChangeReason,
	}
	asserts.AssertQueryExecutionStatus(t)
	return t
end

keys.ResultConfiguration = { ["EncryptionConfiguration"] = true, ["OutputLocation"] = true, nil }

function asserts.AssertResultConfiguration(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResultConfiguration to be of type 'table'")
	assert(struct["OutputLocation"], "Expected key OutputLocation to exist in table")
	if struct["EncryptionConfiguration"] then asserts.AssertEncryptionConfiguration(struct["EncryptionConfiguration"]) end
	if struct["OutputLocation"] then asserts.AssertString(struct["OutputLocation"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResultConfiguration[k], "ResultConfiguration contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResultConfiguration
-- <p>The location in Amazon S3 where query results are stored and the encryption option, if any, used for query results.</p>
-- @param _EncryptionConfiguration [EncryptionConfiguration] <p>If query results are encrypted in S3, indicates the S3 encryption option used (for example, <code>SSE-KMS</code> or <code>CSE-KMS</code> and key information.</p>
-- @param _OutputLocation [String] <p>The location in S3 where query results are stored.</p>
-- Required parameter: OutputLocation
function M.ResultConfiguration(_EncryptionConfiguration, _OutputLocation, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResultConfiguration")
	local t = { 
		["EncryptionConfiguration"] = _EncryptionConfiguration,
		["OutputLocation"] = _OutputLocation,
	}
	asserts.AssertResultConfiguration(t)
	return t
end

keys.StopQueryExecutionOutput = { nil }

function asserts.AssertStopQueryExecutionOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopQueryExecutionOutput to be of type 'table'")
	for k,_ in pairs(struct) do
		assert(keys.StopQueryExecutionOutput[k], "StopQueryExecutionOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopQueryExecutionOutput
--  
function M.StopQueryExecutionOutput(...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopQueryExecutionOutput")
	local t = { 
	}
	asserts.AssertStopQueryExecutionOutput(t)
	return t
end

keys.CreateNamedQueryOutput = { ["NamedQueryId"] = true, nil }

function asserts.AssertCreateNamedQueryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected CreateNamedQueryOutput to be of type 'table'")
	if struct["NamedQueryId"] then asserts.AssertNamedQueryId(struct["NamedQueryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.CreateNamedQueryOutput[k], "CreateNamedQueryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type CreateNamedQueryOutput
--  
-- @param _NamedQueryId [NamedQueryId] <p>The unique ID of the query.</p>
function M.CreateNamedQueryOutput(_NamedQueryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating CreateNamedQueryOutput")
	local t = { 
		["NamedQueryId"] = _NamedQueryId,
	}
	asserts.AssertCreateNamedQueryOutput(t)
	return t
end

keys.Datum = { ["VarCharValue"] = true, nil }

function asserts.AssertDatum(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Datum to be of type 'table'")
	if struct["VarCharValue"] then asserts.AssertdatumString(struct["VarCharValue"]) end
	for k,_ in pairs(struct) do
		assert(keys.Datum[k], "Datum contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Datum
-- <p>A piece of data (a field in the table).</p>
-- @param _VarCharValue [datumString] <p>The value of the datum.</p>
function M.Datum(_VarCharValue, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Datum")
	local t = { 
		["VarCharValue"] = _VarCharValue,
	}
	asserts.AssertDatum(t)
	return t
end

keys.BatchGetNamedQueryInput = { ["NamedQueryIds"] = true, nil }

function asserts.AssertBatchGetNamedQueryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetNamedQueryInput to be of type 'table'")
	assert(struct["NamedQueryIds"], "Expected key NamedQueryIds to exist in table")
	if struct["NamedQueryIds"] then asserts.AssertNamedQueryIdList(struct["NamedQueryIds"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetNamedQueryInput[k], "BatchGetNamedQueryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetNamedQueryInput
--  
-- @param _NamedQueryIds [NamedQueryIdList] <p>An array of query IDs.</p>
-- Required parameter: NamedQueryIds
function M.BatchGetNamedQueryInput(_NamedQueryIds, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetNamedQueryInput")
	local t = { 
		["NamedQueryIds"] = _NamedQueryIds,
	}
	asserts.AssertBatchGetNamedQueryInput(t)
	return t
end

keys.DeleteNamedQueryInput = { ["NamedQueryId"] = true, nil }

function asserts.AssertDeleteNamedQueryInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected DeleteNamedQueryInput to be of type 'table'")
	assert(struct["NamedQueryId"], "Expected key NamedQueryId to exist in table")
	if struct["NamedQueryId"] then asserts.AssertNamedQueryId(struct["NamedQueryId"]) end
	for k,_ in pairs(struct) do
		assert(keys.DeleteNamedQueryInput[k], "DeleteNamedQueryInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type DeleteNamedQueryInput
--  
-- @param _NamedQueryId [NamedQueryId] <p>The unique ID of the query to delete.</p>
-- Required parameter: NamedQueryId
function M.DeleteNamedQueryInput(_NamedQueryId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating DeleteNamedQueryInput")
	local t = { 
		["NamedQueryId"] = _NamedQueryId,
	}
	asserts.AssertDeleteNamedQueryInput(t)
	return t
end

keys.ListNamedQueriesOutput = { ["NamedQueryIds"] = true, ["NextToken"] = true, nil }

function asserts.AssertListNamedQueriesOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ListNamedQueriesOutput to be of type 'table'")
	if struct["NamedQueryIds"] then asserts.AssertNamedQueryIdList(struct["NamedQueryIds"]) end
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	for k,_ in pairs(struct) do
		assert(keys.ListNamedQueriesOutput[k], "ListNamedQueriesOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ListNamedQueriesOutput
--  
-- @param _NamedQueryIds [NamedQueryIdList] <p>The list of unique query IDs.</p>
-- @param _NextToken [Token] <p>A token to be used by the next request if this request is truncated.</p>
function M.ListNamedQueriesOutput(_NamedQueryIds, _NextToken, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ListNamedQueriesOutput")
	local t = { 
		["NamedQueryIds"] = _NamedQueryIds,
		["NextToken"] = _NextToken,
	}
	asserts.AssertListNamedQueriesOutput(t)
	return t
end

keys.BatchGetNamedQueryOutput = { ["UnprocessedNamedQueryIds"] = true, ["NamedQueries"] = true, nil }

function asserts.AssertBatchGetNamedQueryOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected BatchGetNamedQueryOutput to be of type 'table'")
	if struct["UnprocessedNamedQueryIds"] then asserts.AssertUnprocessedNamedQueryIdList(struct["UnprocessedNamedQueryIds"]) end
	if struct["NamedQueries"] then asserts.AssertNamedQueryList(struct["NamedQueries"]) end
	for k,_ in pairs(struct) do
		assert(keys.BatchGetNamedQueryOutput[k], "BatchGetNamedQueryOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type BatchGetNamedQueryOutput
--  
-- @param _UnprocessedNamedQueryIds [UnprocessedNamedQueryIdList] <p>Information about provided query IDs.</p>
-- @param _NamedQueries [NamedQueryList] <p>Information about the named query IDs submitted.</p>
function M.BatchGetNamedQueryOutput(_UnprocessedNamedQueryIds, _NamedQueries, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating BatchGetNamedQueryOutput")
	local t = { 
		["UnprocessedNamedQueryIds"] = _UnprocessedNamedQueryIds,
		["NamedQueries"] = _NamedQueries,
	}
	asserts.AssertBatchGetNamedQueryOutput(t)
	return t
end

keys.ResultSetMetadata = { ["ColumnInfo"] = true, nil }

function asserts.AssertResultSetMetadata(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ResultSetMetadata to be of type 'table'")
	if struct["ColumnInfo"] then asserts.AssertColumnInfoList(struct["ColumnInfo"]) end
	for k,_ in pairs(struct) do
		assert(keys.ResultSetMetadata[k], "ResultSetMetadata contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ResultSetMetadata
-- <p>The metadata that describes the column structure and data types of a table of query results.</p>
-- @param _ColumnInfo [ColumnInfoList] <p>Information about the columns in a query execution result.</p>
function M.ResultSetMetadata(_ColumnInfo, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ResultSetMetadata")
	local t = { 
		["ColumnInfo"] = _ColumnInfo,
	}
	asserts.AssertResultSetMetadata(t)
	return t
end

keys.ColumnInfo = { ["Scale"] = true, ["Name"] = true, ["Nullable"] = true, ["TableName"] = true, ["Precision"] = true, ["Label"] = true, ["CaseSensitive"] = true, ["SchemaName"] = true, ["Type"] = true, ["CatalogName"] = true, nil }

function asserts.AssertColumnInfo(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected ColumnInfo to be of type 'table'")
	assert(struct["Name"], "Expected key Name to exist in table")
	assert(struct["Type"], "Expected key Type to exist in table")
	if struct["Scale"] then asserts.AssertInteger(struct["Scale"]) end
	if struct["Name"] then asserts.AssertString(struct["Name"]) end
	if struct["Nullable"] then asserts.AssertColumnNullable(struct["Nullable"]) end
	if struct["TableName"] then asserts.AssertString(struct["TableName"]) end
	if struct["Precision"] then asserts.AssertInteger(struct["Precision"]) end
	if struct["Label"] then asserts.AssertString(struct["Label"]) end
	if struct["CaseSensitive"] then asserts.AssertBoolean(struct["CaseSensitive"]) end
	if struct["SchemaName"] then asserts.AssertString(struct["SchemaName"]) end
	if struct["Type"] then asserts.AssertString(struct["Type"]) end
	if struct["CatalogName"] then asserts.AssertString(struct["CatalogName"]) end
	for k,_ in pairs(struct) do
		assert(keys.ColumnInfo[k], "ColumnInfo contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type ColumnInfo
-- <p>Information about the columns in a query execution result.</p>
-- @param _Scale [Integer] <p>For <code>DECIMAL</code> data types, specifies the total number of digits in the fractional part of the value. Defaults to 0.</p>
-- @param _Name [String] <p>The name of the column.</p>
-- @param _Nullable [ColumnNullable] <p>Indicates the column's nullable status.</p>
-- @param _TableName [String] <p>The table name for the query results.</p>
-- @param _Precision [Integer] <p>For <code>DECIMAL</code> data types, specifies the total number of digits, up to 38. For performance reasons, we recommend up to 18 digits.</p>
-- @param _Label [String] <p>A column label.</p>
-- @param _CaseSensitive [Boolean] <p>Indicates whether values in the column are case-sensitive.</p>
-- @param _SchemaName [String] <p>The schema name (database name) to which the query results belong.</p>
-- @param _Type [String] <p>The data type of the column.</p>
-- @param _CatalogName [String] <p>The catalog to which the query results belong.</p>
-- Required parameter: Name
-- Required parameter: Type
function M.ColumnInfo(_Scale, _Name, _Nullable, _TableName, _Precision, _Label, _CaseSensitive, _SchemaName, _Type, _CatalogName, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating ColumnInfo")
	local t = { 
		["Scale"] = _Scale,
		["Name"] = _Name,
		["Nullable"] = _Nullable,
		["TableName"] = _TableName,
		["Precision"] = _Precision,
		["Label"] = _Label,
		["CaseSensitive"] = _CaseSensitive,
		["SchemaName"] = _SchemaName,
		["Type"] = _Type,
		["CatalogName"] = _CatalogName,
	}
	asserts.AssertColumnInfo(t)
	return t
end

keys.StopQueryExecutionInput = { ["QueryExecutionId"] = true, nil }

function asserts.AssertStopQueryExecutionInput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected StopQueryExecutionInput to be of type 'table'")
	assert(struct["QueryExecutionId"], "Expected key QueryExecutionId to exist in table")
	if struct["QueryExecutionId"] then asserts.AssertQueryExecutionId(struct["QueryExecutionId"]) end
	for k,_ in pairs(struct) do
		assert(keys.StopQueryExecutionInput[k], "StopQueryExecutionInput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type StopQueryExecutionInput
--  
-- @param _QueryExecutionId [QueryExecutionId] <p>The unique ID of the query execution to stop.</p>
-- Required parameter: QueryExecutionId
function M.StopQueryExecutionInput(_QueryExecutionId, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating StopQueryExecutionInput")
	local t = { 
		["QueryExecutionId"] = _QueryExecutionId,
	}
	asserts.AssertStopQueryExecutionInput(t)
	return t
end

keys.Row = { ["Data"] = true, nil }

function asserts.AssertRow(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected Row to be of type 'table'")
	if struct["Data"] then asserts.AssertdatumList(struct["Data"]) end
	for k,_ in pairs(struct) do
		assert(keys.Row[k], "Row contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type Row
-- <p>The rows that comprise a query result table.</p>
-- @param _Data [datumList] <p>The data that populates a row in a query result table.</p>
function M.Row(_Data, ...)
	assert(select("#", ...) == 0, "Too many arguments when creating Row")
	local t = { 
		["Data"] = _Data,
	}
	asserts.AssertRow(t)
	return t
end

function asserts.AssertColumnNullable(str)
	assert(str)
	assert(type(str) == "string", "Expected ColumnNullable to be of type 'string'")
end

--  
function M.ColumnNullable(str)
	asserts.AssertColumnNullable(str)
	return str
end

function asserts.AssertNamedQueryId(str)
	assert(str)
	assert(type(str) == "string", "Expected NamedQueryId to be of type 'string'")
end

--  
function M.NamedQueryId(str)
	asserts.AssertNamedQueryId(str)
	return str
end

function asserts.AssertQueryString(str)
	assert(str)
	assert(type(str) == "string", "Expected QueryString to be of type 'string'")
	assert(#str <= 262144, "Expected string to be max 262144 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.QueryString(str)
	asserts.AssertQueryString(str)
	return str
end

function asserts.AssertDatabaseString(str)
	assert(str)
	assert(type(str) == "string", "Expected DatabaseString to be of type 'string'")
	assert(#str <= 32, "Expected string to be max 32 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DatabaseString(str)
	asserts.AssertDatabaseString(str)
	return str
end

function asserts.AssertNameString(str)
	assert(str)
	assert(type(str) == "string", "Expected NameString to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.NameString(str)
	asserts.AssertNameString(str)
	return str
end

function asserts.AssertQueryExecutionState(str)
	assert(str)
	assert(type(str) == "string", "Expected QueryExecutionState to be of type 'string'")
end

--  
function M.QueryExecutionState(str)
	asserts.AssertQueryExecutionState(str)
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

function asserts.AssertEncryptionOption(str)
	assert(str)
	assert(type(str) == "string", "Expected EncryptionOption to be of type 'string'")
end

--  
function M.EncryptionOption(str)
	asserts.AssertEncryptionOption(str)
	return str
end

function asserts.AssertErrorCode(str)
	assert(str)
	assert(type(str) == "string", "Expected ErrorCode to be of type 'string'")
	assert(#str <= 256, "Expected string to be max 256 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.ErrorCode(str)
	asserts.AssertErrorCode(str)
	return str
end

function asserts.AssertdatumString(str)
	assert(str)
	assert(type(str) == "string", "Expected datumString to be of type 'string'")
end

--  
function M.datumString(str)
	asserts.AssertdatumString(str)
	return str
end

function asserts.AssertDescriptionString(str)
	assert(str)
	assert(type(str) == "string", "Expected DescriptionString to be of type 'string'")
	assert(#str <= 1024, "Expected string to be max 1024 characters")
	assert(#str >= 1, "Expected string to be min 1 characters")
end

--  
function M.DescriptionString(str)
	asserts.AssertDescriptionString(str)
	return str
end

function asserts.AssertIdempotencyToken(str)
	assert(str)
	assert(type(str) == "string", "Expected IdempotencyToken to be of type 'string'")
	assert(#str <= 128, "Expected string to be max 128 characters")
	assert(#str >= 32, "Expected string to be min 32 characters")
end

--  
function M.IdempotencyToken(str)
	asserts.AssertIdempotencyToken(str)
	return str
end

function asserts.AssertQueryExecutionId(str)
	assert(str)
	assert(type(str) == "string", "Expected QueryExecutionId to be of type 'string'")
end

--  
function M.QueryExecutionId(str)
	asserts.AssertQueryExecutionId(str)
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

function asserts.AssertToken(str)
	assert(str)
	assert(type(str) == "string", "Expected Token to be of type 'string'")
end

--  
function M.Token(str)
	asserts.AssertToken(str)
	return str
end

function asserts.AssertThrottleReason(str)
	assert(str)
	assert(type(str) == "string", "Expected ThrottleReason to be of type 'string'")
end

--  
function M.ThrottleReason(str)
	asserts.AssertThrottleReason(str)
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

function asserts.AssertMaxNamedQueriesCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxNamedQueriesCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
end

function M.MaxNamedQueriesCount(integer)
	asserts.AssertMaxNamedQueriesCount(integer)
	return integer
end

function asserts.AssertMaxQueryExecutionsCount(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxQueryExecutionsCount to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 50, "Expected integer to be max 50")
end

function M.MaxQueryExecutionsCount(integer)
	asserts.AssertMaxQueryExecutionsCount(integer)
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

function asserts.AssertMaxQueryResults(integer)
	assert(integer)
	assert(type(integer) == "number", "Expected MaxQueryResults to be of type 'number'")
	assert(integer % 1 == 0, "Expected a while integer number")
	assert(integer <= 1000, "Expected integer to be max 1000")
end

function M.MaxQueryResults(integer)
	asserts.AssertMaxQueryResults(integer)
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

function asserts.AssertDate(timestamp)
	assert(timestamp)
	assert(type(timestamp) == "string", "Expected Date to be of type 'string'")
end

function M.Date(timestamp)
	asserts.AssertDate(timestamp)
	return timestamp
end

function asserts.AssertQueryExecutionList(list)
	assert(list)
	assert(type(list) == "table", "Expected QueryExecutionList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertQueryExecution(v)
	end
end

--  
-- List of QueryExecution objects
function M.QueryExecutionList(list)
	asserts.AssertQueryExecutionList(list)
	return list
end

function asserts.AssertNamedQueryList(list)
	assert(list)
	assert(type(list) == "table", "Expected NamedQueryList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertNamedQuery(v)
	end
end

--  
-- List of NamedQuery objects
function M.NamedQueryList(list)
	asserts.AssertNamedQueryList(list)
	return list
end

function asserts.AssertQueryExecutionIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected QueryExecutionIdList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertQueryExecutionId(v)
	end
end

--  
-- List of QueryExecutionId objects
function M.QueryExecutionIdList(list)
	asserts.AssertQueryExecutionIdList(list)
	return list
end

function asserts.AssertNamedQueryIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected NamedQueryIdList to be of type ''table")
	assert(#list <= 50, "Expected list to be contain 50 elements")
	assert(#list >= 1, "Expected list to be contain 1 elements")
	for _,v in ipairs(list) do
		asserts.AssertNamedQueryId(v)
	end
end

--  
-- List of NamedQueryId objects
function M.NamedQueryIdList(list)
	asserts.AssertNamedQueryIdList(list)
	return list
end

function asserts.AssertColumnInfoList(list)
	assert(list)
	assert(type(list) == "table", "Expected ColumnInfoList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertColumnInfo(v)
	end
end

--  
-- List of ColumnInfo objects
function M.ColumnInfoList(list)
	asserts.AssertColumnInfoList(list)
	return list
end

function asserts.AssertUnprocessedNamedQueryIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected UnprocessedNamedQueryIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUnprocessedNamedQueryId(v)
	end
end

--  
-- List of UnprocessedNamedQueryId objects
function M.UnprocessedNamedQueryIdList(list)
	asserts.AssertUnprocessedNamedQueryIdList(list)
	return list
end

function asserts.AssertUnprocessedQueryExecutionIdList(list)
	assert(list)
	assert(type(list) == "table", "Expected UnprocessedQueryExecutionIdList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertUnprocessedQueryExecutionId(v)
	end
end

--  
-- List of UnprocessedQueryExecutionId objects
function M.UnprocessedQueryExecutionIdList(list)
	asserts.AssertUnprocessedQueryExecutionIdList(list)
	return list
end

function asserts.AssertdatumList(list)
	assert(list)
	assert(type(list) == "table", "Expected datumList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertDatum(v)
	end
end

--  
-- List of Datum objects
function M.datumList(list)
	asserts.AssertdatumList(list)
	return list
end

function asserts.AssertRowList(list)
	assert(list)
	assert(type(list) == "table", "Expected RowList to be of type ''table")
	for _,v in ipairs(list) do
		asserts.AssertRow(v)
	end
end

--  
-- List of Row objects
function M.RowList(list)
	asserts.AssertRowList(list)
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
