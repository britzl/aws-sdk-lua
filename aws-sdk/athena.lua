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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * SubmissionDateTime [Date] <p>The date and time that the query was submitted.</p>
-- * State [QueryExecutionState] <p>The state of query execution. <code>QUEUED</code> state is listed but is not used by Athena and is reserved for future use. <code>RUNNING</code> indicates that the query has been submitted to the service, and Athena will execute the query as soon as resources are available. <code>SUCCEEDED</code> indicates that the query completed without error. <code>FAILED</code> indicates that the query experienced an error and did not complete processing.<code>CANCELLED</code> indicates that user input interrupted query execution. </p>
-- * CompletionDateTime [Date] <p>The date and time that the query completed.</p>
-- * StateChangeReason [String] <p>Further detail about the status of the query.</p>
-- @return QueryExecutionStatus structure as a key-value pair table
function M.QueryExecutionStatus(args)
	assert(args, "You must provide an argument table when creating QueryExecutionStatus")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["SubmissionDateTime"] = args["SubmissionDateTime"],
		["State"] = args["State"],
		["CompletionDateTime"] = args["CompletionDateTime"],
		["StateChangeReason"] = args["StateChangeReason"],
	}
	asserts.AssertQueryExecutionStatus(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ClientRequestToken [IdempotencyToken] <p>A unique case-sensitive string used to ensure the request to create the query is idempotent (executes only once). If another <code>CreateNamedQuery</code> request is received, the same response is returned and another query is not created. If a parameter has changed, for example, the <code>QueryString</code>, an error is returned.</p> <important> <p>This token is listed as not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or the action will fail.</p> </important>
-- * Database [DatabaseString] <p>The database to which the query belongs.</p>
-- * QueryString [QueryString] <p>The text of the query itself. In other words, all query statements.</p>
-- * Name [NameString] <p>The plain language name for the query.</p>
-- * Description [DescriptionString] <p>A brief explanation of the query.</p>
-- Required key: Name
-- Required key: Database
-- Required key: QueryString
-- @return CreateNamedQueryInput structure as a key-value pair table
function M.CreateNamedQueryInput(args)
	assert(args, "You must provide an argument table when creating CreateNamedQueryInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ClientRequestToken"] = args["ClientRequestToken"],
		["Database"] = args["Database"],
		["QueryString"] = args["QueryString"],
		["Name"] = args["Name"],
		["Description"] = args["Description"],
	}
	asserts.AssertCreateNamedQueryInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>A token to be used by the next request if this request is truncated.</p>
-- * QueryExecutionIds [QueryExecutionIdList] <p>The unique IDs of each query execution as an array of strings.</p>
-- @return ListQueryExecutionsOutput structure as a key-value pair table
function M.ListQueryExecutionsOutput(args)
	assert(args, "You must provide an argument table when creating ListQueryExecutionsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["QueryExecutionIds"] = args["QueryExecutionIds"],
	}
	asserts.AssertListQueryExecutionsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Rows [RowList] <p>The rows in the table.</p>
-- * ResultSetMetadata [ResultSetMetadata] <p>The metadata that describes the column structure and data types of a table of query results.</p>
-- @return ResultSet structure as a key-value pair table
function M.ResultSet(args)
	assert(args, "You must provide an argument table when creating ResultSet")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Rows"] = args["Rows"],
		["ResultSetMetadata"] = args["ResultSetMetadata"],
	}
	asserts.AssertResultSet(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>If query results are encrypted in Amazon S3, indicates the encryption option used (for example, <code>SSE-KMS</code> or <code>CSE-KMS</code>) and key information.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EncryptionOption [EncryptionOption] <p>Indicates whether Amazon S3 server-side encryption with Amazon S3-managed keys (<code>SSE-S3</code>), server-side encryption with KMS-managed keys (<code>SSE-KMS</code>), or client-side encryption with KMS-managed keys (CSE-KMS) is used.</p>
-- * KmsKey [String] <p>For <code>SSE-KMS</code> and <code>CSE-KMS</code>, this is the KMS key ARN or ID.</p>
-- Required key: EncryptionOption
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
		["EncryptionOption"] = args["EncryptionOption"],
		["KmsKey"] = args["KmsKey"],
	}
	asserts.AssertEncryptionConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ResultConfiguration [ResultConfiguration] <p>Specifies information about where and how to save the results of the query execution.</p>
-- * QueryExecutionContext [QueryExecutionContext] <p>The database within which the query executes.</p>
-- * QueryString [QueryString] <p>The SQL query statements to be executed.</p>
-- * ClientRequestToken [IdempotencyToken] <p>A unique case-sensitive string used to ensure the request to create the query is idempotent (executes only once). If another <code>StartQueryExecution</code> request is received, the same response is returned and another query is not created. If a parameter has changed, for example, the <code>QueryString</code>, an error is returned.</p> <important> <p>This token is listed as not required because AWS SDKs (for example the AWS SDK for Java) auto-generate the token for users. If you are not using the AWS SDK or the AWS CLI, you must provide this token or the action will fail.</p> </important>
-- Required key: QueryString
-- Required key: ResultConfiguration
-- @return StartQueryExecutionInput structure as a key-value pair table
function M.StartQueryExecutionInput(args)
	assert(args, "You must provide an argument table when creating StartQueryExecutionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ResultConfiguration"] = args["ResultConfiguration"],
		["QueryExecutionContext"] = args["QueryExecutionContext"],
		["QueryString"] = args["QueryString"],
		["ClientRequestToken"] = args["ClientRequestToken"],
	}
	asserts.AssertStartQueryExecutionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueryExecution [QueryExecution] <p>Information about the query execution.</p>
-- @return GetQueryExecutionOutput structure as a key-value pair table
function M.GetQueryExecutionOutput(args)
	assert(args, "You must provide an argument table when creating GetQueryExecutionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["QueryExecution"] = args["QueryExecution"],
	}
	asserts.AssertGetQueryExecutionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NamedQueryId [NamedQueryId] <p>The unique ID of the query. Use <a>ListNamedQueries</a> to get query IDs.</p>
-- Required key: NamedQueryId
-- @return GetNamedQueryInput structure as a key-value pair table
function M.GetNamedQueryInput(args)
	assert(args, "You must provide an argument table when creating GetNamedQueryInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NamedQueryId"] = args["NamedQueryId"],
	}
	asserts.AssertGetNamedQueryInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NamedQuery [NamedQuery] <p>Information about the query.</p>
-- @return GetNamedQueryOutput structure as a key-value pair table
function M.GetNamedQueryOutput(args)
	assert(args, "You must provide an argument table when creating GetNamedQueryOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NamedQuery"] = args["NamedQuery"],
	}
	asserts.AssertGetNamedQueryOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueryExecutionId [QueryExecutionId] <p>The unique ID of the query execution.</p>
-- Required key: QueryExecutionId
-- @return GetQueryExecutionInput structure as a key-value pair table
function M.GetQueryExecutionInput(args)
	assert(args, "You must provide an argument table when creating GetQueryExecutionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["QueryExecutionId"] = args["QueryExecutionId"],
	}
	asserts.AssertGetQueryExecutionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Database [DatabaseString] <p>The database to which the query belongs.</p>
-- * QueryString [QueryString] <p>The SQL query statements that comprise the query.</p>
-- * Name [NameString] <p>The plain-language name of the query.</p>
-- * NamedQueryId [NamedQueryId] <p>The unique identifier of the query.</p>
-- * Description [DescriptionString] <p>A brief description of the query.</p>
-- Required key: Name
-- Required key: Database
-- Required key: QueryString
-- @return NamedQuery structure as a key-value pair table
function M.NamedQuery(args)
	assert(args, "You must provide an argument table when creating NamedQuery")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Database"] = args["Database"],
		["QueryString"] = args["QueryString"],
		["Name"] = args["Name"],
		["NamedQueryId"] = args["NamedQueryId"],
		["Description"] = args["Description"],
	}
	asserts.AssertNamedQuery(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueryExecutionId [QueryExecutionId] <p>The unique ID of the query that ran as a result of this request.</p>
-- @return StartQueryExecutionOutput structure as a key-value pair table
function M.StartQueryExecutionOutput(args)
	assert(args, "You must provide an argument table when creating StartQueryExecutionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["QueryExecutionId"] = args["QueryExecutionId"],
	}
	asserts.AssertStartQueryExecutionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>The token that specifies where to start pagination if a previous request was truncated.</p>
-- * MaxResults [MaxNamedQueriesCount] <p>The maximum number of queries to return in this request.</p>
-- @return ListNamedQueriesInput structure as a key-value pair table
function M.ListNamedQueriesInput(args)
	assert(args, "You must provide an argument table when creating ListNamedQueriesInput")
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
	asserts.AssertListNamedQueriesInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>The token that specifies where to start pagination if a previous request was truncated.</p>
-- * QueryExecutionId [QueryExecutionId] <p>The unique ID of the query execution.</p>
-- * MaxResults [MaxQueryResults] <p>The maximum number of results (rows) to return in this request.</p>
-- Required key: QueryExecutionId
-- @return GetQueryResultsInput structure as a key-value pair table
function M.GetQueryResultsInput(args)
	assert(args, "You must provide an argument table when creating GetQueryResultsInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["QueryExecutionId"] = args["QueryExecutionId"],
		["MaxResults"] = args["MaxResults"],
	}
	asserts.AssertGetQueryResultsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The amount of data scanned during the query execution and the amount of time that it took to execute, and the type of statement that was run.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * DataScannedInBytes [Long] <p>The number of bytes in the data that was queried.</p>
-- * EngineExecutionTimeInMillis [Long] <p>The number of milliseconds that the query took to execute.</p>
-- @return QueryExecutionStatistics structure as a key-value pair table
function M.QueryExecutionStatistics(args)
	assert(args, "You must provide an argument table when creating QueryExecutionStatistics")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["DataScannedInBytes"] = args["DataScannedInBytes"],
		["EngineExecutionTimeInMillis"] = args["EngineExecutionTimeInMillis"],
	}
	asserts.AssertQueryExecutionStatistics(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return DeleteNamedQueryOutput structure as a key-value pair table
function M.DeleteNamedQueryOutput(args)
	assert(args, "You must provide an argument table when creating DeleteNamedQueryOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertDeleteNamedQueryOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] <p>The error code returned when the query execution failed to process, if applicable.</p>
-- * ErrorMessage [ErrorMessage] <p>The error message returned when the query execution failed to process, if applicable.</p>
-- * QueryExecutionId [QueryExecutionId] <p>The unique identifier of the query execution.</p>
-- @return UnprocessedQueryExecutionId structure as a key-value pair table
function M.UnprocessedQueryExecutionId(args)
	assert(args, "You must provide an argument table when creating UnprocessedQueryExecutionId")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["ErrorMessage"] = args["ErrorMessage"],
		["QueryExecutionId"] = args["QueryExecutionId"],
	}
	asserts.AssertUnprocessedQueryExecutionId(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueryExecutionIds [QueryExecutionIdList] <p>An array of query execution IDs.</p>
-- Required key: QueryExecutionIds
-- @return BatchGetQueryExecutionInput structure as a key-value pair table
function M.BatchGetQueryExecutionInput(args)
	assert(args, "You must provide an argument table when creating BatchGetQueryExecutionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["QueryExecutionIds"] = args["QueryExecutionIds"],
	}
	asserts.AssertBatchGetQueryExecutionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.QueryExecution = { ["Status"] = true, ["Statistics"] = true, ["ResultConfiguration"] = true, ["QueryExecutionId"] = true, ["QueryExecutionContext"] = true, ["Query"] = true, ["StatementType"] = true, nil }

function asserts.AssertQueryExecution(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected QueryExecution to be of type 'table'")
	if struct["Status"] then asserts.AssertQueryExecutionStatus(struct["Status"]) end
	if struct["Statistics"] then asserts.AssertQueryExecutionStatistics(struct["Statistics"]) end
	if struct["ResultConfiguration"] then asserts.AssertResultConfiguration(struct["ResultConfiguration"]) end
	if struct["QueryExecutionId"] then asserts.AssertQueryExecutionId(struct["QueryExecutionId"]) end
	if struct["QueryExecutionContext"] then asserts.AssertQueryExecutionContext(struct["QueryExecutionContext"]) end
	if struct["Query"] then asserts.AssertQueryString(struct["Query"]) end
	if struct["StatementType"] then asserts.AssertStatementType(struct["StatementType"]) end
	for k,_ in pairs(struct) do
		assert(keys.QueryExecution[k], "QueryExecution contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type QueryExecution
-- <p>Information about a single instance of a query execution.</p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Status [QueryExecutionStatus] <p>The completion date, current state, submission time, and state change reason (if applicable) for the query execution.</p>
-- * Statistics [QueryExecutionStatistics] <p>The amount of data scanned during the query execution and the amount of time that it took to execute, and the type of statement that was run.</p>
-- * ResultConfiguration [ResultConfiguration] <p>The location in Amazon S3 where query results were stored and the encryption option, if any, used for query results.</p>
-- * QueryExecutionId [QueryExecutionId] <p>The unique identifier for each query execution.</p>
-- * QueryExecutionContext [QueryExecutionContext] <p>The database in which the query execution occurred.</p>
-- * Query [QueryString] <p>The SQL query statements which the query execution ran.</p>
-- * StatementType [StatementType] <p>The type of query statement that was run. <code>DDL</code> indicates DDL query statements. <code>DML</code> indicates DML (Data Manipulation Language) query statements, such as <code>CREATE TABLE AS SELECT</code>. <code>UTILITY</code> indicates query statements other than DDL and DML, such as <code>SHOW CREATE TABLE</code>, or <code>DESCRIBE &lt;table&gt;</code>.</p>
-- @return QueryExecution structure as a key-value pair table
function M.QueryExecution(args)
	assert(args, "You must provide an argument table when creating QueryExecution")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Status"] = args["Status"],
		["Statistics"] = args["Statistics"],
		["ResultConfiguration"] = args["ResultConfiguration"],
		["QueryExecutionId"] = args["QueryExecutionId"],
		["QueryExecutionContext"] = args["QueryExecutionContext"],
		["Query"] = args["Query"],
		["StatementType"] = args["StatementType"],
	}
	asserts.AssertQueryExecution(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Database [DatabaseString] <p>The name of the database.</p>
-- @return QueryExecutionContext structure as a key-value pair table
function M.QueryExecutionContext(args)
	assert(args, "You must provide an argument table when creating QueryExecutionContext")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Database"] = args["Database"],
	}
	asserts.AssertQueryExecutionContext(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
end

keys.GetQueryResultsOutput = { ["NextToken"] = true, ["UpdateCount"] = true, ["ResultSet"] = true, nil }

function asserts.AssertGetQueryResultsOutput(struct)
	assert(struct)
	assert(type(struct) == "table", "Expected GetQueryResultsOutput to be of type 'table'")
	if struct["NextToken"] then asserts.AssertToken(struct["NextToken"]) end
	if struct["UpdateCount"] then asserts.AssertLong(struct["UpdateCount"]) end
	if struct["ResultSet"] then asserts.AssertResultSet(struct["ResultSet"]) end
	for k,_ in pairs(struct) do
		assert(keys.GetQueryResultsOutput[k], "GetQueryResultsOutput contains unknown key " .. tostring(k))
	end
end

--- Create a structure of type GetQueryResultsOutput
--  
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>A token to be used by the next request if this request is truncated.</p>
-- * UpdateCount [Long] <p>The number of rows inserted with a CREATE TABLE AS SELECT statement. </p>
-- * ResultSet [ResultSet] <p>The results of the query execution.</p>
-- @return GetQueryResultsOutput structure as a key-value pair table
function M.GetQueryResultsOutput(args)
	assert(args, "You must provide an argument table when creating GetQueryResultsOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NextToken"] = args["NextToken"],
		["UpdateCount"] = args["UpdateCount"],
		["ResultSet"] = args["ResultSet"],
	}
	asserts.AssertGetQueryResultsOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UnprocessedQueryExecutionIds [UnprocessedQueryExecutionIdList] <p>Information about the query executions that failed to run.</p>
-- * QueryExecutions [QueryExecutionList] <p>Information about a query execution.</p>
-- @return BatchGetQueryExecutionOutput structure as a key-value pair table
function M.BatchGetQueryExecutionOutput(args)
	assert(args, "You must provide an argument table when creating BatchGetQueryExecutionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UnprocessedQueryExecutionIds"] = args["UnprocessedQueryExecutionIds"],
		["QueryExecutions"] = args["QueryExecutions"],
	}
	asserts.AssertBatchGetQueryExecutionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NextToken [Token] <p>The token that specifies where to start pagination if a previous request was truncated.</p>
-- * MaxResults [MaxQueryExecutionsCount] <p>The maximum number of query executions to return in this request.</p>
-- @return ListQueryExecutionsInput structure as a key-value pair table
function M.ListQueryExecutionsInput(args)
	assert(args, "You must provide an argument table when creating ListQueryExecutionsInput")
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
	asserts.AssertListQueryExecutionsInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ErrorCode [ErrorCode] <p>The error code returned when the processing request for the named query failed, if applicable.</p>
-- * ErrorMessage [ErrorMessage] <p>The error message returned when the processing request for the named query failed, if applicable.</p>
-- * NamedQueryId [NamedQueryId] <p>The unique identifier of the named query.</p>
-- @return UnprocessedNamedQueryId structure as a key-value pair table
function M.UnprocessedNamedQueryId(args)
	assert(args, "You must provide an argument table when creating UnprocessedNamedQueryId")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ErrorCode"] = args["ErrorCode"],
		["ErrorMessage"] = args["ErrorMessage"],
		["NamedQueryId"] = args["NamedQueryId"],
	}
	asserts.AssertUnprocessedNamedQueryId(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * EncryptionConfiguration [EncryptionConfiguration] <p>If query results are encrypted in Amazon S3, indicates the encryption option used (for example, <code>SSE-KMS</code> or <code>CSE-KMS</code>) and key information.</p>
-- * OutputLocation [String] <p>The location in Amazon S3 where your query results are stored, such as <code>s3://path/to/query/bucket/</code>. For more information, see <a href="http://docs.aws.amazon.com/athena/latest/ug/querying.html">Queries and Query Result Files. </a> </p>
-- Required key: OutputLocation
-- @return ResultConfiguration structure as a key-value pair table
function M.ResultConfiguration(args)
	assert(args, "You must provide an argument table when creating ResultConfiguration")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["EncryptionConfiguration"] = args["EncryptionConfiguration"],
		["OutputLocation"] = args["OutputLocation"],
	}
	asserts.AssertResultConfiguration(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- @return StopQueryExecutionOutput structure as a key-value pair table
function M.StopQueryExecutionOutput(args)
	assert(args, "You must provide an argument table when creating StopQueryExecutionOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
	}
	asserts.AssertStopQueryExecutionOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NamedQueryId [NamedQueryId] <p>The unique ID of the query.</p>
-- @return CreateNamedQueryOutput structure as a key-value pair table
function M.CreateNamedQueryOutput(args)
	assert(args, "You must provide an argument table when creating CreateNamedQueryOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NamedQueryId"] = args["NamedQueryId"],
	}
	asserts.AssertCreateNamedQueryOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * VarCharValue [datumString] <p>The value of the datum.</p>
-- @return Datum structure as a key-value pair table
function M.Datum(args)
	assert(args, "You must provide an argument table when creating Datum")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["VarCharValue"] = args["VarCharValue"],
	}
	asserts.AssertDatum(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NamedQueryIds [NamedQueryIdList] <p>An array of query IDs.</p>
-- Required key: NamedQueryIds
-- @return BatchGetNamedQueryInput structure as a key-value pair table
function M.BatchGetNamedQueryInput(args)
	assert(args, "You must provide an argument table when creating BatchGetNamedQueryInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NamedQueryIds"] = args["NamedQueryIds"],
	}
	asserts.AssertBatchGetNamedQueryInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NamedQueryId [NamedQueryId] <p>The unique ID of the query to delete.</p>
-- Required key: NamedQueryId
-- @return DeleteNamedQueryInput structure as a key-value pair table
function M.DeleteNamedQueryInput(args)
	assert(args, "You must provide an argument table when creating DeleteNamedQueryInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NamedQueryId"] = args["NamedQueryId"],
	}
	asserts.AssertDeleteNamedQueryInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * NamedQueryIds [NamedQueryIdList] <p>The list of unique query IDs.</p>
-- * NextToken [Token] <p>A token to be used by the next request if this request is truncated.</p>
-- @return ListNamedQueriesOutput structure as a key-value pair table
function M.ListNamedQueriesOutput(args)
	assert(args, "You must provide an argument table when creating ListNamedQueriesOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["NamedQueryIds"] = args["NamedQueryIds"],
		["NextToken"] = args["NextToken"],
	}
	asserts.AssertListNamedQueriesOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * UnprocessedNamedQueryIds [UnprocessedNamedQueryIdList] <p>Information about provided query IDs.</p>
-- * NamedQueries [NamedQueryList] <p>Information about the named query IDs submitted.</p>
-- @return BatchGetNamedQueryOutput structure as a key-value pair table
function M.BatchGetNamedQueryOutput(args)
	assert(args, "You must provide an argument table when creating BatchGetNamedQueryOutput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["UnprocessedNamedQueryIds"] = args["UnprocessedNamedQueryIds"],
		["NamedQueries"] = args["NamedQueries"],
	}
	asserts.AssertBatchGetNamedQueryOutput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- <p>The metadata that describes the column structure and data types of a table of query results. </p>
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * ColumnInfo [ColumnInfoList] <p>Information about the columns returned in a query result metadata.</p>
-- @return ResultSetMetadata structure as a key-value pair table
function M.ResultSetMetadata(args)
	assert(args, "You must provide an argument table when creating ResultSetMetadata")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["ColumnInfo"] = args["ColumnInfo"],
	}
	asserts.AssertResultSetMetadata(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Scale [Integer] <p>For <code>DECIMAL</code> data types, specifies the total number of digits in the fractional part of the value. Defaults to 0.</p>
-- * Name [String] <p>The name of the column.</p>
-- * Nullable [ColumnNullable] <p>Indicates the column's nullable status.</p>
-- * TableName [String] <p>The table name for the query results.</p>
-- * Precision [Integer] <p>For <code>DECIMAL</code> data types, specifies the total number of digits, up to 38. For performance reasons, we recommend up to 18 digits.</p>
-- * Label [String] <p>A column label.</p>
-- * CaseSensitive [Boolean] <p>Indicates whether values in the column are case-sensitive.</p>
-- * SchemaName [String] <p>The schema name (database name) to which the query results belong.</p>
-- * Type [String] <p>The data type of the column.</p>
-- * CatalogName [String] <p>The catalog to which the query results belong.</p>
-- Required key: Name
-- Required key: Type
-- @return ColumnInfo structure as a key-value pair table
function M.ColumnInfo(args)
	assert(args, "You must provide an argument table when creating ColumnInfo")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Scale"] = args["Scale"],
		["Name"] = args["Name"],
		["Nullable"] = args["Nullable"],
		["TableName"] = args["TableName"],
		["Precision"] = args["Precision"],
		["Label"] = args["Label"],
		["CaseSensitive"] = args["CaseSensitive"],
		["SchemaName"] = args["SchemaName"],
		["Type"] = args["Type"],
		["CatalogName"] = args["CatalogName"],
	}
	asserts.AssertColumnInfo(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * QueryExecutionId [QueryExecutionId] <p>The unique ID of the query execution to stop.</p>
-- Required key: QueryExecutionId
-- @return StopQueryExecutionInput structure as a key-value pair table
function M.StopQueryExecutionInput(args)
	assert(args, "You must provide an argument table when creating StopQueryExecutionInput")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["QueryExecutionId"] = args["QueryExecutionId"],
	}
	asserts.AssertStopQueryExecutionInput(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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
-- @param args Table with arguments in key-value form.
-- Valid keys:
-- * Data [datumList] <p>The data that populates a row in a query result table.</p>
-- @return Row structure as a key-value pair table
function M.Row(args)
	assert(args, "You must provide an argument table when creating Row")
    local query_args = { 
    }
    local uri_args = { 
    }
    local header_args = { 
    }
	local all_args = { 
		["Data"] = args["Data"],
	}
	asserts.AssertRow(all_args)
	return {
        all = all_args,
        query = query_args,
        uri = uri_args,
        headers = header_args,
    }
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

-- <p>The error code returned when the query execution failed to process, or when the processing request for the named query failed.</p>
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

function asserts.AssertStatementType(str)
	assert(str)
	assert(type(str) == "string", "Expected StatementType to be of type 'string'")
end

--  
function M.StatementType(str)
	asserts.AssertStatementType(str)
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


local content_type = require "aws-sdk.core.content_type"
local request_headers = require "aws-sdk.core.request_headers"
local request_handlers = require "aws-sdk.core.request_handlers"

local settings = {}


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
--- Call BatchGetQueryExecution asynchronously, invoking a callback when done
-- @param BatchGetQueryExecutionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchGetQueryExecutionAsync(BatchGetQueryExecutionInput, cb)
	assert(BatchGetQueryExecutionInput, "You must provide a BatchGetQueryExecutionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonAthena.BatchGetQueryExecution",
	}
	for header,value in pairs(BatchGetQueryExecutionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchGetQueryExecutionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchGetQueryExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchGetQueryExecutionInput
-- @return response
-- @return error_type
-- @return error_message
function M.BatchGetQueryExecutionSync(BatchGetQueryExecutionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchGetQueryExecutionAsync(BatchGetQueryExecutionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call DeleteNamedQuery asynchronously, invoking a callback when done
-- @param DeleteNamedQueryInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.DeleteNamedQueryAsync(DeleteNamedQueryInput, cb)
	assert(DeleteNamedQueryInput, "You must provide a DeleteNamedQueryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonAthena.DeleteNamedQuery",
	}
	for header,value in pairs(DeleteNamedQueryInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", DeleteNamedQueryInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call DeleteNamedQuery synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param DeleteNamedQueryInput
-- @return response
-- @return error_type
-- @return error_message
function M.DeleteNamedQuerySync(DeleteNamedQueryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.DeleteNamedQueryAsync(DeleteNamedQueryInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListNamedQueries asynchronously, invoking a callback when done
-- @param ListNamedQueriesInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListNamedQueriesAsync(ListNamedQueriesInput, cb)
	assert(ListNamedQueriesInput, "You must provide a ListNamedQueriesInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonAthena.ListNamedQueries",
	}
	for header,value in pairs(ListNamedQueriesInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListNamedQueriesInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListNamedQueries synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListNamedQueriesInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListNamedQueriesSync(ListNamedQueriesInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListNamedQueriesAsync(ListNamedQueriesInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StopQueryExecution asynchronously, invoking a callback when done
-- @param StopQueryExecutionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StopQueryExecutionAsync(StopQueryExecutionInput, cb)
	assert(StopQueryExecutionInput, "You must provide a StopQueryExecutionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonAthena.StopQueryExecution",
	}
	for header,value in pairs(StopQueryExecutionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StopQueryExecutionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StopQueryExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StopQueryExecutionInput
-- @return response
-- @return error_type
-- @return error_message
function M.StopQueryExecutionSync(StopQueryExecutionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StopQueryExecutionAsync(StopQueryExecutionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call BatchGetNamedQuery asynchronously, invoking a callback when done
-- @param BatchGetNamedQueryInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.BatchGetNamedQueryAsync(BatchGetNamedQueryInput, cb)
	assert(BatchGetNamedQueryInput, "You must provide a BatchGetNamedQueryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonAthena.BatchGetNamedQuery",
	}
	for header,value in pairs(BatchGetNamedQueryInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", BatchGetNamedQueryInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call BatchGetNamedQuery synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param BatchGetNamedQueryInput
-- @return response
-- @return error_type
-- @return error_message
function M.BatchGetNamedQuerySync(BatchGetNamedQueryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.BatchGetNamedQueryAsync(BatchGetNamedQueryInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call StartQueryExecution asynchronously, invoking a callback when done
-- @param StartQueryExecutionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.StartQueryExecutionAsync(StartQueryExecutionInput, cb)
	assert(StartQueryExecutionInput, "You must provide a StartQueryExecutionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonAthena.StartQueryExecution",
	}
	for header,value in pairs(StartQueryExecutionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", StartQueryExecutionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call StartQueryExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param StartQueryExecutionInput
-- @return response
-- @return error_type
-- @return error_message
function M.StartQueryExecutionSync(StartQueryExecutionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.StartQueryExecutionAsync(StartQueryExecutionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetNamedQuery asynchronously, invoking a callback when done
-- @param GetNamedQueryInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetNamedQueryAsync(GetNamedQueryInput, cb)
	assert(GetNamedQueryInput, "You must provide a GetNamedQueryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonAthena.GetNamedQuery",
	}
	for header,value in pairs(GetNamedQueryInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetNamedQueryInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetNamedQuery synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetNamedQueryInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetNamedQuerySync(GetNamedQueryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetNamedQueryAsync(GetNamedQueryInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call ListQueryExecutions asynchronously, invoking a callback when done
-- @param ListQueryExecutionsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.ListQueryExecutionsAsync(ListQueryExecutionsInput, cb)
	assert(ListQueryExecutionsInput, "You must provide a ListQueryExecutionsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonAthena.ListQueryExecutions",
	}
	for header,value in pairs(ListQueryExecutionsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", ListQueryExecutionsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call ListQueryExecutions synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param ListQueryExecutionsInput
-- @return response
-- @return error_type
-- @return error_message
function M.ListQueryExecutionsSync(ListQueryExecutionsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.ListQueryExecutionsAsync(ListQueryExecutionsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetQueryExecution asynchronously, invoking a callback when done
-- @param GetQueryExecutionInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetQueryExecutionAsync(GetQueryExecutionInput, cb)
	assert(GetQueryExecutionInput, "You must provide a GetQueryExecutionInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonAthena.GetQueryExecution",
	}
	for header,value in pairs(GetQueryExecutionInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetQueryExecutionInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetQueryExecution synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetQueryExecutionInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetQueryExecutionSync(GetQueryExecutionInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetQueryExecutionAsync(GetQueryExecutionInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call GetQueryResults asynchronously, invoking a callback when done
-- @param GetQueryResultsInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.GetQueryResultsAsync(GetQueryResultsInput, cb)
	assert(GetQueryResultsInput, "You must provide a GetQueryResultsInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonAthena.GetQueryResults",
	}
	for header,value in pairs(GetQueryResultsInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", GetQueryResultsInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call GetQueryResults synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param GetQueryResultsInput
-- @return response
-- @return error_type
-- @return error_message
function M.GetQueryResultsSync(GetQueryResultsInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.GetQueryResultsAsync(GetQueryResultsInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end

--- Call CreateNamedQuery asynchronously, invoking a callback when done
-- @param CreateNamedQueryInput
-- @param cb Callback function accepting three args: response, error_type, error_message
function M.CreateNamedQueryAsync(CreateNamedQueryInput, cb)
	assert(CreateNamedQueryInput, "You must provide a CreateNamedQueryInput")
	local headers = {
		[request_headers.CONTENT_TYPE_HEADER] = content_type.from_protocol(M.metadata.protocol, M.metadata.json_version),
		[request_headers.AMZ_TARGET_HEADER] = "AmazonAthena.CreateNamedQuery",
	}
	for header,value in pairs(CreateNamedQueryInput.headers) do
		headers[header] = value
	end

	local request_handler, err = request_handlers.from_protocol_and_method("json", "POST")
	if request_handler then
		request_handler(settings.uri, "/", CreateNamedQueryInput, headers, settings, cb)
	else
		cb(false, err)
	end
end

--- Call CreateNamedQuery synchronously, returning when done
-- This assumes that the function is called from within a coroutine
-- @param CreateNamedQueryInput
-- @return response
-- @return error_type
-- @return error_message
function M.CreateNamedQuerySync(CreateNamedQueryInput, ...)
	local co = coroutine.running()
	assert(co, "You must call this function from within a coroutine")
	M.CreateNamedQueryAsync(CreateNamedQueryInput, function(response, error_type, error_message)
		assert(coroutine.resume(co, response, error_type, error_message))
	end)
	return coroutine.yield()
end


return M
